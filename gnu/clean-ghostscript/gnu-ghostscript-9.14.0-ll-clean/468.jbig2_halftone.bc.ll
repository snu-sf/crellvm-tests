; ModuleID = './jbig2_halftone.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Jbig2PatternDict = type { i32, %struct._Jbig2Image**, i32, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct.Jbig2PatternDictParams = type { i32, i32, i32, i32, i32 }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.Jbig2GenericRegionParams = type { i32, i32, i32, i32, [8 x i8] }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }
%struct._Jbig2ArithState = type opaque
%struct.Jbig2HalftoneRegionParams = type { i8, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32 }
%struct.Jbig2RegionSegmentInfo = type { i32, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [59 x i8] c"failed to allocate pattern in collective bitmap dictionary\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to allocate pattern element image\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to allocate collective bitmap dictionary\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"pattern dictionary, flags=%02x, %d grays (%dx%d cell)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"HDTEMPLATE is %d when HDMMR is %d, contrary to spec\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Reserved flag bits non-zero\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"failed to allocate GB_stats in pattern dictionary\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"failed to allocate %d bytes for GSPLANES\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"failed to allocate %dx%d image for GSPLANES\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"failed to allocate ws in jbig2_decode_gray_scale_image\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"failed to allocate as in jbig2_decode_gray_scale_image\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"error decoding GSPLANES for halftone image\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"failed to allocate GSVALS: %d bytes\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"unhandled option HENABLESKIP\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"no pattern dictionary found, skipping halftone image\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"unable to acquire gray-scale image, skipping halftone image\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"gray-scale image uses value %d which larger than pattern dictionary\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"halftone region: %d x %d @ (%x,%d) flags=%02x\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"HTEMPLATE is %d when HMMR is %d, contrary to spec\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"HENABLESKIP is %d when HMMR is %d, contrary to spec\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c" grid %d x %d @ (%d.%d,%d.%d) vector (%d.%d,%d.%d)\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"failed to allocate GB_stats in halftone region\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"unable to allocate halftone image\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"failed to allocate collective bitmap for halftone dict!\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"failed to allocate storage for as in halftone dict!\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"failed to allocate storage for ws in halftone dict!\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Jbig2PatternDict* @jbig2_hd_new(%struct._Jbig2Ctx* %ctx, %struct.Jbig2PatternDictParams* %params, %struct._Jbig2Image* %image) #0 {
entry:
  %retval = alloca %struct.Jbig2PatternDict*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %params.addr = alloca %struct.Jbig2PatternDictParams*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %new = alloca %struct.Jbig2PatternDict*, align 8
  %N = alloca i32, align 4
  %HPW = alloca i32, align 4
  %HPH = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct.Jbig2PatternDictParams* %params, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2PatternDict** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %N to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %GRAYMAX = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %2, i32 0, i32 3
  %3 = load i32, i32* %GRAYMAX, align 4, !tbaa !5
  %add = add i32 %3, 1
  store i32 %add, i32* %N, align 4, !tbaa !8
  %4 = bitcast i32* %HPW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDPW = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %5, i32 0, i32 1
  %6 = load i32, i32* %HDPW, align 4, !tbaa !9
  store i32 %6, i32* %HPW, align 4, !tbaa !8
  %7 = bitcast i32* %HPH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDPH = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %8, i32 0, i32 2
  %9 = load i32, i32* %HDPH, align 4, !tbaa !10
  store i32 %9, i32* %HPH, align 4, !tbaa !8
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %11, i32 0, i32 0
  %12 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %12, i64 1, i64 24) #4
  %13 = bitcast i8* %call to %struct.Jbig2PatternDict*
  store %struct.Jbig2PatternDict* %13, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %14 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %cmp = icmp ne %struct.Jbig2PatternDict* %14, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 0
  %16 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator1, align 8, !tbaa !11
  %17 = load i32, i32* %N, align 4, !tbaa !8
  %conv = sext i32 %17 to i64
  %call2 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %16, i64 %conv, i64 8) #4
  %18 = bitcast i8* %call2 to %struct._Jbig2Image**
  %19 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %19, i32 0, i32 1
  store %struct._Jbig2Image** %18, %struct._Jbig2Image*** %patterns, align 8, !tbaa !14
  %20 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns3 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %20, i32 0, i32 1
  %21 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns3, align 8, !tbaa !14
  %cmp4 = icmp eq %struct._Jbig2Image** %21, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %22, i32 3, i32 -1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0)) #4
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %23, i32 0, i32 0
  %24 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator8, align 8, !tbaa !11
  %25 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %26 = bitcast %struct.Jbig2PatternDict* %25 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %24, i8* %26) #4
  store %struct.Jbig2PatternDict* null, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %27 = load i32, i32* %N, align 4, !tbaa !8
  %28 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %n_patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %28, i32 0, i32 0
  store i32 %27, i32* %n_patterns, align 4, !tbaa !16
  %29 = load i32, i32* %HPW, align 4, !tbaa !8
  %30 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %HPW9 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %30, i32 0, i32 2
  store i32 %29, i32* %HPW9, align 4, !tbaa !17
  %31 = load i32, i32* %HPH, align 4, !tbaa !8
  %32 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %HPH10 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %32, i32 0, i32 3
  store i32 %31, i32* %HPH10, align 4, !tbaa !18
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !8
  %34 = load i32, i32* %N, align 4, !tbaa !8
  %cmp11 = icmp slt i32 %33, %34
  br i1 %cmp11, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %36 = load i32, i32* %HPW, align 4, !tbaa !8
  %37 = load i32, i32* %HPH, align 4, !tbaa !8
  %call13 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %35, i32 %36, i32 %37) #4
  %38 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns14 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %39, i32 0, i32 1
  %40 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns14, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %40, i64 %idxprom
  store %struct._Jbig2Image* %call13, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  %41 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %41 to i64
  %42 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns16 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %42, i32 0, i32 1
  %43 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns16, align 8, !tbaa !14
  %arrayidx17 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %43, i64 %idxprom15
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx17, align 8, !tbaa !1
  %cmp18 = icmp eq %struct._Jbig2Image* %44, null
  br i1 %cmp18, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %for.body
  %45 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call21 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %46, i32 2, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.20
  %47 = load i32, i32* %j, align 4, !tbaa !8
  %48 = load i32, i32* %i, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %47, %48
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %49 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator26 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %49, i32 0, i32 0
  %50 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator26, align 8, !tbaa !11
  %51 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom27 = sext i32 %51 to i64
  %52 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns28 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %52, i32 0, i32 1
  %53 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns28, align 8, !tbaa !14
  %arrayidx29 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %53, i64 %idxprom27
  %54 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx29, align 8, !tbaa !1
  %55 = bitcast %struct._Jbig2Image* %54 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %50, i8* %55) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %56 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %57 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator30 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %57, i32 0, i32 0
  %58 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator30, align 8, !tbaa !11
  %59 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %60 = bitcast %struct.Jbig2PatternDict* %59 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %58, i8* %60) #4
  store %struct.Jbig2PatternDict* null, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %cleanup

if.end.31:                                        ; preds = %for.body
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %63 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom32 = sext i32 %63 to i64
  %64 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  %patterns33 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %64, i32 0, i32 1
  %65 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns33, align 8, !tbaa !14
  %arrayidx34 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %65, i64 %idxprom32
  %66 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx34, align 8, !tbaa !1
  %67 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %68 = load i32, i32* %i, align 4, !tbaa !8
  %sub = sub nsw i32 0, %68
  %69 = load i32, i32* %HPW, align 4, !tbaa !8
  %mul = mul nsw i32 %sub, %69
  %call35 = call i32 @jbig2_image_compose(%struct._Jbig2Ctx* %62, %struct._Jbig2Image* %66, %struct._Jbig2Image* %67, i32 %mul, i32 0, i32 4) #4
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.31
  %70 = load i32, i32* %i, align 4, !tbaa !8
  %inc37 = add nsw i32 %70, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  br label %if.end.40

if.else:                                          ; preds = %entry
  %71 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call39 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %71, i32 3, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %for.end.38
  %72 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %new, align 8, !tbaa !1
  store %struct.Jbig2PatternDict* %72, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %for.end, %if.then.6
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %HPH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %HPW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %N to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.Jbig2PatternDict** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %retval
  ret %struct.Jbig2PatternDict* %78
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @jbig2_image_compose(%struct._Jbig2Ctx*, %struct._Jbig2Image*, %struct._Jbig2Image*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @jbig2_hd_release(%struct._Jbig2Ctx* %ctx, %struct.Jbig2PatternDict* %dict) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %dict.addr = alloca %struct.Jbig2PatternDict*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct.Jbig2PatternDict* %dict, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.Jbig2PatternDict* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !8
  %3 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %n_patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %3, i32 0, i32 0
  %4 = load i32, i32* %n_patterns, align 4, !tbaa !16
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %6, i32 0, i32 1
  %7 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %7, i64 %idxprom
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Image* %8, null
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %patterns4 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %11, i32 0, i32 1
  %12 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns4, align 8, !tbaa !14
  %arrayidx5 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %12, i64 %idxprom3
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx5, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %9, %struct._Jbig2Image* %13) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 0
  %16 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %17 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %patterns7 = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %17, i32 0, i32 1
  %18 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns7, align 8, !tbaa !14
  %19 = bitcast %struct._Jbig2Image** %18 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %16, i8* %19) #4
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %20, i32 0, i32 0
  %21 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator8, align 8, !tbaa !11
  %22 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %dict.addr, align 8, !tbaa !1
  %23 = bitcast %struct.Jbig2PatternDict* %22 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %21, i8* %23) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_pattern_dictionary(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %params = alloca %struct.Jbig2PatternDictParams, align 4
  %GB_stats = alloca i8*, align 8
  %flags = alloca i8, align 1
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %stats_size = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2PatternDictParams* %params to i8*
  call void @llvm.lifetime.start(i64 20, i8* %0) #1
  %1 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %GB_stats, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %flags) #1
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %offset, align 4, !tbaa !8
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %3, i32 0, i32 3
  %4 = load i64, i64* %data_length, align 8, !tbaa !19
  %cmp = icmp ult i64 %4, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %6 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %6, i32 0, i32 0
  %7 = load i32, i32* %number, align 4, !tbaa !21
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %5, i32 3, i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !22
  store i8 %9, i8* %flags, align 1, !tbaa !22
  %10 = load i8, i8* %flags, align 1, !tbaa !22
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  %HDMMR = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 0
  store i32 %and, i32* %HDMMR, align 4, !tbaa !23
  %11 = load i8, i8* %flags, align 1, !tbaa !22
  %conv1 = zext i8 %11 to i32
  %and2 = and i32 %conv1, 6
  %shr = ashr i32 %and2, 1
  %HDTEMPLATE = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 4
  store i32 %shr, i32* %HDTEMPLATE, align 4, !tbaa !24
  %12 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx3, align 1, !tbaa !22
  %conv4 = zext i8 %13 to i32
  %HDPW = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 1
  store i32 %conv4, i32* %HDPW, align 4, !tbaa !9
  %14 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx5, align 1, !tbaa !22
  %conv6 = zext i8 %15 to i32
  %HDPH = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 2
  store i32 %conv6, i32* %HDPH, align 4, !tbaa !10
  %16 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 3
  %call7 = call i32 @jbig2_get_uint32(i8* %add.ptr) #4
  %GRAYMAX = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 3
  store i32 %call7, i32* %GRAYMAX, align 4, !tbaa !5
  %17 = load i32, i32* %offset, align 4, !tbaa !8
  %add = add nsw i32 %17, 7
  store i32 %add, i32* %offset, align 4, !tbaa !8
  %18 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %19 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number8 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %19, i32 0, i32 0
  %20 = load i32, i32* %number8, align 4, !tbaa !21
  %21 = load i8, i8* %flags, align 1, !tbaa !22
  %conv9 = zext i8 %21 to i32
  %GRAYMAX10 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 3
  %22 = load i32, i32* %GRAYMAX10, align 4, !tbaa !5
  %add11 = add i32 %22, 1
  %HDPW12 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 1
  %23 = load i32, i32* %HDPW12, align 4, !tbaa !9
  %HDPH13 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 2
  %24 = load i32, i32* %HDPH13, align 4, !tbaa !10
  %call14 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %18, i32 1, i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %conv9, i32 %add11, i32 %23, i32 %24) #4
  %HDMMR15 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 0
  %25 = load i32, i32* %HDMMR15, align 4, !tbaa !23
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %HDTEMPLATE16 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 4
  %26 = load i32, i32* %HDTEMPLATE16, align 4, !tbaa !24
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %land.lhs.true
  %27 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %28 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number19 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %28, i32 0, i32 0
  %29 = load i32, i32* %number19, align 4, !tbaa !21
  %HDTEMPLATE20 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 4
  %30 = load i32, i32* %HDTEMPLATE20, align 4, !tbaa !24
  %HDMMR21 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 0
  %31 = load i32, i32* %HDMMR21, align 4, !tbaa !23
  %call22 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %27, i32 2, i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i32 %30, i32 %31) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %land.lhs.true, %if.end
  %32 = load i8, i8* %flags, align 1, !tbaa !22
  %conv24 = zext i8 %32 to i32
  %and25 = and i32 %conv24, 248
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.23
  %33 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %34 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number28 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %34, i32 0, i32 0
  %35 = load i32, i32* %number28, align 4, !tbaa !21
  %call29 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %33, i32 2, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.23
  %HDMMR31 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 0
  %36 = load i32, i32* %HDMMR31, align 4, !tbaa !23
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %if.end.46, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  %37 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %HDTEMPLATE34 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 4
  %39 = load i32, i32* %HDTEMPLATE34, align 4, !tbaa !24
  %call35 = call i32 @jbig2_generic_stats_size(%struct._Jbig2Ctx* %38, i32 %39) #4
  store i32 %call35, i32* %stats_size, align 4, !tbaa !8
  %40 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %40, i32 0, i32 0
  %41 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %42 = load i32, i32* %stats_size, align 4, !tbaa !8
  %conv36 = sext i32 %42 to i64
  %call37 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %41, i64 %conv36, i64 1) #4
  store i8* %call37, i8** %GB_stats, align 8, !tbaa !1
  %43 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %cmp38 = icmp eq i8* %43, null
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.33
  %44 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %45 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number41 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %45, i32 0, i32 0
  %46 = load i32, i32* %number41, align 4, !tbaa !21
  %call42 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %44, i32 3, i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.33
  %47 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %48 = load i32, i32* %stats_size, align 4, !tbaa !8
  %conv44 = sext i32 %48 to i64
  %call45 = call i8* @memset(i8* %47, i32 0, i64 %conv44) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.40
  %49 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %if.end.30
  %50 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %51 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %53 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext = sext i32 %53 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  %54 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length48 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %54, i32 0, i32 3
  %55 = load i64, i64* %data_length48, align 8, !tbaa !19
  %56 = load i32, i32* %offset, align 4, !tbaa !8
  %conv49 = sext i32 %56 to i64
  %sub = sub i64 %55, %conv49
  %57 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %call50 = call %struct.Jbig2PatternDict* @jbig2_decode_pattern_dict(%struct._Jbig2Ctx* %50, %struct._Jbig2Segment* %51, %struct.Jbig2PatternDictParams* %params, i8* %add.ptr47, i64 %sub, i8* %57) #4
  %58 = bitcast %struct.Jbig2PatternDict* %call50 to i8*
  %59 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %59, i32 0, i32 6
  store i8* %58, i8** %result, align 8, !tbaa !25
  %HDMMR51 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %params, i32 0, i32 0
  %60 = load i32, i32* %HDMMR51, align 4, !tbaa !23
  %tobool52 = icmp ne i32 %60, 0
  br i1 %tobool52, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.46
  %61 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator54 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %61, i32 0, i32 0
  %62 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator54, align 8, !tbaa !11
  %63 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %62, i8* %63) #4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.46
  %64 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result56 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %64, i32 0, i32 6
  %65 = load i8*, i8** %result56, align 8, !tbaa !25
  %cmp57 = icmp ne i8* %65, null
  %cond = select i1 %cmp57, i32 0, i32 -1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.55, %cleanup, %if.then
  %66 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  call void @llvm.lifetime.end(i64 1, i8* %flags) #1
  %67 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.Jbig2PatternDictParams* %params to i8*
  call void @llvm.lifetime.end(i64 20, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @jbig2_get_uint32(i8*) #2

declare i32 @jbig2_generic_stats_size(%struct._Jbig2Ctx*, i32) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.Jbig2PatternDict* @jbig2_decode_pattern_dict(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2PatternDictParams* %params, i8* %data, i64 %size, i8* %GB_stats) #0 {
entry:
  %retval = alloca %struct.Jbig2PatternDict*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2PatternDictParams*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %GB_stats.addr = alloca i8*, align 8
  %hd = alloca %struct.Jbig2PatternDict*, align 8
  %image = alloca %struct._Jbig2Image*, align 8
  %rparams = alloca %struct.Jbig2GenericRegionParams, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2PatternDictParams* %params, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !26
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2PatternDict** %hd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.Jbig2PatternDict* null, %struct.Jbig2PatternDict** %hd, align 8, !tbaa !1
  %1 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %2 = bitcast %struct.Jbig2GenericRegionParams* %rparams to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !8
  %4 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %5 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDPW = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %5, i32 0, i32 1
  %6 = load i32, i32* %HDPW, align 4, !tbaa !9
  %7 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %GRAYMAX = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %7, i32 0, i32 3
  %8 = load i32, i32* %GRAYMAX, align 4, !tbaa !5
  %add = add i32 %8, 1
  %mul = mul i32 %6, %add
  %9 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDPH = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %9, i32 0, i32 2
  %10 = load i32, i32* %HDPH, align 4, !tbaa !10
  %call = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %4, i32 %mul, i32 %10) #4
  store %struct._Jbig2Image* %call, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %11 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Image* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %13, i32 0, i32 0
  %14 = load i32, i32* %number, align 4, !tbaa !21
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 2, i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0)) #4
  store %struct.Jbig2PatternDict* null, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDMMR = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %15, i32 0, i32 0
  %16 = load i32, i32* %HDMMR, align 4, !tbaa !23
  %MMR = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 0
  store i32 %16, i32* %MMR, align 4, !tbaa !27
  %17 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDTEMPLATE = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %17, i32 0, i32 4
  %18 = load i32, i32* %HDTEMPLATE, align 4, !tbaa !24
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 1
  store i32 %18, i32* %GBTEMPLATE, align 4, !tbaa !29
  %TPGDON = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 2
  store i32 0, i32* %TPGDON, align 4, !tbaa !30
  %USESKIP = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 3
  store i32 0, i32* %USESKIP, align 4, !tbaa !31
  %19 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDPW2 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %19, i32 0, i32 1
  %20 = load i32, i32* %HDPW2, align 4, !tbaa !9
  %conv = trunc i32 %20 to i8
  %conv3 = sext i8 %conv to i32
  %sub = sub nsw i32 0, %conv3
  %conv4 = trunc i32 %sub to i8
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  store i8 %conv4, i8* %arrayidx, align 1, !tbaa !22
  %gbat5 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat5, i32 0, i64 1
  store i8 0, i8* %arrayidx6, align 1, !tbaa !22
  %gbat7 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat7, i32 0, i64 2
  store i8 -3, i8* %arrayidx8, align 1, !tbaa !22
  %gbat9 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat9, i32 0, i64 3
  store i8 -1, i8* %arrayidx10, align 1, !tbaa !22
  %gbat11 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat11, i32 0, i64 4
  store i8 2, i8* %arrayidx12, align 1, !tbaa !22
  %gbat13 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat13, i32 0, i64 5
  store i8 -2, i8* %arrayidx14, align 1, !tbaa !22
  %gbat15 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat15, i32 0, i64 6
  store i8 -2, i8* %arrayidx16, align 1, !tbaa !22
  %gbat17 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat17, i32 0, i64 7
  store i8 -2, i8* %arrayidx18, align 1, !tbaa !22
  %21 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %HDMMR19 = getelementptr inbounds %struct.Jbig2PatternDictParams, %struct.Jbig2PatternDictParams* %21, i32 0, i32 0
  %22 = load i32, i32* %HDMMR19, align 4, !tbaa !23
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i64, i64* %size.addr, align 8, !tbaa !26
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %call21 = call i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx* %23, %struct._Jbig2Segment* %24, %struct.Jbig2GenericRegionParams* %rparams, i8* %25, i64 %26, %struct._Jbig2Image* %27) #4
  store i32 %call21, i32* %code, align 4, !tbaa !8
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %28 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %31 = load i64, i64* %size.addr, align 8, !tbaa !26
  %call22 = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %29, i8* %30, i64 %31) #4
  store %struct._Jbig2WordStream* %call22, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %32 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp23 = icmp ne %struct._Jbig2WordStream* %32, null
  br i1 %cmp23, label %if.then.25, label %if.else.35

if.then.25:                                       ; preds = %if.else
  %33 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %35 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call26 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %34, %struct._Jbig2WordStream* %35) #4
  store %struct._Jbig2ArithState* %call26, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %36 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp27 = icmp ne %struct._Jbig2ArithState* %36, null
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.then.25
  %37 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %38 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %39 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %41 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call30 = call i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %37, %struct._Jbig2Segment* %38, %struct.Jbig2GenericRegionParams* %rparams, %struct._Jbig2ArithState* %39, %struct._Jbig2Image* %40, i8* %41) #4
  store i32 %call30, i32* %code, align 4, !tbaa !8
  br label %if.end.34

if.else.31:                                       ; preds = %if.then.25
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %43 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number32 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %43, i32 0, i32 0
  %44 = load i32, i32* %number32, align 4, !tbaa !21
  %call33 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %42, i32 2, i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0)) #4
  store i32 %call33, i32* %code, align 4, !tbaa !8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.29
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %45, i32 0, i32 0
  %46 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %47 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %48 = bitcast %struct._Jbig2ArithState* %47 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %46, i8* %48) #4
  %49 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %50 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %49, %struct._Jbig2WordStream* %50) #4
  %51 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %if.end.38

if.else.35:                                       ; preds = %if.else
  %52 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %53 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number36 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %53, i32 0, i32 0
  %54 = load i32, i32* %number36, align 4, !tbaa !21
  %call37 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %52, i32 2, i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i32 0, i32 0)) #4
  store i32 %call37, i32* %code, align 4, !tbaa !8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.end.34
  %55 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.20
  %56 = load i32, i32* %code, align 4, !tbaa !8
  %cmp40 = icmp eq i32 %56, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %57 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %58 = load %struct.Jbig2PatternDictParams*, %struct.Jbig2PatternDictParams** %params.addr, align 8, !tbaa !1
  %59 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %call43 = call %struct.Jbig2PatternDict* @jbig2_hd_new(%struct._Jbig2Ctx* %57, %struct.Jbig2PatternDictParams* %58, %struct._Jbig2Image* %59) #4
  store %struct.Jbig2PatternDict* %call43, %struct.Jbig2PatternDict** %hd, align 8, !tbaa !1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  %60 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %61 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %60, %struct._Jbig2Image* %61) #4
  %62 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %hd, align 8, !tbaa !1
  store %struct.Jbig2PatternDict* %62, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.Jbig2GenericRegionParams* %rparams to i8*
  call void @llvm.lifetime.end(i64 24, i8* %64) #1
  %65 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.Jbig2PatternDict** %hd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %retval
  ret %struct.Jbig2PatternDict* %67
}

; Function Attrs: nounwind uwtable
define i8** @jbig2_decode_gray_scale_image(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %data, i64 %size, i32 %GSMMR, i32 %GSW, i32 %GSH, i32 %GSBPP, i32 %GSUSESKIP, %struct._Jbig2Image* %GSKIP, i32 %GSTEMPLATE, i8* %GB_stats) #0 {
entry:
  %retval = alloca i8**, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %GSMMR.addr = alloca i32, align 4
  %GSW.addr = alloca i32, align 4
  %GSH.addr = alloca i32, align 4
  %GSBPP.addr = alloca i32, align 4
  %GSUSESKIP.addr = alloca i32, align 4
  %GSKIP.addr = alloca %struct._Jbig2Image*, align 8
  %GSTEMPLATE.addr = alloca i32, align 4
  %GB_stats.addr = alloca i8*, align 8
  %GSVALS = alloca i8**, align 8
  %consumed_bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %stride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %GSPLANES = alloca %struct._Jbig2Image**, align 8
  %rparams = alloca %struct.Jbig2GenericRegionParams, align 4
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !26
  store i32 %GSMMR, i32* %GSMMR.addr, align 4, !tbaa !8
  store i32 %GSW, i32* %GSW.addr, align 4, !tbaa !8
  store i32 %GSH, i32* %GSH.addr, align 4, !tbaa !8
  store i32 %GSBPP, i32* %GSBPP.addr, align 4, !tbaa !8
  store i32 %GSUSESKIP, i32* %GSUSESKIP.addr, align 4, !tbaa !8
  store %struct._Jbig2Image* %GSKIP, %struct._Jbig2Image** %GSKIP.addr, align 8, !tbaa !1
  store i32 %GSTEMPLATE, i32* %GSTEMPLATE.addr, align 4, !tbaa !8
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %GSVALS to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8** null, i8*** %GSVALS, align 8, !tbaa !1
  %1 = bitcast i64* %consumed_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %consumed_bytes, align 8, !tbaa !26
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct._Jbig2Image*** %GSPLANES to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.Jbig2GenericRegionParams* %rparams to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %11 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %12, i32 0, i32 0
  %13 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %14 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %conv = zext i32 %14 to i64
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %13, i64 %conv, i64 8) #4
  %15 = bitcast i8* %call to %struct._Jbig2Image**
  store %struct._Jbig2Image** %15, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %16 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Image** %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %18 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %18, i32 0, i32 0
  %19 = load i32, i32* %number, align 4, !tbaa !21
  %20 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %17, i32 3, i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 %20) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %22 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %cmp3 = icmp ult i32 %21, %22
  br i1 %cmp3, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %25 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %call5 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %23, i32 %24, i32 %25) #4
  %26 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %26 to i64
  %27 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %27, i64 %idxprom
  store %struct._Jbig2Image* %call5, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom6 = sext i32 %28 to i64
  %29 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %29, i64 %idxprom6
  %30 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx7, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._Jbig2Image* %30, null
  br i1 %cmp8, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %for.body
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number11 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %32, i32 0, i32 0
  %33 = load i32, i32* %number11, align 4, !tbaa !21
  %34 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %35 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %call12 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %31, i32 3, i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i32 %34, i32 %35) #4
  %36 = load i32, i32* %i, align 4, !tbaa !8
  %sub = sub nsw i32 %36, 1
  store i32 %sub, i32* %j, align 4, !tbaa !8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.10
  %37 = load i32, i32* %j, align 4, !tbaa !8
  %cmp14 = icmp sge i32 %37, 0
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %39 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %40, i64 %idxprom17
  %41 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx18, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %38, %struct._Jbig2Image* %41) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %42 = load i32, i32* %j, align 4, !tbaa !8
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %j, align 4, !tbaa !8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %43 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator19 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %43, i32 0, i32 0
  %44 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator19, align 8, !tbaa !11
  %45 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %46 = bitcast %struct._Jbig2Image** %45 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %44, i8* %46) #4
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

if.end.20:                                        ; preds = %for.body
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %47 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %48 = load i32, i32* %GSMMR.addr, align 4, !tbaa !8
  %MMR = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 0
  store i32 %48, i32* %MMR, align 4, !tbaa !27
  %49 = load i32, i32* %GSTEMPLATE.addr, align 4, !tbaa !8
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 1
  store i32 %49, i32* %GBTEMPLATE, align 4, !tbaa !29
  %TPGDON = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 2
  store i32 0, i32* %TPGDON, align 4, !tbaa !30
  %50 = load i32, i32* %GSUSESKIP.addr, align 4, !tbaa !8
  %USESKIP = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 3
  store i32 %50, i32* %USESKIP, align 4, !tbaa !31
  %51 = load i32, i32* %GSTEMPLATE.addr, align 4, !tbaa !8
  %cmp23 = icmp sle i32 %51, 1
  %cond = select i1 %cmp23, i32 3, i32 2
  %conv25 = trunc i32 %cond to i8
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i64 0
  store i8 %conv25, i8* %arrayidx26, align 1, !tbaa !22
  %gbat27 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat27, i32 0, i64 1
  store i8 -1, i8* %arrayidx28, align 1, !tbaa !22
  %gbat29 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat29, i32 0, i64 2
  store i8 -3, i8* %arrayidx30, align 1, !tbaa !22
  %gbat31 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat31, i32 0, i64 3
  store i8 -1, i8* %arrayidx32, align 1, !tbaa !22
  %gbat33 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat33, i32 0, i64 4
  store i8 2, i8* %arrayidx34, align 1, !tbaa !22
  %gbat35 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat35, i32 0, i64 5
  store i8 -2, i8* %arrayidx36, align 1, !tbaa !22
  %gbat37 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat37, i32 0, i64 6
  store i8 -2, i8* %arrayidx38, align 1, !tbaa !22
  %gbat39 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %gbat39, i32 0, i64 7
  store i8 -2, i8* %arrayidx40, align 1, !tbaa !22
  %52 = load i32, i32* %GSMMR.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.end.22
  %53 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %55 = load i64, i64* %size.addr, align 8, !tbaa !26
  %56 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %sub42 = sub i32 %56, 1
  %idxprom43 = zext i32 %sub42 to i64
  %57 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %57, i64 %idxprom43
  %58 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx44, align 8, !tbaa !1
  %call45 = call i32 @jbig2_decode_halftone_mmr(%struct._Jbig2Ctx* %53, %struct.Jbig2GenericRegionParams* %rparams, i8* %54, i64 %55, %struct._Jbig2Image* %58, i64* %consumed_bytes) #4
  store i32 %call45, i32* %code, align 4, !tbaa !8
  br label %if.end.64

if.else:                                          ; preds = %for.end.22
  %59 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %61 = load i64, i64* %size.addr, align 8, !tbaa !26
  %call46 = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %59, i8* %60, i64 %61) #4
  store %struct._Jbig2WordStream* %call46, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %62 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp47 = icmp eq %struct._Jbig2WordStream* %62, null
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.else
  %63 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %64 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number50 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %64, i32 0, i32 0
  %65 = load i32, i32* %number50, align 4, !tbaa !21
  %call51 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %63, i32 3, i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %cleanup

if.end.52:                                        ; preds = %if.else
  %66 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %67 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call53 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %66, %struct._Jbig2WordStream* %67) #4
  store %struct._Jbig2ArithState* %call53, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %68 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp54 = icmp eq %struct._Jbig2ArithState* %68, null
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.52
  %69 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %70 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number57 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %70, i32 0, i32 0
  %71 = load i32, i32* %number57, align 4, !tbaa !21
  %call58 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %69, i32 3, i32 %71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %cleanup

if.end.59:                                        ; preds = %if.end.52
  %72 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %73 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %74 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %75 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %sub60 = sub i32 %75, 1
  %idxprom61 = zext i32 %sub60 to i64
  %76 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %76, i64 %idxprom61
  %77 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx62, align 8, !tbaa !1
  %78 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call63 = call i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %72, %struct._Jbig2Segment* %73, %struct.Jbig2GenericRegionParams* %rparams, %struct._Jbig2ArithState* %74, %struct._Jbig2Image* %77, i8* %78) #4
  store i32 %call63, i32* %code, align 4, !tbaa !8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.59, %if.then.41
  %79 = load i32, i32* %code, align 4, !tbaa !8
  %cmp65 = icmp ne i32 %79, 0
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.64
  %80 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %81 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number68 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %81, i32 0, i32 0
  %82 = load i32, i32* %number68, align 4, !tbaa !21
  %call69 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %80, i32 3, i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %cleanup

if.end.70:                                        ; preds = %if.end.64
  %83 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %sub71 = sub i32 %83, 2
  store i32 %sub71, i32* %j, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %for.end.112, %if.end.70
  %84 = load i32, i32* %j, align 4, !tbaa !8
  %cmp72 = icmp sge i32 %84, 0
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load i32, i32* %GSMMR.addr, align 4, !tbaa !8
  %tobool74 = icmp ne i32 %85, 0
  br i1 %tobool74, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %while.body
  %86 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %88 = load i64, i64* %consumed_bytes, align 8, !tbaa !26
  %add.ptr = getelementptr inbounds i8, i8* %87, i64 %88
  %89 = load i64, i64* %size.addr, align 8, !tbaa !26
  %90 = load i64, i64* %consumed_bytes, align 8, !tbaa !26
  %sub76 = sub i64 %89, %90
  %91 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom77 = sext i32 %91 to i64
  %92 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %92, i64 %idxprom77
  %93 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx78, align 8, !tbaa !1
  %call79 = call i32 @jbig2_decode_halftone_mmr(%struct._Jbig2Ctx* %86, %struct.Jbig2GenericRegionParams* %rparams, i8* %add.ptr, i64 %sub76, %struct._Jbig2Image* %93, i64* %consumed_bytes) #4
  store i32 %call79, i32* %code, align 4, !tbaa !8
  br label %if.end.84

if.else.80:                                       ; preds = %while.body
  %94 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %95 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %96 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %97 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom81 = sext i32 %97 to i64
  %98 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %98, i64 %idxprom81
  %99 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx82, align 8, !tbaa !1
  %100 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call83 = call i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %94, %struct._Jbig2Segment* %95, %struct.Jbig2GenericRegionParams* %rparams, %struct._Jbig2ArithState* %96, %struct._Jbig2Image* %99, i8* %100) #4
  store i32 %call83, i32* %code, align 4, !tbaa !8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80, %if.then.75
  %101 = load i32, i32* %code, align 4, !tbaa !8
  %cmp85 = icmp ne i32 %101, 0
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %102 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %103 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number88 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %103, i32 0, i32 0
  %104 = load i32, i32* %number88, align 4, !tbaa !21
  %call89 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %102, i32 3, i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %cleanup

if.end.90:                                        ; preds = %if.end.84
  %105 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %105, i64 0
  %106 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx91, align 8, !tbaa !1
  %stride92 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %106, i32 0, i32 2
  %107 = load i32, i32* %stride92, align 4, !tbaa !32
  store i32 %107, i32* %stride, align 4, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.110, %if.end.90
  %108 = load i32, i32* %i, align 4, !tbaa !8
  %109 = load i32, i32* %stride, align 4, !tbaa !8
  %110 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %mul = mul i32 %109, %110
  %cmp94 = icmp ult i32 %108, %mul
  br i1 %cmp94, label %for.body.96, label %for.end.112

for.body.96:                                      ; preds = %for.cond.93
  %111 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom97 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4, !tbaa !8
  %add = add nsw i32 %112, 1
  %idxprom98 = sext i32 %add to i64
  %113 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %113, i64 %idxprom98
  %114 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx99, align 8, !tbaa !1
  %data100 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %114, i32 0, i32 3
  %115 = load i8*, i8** %data100, align 8, !tbaa !34
  %arrayidx101 = getelementptr inbounds i8, i8* %115, i64 %idxprom97
  %116 = load i8, i8* %arrayidx101, align 1, !tbaa !22
  %conv102 = zext i8 %116 to i32
  %117 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom103 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom104 = sext i32 %118 to i64
  %119 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %119, i64 %idxprom104
  %120 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx105, align 8, !tbaa !1
  %data106 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %120, i32 0, i32 3
  %121 = load i8*, i8** %data106, align 8, !tbaa !34
  %arrayidx107 = getelementptr inbounds i8, i8* %121, i64 %idxprom103
  %122 = load i8, i8* %arrayidx107, align 1, !tbaa !22
  %conv108 = zext i8 %122 to i32
  %xor = xor i32 %conv108, %conv102
  %conv109 = trunc i32 %xor to i8
  store i8 %conv109, i8* %arrayidx107, align 1, !tbaa !22
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.96
  %123 = load i32, i32* %i, align 4, !tbaa !8
  %inc111 = add nsw i32 %123, 1
  store i32 %inc111, i32* %i, align 4, !tbaa !8
  br label %for.cond.93

for.end.112:                                      ; preds = %for.cond.93
  %124 = load i32, i32* %j, align 4, !tbaa !8
  %dec113 = add nsw i32 %124, -1
  store i32 %dec113, i32* %j, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %125 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator114 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %125, i32 0, i32 0
  %126 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator114, align 8, !tbaa !11
  %127 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %conv115 = zext i32 %127 to i64
  %call116 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %126, i64 %conv115, i64 8) #4
  %128 = bitcast i8* %call116 to i8**
  store i8** %128, i8*** %GSVALS, align 8, !tbaa !1
  %129 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %cmp117 = icmp eq i8** %129, null
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %while.end
  %130 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %131 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number120 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %131, i32 0, i32 0
  %132 = load i32, i32* %number120, align 4, !tbaa !21
  %133 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %call121 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %130, i32 3, i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 %133) #4
  br label %cleanup

if.end.122:                                       ; preds = %while.end
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.153, %if.end.122
  %134 = load i32, i32* %i, align 4, !tbaa !8
  %135 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %cmp124 = icmp ult i32 %134, %135
  br i1 %cmp124, label %for.body.126, label %for.end.155

for.body.126:                                     ; preds = %for.cond.123
  %136 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator127 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %136, i32 0, i32 0
  %137 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator127, align 8, !tbaa !11
  %138 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %conv128 = zext i32 %138 to i64
  %call129 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %137, i64 %conv128, i64 1) #4
  %139 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom130 = sext i32 %139 to i64
  %140 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8*, i8** %140, i64 %idxprom130
  store i8* %call129, i8** %arrayidx131, align 8, !tbaa !1
  %141 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom132 = sext i32 %141 to i64
  %142 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8*, i8** %142, i64 %idxprom132
  %143 = load i8*, i8** %arrayidx133, align 8, !tbaa !1
  %cmp134 = icmp eq i8* %143, null
  br i1 %cmp134, label %if.then.136, label %if.end.152

if.then.136:                                      ; preds = %for.body.126
  %144 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %145 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number137 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %145, i32 0, i32 0
  %146 = load i32, i32* %number137, align 4, !tbaa !21
  %147 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %148 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %mul138 = mul i32 %147, %148
  %call139 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %144, i32 3, i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 %mul138) #4
  %149 = load i32, i32* %i, align 4, !tbaa !8
  %sub140 = sub nsw i32 %149, 1
  store i32 %sub140, i32* %j, align 4, !tbaa !8
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.148, %if.then.136
  %150 = load i32, i32* %j, align 4, !tbaa !8
  %cmp142 = icmp sge i32 %150, 0
  br i1 %cmp142, label %for.body.144, label %for.end.150

for.body.144:                                     ; preds = %for.cond.141
  %151 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator145 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %151, i32 0, i32 0
  %152 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator145, align 8, !tbaa !11
  %153 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom146 = sext i32 %153 to i64
  %154 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8*, i8** %154, i64 %idxprom146
  %155 = load i8*, i8** %arrayidx147, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %152, i8* %155) #4
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.144
  %156 = load i32, i32* %j, align 4, !tbaa !8
  %dec149 = add nsw i32 %156, -1
  store i32 %dec149, i32* %j, align 4, !tbaa !8
  br label %for.cond.141

for.end.150:                                      ; preds = %for.cond.141
  %157 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator151 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %157, i32 0, i32 0
  %158 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator151, align 8, !tbaa !11
  %159 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %160 = bitcast i8** %159 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %158, i8* %160) #4
  store i8** null, i8*** %GSVALS, align 8, !tbaa !1
  br label %cleanup

if.end.152:                                       ; preds = %for.body.126
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %161 = load i32, i32* %i, align 4, !tbaa !8
  %inc154 = add nsw i32 %161, 1
  store i32 %inc154, i32* %i, align 4, !tbaa !8
  br label %for.cond.123

for.end.155:                                      ; preds = %for.cond.123
  store i32 0, i32* %x, align 4, !tbaa !8
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.188, %for.end.155
  %162 = load i32, i32* %x, align 4, !tbaa !8
  %163 = load i32, i32* %GSW.addr, align 4, !tbaa !8
  %cmp157 = icmp ult i32 %162, %163
  br i1 %cmp157, label %for.body.159, label %for.end.190

for.body.159:                                     ; preds = %for.cond.156
  store i32 0, i32* %y, align 4, !tbaa !8
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.185, %for.body.159
  %164 = load i32, i32* %y, align 4, !tbaa !8
  %165 = load i32, i32* %GSH.addr, align 4, !tbaa !8
  %cmp161 = icmp ult i32 %164, %165
  br i1 %cmp161, label %for.body.163, label %for.end.187

for.body.163:                                     ; preds = %for.cond.160
  %166 = load i32, i32* %y, align 4, !tbaa !8
  %idxprom164 = sext i32 %166 to i64
  %167 = load i32, i32* %x, align 4, !tbaa !8
  %idxprom165 = sext i32 %167 to i64
  %168 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8*, i8** %168, i64 %idxprom165
  %169 = load i8*, i8** %arrayidx166, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %169, i64 %idxprom164
  store i8 0, i8* %arrayidx167, align 1, !tbaa !22
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.182, %for.body.163
  %170 = load i32, i32* %j, align 4, !tbaa !8
  %171 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %cmp169 = icmp ult i32 %170, %171
  br i1 %cmp169, label %for.body.171, label %for.end.184

for.body.171:                                     ; preds = %for.cond.168
  %172 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom172 = sext i32 %172 to i64
  %173 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %173, i64 %idxprom172
  %174 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx173, align 8, !tbaa !1
  %175 = load i32, i32* %x, align 4, !tbaa !8
  %176 = load i32, i32* %y, align 4, !tbaa !8
  %call174 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %174, i32 %175, i32 %176) #4
  %177 = load i32, i32* %j, align 4, !tbaa !8
  %shl = shl i32 %call174, %177
  %178 = load i32, i32* %y, align 4, !tbaa !8
  %idxprom175 = sext i32 %178 to i64
  %179 = load i32, i32* %x, align 4, !tbaa !8
  %idxprom176 = sext i32 %179 to i64
  %180 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8*, i8** %180, i64 %idxprom176
  %181 = load i8*, i8** %arrayidx177, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %181, i64 %idxprom175
  %182 = load i8, i8* %arrayidx178, align 1, !tbaa !22
  %conv179 = zext i8 %182 to i32
  %add180 = add nsw i32 %conv179, %shl
  %conv181 = trunc i32 %add180 to i8
  store i8 %conv181, i8* %arrayidx178, align 1, !tbaa !22
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.171
  %183 = load i32, i32* %j, align 4, !tbaa !8
  %inc183 = add nsw i32 %183, 1
  store i32 %inc183, i32* %j, align 4, !tbaa !8
  br label %for.cond.168

for.end.184:                                      ; preds = %for.cond.168
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %184 = load i32, i32* %y, align 4, !tbaa !8
  %inc186 = add nsw i32 %184, 1
  store i32 %inc186, i32* %y, align 4, !tbaa !8
  br label %for.cond.160

for.end.187:                                      ; preds = %for.cond.160
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.end.187
  %185 = load i32, i32* %x, align 4, !tbaa !8
  %inc189 = add nsw i32 %185, 1
  store i32 %inc189, i32* %x, align 4, !tbaa !8
  br label %for.cond.156

for.end.190:                                      ; preds = %for.cond.156
  br label %cleanup

cleanup:                                          ; preds = %for.end.190, %for.end.150, %if.then.119, %if.then.87, %if.then.67, %if.then.56, %if.then.49
  %186 = load i32, i32* %GSMMR.addr, align 4, !tbaa !8
  %tobool191 = icmp ne i32 %186, 0
  br i1 %tobool191, label %if.end.194, label %if.then.192

if.then.192:                                      ; preds = %cleanup
  %187 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator193 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %187, i32 0, i32 0
  %188 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator193, align 8, !tbaa !11
  %189 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %190 = bitcast %struct._Jbig2ArithState* %189 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %188, i8* %190) #4
  %191 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %192 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %191, %struct._Jbig2WordStream* %192) #4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %cleanup
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.201, %if.end.194
  %193 = load i32, i32* %i, align 4, !tbaa !8
  %194 = load i32, i32* %GSBPP.addr, align 4, !tbaa !8
  %cmp196 = icmp ult i32 %193, %194
  br i1 %cmp196, label %for.body.198, label %for.end.203

for.body.198:                                     ; preds = %for.cond.195
  %195 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %196 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom199 = sext i32 %196 to i64
  %197 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %197, i64 %idxprom199
  %198 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx200, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %195, %struct._Jbig2Image* %198) #4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.198
  %199 = load i32, i32* %i, align 4, !tbaa !8
  %inc202 = add nsw i32 %199, 1
  store i32 %inc202, i32* %i, align 4, !tbaa !8
  br label %for.cond.195

for.end.203:                                      ; preds = %for.cond.195
  %200 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator204 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %200, i32 0, i32 0
  %201 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator204, align 8, !tbaa !11
  %202 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %GSPLANES, align 8, !tbaa !1
  %203 = bitcast %struct._Jbig2Image** %202 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %201, i8* %203) #4
  %204 = load i8**, i8*** %GSVALS, align 8, !tbaa !1
  store i8** %204, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.205

cleanup.205:                                      ; preds = %for.end.203, %for.end, %if.then
  %205 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast %struct.Jbig2GenericRegionParams* %rparams to i8*
  call void @llvm.lifetime.end(i64 24, i8* %207) #1
  %208 = bitcast %struct._Jbig2Image*** %GSPLANES to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i64* %consumed_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i8*** %GSVALS to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = load i8**, i8*** %retval
  ret i8** %217
}

declare i32 @jbig2_decode_halftone_mmr(%struct._Jbig2Ctx*, %struct.Jbig2GenericRegionParams*, i8*, i64, %struct._Jbig2Image*, i64*) #2

declare %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx*, i8*, i64) #2

declare %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2GenericRegionParams*, %struct._Jbig2ArithState*, %struct._Jbig2Image*, i8*) #2

declare i32 @jbig2_image_get_pixel(%struct._Jbig2Image*, i32, i32) #2

declare void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

; Function Attrs: nounwind uwtable
define %struct.Jbig2PatternDict* @jbig2_decode_ht_region_get_hpats(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment) #0 {
entry:
  %retval = alloca %struct.Jbig2PatternDict*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %index = alloca i32, align 4
  %pattern_dict = alloca %struct.Jbig2PatternDict*, align 8
  %rsegment = alloca %struct._Jbig2Segment*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %index, align 4, !tbaa !8
  %1 = bitcast %struct.Jbig2PatternDict** %pattern_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.Jbig2PatternDict* null, %struct.Jbig2PatternDict** %pattern_dict, align 8, !tbaa !1
  %2 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %entry
  %3 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %pattern_dict, align 8, !tbaa !1
  %tobool = icmp ne %struct.Jbig2PatternDict* %3, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %4, i32 0, i32 4
  %5 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !35
  %6 = load i32, i32* %index, align 4, !tbaa !8
  %cmp = icmp sgt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %9 = load i32, i32* %index, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %10, i32 0, i32 5
  %11 = load i32*, i32** %referred_to_segments, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %call = call %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %8, i32 %12) #4
  store %struct._Jbig2Segment* %call, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %tobool1 = icmp ne %struct._Jbig2Segment* %13, null
  br i1 %tobool1, label %if.then, label %if.end.7

if.then:                                          ; preds = %while.body
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %14, i32 0, i32 1
  %15 = load i8, i8* %flags, align 1, !tbaa !37
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 63
  %cmp2 = icmp eq i32 %and, 16
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 6
  %17 = load i8*, i8** %result, align 8, !tbaa !25
  %tobool4 = icmp ne i8* %17, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %18 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result6 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %18, i32 0, i32 6
  %19 = load i8*, i8** %result6, align 8, !tbaa !25
  %20 = bitcast i8* %19 to %struct.Jbig2PatternDict*
  store %struct.Jbig2PatternDict* %20, %struct.Jbig2PatternDict** %pattern_dict, align 8, !tbaa !1
  %21 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %pattern_dict, align 8, !tbaa !1
  store %struct.Jbig2PatternDict* %21, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %while.body
  %22 = load i32, i32* %index, align 4, !tbaa !8
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %index, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %pattern_dict, align 8, !tbaa !1
  store %struct.Jbig2PatternDict* %23, %struct.Jbig2PatternDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.5
  %24 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.Jbig2PatternDict** %pattern_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %retval
  ret %struct.Jbig2PatternDict* %27
}

declare %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_halftone_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2HalftoneRegionParams* %params, i8* %data, i64 %size, %struct._Jbig2Image* %image, i8* %GB_stats) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2HalftoneRegionParams*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %GB_stats.addr = alloca i8*, align 8
  %HBPP = alloca i32, align 4
  %HNUMPATS = alloca i32, align 4
  %GI = alloca i8**, align 8
  %HSKIP = alloca %struct._Jbig2Image*, align 8
  %HPATS = alloca %struct.Jbig2PatternDict*, align 8
  %i = alloca i32, align 4
  %mg = alloca i32, align 4
  %ng = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %gray_val = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2HalftoneRegionParams* %params, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !26
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  %0 = bitcast i32* %HBPP to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %HNUMPATS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8*** %GI to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._Jbig2Image** %HSKIP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %HSKIP, align 8, !tbaa !1
  %4 = bitcast %struct.Jbig2PatternDict** %HPATS to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %mg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ng to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  call void @llvm.lifetime.start(i64 1, i8* %gray_val) #1
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %10, i32 0, i32 3
  %11 = load i8*, i8** %data1, align 8, !tbaa !34
  %12 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HDEFPIXEL = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %12, i32 0, i32 11
  %13 = load i32, i32* %HDEFPIXEL, align 4, !tbaa !38
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %14, i32 0, i32 2
  %15 = load i32, i32* %stride, align 4, !tbaa !32
  %16 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %16, i32 0, i32 1
  %17 = load i32, i32* %height, align 4, !tbaa !41
  %mul = mul nsw i32 %15, %17
  %conv = sext i32 %mul to i64
  %call = call i8* @memset(i8* %11, i32 %13, i64 %conv) #5
  %18 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HENABLESKIP = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %18, i32 0, i32 9
  %19 = load i32, i32* %HENABLESKIP, align 4, !tbaa !42
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %21 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %21, i32 0, i32 0
  %22 = load i32, i32* %number, align 4, !tbaa !21
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %20, i32 2, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call4 = call %struct.Jbig2PatternDict* @jbig2_decode_ht_region_get_hpats(%struct._Jbig2Ctx* %23, %struct._Jbig2Segment* %24) #4
  store %struct.Jbig2PatternDict* %call4, %struct.Jbig2PatternDict** %HPATS, align 8, !tbaa !1
  %25 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %HPATS, align 8, !tbaa !1
  %tobool = icmp ne %struct.Jbig2PatternDict* %25, null
  br i1 %tobool, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number6 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 0
  %28 = load i32, i32* %number6, align 4, !tbaa !21
  %call7 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 2, i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0)) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %29 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %HPATS, align 8, !tbaa !1
  %n_patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %29, i32 0, i32 0
  %30 = load i32, i32* %n_patterns, align 4, !tbaa !16
  store i32 %30, i32* %HNUMPATS, align 4, !tbaa !8
  store i32 0, i32* %HBPP, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %31 = load i32, i32* %HNUMPATS, align 4, !tbaa !8
  %32 = load i32, i32* %HBPP, align 4, !tbaa !8
  %inc = add i32 %32, 1
  store i32 %inc, i32* %HBPP, align 4, !tbaa !8
  %shl = shl i32 1, %inc
  %cmp9 = icmp ugt i32 %31, %shl
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %34 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %36 = load i64, i64* %size.addr, align 8, !tbaa !26
  %37 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HMMR = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %37, i32 0, i32 7
  %38 = load i32, i32* %HMMR, align 4, !tbaa !43
  %39 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGW = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %39, i32 0, i32 1
  %40 = load i32, i32* %HGW, align 4, !tbaa !44
  %41 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGH = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %41, i32 0, i32 2
  %42 = load i32, i32* %HGH, align 4, !tbaa !45
  %43 = load i32, i32* %HBPP, align 4, !tbaa !8
  %44 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HENABLESKIP11 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %44, i32 0, i32 9
  %45 = load i32, i32* %HENABLESKIP11, align 4, !tbaa !42
  %46 = load %struct._Jbig2Image*, %struct._Jbig2Image** %HSKIP, align 8, !tbaa !1
  %47 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HTEMPLATE = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %47, i32 0, i32 8
  %48 = load i32, i32* %HTEMPLATE, align 4, !tbaa !46
  %49 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call12 = call i8** @jbig2_decode_gray_scale_image(%struct._Jbig2Ctx* %33, %struct._Jbig2Segment* %34, i8* %35, i64 %36, i32 %38, i32 %40, i32 %42, i32 %43, i32 %45, %struct._Jbig2Image* %46, i32 %48, i8* %49) #4
  store i8** %call12, i8*** %GI, align 8, !tbaa !1
  %50 = load i8**, i8*** %GI, align 8, !tbaa !1
  %tobool13 = icmp ne i8** %50, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %while.end
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %52 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number15 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %52, i32 0, i32 0
  %53 = load i32, i32* %number15, align 4, !tbaa !21
  %call16 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %51, i32 2, i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0)) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %while.end
  store i32 0, i32* %mg, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.end.17
  %54 = load i32, i32* %mg, align 4, !tbaa !8
  %55 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGH18 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %55, i32 0, i32 2
  %56 = load i32, i32* %HGH18, align 4, !tbaa !45
  %cmp19 = icmp ult i32 %54, %56
  br i1 %cmp19, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ng, align 4, !tbaa !8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %57 = load i32, i32* %ng, align 4, !tbaa !8
  %58 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGW22 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %58, i32 0, i32 1
  %59 = load i32, i32* %HGW22, align 4, !tbaa !44
  %cmp23 = icmp ult i32 %57, %59
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %60 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGX = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %60, i32 0, i32 3
  %61 = load i32, i32* %HGX, align 4, !tbaa !47
  %62 = load i32, i32* %mg, align 4, !tbaa !8
  %63 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HRY = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %63, i32 0, i32 6
  %64 = load i16, i16* %HRY, align 2, !tbaa !48
  %conv26 = zext i16 %64 to i32
  %mul27 = mul i32 %62, %conv26
  %add = add i32 %61, %mul27
  %65 = load i32, i32* %ng, align 4, !tbaa !8
  %66 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HRX = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %66, i32 0, i32 5
  %67 = load i16, i16* %HRX, align 2, !tbaa !49
  %conv28 = zext i16 %67 to i32
  %mul29 = mul i32 %65, %conv28
  %add30 = add i32 %add, %mul29
  %shr = lshr i32 %add30, 8
  store i32 %shr, i32* %x, align 4, !tbaa !8
  %68 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGY = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %68, i32 0, i32 4
  %69 = load i32, i32* %HGY, align 4, !tbaa !50
  %70 = load i32, i32* %mg, align 4, !tbaa !8
  %71 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HRX31 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %71, i32 0, i32 5
  %72 = load i16, i16* %HRX31, align 2, !tbaa !49
  %conv32 = zext i16 %72 to i32
  %mul33 = mul i32 %70, %conv32
  %add34 = add i32 %69, %mul33
  %73 = load i32, i32* %ng, align 4, !tbaa !8
  %74 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HRY35 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %74, i32 0, i32 6
  %75 = load i16, i16* %HRY35, align 2, !tbaa !48
  %conv36 = zext i16 %75 to i32
  %mul37 = mul i32 %73, %conv36
  %sub = sub i32 %add34, %mul37
  %shr38 = lshr i32 %sub, 8
  store i32 %shr38, i32* %y, align 4, !tbaa !8
  %76 = load i32, i32* %mg, align 4, !tbaa !8
  %idxprom = zext i32 %76 to i64
  %77 = load i32, i32* %ng, align 4, !tbaa !8
  %idxprom39 = zext i32 %77 to i64
  %78 = load i8**, i8*** %GI, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %78, i64 %idxprom39
  %79 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %79, i64 %idxprom
  %80 = load i8, i8* %arrayidx40, align 1, !tbaa !22
  store i8 %80, i8* %gray_val, align 1, !tbaa !22
  %81 = load i8, i8* %gray_val, align 1, !tbaa !22
  %conv41 = zext i8 %81 to i32
  %82 = load i32, i32* %HNUMPATS, align 4, !tbaa !8
  %cmp42 = icmp uge i32 %conv41, %82
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %for.body.25
  %83 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %84 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number45 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %84, i32 0, i32 0
  %85 = load i32, i32* %number45, align 4, !tbaa !21
  %86 = load i8, i8* %gray_val, align 1, !tbaa !22
  %conv46 = zext i8 %86 to i32
  %call47 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %83, i32 2, i32 %85, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0), i32 %conv46) #4
  %87 = load i32, i32* %HNUMPATS, align 4, !tbaa !8
  %sub48 = sub i32 %87, 1
  %conv49 = trunc i32 %sub48 to i8
  store i8 %conv49, i8* %gray_val, align 1, !tbaa !22
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %for.body.25
  %88 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %89 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %90 = load i8, i8* %gray_val, align 1, !tbaa !22
  %idxprom51 = zext i8 %90 to i64
  %91 = load %struct.Jbig2PatternDict*, %struct.Jbig2PatternDict** %HPATS, align 8, !tbaa !1
  %patterns = getelementptr inbounds %struct.Jbig2PatternDict, %struct.Jbig2PatternDict* %91, i32 0, i32 1
  %92 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %patterns, align 8, !tbaa !14
  %arrayidx52 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %92, i64 %idxprom51
  %93 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx52, align 8, !tbaa !1
  %94 = load i32, i32* %x, align 4, !tbaa !8
  %95 = load i32, i32* %y, align 4, !tbaa !8
  %96 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %op = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %96, i32 0, i32 10
  %97 = load i32, i32* %op, align 4, !tbaa !51
  %call53 = call i32 @jbig2_image_compose(%struct._Jbig2Ctx* %88, %struct._Jbig2Image* %89, %struct._Jbig2Image* %93, i32 %94, i32 %95, i32 %97) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %98 = load i32, i32* %ng, align 4, !tbaa !8
  %inc54 = add i32 %98, 1
  store i32 %inc54, i32* %ng, align 4, !tbaa !8
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %99 = load i32, i32* %mg, align 4, !tbaa !8
  %inc56 = add i32 %99, 1
  store i32 %inc56, i32* %mg, align 4, !tbaa !8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.65, %for.end.57
  %100 = load i32, i32* %i, align 4, !tbaa !8
  %101 = load %struct.Jbig2HalftoneRegionParams*, %struct.Jbig2HalftoneRegionParams** %params.addr, align 8, !tbaa !1
  %HGW59 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %101, i32 0, i32 1
  %102 = load i32, i32* %HGW59, align 4, !tbaa !44
  %cmp60 = icmp ult i32 %100, %102
  br i1 %cmp60, label %for.body.62, label %for.end.67

for.body.62:                                      ; preds = %for.cond.58
  %103 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %103, i32 0, i32 0
  %104 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %105 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom63 = sext i32 %105 to i64
  %106 = load i8**, i8*** %GI, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8*, i8** %106, i64 %idxprom63
  %107 = load i8*, i8** %arrayidx64, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %104, i8* %107) #4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.62
  %108 = load i32, i32* %i, align 4, !tbaa !8
  %inc66 = add nsw i32 %108, 1
  store i32 %inc66, i32* %i, align 4, !tbaa !8
  br label %for.cond.58

for.end.67:                                       ; preds = %for.cond.58
  %109 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator68 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %109, i32 0, i32 0
  %110 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator68, align 8, !tbaa !11
  %111 = load i8**, i8*** %GI, align 8, !tbaa !1
  %112 = bitcast i8** %111 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %110, i8* %112) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.67, %if.then.14, %if.then.5
  call void @llvm.lifetime.end(i64 1, i8* %gray_val) #1
  %113 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %ng to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %mg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.Jbig2PatternDict** %HPATS to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct._Jbig2Image** %HSKIP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i8*** %GI to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %HNUMPATS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %HBPP to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_halftone_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %region_info = alloca %struct.Jbig2RegionSegmentInfo, align 4
  %params = alloca %struct.Jbig2HalftoneRegionParams, align 4
  %image = alloca %struct._Jbig2Image*, align 8
  %GB_stats = alloca i8*, align 8
  %code = alloca i32, align 4
  %stats_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %offset, align 4, !tbaa !8
  %1 = bitcast %struct.Jbig2RegionSegmentInfo* %region_info to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.Jbig2HalftoneRegionParams* %params to i8*
  call void @llvm.lifetime.start(i64 44, i8* %2) #1
  %3 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %4 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %GB_stats, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !8
  %6 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %6, i32 0, i32 3
  %7 = load i64, i64* %data_length, align 8, !tbaa !19
  %cmp = icmp ult i64 %7, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %too_short

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  call void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo* %region_info, i8* %8) #4
  %9 = load i32, i32* %offset, align 4, !tbaa !8
  %add = add nsw i32 %9, 17
  store i32 %add, i32* %offset, align 4, !tbaa !8
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %10, i32 0, i32 3
  %11 = load i64, i64* %data_length1, align 8, !tbaa !19
  %cmp2 = icmp ult i64 %11, 18
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %too_short

if.end.4:                                         ; preds = %if.end
  %12 = load i32, i32* %offset, align 4, !tbaa !8
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %flags = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  store i8 %14, i8* %flags, align 1, !tbaa !52
  %flags5 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %15 = load i8, i8* %flags5, align 1, !tbaa !52
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 1
  %HMMR = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  store i32 %and, i32* %HMMR, align 4, !tbaa !43
  %flags6 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %16 = load i8, i8* %flags6, align 1, !tbaa !52
  %conv7 = zext i8 %16 to i32
  %and8 = and i32 %conv7, 6
  %shr = ashr i32 %and8, 1
  %HTEMPLATE = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 8
  store i32 %shr, i32* %HTEMPLATE, align 4, !tbaa !46
  %flags9 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %17 = load i8, i8* %flags9, align 1, !tbaa !52
  %conv10 = zext i8 %17 to i32
  %and11 = and i32 %conv10, 8
  %shr12 = ashr i32 %and11, 3
  %HENABLESKIP = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 9
  store i32 %shr12, i32* %HENABLESKIP, align 4, !tbaa !42
  %flags13 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %18 = load i8, i8* %flags13, align 1, !tbaa !52
  %conv14 = zext i8 %18 to i32
  %and15 = and i32 %conv14, 112
  %shr16 = ashr i32 %and15, 4
  %op = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 10
  store i32 %shr16, i32* %op, align 4, !tbaa !51
  %flags17 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %19 = load i8, i8* %flags17, align 1, !tbaa !52
  %conv18 = zext i8 %19 to i32
  %and19 = and i32 %conv18, 128
  %shr20 = ashr i32 %and19, 7
  %HDEFPIXEL = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 11
  store i32 %shr20, i32* %HDEFPIXEL, align 4, !tbaa !38
  %20 = load i32, i32* %offset, align 4, !tbaa !8
  %add21 = add nsw i32 %20, 1
  store i32 %add21, i32* %offset, align 4, !tbaa !8
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %22 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %22, i32 0, i32 0
  %23 = load i32, i32* %number, align 4, !tbaa !21
  %width = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 0
  %24 = load i32, i32* %width, align 4, !tbaa !53
  %height = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 1
  %25 = load i32, i32* %height, align 4, !tbaa !55
  %x = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 2
  %26 = load i32, i32* %x, align 4, !tbaa !56
  %y = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 3
  %27 = load i32, i32* %y, align 4, !tbaa !57
  %flags22 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 0
  %28 = load i8, i8* %flags22, align 1, !tbaa !52
  %conv23 = zext i8 %28 to i32
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %21, i32 1, i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %conv23) #4
  %HMMR24 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %29 = load i32, i32* %HMMR24, align 4, !tbaa !43
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.4
  %HTEMPLATE25 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 8
  %30 = load i32, i32* %HTEMPLATE25, align 4, !tbaa !46
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %land.lhs.true
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number28 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %32, i32 0, i32 0
  %33 = load i32, i32* %number28, align 4, !tbaa !21
  %HTEMPLATE29 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 8
  %34 = load i32, i32* %HTEMPLATE29, align 4, !tbaa !46
  %HMMR30 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %35 = load i32, i32* %HMMR30, align 4, !tbaa !43
  %call31 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %31, i32 2, i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i32 %34, i32 %35) #4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.4
  %HMMR33 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %36 = load i32, i32* %HMMR33, align 4, !tbaa !43
  %tobool34 = icmp ne i32 %36, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %if.end.32
  %HENABLESKIP36 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 9
  %37 = load i32, i32* %HENABLESKIP36, align 4, !tbaa !42
  %tobool37 = icmp ne i32 %37, 0
  br i1 %tobool37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %land.lhs.true.35
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %39 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number39 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %39, i32 0, i32 0
  %40 = load i32, i32* %number39, align 4, !tbaa !21
  %HENABLESKIP40 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 9
  %41 = load i32, i32* %HENABLESKIP40, align 4, !tbaa !42
  %HMMR41 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %42 = load i32, i32* %HMMR41, align 4, !tbaa !43
  %call42 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %38, i32 2, i32 %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 %41, i32 %42) #4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.end.32
  %43 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length44 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %43, i32 0, i32 3
  %44 = load i64, i64* %data_length44, align 8, !tbaa !19
  %45 = load i32, i32* %offset, align 4, !tbaa !8
  %conv45 = sext i32 %45 to i64
  %sub = sub i64 %44, %conv45
  %cmp46 = icmp ult i64 %sub, 16
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.43
  br label %too_short

if.end.49:                                        ; preds = %if.end.43
  %46 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %47 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  %call50 = call i32 @jbig2_get_uint32(i8* %add.ptr) #4
  %HGW = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 1
  store i32 %call50, i32* %HGW, align 4, !tbaa !44
  %48 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %49 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext51 = sext i32 %49 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %48, i64 %idx.ext51
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 4
  %call54 = call i32 @jbig2_get_uint32(i8* %add.ptr53) #4
  %HGH = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 2
  store i32 %call54, i32* %HGH, align 4, !tbaa !45
  %50 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %51 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext55 = sext i32 %51 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %50, i64 %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 8
  %call58 = call i32 @jbig2_get_int32(i8* %add.ptr57) #4
  %HGX = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 3
  store i32 %call58, i32* %HGX, align 4, !tbaa !47
  %52 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %53 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext59 = sext i32 %53 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %52, i64 %idx.ext59
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 12
  %call62 = call i32 @jbig2_get_int32(i8* %add.ptr61) #4
  %HGY = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 4
  store i32 %call62, i32* %HGY, align 4, !tbaa !50
  %54 = load i32, i32* %offset, align 4, !tbaa !8
  %add63 = add nsw i32 %54, 16
  store i32 %add63, i32* %offset, align 4, !tbaa !8
  %55 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length64 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %55, i32 0, i32 3
  %56 = load i64, i64* %data_length64, align 8, !tbaa !19
  %57 = load i32, i32* %offset, align 4, !tbaa !8
  %conv65 = sext i32 %57 to i64
  %sub66 = sub i64 %56, %conv65
  %cmp67 = icmp ult i64 %sub66, 4
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.49
  br label %too_short

if.end.70:                                        ; preds = %if.end.49
  %58 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %59 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext71 = sext i32 %59 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %58, i64 %idx.ext71
  %call73 = call zeroext i16 @jbig2_get_uint16(i8* %add.ptr72) #4
  %HRX = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 5
  store i16 %call73, i16* %HRX, align 2, !tbaa !49
  %60 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %61 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext74 = sext i32 %61 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %60, i64 %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr75, i64 2
  %call77 = call zeroext i16 @jbig2_get_uint16(i8* %add.ptr76) #4
  %HRY = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 6
  store i16 %call77, i16* %HRY, align 2, !tbaa !48
  %62 = load i32, i32* %offset, align 4, !tbaa !8
  %add78 = add nsw i32 %62, 4
  store i32 %add78, i32* %offset, align 4, !tbaa !8
  %63 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %64 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number79 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %64, i32 0, i32 0
  %65 = load i32, i32* %number79, align 4, !tbaa !21
  %HGW80 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 1
  %66 = load i32, i32* %HGW80, align 4, !tbaa !44
  %HGH81 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 2
  %67 = load i32, i32* %HGH81, align 4, !tbaa !45
  %HGX82 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 3
  %68 = load i32, i32* %HGX82, align 4, !tbaa !47
  %shr83 = ashr i32 %68, 8
  %HGX84 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 3
  %69 = load i32, i32* %HGX84, align 4, !tbaa !47
  %and85 = and i32 %69, 255
  %HGY86 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 4
  %70 = load i32, i32* %HGY86, align 4, !tbaa !50
  %shr87 = ashr i32 %70, 8
  %HGY88 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 4
  %71 = load i32, i32* %HGY88, align 4, !tbaa !50
  %and89 = and i32 %71, 255
  %HRX90 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 5
  %72 = load i16, i16* %HRX90, align 2, !tbaa !49
  %conv91 = zext i16 %72 to i32
  %shr92 = ashr i32 %conv91, 8
  %HRX93 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 5
  %73 = load i16, i16* %HRX93, align 2, !tbaa !49
  %conv94 = zext i16 %73 to i32
  %and95 = and i32 %conv94, 255
  %HRY96 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 6
  %74 = load i16, i16* %HRY96, align 2, !tbaa !48
  %conv97 = zext i16 %74 to i32
  %shr98 = ashr i32 %conv97, 8
  %HRY99 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 6
  %75 = load i16, i16* %HRY99, align 2, !tbaa !48
  %conv100 = zext i16 %75 to i32
  %and101 = and i32 %conv100, 255
  %call102 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %63, i32 1, i32 %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0), i32 %66, i32 %67, i32 %shr83, i32 %and85, i32 %shr87, i32 %and89, i32 %shr92, i32 %and95, i32 %shr98, i32 %and101) #4
  %HMMR103 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %76 = load i32, i32* %HMMR103, align 4, !tbaa !43
  %tobool104 = icmp ne i32 %76, 0
  br i1 %tobool104, label %if.end.118, label %if.then.105

if.then.105:                                      ; preds = %if.end.70
  %77 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %HTEMPLATE106 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 8
  %79 = load i32, i32* %HTEMPLATE106, align 4, !tbaa !46
  %call107 = call i32 @jbig2_generic_stats_size(%struct._Jbig2Ctx* %78, i32 %79) #4
  store i32 %call107, i32* %stats_size, align 4, !tbaa !8
  %80 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %80, i32 0, i32 0
  %81 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !11
  %82 = load i32, i32* %stats_size, align 4, !tbaa !8
  %conv108 = sext i32 %82 to i64
  %call109 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %81, i64 %conv108, i64 1) #4
  store i8* %call109, i8** %GB_stats, align 8, !tbaa !1
  %83 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %cmp110 = icmp eq i8* %83, null
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.then.105
  %84 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %85 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number113 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %85, i32 0, i32 0
  %86 = load i32, i32* %number113, align 4, !tbaa !21
  %call114 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %84, i32 3, i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0)) #4
  store i32 %call114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.then.105
  %87 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %88 = load i32, i32* %stats_size, align 4, !tbaa !8
  %conv116 = sext i32 %88 to i64
  %call117 = call i8* @memset(i8* %87, i32 0, i64 %conv116) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.115, %if.then.112
  %89 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.118

if.end.118:                                       ; preds = %cleanup.cont, %if.end.70
  %90 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %width119 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 0
  %91 = load i32, i32* %width119, align 4, !tbaa !53
  %height120 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 1
  %92 = load i32, i32* %height120, align 4, !tbaa !55
  %call121 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %90, i32 %91, i32 %92) #4
  store %struct._Jbig2Image* %call121, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %93 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp122 = icmp eq %struct._Jbig2Image* %93, null
  br i1 %cmp122, label %if.then.124, label %if.end.128

if.then.124:                                      ; preds = %if.end.118
  %94 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator125 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %94, i32 0, i32 0
  %95 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator125, align 8, !tbaa !11
  %96 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %95, i8* %96) #4
  %97 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %98 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number126 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %98, i32 0, i32 0
  %99 = load i32, i32* %number126, align 4, !tbaa !21
  %call127 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %97, i32 2, i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0)) #4
  store i32 %call127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.128:                                       ; preds = %if.end.118
  %100 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %101 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %102 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %103 = load i32, i32* %offset, align 4, !tbaa !8
  %idx.ext129 = sext i32 %103 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %102, i64 %idx.ext129
  %104 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length131 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %104, i32 0, i32 3
  %105 = load i64, i64* %data_length131, align 8, !tbaa !19
  %106 = load i32, i32* %offset, align 4, !tbaa !8
  %conv132 = sext i32 %106 to i64
  %sub133 = sub i64 %105, %conv132
  %107 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %108 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %call134 = call i32 @jbig2_decode_halftone_region(%struct._Jbig2Ctx* %100, %struct._Jbig2Segment* %101, %struct.Jbig2HalftoneRegionParams* %params, i8* %add.ptr130, i64 %sub133, %struct._Jbig2Image* %107, i8* %108) #4
  store i32 %call134, i32* %code, align 4, !tbaa !8
  %HMMR135 = getelementptr inbounds %struct.Jbig2HalftoneRegionParams, %struct.Jbig2HalftoneRegionParams* %params, i32 0, i32 7
  %109 = load i32, i32* %HMMR135, align 4, !tbaa !43
  %tobool136 = icmp ne i32 %109, 0
  br i1 %tobool136, label %if.end.139, label %if.then.137

if.then.137:                                      ; preds = %if.end.128
  %110 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator138 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %110, i32 0, i32 0
  %111 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator138, align 8, !tbaa !11
  %112 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %111, i8* %112) #4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.128
  %113 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %114 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %114, i32 0, i32 16
  %115 = load i32, i32* %current_page, align 4, !tbaa !58
  %idxprom140 = sext i32 %115 to i64
  %116 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %116, i32 0, i32 18
  %117 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !59
  %arrayidx141 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %117, i64 %idxprom140
  %118 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %x142 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 2
  %119 = load i32, i32* %x142, align 4, !tbaa !56
  %y143 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 3
  %120 = load i32, i32* %y143, align 4, !tbaa !57
  %op144 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 4
  %121 = load i32, i32* %op144, align 4, !tbaa !60
  %call145 = call i32 @jbig2_page_add_result(%struct._Jbig2Ctx* %113, %struct._Jbig2Page* %arrayidx141, %struct._Jbig2Image* %118, i32 %119, i32 %120, i32 %121) #4
  %122 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %123 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %122, %struct._Jbig2Image* %123) #4
  %124 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

too_short:                                        ; preds = %if.then.69, %if.then.48, %if.then.3, %if.then
  %125 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %126 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number146 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %126, i32 0, i32 0
  %127 = load i32, i32* %number146, align 4, !tbaa !21
  %call147 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %125, i32 3, i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 %call147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %too_short, %if.end.139, %if.then.124, %cleanup
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.Jbig2HalftoneRegionParams* %params to i8*
  call void @llvm.lifetime.end(i64 44, i8* %131) #1
  %132 = bitcast %struct.Jbig2RegionSegmentInfo* %region_info to i8*
  call void @llvm.lifetime.end(i64 24, i8* %132) #1
  %133 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo*, i8*) #2

declare i32 @jbig2_get_int32(i8*) #2

declare zeroext i16 @jbig2_get_uint16(i8*) #2

declare i32 @jbig2_page_add_result(%struct._Jbig2Ctx*, %struct._Jbig2Page*, %struct._Jbig2Image*, i32, i32, i32) #2

declare i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2GenericRegionParams*, i8*, i64, %struct._Jbig2Image*) #2

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
!5 = !{!6, !7, i64 12}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !7, i64 4}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !2, i64 0}
!12 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !7, i64 56, !7, i64 60, !3, i64 64, !3, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !2, i64 104}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !2, i64 8}
!15 = !{!"", !7, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!16 = !{!15, !7, i64 0}
!17 = !{!15, !7, i64 16}
!18 = !{!15, !7, i64 20}
!19 = !{!20, !13, i64 16}
!20 = !{!"_Jbig2Segment", !7, i64 0, !3, i64 4, !7, i64 8, !13, i64 16, !7, i64 24, !2, i64 32, !2, i64 40}
!21 = !{!20, !7, i64 0}
!22 = !{!3, !3, i64 0}
!23 = !{!6, !7, i64 0}
!24 = !{!6, !7, i64 16}
!25 = !{!20, !2, i64 40}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !7, i64 0}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !3, i64 16}
!29 = !{!28, !7, i64 4}
!30 = !{!28, !7, i64 8}
!31 = !{!28, !7, i64 12}
!32 = !{!33, !7, i64 8}
!33 = !{!"_Jbig2Image", !7, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !7, i64 24}
!34 = !{!33, !2, i64 16}
!35 = !{!20, !7, i64 24}
!36 = !{!20, !2, i64 32}
!37 = !{!20, !3, i64 4}
!38 = !{!39, !7, i64 40}
!39 = !{!"", !3, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !40, i64 20, !40, i64 22, !7, i64 24, !7, i64 28, !7, i64 32, !3, i64 36, !7, i64 40}
!40 = !{!"short", !3, i64 0}
!41 = !{!33, !7, i64 4}
!42 = !{!39, !7, i64 32}
!43 = !{!39, !7, i64 24}
!44 = !{!39, !7, i64 4}
!45 = !{!39, !7, i64 8}
!46 = !{!39, !7, i64 28}
!47 = !{!39, !7, i64 12}
!48 = !{!39, !40, i64 22}
!49 = !{!39, !40, i64 20}
!50 = !{!39, !7, i64 16}
!51 = !{!39, !3, i64 36}
!52 = !{!39, !3, i64 0}
!53 = !{!54, !7, i64 0}
!54 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !3, i64 16, !3, i64 20}
!55 = !{!54, !7, i64 4}
!56 = !{!54, !7, i64 8}
!57 = !{!54, !7, i64 12}
!58 = !{!12, !7, i64 96}
!59 = !{!12, !2, i64 104}
!60 = !{!54, !3, i64 16}
