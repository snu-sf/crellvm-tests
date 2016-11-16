; ModuleID = './jbig2_refinement.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct.Jbig2RefinementRegionParams = type { i32, %struct._Jbig2Image*, i32, i32, i32, [4 x i8] }
%struct._Jbig2ArithState = type opaque
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.Jbig2RegionSegmentInfo = type { i32, i32, i32, i32, i32, i8 }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }

@.str = private unnamed_addr constant [79 x i8] c"decoding generic refinement region with offset %d,%x, GRTEMPLATE=%d, TPGRON=%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"could not find referred to segment %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"generic region: %d x %d @ (%d, %d), flags = %02x\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"segment flags = %02x %s%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" GRTEMPLATE\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" TPGRON\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"reserved segment flag bits are non-zero\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"grat1: (%d, %d) grat2: (%d, %d)\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"could not find reference bitmap!\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"found reference bitmap in segment %d\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"unable to allocate refinement image\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"allocated %d x %d image buffer for region decode results\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"failed to allocate GR-stats in jbig2_refinement_region\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"failed to allocate ws in jbig2_refinement_region\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"failed to allocate as in jbig2_refinement_region\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"composing %dx%d decoded refinement region onto page at (%d, %d)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GR_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GR_stats.addr = alloca i8*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %1 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %1, i32 0, i32 0
  %2 = load i32, i32* %number, align 4, !tbaa !5
  %3 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %3, i32 0, i32 2
  %4 = load i32, i32* %DX, align 4, !tbaa !9
  %5 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %5, i32 0, i32 3
  %6 = load i32, i32* %DY, align 4, !tbaa !11
  %7 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %GRTEMPLATE = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %7, i32 0, i32 0
  %8 = load i32, i32* %GRTEMPLATE, align 4, !tbaa !12
  %9 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %TPGRON = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %9, i32 0, i32 4
  %10 = load i32, i32* %TPGRON, align 4, !tbaa !13
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %0, i32 0, i32 %2, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %6, i32 %8, i32 %10) #4
  %11 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %TPGRON1 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %11, i32 0, i32 4
  %12 = load i32, i32* %TPGRON1, align 4, !tbaa !13
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %15 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %call2 = call i32 @jbig2_decode_refinement_TPGRON(%struct.Jbig2RefinementRegionParams* %13, %struct._Jbig2ArithState* %14, %struct._Jbig2Image* %15, i8* %16) #4
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %17 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %GRTEMPLATE3 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %17, i32 0, i32 0
  %18 = load i32, i32* %GRTEMPLATE3, align 4, !tbaa !12
  %tobool4 = icmp ne i32 %18, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %21 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %22 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %call6 = call i32 @jbig2_decode_refinement_template1_unopt(%struct._Jbig2Ctx* %19, %struct._Jbig2Segment* %20, %struct.Jbig2RefinementRegionParams* %21, %struct._Jbig2ArithState* %22, %struct._Jbig2Image* %23, i8* %24) #4
  store i32 %call6, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %26 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %27 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %28 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %call7 = call i32 @jbig2_decode_refinement_template0_unopt(%struct._Jbig2Ctx* %25, %struct._Jbig2Segment* %26, %struct.Jbig2RefinementRegionParams* %27, %struct._Jbig2ArithState* %28, %struct._Jbig2Image* %29, i8* %30) #4
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_refinement_TPGRON(%struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GR_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GR_stats.addr = alloca i8*, align 8
  %GRW = alloca i32, align 4
  %GRH = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %iv = alloca i32, align 4
  %bit = alloca i32, align 4
  %LTP = alloca i32, align 4
  %start_context = alloca i32, align 4
  %mkctx = alloca i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !14
  store i32 %2, i32* %GRW, align 4, !tbaa !16
  %3 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !17
  store i32 %5, i32* %GRH, align 4, !tbaa !16
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %iv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %LTP, align 4, !tbaa !16
  %11 = bitcast i32* %start_context to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %GRTEMPLATE = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %12, i32 0, i32 0
  %13 = load i32, i32* %GRTEMPLATE, align 4, !tbaa !12
  %tobool = icmp ne i32 %13, 0
  %cond = select i1 %tobool, i32 64, i32 256
  store i32 %cond, i32* %start_context, align 4, !tbaa !16
  %14 = bitcast i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)** %mkctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %GRTEMPLATE1 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %15, i32 0, i32 0
  %16 = load i32, i32* %GRTEMPLATE1, align 4, !tbaa !12
  %tobool2 = icmp ne i32 %16, 0
  %cond3 = select i1 %tobool2, i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)* @mkctx1, i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)* @mkctx0
  store i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)* %cond3, i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)** %mkctx, align 8, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %17 = load i32, i32* %y, align 4, !tbaa !16
  %18 = load i32, i32* %GRH, align 4, !tbaa !16
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %19 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %20 = load i32, i32* %start_context, align 4, !tbaa !16
  %idxprom = zext i32 %20 to i64
  %21 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %call = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %19, i8* %arrayidx) #4
  store i32 %call, i32* %bit, align 4, !tbaa !16
  %22 = load i32, i32* %bit, align 4, !tbaa !16
  %cmp4 = icmp slt i32 %22, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %23 = load i32, i32* %LTP, align 4, !tbaa !16
  %24 = load i32, i32* %bit, align 4, !tbaa !16
  %xor = xor i32 %23, %24
  store i32 %xor, i32* %LTP, align 4, !tbaa !16
  %25 = load i32, i32* %LTP, align 4, !tbaa !16
  %tobool5 = icmp ne i32 %25, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !16
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %26 = load i32, i32* %x, align 4, !tbaa !16
  %27 = load i32, i32* %GRW, align 4, !tbaa !16
  %cmp8 = icmp slt i32 %26, %27
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %28 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %29 = load i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)*, i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)** %mkctx, align 8, !tbaa !1
  %30 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %32 = load i32, i32* %x, align 4, !tbaa !16
  %33 = load i32, i32* %y, align 4, !tbaa !16
  %call10 = call i32 %29(%struct.Jbig2RefinementRegionParams* %30, %struct._Jbig2Image* %31, i32 %32, i32 %33) #4
  %idxprom11 = zext i32 %call10 to i64
  %34 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %34, i64 %idxprom11
  %call13 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %28, i8* %arrayidx12) #4
  store i32 %call13, i32* %bit, align 4, !tbaa !16
  %35 = load i32, i32* %bit, align 4, !tbaa !16
  %cmp14 = icmp slt i32 %35, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body.9
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %37 = load i32, i32* %x, align 4, !tbaa !16
  %38 = load i32, i32* %y, align 4, !tbaa !16
  %39 = load i32, i32* %bit, align 4, !tbaa !16
  %call17 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %36, i32 %37, i32 %38, i32 %39) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %40 = load i32, i32* %x, align 4, !tbaa !16
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %x, align 4, !tbaa !16
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end.38

if.else:                                          ; preds = %if.end
  store i32 0, i32* %x, align 4, !tbaa !16
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.35, %if.else
  %41 = load i32, i32* %x, align 4, !tbaa !16
  %42 = load i32, i32* %GRW, align 4, !tbaa !16
  %cmp19 = icmp slt i32 %41, %42
  br i1 %cmp19, label %for.body.20, label %for.end.37

for.body.20:                                      ; preds = %for.cond.18
  %43 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %45 = load i32, i32* %x, align 4, !tbaa !16
  %46 = load i32, i32* %y, align 4, !tbaa !16
  %call21 = call i32 @implicit_value(%struct.Jbig2RefinementRegionParams* %43, %struct._Jbig2Image* %44, i32 %45, i32 %46) #4
  store i32 %call21, i32* %iv, align 4, !tbaa !16
  %47 = load i32, i32* %iv, align 4, !tbaa !16
  %cmp22 = icmp slt i32 %47, 0
  br i1 %cmp22, label %if.then.23, label %if.else.32

if.then.23:                                       ; preds = %for.body.20
  %48 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %49 = load i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)*, i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)** %mkctx, align 8, !tbaa !1
  %50 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %51 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %52 = load i32, i32* %x, align 4, !tbaa !16
  %53 = load i32, i32* %y, align 4, !tbaa !16
  %call24 = call i32 %49(%struct.Jbig2RefinementRegionParams* %50, %struct._Jbig2Image* %51, i32 %52, i32 %53) #4
  %idxprom25 = zext i32 %call24 to i64
  %54 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %54, i64 %idxprom25
  %call27 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %48, i8* %arrayidx26) #4
  store i32 %call27, i32* %bit, align 4, !tbaa !16
  %55 = load i32, i32* %bit, align 4, !tbaa !16
  %cmp28 = icmp slt i32 %55, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.23
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %57 = load i32, i32* %x, align 4, !tbaa !16
  %58 = load i32, i32* %y, align 4, !tbaa !16
  %59 = load i32, i32* %bit, align 4, !tbaa !16
  %call31 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %56, i32 %57, i32 %58, i32 %59) #4
  br label %if.end.34

if.else.32:                                       ; preds = %for.body.20
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %61 = load i32, i32* %x, align 4, !tbaa !16
  %62 = load i32, i32* %y, align 4, !tbaa !16
  %63 = load i32, i32* %iv, align 4, !tbaa !16
  %call33 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %60, i32 %61, i32 %62, i32 %63) #4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.end.30
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %64 = load i32, i32* %x, align 4, !tbaa !16
  %inc36 = add nsw i32 %64, 1
  store i32 %inc36, i32* %x, align 4, !tbaa !16
  br label %for.cond.18

for.end.37:                                       ; preds = %for.cond.18
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %for.end
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %65 = load i32, i32* %y, align 4, !tbaa !16
  %inc40 = add nsw i32 %65, 1
  store i32 %inc40, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.41, %if.then.29, %if.then.15, %if.then
  %66 = bitcast i32 (%struct.Jbig2RefinementRegionParams*, %struct._Jbig2Image*, i32, i32)** %mkctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %start_context to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %LTP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %iv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_refinement_template1_unopt(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GR_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GR_stats.addr = alloca i8*, align 8
  %GRW = alloca i32, align 4
  %GRH = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %ref = alloca %struct._Jbig2Image*, align 8
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !14
  store i32 %2, i32* %GRW, align 4, !tbaa !16
  %3 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !17
  store i32 %5, i32* %GRH, align 4, !tbaa !16
  %6 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %7, i32 0, i32 2
  %8 = load i32, i32* %DX, align 4, !tbaa !9
  store i32 %8, i32* %dx, align 4, !tbaa !16
  %9 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %10, i32 0, i32 3
  %11 = load i32, i32* %DY, align 4, !tbaa !11
  store i32 %11, i32* %dy, align 4, !tbaa !16
  %12 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %13, i32 0, i32 1
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  store %struct._Jbig2Image* %14, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %15 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %19 = load i32, i32* %y, align 4, !tbaa !16
  %20 = load i32, i32* %GRH, align 4, !tbaa !16
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !16
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %x, align 4, !tbaa !16
  %22 = load i32, i32* %GRW, align 4, !tbaa !16
  %cmp2 = icmp slt i32 %21, %22
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %CONTEXT, align 4, !tbaa !16
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %24 = load i32, i32* %x, align 4, !tbaa !16
  %sub = sub nsw i32 %24, 1
  %25 = load i32, i32* %y, align 4, !tbaa !16
  %add = add nsw i32 %25, 0
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %23, i32 %sub, i32 %add) #4
  %shl = shl i32 %call, 0
  %26 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or = or i32 %26, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !16
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %28 = load i32, i32* %x, align 4, !tbaa !16
  %add4 = add nsw i32 %28, 1
  %29 = load i32, i32* %y, align 4, !tbaa !16
  %sub5 = sub nsw i32 %29, 1
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %27, i32 %add4, i32 %sub5) #4
  %shl7 = shl i32 %call6, 1
  %30 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or8 = or i32 %30, %shl7
  store i32 %or8, i32* %CONTEXT, align 4, !tbaa !16
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %32 = load i32, i32* %x, align 4, !tbaa !16
  %add9 = add nsw i32 %32, 0
  %33 = load i32, i32* %y, align 4, !tbaa !16
  %sub10 = sub nsw i32 %33, 1
  %call11 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %31, i32 %add9, i32 %sub10) #4
  %shl12 = shl i32 %call11, 2
  %34 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or13 = or i32 %34, %shl12
  store i32 %or13, i32* %CONTEXT, align 4, !tbaa !16
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %36 = load i32, i32* %x, align 4, !tbaa !16
  %sub14 = sub nsw i32 %36, 1
  %37 = load i32, i32* %y, align 4, !tbaa !16
  %sub15 = sub nsw i32 %37, 1
  %call16 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %35, i32 %sub14, i32 %sub15) #4
  %shl17 = shl i32 %call16, 3
  %38 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or18 = or i32 %38, %shl17
  store i32 %or18, i32* %CONTEXT, align 4, !tbaa !16
  %39 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %40 = load i32, i32* %x, align 4, !tbaa !16
  %41 = load i32, i32* %dx, align 4, !tbaa !16
  %sub19 = sub nsw i32 %40, %41
  %add20 = add nsw i32 %sub19, 1
  %42 = load i32, i32* %y, align 4, !tbaa !16
  %43 = load i32, i32* %dy, align 4, !tbaa !16
  %sub21 = sub nsw i32 %42, %43
  %add22 = add nsw i32 %sub21, 1
  %call23 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %39, i32 %add20, i32 %add22) #4
  %shl24 = shl i32 %call23, 4
  %44 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or25 = or i32 %44, %shl24
  store i32 %or25, i32* %CONTEXT, align 4, !tbaa !16
  %45 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %46 = load i32, i32* %x, align 4, !tbaa !16
  %47 = load i32, i32* %dx, align 4, !tbaa !16
  %sub26 = sub nsw i32 %46, %47
  %add27 = add nsw i32 %sub26, 0
  %48 = load i32, i32* %y, align 4, !tbaa !16
  %49 = load i32, i32* %dy, align 4, !tbaa !16
  %sub28 = sub nsw i32 %48, %49
  %add29 = add nsw i32 %sub28, 1
  %call30 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %45, i32 %add27, i32 %add29) #4
  %shl31 = shl i32 %call30, 5
  %50 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or32 = or i32 %50, %shl31
  store i32 %or32, i32* %CONTEXT, align 4, !tbaa !16
  %51 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %52 = load i32, i32* %x, align 4, !tbaa !16
  %53 = load i32, i32* %dx, align 4, !tbaa !16
  %sub33 = sub nsw i32 %52, %53
  %add34 = add nsw i32 %sub33, 1
  %54 = load i32, i32* %y, align 4, !tbaa !16
  %55 = load i32, i32* %dy, align 4, !tbaa !16
  %sub35 = sub nsw i32 %54, %55
  %add36 = add nsw i32 %sub35, 0
  %call37 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %51, i32 %add34, i32 %add36) #4
  %shl38 = shl i32 %call37, 6
  %56 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or39 = or i32 %56, %shl38
  store i32 %or39, i32* %CONTEXT, align 4, !tbaa !16
  %57 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %58 = load i32, i32* %x, align 4, !tbaa !16
  %59 = load i32, i32* %dx, align 4, !tbaa !16
  %sub40 = sub nsw i32 %58, %59
  %add41 = add nsw i32 %sub40, 0
  %60 = load i32, i32* %y, align 4, !tbaa !16
  %61 = load i32, i32* %dy, align 4, !tbaa !16
  %sub42 = sub nsw i32 %60, %61
  %add43 = add nsw i32 %sub42, 0
  %call44 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %57, i32 %add41, i32 %add43) #4
  %shl45 = shl i32 %call44, 7
  %62 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or46 = or i32 %62, %shl45
  store i32 %or46, i32* %CONTEXT, align 4, !tbaa !16
  %63 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %64 = load i32, i32* %x, align 4, !tbaa !16
  %65 = load i32, i32* %dx, align 4, !tbaa !16
  %sub47 = sub nsw i32 %64, %65
  %sub48 = sub nsw i32 %sub47, 1
  %66 = load i32, i32* %y, align 4, !tbaa !16
  %67 = load i32, i32* %dy, align 4, !tbaa !16
  %sub49 = sub nsw i32 %66, %67
  %add50 = add nsw i32 %sub49, 0
  %call51 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %63, i32 %sub48, i32 %add50) #4
  %shl52 = shl i32 %call51, 8
  %68 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or53 = or i32 %68, %shl52
  store i32 %or53, i32* %CONTEXT, align 4, !tbaa !16
  %69 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %70 = load i32, i32* %x, align 4, !tbaa !16
  %71 = load i32, i32* %dx, align 4, !tbaa !16
  %sub54 = sub nsw i32 %70, %71
  %add55 = add nsw i32 %sub54, 0
  %72 = load i32, i32* %y, align 4, !tbaa !16
  %73 = load i32, i32* %dy, align 4, !tbaa !16
  %sub56 = sub nsw i32 %72, %73
  %sub57 = sub nsw i32 %sub56, 1
  %call58 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %69, i32 %add55, i32 %sub57) #4
  %shl59 = shl i32 %call58, 9
  %74 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or60 = or i32 %74, %shl59
  store i32 %or60, i32* %CONTEXT, align 4, !tbaa !16
  %75 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %76 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %idxprom = zext i32 %76 to i64
  %77 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %call61 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %75, i8* %arrayidx) #4
  store i32 %call61, i32* %bit, align 4, !tbaa !16
  %78 = load i32, i32* %bit, align 4, !tbaa !16
  %cmp62 = icmp slt i32 %78, 0
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  %79 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %80 = load i32, i32* %x, align 4, !tbaa !16
  %81 = load i32, i32* %y, align 4, !tbaa !16
  %82 = load i32, i32* %bit, align 4, !tbaa !16
  %call63 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %79, i32 %80, i32 %81, i32 %82) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %83 = load i32, i32* %x, align 4, !tbaa !16
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %x, align 4, !tbaa !16
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end
  %84 = load i32, i32* %y, align 4, !tbaa !16
  %inc65 = add nsw i32 %84, 1
  store i32 %inc65, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.66, %if.then
  %85 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_decode_refinement_template0_unopt(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2ArithState* %as, %struct._Jbig2Image* %image, i8* %GR_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GR_stats.addr = alloca i8*, align 8
  %GRW = alloca i32, align 4
  %GRH = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %ref = alloca %struct._Jbig2Image*, align 8
  %CONTEXT = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !14
  store i32 %2, i32* %GRW, align 4, !tbaa !16
  %3 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !17
  store i32 %5, i32* %GRH, align 4, !tbaa !16
  %6 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %7, i32 0, i32 2
  %8 = load i32, i32* %DX, align 4, !tbaa !9
  store i32 %8, i32* %dx, align 4, !tbaa !16
  %9 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %10, i32 0, i32 3
  %11 = load i32, i32* %DY, align 4, !tbaa !11
  store i32 %11, i32* %dy, align 4, !tbaa !16
  %12 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %13, i32 0, i32 1
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  store %struct._Jbig2Image* %14, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %15 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %entry
  %19 = load i32, i32* %y, align 4, !tbaa !16
  %20 = load i32, i32* %GRH, align 4, !tbaa !16
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !16
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %x, align 4, !tbaa !16
  %22 = load i32, i32* %GRW, align 4, !tbaa !16
  %cmp2 = icmp slt i32 %21, %22
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %CONTEXT, align 4, !tbaa !16
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %24 = load i32, i32* %x, align 4, !tbaa !16
  %sub = sub nsw i32 %24, 1
  %25 = load i32, i32* %y, align 4, !tbaa !16
  %add = add nsw i32 %25, 0
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %23, i32 %sub, i32 %add) #4
  %shl = shl i32 %call, 0
  %26 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or = or i32 %26, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !16
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %28 = load i32, i32* %x, align 4, !tbaa !16
  %add4 = add nsw i32 %28, 1
  %29 = load i32, i32* %y, align 4, !tbaa !16
  %sub5 = sub nsw i32 %29, 1
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %27, i32 %add4, i32 %sub5) #4
  %shl7 = shl i32 %call6, 1
  %30 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or8 = or i32 %30, %shl7
  store i32 %or8, i32* %CONTEXT, align 4, !tbaa !16
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %32 = load i32, i32* %x, align 4, !tbaa !16
  %add9 = add nsw i32 %32, 0
  %33 = load i32, i32* %y, align 4, !tbaa !16
  %sub10 = sub nsw i32 %33, 1
  %call11 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %31, i32 %add9, i32 %sub10) #4
  %shl12 = shl i32 %call11, 2
  %34 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or13 = or i32 %34, %shl12
  store i32 %or13, i32* %CONTEXT, align 4, !tbaa !16
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %36 = load i32, i32* %x, align 4, !tbaa !16
  %37 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %37, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %grat, i32 0, i64 0
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %38 to i32
  %add14 = add nsw i32 %36, %conv
  %39 = load i32, i32* %y, align 4, !tbaa !16
  %40 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat15 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %40, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %grat15, i32 0, i64 1
  %41 = load i8, i8* %arrayidx16, align 1, !tbaa !19
  %conv17 = sext i8 %41 to i32
  %add18 = add nsw i32 %39, %conv17
  %call19 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %35, i32 %add14, i32 %add18) #4
  %shl20 = shl i32 %call19, 3
  %42 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or21 = or i32 %42, %shl20
  store i32 %or21, i32* %CONTEXT, align 4, !tbaa !16
  %43 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %44 = load i32, i32* %x, align 4, !tbaa !16
  %45 = load i32, i32* %dx, align 4, !tbaa !16
  %sub22 = sub nsw i32 %44, %45
  %add23 = add nsw i32 %sub22, 1
  %46 = load i32, i32* %y, align 4, !tbaa !16
  %47 = load i32, i32* %dy, align 4, !tbaa !16
  %sub24 = sub nsw i32 %46, %47
  %add25 = add nsw i32 %sub24, 1
  %call26 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %43, i32 %add23, i32 %add25) #4
  %shl27 = shl i32 %call26, 4
  %48 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or28 = or i32 %48, %shl27
  store i32 %or28, i32* %CONTEXT, align 4, !tbaa !16
  %49 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %50 = load i32, i32* %x, align 4, !tbaa !16
  %51 = load i32, i32* %dx, align 4, !tbaa !16
  %sub29 = sub nsw i32 %50, %51
  %add30 = add nsw i32 %sub29, 0
  %52 = load i32, i32* %y, align 4, !tbaa !16
  %53 = load i32, i32* %dy, align 4, !tbaa !16
  %sub31 = sub nsw i32 %52, %53
  %add32 = add nsw i32 %sub31, 1
  %call33 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %49, i32 %add30, i32 %add32) #4
  %shl34 = shl i32 %call33, 5
  %54 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or35 = or i32 %54, %shl34
  store i32 %or35, i32* %CONTEXT, align 4, !tbaa !16
  %55 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %56 = load i32, i32* %x, align 4, !tbaa !16
  %57 = load i32, i32* %dx, align 4, !tbaa !16
  %sub36 = sub nsw i32 %56, %57
  %sub37 = sub nsw i32 %sub36, 1
  %58 = load i32, i32* %y, align 4, !tbaa !16
  %59 = load i32, i32* %dy, align 4, !tbaa !16
  %sub38 = sub nsw i32 %58, %59
  %add39 = add nsw i32 %sub38, 1
  %call40 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %55, i32 %sub37, i32 %add39) #4
  %shl41 = shl i32 %call40, 6
  %60 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or42 = or i32 %60, %shl41
  store i32 %or42, i32* %CONTEXT, align 4, !tbaa !16
  %61 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %62 = load i32, i32* %x, align 4, !tbaa !16
  %63 = load i32, i32* %dx, align 4, !tbaa !16
  %sub43 = sub nsw i32 %62, %63
  %add44 = add nsw i32 %sub43, 1
  %64 = load i32, i32* %y, align 4, !tbaa !16
  %65 = load i32, i32* %dy, align 4, !tbaa !16
  %sub45 = sub nsw i32 %64, %65
  %add46 = add nsw i32 %sub45, 0
  %call47 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %61, i32 %add44, i32 %add46) #4
  %shl48 = shl i32 %call47, 7
  %66 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or49 = or i32 %66, %shl48
  store i32 %or49, i32* %CONTEXT, align 4, !tbaa !16
  %67 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %68 = load i32, i32* %x, align 4, !tbaa !16
  %69 = load i32, i32* %dx, align 4, !tbaa !16
  %sub50 = sub nsw i32 %68, %69
  %add51 = add nsw i32 %sub50, 0
  %70 = load i32, i32* %y, align 4, !tbaa !16
  %71 = load i32, i32* %dy, align 4, !tbaa !16
  %sub52 = sub nsw i32 %70, %71
  %add53 = add nsw i32 %sub52, 0
  %call54 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %67, i32 %add51, i32 %add53) #4
  %shl55 = shl i32 %call54, 8
  %72 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or56 = or i32 %72, %shl55
  store i32 %or56, i32* %CONTEXT, align 4, !tbaa !16
  %73 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %74 = load i32, i32* %x, align 4, !tbaa !16
  %75 = load i32, i32* %dx, align 4, !tbaa !16
  %sub57 = sub nsw i32 %74, %75
  %sub58 = sub nsw i32 %sub57, 1
  %76 = load i32, i32* %y, align 4, !tbaa !16
  %77 = load i32, i32* %dy, align 4, !tbaa !16
  %sub59 = sub nsw i32 %76, %77
  %add60 = add nsw i32 %sub59, 0
  %call61 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %73, i32 %sub58, i32 %add60) #4
  %shl62 = shl i32 %call61, 9
  %78 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or63 = or i32 %78, %shl62
  store i32 %or63, i32* %CONTEXT, align 4, !tbaa !16
  %79 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %80 = load i32, i32* %x, align 4, !tbaa !16
  %81 = load i32, i32* %dx, align 4, !tbaa !16
  %sub64 = sub nsw i32 %80, %81
  %add65 = add nsw i32 %sub64, 1
  %82 = load i32, i32* %y, align 4, !tbaa !16
  %83 = load i32, i32* %dy, align 4, !tbaa !16
  %sub66 = sub nsw i32 %82, %83
  %sub67 = sub nsw i32 %sub66, 1
  %call68 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %79, i32 %add65, i32 %sub67) #4
  %shl69 = shl i32 %call68, 10
  %84 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or70 = or i32 %84, %shl69
  store i32 %or70, i32* %CONTEXT, align 4, !tbaa !16
  %85 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %86 = load i32, i32* %x, align 4, !tbaa !16
  %87 = load i32, i32* %dx, align 4, !tbaa !16
  %sub71 = sub nsw i32 %86, %87
  %add72 = add nsw i32 %sub71, 0
  %88 = load i32, i32* %y, align 4, !tbaa !16
  %89 = load i32, i32* %dy, align 4, !tbaa !16
  %sub73 = sub nsw i32 %88, %89
  %sub74 = sub nsw i32 %sub73, 1
  %call75 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %85, i32 %add72, i32 %sub74) #4
  %shl76 = shl i32 %call75, 11
  %90 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or77 = or i32 %90, %shl76
  store i32 %or77, i32* %CONTEXT, align 4, !tbaa !16
  %91 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %92 = load i32, i32* %x, align 4, !tbaa !16
  %93 = load i32, i32* %dx, align 4, !tbaa !16
  %sub78 = sub nsw i32 %92, %93
  %94 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat79 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %94, i32 0, i32 5
  %arrayidx80 = getelementptr inbounds [4 x i8], [4 x i8]* %grat79, i32 0, i64 2
  %95 = load i8, i8* %arrayidx80, align 1, !tbaa !19
  %conv81 = sext i8 %95 to i32
  %add82 = add nsw i32 %sub78, %conv81
  %96 = load i32, i32* %y, align 4, !tbaa !16
  %97 = load i32, i32* %dy, align 4, !tbaa !16
  %sub83 = sub nsw i32 %96, %97
  %98 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat84 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %98, i32 0, i32 5
  %arrayidx85 = getelementptr inbounds [4 x i8], [4 x i8]* %grat84, i32 0, i64 3
  %99 = load i8, i8* %arrayidx85, align 1, !tbaa !19
  %conv86 = sext i8 %99 to i32
  %add87 = add nsw i32 %sub83, %conv86
  %call88 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %91, i32 %add82, i32 %add87) #4
  %shl89 = shl i32 %call88, 12
  %100 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or90 = or i32 %100, %shl89
  store i32 %or90, i32* %CONTEXT, align 4, !tbaa !16
  %101 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %102 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %idxprom = zext i32 %102 to i64
  %103 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %103, i64 %idxprom
  %call92 = call i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %101, i8* %arrayidx91) #4
  store i32 %call92, i32* %bit, align 4, !tbaa !16
  %104 = load i32, i32* %bit, align 4, !tbaa !16
  %cmp93 = icmp slt i32 %104, 0
  br i1 %cmp93, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  %105 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %106 = load i32, i32* %x, align 4, !tbaa !16
  %107 = load i32, i32* %y, align 4, !tbaa !16
  %108 = load i32, i32* %bit, align 4, !tbaa !16
  %call95 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %105, i32 %106, i32 %107, i32 %108) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %109 = load i32, i32* %x, align 4, !tbaa !16
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %x, align 4, !tbaa !16
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end
  %110 = load i32, i32* %y, align 4, !tbaa !16
  %inc97 = add nsw i32 %110, 1
  store i32 %inc97, i32* %y, align 4, !tbaa !16
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.98, %if.then
  %111 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %GRH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %GRW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define %struct._Jbig2Segment* @jbig2_region_find_referred(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment) #0 {
entry:
  %retval = alloca %struct._Jbig2Segment*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %nsegments = alloca i32, align 4
  %rsegment = alloca %struct._Jbig2Segment*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nsegments to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %1, i32 0, i32 4
  %2 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !20
  store i32 %2, i32* %nsegments, align 4, !tbaa !16
  %3 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %index, align 4, !tbaa !16
  %6 = load i32, i32* %nsegments, align 4, !tbaa !16
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %8 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %9, i32 0, i32 5
  %10 = load i32*, i32** %referred_to_segments, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !16
  %call = call %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %7, i32 %11) #4
  store %struct._Jbig2Segment* %call, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._Jbig2Segment* %12, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %14, i32 0, i32 0
  %15 = load i32, i32* %number, align 4, !tbaa !5
  %16 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom2 = sext i32 %16 to i64
  %17 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments3 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %17, i32 0, i32 5
  %18 = load i32*, i32** %referred_to_segments3, align 8, !tbaa !21
  %arrayidx4 = getelementptr inbounds i32, i32* %18, i64 %idxprom2
  %19 = load i32, i32* %arrayidx4, align 4, !tbaa !16
  %call5 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %13, i32 2, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %19) #4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %20, i32 0, i32 1
  %21 = load i8, i8* %flags, align 1, !tbaa !22
  %conv = zext i8 %21 to i32
  %and = and i32 %conv, 63
  switch i32 %and, label %sw.default [
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 36, label %sw.bb
    i32 40, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %22 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %22, i32 0, i32 6
  %23 = load i8*, i8** %result, align 8, !tbaa !23
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  store %struct._Jbig2Segment* %24, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then
  %25 = load i32, i32* %index, align 4, !tbaa !16
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6
  %26 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %nsegments to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %retval
  ret %struct._Jbig2Segment* %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_refinement_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %params = alloca %struct.Jbig2RefinementRegionParams, align 8
  %rsi = alloca %struct.Jbig2RegionSegmentInfo, align 4
  %offset = alloca i32, align 4
  %seg_flags = alloca i8, align 1
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ref = alloca %struct._Jbig2Segment*, align 8
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  %GR_stats = alloca i8*, align 8
  %stats_size = alloca i32, align 4
  %image86 = alloca %struct._Jbig2Image*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2RefinementRegionParams* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast %struct.Jbig2RegionSegmentInfo* %rsi to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %offset, align 4, !tbaa !16
  call void @llvm.lifetime.start(i64 1, i8* %seg_flags) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !16
  %4 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %4, i32 0, i32 3
  %5 = load i64, i64* %data_length, align 8, !tbaa !24
  %cmp = icmp ult i64 %5, 18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %7 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %7, i32 0, i32 0
  %8 = load i32, i32* %number, align 4, !tbaa !5
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %6, i32 3, i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  call void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo* %rsi, i8* %9) #4
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %11, i32 0, i32 0
  %12 = load i32, i32* %number1, align 4, !tbaa !5
  %width = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %13 = load i32, i32* %width, align 4, !tbaa !25
  %height = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %14 = load i32, i32* %height, align 4, !tbaa !27
  %x = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 2
  %15 = load i32, i32* %x, align 4, !tbaa !28
  %y = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 3
  %16 = load i32, i32* %y, align 4, !tbaa !29
  %flags = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 5
  %17 = load i8, i8* %flags, align 1, !tbaa !30
  %conv = zext i8 %17 to i32
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %10, i32 1, i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 %13, i32 %14, i32 %15, i32 %16, i32 %conv) #4
  %18 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 17
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !19
  store i8 %19, i8* %seg_flags, align 1, !tbaa !19
  %20 = load i8, i8* %seg_flags, align 1, !tbaa !19
  %conv3 = zext i8 %20 to i32
  %and = and i32 %conv3, 1
  %GRTEMPLATE = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 0
  store i32 %and, i32* %GRTEMPLATE, align 4, !tbaa !12
  %21 = load i8, i8* %seg_flags, align 1, !tbaa !19
  %conv4 = zext i8 %21 to i32
  %and5 = and i32 %conv4, 2
  %tobool = icmp ne i32 %and5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %TPGRON = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 4
  store i32 %cond, i32* %TPGRON, align 4, !tbaa !13
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %23 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number6 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %23, i32 0, i32 0
  %24 = load i32, i32* %number6, align 4, !tbaa !5
  %25 = load i8, i8* %seg_flags, align 1, !tbaa !19
  %conv7 = zext i8 %25 to i32
  %GRTEMPLATE8 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 0
  %26 = load i32, i32* %GRTEMPLATE8, align 4, !tbaa !12
  %tobool9 = icmp ne i32 %26, 0
  %cond10 = select i1 %tobool9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)
  %TPGRON11 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 4
  %27 = load i32, i32* %TPGRON11, align 4, !tbaa !13
  %tobool12 = icmp ne i32 %27, 0
  %cond13 = select i1 %tobool12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)
  %call14 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %22, i32 1, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i32 %conv7, i8* %cond10, i8* %cond13) #4
  %28 = load i8, i8* %seg_flags, align 1, !tbaa !19
  %conv15 = zext i8 %28 to i32
  %and16 = and i32 %conv15, 252
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %30 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number19 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %30, i32 0, i32 0
  %31 = load i32, i32* %number19, align 4, !tbaa !5
  %call20 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %29, i32 2, i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0)) #4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %32 = load i32, i32* %offset, align 4, !tbaa !16
  %add = add nsw i32 %32, 18
  store i32 %add, i32* %offset, align 4, !tbaa !16
  %GRTEMPLATE22 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 0
  %33 = load i32, i32* %GRTEMPLATE22, align 4, !tbaa !12
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.end.65, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %34 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length25 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %34, i32 0, i32 3
  %35 = load i64, i64* %data_length25, align 8, !tbaa !24
  %cmp26 = icmp ult i64 %35, 22
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.24
  %36 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %37 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number29 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %37, i32 0, i32 0
  %38 = load i32, i32* %number29, align 4, !tbaa !5
  %call30 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %36, i32 3, i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

if.end.31:                                        ; preds = %if.then.24
  %39 = load i32, i32* %offset, align 4, !tbaa !16
  %add32 = add nsw i32 %39, 0
  %idxprom = sext i32 %add32 to i64
  %40 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx33, align 1, !tbaa !19
  %grat = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx34 = getelementptr inbounds [4 x i8], [4 x i8]* %grat, i32 0, i64 0
  store i8 %41, i8* %arrayidx34, align 1, !tbaa !19
  %42 = load i32, i32* %offset, align 4, !tbaa !16
  %add35 = add nsw i32 %42, 1
  %idxprom36 = sext i32 %add35 to i64
  %43 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %43, i64 %idxprom36
  %44 = load i8, i8* %arrayidx37, align 1, !tbaa !19
  %grat38 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %grat38, i32 0, i64 1
  store i8 %44, i8* %arrayidx39, align 1, !tbaa !19
  %45 = load i32, i32* %offset, align 4, !tbaa !16
  %add40 = add nsw i32 %45, 2
  %idxprom41 = sext i32 %add40 to i64
  %46 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %46, i64 %idxprom41
  %47 = load i8, i8* %arrayidx42, align 1, !tbaa !19
  %grat43 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %grat43, i32 0, i64 2
  store i8 %47, i8* %arrayidx44, align 1, !tbaa !19
  %48 = load i32, i32* %offset, align 4, !tbaa !16
  %add45 = add nsw i32 %48, 3
  %idxprom46 = sext i32 %add45 to i64
  %49 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i64 %idxprom46
  %50 = load i8, i8* %arrayidx47, align 1, !tbaa !19
  %grat48 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %grat48, i32 0, i64 3
  store i8 %50, i8* %arrayidx49, align 1, !tbaa !19
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %52 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number50 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %52, i32 0, i32 0
  %53 = load i32, i32* %number50, align 4, !tbaa !5
  %grat51 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %grat51, i32 0, i64 0
  %54 = load i8, i8* %arrayidx52, align 1, !tbaa !19
  %conv53 = sext i8 %54 to i32
  %grat54 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %grat54, i32 0, i64 1
  %55 = load i8, i8* %arrayidx55, align 1, !tbaa !19
  %conv56 = sext i8 %55 to i32
  %grat57 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %grat57, i32 0, i64 2
  %56 = load i8, i8* %arrayidx58, align 1, !tbaa !19
  %conv59 = sext i8 %56 to i32
  %grat60 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %grat60, i32 0, i64 3
  %57 = load i8, i8* %arrayidx61, align 1, !tbaa !19
  %conv62 = sext i8 %57 to i32
  %call63 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %51, i32 1, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i32 %conv53, i32 %conv56, i32 %conv59, i32 %conv62) #4
  %58 = load i32, i32* %offset, align 4, !tbaa !16
  %add64 = add nsw i32 %58, 4
  store i32 %add64, i32* %offset, align 4, !tbaa !16
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.31, %if.end.21
  %59 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %59, i32 0, i32 4
  %60 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !20
  %tobool66 = icmp ne i32 %60, 0
  br i1 %tobool66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.end.65
  %61 = bitcast %struct._Jbig2Segment** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %63 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call68 = call %struct._Jbig2Segment* @jbig2_region_find_referred(%struct._Jbig2Ctx* %62, %struct._Jbig2Segment* %63) #4
  store %struct._Jbig2Segment* %call68, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %64 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %cmp69 = icmp eq %struct._Jbig2Segment* %64, null
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.then.67
  %65 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %66 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number72 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %66, i32 0, i32 0
  %67 = load i32, i32* %number72, align 4, !tbaa !5
  %call73 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %65, i32 3, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 %call73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.then.67
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %69 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %69, i32 0, i32 6
  %70 = load i8*, i8** %result, align 8, !tbaa !23
  %71 = bitcast i8* %70 to %struct._Jbig2Image*
  %call75 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %68, %struct._Jbig2Image* %71) #4
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 1
  store %struct._Jbig2Image* %call75, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  %72 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %73 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %result76 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %73, i32 0, i32 6
  %74 = load i8*, i8** %result76, align 8, !tbaa !23
  %75 = bitcast i8* %74 to %struct._Jbig2Image*
  call void @jbig2_image_release(%struct._Jbig2Ctx* %72, %struct._Jbig2Image* %75) #4
  %76 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %result77 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %76, i32 0, i32 6
  store i8* null, i8** %result77, align 8, !tbaa !23
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %78 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number78 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %78, i32 0, i32 0
  %79 = load i32, i32* %number78, align 4, !tbaa !5
  %80 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %ref, align 8, !tbaa !1
  %number79 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %80, i32 0, i32 0
  %81 = load i32, i32* %number79, align 4, !tbaa !5
  %call80 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %77, i32 0, i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i32 %81) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.71
  %82 = bitcast %struct._Jbig2Segment** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.154 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.85

if.else:                                          ; preds = %if.end.65
  %83 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %84 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %84, i32 0, i32 16
  %85 = load i32, i32* %current_page, align 4, !tbaa !31
  %idxprom81 = sext i32 %85 to i64
  %86 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %86, i32 0, i32 18
  %87 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !33
  %arrayidx82 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %87, i64 %idxprom81
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx82, i32 0, i32 10
  %88 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !34
  %call83 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %83, %struct._Jbig2Image* %88) #4
  %reference84 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 1
  store %struct._Jbig2Image* %call83, %struct._Jbig2Image** %reference84, align 8, !tbaa !18
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %cleanup.cont
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 2
  store i32 0, i32* %DX, align 4, !tbaa !9
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 3
  store i32 0, i32* %DY, align 4, !tbaa !11
  %89 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %90 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #2
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %91 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #2
  store i8* null, i8** %GR_stats, align 8, !tbaa !1
  %92 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = bitcast %struct._Jbig2Image** %image86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %94 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %width87 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %95 = load i32, i32* %width87, align 4, !tbaa !25
  %height88 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %96 = load i32, i32* %height88, align 4, !tbaa !27
  %call89 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %94, i32 %95, i32 %96) #4
  store %struct._Jbig2Image* %call89, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %97 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %cmp90 = icmp eq %struct._Jbig2Image* %97, null
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.85
  %98 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %99 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number93 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %99, i32 0, i32 0
  %100 = load i32, i32* %number93, align 4, !tbaa !5
  %call94 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %98, i32 3, i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call94, i32* %code, align 4, !tbaa !16
  br label %cleanup.150

if.end.95:                                        ; preds = %if.end.85
  %101 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %102 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number96 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %102, i32 0, i32 0
  %103 = load i32, i32* %number96, align 4, !tbaa !5
  %width97 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %104 = load i32, i32* %width97, align 4, !tbaa !25
  %height98 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %105 = load i32, i32* %height98, align 4, !tbaa !27
  %call99 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %101, i32 0, i32 %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0), i32 %104, i32 %105) #4
  %GRTEMPLATE100 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 0
  %106 = load i32, i32* %GRTEMPLATE100, align 4, !tbaa !12
  %tobool101 = icmp ne i32 %106, 0
  %cond102 = select i1 %tobool101, i32 1024, i32 8192
  store i32 %cond102, i32* %stats_size, align 4, !tbaa !16
  %107 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %107, i32 0, i32 0
  %108 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !37
  %109 = load i32, i32* %stats_size, align 4, !tbaa !16
  %conv103 = sext i32 %109 to i64
  %call104 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %108, i64 %conv103, i64 1) #4
  store i8* %call104, i8** %GR_stats, align 8, !tbaa !1
  %110 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %cmp105 = icmp eq i8* %110, null
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.95
  %111 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call108 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %111, i32 3, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 %call108, i32* %code, align 4, !tbaa !16
  br label %cleanup.150

if.end.109:                                       ; preds = %if.end.95
  %112 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %113 = load i32, i32* %stats_size, align 4, !tbaa !16
  %conv110 = sext i32 %113 to i64
  %call111 = call i8* @memset(i8* %112, i32 0, i64 %conv110) #5
  %114 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %116 = load i32, i32* %offset, align 4, !tbaa !16
  %idx.ext = sext i32 %116 to i64
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 %idx.ext
  %117 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length112 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %117, i32 0, i32 3
  %118 = load i64, i64* %data_length112, align 8, !tbaa !24
  %119 = load i32, i32* %offset, align 4, !tbaa !16
  %conv113 = sext i32 %119 to i64
  %sub = sub i64 %118, %conv113
  %call114 = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %114, i8* %add.ptr, i64 %sub) #4
  store %struct._Jbig2WordStream* %call114, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %120 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp115 = icmp eq %struct._Jbig2WordStream* %120, null
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.109
  %121 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call118 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %121, i32 3, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0)) #4
  store i32 %call118, i32* %code, align 4, !tbaa !16
  br label %cleanup.150

if.end.119:                                       ; preds = %if.end.109
  %122 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %123 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call120 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %122, %struct._Jbig2WordStream* %123) #4
  store %struct._Jbig2ArithState* %call120, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %124 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp121 = icmp eq %struct._Jbig2ArithState* %124, null
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.end.119
  %125 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call124 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %125, i32 3, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)) #4
  store i32 %call124, i32* %code, align 4, !tbaa !16
  br label %cleanup.150

if.end.125:                                       ; preds = %if.end.119
  %126 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %127 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %128 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %129 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %130 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %call126 = call i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx* %126, %struct._Jbig2Segment* %127, %struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2ArithState* %128, %struct._Jbig2Image* %129, i8* %130) #4
  store i32 %call126, i32* %code, align 4, !tbaa !16
  %131 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags127 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %131, i32 0, i32 1
  %132 = load i8, i8* %flags127, align 1, !tbaa !22
  %conv128 = zext i8 %132 to i32
  %and129 = and i32 %conv128, 63
  %cmp130 = icmp eq i32 %and129, 40
  br i1 %cmp130, label %if.then.132, label %if.else.135

if.then.132:                                      ; preds = %if.end.125
  %133 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %134 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %call133 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %133, %struct._Jbig2Image* %134) #4
  %135 = bitcast %struct._Jbig2Image* %call133 to i8*
  %136 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result134 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %136, i32 0, i32 6
  store i8* %135, i8** %result134, align 8, !tbaa !23
  br label %if.end.149

if.else.135:                                      ; preds = %if.end.125
  %137 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %138 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number136 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %138, i32 0, i32 0
  %139 = load i32, i32* %number136, align 4, !tbaa !5
  %width137 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 0
  %140 = load i32, i32* %width137, align 4, !tbaa !25
  %height138 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 1
  %141 = load i32, i32* %height138, align 4, !tbaa !27
  %x139 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 2
  %142 = load i32, i32* %x139, align 4, !tbaa !28
  %y140 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 3
  %143 = load i32, i32* %y140, align 4, !tbaa !29
  %call141 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %137, i32 0, i32 %139, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i32 0, i32 0), i32 %140, i32 %141, i32 %142, i32 %143) #4
  %144 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %145 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page142 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %145, i32 0, i32 16
  %146 = load i32, i32* %current_page142, align 4, !tbaa !31
  %idxprom143 = sext i32 %146 to i64
  %147 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages144 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %147, i32 0, i32 18
  %148 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages144, align 8, !tbaa !33
  %arrayidx145 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %148, i64 %idxprom143
  %149 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  %x146 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 2
  %150 = load i32, i32* %x146, align 4, !tbaa !28
  %y147 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 3
  %151 = load i32, i32* %y147, align 4, !tbaa !29
  %op = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %rsi, i32 0, i32 4
  %152 = load i32, i32* %op, align 4, !tbaa !38
  %call148 = call i32 @jbig2_page_add_result(%struct._Jbig2Ctx* %144, %struct._Jbig2Page* %arrayidx145, %struct._Jbig2Image* %149, i32 %150, i32 %151, i32 %152) #4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.135, %if.then.132
  br label %cleanup.150

cleanup.150:                                      ; preds = %if.end.149, %if.then.123, %if.then.117, %if.then.107, %if.then.92
  %153 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %154 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image86, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %153, %struct._Jbig2Image* %154) #4
  %155 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %reference151 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %params, i32 0, i32 1
  %156 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference151, align 8, !tbaa !18
  call void @jbig2_image_release(%struct._Jbig2Ctx* %155, %struct._Jbig2Image* %156) #4
  %157 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator152 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %157, i32 0, i32 0
  %158 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator152, align 8, !tbaa !37
  %159 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %160 = bitcast %struct._Jbig2ArithState* %159 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %158, i8* %160) #4
  %161 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %162 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %161, %struct._Jbig2WordStream* %162) #4
  %163 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator153 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %163, i32 0, i32 0
  %164 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator153, align 8, !tbaa !37
  %165 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %164, i8* %165) #4
  %166 = bitcast %struct._Jbig2Image** %image86 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = load i32, i32* %code, align 4, !tbaa !16
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.154

cleanup.154:                                      ; preds = %cleanup.150, %cleanup, %if.then.28, %if.then
  %172 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  call void @llvm.lifetime.end(i64 1, i8* %seg_flags) #2
  %173 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast %struct.Jbig2RegionSegmentInfo* %rsi to i8*
  call void @llvm.lifetime.end(i64 24, i8* %174) #2
  %175 = bitcast %struct.Jbig2RefinementRegionParams* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %175) #2
  %176 = load i32, i32* %retval
  ret i32 %176
}

declare void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo*, i8*) #1

declare %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #1

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #1

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx*, i8*, i64) #1

declare %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #1

declare i32 @jbig2_page_add_result(%struct._Jbig2Ctx*, %struct._Jbig2Page*, %struct._Jbig2Image*, i32, i32, i32) #1

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #1

declare void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mkctx1(%struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2Image* %image, i32 %x, i32 %y) #0 {
entry:
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %ref = alloca %struct._Jbig2Image*, align 8
  %CONTEXT = alloca i32, align 4
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !16
  store i32 %y, i32* %y.addr, align 4, !tbaa !16
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %1, i32 0, i32 2
  %2 = load i32, i32* %DX, align 4, !tbaa !9
  store i32 %2, i32* %dx, align 4, !tbaa !16
  %3 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %4, i32 0, i32 3
  %5 = load i32, i32* %DY, align 4, !tbaa !11
  store i32 %5, i32* %dy, align 4, !tbaa !16
  %6 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %7, i32 0, i32 1
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  store %struct._Jbig2Image* %8, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %9 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !16
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %y.addr, align 4, !tbaa !16
  %add = add nsw i32 %12, 0
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %10, i32 %sub, i32 %add) #4
  store i32 %call, i32* %CONTEXT, align 4, !tbaa !16
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !16
  %add1 = add nsw i32 %14, 1
  %15 = load i32, i32* %y.addr, align 4, !tbaa !16
  %sub2 = sub nsw i32 %15, 1
  %call3 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %13, i32 %add1, i32 %sub2) #4
  %shl = shl i32 %call3, 1
  %16 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or = or i32 %16, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !16
  %17 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %18 = load i32, i32* %x.addr, align 4, !tbaa !16
  %add4 = add nsw i32 %18, 0
  %19 = load i32, i32* %y.addr, align 4, !tbaa !16
  %sub5 = sub nsw i32 %19, 1
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %17, i32 %add4, i32 %sub5) #4
  %shl7 = shl i32 %call6, 2
  %20 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or8 = or i32 %20, %shl7
  store i32 %or8, i32* %CONTEXT, align 4, !tbaa !16
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x.addr, align 4, !tbaa !16
  %sub9 = sub nsw i32 %22, 1
  %23 = load i32, i32* %y.addr, align 4, !tbaa !16
  %sub10 = sub nsw i32 %23, 1
  %call11 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %sub9, i32 %sub10) #4
  %shl12 = shl i32 %call11, 3
  %24 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or13 = or i32 %24, %shl12
  store i32 %or13, i32* %CONTEXT, align 4, !tbaa !16
  %25 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %26 = load i32, i32* %x.addr, align 4, !tbaa !16
  %27 = load i32, i32* %dx, align 4, !tbaa !16
  %sub14 = sub nsw i32 %26, %27
  %add15 = add nsw i32 %sub14, 1
  %28 = load i32, i32* %y.addr, align 4, !tbaa !16
  %29 = load i32, i32* %dy, align 4, !tbaa !16
  %sub16 = sub nsw i32 %28, %29
  %add17 = add nsw i32 %sub16, 1
  %call18 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %25, i32 %add15, i32 %add17) #4
  %shl19 = shl i32 %call18, 4
  %30 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or20 = or i32 %30, %shl19
  store i32 %or20, i32* %CONTEXT, align 4, !tbaa !16
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %32 = load i32, i32* %x.addr, align 4, !tbaa !16
  %33 = load i32, i32* %dx, align 4, !tbaa !16
  %sub21 = sub nsw i32 %32, %33
  %add22 = add nsw i32 %sub21, 0
  %34 = load i32, i32* %y.addr, align 4, !tbaa !16
  %35 = load i32, i32* %dy, align 4, !tbaa !16
  %sub23 = sub nsw i32 %34, %35
  %add24 = add nsw i32 %sub23, 1
  %call25 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %31, i32 %add22, i32 %add24) #4
  %shl26 = shl i32 %call25, 5
  %36 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or27 = or i32 %36, %shl26
  store i32 %or27, i32* %CONTEXT, align 4, !tbaa !16
  %37 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %38 = load i32, i32* %x.addr, align 4, !tbaa !16
  %39 = load i32, i32* %dx, align 4, !tbaa !16
  %sub28 = sub nsw i32 %38, %39
  %add29 = add nsw i32 %sub28, 1
  %40 = load i32, i32* %y.addr, align 4, !tbaa !16
  %41 = load i32, i32* %dy, align 4, !tbaa !16
  %sub30 = sub nsw i32 %40, %41
  %add31 = add nsw i32 %sub30, 0
  %call32 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %37, i32 %add29, i32 %add31) #4
  %shl33 = shl i32 %call32, 6
  %42 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or34 = or i32 %42, %shl33
  store i32 %or34, i32* %CONTEXT, align 4, !tbaa !16
  %43 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %44 = load i32, i32* %x.addr, align 4, !tbaa !16
  %45 = load i32, i32* %dx, align 4, !tbaa !16
  %sub35 = sub nsw i32 %44, %45
  %add36 = add nsw i32 %sub35, 0
  %46 = load i32, i32* %y.addr, align 4, !tbaa !16
  %47 = load i32, i32* %dy, align 4, !tbaa !16
  %sub37 = sub nsw i32 %46, %47
  %add38 = add nsw i32 %sub37, 0
  %call39 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %43, i32 %add36, i32 %add38) #4
  %shl40 = shl i32 %call39, 7
  %48 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or41 = or i32 %48, %shl40
  store i32 %or41, i32* %CONTEXT, align 4, !tbaa !16
  %49 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %50 = load i32, i32* %x.addr, align 4, !tbaa !16
  %51 = load i32, i32* %dx, align 4, !tbaa !16
  %sub42 = sub nsw i32 %50, %51
  %sub43 = sub nsw i32 %sub42, 1
  %52 = load i32, i32* %y.addr, align 4, !tbaa !16
  %53 = load i32, i32* %dy, align 4, !tbaa !16
  %sub44 = sub nsw i32 %52, %53
  %add45 = add nsw i32 %sub44, 0
  %call46 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %49, i32 %sub43, i32 %add45) #4
  %shl47 = shl i32 %call46, 8
  %54 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or48 = or i32 %54, %shl47
  store i32 %or48, i32* %CONTEXT, align 4, !tbaa !16
  %55 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %56 = load i32, i32* %x.addr, align 4, !tbaa !16
  %57 = load i32, i32* %dx, align 4, !tbaa !16
  %sub49 = sub nsw i32 %56, %57
  %add50 = add nsw i32 %sub49, 0
  %58 = load i32, i32* %y.addr, align 4, !tbaa !16
  %59 = load i32, i32* %dy, align 4, !tbaa !16
  %sub51 = sub nsw i32 %58, %59
  %sub52 = sub nsw i32 %sub51, 1
  %call53 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %55, i32 %add50, i32 %sub52) #4
  %shl54 = shl i32 %call53, 9
  %60 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or55 = or i32 %60, %shl54
  store i32 %or55, i32* %CONTEXT, align 4, !tbaa !16
  %61 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %62 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @mkctx0(%struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2Image* %image, i32 %x, i32 %y) #0 {
entry:
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %ref = alloca %struct._Jbig2Image*, align 8
  %CONTEXT = alloca i32, align 4
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !16
  store i32 %y, i32* %y.addr, align 4, !tbaa !16
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %1, i32 0, i32 2
  %2 = load i32, i32* %DX, align 4, !tbaa !9
  store i32 %2, i32* %dx, align 4, !tbaa !16
  %3 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %4, i32 0, i32 3
  %5 = load i32, i32* %DY, align 4, !tbaa !11
  store i32 %5, i32* %dy, align 4, !tbaa !16
  %6 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %7, i32 0, i32 1
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  store %struct._Jbig2Image* %8, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %9 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !16
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %y.addr, align 4, !tbaa !16
  %add = add nsw i32 %12, 0
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %10, i32 %sub, i32 %add) #4
  store i32 %call, i32* %CONTEXT, align 4, !tbaa !16
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !16
  %add1 = add nsw i32 %14, 1
  %15 = load i32, i32* %y.addr, align 4, !tbaa !16
  %sub2 = sub nsw i32 %15, 1
  %call3 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %13, i32 %add1, i32 %sub2) #4
  %shl = shl i32 %call3, 1
  %16 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or = or i32 %16, %shl
  store i32 %or, i32* %CONTEXT, align 4, !tbaa !16
  %17 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %18 = load i32, i32* %x.addr, align 4, !tbaa !16
  %add4 = add nsw i32 %18, 0
  %19 = load i32, i32* %y.addr, align 4, !tbaa !16
  %sub5 = sub nsw i32 %19, 1
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %17, i32 %add4, i32 %sub5) #4
  %shl7 = shl i32 %call6, 2
  %20 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or8 = or i32 %20, %shl7
  store i32 %or8, i32* %CONTEXT, align 4, !tbaa !16
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x.addr, align 4, !tbaa !16
  %23 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %23, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %grat, i32 0, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %24 to i32
  %add9 = add nsw i32 %22, %conv
  %25 = load i32, i32* %y.addr, align 4, !tbaa !16
  %26 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat10 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %26, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %grat10, i32 0, i64 1
  %27 = load i8, i8* %arrayidx11, align 1, !tbaa !19
  %conv12 = sext i8 %27 to i32
  %add13 = add nsw i32 %25, %conv12
  %call14 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %21, i32 %add9, i32 %add13) #4
  %shl15 = shl i32 %call14, 3
  %28 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or16 = or i32 %28, %shl15
  store i32 %or16, i32* %CONTEXT, align 4, !tbaa !16
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %30 = load i32, i32* %x.addr, align 4, !tbaa !16
  %31 = load i32, i32* %dx, align 4, !tbaa !16
  %sub17 = sub nsw i32 %30, %31
  %add18 = add nsw i32 %sub17, 1
  %32 = load i32, i32* %y.addr, align 4, !tbaa !16
  %33 = load i32, i32* %dy, align 4, !tbaa !16
  %sub19 = sub nsw i32 %32, %33
  %add20 = add nsw i32 %sub19, 1
  %call21 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %29, i32 %add18, i32 %add20) #4
  %shl22 = shl i32 %call21, 4
  %34 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or23 = or i32 %34, %shl22
  store i32 %or23, i32* %CONTEXT, align 4, !tbaa !16
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !16
  %37 = load i32, i32* %dx, align 4, !tbaa !16
  %sub24 = sub nsw i32 %36, %37
  %add25 = add nsw i32 %sub24, 0
  %38 = load i32, i32* %y.addr, align 4, !tbaa !16
  %39 = load i32, i32* %dy, align 4, !tbaa !16
  %sub26 = sub nsw i32 %38, %39
  %add27 = add nsw i32 %sub26, 1
  %call28 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %35, i32 %add25, i32 %add27) #4
  %shl29 = shl i32 %call28, 5
  %40 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or30 = or i32 %40, %shl29
  store i32 %or30, i32* %CONTEXT, align 4, !tbaa !16
  %41 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !16
  %43 = load i32, i32* %dx, align 4, !tbaa !16
  %sub31 = sub nsw i32 %42, %43
  %sub32 = sub nsw i32 %sub31, 1
  %44 = load i32, i32* %y.addr, align 4, !tbaa !16
  %45 = load i32, i32* %dy, align 4, !tbaa !16
  %sub33 = sub nsw i32 %44, %45
  %add34 = add nsw i32 %sub33, 1
  %call35 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %41, i32 %sub32, i32 %add34) #4
  %shl36 = shl i32 %call35, 6
  %46 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or37 = or i32 %46, %shl36
  store i32 %or37, i32* %CONTEXT, align 4, !tbaa !16
  %47 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %48 = load i32, i32* %x.addr, align 4, !tbaa !16
  %49 = load i32, i32* %dx, align 4, !tbaa !16
  %sub38 = sub nsw i32 %48, %49
  %add39 = add nsw i32 %sub38, 1
  %50 = load i32, i32* %y.addr, align 4, !tbaa !16
  %51 = load i32, i32* %dy, align 4, !tbaa !16
  %sub40 = sub nsw i32 %50, %51
  %add41 = add nsw i32 %sub40, 0
  %call42 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %47, i32 %add39, i32 %add41) #4
  %shl43 = shl i32 %call42, 7
  %52 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or44 = or i32 %52, %shl43
  store i32 %or44, i32* %CONTEXT, align 4, !tbaa !16
  %53 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %54 = load i32, i32* %x.addr, align 4, !tbaa !16
  %55 = load i32, i32* %dx, align 4, !tbaa !16
  %sub45 = sub nsw i32 %54, %55
  %add46 = add nsw i32 %sub45, 0
  %56 = load i32, i32* %y.addr, align 4, !tbaa !16
  %57 = load i32, i32* %dy, align 4, !tbaa !16
  %sub47 = sub nsw i32 %56, %57
  %add48 = add nsw i32 %sub47, 0
  %call49 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %53, i32 %add46, i32 %add48) #4
  %shl50 = shl i32 %call49, 8
  %58 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or51 = or i32 %58, %shl50
  store i32 %or51, i32* %CONTEXT, align 4, !tbaa !16
  %59 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %60 = load i32, i32* %x.addr, align 4, !tbaa !16
  %61 = load i32, i32* %dx, align 4, !tbaa !16
  %sub52 = sub nsw i32 %60, %61
  %sub53 = sub nsw i32 %sub52, 1
  %62 = load i32, i32* %y.addr, align 4, !tbaa !16
  %63 = load i32, i32* %dy, align 4, !tbaa !16
  %sub54 = sub nsw i32 %62, %63
  %add55 = add nsw i32 %sub54, 0
  %call56 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %59, i32 %sub53, i32 %add55) #4
  %shl57 = shl i32 %call56, 9
  %64 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or58 = or i32 %64, %shl57
  store i32 %or58, i32* %CONTEXT, align 4, !tbaa !16
  %65 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %66 = load i32, i32* %x.addr, align 4, !tbaa !16
  %67 = load i32, i32* %dx, align 4, !tbaa !16
  %sub59 = sub nsw i32 %66, %67
  %add60 = add nsw i32 %sub59, 1
  %68 = load i32, i32* %y.addr, align 4, !tbaa !16
  %69 = load i32, i32* %dy, align 4, !tbaa !16
  %sub61 = sub nsw i32 %68, %69
  %sub62 = sub nsw i32 %sub61, 1
  %call63 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %65, i32 %add60, i32 %sub62) #4
  %shl64 = shl i32 %call63, 10
  %70 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or65 = or i32 %70, %shl64
  store i32 %or65, i32* %CONTEXT, align 4, !tbaa !16
  %71 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %72 = load i32, i32* %x.addr, align 4, !tbaa !16
  %73 = load i32, i32* %dx, align 4, !tbaa !16
  %sub66 = sub nsw i32 %72, %73
  %add67 = add nsw i32 %sub66, 0
  %74 = load i32, i32* %y.addr, align 4, !tbaa !16
  %75 = load i32, i32* %dy, align 4, !tbaa !16
  %sub68 = sub nsw i32 %74, %75
  %sub69 = sub nsw i32 %sub68, 1
  %call70 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %71, i32 %add67, i32 %sub69) #4
  %shl71 = shl i32 %call70, 11
  %76 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or72 = or i32 %76, %shl71
  store i32 %or72, i32* %CONTEXT, align 4, !tbaa !16
  %77 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %78 = load i32, i32* %x.addr, align 4, !tbaa !16
  %79 = load i32, i32* %dx, align 4, !tbaa !16
  %sub73 = sub nsw i32 %78, %79
  %80 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat74 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %80, i32 0, i32 5
  %arrayidx75 = getelementptr inbounds [4 x i8], [4 x i8]* %grat74, i32 0, i64 2
  %81 = load i8, i8* %arrayidx75, align 1, !tbaa !19
  %conv76 = sext i8 %81 to i32
  %add77 = add nsw i32 %sub73, %conv76
  %82 = load i32, i32* %y.addr, align 4, !tbaa !16
  %83 = load i32, i32* %dy, align 4, !tbaa !16
  %sub78 = sub nsw i32 %82, %83
  %84 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %grat79 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %84, i32 0, i32 5
  %arrayidx80 = getelementptr inbounds [4 x i8], [4 x i8]* %grat79, i32 0, i64 3
  %85 = load i8, i8* %arrayidx80, align 1, !tbaa !19
  %conv81 = sext i8 %85 to i32
  %add82 = add nsw i32 %sub78, %conv81
  %call83 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %77, i32 %add77, i32 %add82) #4
  %shl84 = shl i32 %call83, 12
  %86 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %or85 = or i32 %86, %shl84
  store i32 %or85, i32* %CONTEXT, align 4, !tbaa !16
  %87 = load i32, i32* %CONTEXT, align 4, !tbaa !16
  %88 = bitcast i32* %CONTEXT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  ret i32 %87
}

declare i32 @jbig2_arith_decode(%struct._Jbig2ArithState*, i8*) #1

declare i32 @jbig2_image_set_pixel(%struct._Jbig2Image*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @implicit_value(%struct.Jbig2RefinementRegionParams* %params, %struct._Jbig2Image* %image, i32 %x, i32 %y) #0 {
entry:
  %params.addr = alloca %struct.Jbig2RefinementRegionParams*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ref = alloca %struct._Jbig2Image*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Jbig2RefinementRegionParams* %params, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !16
  store i32 %y, i32* %y.addr, align 4, !tbaa !16
  %0 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %1, i32 0, i32 1
  %2 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference, align 8, !tbaa !18
  store %struct._Jbig2Image* %2, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %x.addr, align 4, !tbaa !16
  %5 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %5, i32 0, i32 2
  %6 = load i32, i32* %DX, align 4, !tbaa !9
  %sub = sub nsw i32 %4, %6
  store i32 %sub, i32* %i, align 4, !tbaa !16
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %y.addr, align 4, !tbaa !16
  %9 = load %struct.Jbig2RefinementRegionParams*, %struct.Jbig2RefinementRegionParams** %params.addr, align 8, !tbaa !1
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %9, i32 0, i32 3
  %10 = load i32, i32* %DY, align 4, !tbaa !11
  %sub1 = sub nsw i32 %8, %10
  store i32 %sub1, i32* %j, align 4, !tbaa !16
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %14 = load i32, i32* %j, align 4, !tbaa !16
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %12, i32 %13, i32 %14) #4
  store i32 %call, i32* %m, align 4, !tbaa !16
  %15 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !16
  %sub2 = sub nsw i32 %16, 1
  %17 = load i32, i32* %j, align 4, !tbaa !16
  %sub3 = sub nsw i32 %17, 1
  %call4 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %15, i32 %sub2, i32 %sub3) #4
  %18 = load i32, i32* %m, align 4, !tbaa !16
  %cmp = icmp eq i32 %call4, %18
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %19 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !16
  %21 = load i32, i32* %j, align 4, !tbaa !16
  %sub5 = sub nsw i32 %21, 1
  %call6 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %19, i32 %20, i32 %sub5) #4
  %22 = load i32, i32* %m, align 4, !tbaa !16
  %cmp7 = icmp eq i32 %call6, %22
  br i1 %cmp7, label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !16
  %add = add nsw i32 %24, 1
  %25 = load i32, i32* %j, align 4, !tbaa !16
  %sub9 = sub nsw i32 %25, 1
  %call10 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %23, i32 %add, i32 %sub9) #4
  %26 = load i32, i32* %m, align 4, !tbaa !16
  %cmp11 = icmp eq i32 %call10, %26
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !16
  %sub13 = sub nsw i32 %28, 1
  %29 = load i32, i32* %j, align 4, !tbaa !16
  %call14 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %27, i32 %sub13, i32 %29) #4
  %30 = load i32, i32* %m, align 4, !tbaa !16
  %cmp15 = icmp eq i32 %call14, %30
  br i1 %cmp15, label %land.lhs.true.16, label %cond.false

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !16
  %add17 = add nsw i32 %32, 1
  %33 = load i32, i32* %j, align 4, !tbaa !16
  %call18 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %31, i32 %add17, i32 %33) #4
  %34 = load i32, i32* %m, align 4, !tbaa !16
  %cmp19 = icmp eq i32 %call18, %34
  br i1 %cmp19, label %land.lhs.true.20, label %cond.false

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !16
  %sub21 = sub nsw i32 %36, 1
  %37 = load i32, i32* %j, align 4, !tbaa !16
  %add22 = add nsw i32 %37, 1
  %call23 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %35, i32 %sub21, i32 %add22) #4
  %38 = load i32, i32* %m, align 4, !tbaa !16
  %cmp24 = icmp eq i32 %call23, %38
  br i1 %cmp24, label %land.lhs.true.25, label %cond.false

land.lhs.true.25:                                 ; preds = %land.lhs.true.20
  %39 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !16
  %41 = load i32, i32* %j, align 4, !tbaa !16
  %add26 = add nsw i32 %41, 1
  %call27 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %39, i32 %40, i32 %add26) #4
  %42 = load i32, i32* %m, align 4, !tbaa !16
  %cmp28 = icmp eq i32 %call27, %42
  br i1 %cmp28, label %land.lhs.true.29, label %cond.false

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %43 = load %struct._Jbig2Image*, %struct._Jbig2Image** %ref, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !16
  %add30 = add nsw i32 %44, 1
  %45 = load i32, i32* %j, align 4, !tbaa !16
  %add31 = add nsw i32 %45, 1
  %call32 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %43, i32 %add30, i32 %add31) #4
  %46 = load i32, i32* %m, align 4, !tbaa !16
  %cmp33 = icmp eq i32 %call32, %46
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.29
  %47 = load i32, i32* %m, align 4, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.29, %land.lhs.true.25, %land.lhs.true.20, %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ -1, %cond.false ]
  %48 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast %struct._Jbig2Image** %ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  ret i32 %cond
}

declare i32 @jbig2_image_get_pixel(%struct._Jbig2Image*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_Jbig2Segment", !7, i64 0, !3, i64 4, !7, i64 8, !8, i64 16, !7, i64 24, !2, i64 32, !2, i64 40}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !7, i64 16}
!10 = !{!"", !7, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !3, i64 28}
!11 = !{!10, !7, i64 20}
!12 = !{!10, !7, i64 0}
!13 = !{!10, !7, i64 24}
!14 = !{!15, !7, i64 0}
!15 = !{!"_Jbig2Image", !7, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !7, i64 24}
!16 = !{!7, !7, i64 0}
!17 = !{!15, !7, i64 4}
!18 = !{!10, !2, i64 8}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !7, i64 24}
!21 = !{!6, !2, i64 32}
!22 = !{!6, !3, i64 4}
!23 = !{!6, !2, i64 40}
!24 = !{!6, !8, i64 16}
!25 = !{!26, !7, i64 0}
!26 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !3, i64 16, !3, i64 20}
!27 = !{!26, !7, i64 4}
!28 = !{!26, !7, i64 8}
!29 = !{!26, !7, i64 12}
!30 = !{!26, !3, i64 20}
!31 = !{!32, !7, i64 96}
!32 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !7, i64 56, !7, i64 60, !3, i64 64, !3, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !2, i64 104}
!33 = !{!32, !2, i64 104}
!34 = !{!35, !2, i64 40}
!35 = !{!"_Jbig2Page", !3, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !36, i64 24, !7, i64 28, !7, i64 32, !3, i64 36, !2, i64 40}
!36 = !{!"short", !3, i64 0}
!37 = !{!32, !2, i64 0}
!38 = !{!26, !3, i64 16}
