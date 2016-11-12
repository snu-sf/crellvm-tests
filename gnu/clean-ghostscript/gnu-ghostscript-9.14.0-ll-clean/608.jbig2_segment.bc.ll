; ModuleID = './jbig2_segment.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.Jbig2SymbolDict = type { i32, %struct._Jbig2Image** }
%struct.Jbig2PatternDict = type { i32, %struct._Jbig2Image**, i32, i32 }
%struct._Jbig2HuffmanParams = type { i32, i32, %struct._Jbig2HuffmanLine* }
%struct._Jbig2HuffmanLine = type { i32, i32, i32 }
%struct._Jbig2Metadata = type { i32, i8**, i8**, i32, i32 }
%struct.Jbig2RegionSegmentInfo = type { i32, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [57 x i8] c"failed to allocate segment in jbig2_parse_segment_header\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"jbig2_parse_segment_header() called with insufficient data\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"could not allocate referred_to_segments in jbig2_parse_segment_header\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"segment %d refers to segment %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"segment %d is associated with page %d\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"extension segment is marked 'necessary' but not 'reservered' contrary to spec\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"unhandled necessary extension segment type 0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"unhandled extension segment\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Segment %d, flags=%x, type=%d, data_length=%d\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"unhandled segment type 'intermediate generic region'\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"end of file\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unhandled segment type 'profile'\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"unknown segment type %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2Segment* @jbig2_parse_segment_header(%struct._Jbig2Ctx* %ctx, i8* %buf, i64 %buf_size, i64* %p_header_size) #0 {
entry:
  %retval = alloca %struct._Jbig2Segment*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i64, align 8
  %p_header_size.addr = alloca i64*, align 8
  %result = alloca %struct._Jbig2Segment*, align 8
  %rtscarf = alloca i8, align 1
  %rtscarf_long = alloca i32, align 4
  %referred_to_segments = alloca i32*, align 8
  %referred_to_segment_count = alloca i32, align 4
  %referred_to_segment_size = alloca i32, align 4
  %pa_size = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i64 %buf_size, i64* %buf_size.addr, align 8, !tbaa !5
  store i64* %p_header_size, i64** %p_header_size.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Segment** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %rtscarf) #1
  %1 = bitcast i32* %rtscarf_long to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %referred_to_segments to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %referred_to_segment_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %referred_to_segment_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %pa_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i64, i64* %buf_size.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %7, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end:                                           ; preds = %entry
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %8, i32 0, i32 0
  %9 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %9, i64 1, i64 48) #3
  %10 = bitcast i8* %call to %struct._Jbig2Segment*
  store %struct._Jbig2Segment* %10, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._Jbig2Segment* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 3, i32 -1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0)) #3
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  store %struct._Jbig2Segment* %13, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end.4:                                         ; preds = %if.end
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call5 = call i32 @jbig2_get_uint32(i8* %14) #3
  %15 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %15, i32 0, i32 0
  store i32 %call5, i32* %number, align 4, !tbaa !10
  %16 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 4
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %18 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %18, i32 0, i32 1
  store i8 %17, i8* %flags, align 1, !tbaa !13
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 5
  %20 = load i8, i8* %arrayidx6, align 1, !tbaa !12
  store i8 %20, i8* %rtscarf, align 1, !tbaa !12
  %21 = load i8, i8* %rtscarf, align 1, !tbaa !12
  %conv = zext i8 %21 to i32
  %and = and i32 %conv, 224
  %cmp7 = icmp eq i32 %and, 224
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.4
  %22 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 5
  %call10 = call i32 @jbig2_get_uint32(i8* %add.ptr) #3
  store i32 %call10, i32* %rtscarf_long, align 4, !tbaa !14
  %23 = load i32, i32* %rtscarf_long, align 4, !tbaa !14
  %and11 = and i32 %23, 536870911
  store i32 %and11, i32* %referred_to_segment_count, align 4, !tbaa !14
  %24 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %add = add nsw i32 %24, 1
  %div = sdiv i32 %add, 8
  %add12 = add nsw i32 9, %div
  store i32 %add12, i32* %offset, align 4, !tbaa !14
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %25 = load i8, i8* %rtscarf, align 1, !tbaa !12
  %conv13 = zext i8 %25 to i32
  %shr = ashr i32 %conv13, 5
  store i32 %shr, i32* %referred_to_segment_count, align 4, !tbaa !14
  store i32 6, i32* %offset, align 4, !tbaa !14
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %26 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %referred_to_segment_count15 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 4
  store i32 %26, i32* %referred_to_segment_count15, align 4, !tbaa !15
  %28 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number16 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %28, i32 0, i32 0
  %29 = load i32, i32* %number16, align 4, !tbaa !10
  %cmp17 = icmp ule i32 %29, 256
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %30 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number19 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %30, i32 0, i32 0
  %31 = load i32, i32* %number19, align 4, !tbaa !10
  %cmp20 = icmp ule i32 %31, 65536
  %cond = select i1 %cmp20, i32 2, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond22, i32* %referred_to_segment_size, align 4, !tbaa !14
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %flags23 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %32, i32 0, i32 1
  %33 = load i8, i8* %flags23, align 1, !tbaa !13
  %conv24 = zext i8 %33 to i32
  %and25 = and i32 %conv24, 64
  %tobool = icmp ne i32 %and25, 0
  %cond26 = select i1 %tobool, i32 4, i32 1
  store i32 %cond26, i32* %pa_size, align 4, !tbaa !14
  %34 = load i32, i32* %offset, align 4, !tbaa !14
  %35 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %36 = load i32, i32* %referred_to_segment_size, align 4, !tbaa !14
  %mul = mul nsw i32 %35, %36
  %add27 = add nsw i32 %34, %mul
  %37 = load i32, i32* %pa_size, align 4, !tbaa !14
  %add28 = add nsw i32 %add27, %37
  %add29 = add nsw i32 %add28, 4
  %conv30 = sext i32 %add29 to i64
  %38 = load i64, i64* %buf_size.addr, align 8, !tbaa !5
  %cmp31 = icmp ugt i64 %conv30, %38
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %cond.end
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %40 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number34 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %40, i32 0, i32 0
  %41 = load i32, i32* %number34, align 4, !tbaa !10
  %call35 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %39, i32 0, i32 %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i32 -1) #3
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator36 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %42, i32 0, i32 0
  %43 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator36, align 8, !tbaa !7
  %44 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %45 = bitcast %struct._Jbig2Segment* %44 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %43, i8* %45) #3
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

if.end.37:                                        ; preds = %cond.end
  %46 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %tobool38 = icmp ne i32 %46, 0
  br i1 %tobool38, label %if.then.39, label %if.else.80

if.then.39:                                       ; preds = %if.end.37
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator40 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %48, i32 0, i32 0
  %49 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator40, align 8, !tbaa !7
  %50 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %51 = load i32, i32* %referred_to_segment_size, align 4, !tbaa !14
  %mul41 = mul nsw i32 %50, %51
  %conv42 = sext i32 %mul41 to i64
  %call43 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %49, i64 %conv42, i64 4) #3
  %52 = bitcast i8* %call43 to i32*
  store i32* %52, i32** %referred_to_segments, align 8, !tbaa !1
  %53 = load i32*, i32** %referred_to_segments, align 8, !tbaa !1
  %cmp44 = icmp eq i32* %53, null
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.39
  %54 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %54, i32 3, i32 -1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0)) #3
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.39
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %55 = load i32, i32* %i, align 4, !tbaa !14
  %56 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !14
  %cmp49 = icmp slt i32 %55, %56
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %referred_to_segment_size, align 4, !tbaa !14
  %cmp51 = icmp eq i32 %57, 1
  br i1 %cmp51, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %for.body
  %58 = load i32, i32* %offset, align 4, !tbaa !14
  %idxprom = sext i32 %58 to i64
  %59 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %59, i64 %idxprom
  %60 = load i8, i8* %arrayidx54, align 1, !tbaa !12
  %conv55 = zext i8 %60 to i32
  br label %cond.end.69

cond.false.56:                                    ; preds = %for.body
  %61 = load i32, i32* %referred_to_segment_size, align 4, !tbaa !14
  %cmp57 = icmp eq i32 %61, 2
  br i1 %cmp57, label %cond.true.59, label %cond.false.63

cond.true.59:                                     ; preds = %cond.false.56
  %62 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %63 = load i32, i32* %offset, align 4, !tbaa !14
  %idx.ext = sext i32 %63 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  %call61 = call zeroext i16 @jbig2_get_uint16(i8* %add.ptr60) #3
  %conv62 = zext i16 %call61 to i32
  br label %cond.end.67

cond.false.63:                                    ; preds = %cond.false.56
  %64 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %65 = load i32, i32* %offset, align 4, !tbaa !14
  %idx.ext64 = sext i32 %65 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %64, i64 %idx.ext64
  %call66 = call i32 @jbig2_get_uint32(i8* %add.ptr65) #3
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.63, %cond.true.59
  %cond68 = phi i32 [ %conv62, %cond.true.59 ], [ %call66, %cond.false.63 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.53
  %cond70 = phi i32 [ %conv55, %cond.true.53 ], [ %cond68, %cond.end.67 ]
  %66 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom71 = sext i32 %66 to i64
  %67 = load i32*, i32** %referred_to_segments, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i32, i32* %67, i64 %idxprom71
  store i32 %cond70, i32* %arrayidx72, align 4, !tbaa !14
  %68 = load i32, i32* %referred_to_segment_size, align 4, !tbaa !14
  %69 = load i32, i32* %offset, align 4, !tbaa !14
  %add73 = add nsw i32 %69, %68
  store i32 %add73, i32* %offset, align 4, !tbaa !14
  %70 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %71 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number74 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %71, i32 0, i32 0
  %72 = load i32, i32* %number74, align 4, !tbaa !10
  %73 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number75 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %73, i32 0, i32 0
  %74 = load i32, i32* %number75, align 4, !tbaa !10
  %75 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom76 = sext i32 %75 to i64
  %76 = load i32*, i32** %referred_to_segments, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i32, i32* %76, i64 %idxprom76
  %77 = load i32, i32* %arrayidx77, align 4, !tbaa !14
  %call78 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %70, i32 0, i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %74, i32 %77) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.69
  %78 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32*, i32** %referred_to_segments, align 8, !tbaa !1
  %80 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %referred_to_segments79 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %80, i32 0, i32 5
  store i32* %79, i32** %referred_to_segments79, align 8, !tbaa !16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.46
  %81 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.110 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.82

if.else.80:                                       ; preds = %if.end.37
  %82 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %referred_to_segments81 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %82, i32 0, i32 5
  store i32* null, i32** %referred_to_segments81, align 8, !tbaa !16
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %cleanup.cont
  %83 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %flags83 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %83, i32 0, i32 1
  %84 = load i8, i8* %flags83, align 1, !tbaa !13
  %conv84 = zext i8 %84 to i32
  %and85 = and i32 %conv84, 64
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.92

if.then.87:                                       ; preds = %if.end.82
  %85 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %86 = load i32, i32* %offset, align 4, !tbaa !14
  %idx.ext88 = sext i32 %86 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %85, i64 %idx.ext88
  %call90 = call i32 @jbig2_get_uint32(i8* %add.ptr89) #3
  %87 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %page_association = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %87, i32 0, i32 2
  store i32 %call90, i32* %page_association, align 4, !tbaa !17
  %88 = load i32, i32* %offset, align 4, !tbaa !14
  %add91 = add nsw i32 %88, 4
  store i32 %add91, i32* %offset, align 4, !tbaa !14
  br label %if.end.98

if.else.92:                                       ; preds = %if.end.82
  %89 = load i32, i32* %offset, align 4, !tbaa !14
  %inc93 = add nsw i32 %89, 1
  store i32 %inc93, i32* %offset, align 4, !tbaa !14
  %idxprom94 = sext i32 %89 to i64
  %90 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %90, i64 %idxprom94
  %91 = load i8, i8* %arrayidx95, align 1, !tbaa !12
  %conv96 = zext i8 %91 to i32
  %92 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %page_association97 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %92, i32 0, i32 2
  store i32 %conv96, i32* %page_association97, align 4, !tbaa !17
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.92, %if.then.87
  %93 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %94 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number99 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %94, i32 0, i32 0
  %95 = load i32, i32* %number99, align 4, !tbaa !10
  %96 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %number100 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %96, i32 0, i32 0
  %97 = load i32, i32* %number100, align 4, !tbaa !10
  %98 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %page_association101 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %98, i32 0, i32 2
  %99 = load i32, i32* %page_association101, align 4, !tbaa !17
  %call102 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %93, i32 0, i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %97, i32 %99) #3
  %100 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %101 = load i32, i32* %offset, align 4, !tbaa !14
  %idx.ext103 = sext i32 %101 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %100, i64 %idx.ext103
  %call105 = call i32 @jbig2_get_uint32(i8* %add.ptr104) #3
  %conv106 = zext i32 %call105 to i64
  %102 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %102, i32 0, i32 3
  store i64 %conv106, i64* %data_length, align 8, !tbaa !18
  %103 = load i32, i32* %offset, align 4, !tbaa !14
  %add107 = add nsw i32 %103, 4
  %conv108 = sext i32 %add107 to i64
  %104 = load i64*, i64** %p_header_size.addr, align 8, !tbaa !1
  store i64 %conv108, i64* %104, align 8, !tbaa !5
  %105 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  %result109 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %105, i32 0, i32 6
  store i8* null, i8** %result109, align 8, !tbaa !19
  %106 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %result, align 8, !tbaa !1
  store %struct._Jbig2Segment* %106, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.110

cleanup.110:                                      ; preds = %if.end.98, %cleanup, %if.then.33, %if.then.2, %if.then
  %107 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %pa_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %referred_to_segment_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %referred_to_segment_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32** %referred_to_segments to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %rtscarf_long to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  call void @llvm.lifetime.end(i64 1, i8* %rtscarf) #1
  %113 = bitcast %struct._Jbig2Segment** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %retval
  ret %struct._Jbig2Segment* %114
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare i32 @jbig2_get_uint32(i8*) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

declare zeroext i16 @jbig2_get_uint16(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jbig2_free_segment(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %0, i32 0, i32 5
  %1 = load i32*, i32** %referred_to_segments, align 8, !tbaa !16
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %2, i32 0, i32 0
  %3 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %4 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %4, i32 0, i32 5
  %5 = load i32*, i32** %referred_to_segments1, align 8, !tbaa !16
  %6 = bitcast i32* %5 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %3, i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %7, i32 0, i32 1
  %8 = load i8, i8* %flags, align 1, !tbaa !13
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 63
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.7
    i32 40, label %sw.bb.7
    i32 16, label %sw.bb.14
    i32 53, label %sw.bb.21
    i32 62, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %9, i32 0, i32 6
  %10 = load i8*, i8** %result, align 8, !tbaa !19
  %cmp2 = icmp ne i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %sw.bb
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result5 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 6
  %13 = load i8*, i8** %result5, align 8, !tbaa !19
  %14 = bitcast i8* %13 to %struct.Jbig2SymbolDict*
  call void @jbig2_sd_release(%struct._Jbig2Ctx* %11, %struct.Jbig2SymbolDict* %14) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end, %if.end
  %15 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result8 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %15, i32 0, i32 6
  %16 = load i8*, i8** %result8, align 8, !tbaa !19
  %cmp9 = icmp ne i8* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb.7
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %18 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result12 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %18, i32 0, i32 6
  %19 = load i8*, i8** %result12, align 8, !tbaa !19
  %20 = bitcast i8* %19 to %struct._Jbig2Image*
  call void @jbig2_image_release(%struct._Jbig2Ctx* %17, %struct._Jbig2Image* %20) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %sw.bb.7
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %21 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result15 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %21, i32 0, i32 6
  %22 = load i8*, i8** %result15, align 8, !tbaa !19
  %cmp16 = icmp ne i8* %22, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %sw.bb.14
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result19 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %24, i32 0, i32 6
  %25 = load i8*, i8** %result19, align 8, !tbaa !19
  %26 = bitcast i8* %25 to %struct.Jbig2PatternDict*
  call void @jbig2_hd_release(%struct._Jbig2Ctx* %23, %struct.Jbig2PatternDict* %26) #3
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %sw.bb.14
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result22 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 6
  %28 = load i8*, i8** %result22, align 8, !tbaa !19
  %cmp23 = icmp ne i8* %28, null
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %sw.bb.21
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %30 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result26 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %30, i32 0, i32 6
  %31 = load i8*, i8** %result26, align 8, !tbaa !19
  %32 = bitcast i8* %31 to %struct._Jbig2HuffmanParams*
  call void @jbig2_table_free(%struct._Jbig2Ctx* %29, %struct._Jbig2HuffmanParams* %32) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %sw.bb.21
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %33 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result29 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %33, i32 0, i32 6
  %34 = load i8*, i8** %result29, align 8, !tbaa !19
  %cmp30 = icmp ne i8* %34, null
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %sw.bb.28
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %36 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result33 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %36, i32 0, i32 6
  %37 = load i8*, i8** %result33, align 8, !tbaa !19
  %38 = bitcast i8* %37 to %struct._Jbig2Metadata*
  call void @jbig2_metadata_free(%struct._Jbig2Ctx* %35, %struct._Jbig2Metadata* %38) #3
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %sw.bb.28
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.34, %if.end.27, %if.end.20, %if.end.13, %if.end.6
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator35 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %39, i32 0, i32 0
  %40 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator35, align 8, !tbaa !7
  %41 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %42 = bitcast %struct._Jbig2Segment* %41 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %40, i8* %42) #3
  ret void
}

declare void @jbig2_sd_release(%struct._Jbig2Ctx*, %struct.Jbig2SymbolDict*) #2

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

declare void @jbig2_hd_release(%struct._Jbig2Ctx*, %struct.Jbig2PatternDict*) #2

declare void @jbig2_table_free(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanParams*) #2

declare void @jbig2_metadata_free(%struct._Jbig2Ctx*, %struct._Jbig2Metadata*) #2

; Function Attrs: nounwind uwtable
define %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %ctx, i32 %number) #0 {
entry:
  %retval = alloca %struct._Jbig2Segment*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %number.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %index_max = alloca i32, align 4
  %global_ctx = alloca %struct._Jbig2Ctx*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %number, i32* %number.addr, align 4, !tbaa !14
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %index_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %2, i32 0, i32 15
  %3 = load i32, i32* %segment_index, align 4, !tbaa !20
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %index_max, align 4, !tbaa !14
  %4 = bitcast %struct._Jbig2Ctx** %global_ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %global_ctx1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 2
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %global_ctx1, align 8, !tbaa !21
  store %struct._Jbig2Ctx* %6, %struct._Jbig2Ctx** %global_ctx, align 8, !tbaa !1
  %7 = load i32, i32* %index_max, align 4, !tbaa !14
  store i32 %7, i32* %index, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %index, align 4, !tbaa !14
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %10, i32 0, i32 13
  %11 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %11, i64 %idxprom
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx, align 8, !tbaa !1
  %number2 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 0
  %13 = load i32, i32* %number2, align 4, !tbaa !10
  %14 = load i32, i32* %number.addr, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %13, %14
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments5 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 13
  %17 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments5, align 8, !tbaa !22
  %arrayidx6 = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %17, i64 %idxprom4
  %18 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx6, align 8, !tbaa !1
  store %struct._Jbig2Segment* %18, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %index, align 4, !tbaa !14
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %index, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %global_ctx, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Ctx* %20, null
  br i1 %tobool, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %for.end
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %global_ctx, align 8, !tbaa !1
  %segment_index8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %21, i32 0, i32 15
  %22 = load i32, i32* %segment_index8, align 4, !tbaa !20
  %sub9 = sub nsw i32 %22, 1
  store i32 %sub9, i32* %index, align 4, !tbaa !14
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %if.then.7
  %23 = load i32, i32* %index, align 4, !tbaa !14
  %cmp11 = icmp sge i32 %23, 0
  br i1 %cmp11, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.10
  %24 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %global_ctx, align 8, !tbaa !1
  %segments14 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %25, i32 0, i32 13
  %26 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments14, align 8, !tbaa !22
  %arrayidx15 = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %26, i64 %idxprom13
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx15, align 8, !tbaa !1
  %number16 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 0
  %28 = load i32, i32* %number16, align 4, !tbaa !10
  %29 = load i32, i32* %number.addr, align 4, !tbaa !14
  %cmp17 = icmp eq i32 %28, %29
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %for.body.12
  %30 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %global_ctx, align 8, !tbaa !1
  %segments20 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %31, i32 0, i32 13
  %32 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments20, align 8, !tbaa !22
  %arrayidx21 = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %32, i64 %idxprom19
  %33 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx21, align 8, !tbaa !1
  store %struct._Jbig2Segment* %33, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.body.12
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %34 = load i32, i32* %index, align 4, !tbaa !14
  %dec24 = add nsw i32 %34, -1
  store i32 %dec24, i32* %index, align 4, !tbaa !14
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %for.end
  store %struct._Jbig2Segment* null, %struct._Jbig2Segment** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.18, %if.then
  %35 = bitcast %struct._Jbig2Ctx** %global_ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %index_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %retval
  ret %struct._Jbig2Segment* %38
}

; Function Attrs: nounwind uwtable
define void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo* %info, i8* %segment_data) #0 {
entry:
  %info.addr = alloca %struct.Jbig2RegionSegmentInfo*, align 8
  %segment_data.addr = alloca i8*, align 8
  store %struct.Jbig2RegionSegmentInfo* %info, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_get_int32(i8* %0) #3
  %1 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %1, i32 0, i32 0
  store i32 %call, i32* %width, align 4, !tbaa !23
  %2 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  %call1 = call i32 @jbig2_get_int32(i8* %add.ptr) #3
  %3 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %3, i32 0, i32 1
  store i32 %call1, i32* %height, align 4, !tbaa !25
  %4 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 8
  %call3 = call i32 @jbig2_get_int32(i8* %add.ptr2) #3
  %5 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %5, i32 0, i32 2
  store i32 %call3, i32* %x, align 4, !tbaa !26
  %6 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 12
  %call5 = call i32 @jbig2_get_int32(i8* %add.ptr4) #3
  %7 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %7, i32 0, i32 3
  store i32 %call5, i32* %y, align 4, !tbaa !27
  %8 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 16
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %10 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %10, i32 0, i32 5
  store i8 %9, i8* %flags, align 1, !tbaa !28
  %11 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %flags6 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %11, i32 0, i32 5
  %12 = load i8, i8* %flags6, align 1, !tbaa !28
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 7
  %13 = load %struct.Jbig2RegionSegmentInfo*, %struct.Jbig2RegionSegmentInfo** %info.addr, align 8, !tbaa !1
  %op = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %13, i32 0, i32 4
  store i32 %and, i32* %op, align 4, !tbaa !29
  ret void
}

declare i32 @jbig2_get_int32(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_parse_extension_segment(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %type = alloca i32, align 4
  %reserved = alloca i32, align 4
  %necessary = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_get_uint32(i8* %1) #3
  store i32 %call, i32* %type, align 4, !tbaa !14
  %2 = bitcast i32* %reserved to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %type, align 4, !tbaa !14
  %and = and i32 %3, 536870912
  store i32 %and, i32* %reserved, align 4, !tbaa !14
  %4 = bitcast i32* %necessary to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %type, align 4, !tbaa !14
  %and1 = and i32 %5, -2147483648
  store i32 %and1, i32* %necessary, align 4, !tbaa !14
  %6 = load i32, i32* %necessary, align 4, !tbaa !14
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %reserved, align 4, !tbaa !14
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %9 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %9, i32 0, i32 0
  %10 = load i32, i32* %number, align 4, !tbaa !10
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %8, i32 2, i32 %10, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i32, i32* %type, align 4, !tbaa !14
  switch i32 %11, label %sw.default [
    i32 536870912, label %sw.bb
    i32 536870914, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call4 = call i32 @jbig2_comment_ascii(%struct._Jbig2Ctx* %12, %struct._Jbig2Segment* %13, i8* %14) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %if.end
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call6 = call i32 @jbig2_comment_unicode(%struct._Jbig2Ctx* %15, %struct._Jbig2Segment* %16, i8* %17) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %18 = load i32, i32* %necessary, align 4, !tbaa !14
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %sw.default
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number9 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %20, i32 0, i32 0
  %21 = load i32, i32* %number9, align 4, !tbaa !10
  %22 = load i32, i32* %type, align 4, !tbaa !14
  %call10 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %19, i32 3, i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i32 %22) #3
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.default
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number11 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %24, i32 0, i32 0
  %25 = load i32, i32* %number11, align 4, !tbaa !10
  %call12 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %23, i32 2, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.8, %sw.bb.5, %sw.bb
  %26 = bitcast i32* %necessary to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %reserved to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @jbig2_comment_ascii(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_comment_unicode(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_parse_segment(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %1 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %1, i32 0, i32 0
  %2 = load i32, i32* %number, align 4, !tbaa !10
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %3, i32 0, i32 0
  %4 = load i32, i32* %number1, align 4, !tbaa !10
  %5 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %5, i32 0, i32 1
  %6 = load i8, i8* %flags, align 1, !tbaa !13
  %conv = zext i8 %6 to i32
  %7 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags2 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %7, i32 0, i32 1
  %8 = load i8, i8* %flags2, align 1, !tbaa !13
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 63
  %9 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %9, i32 0, i32 3
  %10 = load i64, i64* %data_length, align 8, !tbaa !18
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %0, i32 1, i32 %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0), i32 %4, i32 %conv, i32 %and, i64 %10) #3
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags4 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %11, i32 0, i32 1
  %12 = load i8, i8* %flags4, align 1, !tbaa !13
  %conv5 = zext i8 %12 to i32
  %and6 = and i32 %conv5, 63
  switch i32 %and6, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.8
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.8
    i32 16, label %sw.bb.10
    i32 20, label %sw.bb.12
    i32 22, label %sw.bb.12
    i32 23, label %sw.bb.12
    i32 36, label %sw.bb.14
    i32 38, label %sw.bb.17
    i32 39, label %sw.bb.17
    i32 40, label %sw.bb.19
    i32 42, label %sw.bb.19
    i32 43, label %sw.bb.19
    i32 48, label %sw.bb.21
    i32 49, label %sw.bb.23
    i32 50, label %sw.bb.25
    i32 51, label %sw.bb.27
    i32 52, label %sw.bb.30
    i32 53, label %sw.bb.33
    i32 62, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call7 = call i32 @jbig2_symbol_dictionary(%struct._Jbig2Ctx* %13, %struct._Jbig2Segment* %14, i8* %15) #3
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call9 = call i32 @jbig2_text_region(%struct._Jbig2Ctx* %16, %struct._Jbig2Segment* %17, i8* %18) #3
  store i32 %call9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call11 = call i32 @jbig2_pattern_dictionary(%struct._Jbig2Ctx* %19, %struct._Jbig2Segment* %20, i8* %21) #3
  store i32 %call11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry, %entry, %entry
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %23 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call13 = call i32 @jbig2_halftone_region(%struct._Jbig2Ctx* %22, %struct._Jbig2Segment* %23, i8* %24) #3
  store i32 %call13, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %26 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number15 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %26, i32 0, i32 0
  %27 = load i32, i32* %number15, align 4, !tbaa !10
  %call16 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %25, i32 2, i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0)) #3
  store i32 %call16, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry, %entry
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %29 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call18 = call i32 @jbig2_immediate_generic_region(%struct._Jbig2Ctx* %28, %struct._Jbig2Segment* %29, i8* %30) #3
  store i32 %call18, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry, %entry, %entry
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call20 = call i32 @jbig2_refinement_region(%struct._Jbig2Ctx* %31, %struct._Jbig2Segment* %32, i8* %33) #3
  store i32 %call20, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %34 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %35 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call22 = call i32 @jbig2_page_info(%struct._Jbig2Ctx* %34, %struct._Jbig2Segment* %35, i8* %36) #3
  store i32 %call22, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %37 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %38 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call24 = call i32 @jbig2_end_of_page(%struct._Jbig2Ctx* %37, %struct._Jbig2Segment* %38, i8* %39) #3
  store i32 %call24, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %40 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %41 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call26 = call i32 @jbig2_end_of_stripe(%struct._Jbig2Ctx* %40, %struct._Jbig2Segment* %41, i8* %42) #3
  store i32 %call26, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %43 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %43, i32 0, i32 9
  store i32 5, i32* %state, align 4, !tbaa !30
  %44 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %45 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number28 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %45, i32 0, i32 0
  %46 = load i32, i32* %number28, align 4, !tbaa !10
  %call29 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %44, i32 1, i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #3
  store i32 %call29, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  %47 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %48 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number31 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %48, i32 0, i32 0
  %49 = load i32, i32* %number31, align 4, !tbaa !10
  %call32 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %47, i32 2, i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #3
  store i32 %call32, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  %50 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %51 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call34 = call i32 @jbig2_table(%struct._Jbig2Ctx* %50, %struct._Jbig2Segment* %51, i8* %52) #3
  store i32 %call34, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %entry
  %53 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %54 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call36 = call i32 @jbig2_parse_extension_segment(%struct._Jbig2Ctx* %53, %struct._Jbig2Segment* %54, i8* %55) #3
  store i32 %call36, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %56 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %57 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number37 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %57, i32 0, i32 0
  %58 = load i32, i32* %number37, align 4, !tbaa !10
  %59 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags38 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %59, i32 0, i32 1
  %60 = load i8, i8* %flags38, align 1, !tbaa !13
  %conv39 = zext i8 %60 to i32
  %and40 = and i32 %conv39, 63
  %call41 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %56, i32 2, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %and40) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.35, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i32 @jbig2_symbol_dictionary(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_text_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_pattern_dictionary(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_halftone_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_immediate_generic_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_refinement_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_page_info(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_end_of_page(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_end_of_stripe(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

declare i32 @jbig2_table(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !9, i64 56, !9, i64 60, !3, i64 64, !3, i64 68, !9, i64 72, !9, i64 76, !2, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !2, i64 104}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_Jbig2Segment", !9, i64 0, !3, i64 4, !9, i64 8, !6, i64 16, !9, i64 24, !2, i64 32, !2, i64 40}
!12 = !{!3, !3, i64 0}
!13 = !{!11, !3, i64 4}
!14 = !{!9, !9, i64 0}
!15 = !{!11, !9, i64 24}
!16 = !{!11, !2, i64 32}
!17 = !{!11, !9, i64 8}
!18 = !{!11, !6, i64 16}
!19 = !{!11, !2, i64 40}
!20 = !{!8, !9, i64 92}
!21 = !{!8, !2, i64 16}
!22 = !{!8, !2, i64 80}
!23 = !{!24, !9, i64 0}
!24 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !3, i64 16, !3, i64 20}
!25 = !{!24, !9, i64 4}
!26 = !{!24, !9, i64 8}
!27 = !{!24, !9, i64 12}
!28 = !{!24, !3, i64 20}
!29 = !{!24, !3, i64 16}
!30 = !{!8, !3, i64 64}
