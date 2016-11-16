; ModuleID = './jbig2_generic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.Jbig2GenericRegionParams = type { i32, i32, i32, i32, [8 x i8] }
%struct._Jbig2ArithState = type opaque
%struct.Jbig2RegionSegmentInfo = type { i32, i32, i32, i32, i32, i8 }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }

@.str = private unnamed_addr constant [76 x i8] c"region is far larger than data provided (%d << %d), aborting to prevent DOS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gbat[%d] = %d\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"decode_generic_region: MMR=%d, GBTEMPLATE=%d NYI\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"generic region: %d x %d @ (%d, %d), flags = %02x\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"segment flags = %02x\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"MMR is 1, but GBTEMPLATE is not 0\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"gbat: %d, %d\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to allocate generic image\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"allocated %d x %d image buffer for region decode results\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"unable to allocate GB_stats in jbig2_immediate_generic_region\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"unable to allocate ws in jbig2_immediate_generic_region\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"unable to allocate as in jbig2_immediate_generic_region\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"error while decoding immediate_generic_region\00", align 1

; Function Attrs: nounwind uwtable
define i32 @jbig2_generic_stats_size(%struct._Jbig2Ctx* %ctx, i32 %template) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %template.addr = alloca i32, align 4
  %stats_size = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %template, i32* %template.addr, align 4, !tbaa !5
  %0 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %template.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %template.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 1
  %cond = select i1 %cmp1, i32 16384, i32 1024
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 65536, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond2, i32* %stats_size, align 4, !tbaa !5
  %3 = load i32, i32* %stats_size, align 4, !tbaa !5
  %4 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %gbat = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i8** %gbat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat1 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %gbat1, i32 0, i32 0
  store i8* %arraydecay, i8** %gbat, align 8, !tbaa !1
  %2 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %2, i32 0, i32 2
  %3 = load i32, i32* %stride, align 4, !tbaa !7
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  %mul = mul nsw i32 %3, %5
  %cmp = icmp sgt i32 %mul, 16777216
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %6, i32 0, i32 3
  %7 = load i64, i64* %data_length, align 8, !tbaa !10
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride2 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %8, i32 0, i32 2
  %9 = load i32, i32* %stride2, align 4, !tbaa !7
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %10, i32 0, i32 1
  %11 = load i32, i32* %height3, align 4, !tbaa !9
  %mul4 = mul nsw i32 %9, %11
  %div = sdiv i32 %mul4, 256
  %conv = sext i32 %div to i64
  %cmp5 = icmp ult i64 %7, %conv
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %13, i32 0, i32 0
  %14 = load i32, i32* %number, align 4, !tbaa !13
  %15 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length7 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %15, i32 0, i32 3
  %16 = load i64, i64* %data_length7, align 8, !tbaa !10
  %17 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride8 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %17, i32 0, i32 2
  %18 = load i32, i32* %stride8, align 4, !tbaa !7
  %19 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %19, i32 0, i32 1
  %20 = load i32, i32* %height9, align 4, !tbaa !9
  %mul10 = mul nsw i32 %18, %20
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 3, i32 %14, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i32 0, i32 0), i64 %16, i32 %mul10) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %21 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %21, i32 0, i32 0
  %22 = load i32, i32* %MMR, align 4, !tbaa !14
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.15, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end
  %23 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %TPGDON = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %23, i32 0, i32 2
  %24 = load i32, i32* %TPGDON, align 4, !tbaa !16
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true.11
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %26 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %27 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %28 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call14 = call i32 @jbig2_decode_generic_region_TPGDON(%struct._Jbig2Ctx* %25, %struct._Jbig2Segment* %26, %struct.Jbig2GenericRegionParams* %27, %struct._Jbig2ArithState* %28, %struct._Jbig2Image* %29, i8* %30) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end
  %31 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR16 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %31, i32 0, i32 0
  %32 = load i32, i32* %MMR16, align 4, !tbaa !14
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.else.63, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.end.15
  %33 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %33, i32 0, i32 1
  %34 = load i32, i32* %GBTEMPLATE, align 4, !tbaa !17
  %cmp19 = icmp eq i32 %34, 0
  br i1 %cmp19, label %if.then.21, label %if.else.63

if.then.21:                                       ; preds = %land.lhs.true.18
  %35 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv22 = sext i8 %36 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %if.then.21
  %37 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx26, align 1, !tbaa !18
  %conv27 = sext i8 %38 to i32
  %cmp28 = icmp eq i32 %conv27, -1
  br i1 %cmp28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %39 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx31, align 1, !tbaa !18
  %conv32 = sext i8 %40 to i32
  %cmp33 = icmp eq i32 %conv32, -3
  br i1 %cmp33, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %41 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx36, align 1, !tbaa !18
  %conv37 = sext i8 %42 to i32
  %cmp38 = icmp eq i32 %conv37, -1
  br i1 %cmp38, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %land.lhs.true.35
  %43 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %43, i64 4
  %44 = load i8, i8* %arrayidx41, align 1, !tbaa !18
  %conv42 = sext i8 %44 to i32
  %cmp43 = icmp eq i32 %conv42, 2
  br i1 %cmp43, label %land.lhs.true.45, label %if.else

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %45 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %45, i64 5
  %46 = load i8, i8* %arrayidx46, align 1, !tbaa !18
  %conv47 = sext i8 %46 to i32
  %cmp48 = icmp eq i32 %conv47, -2
  br i1 %cmp48, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %land.lhs.true.45
  %47 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %47, i64 6
  %48 = load i8, i8* %arrayidx51, align 1, !tbaa !18
  %conv52 = sext i8 %48 to i32
  %cmp53 = icmp eq i32 %conv52, -2
  br i1 %cmp53, label %land.lhs.true.55, label %if.else

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %49 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %49, i64 7
  %50 = load i8, i8* %arrayidx56, align 1, !tbaa !18
  %conv57 = sext i8 %50 to i32
  %cmp58 = icmp eq i32 %conv57, -2
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %land.lhs.true.55
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %52 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %53 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %54 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %55 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call61 = call i32 @jbig2_decode_generic_template0(%struct._Jbig2Ctx* %51, %struct._Jbig2Segment* %52, %struct.Jbig2GenericRegionParams* %53, %struct._Jbig2ArithState* %54, %struct._Jbig2Image* %55, i8* %56) #4
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.55, %land.lhs.true.50, %land.lhs.true.45, %land.lhs.true.40, %land.lhs.true.35, %land.lhs.true.30, %land.lhs.true.25, %if.then.21
  %57 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %58 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %59 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %60 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %61 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call62 = call i32 @jbig2_decode_generic_template0_unopt(%struct._Jbig2Ctx* %57, %struct._Jbig2Segment* %58, %struct.Jbig2GenericRegionParams* %59, %struct._Jbig2ArithState* %60, %struct._Jbig2Image* %61, i8* %62) #4
  store i32 %call62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.63:                                       ; preds = %land.lhs.true.18, %if.end.15
  %63 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR64 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %63, i32 0, i32 0
  %64 = load i32, i32* %MMR64, align 4, !tbaa !14
  %tobool65 = icmp ne i32 %64, 0
  br i1 %tobool65, label %if.else.72, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %if.else.63
  %65 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE67 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %65, i32 0, i32 1
  %66 = load i32, i32* %GBTEMPLATE67, align 4, !tbaa !17
  %cmp68 = icmp eq i32 %66, 1
  br i1 %cmp68, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %land.lhs.true.66
  %67 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %68 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %69 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %70 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %71 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %72 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call71 = call i32 @jbig2_decode_generic_template1(%struct._Jbig2Ctx* %67, %struct._Jbig2Segment* %68, %struct.Jbig2GenericRegionParams* %69, %struct._Jbig2ArithState* %70, %struct._Jbig2Image* %71, i8* %72) #4
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %land.lhs.true.66, %if.else.63
  %73 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR73 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %73, i32 0, i32 0
  %74 = load i32, i32* %MMR73, align 4, !tbaa !14
  %tobool74 = icmp ne i32 %74, 0
  br i1 %tobool74, label %if.else.93, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %if.else.72
  %75 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE76 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %75, i32 0, i32 1
  %76 = load i32, i32* %GBTEMPLATE76, align 4, !tbaa !17
  %cmp77 = icmp eq i32 %76, 2
  br i1 %cmp77, label %if.then.79, label %if.else.93

if.then.79:                                       ; preds = %land.lhs.true.75
  %77 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx80, align 1, !tbaa !18
  %conv81 = sext i8 %78 to i32
  %cmp82 = icmp eq i32 %conv81, 3
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.91

land.lhs.true.84:                                 ; preds = %if.then.79
  %79 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx85, align 1, !tbaa !18
  %conv86 = sext i8 %80 to i32
  %cmp87 = icmp eq i32 %conv86, -1
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %land.lhs.true.84
  %81 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %82 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %83 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %84 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %85 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %86 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call90 = call i32 @jbig2_decode_generic_template2a(%struct._Jbig2Ctx* %81, %struct._Jbig2Segment* %82, %struct.Jbig2GenericRegionParams* %83, %struct._Jbig2ArithState* %84, %struct._Jbig2Image* %85, i8* %86) #4
  store i32 %call90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.91:                                       ; preds = %land.lhs.true.84, %if.then.79
  %87 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %88 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %89 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %90 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %91 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %92 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call92 = call i32 @jbig2_decode_generic_template2(%struct._Jbig2Ctx* %87, %struct._Jbig2Segment* %88, %struct.Jbig2GenericRegionParams* %89, %struct._Jbig2ArithState* %90, %struct._Jbig2Image* %91, i8* %92) #4
  store i32 %call92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.93:                                       ; preds = %land.lhs.true.75, %if.else.72
  %93 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR94 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %93, i32 0, i32 0
  %94 = load i32, i32* %MMR94, align 4, !tbaa !14
  %tobool95 = icmp ne i32 %94, 0
  br i1 %tobool95, label %if.end.114, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %if.else.93
  %95 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE97 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %95, i32 0, i32 1
  %96 = load i32, i32* %GBTEMPLATE97, align 4, !tbaa !17
  %cmp98 = icmp eq i32 %96, 3
  br i1 %cmp98, label %if.then.100, label %if.end.114

if.then.100:                                      ; preds = %land.lhs.true.96
  %97 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx101, align 1, !tbaa !18
  %conv102 = sext i8 %98 to i32
  %cmp103 = icmp eq i32 %conv102, 2
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.112

land.lhs.true.105:                                ; preds = %if.then.100
  %99 = load i8*, i8** %gbat, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx106, align 1, !tbaa !18
  %conv107 = sext i8 %100 to i32
  %cmp108 = icmp eq i32 %conv107, -1
  br i1 %cmp108, label %if.then.110, label %if.else.112

if.then.110:                                      ; preds = %land.lhs.true.105
  %101 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %102 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %103 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %104 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %105 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %106 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call111 = call i32 @jbig2_decode_generic_template3_unopt(%struct._Jbig2Ctx* %101, %struct._Jbig2Segment* %102, %struct.Jbig2GenericRegionParams* %103, %struct._Jbig2ArithState* %104, %struct._Jbig2Image* %105, i8* %106) #4
  store i32 %call111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.112:                                      ; preds = %land.lhs.true.105, %if.then.100
  %107 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %108 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %109 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %110 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %111 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %112 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call113 = call i32 @jbig2_decode_generic_template3_unopt(%struct._Jbig2Ctx* %107, %struct._Jbig2Segment* %108, %struct.Jbig2GenericRegionParams* %109, %struct._Jbig2ArithState* %110, %struct._Jbig2Image* %111, i8* %112) #4
  store i32 %call113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %land.lhs.true.96, %if.else.93
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.117
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %114, 8
  br i1 %cmp118, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %116 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number120 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %116, i32 0, i32 0
  %117 = load i32, i32* %number120, align 4, !tbaa !13
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %119 to i64
  %120 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat121 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %120, i32 0, i32 4
  %arrayidx122 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat121, i32 0, i64 %idxprom
  %121 = load i8, i8* %arrayidx122, align 1, !tbaa !18
  %conv123 = sext i8 %121 to i32
  %call124 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %115, i32 0, i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %118, i32 %conv123) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %125 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number125 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %125, i32 0, i32 0
  %126 = load i32, i32* %number125, align 4, !tbaa !13
  %127 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %MMR126 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %127, i32 0, i32 0
  %128 = load i32, i32* %MMR126, align 4, !tbaa !14
  %129 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE127 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %129, i32 0, i32 1
  %130 = load i32, i32* %GBTEMPLATE127, align 4, !tbaa !17
  %call128 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %124, i32 2, i32 %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 %128, i32 %130) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.112, %if.then.110, %if.else.91, %if.then.89, %if.then.70, %if.else, %if.then.60, %if.then.13, %if.then
  %131 = bitcast i8** %gbat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_region_TPGDON(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %0, i32 0, i32 1
  %1 = load i32, i32* %GBTEMPLATE, align 4, !tbaa !17
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %4 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %5 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_decode_generic_template0_TPGDON(%struct._Jbig2Ctx* %2, %struct._Jbig2Segment* %3, %struct.Jbig2GenericRegionParams* %4, %struct._Jbig2ArithState* %5, %struct._Jbig2Image* %6, i8* %7) #4
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %9 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %10 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %11 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call2 = call i32 @jbig2_decode_generic_template1_TPGDON(%struct._Jbig2Ctx* %8, %struct._Jbig2Segment* %9, %struct.Jbig2GenericRegionParams* %10, %struct._Jbig2ArithState* %11, %struct._Jbig2Image* %12, i8* %13) #4
  store i32 %call2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %14 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %15 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %16 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call4 = call i32 @jbig2_decode_generic_template2_TPGDON(%struct._Jbig2Ctx* %14, %struct._Jbig2Segment* %15, %struct.Jbig2GenericRegionParams* %16, %struct._Jbig2ArithState* %17, %struct._Jbig2Image* %18, i8* %19) #4
  store i32 %call4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %21 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %22 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %23 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call6 = call i32 @jbig2_decode_generic_template3_TPGDON(%struct._Jbig2Ctx* %20, %struct._Jbig2Segment* %21, %struct.Jbig2GenericRegionParams* %22, %struct._Jbig2ArithState* %23, %struct._Jbig2Image* %24, i8* %25) #4
  store i32 %call6, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template0(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %gbreg_line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %CONTEXT = alloca i32, align 4
  %line_m1 = alloca i32, align 4
  %line_m2 = alloca i32, align 4
  %padded_width = alloca i32, align 4
  %result = alloca i8, align 1
  %x_minor = alloca i32, align 4
  %minor_width = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %7, i32 0, i32 2
  %8 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %8, i32* %rowstride, align 4, !tbaa !5
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 3
  %13 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %13, i8** %gbreg_line, align 8, !tbaa !1
  %14 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end:                                           ; preds = %entry
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %if.end
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %16 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %GBW, align 4, !tbaa !5
  %add = add nsw i32 %21, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %padded_width, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %22, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  %idxprom = sext i32 %sub to i64
  %24 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %line_m1, align 4, !tbaa !5
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %26, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.11

cond.true.5:                                      ; preds = %cond.end
  %27 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl = shl i32 %27, 1
  %sub6 = sub nsw i32 0, %shl
  %idxprom7 = sext i32 %sub6 to i64
  %28 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %28, i64 %idxprom7
  %29 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %29 to i32
  %shl10 = shl i32 %conv9, 6
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.5
  %cond13 = phi i32 [ %shl10, %cond.true.5 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %line_m2, align 4, !tbaa !5
  %30 = load i32, i32* %line_m1, align 4, !tbaa !5
  %and14 = and i32 %30, 2032
  %31 = load i32, i32* %line_m2, align 4, !tbaa !5
  %and15 = and i32 %31, 63488
  %or = or i32 %and14, %and15
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.103, %cond.end.12
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %33 = load i32, i32* %padded_width, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %32, %33
  br i1 %cmp17, label %for.body.19, label %for.end.105

for.body.19:                                      ; preds = %for.cond.16
  call void @llvm.lifetime.start(i64 1, i8* %result) #1
  store i8 0, i8* %result, align 1, !tbaa !18
  %34 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %GBW, align 4, !tbaa !5
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %sub20 = sub nsw i32 %36, %37
  %cmp21 = icmp sgt i32 %sub20, 8
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.body.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %for.body.19
  %38 = load i32, i32* %GBW, align 4, !tbaa !5
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %sub25 = sub nsw i32 %38, %39
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i32 [ 8, %cond.true.23 ], [ %sub25, %cond.false.24 ]
  store i32 %cond27, i32* %minor_width, align 4, !tbaa !5
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %40, 1
  br i1 %cmp28, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %cond.end.26
  %41 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shl31 = shl i32 %41, 8
  %42 = load i32, i32* %x, align 4, !tbaa !5
  %add32 = add nsw i32 %42, 8
  %43 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %add32, %43
  br i1 %cmp33, label %cond.true.35, label %cond.false.42

cond.true.35:                                     ; preds = %if.then.30
  %44 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub36 = sub nsw i32 0, %44
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %shr = ashr i32 %45, 3
  %add37 = add nsw i32 %sub36, %shr
  %add38 = add nsw i32 %add37, 1
  %idxprom39 = sext i32 %add38 to i64
  %46 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %46, i64 %idxprom39
  %47 = load i8, i8* %arrayidx40, align 1, !tbaa !18
  %conv41 = zext i8 %47 to i32
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.then.30
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.35
  %cond44 = phi i32 [ %conv41, %cond.true.35 ], [ 0, %cond.false.42 ]
  %or45 = or i32 %shl31, %cond44
  store i32 %or45, i32* %line_m1, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.43, %cond.end.26
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %cmp47 = icmp sge i32 %48, 2
  br i1 %cmp47, label %if.then.49, label %if.end.68

if.then.49:                                       ; preds = %if.end.46
  %49 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shl50 = shl i32 %49, 8
  %50 = load i32, i32* %x, align 4, !tbaa !5
  %add51 = add nsw i32 %50, 8
  %51 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %add51, %51
  br i1 %cmp52, label %cond.true.54, label %cond.false.64

cond.true.54:                                     ; preds = %if.then.49
  %52 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl55 = shl i32 %52, 1
  %sub56 = sub nsw i32 0, %shl55
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %shr57 = ashr i32 %53, 3
  %add58 = add nsw i32 %sub56, %shr57
  %add59 = add nsw i32 %add58, 1
  %idxprom60 = sext i32 %add59 to i64
  %54 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %54, i64 %idxprom60
  %55 = load i8, i8* %arrayidx61, align 1, !tbaa !18
  %conv62 = zext i8 %55 to i32
  %shl63 = shl i32 %conv62, 6
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.then.49
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.54
  %cond66 = phi i32 [ %shl63, %cond.true.54 ], [ 0, %cond.false.64 ]
  %or67 = or i32 %shl50, %cond66
  store i32 %or67, i32* %line_m2, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end.65, %if.end.46
  store i32 0, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.end.68
  %56 = load i32, i32* %x_minor, align 4, !tbaa !5
  %57 = load i32, i32* %minor_width, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %56, %57
  br i1 %cmp70, label %for.body.72, label %for.end

for.body.72:                                      ; preds = %for.cond.69
  %58 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %60 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom73 = zext i32 %60 to i64
  %61 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %61, i64 %idxprom73
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %59, i8* %arrayidx74) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %62 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %62, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.72
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %for.body.72
  %63 = load i32, i32* %bit, align 4, !tbaa !5
  %64 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub79 = sub nsw i32 7, %64
  %shl80 = shl i32 %63, %sub79
  %65 = load i8, i8* %result, align 1, !tbaa !18
  %conv81 = zext i8 %65 to i32
  %or82 = or i32 %conv81, %shl80
  %conv83 = trunc i32 %or82 to i8
  store i8 %conv83, i8* %result, align 1, !tbaa !18
  %66 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %and84 = and i32 %66, 31735
  %shl85 = shl i32 %and84, 1
  %67 = load i32, i32* %bit, align 4, !tbaa !5
  %or86 = or i32 %shl85, %67
  %68 = load i32, i32* %line_m1, align 4, !tbaa !5
  %69 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub87 = sub nsw i32 7, %69
  %shr88 = lshr i32 %68, %sub87
  %and89 = and i32 %shr88, 16
  %or90 = or i32 %or86, %and89
  %70 = load i32, i32* %line_m2, align 4, !tbaa !5
  %71 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub91 = sub nsw i32 7, %71
  %shr92 = lshr i32 %70, %sub91
  %and93 = and i32 %shr92, 2048
  %or94 = or i32 %or90, %and93
  store i32 %or94, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.then.77
  %72 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.98 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %73 = load i32, i32* %x_minor, align 4, !tbaa !5
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  %74 = load i8, i8* %result, align 1, !tbaa !18
  %75 = load i32, i32* %x, align 4, !tbaa !5
  %shr95 = ashr i32 %75, 3
  %idxprom96 = sext i32 %shr95 to i64
  %76 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8, i8* %76, i64 %idxprom96
  store i8 %74, i8* %arrayidx97, align 1, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %for.end, %cleanup
  %77 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  call void @llvm.lifetime.end(i64 1, i8* %result) #1
  %cleanup.dest.101 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.101, label %cleanup.106 [
    i32 0, label %cleanup.cont.102
  ]

cleanup.cont.102:                                 ; preds = %cleanup.98
  br label %for.inc.103

for.inc.103:                                      ; preds = %cleanup.cont.102
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %add104 = add nsw i32 %79, 8
  store i32 %add104, i32* %x, align 4, !tbaa !5
  br label %for.cond.16

for.end.105:                                      ; preds = %for.cond.16
  %80 = load i32, i32* %rowstride, align 4, !tbaa !5
  %81 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  store i8* %add.ptr, i8** %gbreg_line, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %for.end.105, %cleanup.98
  %82 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %cleanup.dest.110 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.110, label %cleanup.115 [
    i32 0, label %cleanup.cont.111
  ]

cleanup.cont.111:                                 ; preds = %cleanup.106
  br label %for.inc.112

for.inc.112:                                      ; preds = %cleanup.cont.111
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %inc113 = add nsw i32 %86, 1
  store i32 %inc113, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %for.end.114, %cleanup.106, %if.then
  %87 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template0_unopt(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %10 = load i32, i32* %y, align 4, !tbaa !5
  %11 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.103

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %13 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %CONTEXT, align 4, !tbaa !5
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %14, i32 %sub, i32 %16) #4
  %shl = shl i32 %call, 0
  %17 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %17, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %sub4 = sub nsw i32 %19, 2
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %call5 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %18, i32 %sub4, i32 %20) #4
  %shl6 = shl i32 %call5, 1
  %21 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or7 = or i32 %21, %shl6
  store i32 %or7, i32* %CONTEXT, align 4, !tbaa !5
  %22 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %sub8 = sub nsw i32 %23, 3
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %call9 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %22, i32 %sub8, i32 %24) #4
  %shl10 = shl i32 %call9, 2
  %25 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or11 = or i32 %25, %shl10
  store i32 %or11, i32* %CONTEXT, align 4, !tbaa !5
  %26 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %sub12 = sub nsw i32 %27, 4
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %call13 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %26, i32 %sub12, i32 %28) #4
  %shl14 = shl i32 %call13, 3
  %29 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or15 = or i32 %29, %shl14
  store i32 %or15, i32* %CONTEXT, align 4, !tbaa !5
  %30 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %32 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %32, i32 0, i32 4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = sext i8 %33 to i32
  %add = add nsw i32 %31, %conv
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %35 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat16 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %35, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat16, i32 0, i64 1
  %36 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv18 = sext i8 %36 to i32
  %add19 = add nsw i32 %34, %conv18
  %call20 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %30, i32 %add, i32 %add19) #4
  %shl21 = shl i32 %call20, 4
  %37 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or22 = or i32 %37, %shl21
  store i32 %or22, i32* %CONTEXT, align 4, !tbaa !5
  %38 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %add23 = add nsw i32 %39, 2
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %sub24 = sub nsw i32 %40, 1
  %call25 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %38, i32 %add23, i32 %sub24) #4
  %shl26 = shl i32 %call25, 5
  %41 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or27 = or i32 %41, %shl26
  store i32 %or27, i32* %CONTEXT, align 4, !tbaa !5
  %42 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %43 = load i32, i32* %x, align 4, !tbaa !5
  %add28 = add nsw i32 %43, 1
  %44 = load i32, i32* %y, align 4, !tbaa !5
  %sub29 = sub nsw i32 %44, 1
  %call30 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %42, i32 %add28, i32 %sub29) #4
  %shl31 = shl i32 %call30, 6
  %45 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or32 = or i32 %45, %shl31
  store i32 %or32, i32* %CONTEXT, align 4, !tbaa !5
  %46 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %47 = load i32, i32* %x, align 4, !tbaa !5
  %add33 = add nsw i32 %47, 0
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %sub34 = sub nsw i32 %48, 1
  %call35 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %46, i32 %add33, i32 %sub34) #4
  %shl36 = shl i32 %call35, 7
  %49 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or37 = or i32 %49, %shl36
  store i32 %or37, i32* %CONTEXT, align 4, !tbaa !5
  %50 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %51 = load i32, i32* %x, align 4, !tbaa !5
  %sub38 = sub nsw i32 %51, 1
  %52 = load i32, i32* %y, align 4, !tbaa !5
  %sub39 = sub nsw i32 %52, 1
  %call40 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %50, i32 %sub38, i32 %sub39) #4
  %shl41 = shl i32 %call40, 8
  %53 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or42 = or i32 %53, %shl41
  store i32 %or42, i32* %CONTEXT, align 4, !tbaa !5
  %54 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %55 = load i32, i32* %x, align 4, !tbaa !5
  %sub43 = sub nsw i32 %55, 2
  %56 = load i32, i32* %y, align 4, !tbaa !5
  %sub44 = sub nsw i32 %56, 1
  %call45 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %54, i32 %sub43, i32 %sub44) #4
  %shl46 = shl i32 %call45, 9
  %57 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or47 = or i32 %57, %shl46
  store i32 %or47, i32* %CONTEXT, align 4, !tbaa !5
  %58 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %59 = load i32, i32* %x, align 4, !tbaa !5
  %60 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat48 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %60, i32 0, i32 4
  %arrayidx49 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat48, i32 0, i64 2
  %61 = load i8, i8* %arrayidx49, align 1, !tbaa !18
  %conv50 = sext i8 %61 to i32
  %add51 = add nsw i32 %59, %conv50
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %63 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat52 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %63, i32 0, i32 4
  %arrayidx53 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat52, i32 0, i64 3
  %64 = load i8, i8* %arrayidx53, align 1, !tbaa !18
  %conv54 = sext i8 %64 to i32
  %add55 = add nsw i32 %62, %conv54
  %call56 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %58, i32 %add51, i32 %add55) #4
  %shl57 = shl i32 %call56, 10
  %65 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or58 = or i32 %65, %shl57
  store i32 %or58, i32* %CONTEXT, align 4, !tbaa !5
  %66 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %67 = load i32, i32* %x, align 4, !tbaa !5
  %68 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat59 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %68, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat59, i32 0, i64 4
  %69 = load i8, i8* %arrayidx60, align 1, !tbaa !18
  %conv61 = sext i8 %69 to i32
  %add62 = add nsw i32 %67, %conv61
  %70 = load i32, i32* %y, align 4, !tbaa !5
  %71 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat63 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %71, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat63, i32 0, i64 5
  %72 = load i8, i8* %arrayidx64, align 1, !tbaa !18
  %conv65 = sext i8 %72 to i32
  %add66 = add nsw i32 %70, %conv65
  %call67 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %66, i32 %add62, i32 %add66) #4
  %shl68 = shl i32 %call67, 11
  %73 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or69 = or i32 %73, %shl68
  store i32 %or69, i32* %CONTEXT, align 4, !tbaa !5
  %74 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %75 = load i32, i32* %x, align 4, !tbaa !5
  %add70 = add nsw i32 %75, 1
  %76 = load i32, i32* %y, align 4, !tbaa !5
  %sub71 = sub nsw i32 %76, 2
  %call72 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %74, i32 %add70, i32 %sub71) #4
  %shl73 = shl i32 %call72, 12
  %77 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or74 = or i32 %77, %shl73
  store i32 %or74, i32* %CONTEXT, align 4, !tbaa !5
  %78 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %add75 = add nsw i32 %79, 0
  %80 = load i32, i32* %y, align 4, !tbaa !5
  %sub76 = sub nsw i32 %80, 2
  %call77 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %78, i32 %add75, i32 %sub76) #4
  %shl78 = shl i32 %call77, 13
  %81 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or79 = or i32 %81, %shl78
  store i32 %or79, i32* %CONTEXT, align 4, !tbaa !5
  %82 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %83 = load i32, i32* %x, align 4, !tbaa !5
  %sub80 = sub nsw i32 %83, 1
  %84 = load i32, i32* %y, align 4, !tbaa !5
  %sub81 = sub nsw i32 %84, 2
  %call82 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %82, i32 %sub80, i32 %sub81) #4
  %shl83 = shl i32 %call82, 14
  %85 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or84 = or i32 %85, %shl83
  store i32 %or84, i32* %CONTEXT, align 4, !tbaa !5
  %86 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %87 = load i32, i32* %x, align 4, !tbaa !5
  %88 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat85 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %88, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat85, i32 0, i64 6
  %89 = load i8, i8* %arrayidx86, align 1, !tbaa !18
  %conv87 = sext i8 %89 to i32
  %add88 = add nsw i32 %87, %conv87
  %90 = load i32, i32* %y, align 4, !tbaa !5
  %91 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat89 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %91, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat89, i32 0, i64 7
  %92 = load i8, i8* %arrayidx90, align 1, !tbaa !18
  %conv91 = sext i8 %92 to i32
  %add92 = add nsw i32 %90, %conv91
  %call93 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %86, i32 %add88, i32 %add92) #4
  %shl94 = shl i32 %call93, 15
  %93 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or95 = or i32 %93, %shl94
  store i32 %or95, i32* %CONTEXT, align 4, !tbaa !5
  %94 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %95 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %95 to i64
  %96 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %96, i64 %idxprom
  %call97 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %94, i8* %arrayidx96) #4
  store i32 %call97, i32* %bit, align 4, !tbaa !5
  %97 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %97, 0
  br i1 %cmp98, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  %98 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %99 = load i32, i32* %x, align 4, !tbaa !5
  %100 = load i32, i32* %y, align 4, !tbaa !5
  %101 = load i32, i32* %bit, align 4, !tbaa !5
  %call100 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %98, i32 %99, i32 %100, i32 %101) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %102 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end
  %103 = load i32, i32* %y, align 4, !tbaa !5
  %inc102 = add nsw i32 %103, 1
  store i32 %inc102, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.103:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.103, %if.then
  %104 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template1(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %gbreg_line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %CONTEXT = alloca i32, align 4
  %line_m1 = alloca i32, align 4
  %line_m2 = alloca i32, align 4
  %padded_width = alloca i32, align 4
  %result = alloca i8, align 1
  %x_minor = alloca i32, align 4
  %minor_width = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %7, i32 0, i32 2
  %8 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %8, i32* %rowstride, align 4, !tbaa !5
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 3
  %13 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %13, i8** %gbreg_line, align 8, !tbaa !1
  %14 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end:                                           ; preds = %entry
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %if.end
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %16 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %GBW, align 4, !tbaa !5
  %add = add nsw i32 %21, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %padded_width, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %22, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  %idxprom = sext i32 %sub to i64
  %24 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %line_m1, align 4, !tbaa !5
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %26, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.11

cond.true.5:                                      ; preds = %cond.end
  %27 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl = shl i32 %27, 1
  %sub6 = sub nsw i32 0, %shl
  %idxprom7 = sext i32 %sub6 to i64
  %28 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %28, i64 %idxprom7
  %29 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %29 to i32
  %shl10 = shl i32 %conv9, 5
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.5
  %cond13 = phi i32 [ %shl10, %cond.true.5 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %line_m2, align 4, !tbaa !5
  %30 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shr = lshr i32 %30, 1
  %and14 = and i32 %shr, 504
  %31 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shr15 = lshr i32 %31, 1
  %and16 = and i32 %shr15, 7680
  %or = or i32 %and14, %and16
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.105, %cond.end.12
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %33 = load i32, i32* %padded_width, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %32, %33
  br i1 %cmp18, label %for.body.20, label %for.end.107

for.body.20:                                      ; preds = %for.cond.17
  call void @llvm.lifetime.start(i64 1, i8* %result) #1
  store i8 0, i8* %result, align 1, !tbaa !18
  %34 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %GBW, align 4, !tbaa !5
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %sub21 = sub nsw i32 %36, %37
  %cmp22 = icmp sgt i32 %sub21, 8
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %for.body.20
  br label %cond.end.27

cond.false.25:                                    ; preds = %for.body.20
  %38 = load i32, i32* %GBW, align 4, !tbaa !5
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %sub26 = sub nsw i32 %38, %39
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %cond28 = phi i32 [ 8, %cond.true.24 ], [ %sub26, %cond.false.25 ]
  store i32 %cond28, i32* %minor_width, align 4, !tbaa !5
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %40, 1
  br i1 %cmp29, label %if.then.31, label %if.end.48

if.then.31:                                       ; preds = %cond.end.27
  %41 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shl32 = shl i32 %41, 8
  %42 = load i32, i32* %x, align 4, !tbaa !5
  %add33 = add nsw i32 %42, 8
  %43 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %add33, %43
  br i1 %cmp34, label %cond.true.36, label %cond.false.44

cond.true.36:                                     ; preds = %if.then.31
  %44 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub37 = sub nsw i32 0, %44
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %shr38 = ashr i32 %45, 3
  %add39 = add nsw i32 %sub37, %shr38
  %add40 = add nsw i32 %add39, 1
  %idxprom41 = sext i32 %add40 to i64
  %46 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %46, i64 %idxprom41
  %47 = load i8, i8* %arrayidx42, align 1, !tbaa !18
  %conv43 = zext i8 %47 to i32
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.then.31
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.36
  %cond46 = phi i32 [ %conv43, %cond.true.36 ], [ 0, %cond.false.44 ]
  %or47 = or i32 %shl32, %cond46
  store i32 %or47, i32* %line_m1, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.45, %cond.end.27
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %48, 2
  br i1 %cmp49, label %if.then.51, label %if.end.70

if.then.51:                                       ; preds = %if.end.48
  %49 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shl52 = shl i32 %49, 8
  %50 = load i32, i32* %x, align 4, !tbaa !5
  %add53 = add nsw i32 %50, 8
  %51 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %add53, %51
  br i1 %cmp54, label %cond.true.56, label %cond.false.66

cond.true.56:                                     ; preds = %if.then.51
  %52 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl57 = shl i32 %52, 1
  %sub58 = sub nsw i32 0, %shl57
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %shr59 = ashr i32 %53, 3
  %add60 = add nsw i32 %sub58, %shr59
  %add61 = add nsw i32 %add60, 1
  %idxprom62 = sext i32 %add61 to i64
  %54 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %54, i64 %idxprom62
  %55 = load i8, i8* %arrayidx63, align 1, !tbaa !18
  %conv64 = zext i8 %55 to i32
  %shl65 = shl i32 %conv64, 5
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.then.51
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.56
  %cond68 = phi i32 [ %shl65, %cond.true.56 ], [ 0, %cond.false.66 ]
  %or69 = or i32 %shl52, %cond68
  store i32 %or69, i32* %line_m2, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.67, %if.end.48
  store i32 0, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end.70
  %56 = load i32, i32* %x_minor, align 4, !tbaa !5
  %57 = load i32, i32* %minor_width, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %56, %57
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %58 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %60 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom75 = zext i32 %60 to i64
  %61 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %61, i64 %idxprom75
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %59, i8* %arrayidx76) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %62 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %62, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.74
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %for.body.74
  %63 = load i32, i32* %bit, align 4, !tbaa !5
  %64 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub81 = sub nsw i32 7, %64
  %shl82 = shl i32 %63, %sub81
  %65 = load i8, i8* %result, align 1, !tbaa !18
  %conv83 = zext i8 %65 to i32
  %or84 = or i32 %conv83, %shl82
  %conv85 = trunc i32 %or84 to i8
  store i8 %conv85, i8* %result, align 1, !tbaa !18
  %66 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %and86 = and i32 %66, 3835
  %shl87 = shl i32 %and86, 1
  %67 = load i32, i32* %bit, align 4, !tbaa !5
  %or88 = or i32 %shl87, %67
  %68 = load i32, i32* %line_m1, align 4, !tbaa !5
  %69 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub89 = sub nsw i32 8, %69
  %shr90 = lshr i32 %68, %sub89
  %and91 = and i32 %shr90, 8
  %or92 = or i32 %or88, %and91
  %70 = load i32, i32* %line_m2, align 4, !tbaa !5
  %71 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub93 = sub nsw i32 8, %71
  %shr94 = lshr i32 %70, %sub93
  %and95 = and i32 %shr94, 512
  %or96 = or i32 %or92, %and95
  store i32 %or96, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.79
  %72 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %73 = load i32, i32* %x_minor, align 4, !tbaa !5
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  %74 = load i8, i8* %result, align 1, !tbaa !18
  %75 = load i32, i32* %x, align 4, !tbaa !5
  %shr97 = ashr i32 %75, 3
  %idxprom98 = sext i32 %shr97 to i64
  %76 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 %idxprom98
  store i8 %74, i8* %arrayidx99, align 1, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %for.end, %cleanup
  %77 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  call void @llvm.lifetime.end(i64 1, i8* %result) #1
  %cleanup.dest.103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.103, label %cleanup.108 [
    i32 0, label %cleanup.cont.104
  ]

cleanup.cont.104:                                 ; preds = %cleanup.100
  br label %for.inc.105

for.inc.105:                                      ; preds = %cleanup.cont.104
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %add106 = add nsw i32 %79, 8
  store i32 %add106, i32* %x, align 4, !tbaa !5
  br label %for.cond.17

for.end.107:                                      ; preds = %for.cond.17
  %80 = load i32, i32* %rowstride, align 4, !tbaa !5
  %81 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  store i8* %add.ptr, i8** %gbreg_line, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %for.end.107, %cleanup.100
  %82 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %cleanup.dest.112 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.112, label %cleanup.117 [
    i32 0, label %cleanup.cont.113
  ]

cleanup.cont.113:                                 ; preds = %cleanup.108
  br label %for.inc.114

for.inc.114:                                      ; preds = %cleanup.cont.113
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %inc115 = add nsw i32 %86, 1
  store i32 %inc115, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %for.end.116, %cleanup.108, %if.then
  %87 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template2a(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %gbreg_line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %CONTEXT = alloca i32, align 4
  %line_m1 = alloca i32, align 4
  %line_m2 = alloca i32, align 4
  %padded_width = alloca i32, align 4
  %result = alloca i8, align 1
  %x_minor = alloca i32, align 4
  %minor_width = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %7, i32 0, i32 2
  %8 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %8, i32* %rowstride, align 4, !tbaa !5
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 3
  %13 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %13, i8** %gbreg_line, align 8, !tbaa !1
  %14 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end:                                           ; preds = %entry
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %if.end
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %16 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %GBW, align 4, !tbaa !5
  %add = add nsw i32 %21, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %padded_width, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %22, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  %idxprom = sext i32 %sub to i64
  %24 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %line_m1, align 4, !tbaa !5
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %26, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.11

cond.true.5:                                      ; preds = %cond.end
  %27 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl = shl i32 %27, 1
  %sub6 = sub nsw i32 0, %shl
  %idxprom7 = sext i32 %sub6 to i64
  %28 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %28, i64 %idxprom7
  %29 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %29 to i32
  %shl10 = shl i32 %conv9, 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.5
  %cond13 = phi i32 [ %shl10, %cond.true.5 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %line_m2, align 4, !tbaa !5
  %30 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shr = lshr i32 %30, 3
  %and14 = and i32 %shr, 120
  %31 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shr15 = lshr i32 %31, 2
  %and16 = and i32 %shr15, 4
  %or = or i32 %and14, %and16
  %32 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shr17 = lshr i32 %32, 3
  %and18 = and i32 %shr17, 896
  %or19 = or i32 %or, %and18
  store i32 %or19, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.112, %cond.end.12
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %34 = load i32, i32* %padded_width, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %33, %34
  br i1 %cmp21, label %for.body.23, label %for.end.114

for.body.23:                                      ; preds = %for.cond.20
  call void @llvm.lifetime.start(i64 1, i8* %result) #1
  store i8 0, i8* %result, align 1, !tbaa !18
  %35 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %GBW, align 4, !tbaa !5
  %38 = load i32, i32* %x, align 4, !tbaa !5
  %sub24 = sub nsw i32 %37, %38
  %cmp25 = icmp sgt i32 %sub24, 8
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %for.body.23
  br label %cond.end.30

cond.false.28:                                    ; preds = %for.body.23
  %39 = load i32, i32* %GBW, align 4, !tbaa !5
  %40 = load i32, i32* %x, align 4, !tbaa !5
  %sub29 = sub nsw i32 %39, %40
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi i32 [ 8, %cond.true.27 ], [ %sub29, %cond.false.28 ]
  store i32 %cond31, i32* %minor_width, align 4, !tbaa !5
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %41, 1
  br i1 %cmp32, label %if.then.34, label %if.end.51

if.then.34:                                       ; preds = %cond.end.30
  %42 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shl35 = shl i32 %42, 8
  %43 = load i32, i32* %x, align 4, !tbaa !5
  %add36 = add nsw i32 %43, 8
  %44 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %add36, %44
  br i1 %cmp37, label %cond.true.39, label %cond.false.47

cond.true.39:                                     ; preds = %if.then.34
  %45 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub40 = sub nsw i32 0, %45
  %46 = load i32, i32* %x, align 4, !tbaa !5
  %shr41 = ashr i32 %46, 3
  %add42 = add nsw i32 %sub40, %shr41
  %add43 = add nsw i32 %add42, 1
  %idxprom44 = sext i32 %add43 to i64
  %47 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %47, i64 %idxprom44
  %48 = load i8, i8* %arrayidx45, align 1, !tbaa !18
  %conv46 = zext i8 %48 to i32
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.then.34
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.39
  %cond49 = phi i32 [ %conv46, %cond.true.39 ], [ 0, %cond.false.47 ]
  %or50 = or i32 %shl35, %cond49
  store i32 %or50, i32* %line_m1, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end.48, %cond.end.30
  %49 = load i32, i32* %y, align 4, !tbaa !5
  %cmp52 = icmp sge i32 %49, 2
  br i1 %cmp52, label %if.then.54, label %if.end.73

if.then.54:                                       ; preds = %if.end.51
  %50 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shl55 = shl i32 %50, 8
  %51 = load i32, i32* %x, align 4, !tbaa !5
  %add56 = add nsw i32 %51, 8
  %52 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %add56, %52
  br i1 %cmp57, label %cond.true.59, label %cond.false.69

cond.true.59:                                     ; preds = %if.then.54
  %53 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl60 = shl i32 %53, 1
  %sub61 = sub nsw i32 0, %shl60
  %54 = load i32, i32* %x, align 4, !tbaa !5
  %shr62 = ashr i32 %54, 3
  %add63 = add nsw i32 %sub61, %shr62
  %add64 = add nsw i32 %add63, 1
  %idxprom65 = sext i32 %add64 to i64
  %55 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %55, i64 %idxprom65
  %56 = load i8, i8* %arrayidx66, align 1, !tbaa !18
  %conv67 = zext i8 %56 to i32
  %shl68 = shl i32 %conv67, 4
  br label %cond.end.70

cond.false.69:                                    ; preds = %if.then.54
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.59
  %cond71 = phi i32 [ %shl68, %cond.true.59 ], [ 0, %cond.false.69 ]
  %or72 = or i32 %shl55, %cond71
  store i32 %or72, i32* %line_m2, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end.70, %if.end.51
  store i32 0, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %if.end.73
  %57 = load i32, i32* %x_minor, align 4, !tbaa !5
  %58 = load i32, i32* %minor_width, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %57, %58
  br i1 %cmp75, label %for.body.77, label %for.end

for.body.77:                                      ; preds = %for.cond.74
  %59 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %61 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom78 = zext i32 %61 to i64
  %62 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %62, i64 %idxprom78
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %60, i8* %arrayidx79) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %63 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %63, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.body.77
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %for.body.77
  %64 = load i32, i32* %bit, align 4, !tbaa !5
  %65 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub84 = sub nsw i32 7, %65
  %shl85 = shl i32 %64, %sub84
  %66 = load i8, i8* %result, align 1, !tbaa !18
  %conv86 = zext i8 %66 to i32
  %or87 = or i32 %conv86, %shl85
  %conv88 = trunc i32 %or87 to i8
  store i8 %conv88, i8* %result, align 1, !tbaa !18
  %67 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %and89 = and i32 %67, 441
  %shl90 = shl i32 %and89, 1
  %68 = load i32, i32* %bit, align 4, !tbaa !5
  %or91 = or i32 %shl90, %68
  %69 = load i32, i32* %line_m1, align 4, !tbaa !5
  %70 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub92 = sub nsw i32 10, %70
  %shr93 = lshr i32 %69, %sub92
  %and94 = and i32 %shr93, 8
  %or95 = or i32 %or91, %and94
  %71 = load i32, i32* %line_m1, align 4, !tbaa !5
  %72 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub96 = sub nsw i32 9, %72
  %shr97 = lshr i32 %71, %sub96
  %and98 = and i32 %shr97, 4
  %or99 = or i32 %or95, %and98
  %73 = load i32, i32* %line_m2, align 4, !tbaa !5
  %74 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub100 = sub nsw i32 10, %74
  %shr101 = lshr i32 %73, %sub100
  %and102 = and i32 %shr101, 128
  %or103 = or i32 %or99, %and102
  store i32 %or103, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.82
  %75 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %76 = load i32, i32* %x_minor, align 4, !tbaa !5
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.74

for.end:                                          ; preds = %for.cond.74
  %77 = load i8, i8* %result, align 1, !tbaa !18
  %78 = load i32, i32* %x, align 4, !tbaa !5
  %shr104 = ashr i32 %78, 3
  %idxprom105 = sext i32 %shr104 to i64
  %79 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %79, i64 %idxprom105
  store i8 %77, i8* %arrayidx106, align 1, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %for.end, %cleanup
  %80 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  call void @llvm.lifetime.end(i64 1, i8* %result) #1
  %cleanup.dest.110 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.110, label %cleanup.115 [
    i32 0, label %cleanup.cont.111
  ]

cleanup.cont.111:                                 ; preds = %cleanup.107
  br label %for.inc.112

for.inc.112:                                      ; preds = %cleanup.cont.111
  %82 = load i32, i32* %x, align 4, !tbaa !5
  %add113 = add nsw i32 %82, 8
  store i32 %add113, i32* %x, align 4, !tbaa !5
  br label %for.cond.20

for.end.114:                                      ; preds = %for.cond.20
  %83 = load i32, i32* %rowstride, align 4, !tbaa !5
  %84 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %idx.ext = sext i32 %83 to i64
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  store i8* %add.ptr, i8** %gbreg_line, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %for.end.114, %cleanup.107
  %85 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %cleanup.dest.119 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.119, label %cleanup.124 [
    i32 0, label %cleanup.cont.120
  ]

cleanup.cont.120:                                 ; preds = %cleanup.115
  br label %for.inc.121

for.inc.121:                                      ; preds = %cleanup.cont.120
  %89 = load i32, i32* %y, align 4, !tbaa !5
  %inc122 = add nsw i32 %89, 1
  store i32 %inc122, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.123:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

cleanup.124:                                      ; preds = %for.end.123, %cleanup.115, %if.then
  %90 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template2(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %gbreg_line = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %CONTEXT = alloca i32, align 4
  %line_m1 = alloca i32, align 4
  %line_m2 = alloca i32, align 4
  %padded_width = alloca i32, align 4
  %result = alloca i8, align 1
  %x_minor = alloca i32, align 4
  %minor_width = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %7, i32 0, i32 2
  %8 = load i32, i32* %stride, align 4, !tbaa !7
  store i32 %8, i32* %rowstride, align 4, !tbaa !5
  %9 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 3
  %13 = load i8*, i8** %data, align 8, !tbaa !20
  store i8* %13, i8** %gbreg_line, align 8, !tbaa !1
  %14 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end:                                           ; preds = %entry
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %if.end
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %16 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %GBW, align 4, !tbaa !5
  %add = add nsw i32 %21, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %padded_width, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %22, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  %idxprom = sext i32 %sub to i64
  %24 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %line_m1, align 4, !tbaa !5
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %26, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.11

cond.true.5:                                      ; preds = %cond.end
  %27 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl = shl i32 %27, 1
  %sub6 = sub nsw i32 0, %shl
  %idxprom7 = sext i32 %sub6 to i64
  %28 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %28, i64 %idxprom7
  %29 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %29 to i32
  %shl10 = shl i32 %conv9, 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.5
  %cond13 = phi i32 [ %shl10, %cond.true.5 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %line_m2, align 4, !tbaa !5
  %30 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shr = lshr i32 %30, 3
  %and14 = and i32 %shr, 124
  %31 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shr15 = lshr i32 %31, 3
  %and16 = and i32 %shr15, 896
  %or = or i32 %and14, %and16
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.105, %cond.end.12
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %33 = load i32, i32* %padded_width, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %32, %33
  br i1 %cmp18, label %for.body.20, label %for.end.107

for.body.20:                                      ; preds = %for.cond.17
  call void @llvm.lifetime.start(i64 1, i8* %result) #1
  store i8 0, i8* %result, align 1, !tbaa !18
  %34 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %GBW, align 4, !tbaa !5
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %sub21 = sub nsw i32 %36, %37
  %cmp22 = icmp sgt i32 %sub21, 8
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %for.body.20
  br label %cond.end.27

cond.false.25:                                    ; preds = %for.body.20
  %38 = load i32, i32* %GBW, align 4, !tbaa !5
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %sub26 = sub nsw i32 %38, %39
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %cond28 = phi i32 [ 8, %cond.true.24 ], [ %sub26, %cond.false.25 ]
  store i32 %cond28, i32* %minor_width, align 4, !tbaa !5
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %40, 1
  br i1 %cmp29, label %if.then.31, label %if.end.48

if.then.31:                                       ; preds = %cond.end.27
  %41 = load i32, i32* %line_m1, align 4, !tbaa !5
  %shl32 = shl i32 %41, 8
  %42 = load i32, i32* %x, align 4, !tbaa !5
  %add33 = add nsw i32 %42, 8
  %43 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %add33, %43
  br i1 %cmp34, label %cond.true.36, label %cond.false.44

cond.true.36:                                     ; preds = %if.then.31
  %44 = load i32, i32* %rowstride, align 4, !tbaa !5
  %sub37 = sub nsw i32 0, %44
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %shr38 = ashr i32 %45, 3
  %add39 = add nsw i32 %sub37, %shr38
  %add40 = add nsw i32 %add39, 1
  %idxprom41 = sext i32 %add40 to i64
  %46 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %46, i64 %idxprom41
  %47 = load i8, i8* %arrayidx42, align 1, !tbaa !18
  %conv43 = zext i8 %47 to i32
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.then.31
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.36
  %cond46 = phi i32 [ %conv43, %cond.true.36 ], [ 0, %cond.false.44 ]
  %or47 = or i32 %shl32, %cond46
  store i32 %or47, i32* %line_m1, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.45, %cond.end.27
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %48, 2
  br i1 %cmp49, label %if.then.51, label %if.end.70

if.then.51:                                       ; preds = %if.end.48
  %49 = load i32, i32* %line_m2, align 4, !tbaa !5
  %shl52 = shl i32 %49, 8
  %50 = load i32, i32* %x, align 4, !tbaa !5
  %add53 = add nsw i32 %50, 8
  %51 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %add53, %51
  br i1 %cmp54, label %cond.true.56, label %cond.false.66

cond.true.56:                                     ; preds = %if.then.51
  %52 = load i32, i32* %rowstride, align 4, !tbaa !5
  %shl57 = shl i32 %52, 1
  %sub58 = sub nsw i32 0, %shl57
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %shr59 = ashr i32 %53, 3
  %add60 = add nsw i32 %sub58, %shr59
  %add61 = add nsw i32 %add60, 1
  %idxprom62 = sext i32 %add61 to i64
  %54 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %54, i64 %idxprom62
  %55 = load i8, i8* %arrayidx63, align 1, !tbaa !18
  %conv64 = zext i8 %55 to i32
  %shl65 = shl i32 %conv64, 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.then.51
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.56
  %cond68 = phi i32 [ %shl65, %cond.true.56 ], [ 0, %cond.false.66 ]
  %or69 = or i32 %shl52, %cond68
  store i32 %or69, i32* %line_m2, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.67, %if.end.48
  store i32 0, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end.70
  %56 = load i32, i32* %x_minor, align 4, !tbaa !5
  %57 = load i32, i32* %minor_width, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %56, %57
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %58 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %60 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom75 = zext i32 %60 to i64
  %61 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %61, i64 %idxprom75
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %59, i8* %arrayidx76) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %62 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %62, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.74
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %for.body.74
  %63 = load i32, i32* %bit, align 4, !tbaa !5
  %64 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub81 = sub nsw i32 7, %64
  %shl82 = shl i32 %63, %sub81
  %65 = load i8, i8* %result, align 1, !tbaa !18
  %conv83 = zext i8 %65 to i32
  %or84 = or i32 %conv83, %shl82
  %conv85 = trunc i32 %or84 to i8
  store i8 %conv85, i8* %result, align 1, !tbaa !18
  %66 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %and86 = and i32 %66, 445
  %shl87 = shl i32 %and86, 1
  %67 = load i32, i32* %bit, align 4, !tbaa !5
  %or88 = or i32 %shl87, %67
  %68 = load i32, i32* %line_m1, align 4, !tbaa !5
  %69 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub89 = sub nsw i32 10, %69
  %shr90 = lshr i32 %68, %sub89
  %and91 = and i32 %shr90, 4
  %or92 = or i32 %or88, %and91
  %70 = load i32, i32* %line_m2, align 4, !tbaa !5
  %71 = load i32, i32* %x_minor, align 4, !tbaa !5
  %sub93 = sub nsw i32 10, %71
  %shr94 = lshr i32 %70, %sub93
  %and95 = and i32 %shr94, 128
  %or96 = or i32 %or92, %and95
  store i32 %or96, i32* %CONTEXT, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.79
  %72 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %73 = load i32, i32* %x_minor, align 4, !tbaa !5
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %x_minor, align 4, !tbaa !5
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  %74 = load i8, i8* %result, align 1, !tbaa !18
  %75 = load i32, i32* %x, align 4, !tbaa !5
  %shr97 = ashr i32 %75, 3
  %idxprom98 = sext i32 %shr97 to i64
  %76 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 %idxprom98
  store i8 %74, i8* %arrayidx99, align 1, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %for.end, %cleanup
  %77 = bitcast i32* %minor_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %x_minor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  call void @llvm.lifetime.end(i64 1, i8* %result) #1
  %cleanup.dest.103 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.103, label %cleanup.108 [
    i32 0, label %cleanup.cont.104
  ]

cleanup.cont.104:                                 ; preds = %cleanup.100
  br label %for.inc.105

for.inc.105:                                      ; preds = %cleanup.cont.104
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %add106 = add nsw i32 %79, 8
  store i32 %add106, i32* %x, align 4, !tbaa !5
  br label %for.cond.17

for.end.107:                                      ; preds = %for.cond.17
  %80 = load i32, i32* %rowstride, align 4, !tbaa !5
  %81 = load i8*, i8** %gbreg_line, align 8, !tbaa !1
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  store i8* %add.ptr, i8** %gbreg_line, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %for.end.107, %cleanup.100
  %82 = bitcast i32* %padded_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %line_m2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %line_m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %cleanup.dest.112 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.112, label %cleanup.117 [
    i32 0, label %cleanup.cont.113
  ]

cleanup.cont.113:                                 ; preds = %cleanup.108
  br label %for.inc.114

for.inc.114:                                      ; preds = %cleanup.cont.113
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %inc115 = add nsw i32 %86, 1
  store i32 %inc115, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %for.end.116, %cleanup.108, %if.then
  %87 = bitcast i8** %gbreg_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %rowstride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template3_unopt(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %10 = load i32, i32* %y, align 4, !tbaa !5
  %11 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %13 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %CONTEXT, align 4, !tbaa !5
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %y, align 4, !tbaa !5
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %14, i32 %sub, i32 %16) #4
  %shl = shl i32 %call, 0
  %17 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %17, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %sub4 = sub nsw i32 %19, 2
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %call5 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %18, i32 %sub4, i32 %20) #4
  %shl6 = shl i32 %call5, 1
  %21 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or7 = or i32 %21, %shl6
  store i32 %or7, i32* %CONTEXT, align 4, !tbaa !5
  %22 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %sub8 = sub nsw i32 %23, 3
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %call9 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %22, i32 %sub8, i32 %24) #4
  %shl10 = shl i32 %call9, 2
  %25 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or11 = or i32 %25, %shl10
  store i32 %or11, i32* %CONTEXT, align 4, !tbaa !5
  %26 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %sub12 = sub nsw i32 %27, 4
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %call13 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %26, i32 %sub12, i32 %28) #4
  %shl14 = shl i32 %call13, 3
  %29 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or15 = or i32 %29, %shl14
  store i32 %or15, i32* %CONTEXT, align 4, !tbaa !5
  %30 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %32 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %32, i32 0, i32 4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = sext i8 %33 to i32
  %add = add nsw i32 %31, %conv
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %35 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat16 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %35, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat16, i32 0, i64 1
  %36 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv18 = sext i8 %36 to i32
  %add19 = add nsw i32 %34, %conv18
  %call20 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %30, i32 %add, i32 %add19) #4
  %shl21 = shl i32 %call20, 4
  %37 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or22 = or i32 %37, %shl21
  store i32 %or22, i32* %CONTEXT, align 4, !tbaa !5
  %38 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %39 = load i32, i32* %x, align 4, !tbaa !5
  %add23 = add nsw i32 %39, 1
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %sub24 = sub nsw i32 %40, 1
  %call25 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %38, i32 %add23, i32 %sub24) #4
  %shl26 = shl i32 %call25, 5
  %41 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or27 = or i32 %41, %shl26
  store i32 %or27, i32* %CONTEXT, align 4, !tbaa !5
  %42 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %43 = load i32, i32* %x, align 4, !tbaa !5
  %add28 = add nsw i32 %43, 0
  %44 = load i32, i32* %y, align 4, !tbaa !5
  %sub29 = sub nsw i32 %44, 1
  %call30 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %42, i32 %add28, i32 %sub29) #4
  %shl31 = shl i32 %call30, 6
  %45 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or32 = or i32 %45, %shl31
  store i32 %or32, i32* %CONTEXT, align 4, !tbaa !5
  %46 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %47 = load i32, i32* %x, align 4, !tbaa !5
  %sub33 = sub nsw i32 %47, 1
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %sub34 = sub nsw i32 %48, 1
  %call35 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %46, i32 %sub33, i32 %sub34) #4
  %shl36 = shl i32 %call35, 7
  %49 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or37 = or i32 %49, %shl36
  store i32 %or37, i32* %CONTEXT, align 4, !tbaa !5
  %50 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %51 = load i32, i32* %x, align 4, !tbaa !5
  %sub38 = sub nsw i32 %51, 2
  %52 = load i32, i32* %y, align 4, !tbaa !5
  %sub39 = sub nsw i32 %52, 1
  %call40 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %50, i32 %sub38, i32 %sub39) #4
  %shl41 = shl i32 %call40, 8
  %53 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or42 = or i32 %53, %shl41
  store i32 %or42, i32* %CONTEXT, align 4, !tbaa !5
  %54 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %55 = load i32, i32* %x, align 4, !tbaa !5
  %sub43 = sub nsw i32 %55, 3
  %56 = load i32, i32* %y, align 4, !tbaa !5
  %sub44 = sub nsw i32 %56, 1
  %call45 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %54, i32 %sub43, i32 %sub44) #4
  %shl46 = shl i32 %call45, 9
  %57 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or47 = or i32 %57, %shl46
  store i32 %or47, i32* %CONTEXT, align 4, !tbaa !5
  %58 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %59 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %59 to i64
  %60 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %call49 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %58, i8* %arrayidx48) #4
  store i32 %call49, i32* %bit, align 4, !tbaa !5
  %61 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %61, 0
  br i1 %cmp50, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  %62 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %63 = load i32, i32* %x, align 4, !tbaa !5
  %64 = load i32, i32* %y, align 4, !tbaa !5
  %65 = load i32, i32* %bit, align 4, !tbaa !5
  %call52 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %62, i32 %63, i32 %64, i32 %65) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %67 = load i32, i32* %y, align 4, !tbaa !5
  %inc54 = add nsw i32 %67, 1
  store i32 %inc54, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.55, %if.then
  %68 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_immediate_generic_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %rsi = alloca %struct.Jbig2RegionSegmentInfo, align 4
  %seg_flags = alloca i8, align 1
  %gbat = alloca [8 x i8], align 1
  %offset = alloca i32, align 4
  %gbat_bytes = alloca i32, align 4
  %params = alloca %struct.Jbig2GenericRegionParams, align 4
  %code = alloca i32, align 4
  %image = alloca %struct._Jbig2Image*, align 8
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  %GB_stats = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %stats_size = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2RegionSegmentInfo* %rsi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %seg_flags) #1
  %1 = bitcast [8 x i8]* %gbat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %gbat_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %gbat_bytes, align 4, !tbaa !5
  %4 = bitcast %struct.Jbig2GenericRegionParams* %params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %7 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %8 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %9 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* null, i8** %GB_stats, align 8, !tbaa !1
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %10, i32 0, i32 3
  %11 = load i64, i64* %data_length, align 8, !tbaa !10
  %cmp = icmp ult i64 %11, 18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %13, i32 0, i32 0
  %14 = load i32, i32* %number, align 4, !tbaa !13
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 3, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  call void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo* %rsi, i8* %15) #4
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %17, i32 0, i32 0
  %18 = load i32, i32* %number1, align 4, !tbaa !13
  %width = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %19 = load i32, i32* %width, align 4, !tbaa !21
  %height = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %20 = load i32, i32* %height, align 4, !tbaa !23
  %x = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 2
  %21 = load i32, i32* %x, align 4, !tbaa !24
  %y = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 3
  %22 = load i32, i32* %y, align 4, !tbaa !25
  %flags = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 5
  %23 = load i8, i8* %flags, align 1, !tbaa !26
  %conv = zext i8 %23 to i32
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %16, i32 1, i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %conv) #4
  %24 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 17
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !18
  store i8 %25, i8* %seg_flags, align 1, !tbaa !18
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number3 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 0
  %28 = load i32, i32* %number3, align 4, !tbaa !13
  %29 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv4 = zext i8 %29 to i32
  %call5 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 1, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %conv4) #4
  %30 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv6 = zext i8 %30 to i32
  %and = and i32 %conv6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %31 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv7 = zext i8 %31 to i32
  %and8 = and i32 %conv7, 6
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true
  %32 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %33 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number11 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %33, i32 0, i32 0
  %34 = load i32, i32* %number11, align 4, !tbaa !13
  %call12 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %32, i32 2, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %35 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv14 = zext i8 %35 to i32
  %and15 = and i32 %conv14, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.37, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  %36 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv18 = zext i8 %36 to i32
  %and19 = and i32 %conv18, 6
  %tobool20 = icmp ne i32 %and19, 0
  %cond = select i1 %tobool20, i32 2, i32 8
  store i32 %cond, i32* %gbat_bytes, align 4, !tbaa !5
  %37 = load i32, i32* %gbat_bytes, align 4, !tbaa !5
  %add = add nsw i32 18, %37
  %conv21 = sext i32 %add to i64
  %38 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length22 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %38, i32 0, i32 3
  %39 = load i64, i64* %data_length22, align 8, !tbaa !10
  %cmp23 = icmp ugt i64 %conv21, %39
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.17
  %40 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %41 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number26 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %41, i32 0, i32 0
  %42 = load i32, i32* %number26, align 4, !tbaa !13
  %call27 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %40, i32 3, i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.28:                                        ; preds = %if.then.17
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i32 0
  %43 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 18
  %44 = load i32, i32* %gbat_bytes, align 4, !tbaa !5
  %conv29 = sext i32 %44 to i64
  %call30 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 %conv29) #5
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %46 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number31 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %46, i32 0, i32 0
  %47 = load i32, i32* %number31, align 4, !tbaa !13
  %arrayidx32 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %48 = load i8, i8* %arrayidx32, align 1, !tbaa !18
  %conv33 = sext i8 %48 to i32
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 1
  %49 = load i8, i8* %arrayidx34, align 1, !tbaa !18
  %conv35 = sext i8 %49 to i32
  %call36 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %45, i32 1, i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %conv33, i32 %conv35) #4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.28, %if.end.13
  %50 = load i32, i32* %gbat_bytes, align 4, !tbaa !5
  %add38 = add nsw i32 18, %50
  store i32 %add38, i32* %offset, align 4, !tbaa !5
  %51 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv39 = zext i8 %51 to i32
  %and40 = and i32 %conv39, 1
  %MMR = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 0
  store i32 %and40, i32* %MMR, align 4, !tbaa !14
  %52 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv41 = zext i8 %52 to i32
  %and42 = and i32 %conv41, 6
  %shr = ashr i32 %and42, 1
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 1
  store i32 %shr, i32* %GBTEMPLATE, align 4, !tbaa !17
  %53 = load i8, i8* %seg_flags, align 1, !tbaa !18
  %conv43 = zext i8 %53 to i32
  %and44 = and i32 %conv43, 8
  %shr45 = ashr i32 %and44, 3
  %TPGDON = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 2
  store i32 %shr45, i32* %TPGDON, align 4, !tbaa !16
  %USESKIP = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 3
  store i32 0, i32* %USESKIP, align 4, !tbaa !27
  %gbat46 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 4
  %arraydecay47 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat46, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i32 0
  %54 = load i32, i32* %gbat_bytes, align 4, !tbaa !5
  %conv49 = sext i32 %54 to i64
  %call50 = call i8* @memcpy(i8* %arraydecay47, i8* %arraydecay48, i64 %conv49) #5
  %55 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %width51 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %56 = load i32, i32* %width51, align 4, !tbaa !21
  %height52 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %57 = load i32, i32* %height52, align 4, !tbaa !23
  %call53 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %55, i32 %56, i32 %57) #4
  store %struct._Jbig2Image* %call53, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %58 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp54 = icmp eq %struct._Jbig2Image* %58, null
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.37
  %59 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %60 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number57 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %60, i32 0, i32 0
  %61 = load i32, i32* %number57, align 4, !tbaa !13
  %call58 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %59, i32 3, i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #4
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.59:                                        ; preds = %if.end.37
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %63 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number60 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %63, i32 0, i32 0
  %64 = load i32, i32* %number60, align 4, !tbaa !13
  %width61 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %65 = load i32, i32* %width61, align 4, !tbaa !21
  %height62 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %66 = load i32, i32* %height62, align 4, !tbaa !23
  %call63 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %62, i32 0, i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0), i32 %65, i32 %66) #4
  %MMR64 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 0
  %67 = load i32, i32* %MMR64, align 4, !tbaa !14
  %tobool65 = icmp ne i32 %67, 0
  br i1 %tobool65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.59
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %69 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %71 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %71 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  %72 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length68 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %72, i32 0, i32 3
  %73 = load i64, i64* %data_length68, align 8, !tbaa !10
  %74 = load i32, i32* %offset, align 4, !tbaa !5
  %conv69 = sext i32 %74 to i64
  %sub = sub i64 %73, %conv69
  %75 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %call70 = call i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx* %68, %struct._Jbig2Segment* %69, %struct.Jbig2GenericRegionParams* %params, i8* %add.ptr67, i64 %sub, %struct._Jbig2Image* %75) #4
  store i32 %call70, i32* %code, align 4, !tbaa !5
  br label %if.end.103

if.else:                                          ; preds = %if.end.59
  %76 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %GBTEMPLATE71 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %params, i32 0, i32 1
  %78 = load i32, i32* %GBTEMPLATE71, align 4, !tbaa !17
  %call72 = call i32 @jbig2_generic_stats_size(%struct._Jbig2Ctx* %77, i32 %78) #4
  store i32 %call72, i32* %stats_size, align 4, !tbaa !5
  %79 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %79, i32 0, i32 0
  %80 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !28
  %81 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv73 = sext i32 %81 to i64
  %call74 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %80, i64 %conv73, i64 1) #4
  store i8* %call74, i8** %GB_stats, align 8, !tbaa !1
  %82 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %cmp75 = icmp eq i8* %82, null
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.else
  %83 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %84 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number78 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %84, i32 0, i32 0
  %85 = load i32, i32* %number78, align 4, !tbaa !13
  %call79 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %83, i32 3, i32 %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 %call79, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.else
  %86 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %87 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv81 = sext i32 %87 to i64
  %call82 = call i8* @memset(i8* %86, i32 0, i64 %conv81) #5
  %88 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %89 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %90 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext83 = sext i32 %90 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %89, i64 %idx.ext83
  %91 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length85 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %91, i32 0, i32 3
  %92 = load i64, i64* %data_length85, align 8, !tbaa !10
  %93 = load i32, i32* %offset, align 4, !tbaa !5
  %conv86 = sext i32 %93 to i64
  %sub87 = sub i64 %92, %conv86
  %call88 = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %88, i8* %add.ptr84, i64 %sub87) #4
  store %struct._Jbig2WordStream* %call88, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %94 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp89 = icmp eq %struct._Jbig2WordStream* %94, null
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.80
  %95 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %96 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number92 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %96, i32 0, i32 0
  %97 = load i32, i32* %number92, align 4, !tbaa !13
  %call93 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %95, i32 3, i32 %97, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0)) #4
  store i32 %call93, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.80
  %98 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %99 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call95 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %98, %struct._Jbig2WordStream* %99) #4
  store %struct._Jbig2ArithState* %call95, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %100 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp96 = icmp eq %struct._Jbig2ArithState* %100, null
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.94
  %101 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %102 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number99 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %102, i32 0, i32 0
  %103 = load i32, i32* %number99, align 4, !tbaa !13
  %call100 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %101, i32 3, i32 %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call100, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.94
  %104 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %105 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %106 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %107 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %108 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %call102 = call i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %104, %struct._Jbig2Segment* %105, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %106, %struct._Jbig2Image* %107, i8* %108) #4
  store i32 %call102, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.98, %if.then.91, %if.then.77, %if.end.101
  %109 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.118 [
    i32 0, label %cleanup.cont
    i32 2, label %cleanup.115
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.103

if.end.103:                                       ; preds = %cleanup.cont, %if.then.66
  %110 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp sge i32 %110, 0
  br i1 %cmp104, label %if.then.106, label %if.else.111

if.then.106:                                      ; preds = %if.end.103
  %111 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %112 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %112, i32 0, i32 16
  %113 = load i32, i32* %current_page, align 4, !tbaa !30
  %idxprom = sext i32 %113 to i64
  %114 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %114, i32 0, i32 18
  %115 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !31
  %arrayidx107 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %115, i64 %idxprom
  %116 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %x108 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 2
  %117 = load i32, i32* %x108, align 4, !tbaa !24
  %y109 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 3
  %118 = load i32, i32* %y109, align 4, !tbaa !25
  %op = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 4
  %119 = load i32, i32* %op, align 4, !tbaa !32
  %call110 = call i32 @jbig2_page_add_result(%struct._Jbig2Ctx* %111, %struct._Jbig2Page* %arrayidx107, %struct._Jbig2Image* %116, i32 %117, i32 %118, i32 %119) #4
  br label %if.end.114

if.else.111:                                      ; preds = %if.end.103
  %120 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %121 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number112 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %121, i32 0, i32 0
  %122 = load i32, i32* %number112, align 4, !tbaa !13
  %call113 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %120, i32 3, i32 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0)) #4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.106
  br label %cleanup.115

cleanup.115:                                      ; preds = %if.end.114, %cleanup
  %123 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator116 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %123, i32 0, i32 0
  %124 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator116, align 8, !tbaa !28
  %125 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %126 = bitcast %struct._Jbig2ArithState* %125 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %124, i8* %126) #4
  %127 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %128 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %127, %struct._Jbig2WordStream* %128) #4
  %129 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator117 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %129, i32 0, i32 0
  %130 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator117, align 8, !tbaa !28
  %131 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %130, i8* %131) #4
  %132 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %133 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %132, %struct._Jbig2Image* %133) #4
  %134 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %cleanup.115, %cleanup, %if.then.56, %if.then.25, %if.then
  %135 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast %struct.Jbig2GenericRegionParams* %params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %140) #1
  %141 = bitcast i32* %gbat_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast [8 x i8]* %gbat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  call void @llvm.lifetime.end(i64 1, i8* %seg_flags) #1
  %144 = bitcast %struct.Jbig2RegionSegmentInfo* %rsi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %144) #1
  %145 = load i32, i32* %retval
  ret i32 %145
}

declare void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo*, i8*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #2

declare i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2GenericRegionParams*, i8*, i64, %struct._Jbig2Image*) #2

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx*, i8*, i64) #2

declare %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare i32 @jbig2_page_add_result(%struct._Jbig2Ctx*, %struct._Jbig2Page*, %struct._Jbig2Image*, i32, i32, i32) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

declare void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template0_TPGDON(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %LTP = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %LTP, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %entry
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.106

for.body:                                         ; preds = %for.cond
  %13 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 39717
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %13, i8* %arrayidx) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load i32, i32* %bit, align 4, !tbaa !5
  %17 = load i32, i32* %LTP, align 4, !tbaa !5
  %xor = xor i32 %17, %16
  store i32 %xor, i32* %LTP, align 4, !tbaa !5
  %18 = load i32, i32* %LTP, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, %20
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %sub, i32 %23) #4
  store i32 %call6, i32* %CONTEXT, align 4, !tbaa !5
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %sub7 = sub nsw i32 %25, 2
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %call8 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %24, i32 %sub7, i32 %26) #4
  %shl = shl i32 %call8, 1
  %27 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %27, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %28 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %sub9 = sub nsw i32 %29, 3
  %30 = load i32, i32* %y, align 4, !tbaa !5
  %call10 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %28, i32 %sub9, i32 %30) #4
  %shl11 = shl i32 %call10, 2
  %31 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or12 = or i32 %31, %shl11
  store i32 %or12, i32* %CONTEXT, align 4, !tbaa !5
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %sub13 = sub nsw i32 %33, 4
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %call14 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %32, i32 %sub13, i32 %34) #4
  %shl15 = shl i32 %call14, 3
  %35 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or16 = or i32 %35, %shl15
  store i32 %or16, i32* %CONTEXT, align 4, !tbaa !5
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %38 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %38, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %39 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv = sext i8 %39 to i32
  %add = add nsw i32 %37, %conv
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %41 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat18 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %41, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat18, i32 0, i64 1
  %42 = load i8, i8* %arrayidx19, align 1, !tbaa !18
  %conv20 = sext i8 %42 to i32
  %add21 = add nsw i32 %40, %conv20
  %call22 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %36, i32 %add, i32 %add21) #4
  %shl23 = shl i32 %call22, 4
  %43 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or24 = or i32 %43, %shl23
  store i32 %or24, i32* %CONTEXT, align 4, !tbaa !5
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %add25 = add nsw i32 %45, 2
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %sub26 = sub nsw i32 %46, 1
  %call27 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %44, i32 %add25, i32 %sub26) #4
  %shl28 = shl i32 %call27, 5
  %47 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or29 = or i32 %47, %shl28
  store i32 %or29, i32* %CONTEXT, align 4, !tbaa !5
  %48 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %add30 = add nsw i32 %49, 1
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %sub31 = sub nsw i32 %50, 1
  %call32 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %48, i32 %add30, i32 %sub31) #4
  %shl33 = shl i32 %call32, 6
  %51 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or34 = or i32 %51, %shl33
  store i32 %or34, i32* %CONTEXT, align 4, !tbaa !5
  %52 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %sub35 = sub nsw i32 %54, 1
  %call36 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %52, i32 %53, i32 %sub35) #4
  %shl37 = shl i32 %call36, 7
  %55 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or38 = or i32 %55, %shl37
  store i32 %or38, i32* %CONTEXT, align 4, !tbaa !5
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %sub39 = sub nsw i32 %57, 1
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %sub40 = sub nsw i32 %58, 1
  %call41 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %56, i32 %sub39, i32 %sub40) #4
  %shl42 = shl i32 %call41, 8
  %59 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or43 = or i32 %59, %shl42
  store i32 %or43, i32* %CONTEXT, align 4, !tbaa !5
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %sub44 = sub nsw i32 %61, 2
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %sub45 = sub nsw i32 %62, 1
  %call46 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %60, i32 %sub44, i32 %sub45) #4
  %shl47 = shl i32 %call46, 9
  %63 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or48 = or i32 %63, %shl47
  store i32 %or48, i32* %CONTEXT, align 4, !tbaa !5
  %64 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %65 = load i32, i32* %x, align 4, !tbaa !5
  %66 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat49 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %66, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat49, i32 0, i64 2
  %67 = load i8, i8* %arrayidx50, align 1, !tbaa !18
  %conv51 = sext i8 %67 to i32
  %add52 = add nsw i32 %65, %conv51
  %68 = load i32, i32* %y, align 4, !tbaa !5
  %69 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat53 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %69, i32 0, i32 4
  %arrayidx54 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat53, i32 0, i64 3
  %70 = load i8, i8* %arrayidx54, align 1, !tbaa !18
  %conv55 = sext i8 %70 to i32
  %add56 = add nsw i32 %68, %conv55
  %call57 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %64, i32 %add52, i32 %add56) #4
  %shl58 = shl i32 %call57, 10
  %71 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or59 = or i32 %71, %shl58
  store i32 %or59, i32* %CONTEXT, align 4, !tbaa !5
  %72 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %73 = load i32, i32* %x, align 4, !tbaa !5
  %74 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat60 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %74, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat60, i32 0, i64 4
  %75 = load i8, i8* %arrayidx61, align 1, !tbaa !18
  %conv62 = sext i8 %75 to i32
  %add63 = add nsw i32 %73, %conv62
  %76 = load i32, i32* %y, align 4, !tbaa !5
  %77 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat64 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %77, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat64, i32 0, i64 5
  %78 = load i8, i8* %arrayidx65, align 1, !tbaa !18
  %conv66 = sext i8 %78 to i32
  %add67 = add nsw i32 %76, %conv66
  %call68 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %72, i32 %add63, i32 %add67) #4
  %shl69 = shl i32 %call68, 11
  %79 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or70 = or i32 %79, %shl69
  store i32 %or70, i32* %CONTEXT, align 4, !tbaa !5
  %80 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %81 = load i32, i32* %x, align 4, !tbaa !5
  %add71 = add nsw i32 %81, 1
  %82 = load i32, i32* %y, align 4, !tbaa !5
  %sub72 = sub nsw i32 %82, 2
  %call73 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %80, i32 %add71, i32 %sub72) #4
  %shl74 = shl i32 %call73, 12
  %83 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or75 = or i32 %83, %shl74
  store i32 %or75, i32* %CONTEXT, align 4, !tbaa !5
  %84 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %85 = load i32, i32* %x, align 4, !tbaa !5
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %sub76 = sub nsw i32 %86, 2
  %call77 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %84, i32 %85, i32 %sub76) #4
  %shl78 = shl i32 %call77, 13
  %87 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or79 = or i32 %87, %shl78
  store i32 %or79, i32* %CONTEXT, align 4, !tbaa !5
  %88 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %89 = load i32, i32* %x, align 4, !tbaa !5
  %sub80 = sub nsw i32 %89, 1
  %90 = load i32, i32* %y, align 4, !tbaa !5
  %sub81 = sub nsw i32 %90, 2
  %call82 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %88, i32 %sub80, i32 %sub81) #4
  %shl83 = shl i32 %call82, 14
  %91 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or84 = or i32 %91, %shl83
  store i32 %or84, i32* %CONTEXT, align 4, !tbaa !5
  %92 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %93 = load i32, i32* %x, align 4, !tbaa !5
  %94 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat85 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %94, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat85, i32 0, i64 6
  %95 = load i8, i8* %arrayidx86, align 1, !tbaa !18
  %conv87 = sext i8 %95 to i32
  %add88 = add nsw i32 %93, %conv87
  %96 = load i32, i32* %y, align 4, !tbaa !5
  %97 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat89 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %97, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat89, i32 0, i64 7
  %98 = load i8, i8* %arrayidx90, align 1, !tbaa !18
  %conv91 = sext i8 %98 to i32
  %add92 = add nsw i32 %96, %conv91
  %call93 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %92, i32 %add88, i32 %add92) #4
  %shl94 = shl i32 %call93, 15
  %99 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or95 = or i32 %99, %shl94
  store i32 %or95, i32* %CONTEXT, align 4, !tbaa !5
  %100 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %101 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %101 to i64
  %102 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %102, i64 %idxprom
  %call97 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %100, i8* %arrayidx96) #4
  store i32 %call97, i32* %bit, align 4, !tbaa !5
  %103 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %103, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %for.body.5
  %104 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %105 = load i32, i32* %x, align 4, !tbaa !5
  %106 = load i32, i32* %y, align 4, !tbaa !5
  %107 = load i32, i32* %bit, align 4, !tbaa !5
  %call102 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %104, i32 %105, i32 %106, i32 %107) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %108 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end.103

if.else:                                          ; preds = %if.end
  %109 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %110 = load i32, i32* %y, align 4, !tbaa !5
  call void @copy_prev_row(%struct._Jbig2Image* %109, i32 %110) #4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %for.end
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %111 = load i32, i32* %y, align 4, !tbaa !5
  %inc105 = add nsw i32 %111, 1
  store i32 %inc105, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.106:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.106, %if.then.100, %if.then
  %112 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template1_TPGDON(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %LTP = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %LTP, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %entry
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %13 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1941
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %13, i8* %arrayidx) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load i32, i32* %bit, align 4, !tbaa !5
  %17 = load i32, i32* %LTP, align 4, !tbaa !5
  %xor = xor i32 %17, %16
  store i32 %xor, i32* %LTP, align 4, !tbaa !5
  %18 = load i32, i32* %LTP, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, %20
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %sub, i32 %23) #4
  store i32 %call6, i32* %CONTEXT, align 4, !tbaa !5
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %sub7 = sub nsw i32 %25, 2
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %call8 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %24, i32 %sub7, i32 %26) #4
  %shl = shl i32 %call8, 1
  %27 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %27, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %28 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %sub9 = sub nsw i32 %29, 3
  %30 = load i32, i32* %y, align 4, !tbaa !5
  %call10 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %28, i32 %sub9, i32 %30) #4
  %shl11 = shl i32 %call10, 2
  %31 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or12 = or i32 %31, %shl11
  store i32 %or12, i32* %CONTEXT, align 4, !tbaa !5
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %34 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %34, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %35 = load i8, i8* %arrayidx13, align 1, !tbaa !18
  %conv = sext i8 %35 to i32
  %add = add nsw i32 %33, %conv
  %36 = load i32, i32* %y, align 4, !tbaa !5
  %37 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat14 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %37, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat14, i32 0, i64 1
  %38 = load i8, i8* %arrayidx15, align 1, !tbaa !18
  %conv16 = sext i8 %38 to i32
  %add17 = add nsw i32 %36, %conv16
  %call18 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %32, i32 %add, i32 %add17) #4
  %shl19 = shl i32 %call18, 3
  %39 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or20 = or i32 %39, %shl19
  store i32 %or20, i32* %CONTEXT, align 4, !tbaa !5
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x, align 4, !tbaa !5
  %add21 = add nsw i32 %41, 2
  %42 = load i32, i32* %y, align 4, !tbaa !5
  %sub22 = sub nsw i32 %42, 1
  %call23 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %40, i32 %add21, i32 %sub22) #4
  %shl24 = shl i32 %call23, 4
  %43 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or25 = or i32 %43, %shl24
  store i32 %or25, i32* %CONTEXT, align 4, !tbaa !5
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %add26 = add nsw i32 %45, 1
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %sub27 = sub nsw i32 %46, 1
  %call28 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %44, i32 %add26, i32 %sub27) #4
  %shl29 = shl i32 %call28, 5
  %47 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or30 = or i32 %47, %shl29
  store i32 %or30, i32* %CONTEXT, align 4, !tbaa !5
  %48 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %sub31 = sub nsw i32 %50, 1
  %call32 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %48, i32 %49, i32 %sub31) #4
  %shl33 = shl i32 %call32, 6
  %51 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or34 = or i32 %51, %shl33
  store i32 %or34, i32* %CONTEXT, align 4, !tbaa !5
  %52 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %sub35 = sub nsw i32 %53, 1
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %sub36 = sub nsw i32 %54, 1
  %call37 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %52, i32 %sub35, i32 %sub36) #4
  %shl38 = shl i32 %call37, 7
  %55 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or39 = or i32 %55, %shl38
  store i32 %or39, i32* %CONTEXT, align 4, !tbaa !5
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %sub40 = sub nsw i32 %57, 2
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %sub41 = sub nsw i32 %58, 1
  %call42 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %56, i32 %sub40, i32 %sub41) #4
  %shl43 = shl i32 %call42, 8
  %59 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or44 = or i32 %59, %shl43
  store i32 %or44, i32* %CONTEXT, align 4, !tbaa !5
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %add45 = add nsw i32 %61, 2
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %sub46 = sub nsw i32 %62, 2
  %call47 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %60, i32 %add45, i32 %sub46) #4
  %shl48 = shl i32 %call47, 9
  %63 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or49 = or i32 %63, %shl48
  store i32 %or49, i32* %CONTEXT, align 4, !tbaa !5
  %64 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %65 = load i32, i32* %x, align 4, !tbaa !5
  %add50 = add nsw i32 %65, 1
  %66 = load i32, i32* %y, align 4, !tbaa !5
  %sub51 = sub nsw i32 %66, 2
  %call52 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %64, i32 %add50, i32 %sub51) #4
  %shl53 = shl i32 %call52, 10
  %67 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or54 = or i32 %67, %shl53
  store i32 %or54, i32* %CONTEXT, align 4, !tbaa !5
  %68 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %69 = load i32, i32* %x, align 4, !tbaa !5
  %70 = load i32, i32* %y, align 4, !tbaa !5
  %sub55 = sub nsw i32 %70, 2
  %call56 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %68, i32 %69, i32 %sub55) #4
  %shl57 = shl i32 %call56, 11
  %71 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or58 = or i32 %71, %shl57
  store i32 %or58, i32* %CONTEXT, align 4, !tbaa !5
  %72 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %73 = load i32, i32* %x, align 4, !tbaa !5
  %sub59 = sub nsw i32 %73, 1
  %74 = load i32, i32* %y, align 4, !tbaa !5
  %sub60 = sub nsw i32 %74, 2
  %call61 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %72, i32 %sub59, i32 %sub60) #4
  %shl62 = shl i32 %call61, 12
  %75 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or63 = or i32 %75, %shl62
  store i32 %or63, i32* %CONTEXT, align 4, !tbaa !5
  %76 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %77 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %77 to i64
  %78 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %78, i64 %idxprom
  %call65 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %76, i8* %arrayidx64) #4
  store i32 %call65, i32* %bit, align 4, !tbaa !5
  %79 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %79, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %for.body.5
  %80 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %81 = load i32, i32* %x, align 4, !tbaa !5
  %82 = load i32, i32* %y, align 4, !tbaa !5
  %83 = load i32, i32* %bit, align 4, !tbaa !5
  %call70 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %80, i32 %81, i32 %82, i32 %83) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %84 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end.71

if.else:                                          ; preds = %if.end
  %85 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %86 = load i32, i32* %y, align 4, !tbaa !5
  call void @copy_prev_row(%struct._Jbig2Image* %85, i32 %86) #4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %for.end
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %87 = load i32, i32* %y, align 4, !tbaa !5
  %inc73 = add nsw i32 %87, 1
  store i32 %inc73, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.74, %if.then.68, %if.then
  %88 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template2_TPGDON(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %LTP = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %LTP, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %entry
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %13 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 229
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %13, i8* %arrayidx) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load i32, i32* %bit, align 4, !tbaa !5
  %17 = load i32, i32* %LTP, align 4, !tbaa !5
  %xor = xor i32 %17, %16
  store i32 %xor, i32* %LTP, align 4, !tbaa !5
  %18 = load i32, i32* %LTP, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, %20
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %sub, i32 %23) #4
  store i32 %call6, i32* %CONTEXT, align 4, !tbaa !5
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %sub7 = sub nsw i32 %25, 2
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %call8 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %24, i32 %sub7, i32 %26) #4
  %shl = shl i32 %call8, 1
  %27 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %27, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %28 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %30 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %30, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %31 = load i8, i8* %arrayidx9, align 1, !tbaa !18
  %conv = sext i8 %31 to i32
  %add = add nsw i32 %29, %conv
  %32 = load i32, i32* %y, align 4, !tbaa !5
  %33 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat10 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %33, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat10, i32 0, i64 1
  %34 = load i8, i8* %arrayidx11, align 1, !tbaa !18
  %conv12 = sext i8 %34 to i32
  %add13 = add nsw i32 %32, %conv12
  %call14 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %28, i32 %add, i32 %add13) #4
  %shl15 = shl i32 %call14, 2
  %35 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or16 = or i32 %35, %shl15
  store i32 %or16, i32* %CONTEXT, align 4, !tbaa !5
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %add17 = add nsw i32 %37, 1
  %38 = load i32, i32* %y, align 4, !tbaa !5
  %sub18 = sub nsw i32 %38, 1
  %call19 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %36, i32 %add17, i32 %sub18) #4
  %shl20 = shl i32 %call19, 3
  %39 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or21 = or i32 %39, %shl20
  store i32 %or21, i32* %CONTEXT, align 4, !tbaa !5
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x, align 4, !tbaa !5
  %42 = load i32, i32* %y, align 4, !tbaa !5
  %sub22 = sub nsw i32 %42, 1
  %call23 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %40, i32 %41, i32 %sub22) #4
  %shl24 = shl i32 %call23, 4
  %43 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or25 = or i32 %43, %shl24
  store i32 %or25, i32* %CONTEXT, align 4, !tbaa !5
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %sub26 = sub nsw i32 %45, 1
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %sub27 = sub nsw i32 %46, 1
  %call28 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %44, i32 %sub26, i32 %sub27) #4
  %shl29 = shl i32 %call28, 5
  %47 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or30 = or i32 %47, %shl29
  store i32 %or30, i32* %CONTEXT, align 4, !tbaa !5
  %48 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %sub31 = sub nsw i32 %49, 2
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %sub32 = sub nsw i32 %50, 1
  %call33 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %48, i32 %sub31, i32 %sub32) #4
  %shl34 = shl i32 %call33, 6
  %51 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or35 = or i32 %51, %shl34
  store i32 %or35, i32* %CONTEXT, align 4, !tbaa !5
  %52 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %add36 = add nsw i32 %53, 1
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %sub37 = sub nsw i32 %54, 2
  %call38 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %52, i32 %add36, i32 %sub37) #4
  %shl39 = shl i32 %call38, 7
  %55 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or40 = or i32 %55, %shl39
  store i32 %or40, i32* %CONTEXT, align 4, !tbaa !5
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %sub41 = sub nsw i32 %58, 2
  %call42 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %56, i32 %57, i32 %sub41) #4
  %shl43 = shl i32 %call42, 8
  %59 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or44 = or i32 %59, %shl43
  store i32 %or44, i32* %CONTEXT, align 4, !tbaa !5
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %sub45 = sub nsw i32 %61, 1
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %sub46 = sub nsw i32 %62, 2
  %call47 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %60, i32 %sub45, i32 %sub46) #4
  %shl48 = shl i32 %call47, 9
  %63 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or49 = or i32 %63, %shl48
  store i32 %or49, i32* %CONTEXT, align 4, !tbaa !5
  %64 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %65 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %65 to i64
  %66 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %66, i64 %idxprom
  %call51 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %64, i8* %arrayidx50) #4
  store i32 %call51, i32* %bit, align 4, !tbaa !5
  %67 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %67, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %for.body.5
  %68 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %69 = load i32, i32* %x, align 4, !tbaa !5
  %70 = load i32, i32* %y, align 4, !tbaa !5
  %71 = load i32, i32* %bit, align 4, !tbaa !5
  %call56 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %68, i32 %69, i32 %70, i32 %71) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %72 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end.57

if.else:                                          ; preds = %if.end
  %73 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %74 = load i32, i32* %y, align 4, !tbaa !5
  call void @copy_prev_row(%struct._Jbig2Image* %73, i32 %74) #4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %for.end
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %75 = load i32, i32* %y, align 4, !tbaa !5
  %inc59 = add nsw i32 %75, 1
  store i32 %inc59, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.60, %if.then.54, %if.then
  %76 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_generic_template3_TPGDON(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2GenericRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2GenericRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GBW = alloca i32, align 4
  %GBH = alloca i32, align 4
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %LTP = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2GenericRegionParams* %params, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !19
  store i32 %2, i32* %GBW, align 4, !tbaa !5
  %3 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !9
  store i32 %5, i32* %GBH, align 4, !tbaa !5
  %6 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %LTP, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %GBH, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %13 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 405
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %13, i8* %arrayidx) #4
  store i32 %call, i32* %bit, align 4, !tbaa !5
  %15 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %15, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load i32, i32* %bit, align 4, !tbaa !5
  %17 = load i32, i32* %LTP, align 4, !tbaa !5
  %xor = xor i32 %17, %16
  store i32 %xor, i32* %LTP, align 4, !tbaa !5
  %18 = load i32, i32* %LTP, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %GBW, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, %20
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %sub, i32 %23) #4
  store i32 %call6, i32* %CONTEXT, align 4, !tbaa !5
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %sub7 = sub nsw i32 %25, 2
  %26 = load i32, i32* %y, align 4, !tbaa !5
  %call8 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %24, i32 %sub7, i32 %26) #4
  %shl = shl i32 %call8, 1
  %27 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or = or i32 %27, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !5
  %28 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %29 = load i32, i32* %x, align 4, !tbaa !5
  %sub9 = sub nsw i32 %29, 3
  %30 = load i32, i32* %y, align 4, !tbaa !5
  %call10 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %28, i32 %sub9, i32 %30) #4
  %shl11 = shl i32 %call10, 2
  %31 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or12 = or i32 %31, %shl11
  store i32 %or12, i32* %CONTEXT, align 4, !tbaa !5
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %sub13 = sub nsw i32 %33, 4
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %call14 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %32, i32 %sub13, i32 %34) #4
  %shl15 = shl i32 %call14, 3
  %35 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or16 = or i32 %35, %shl15
  store i32 %or16, i32* %CONTEXT, align 4, !tbaa !5
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %38 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %38, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  %39 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv = sext i8 %39 to i32
  %add = add nsw i32 %37, %conv
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %41 = load %struct.Jbig2GenericRegionParams*, %struct.Jbig2GenericRegionParams** %params.addr, align 8, !tbaa !1
  %gbat18 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %41, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat18, i32 0, i64 1
  %42 = load i8, i8* %arrayidx19, align 1, !tbaa !18
  %conv20 = sext i8 %42 to i32
  %add21 = add nsw i32 %40, %conv20
  %call22 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %36, i32 %add, i32 %add21) #4
  %shl23 = shl i32 %call22, 4
  %43 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or24 = or i32 %43, %shl23
  store i32 %or24, i32* %CONTEXT, align 4, !tbaa !5
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %add25 = add nsw i32 %45, 1
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %sub26 = sub nsw i32 %46, 1
  %call27 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %44, i32 %add25, i32 %sub26) #4
  %shl28 = shl i32 %call27, 5
  %47 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or29 = or i32 %47, %shl28
  store i32 %or29, i32* %CONTEXT, align 4, !tbaa !5
  %48 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %49 = load i32, i32* %x, align 4, !tbaa !5
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %sub30 = sub nsw i32 %50, 1
  %call31 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %48, i32 %49, i32 %sub30) #4
  %shl32 = shl i32 %call31, 6
  %51 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or33 = or i32 %51, %shl32
  store i32 %or33, i32* %CONTEXT, align 4, !tbaa !5
  %52 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %sub34 = sub nsw i32 %53, 1
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %sub35 = sub nsw i32 %54, 1
  %call36 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %52, i32 %sub34, i32 %sub35) #4
  %shl37 = shl i32 %call36, 7
  %55 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or38 = or i32 %55, %shl37
  store i32 %or38, i32* %CONTEXT, align 4, !tbaa !5
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %sub39 = sub nsw i32 %57, 2
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %sub40 = sub nsw i32 %58, 1
  %call41 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %56, i32 %sub39, i32 %sub40) #4
  %shl42 = shl i32 %call41, 8
  %59 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or43 = or i32 %59, %shl42
  store i32 %or43, i32* %CONTEXT, align 4, !tbaa !5
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %sub44 = sub nsw i32 %61, 3
  %62 = load i32, i32* %y, align 4, !tbaa !5
  %sub45 = sub nsw i32 %62, 1
  %call46 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %60, i32 %sub44, i32 %sub45) #4
  %shl47 = shl i32 %call46, 9
  %63 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %or48 = or i32 %63, %shl47
  store i32 %or48, i32* %CONTEXT, align 4, !tbaa !5
  %64 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %65 = load i32, i32* %CONTEXT, align 4, !tbaa !5
  %idxprom = zext i32 %65 to i64
  %66 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %66, i64 %idxprom
  %call50 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %64, i8* %arrayidx49) #4
  store i32 %call50, i32* %bit, align 4, !tbaa !5
  %67 = load i32, i32* %bit, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %67, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %for.body.5
  %68 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %69 = load i32, i32* %x, align 4, !tbaa !5
  %70 = load i32, i32* %y, align 4, !tbaa !5
  %71 = load i32, i32* %bit, align 4, !tbaa !5
  %call55 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %68, i32 %69, i32 %70, i32 %71) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %72 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end.56

if.else:                                          ; preds = %if.end
  %73 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %74 = load i32, i32* %y, align 4, !tbaa !5
  call void @copy_prev_row(%struct._Jbig2Image* %73, i32 %74) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %for.end
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %75 = load i32, i32* %y, align 4, !tbaa !5
  %inc58 = add nsw i32 %75, 1
  store i32 %inc58, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.59, %if.then.53, %if.then
  %76 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %GBH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %GBW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @jbig2_arith_decode(%struct._Jbig2ArithState*, i8*) #2

declare i32 @jbig2_image_get_pixel(%struct._Jbig2Image*, i32, i32) #2

declare i32 @jbig2_image_set_pixel(%struct._Jbig2Image*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @copy_prev_row(%struct._Jbig2Image* %image, i32 %row) #0 {
entry:
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %row.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %row, i32* %row.addr, align 4, !tbaa !5
  %0 = load i32, i32* %row.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 3
  %2 = load i8*, i8** %data, align 8, !tbaa !20
  %3 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %3, i32 0, i32 2
  %4 = load i32, i32* %stride, align 4, !tbaa !7
  %conv = sext i32 %4 to i64
  %call = call i8* @memset(i8* %2, i32 0, i64 %conv) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %6, i32 0, i32 3
  %7 = load i8*, i8** %data1, align 8, !tbaa !20
  %8 = load i32, i32* %row.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  %9 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride2 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %9, i32 0, i32 2
  %10 = load i32, i32* %stride2, align 4, !tbaa !7
  %mul = mul nsw i32 %sub, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8, !tbaa !1
  %11 = load i8*, i8** %src, align 8, !tbaa !1
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride3 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 2
  %13 = load i32, i32* %stride3, align 4, !tbaa !7
  %idx.ext4 = sext i32 %13 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 %idx.ext4
  %14 = load i8*, i8** %src, align 8, !tbaa !1
  %15 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride6 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %15, i32 0, i32 2
  %16 = load i32, i32* %stride6, align 4, !tbaa !7
  %conv7 = sext i32 %16 to i64
  %call8 = call i8* @memcpy(i8* %add.ptr5, i8* %14, i64 %conv7) #5
  %17 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 8}
!8 = !{!"_Jbig2Image", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24}
!9 = !{!8, !6, i64 4}
!10 = !{!11, !12, i64 16}
!11 = !{!"_Jbig2Segment", !6, i64 0, !3, i64 4, !6, i64 8, !12, i64 16, !6, i64 24, !2, i64 32, !2, i64 40}
!12 = !{!"long", !3, i64 0}
!13 = !{!11, !6, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !3, i64 16}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !6, i64 4}
!18 = !{!3, !3, i64 0}
!19 = !{!8, !6, i64 0}
!20 = !{!8, !2, i64 16}
!21 = !{!22, !6, i64 0}
!22 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!23 = !{!22, !6, i64 4}
!24 = !{!22, !6, i64 8}
!25 = !{!22, !6, i64 12}
!26 = !{!22, !3, i64 20}
!27 = !{!15, !6, i64 12}
!28 = !{!29, !2, i64 0}
!29 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !3, i64 64, !3, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!30 = !{!29, !6, i64 96}
!31 = !{!29, !2, i64 104}
!32 = !{!22, !3, i64 16}
