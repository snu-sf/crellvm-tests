; ModuleID = './jbig2_page.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"unexpected page info segment, marking previous page finished\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"segment too short\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"height is unspecified but page is not markes as striped\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"extra data in segment\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to allocate buffer for page image\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"allocated %dx%d page image (%d bytes)\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"end of stripe segment with non-positive end row advance (new end row %d vs current end row %d)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"end of stripe: advancing end row to %d\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"File has an invalid segment data length! Trying to decode using the available data.\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"end of page marker for page %d doesn't match current page number %d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"end of page %d\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"page info possibly missing, no image defined\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"growing page buffer to %d rows to accomodate new stripe\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"page %d returned to the client\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"page %d returned with no associated image\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"page %d released by the client\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"jbig2_release_page called on unknown page\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"page %d image is %dx%d (unknown res)\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"page %d image is %dx%d (%d ppm)\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"page %d image is %dx%d (%dx%d ppm)\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\09maximum stripe size: %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @jbig2_page_info(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %page = alloca %struct._Jbig2Page*, align 8
  %index = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %striping = alloca i16, align 2
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Page** %page to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 16
  %2 = load i32, i32* %current_page, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 18
  %4 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %4, i64 %idxprom
  store %struct._Jbig2Page* %arrayidx, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %5 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %5, i32 0, i32 1
  %6 = load i32, i32* %number, align 4, !tbaa !10
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %7, i32 0, i32 0
  %8 = load i32, i32* %state, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %state2 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %9, i32 0, i32 0
  %10 = load i32, i32* %state2, align 4, !tbaa !13
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %state4 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %11, i32 0, i32 0
  store i32 2, i32* %state4, align 4, !tbaa !13
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number5 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %13, i32 0, i32 0
  %14 = load i32, i32* %number5, align 4, !tbaa !14
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 2, i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %15 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page6 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %17, i32 0, i32 16
  %18 = load i32, i32* %current_page6, align 4, !tbaa !5
  store i32 %18, i32* %index, align 4, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end
  %19 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %20, i32 0, i32 18
  %21 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages8, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %21, i64 %idxprom7
  %state10 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx9, i32 0, i32 0
  %22 = load i32, i32* %state10, align 4, !tbaa !13
  %cmp11 = icmp ne i32 %22, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %index, align 4, !tbaa !16
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %index, align 4, !tbaa !16
  %24 = load i32, i32* %index, align 4, !tbaa !16
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %max_page_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %25, i32 0, i32 17
  %26 = load i32, i32* %max_page_index, align 4, !tbaa !17
  %cmp12 = icmp sge i32 %24, %26
  br i1 %cmp12, label %if.then.13, label %if.end.33

if.then.13:                                       ; preds = %while.body
  %27 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %27, i32 0, i32 0
  %28 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !18
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages14 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %29, i32 0, i32 18
  %30 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages14, align 8, !tbaa !9
  %31 = bitcast %struct._Jbig2Page* %30 to i8*
  %32 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %max_page_index15 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %32, i32 0, i32 17
  %33 = load i32, i32* %max_page_index15, align 4, !tbaa !17
  %shl = shl i32 %33, 2
  store i32 %shl, i32* %max_page_index15, align 4, !tbaa !17
  %conv = sext i32 %shl to i64
  %call16 = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %28, i8* %31, i64 %conv, i64 48) #3
  %34 = bitcast i8* %call16 to %struct._Jbig2Page*
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages17 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %35, i32 0, i32 18
  store %struct._Jbig2Page* %34, %struct._Jbig2Page** %pages17, align 8, !tbaa !9
  %36 = load i32, i32* %index, align 4, !tbaa !16
  store i32 %36, i32* %j, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %37 = load i32, i32* %j, align 4, !tbaa !16
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %max_page_index18 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %38, i32 0, i32 17
  %39 = load i32, i32* %max_page_index18, align 4, !tbaa !17
  %cmp19 = icmp slt i32 %37, %39
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %j, align 4, !tbaa !16
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages22 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %41, i32 0, i32 18
  %42 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages22, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %42, i64 %idxprom21
  %state24 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx23, i32 0, i32 0
  store i32 0, i32* %state24, align 4, !tbaa !13
  %43 = load i32, i32* %j, align 4, !tbaa !16
  %idxprom25 = sext i32 %43 to i64
  %44 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages26 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %44, i32 0, i32 18
  %45 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages26, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %45, i64 %idxprom25
  %number28 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx27, i32 0, i32 1
  store i32 0, i32* %number28, align 4, !tbaa !10
  %46 = load i32, i32* %j, align 4, !tbaa !16
  %idxprom29 = sext i32 %46 to i64
  %47 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages30 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %47, i32 0, i32 18
  %48 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages30, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %48, i64 %idxprom29
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx31, i32 0, i32 10
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %j, align 4, !tbaa !16
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom34 = sext i32 %50 to i64
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages35 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %51, i32 0, i32 18
  %52 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages35, align 8, !tbaa !9
  %arrayidx36 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %52, i64 %idxprom34
  store %struct._Jbig2Page* %arrayidx36, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %53 = load i32, i32* %index, align 4, !tbaa !16
  %54 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page37 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %54, i32 0, i32 16
  store i32 %53, i32* %current_page37, align 4, !tbaa !5
  %55 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %state38 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %55, i32 0, i32 0
  store i32 1, i32* %state38, align 4, !tbaa !13
  %56 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %page_association = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %56, i32 0, i32 2
  %57 = load i32, i32* %page_association, align 4, !tbaa !20
  %58 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %number39 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %58, i32 0, i32 1
  store i32 %57, i32* %number39, align 4, !tbaa !10
  %59 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %61, i32 0, i32 3
  %62 = load i64, i64* %data_length, align 8, !tbaa !21
  %cmp40 = icmp ult i64 %62, 19
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %while.end
  %63 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %64 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number43 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %64, i32 0, i32 0
  %65 = load i32, i32* %number43, align 4, !tbaa !14
  %call44 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %63, i32 3, i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %while.end
  %66 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call46 = call i32 @jbig2_get_uint32(i8* %66) #3
  %67 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %67, i32 0, i32 3
  store i32 %call46, i32* %width, align 4, !tbaa !22
  %68 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 4
  %call47 = call i32 @jbig2_get_uint32(i8* %add.ptr) #3
  %69 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %69, i32 0, i32 2
  store i32 %call47, i32* %height, align 4, !tbaa !23
  %70 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %70, i64 8
  %call49 = call i32 @jbig2_get_uint32(i8* %add.ptr48) #3
  %71 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %x_resolution = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %71, i32 0, i32 4
  store i32 %call49, i32* %x_resolution, align 4, !tbaa !24
  %72 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %72, i64 12
  %call51 = call i32 @jbig2_get_uint32(i8* %add.ptr50) #3
  %73 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %y_resolution = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %73, i32 0, i32 5
  store i32 %call51, i32* %y_resolution, align 4, !tbaa !25
  %74 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %74, i64 16
  %75 = load i8, i8* %arrayidx52, align 1, !tbaa !26
  %76 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %76, i32 0, i32 9
  store i8 %75, i8* %flags, align 1, !tbaa !27
  %77 = bitcast i16* %striping to i8*
  call void @llvm.lifetime.start(i64 2, i8* %77) #1
  %78 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %78, i64 17
  %call54 = call signext i16 @jbig2_get_int16(i8* %add.ptr53) #3
  store i16 %call54, i16* %striping, align 2, !tbaa !28
  %79 = load i16, i16* %striping, align 2, !tbaa !28
  %conv55 = sext i16 %79 to i32
  %and = and i32 %conv55, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.end.45
  %80 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %striped = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %80, i32 0, i32 7
  store i32 1, i32* %striped, align 4, !tbaa !29
  %81 = load i16, i16* %striping, align 2, !tbaa !28
  %conv57 = sext i16 %81 to i32
  %and58 = and i32 %conv57, 32767
  %conv59 = trunc i32 %and58 to i16
  %82 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %stripe_size = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %82, i32 0, i32 6
  store i16 %conv59, i16* %stripe_size, align 2, !tbaa !30
  br label %if.end.62

if.else:                                          ; preds = %if.end.45
  %83 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %striped60 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %83, i32 0, i32 7
  store i32 0, i32* %striped60, align 4, !tbaa !29
  %84 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %stripe_size61 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %84, i32 0, i32 6
  store i16 0, i16* %stripe_size61, align 2, !tbaa !30
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.56
  %85 = bitcast i16* %striping to i8*
  call void @llvm.lifetime.end(i64 2, i8* %85) #1
  %86 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %height63 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %86, i32 0, i32 2
  %87 = load i32, i32* %height63, align 4, !tbaa !23
  %cmp64 = icmp eq i32 %87, -1
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.74

land.lhs.true.66:                                 ; preds = %if.end.62
  %88 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %striped67 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %88, i32 0, i32 7
  %89 = load i32, i32* %striped67, align 4, !tbaa !29
  %cmp68 = icmp eq i32 %89, 0
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %land.lhs.true.66
  %90 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %91 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number71 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %91, i32 0, i32 0
  %92 = load i32, i32* %number71, align 4, !tbaa !14
  %call72 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %90, i32 2, i32 %92, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0)) #3
  %93 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %striped73 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %93, i32 0, i32 7
  store i32 1, i32* %striped73, align 4, !tbaa !29
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %land.lhs.true.66, %if.end.62
  %94 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %end_row = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %94, i32 0, i32 8
  store i32 0, i32* %end_row, align 4, !tbaa !31
  %95 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length75 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %95, i32 0, i32 3
  %96 = load i64, i64* %data_length75, align 8, !tbaa !21
  %cmp76 = icmp ugt i64 %96, 19
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.74
  %97 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %98 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number79 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %98, i32 0, i32 0
  %99 = load i32, i32* %number79, align 4, !tbaa !14
  %call80 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %97, i32 2, i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.74
  %100 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %101 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %102 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  call void @dump_page_info(%struct._Jbig2Ctx* %100, %struct._Jbig2Segment* %101, %struct._Jbig2Page* %102) #3
  %103 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %height82 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %103, i32 0, i32 2
  %104 = load i32, i32* %height82, align 4, !tbaa !23
  %cmp83 = icmp eq i32 %104, -1
  br i1 %cmp83, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %if.end.81
  %105 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %106 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %width86 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %106, i32 0, i32 3
  %107 = load i32, i32* %width86, align 4, !tbaa !22
  %108 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %stripe_size87 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %108, i32 0, i32 6
  %109 = load i16, i16* %stripe_size87, align 2, !tbaa !30
  %conv88 = zext i16 %109 to i32
  %call89 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %105, i32 %107, i32 %conv88) #3
  %110 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image90 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %110, i32 0, i32 10
  store %struct._Jbig2Image* %call89, %struct._Jbig2Image** %image90, align 8, !tbaa !19
  br label %if.end.96

if.else.91:                                       ; preds = %if.end.81
  %111 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %112 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %width92 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %112, i32 0, i32 3
  %113 = load i32, i32* %width92, align 4, !tbaa !22
  %114 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %height93 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %114, i32 0, i32 2
  %115 = load i32, i32* %height93, align 4, !tbaa !23
  %call94 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %111, i32 %113, i32 %115) #3
  %116 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image95 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %116, i32 0, i32 10
  store %struct._Jbig2Image* %call94, %struct._Jbig2Image** %image95, align 8, !tbaa !19
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.91, %if.then.85
  %117 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image97 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %117, i32 0, i32 10
  %118 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image97, align 8, !tbaa !19
  %cmp98 = icmp eq %struct._Jbig2Image* %118, null
  br i1 %cmp98, label %if.then.100, label %if.else.103

if.then.100:                                      ; preds = %if.end.96
  %119 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %120 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number101 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %120, i32 0, i32 0
  %121 = load i32, i32* %number101, align 4, !tbaa !14
  %call102 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %119, i32 3, i32 %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 %call102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.103:                                      ; preds = %if.end.96
  %122 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %123 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image104 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %123, i32 0, i32 10
  %124 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image104, align 8, !tbaa !19
  %125 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %flags105 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %125, i32 0, i32 9
  %126 = load i8, i8* %flags105, align 1, !tbaa !27
  %conv106 = zext i8 %126 to i32
  %and107 = and i32 %conv106, 4
  call void @jbig2_image_clear(%struct._Jbig2Ctx* %122, %struct._Jbig2Image* %124, i32 %and107) #3
  %127 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %128 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number108 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %128, i32 0, i32 0
  %129 = load i32, i32* %number108, align 4, !tbaa !14
  %130 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image109 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %130, i32 0, i32 10
  %131 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image109, align 8, !tbaa !19
  %width110 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %131, i32 0, i32 0
  %132 = load i32, i32* %width110, align 4, !tbaa !32
  %133 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image111 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %133, i32 0, i32 10
  %134 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image111, align 8, !tbaa !19
  %height112 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %134, i32 0, i32 1
  %135 = load i32, i32* %height112, align 4, !tbaa !34
  %136 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image113 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %136, i32 0, i32 10
  %137 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image113, align 8, !tbaa !19
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %137, i32 0, i32 2
  %138 = load i32, i32* %stride, align 4, !tbaa !35
  %139 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page, align 8, !tbaa !1
  %image114 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %139, i32 0, i32 10
  %140 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image114, align 8, !tbaa !19
  %height115 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %140, i32 0, i32 1
  %141 = load i32, i32* %height115, align 4, !tbaa !34
  %mul = mul nsw i32 %138, %141
  %call116 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %127, i32 0, i32 %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 %132, i32 %135, i32 %mul) #3
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.117, %if.then.100, %if.then.42
  %142 = bitcast %struct._Jbig2Page** %page to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = load i32, i32* %retval
  ret i32 %143
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare i8* @jbig2_realloc(%struct._Jbig2Allocator*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @jbig2_get_uint32(i8*) #2

declare signext i16 @jbig2_get_int16(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dump_page_info(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct._Jbig2Page* %page) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %page.addr = alloca %struct._Jbig2Page*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct._Jbig2Page* %page, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %x_resolution = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %0, i32 0, i32 4
  %1 = load i32, i32* %x_resolution, align 4, !tbaa !24
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %3 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %3, i32 0, i32 0
  %4 = load i32, i32* %number, align 4, !tbaa !14
  %5 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %5, i32 0, i32 1
  %6 = load i32, i32* %number1, align 4, !tbaa !10
  %7 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %7, i32 0, i32 3
  %8 = load i32, i32* %width, align 4, !tbaa !22
  %9 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4, !tbaa !23
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %2, i32 1, i32 %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i32 %6, i32 %8, i32 %10) #3
  br label %if.end.19

if.else:                                          ; preds = %entry
  %11 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %x_resolution2 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %11, i32 0, i32 4
  %12 = load i32, i32* %x_resolution2, align 4, !tbaa !24
  %13 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %y_resolution = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %13, i32 0, i32 5
  %14 = load i32, i32* %y_resolution, align 4, !tbaa !25
  %cmp3 = icmp eq i32 %12, %14
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %if.else
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number5 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 0
  %17 = load i32, i32* %number5, align 4, !tbaa !14
  %18 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %number6 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %18, i32 0, i32 1
  %19 = load i32, i32* %number6, align 4, !tbaa !10
  %20 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %20, i32 0, i32 3
  %21 = load i32, i32* %width7, align 4, !tbaa !22
  %22 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %22, i32 0, i32 2
  %23 = load i32, i32* %height8, align 4, !tbaa !23
  %24 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %x_resolution9 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %24, i32 0, i32 4
  %25 = load i32, i32* %x_resolution9, align 4, !tbaa !24
  %call10 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 1, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i32 %19, i32 %21, i32 %23, i32 %25) #3
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number12 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 0
  %28 = load i32, i32* %number12, align 4, !tbaa !14
  %29 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %number13 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %29, i32 0, i32 1
  %30 = load i32, i32* %number13, align 4, !tbaa !10
  %31 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %31, i32 0, i32 3
  %32 = load i32, i32* %width14, align 4, !tbaa !22
  %33 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %33, i32 0, i32 2
  %34 = load i32, i32* %height15, align 4, !tbaa !23
  %35 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %x_resolution16 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %35, i32 0, i32 4
  %36 = load i32, i32* %x_resolution16, align 4, !tbaa !24
  %37 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %y_resolution17 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %37, i32 0, i32 5
  %38 = load i32, i32* %y_resolution17, align 4, !tbaa !25
  %call18 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 1, i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 %30, i32 %32, i32 %34, i32 %36, i32 %38) #3
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %39 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %striped = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %39, i32 0, i32 7
  %40 = load i32, i32* %striped, align 4, !tbaa !29
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.19
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %42 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number21 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %42, i32 0, i32 0
  %43 = load i32, i32* %number21, align 4, !tbaa !14
  %44 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %stripe_size = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %44, i32 0, i32 6
  %45 = load i16, i16* %stripe_size, align 2, !tbaa !30
  %conv = zext i16 %45 to i32
  %call22 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %41, i32 1, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i32 %conv) #3
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.19
  ret void
}

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #2

declare void @jbig2_image_clear(%struct._Jbig2Ctx*, %struct._Jbig2Image*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_end_of_stripe(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %page = alloca %struct._Jbig2Page, align 8
  %end_row = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Page* %page to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 16
  %2 = load i32, i32* %current_page, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 18
  %4 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %4, i64 %idxprom
  %5 = bitcast %struct._Jbig2Page* %page to i8*
  %6 = bitcast %struct._Jbig2Page* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 48, i32 8, i1 false), !tbaa.struct !36
  %7 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_get_int32(i8* %8) #3
  store i32 %call, i32* %end_row, align 4, !tbaa !16
  %9 = load i32, i32* %end_row, align 4, !tbaa !16
  %end_row1 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %page, i32 0, i32 8
  %10 = load i32, i32* %end_row1, align 4, !tbaa !31
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 0
  %13 = load i32, i32* %number, align 4, !tbaa !14
  %14 = load i32, i32* %end_row, align 4, !tbaa !16
  %end_row2 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %page, i32 0, i32 8
  %15 = load i32, i32* %end_row2, align 4, !tbaa !31
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %11, i32 2, i32 %13, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i32 0, i32 0), i32 %14, i32 %15) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number4 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %17, i32 0, i32 0
  %18 = load i32, i32* %number4, align 4, !tbaa !14
  %19 = load i32, i32* %end_row, align 4, !tbaa !16
  %call5 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %16, i32 1, i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 %19) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %end_row, align 4, !tbaa !16
  %end_row6 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %page, i32 0, i32 8
  store i32 %20, i32* %end_row6, align 4, !tbaa !31
  %21 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct._Jbig2Page* %page to i8*
  call void @llvm.lifetime.end(i64 48, i8* %22) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @jbig2_get_int32(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_complete_page(%struct._Jbig2Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %code = alloca i32, align 4
  %segment = alloca %struct._Jbig2Segment*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !16
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 15
  %2 = load i32, i32* %segment_index, align 4, !tbaa !37
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 14
  %4 = load i32, i32* %n_segments, align 4, !tbaa !38
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._Jbig2Segment** %segment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %6, i32 0, i32 15
  %7 = load i32, i32* %segment_index1, align 4, !tbaa !37
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %8, i32 0, i32 13
  %9 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %9, i64 %idxprom
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx, align 8, !tbaa !1
  store %struct._Jbig2Segment* %10, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %11, i32 0, i32 3
  %12 = load i64, i64* %data_length, align 8, !tbaa !21
  %and = and i64 %12, 4294967295
  %cmp2 = icmp eq i64 %and, 4294967295
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %14, i32 0, i32 0
  %15 = load i32, i32* %number, align 4, !tbaa !14
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %13, i32 2, i32 %15, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i32 0, i32 0)) #3
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 8
  %17 = load i32, i32* %buf_wr_ix, align 4, !tbaa !40
  %18 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %18, i32 0, i32 7
  %19 = load i32, i32* %buf_rd_ix, align 4, !tbaa !41
  %sub = sub i32 %17, %19
  %conv = zext i32 %sub to i64
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %data_length4 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %20, i32 0, i32 3
  store i64 %conv, i64* %data_length4, align 8, !tbaa !21
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %22 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %23, i32 0, i32 5
  %24 = load i8*, i8** %buf, align 8, !tbaa !42
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix5 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %25, i32 0, i32 7
  %26 = load i32, i32* %buf_rd_ix5, align 4, !tbaa !41
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %call6 = call i32 @jbig2_parse_segment(%struct._Jbig2Ctx* %21, %struct._Jbig2Segment* %22, i8* %add.ptr) #3
  store i32 %call6, i32* %code, align 4, !tbaa !16
  %27 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %data_length7 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %27, i32 0, i32 3
  %28 = load i64, i64* %data_length7, align 8, !tbaa !21
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %29, i32 0, i32 7
  %30 = load i32, i32* %buf_rd_ix8, align 4, !tbaa !41
  %conv9 = zext i32 %30 to i64
  %add = add i64 %conv9, %28
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* %buf_rd_ix8, align 4, !tbaa !41
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index11 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %31, i32 0, i32 15
  %32 = load i32, i32* %segment_index11, align 4, !tbaa !37
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %segment_index11, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %33 = bitcast %struct._Jbig2Segment** %segment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %34 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %34, i32 0, i32 16
  %35 = load i32, i32* %current_page, align 4, !tbaa !5
  %idxprom13 = sext i32 %35 to i64
  %36 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %36, i32 0, i32 18
  %37 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %37, i64 %idxprom13
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx14, i32 0, i32 10
  %38 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !19
  %cmp15 = icmp ne %struct._Jbig2Image* %38, null
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.12
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page18 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %39, i32 0, i32 16
  %40 = load i32, i32* %current_page18, align 4, !tbaa !5
  %idxprom19 = sext i32 %40 to i64
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages20 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %41, i32 0, i32 18
  %42 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages20, align 8, !tbaa !9
  %arrayidx21 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %42, i64 %idxprom19
  %state = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx21, i32 0, i32 0
  store i32 2, i32* %state, align 4, !tbaa !13
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.12
  %43 = load i32, i32* %code, align 4, !tbaa !16
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret i32 %43
}

declare i32 @jbig2_parse_segment(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_end_of_page(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %page_number = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 16
  %2 = load i32, i32* %current_page, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 18
  %4 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %4, i64 %idxprom
  %number = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %number, align 4, !tbaa !10
  store i32 %5, i32* %page_number, align 4, !tbaa !16
  %6 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %page_association = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %6, i32 0, i32 2
  %7 = load i32, i32* %page_association, align 4, !tbaa !20
  %8 = load i32, i32* %page_number, align 4, !tbaa !16
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %10, i32 0, i32 0
  %11 = load i32, i32* %number1, align 4, !tbaa !14
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %page_association2 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 2
  %13 = load i32, i32* %page_association2, align 4, !tbaa !20
  %14 = load i32, i32* %page_number, align 4, !tbaa !16
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %9, i32 2, i32 %11, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i32 0, i32 0), i32 %13, i32 %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number3 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 0
  %17 = load i32, i32* %number3, align 4, !tbaa !14
  %18 = load i32, i32* %page_number, align 4, !tbaa !16
  %call4 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 1, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %18) #3
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call5 = call i32 @jbig2_complete_page(%struct._Jbig2Ctx* %19) #3
  %20 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_page_add_result(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Page* %page, %struct._Jbig2Image* %image, i32 %x, i32 %y, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %page.addr = alloca %struct._Jbig2Page*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %new_height = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Page* %page, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !16
  store i32 %y, i32* %y.addr, align 4, !tbaa !16
  store i32 %op, i32* %op.addr, align 4, !tbaa !26
  %0 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %image1 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %0, i32 0, i32 10
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image1, align 8, !tbaa !19
  %cmp = icmp eq %struct._Jbig2Image* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %2, i32 2, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %striped = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %3, i32 0, i32 7
  %4 = load i32, i32* %striped, align 4, !tbaa !29
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %5 = bitcast i32* %new_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %y.addr, align 4, !tbaa !16
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %7, i32 0, i32 1
  %8 = load i32, i32* %height, align 4, !tbaa !34
  %add = add nsw i32 %6, %8
  %9 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %end_row = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %9, i32 0, i32 8
  %10 = load i32, i32* %end_row, align 4, !tbaa !31
  %add3 = add nsw i32 %add, %10
  store i32 %add3, i32* %new_height, align 4, !tbaa !16
  %11 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %image4 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %11, i32 0, i32 10
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image4, align 8, !tbaa !19
  %height5 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %12, i32 0, i32 1
  %13 = load i32, i32* %height5, align 4, !tbaa !34
  %14 = load i32, i32* %new_height, align 4, !tbaa !16
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.2
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %16 = load i32, i32* %new_height, align 4, !tbaa !16
  %call8 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 0, i32 -1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i32 %16) #3
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %18 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %image9 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %18, i32 0, i32 10
  %19 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image9, align 8, !tbaa !19
  %20 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %image10 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %20, i32 0, i32 10
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image10, align 8, !tbaa !19
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %21, i32 0, i32 0
  %22 = load i32, i32* %width, align 4, !tbaa !32
  %23 = load i32, i32* %new_height, align 4, !tbaa !16
  %call11 = call %struct._Jbig2Image* @jbig2_image_resize(%struct._Jbig2Ctx* %17, %struct._Jbig2Image* %19, i32 %22, i32 %23) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.then.2
  %24 = bitcast i32* %new_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %26 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %image14 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %26, i32 0, i32 10
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image14, align 8, !tbaa !19
  %28 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %29 = load i32, i32* %x.addr, align 4, !tbaa !16
  %30 = load i32, i32* %y.addr, align 4, !tbaa !16
  %31 = load %struct._Jbig2Page*, %struct._Jbig2Page** %page.addr, align 8, !tbaa !1
  %end_row15 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %31, i32 0, i32 8
  %32 = load i32, i32* %end_row15, align 4, !tbaa !31
  %add16 = add nsw i32 %30, %32
  %33 = load i32, i32* %op.addr, align 4, !tbaa !26
  %call17 = call i32 @jbig2_image_compose(%struct._Jbig2Ctx* %25, %struct._Jbig2Image* %27, %struct._Jbig2Image* %28, i32 %29, i32 %add16, i32 %33) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare %struct._Jbig2Image* @jbig2_image_resize(%struct._Jbig2Ctx*, %struct._Jbig2Image*, i32, i32) #2

declare i32 @jbig2_image_compose(%struct._Jbig2Ctx*, %struct._Jbig2Image*, %struct._Jbig2Image*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct._Jbig2Image* @jbig2_page_out(%struct._Jbig2Ctx* %ctx) #0 {
entry:
  %retval = alloca %struct._Jbig2Image*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %index = alloca i32, align 4
  %img = alloca %struct._Jbig2Image*, align 8
  %page_number = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %index, align 4, !tbaa !16
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %max_page_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %2, i32 0, i32 17
  %3 = load i32, i32* %max_page_index, align 4, !tbaa !17
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 18
  %6 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %6, i64 %idxprom
  %state = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %state, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body
  %8 = bitcast %struct._Jbig2Image** %img to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages3 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %10, i32 0, i32 18
  %11 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages3, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %11, i64 %idxprom2
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx4, i32 0, i32 10
  %12 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !19
  store %struct._Jbig2Image* %12, %struct._Jbig2Image** %img, align 8, !tbaa !1
  %13 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages6 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 18
  %16 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages6, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %16, i64 %idxprom5
  %number = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx7, i32 0, i32 1
  %17 = load i32, i32* %number, align 4, !tbaa !10
  store i32 %17, i32* %page_number, align 4, !tbaa !16
  %18 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages9 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %19, i32 0, i32 18
  %20 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages9, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %20, i64 %idxprom8
  %state11 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx10, i32 0, i32 0
  store i32 3, i32* %state11, align 4, !tbaa !13
  %21 = load %struct._Jbig2Image*, %struct._Jbig2Image** %img, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._Jbig2Image* %21, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %23 = load i32, i32* %page_number, align 4, !tbaa !16
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %22, i32 0, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i32 %23) #3
  %24 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %25 = load %struct._Jbig2Image*, %struct._Jbig2Image** %img, align 8, !tbaa !1
  %call14 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %24, %struct._Jbig2Image* %25) #3
  store %struct._Jbig2Image* %call14, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load i32, i32* %page_number, align 4, !tbaa !16
  %call15 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 2, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i32 %27) #3
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.13
  %28 = bitcast i32* %page_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct._Jbig2Image** %img to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %30 = load i32, i32* %index, align 4, !tbaa !16
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

cleanup.18:                                       ; preds = %for.end, %cleanup
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %retval
  ret %struct._Jbig2Image* %32
}

declare %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_release_page(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %index, align 4, !tbaa !16
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %max_page_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %2, i32 0, i32 17
  %3 = load i32, i32* %max_page_index, align 4, !tbaa !17
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 18
  %6 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %6, i64 %idxprom
  %image1 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx, i32 0, i32 10
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image1, align 8, !tbaa !19
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._Jbig2Image* %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %9, %struct._Jbig2Image* %10) #3
  %11 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages4 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %12, i32 0, i32 18
  %13 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages4, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %13, i64 %idxprom3
  %state = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx5, i32 0, i32 0
  store i32 4, i32* %state, align 4, !tbaa !13
  %14 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %15 = load i32, i32* %index, align 4, !tbaa !16
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages7 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 18
  %17 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages7, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %17, i64 %idxprom6
  %number = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx8, i32 0, i32 1
  %18 = load i32, i32* %number, align 4, !tbaa !10
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %14, i32 0, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 %18) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %index, align 4, !tbaa !16
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %index, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %20, i32 2, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0)) #3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %21 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

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
!5 = !{!6, !8, i64 96}
!6 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !8, i64 56, !8, i64 60, !3, i64 64, !3, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !2, i64 104}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !2, i64 104}
!10 = !{!11, !8, i64 4}
!11 = !{!"_Jbig2Page", !3, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !8, i64 28, !8, i64 32, !3, i64 36, !2, i64 40}
!12 = !{!"short", !3, i64 0}
!13 = !{!11, !3, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"_Jbig2Segment", !8, i64 0, !3, i64 4, !8, i64 8, !7, i64 16, !8, i64 24, !2, i64 32, !2, i64 40}
!16 = !{!8, !8, i64 0}
!17 = !{!6, !8, i64 100}
!18 = !{!6, !2, i64 0}
!19 = !{!11, !2, i64 40}
!20 = !{!15, !8, i64 8}
!21 = !{!15, !7, i64 16}
!22 = !{!11, !8, i64 12}
!23 = !{!11, !8, i64 8}
!24 = !{!11, !8, i64 16}
!25 = !{!11, !8, i64 20}
!26 = !{!3, !3, i64 0}
!27 = !{!11, !3, i64 36}
!28 = !{!12, !12, i64 0}
!29 = !{!11, !8, i64 28}
!30 = !{!11, !12, i64 24}
!31 = !{!11, !8, i64 32}
!32 = !{!33, !8, i64 0}
!33 = !{!"_Jbig2Image", !8, i64 0, !8, i64 4, !8, i64 8, !2, i64 16, !8, i64 24}
!34 = !{!33, !8, i64 4}
!35 = !{!33, !8, i64 8}
!36 = !{i64 0, i64 4, !26, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 2, !28, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 1, !26, i64 40, i64 8, !1}
!37 = !{!6, !8, i64 92}
!38 = !{!6, !8, i64 88}
!39 = !{!6, !2, i64 80}
!40 = !{!6, !8, i64 60}
!41 = !{!6, !8, i64 56}
!42 = !{!6, !2, i64 40}
