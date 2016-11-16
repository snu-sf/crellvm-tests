; ModuleID = './jbig2_image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }

@.str = private unnamed_addr constant [54 x i8] c"could not allocate image structure in jbig2_image_new\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"integer multiplication overflow from stride(%d)*height(%d)\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"could not allocate image data buffer! [stride(%d)*height(%d) bytes]\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"integer multiplication overflow during resize stride(%d)*height(%d)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not resize image buffer!\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"jbig2_image_resize called with a different width (NYI)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"preventing heap overflow in jbig2_image_compose\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %ctx, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._Jbig2Image*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %image = alloca %struct._Jbig2Image*, align 8
  %stride = alloca i32, align 4
  %check = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %check to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %3, i32 0, i32 0
  %4 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %4, i64 1, i64 32) #4
  %5 = bitcast i8* %call to %struct._Jbig2Image*
  store %struct._Jbig2Image* %5, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Image* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %7, i32 3, i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0)) #4
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  %shr = ashr i32 %sub, 3
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %stride, align 4, !tbaa !5
  %9 = load i32, i32* %stride, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %10 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv2 = sext i32 %10 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %check, align 8, !tbaa !10
  %11 = load i64, i64* %check, align 8, !tbaa !10
  %12 = load i64, i64* %check, align 8, !tbaa !10
  %conv3 = trunc i64 %12 to i32
  %conv4 = sext i32 %conv3 to i64
  %cmp5 = icmp ne i64 %11, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %14 = load i32, i32* %stride, align 4, !tbaa !5
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call8 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %13, i32 3, i32 -1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i32 %14, i32 %15) #4
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator9 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 0
  %17 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator9, align 8, !tbaa !7
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %19 = bitcast %struct._Jbig2Image* %18 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %17, i8* %19) #4
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator11 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %20, i32 0, i32 0
  %21 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator11, align 8, !tbaa !7
  %22 = load i64, i64* %check, align 8, !tbaa !10
  %conv12 = trunc i64 %22 to i32
  %add13 = add nsw i32 %conv12, 1
  %conv14 = sext i32 %add13 to i64
  %call15 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %21, i64 %conv14, i64 1) #4
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %23, i32 0, i32 3
  store i8* %call15, i8** %data, align 8, !tbaa !11
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %24, i32 0, i32 3
  %25 = load i8*, i8** %data16, align 8, !tbaa !11
  %cmp17 = icmp eq i8* %25, null
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.10
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load i32, i32* %stride, align 4, !tbaa !5
  %28 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call20 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 3, i32 -1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0), i32 %27, i32 %28) #4
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator21 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %29, i32 0, i32 0
  %30 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator21, align 8, !tbaa !7
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %32 = bitcast %struct._Jbig2Image* %31 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %30, i8* %32) #4
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.10
  %33 = load i32, i32* %width.addr, align 4, !tbaa !5
  %34 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %34, i32 0, i32 0
  store i32 %33, i32* %width23, align 4, !tbaa !13
  %35 = load i32, i32* %height.addr, align 4, !tbaa !5
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %36, i32 0, i32 1
  store i32 %35, i32* %height24, align 4, !tbaa !14
  %37 = load i32, i32* %stride, align 4, !tbaa !5
  %38 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %stride25 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %38, i32 0, i32 2
  store i32 %37, i32* %stride25, align 4, !tbaa !15
  %39 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %refcount = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %39, i32 0, i32 4
  store i32 1, i32* %refcount, align 4, !tbaa !16
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  store %struct._Jbig2Image* %40, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.19, %if.then.7, %if.then
  %41 = bitcast i64* %check to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %retval
  ret %struct._Jbig2Image* %44
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Image* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %refcount = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 4
  %2 = load i32, i32* %refcount, align 4, !tbaa !16
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %refcount, align 4, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  ret %struct._Jbig2Image* %3
}

; Function Attrs: nounwind uwtable
define void @jbig2_image_release(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Image* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.3

if.end:                                           ; preds = %entry
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %refcount = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 4
  %2 = load i32, i32* %refcount, align 4, !tbaa !16
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %refcount, align 4, !tbaa !16
  %3 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %refcount1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %3, i32 0, i32 4
  %4 = load i32, i32* %refcount1, align 4, !tbaa !16
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  call void @jbig2_image_free(%struct._Jbig2Ctx* %5, %struct._Jbig2Image* %6) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @jbig2_image_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Image* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %3 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %3, i32 0, i32 3
  %4 = load i8*, i8** %data, align 8, !tbaa !11
  call void @jbig2_free(%struct._Jbig2Allocator* %2, i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator1 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 0
  %6 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator1, align 8, !tbaa !7
  %7 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %8 = bitcast %struct._Jbig2Image* %7 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %6, i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Jbig2Image* @jbig2_image_resize(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._Jbig2Image*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %check = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = load i32, i32* %width.addr, align 4, !tbaa !5
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width1, align 4, !tbaa !13
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %check to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 2
  %5 = load i32, i32* %stride, align 4, !tbaa !15
  %conv = sext i32 %5 to i64
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv2 = sext i32 %6 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %check, align 8, !tbaa !10
  %7 = load i64, i64* %check, align 8, !tbaa !10
  %8 = load i64, i64* %check, align 8, !tbaa !10
  %conv3 = trunc i64 %8 to i32
  %conv4 = sext i32 %conv3 to i64
  %cmp5 = icmp ne i64 %7, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride8 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %10, i32 0, i32 2
  %11 = load i32, i32* %stride8, align 4, !tbaa !15
  %12 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %9, i32 3, i32 -1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0), i32 %11, i32 %12) #4
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %13, i32 0, i32 0
  %14 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %15 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %15, i32 0, i32 3
  %16 = load i8*, i8** %data, align 8, !tbaa !11
  %17 = load i64, i64* %check, align 8, !tbaa !10
  %conv9 = trunc i64 %17 to i32
  %conv10 = sext i32 %conv9 to i64
  %call11 = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %14, i8* %16, i64 %conv10, i64 1) #4
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %18, i32 0, i32 3
  store i8* %call11, i8** %data12, align 8, !tbaa !11
  %19 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %19, i32 0, i32 3
  %20 = load i8*, i8** %data13, align 8, !tbaa !11
  %cmp14 = icmp eq i8* %20, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %21, i32 3, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #4
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %22 = load i32, i32* %height.addr, align 4, !tbaa !5
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height19 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %23, i32 0, i32 1
  %24 = load i32, i32* %height19, align 4, !tbaa !14
  %cmp20 = icmp sgt i32 %22, %24
  br i1 %cmp20, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %if.end.18
  %25 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %25, i32 0, i32 3
  %26 = load i8*, i8** %data23, align 8, !tbaa !11
  %27 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %27, i32 0, i32 1
  %28 = load i32, i32* %height24, align 4, !tbaa !14
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride25 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %29, i32 0, i32 2
  %30 = load i32, i32* %stride25, align 4, !tbaa !15
  %mul26 = mul nsw i32 %28, %30
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %31 = load i32, i32* %height.addr, align 4, !tbaa !5
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %32, i32 0, i32 1
  %33 = load i32, i32* %height27, align 4, !tbaa !14
  %sub = sub nsw i32 %31, %33
  %34 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride28 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %34, i32 0, i32 2
  %35 = load i32, i32* %stride28, align 4, !tbaa !15
  %mul29 = mul nsw i32 %sub, %35
  %conv30 = sext i32 %mul29 to i64
  %call31 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv30) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.22, %if.end.18
  %36 = load i32, i32* %height.addr, align 4, !tbaa !5
  %37 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height33 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %37, i32 0, i32 1
  store i32 %36, i32* %height33, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.16, %if.then.7
  %38 = bitcast i64* %check to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.else:                                          ; preds = %entry
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call34 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %39, i32 2, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %cleanup.cont
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  br label %return

return:                                           ; preds = %if.end.35, %cleanup
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %retval
  ret %struct._Jbig2Image* %40

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @jbig2_realloc(%struct._Jbig2Allocator*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @jbig2_image_compose_unopt(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %dst, %struct._Jbig2Image* %src, i32 %x, i32 %y, i32 %op) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %dst.addr = alloca %struct._Jbig2Image*, align 8
  %src.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sw = alloca i32, align 4
  %sh = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %dst, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %src, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %3, i32 0, i32 0
  %4 = load i32, i32* %width, align 4, !tbaa !13
  store i32 %4, i32* %sw, align 4, !tbaa !5
  %5 = bitcast i32* %sh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4, !tbaa !14
  store i32 %7, i32* %sh, align 4, !tbaa !5
  %8 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %sx, align 4, !tbaa !5
  %9 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %sy, align 4, !tbaa !5
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %11
  %12 = load i32, i32* %sx, align 4, !tbaa !5
  %add = add nsw i32 %12, %sub
  store i32 %add, i32* %sx, align 4, !tbaa !5
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 0, %13
  %14 = load i32, i32* %sw, align 4, !tbaa !5
  %sub2 = sub nsw i32 %14, %sub1
  store i32 %sub2, i32* %sw, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 0, %16
  %17 = load i32, i32* %sy, align 4, !tbaa !5
  %add6 = add nsw i32 %17, %sub5
  store i32 %add6, i32* %sy, align 4, !tbaa !5
  %18 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 0, %18
  %19 = load i32, i32* %sh, align 4, !tbaa !5
  %sub8 = sub nsw i32 %19, %sub7
  store i32 %sub8, i32* %sh, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %21 = load i32, i32* %sw, align 4, !tbaa !5
  %add10 = add nsw i32 %20, %21
  %22 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %22, i32 0, i32 0
  %23 = load i32, i32* %width11, align 4, !tbaa !13
  %cmp12 = icmp sge i32 %add10, %23
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %24, i32 0, i32 0
  %25 = load i32, i32* %width14, align 4, !tbaa !13
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  store i32 %sub15, i32* %sw, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.9
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load i32, i32* %sh, align 4, !tbaa !5
  %add17 = add nsw i32 %27, %28
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %29, i32 0, i32 1
  %30 = load i32, i32* %height18, align 4, !tbaa !14
  %cmp19 = icmp sge i32 %add17, %30
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.16
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %31, i32 0, i32 1
  %32 = load i32, i32* %height21, align 4, !tbaa !14
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub22 = sub nsw i32 %32, %33
  store i32 %sub22, i32* %sh, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.16
  %34 = load i32, i32* %op.addr, align 4, !tbaa !17
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.61
    i32 3, label %sw.bb.83
    i32 4, label %sw.bb.106
  ]

sw.bb:                                            ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %sw.bb
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %36 = load i32, i32* %sh, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %35, %36
  br i1 %cmp24, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load i32, i32* %sw, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %37, %38
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %39 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add28 = add nsw i32 %40, %41
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add29 = add nsw i32 %42, %43
  %44 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %46 = load i32, i32* %sx, align 4, !tbaa !5
  %add30 = add nsw i32 %45, %46
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %48 = load i32, i32* %sy, align 4, !tbaa !5
  %add31 = add nsw i32 %47, %48
  %call = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %44, i32 %add30, i32 %add31) #4
  %49 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %50, %51
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %53 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add33 = add nsw i32 %52, %53
  %call34 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %49, i32 %add32, i32 %add33) #4
  %or = or i32 %call, %call34
  %call35 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %39, i32 %add28, i32 %add29, i32 %or) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %55 = load i32, i32* %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %55, 1
  store i32 %inc37, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.58, %sw.bb.39
  %56 = load i32, i32* %j, align 4, !tbaa !5
  %57 = load i32, i32* %sh, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %56, %57
  br i1 %cmp41, label %for.body.42, label %for.end.60

for.body.42:                                      ; preds = %for.cond.40
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.55, %for.body.42
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %59 = load i32, i32* %sw, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %58, %59
  br i1 %cmp44, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.43
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %62 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add46 = add nsw i32 %61, %62
  %63 = load i32, i32* %j, align 4, !tbaa !5
  %64 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add47 = add nsw i32 %63, %64
  %65 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %67 = load i32, i32* %sx, align 4, !tbaa !5
  %add48 = add nsw i32 %66, %67
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %69 = load i32, i32* %sy, align 4, !tbaa !5
  %add49 = add nsw i32 %68, %69
  %call50 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %65, i32 %add48, i32 %add49) #4
  %70 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %72 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add51 = add nsw i32 %71, %72
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %74 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add52 = add nsw i32 %73, %74
  %call53 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %70, i32 %add51, i32 %add52) #4
  %and = and i32 %call50, %call53
  %call54 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %60, i32 %add46, i32 %add47, i32 %and) #4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.45
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %75, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !5
  br label %for.cond.43

for.end.57:                                       ; preds = %for.cond.43
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %inc59 = add nsw i32 %76, 1
  store i32 %inc59, i32* %j, align 4, !tbaa !5
  br label %for.cond.40

for.end.60:                                       ; preds = %for.cond.40
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.80, %sw.bb.61
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %78 = load i32, i32* %sh, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %77, %78
  br i1 %cmp63, label %for.body.64, label %for.end.82

for.body.64:                                      ; preds = %for.cond.62
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.77, %for.body.64
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %80 = load i32, i32* %sw, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %79, %80
  br i1 %cmp66, label %for.body.67, label %for.end.79

for.body.67:                                      ; preds = %for.cond.65
  %81 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %83 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add68 = add nsw i32 %82, %83
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %85 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %84, %85
  %86 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %88 = load i32, i32* %sx, align 4, !tbaa !5
  %add70 = add nsw i32 %87, %88
  %89 = load i32, i32* %j, align 4, !tbaa !5
  %90 = load i32, i32* %sy, align 4, !tbaa !5
  %add71 = add nsw i32 %89, %90
  %call72 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %86, i32 %add70, i32 %add71) #4
  %91 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add73 = add nsw i32 %92, %93
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %95 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add74 = add nsw i32 %94, %95
  %call75 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %91, i32 %add73, i32 %add74) #4
  %xor = xor i32 %call72, %call75
  %call76 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %81, i32 %add68, i32 %add69, i32 %xor) #4
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.67
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %96, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %97 = load i32, i32* %j, align 4, !tbaa !5
  %inc81 = add nsw i32 %97, 1
  store i32 %inc81, i32* %j, align 4, !tbaa !5
  br label %for.cond.62

for.end.82:                                       ; preds = %for.cond.62
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.103, %sw.bb.83
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %99 = load i32, i32* %sh, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %98, %99
  br i1 %cmp85, label %for.body.86, label %for.end.105

for.body.86:                                      ; preds = %for.cond.84
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.100, %for.body.86
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %101 = load i32, i32* %sw, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %100, %101
  br i1 %cmp88, label %for.body.89, label %for.end.102

for.body.89:                                      ; preds = %for.cond.87
  %102 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %103 = load i32, i32* %i, align 4, !tbaa !5
  %104 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %103, %104
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %106 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add91 = add nsw i32 %105, %106
  %107 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %109 = load i32, i32* %sx, align 4, !tbaa !5
  %add92 = add nsw i32 %108, %109
  %110 = load i32, i32* %j, align 4, !tbaa !5
  %111 = load i32, i32* %sy, align 4, !tbaa !5
  %add93 = add nsw i32 %110, %111
  %call94 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %107, i32 %add92, i32 %add93) #4
  %112 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %114 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add95 = add nsw i32 %113, %114
  %115 = load i32, i32* %j, align 4, !tbaa !5
  %116 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add96 = add nsw i32 %115, %116
  %call97 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %112, i32 %add95, i32 %add96) #4
  %cmp98 = icmp eq i32 %call94, %call97
  %conv = zext i1 %cmp98 to i32
  %call99 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %102, i32 %add90, i32 %add91, i32 %conv) #4
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.89
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %117, 1
  store i32 %inc101, i32* %i, align 4, !tbaa !5
  br label %for.cond.87

for.end.102:                                      ; preds = %for.cond.87
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %118 = load i32, i32* %j, align 4, !tbaa !5
  %inc104 = add nsw i32 %118, 1
  store i32 %inc104, i32* %j, align 4, !tbaa !5
  br label %for.cond.84

for.end.105:                                      ; preds = %for.cond.84
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.124, %sw.bb.106
  %119 = load i32, i32* %j, align 4, !tbaa !5
  %120 = load i32, i32* %sh, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %119, %120
  br i1 %cmp108, label %for.body.110, label %for.end.126

for.body.110:                                     ; preds = %for.cond.107
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.121, %for.body.110
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %122 = load i32, i32* %sw, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %121, %122
  br i1 %cmp112, label %for.body.114, label %for.end.123

for.body.114:                                     ; preds = %for.cond.111
  %123 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add115 = add nsw i32 %124, %125
  %126 = load i32, i32* %j, align 4, !tbaa !5
  %127 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add116 = add nsw i32 %126, %127
  %128 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %130 = load i32, i32* %sx, align 4, !tbaa !5
  %add117 = add nsw i32 %129, %130
  %131 = load i32, i32* %j, align 4, !tbaa !5
  %132 = load i32, i32* %sy, align 4, !tbaa !5
  %add118 = add nsw i32 %131, %132
  %call119 = call i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %128, i32 %add117, i32 %add118) #4
  %call120 = call i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %123, i32 %add115, i32 %add116, i32 %call119) #4
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.114
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %inc122 = add nsw i32 %133, 1
  store i32 %inc122, i32* %i, align 4, !tbaa !5
  br label %for.cond.111

for.end.123:                                      ; preds = %for.cond.111
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.123
  %134 = load i32, i32* %j, align 4, !tbaa !5
  %inc125 = add nsw i32 %134, 1
  store i32 %inc125, i32* %j, align 4, !tbaa !5
  br label %for.cond.107

for.end.126:                                      ; preds = %for.cond.107
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.23, %for.end.126, %for.end.105, %for.end.82, %for.end.60, %for.end.38
  %135 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %sh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %sw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_image_set_pixel(%struct._Jbig2Image* %image, i32 %x, i32 %y, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %scratch = alloca i32, align 4
  %mask = alloca i32, align 4
  %bit = alloca i32, align 4
  %byte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !13
  store i32 %2, i32* %w, align 4, !tbaa !5
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !14
  store i32 %5, i32* %h, align 4, !tbaa !5
  %6 = bitcast i32* %scratch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %w, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %11, %12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %h, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %14, %15
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false.3
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %16, 3
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %18, i32 0, i32 2
  %19 = load i32, i32* %stride, align 4, !tbaa !15
  %mul = mul nsw i32 %17, %19
  %add = add nsw i32 %shr, %mul
  store i32 %add, i32* %byte, align 4, !tbaa !5
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %20, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bit, align 4, !tbaa !5
  %21 = load i32, i32* %bit, align 4, !tbaa !5
  %shl = shl i32 1, %21
  %xor = xor i32 %shl, 255
  store i32 %xor, i32* %mask, align 4, !tbaa !5
  %22 = load i32, i32* %byte, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %23, i32 0, i32 3
  %24 = load i8*, i8** %data, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %mask, align 4, !tbaa !5
  %and7 = and i32 %conv, %26
  store i32 %and7, i32* %scratch, align 4, !tbaa !5
  %27 = load i32, i32* %scratch, align 4, !tbaa !5
  %28 = load i32, i32* %value.addr, align 4, !tbaa !5
  %29 = load i32, i32* %bit, align 4, !tbaa !5
  %shl8 = shl i32 %28, %29
  %or = or i32 %27, %shl8
  %conv9 = trunc i32 %or to i8
  %30 = load i32, i32* %byte, align 4, !tbaa !5
  %idxprom10 = sext i32 %30 to i64
  %31 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %31, i32 0, i32 3
  %32 = load i8*, i8** %data11, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds i8, i8* %32, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx12, align 1, !tbaa !17
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %33 = bitcast i32* %byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %scratch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_image_get_pixel(%struct._Jbig2Image* %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %byte = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4, !tbaa !13
  store i32 %2, i32* %w, align 4, !tbaa !5
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4, !tbaa !14
  store i32 %5, i32* %h, align 4, !tbaa !5
  %6 = bitcast i32* %byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %7, 3
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %9, i32 0, i32 2
  %10 = load i32, i32* %stride, align 4, !tbaa !15
  %mul = mul nsw i32 %8, %10
  %add = add nsw i32 %shr, %mul
  store i32 %add, i32* %byte, align 4, !tbaa !5
  %11 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %12, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bit, align 4, !tbaa !5
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %w, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %14, %15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %17, %18
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false.3
  %19 = load i32, i32* %byte, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %20, i32 0, i32 3
  %21 = load i8*, i8** %data, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %conv = zext i8 %22 to i32
  %23 = load i32, i32* %bit, align 4, !tbaa !5
  %shr7 = ashr i32 %conv, %23
  %and8 = and i32 %shr7, 1
  store i32 %and8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_image_compose(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %dst, %struct._Jbig2Image* %src, i32 %x, i32 %y, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %dst.addr = alloca %struct._Jbig2Image*, align 8
  %src.addr = alloca %struct._Jbig2Image*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %leftbyte = alloca i32, align 4
  %rightbyte = alloca i32, align 4
  %shift = alloca i32, align 4
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dd = alloca i8*, align 8
  %mask = alloca i8, align 1
  %rightmask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %overlap = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %dst, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %src, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %leftbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rightbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %dd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  call void @llvm.lifetime.start(i64 1, i8* %rightmask) #1
  %11 = load i32, i32* %op.addr, align 4, !tbaa !17
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %op.addr, align 4, !tbaa !17
  %call = call i32 @jbig2_image_compose_unopt(%struct._Jbig2Ctx* %12, %struct._Jbig2Image* %13, %struct._Jbig2Image* %14, i32 %15, i32 %16, i32 %17) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %18, i32 0, i32 0
  %19 = load i32, i32* %width, align 4, !tbaa !13
  store i32 %19, i32* %w, align 4, !tbaa !5
  %20 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %20, i32 0, i32 1
  %21 = load i32, i32* %height, align 4, !tbaa !14
  store i32 %21, i32* %h, align 4, !tbaa !5
  %22 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %22, i32 0, i32 3
  %23 = load i8*, i8** %data, align 8, !tbaa !11
  store i8* %23, i8** %ss, align 8, !tbaa !1
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %24, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %w, align 4, !tbaa !5
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %27, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h, align 4, !tbaa !5
  %add6 = add nsw i32 %29, %28
  store i32 %add6, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %30 = load i32, i32* %x.addr, align 4, !tbaa !5
  %31 = load i32, i32* %w, align 4, !tbaa !5
  %add8 = add nsw i32 %30, %31
  %32 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %32, i32 0, i32 0
  %33 = load i32, i32* %width9, align 4, !tbaa !13
  %cmp10 = icmp slt i32 %add8, %33
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %34 = load i32, i32* %w, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %35, i32 0, i32 0
  %36 = load i32, i32* %width11, align 4, !tbaa !13
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %36, %37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %w, align 4, !tbaa !5
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %39 = load i32, i32* %h, align 4, !tbaa !5
  %add12 = add nsw i32 %38, %39
  %40 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %height13 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %40, i32 0, i32 1
  %41 = load i32, i32* %height13, align 4, !tbaa !14
  %cmp14 = icmp slt i32 %add12, %41
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %42 = load i32, i32* %h, align 4, !tbaa !5
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end
  %43 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %height17 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %43, i32 0, i32 1
  %44 = load i32, i32* %height17, align 4, !tbaa !14
  %45 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %44, %45
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i32 [ %42, %cond.true.15 ], [ %sub18, %cond.false.16 ]
  store i32 %cond20, i32* %h, align 4, !tbaa !5
  %46 = load i32, i32* %w, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %46, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %47 = load i32, i32* %h, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %47, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %cond.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %48, 3
  store i32 %shr, i32* %leftbyte, align 4, !tbaa !5
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %50 = load i32, i32* %w, align 4, !tbaa !5
  %add25 = add nsw i32 %49, %50
  %sub26 = sub nsw i32 %add25, 1
  %shr27 = ashr i32 %sub26, 3
  store i32 %shr27, i32* %rightbyte, align 4, !tbaa !5
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %51, 7
  store i32 %and, i32* %shift, align 4, !tbaa !5
  %52 = load i8*, i8** %ss, align 8, !tbaa !1
  store i8* %52, i8** %s, align 8, !tbaa !1
  %53 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %53, i32 0, i32 3
  %54 = load i8*, i8** %data28, align 8, !tbaa !11
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %56 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %56, i32 0, i32 2
  %57 = load i32, i32* %stride, align 4, !tbaa !15
  %mul = mul nsw i32 %55, %57
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %58 = load i32, i32* %leftbyte, align 4, !tbaa !5
  %idx.ext29 = sext i32 %58 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext29
  store i8* %add.ptr30, i8** %dd, align 8, !tbaa !1
  store i8* %add.ptr30, i8** %d, align 8, !tbaa !1
  %59 = load i8*, i8** %d, align 8, !tbaa !1
  %60 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %60, i32 0, i32 3
  %61 = load i8*, i8** %data31, align 8, !tbaa !11
  %cmp32 = icmp ult i8* %59, %61
  br i1 %cmp32, label %if.then.54, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.24
  %62 = load i32, i32* %leftbyte, align 4, !tbaa !5
  %63 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride34 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %63, i32 0, i32 2
  %64 = load i32, i32* %stride34, align 4, !tbaa !15
  %cmp35 = icmp sgt i32 %62, %64
  br i1 %cmp35, label %if.then.54, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %65 = load i32, i32* %h, align 4, !tbaa !5
  %66 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride37 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %66, i32 0, i32 2
  %67 = load i32, i32* %stride37, align 4, !tbaa !15
  %mul38 = mul nsw i32 %65, %67
  %cmp39 = icmp slt i32 %mul38, 0
  br i1 %cmp39, label %if.then.54, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %68 = load i8*, i8** %d, align 8, !tbaa !1
  %69 = load i32, i32* %leftbyte, align 4, !tbaa !5
  %idx.ext41 = sext i32 %69 to i64
  %idx.neg = sub i64 0, %idx.ext41
  %add.ptr42 = getelementptr inbounds i8, i8* %68, i64 %idx.neg
  %70 = load i32, i32* %h, align 4, !tbaa !5
  %71 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride43 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %71, i32 0, i32 2
  %72 = load i32, i32* %stride43, align 4, !tbaa !15
  %mul44 = mul nsw i32 %70, %72
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr42, i64 %idx.ext45
  %73 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %73, i32 0, i32 3
  %74 = load i8*, i8** %data47, align 8, !tbaa !11
  %75 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %height48 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %75, i32 0, i32 1
  %76 = load i32, i32* %height48, align 4, !tbaa !14
  %77 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride49 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %77, i32 0, i32 2
  %78 = load i32, i32* %stride49, align 4, !tbaa !15
  %mul50 = mul nsw i32 %76, %78
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %74, i64 %idx.ext51
  %cmp53 = icmp ugt i8* %add.ptr46, %add.ptr52
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false.33, %if.end.24
  %79 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call55 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %79, i32 3, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 %call55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.40
  %80 = load i32, i32* %leftbyte, align 4, !tbaa !5
  %81 = load i32, i32* %rightbyte, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %80, %81
  br i1 %cmp57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.56
  %82 = load i32, i32* %w, align 4, !tbaa !5
  %shr59 = ashr i32 256, %82
  %sub60 = sub nsw i32 256, %shr59
  %conv = trunc i32 %sub60 to i8
  store i8 %conv, i8* %mask, align 1, !tbaa !17
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.58
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %84 = load i32, i32* %h, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %83, %84
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i8*, i8** %s, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !17
  %conv63 = zext i8 %86 to i32
  %87 = load i8, i8* %mask, align 1, !tbaa !17
  %conv64 = zext i8 %87 to i32
  %and65 = and i32 %conv63, %conv64
  %88 = load i32, i32* %shift, align 4, !tbaa !5
  %shr66 = ashr i32 %and65, %88
  %89 = load i8*, i8** %d, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !17
  %conv67 = zext i8 %90 to i32
  %or = or i32 %conv67, %shr66
  %conv68 = trunc i32 %or to i8
  store i8 %conv68, i8* %89, align 1, !tbaa !17
  %91 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride69 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %91, i32 0, i32 2
  %92 = load i32, i32* %stride69, align 4, !tbaa !15
  %93 = load i8*, i8** %d, align 8, !tbaa !1
  %idx.ext70 = sext i32 %92 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %93, i64 %idx.ext70
  store i8* %add.ptr71, i8** %d, align 8, !tbaa !1
  %94 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %stride72 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %94, i32 0, i32 2
  %95 = load i32, i32* %stride72, align 4, !tbaa !15
  %96 = load i8*, i8** %s, align 8, !tbaa !1
  %idx.ext73 = sext i32 %95 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %96, i64 %idx.ext73
  store i8* %add.ptr74, i8** %s, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %97 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.220

if.else:                                          ; preds = %if.end.56
  %98 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %98, 0
  br i1 %cmp75, label %if.then.77, label %if.else.118

if.then.77:                                       ; preds = %if.else
  %99 = load i32, i32* %w, align 4, !tbaa !5
  %and78 = and i32 %99, 7
  %tobool = icmp ne i32 %and78, 0
  br i1 %tobool, label %cond.true.79, label %cond.false.83

cond.true.79:                                     ; preds = %if.then.77
  %100 = load i32, i32* %w, align 4, !tbaa !5
  %and80 = and i32 %100, 7
  %sub81 = sub nsw i32 8, %and80
  %shl = shl i32 1, %sub81
  %sub82 = sub nsw i32 256, %shl
  br label %cond.end.84

cond.false.83:                                    ; preds = %if.then.77
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.79
  %cond85 = phi i32 [ %sub82, %cond.true.79 ], [ 255, %cond.false.83 ]
  %conv86 = trunc i32 %cond85 to i8
  store i8 %conv86, i8* %rightmask, align 1, !tbaa !17
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.115, %cond.end.84
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %102 = load i32, i32* %h, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %101, %102
  br i1 %cmp88, label %for.body.90, label %for.end.117

for.body.90:                                      ; preds = %for.cond.87
  %103 = load i32, i32* %leftbyte, align 4, !tbaa !5
  store i32 %103, i32* %i, align 4, !tbaa !5
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.100, %for.body.90
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %rightbyte, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %104, %105
  br i1 %cmp92, label %for.body.94, label %for.end.102

for.body.94:                                      ; preds = %for.cond.91
  %106 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %107 = load i8, i8* %106, align 1, !tbaa !17
  %conv95 = zext i8 %107 to i32
  %108 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr96 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr96, i8** %d, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !17
  %conv97 = zext i8 %109 to i32
  %or98 = or i32 %conv97, %conv95
  %conv99 = trunc i32 %or98 to i8
  store i8 %conv99, i8* %108, align 1, !tbaa !17
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.94
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %110, 1
  store i32 %inc101, i32* %i, align 4, !tbaa !5
  br label %for.cond.91

for.end.102:                                      ; preds = %for.cond.91
  %111 = load i8*, i8** %s, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !17
  %conv103 = zext i8 %112 to i32
  %113 = load i8, i8* %rightmask, align 1, !tbaa !17
  %conv104 = zext i8 %113 to i32
  %and105 = and i32 %conv103, %conv104
  %114 = load i8*, i8** %d, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !17
  %conv106 = zext i8 %115 to i32
  %or107 = or i32 %conv106, %and105
  %conv108 = trunc i32 %or107 to i8
  store i8 %conv108, i8* %114, align 1, !tbaa !17
  %116 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride109 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %116, i32 0, i32 2
  %117 = load i32, i32* %stride109, align 4, !tbaa !15
  %118 = load i8*, i8** %dd, align 8, !tbaa !1
  %idx.ext110 = sext i32 %117 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %118, i64 %idx.ext110
  store i8* %add.ptr111, i8** %dd, align 8, !tbaa !1
  store i8* %add.ptr111, i8** %d, align 8, !tbaa !1
  %119 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %stride112 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %119, i32 0, i32 2
  %120 = load i32, i32* %stride112, align 4, !tbaa !15
  %121 = load i8*, i8** %ss, align 8, !tbaa !1
  %idx.ext113 = sext i32 %120 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %121, i64 %idx.ext113
  store i8* %add.ptr114, i8** %ss, align 8, !tbaa !1
  store i8* %add.ptr114, i8** %s, align 8, !tbaa !1
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.end.102
  %122 = load i32, i32* %j, align 4, !tbaa !5
  %inc116 = add nsw i32 %122, 1
  store i32 %inc116, i32* %j, align 4, !tbaa !5
  br label %for.cond.87

for.end.117:                                      ; preds = %for.cond.87
  br label %if.end.219

if.else.118:                                      ; preds = %if.else
  %123 = bitcast i32* %overlap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  %124 = load i32, i32* %w, align 4, !tbaa !5
  %add119 = add nsw i32 %124, 7
  %shr120 = ashr i32 %add119, 3
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %126 = load i32, i32* %w, align 4, !tbaa !5
  %add121 = add nsw i32 %125, %126
  %add122 = add nsw i32 %add121, 7
  %shr123 = ashr i32 %add122, 3
  %127 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr124 = ashr i32 %127, 3
  %sub125 = sub nsw i32 %shr123, %shr124
  %cmp126 = icmp slt i32 %shr120, %sub125
  %conv127 = zext i1 %cmp126 to i32
  store i32 %conv127, i32* %overlap, align 4, !tbaa !5
  %128 = load i32, i32* %shift, align 4, !tbaa !5
  %shl128 = shl i32 1, %128
  %sub129 = sub nsw i32 256, %shl128
  %conv130 = trunc i32 %sub129 to i8
  store i8 %conv130, i8* %mask, align 1, !tbaa !17
  %129 = load i32, i32* %overlap, align 4, !tbaa !5
  %tobool131 = icmp ne i32 %129, 0
  br i1 %tobool131, label %if.then.132, label %if.else.140

if.then.132:                                      ; preds = %if.else.118
  %130 = load i32, i32* %x.addr, align 4, !tbaa !5
  %131 = load i32, i32* %w, align 4, !tbaa !5
  %add133 = add nsw i32 %130, %131
  %and134 = and i32 %add133, 7
  %shr135 = ashr i32 256, %and134
  %sub136 = sub nsw i32 256, %shr135
  %132 = load i32, i32* %shift, align 4, !tbaa !5
  %sub137 = sub nsw i32 8, %132
  %shr138 = ashr i32 %sub136, %sub137
  %conv139 = trunc i32 %shr138 to i8
  store i8 %conv139, i8* %rightmask, align 1, !tbaa !17
  br label %if.end.145

if.else.140:                                      ; preds = %if.else.118
  %133 = load i32, i32* %w, align 4, !tbaa !5
  %and141 = and i32 %133, 7
  %shr142 = ashr i32 256, %and141
  %sub143 = sub nsw i32 256, %shr142
  %conv144 = trunc i32 %sub143 to i8
  store i8 %conv144, i8* %rightmask, align 1, !tbaa !17
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.140, %if.then.132
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.216, %if.end.145
  %134 = load i32, i32* %j, align 4, !tbaa !5
  %135 = load i32, i32* %h, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %134, %135
  br i1 %cmp147, label %for.body.149, label %for.end.218

for.body.149:                                     ; preds = %for.cond.146
  %136 = load i8*, i8** %s, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !17
  %conv150 = zext i8 %137 to i32
  %138 = load i8, i8* %mask, align 1, !tbaa !17
  %conv151 = zext i8 %138 to i32
  %and152 = and i32 %conv150, %conv151
  %139 = load i32, i32* %shift, align 4, !tbaa !5
  %shr153 = ashr i32 %and152, %139
  %140 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr154, i8** %d, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !17
  %conv155 = zext i8 %141 to i32
  %or156 = or i32 %conv155, %shr153
  %conv157 = trunc i32 %or156 to i8
  store i8 %conv157, i8* %140, align 1, !tbaa !17
  %142 = load i32, i32* %leftbyte, align 4, !tbaa !5
  store i32 %142, i32* %i, align 4, !tbaa !5
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.180, %for.body.149
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %144 = load i32, i32* %rightbyte, align 4, !tbaa !5
  %sub159 = sub nsw i32 %144, 1
  %cmp160 = icmp slt i32 %143, %sub159
  br i1 %cmp160, label %for.body.162, label %for.end.182

for.body.162:                                     ; preds = %for.cond.158
  %145 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr163, i8** %s, align 8, !tbaa !1
  %146 = load i8, i8* %145, align 1, !tbaa !17
  %conv164 = zext i8 %146 to i32
  %147 = load i8, i8* %mask, align 1, !tbaa !17
  %conv165 = zext i8 %147 to i32
  %neg = xor i32 %conv165, -1
  %and166 = and i32 %conv164, %neg
  %148 = load i32, i32* %shift, align 4, !tbaa !5
  %sub167 = sub nsw i32 8, %148
  %shl168 = shl i32 %and166, %sub167
  %149 = load i8*, i8** %d, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !17
  %conv169 = zext i8 %150 to i32
  %or170 = or i32 %conv169, %shl168
  %conv171 = trunc i32 %or170 to i8
  store i8 %conv171, i8* %149, align 1, !tbaa !17
  %151 = load i8*, i8** %s, align 8, !tbaa !1
  %152 = load i8, i8* %151, align 1, !tbaa !17
  %conv172 = zext i8 %152 to i32
  %153 = load i8, i8* %mask, align 1, !tbaa !17
  %conv173 = zext i8 %153 to i32
  %and174 = and i32 %conv172, %conv173
  %154 = load i32, i32* %shift, align 4, !tbaa !5
  %shr175 = ashr i32 %and174, %154
  %155 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr176 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr176, i8** %d, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !17
  %conv177 = zext i8 %156 to i32
  %or178 = or i32 %conv177, %shr175
  %conv179 = trunc i32 %or178 to i8
  store i8 %conv179, i8* %155, align 1, !tbaa !17
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.162
  %157 = load i32, i32* %i, align 4, !tbaa !5
  %inc181 = add nsw i32 %157, 1
  store i32 %inc181, i32* %i, align 4, !tbaa !5
  br label %for.cond.158

for.end.182:                                      ; preds = %for.cond.158
  %158 = load i32, i32* %overlap, align 4, !tbaa !5
  %tobool183 = icmp ne i32 %158, 0
  br i1 %tobool183, label %if.then.184, label %if.else.193

if.then.184:                                      ; preds = %for.end.182
  %159 = load i8*, i8** %s, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !17
  %conv185 = zext i8 %160 to i32
  %161 = load i8, i8* %rightmask, align 1, !tbaa !17
  %conv186 = zext i8 %161 to i32
  %and187 = and i32 %conv185, %conv186
  %162 = load i32, i32* %shift, align 4, !tbaa !5
  %sub188 = sub nsw i32 8, %162
  %shl189 = shl i32 %and187, %sub188
  %163 = load i8*, i8** %d, align 8, !tbaa !1
  %164 = load i8, i8* %163, align 1, !tbaa !17
  %conv190 = zext i8 %164 to i32
  %or191 = or i32 %conv190, %shl189
  %conv192 = trunc i32 %or191 to i8
  store i8 %conv192, i8* %163, align 1, !tbaa !17
  br label %if.end.209

if.else.193:                                      ; preds = %for.end.182
  %165 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %165, i64 0
  %166 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %conv194 = zext i8 %166 to i32
  %167 = load i8, i8* %mask, align 1, !tbaa !17
  %conv195 = zext i8 %167 to i32
  %neg196 = xor i32 %conv195, -1
  %and197 = and i32 %conv194, %neg196
  %168 = load i32, i32* %shift, align 4, !tbaa !5
  %sub198 = sub nsw i32 8, %168
  %shl199 = shl i32 %and197, %sub198
  %169 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load i8, i8* %arrayidx200, align 1, !tbaa !17
  %conv201 = zext i8 %170 to i32
  %171 = load i8, i8* %rightmask, align 1, !tbaa !17
  %conv202 = zext i8 %171 to i32
  %and203 = and i32 %conv201, %conv202
  %172 = load i32, i32* %shift, align 4, !tbaa !5
  %shr204 = ashr i32 %and203, %172
  %or205 = or i32 %shl199, %shr204
  %173 = load i8*, i8** %d, align 8, !tbaa !1
  %174 = load i8, i8* %173, align 1, !tbaa !17
  %conv206 = zext i8 %174 to i32
  %or207 = or i32 %conv206, %or205
  %conv208 = trunc i32 %or207 to i8
  store i8 %conv208, i8* %173, align 1, !tbaa !17
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.193, %if.then.184
  %175 = load %struct._Jbig2Image*, %struct._Jbig2Image** %dst.addr, align 8, !tbaa !1
  %stride210 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %175, i32 0, i32 2
  %176 = load i32, i32* %stride210, align 4, !tbaa !15
  %177 = load i8*, i8** %dd, align 8, !tbaa !1
  %idx.ext211 = sext i32 %176 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %177, i64 %idx.ext211
  store i8* %add.ptr212, i8** %dd, align 8, !tbaa !1
  store i8* %add.ptr212, i8** %d, align 8, !tbaa !1
  %178 = load %struct._Jbig2Image*, %struct._Jbig2Image** %src.addr, align 8, !tbaa !1
  %stride213 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %178, i32 0, i32 2
  %179 = load i32, i32* %stride213, align 4, !tbaa !15
  %180 = load i8*, i8** %ss, align 8, !tbaa !1
  %idx.ext214 = sext i32 %179 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %180, i64 %idx.ext214
  store i8* %add.ptr215, i8** %ss, align 8, !tbaa !1
  store i8* %add.ptr215, i8** %s, align 8, !tbaa !1
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.209
  %181 = load i32, i32* %j, align 4, !tbaa !5
  %inc217 = add nsw i32 %181, 1
  store i32 %inc217, i32* %j, align 4, !tbaa !5
  br label %for.cond.146

for.end.218:                                      ; preds = %for.cond.146
  %182 = bitcast i32* %overlap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  br label %if.end.219

if.end.219:                                       ; preds = %for.end.218, %for.end.117
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.220, %if.then.54, %if.then.23, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %rightmask) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  %183 = bitcast i8** %dd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i8** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %rightbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %leftbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = load i32, i32* %retval
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define void @jbig2_image_clear(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Image* %image, i32 %value) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %value.addr = alloca i32, align 4
  %fill = alloca i8, align 1
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %fill) #1
  %0 = load i32, i32* %value.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 255, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %fill, align 1, !tbaa !17
  %1 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %1, i32 0, i32 3
  %2 = load i8*, i8** %data, align 8, !tbaa !11
  %3 = load i8, i8* %fill, align 1, !tbaa !17
  %conv1 = zext i8 %3 to i32
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %4, i32 0, i32 2
  %5 = load i32, i32* %stride, align 4, !tbaa !15
  %6 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4, !tbaa !14
  %mul = mul nsw i32 %5, %7
  %conv2 = sext i32 %mul to i64
  %call = call i8* @memset(i8* %2, i32 %conv1, i64 %conv2) #5
  call void @llvm.lifetime.end(i64 1, i8* %fill) #1
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
!7 = !{!8, !2, i64 0}
!8 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !3, i64 64, !3, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!9 = !{!"long", !3, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!12, !2, i64 16}
!12 = !{!"_Jbig2Image", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24}
!13 = !{!12, !6, i64 0}
!14 = !{!12, !6, i64 4}
!15 = !{!12, !6, i64 8}
!16 = !{!12, !6, i64 24}
!17 = !{!3, !3, i64 0}
