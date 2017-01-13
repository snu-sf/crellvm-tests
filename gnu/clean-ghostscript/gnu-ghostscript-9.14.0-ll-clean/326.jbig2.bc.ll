; ModuleID = './jbig2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._Jbig2GlobalCtx = type opaque
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }
%struct.Jbig2WordStreamBuf = type { %struct._Jbig2WordStream, i8*, i64 }

@.str = private unnamed_addr constant [46 x i8] c"jbig2_error: error in generating error string\00", align 1
@jbig2_default_allocator = internal global %struct._Jbig2Allocator { i8* (%struct._Jbig2Allocator*, i64)* @jbig2_default_alloc, void (%struct._Jbig2Allocator*, i8*)* @jbig2_default_free, i8* (%struct._Jbig2Allocator*, i8*, i64)* @jbig2_default_realloc }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"initial context allocation failed!\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"initial segments allocation failed!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"initial pages allocation failed!\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"failed to allocate ctx->buf in jbig2_data_in\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to allocate buf in jbig2_data_in\00", align 1
@jbig2_data_in.jbig2_id_string = internal constant [8 x i8] c"\97JB2\0D\0A\1A\0A", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Not a JBIG2 file header\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"reserved bits (2-7) of file header flags are not zero (0x%02x)\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"file header indicates a single page document\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"file header indicates a %d page document\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"file header indicates sequential organization\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"file header indicates random-access organization\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Garbage beyond end of file\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"failed to allocate Jbig2WordStreamBuf in jbig2_word_stream_buf_new\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"jbig2 decoder FATAL ERROR: %s\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c" (segment 0x%02x)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @jbig2_alloc(%struct._Jbig2Allocator* %allocator, i64 %size, i64 %num) #0 {
entry:
  %retval = alloca i8*, align 8
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %size.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  store i64 %num, i64* %num.addr, align 8, !tbaa !5
  %0 = load i64, i64* %num.addr, align 8, !tbaa !5
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8, !tbaa !5
  %2 = load i64, i64* %num.addr, align 8, !tbaa !5
  %div = udiv i64 -256, %2
  %cmp1 = icmp uge i64 %1, %div
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %alloc = getelementptr inbounds %struct._Jbig2Allocator, %struct._Jbig2Allocator* %3, i32 0, i32 0
  %4 = load i8* (%struct._Jbig2Allocator*, i64)*, i8* (%struct._Jbig2Allocator*, i64)** %alloc, align 8, !tbaa !7
  %5 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %6 = load i64, i64* %size.addr, align 8, !tbaa !5
  %7 = load i64, i64* %num.addr, align 8, !tbaa !5
  %mul = mul i64 %6, %7
  %call = call i8* %4(%struct._Jbig2Allocator* %5, i64 %mul) #5
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define void @jbig2_free(%struct._Jbig2Allocator* %allocator, i8* %p) #0 {
entry:
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %p.addr = alloca i8*, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct._Jbig2Allocator, %struct._Jbig2Allocator* %0, i32 0, i32 1
  %1 = load void (%struct._Jbig2Allocator*, i8*)*, void (%struct._Jbig2Allocator*, i8*)** %free, align 8, !tbaa !9
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void %1(%struct._Jbig2Allocator* %2, i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jbig2_realloc(%struct._Jbig2Allocator* %allocator, i8* %p, i64 %size, i64 %num) #0 {
entry:
  %retval = alloca i8*, align 8
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  store i64 %num, i64* %num.addr, align 8, !tbaa !5
  %0 = load i64, i64* %num.addr, align 8, !tbaa !5
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8, !tbaa !5
  %2 = load i64, i64* %num.addr, align 8, !tbaa !5
  %div = udiv i64 -256, %2
  %cmp1 = icmp uge i64 %1, %div
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %realloc = getelementptr inbounds %struct._Jbig2Allocator, %struct._Jbig2Allocator* %3, i32 0, i32 2
  %4 = load i8* (%struct._Jbig2Allocator*, i8*, i64)*, i8* (%struct._Jbig2Allocator*, i8*, i64)** %realloc, align 8, !tbaa !10
  %5 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %7 = load i64, i64* %size.addr, align 8, !tbaa !5
  %8 = load i64, i64* %num.addr, align 8, !tbaa !5
  %mul = mul i64 %7, %8
  %call = call i8* %4(%struct._Jbig2Allocator* %5, i8* %6, i64 %mul) #5
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_error(%struct._Jbig2Ctx* %ctx, i32 %severity, i32 %segment_number, i8* %fmt, ...) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %severity.addr = alloca i32, align 4
  %segment_number.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %severity, i32* %severity.addr, align 4, !tbaa !11
  store i32 %segment_number, i32* %segment_number.addr, align 4, !tbaa !12
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %4 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %4, %struct.__va_list_tag* %arraydecay3) #6
  store i32 %call, i32* %n, align 4, !tbaa !12
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %5 = load i32, i32* %n, align 4, !tbaa !12
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %n, align 4, !tbaa !12
  %conv = sext i32 %6 to i64
  %cmp6 = icmp eq i64 %conv, 1024
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call9 = call i8* @strncpy(i8* %arraydecay8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i64 1024) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %error_callback = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %7, i32 0, i32 3
  %8 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback, align 8, !tbaa !14
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %error_callback_data = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %9, i32 0, i32 4
  %10 = load i8*, i8** %error_callback_data, align 8, !tbaa !16
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %11 = load i32, i32* %severity.addr, align 4, !tbaa !11
  %12 = load i32, i32* %segment_number.addr, align 4, !tbaa !12
  %call11 = call i32 %8(i8* %10, i8* %arraydecay10, i32 %11, i32 %12) #5
  store i32 %call11, i32* %code, align 4, !tbaa !12
  %13 = load i32, i32* %severity.addr, align 4, !tbaa !11
  %cmp12 = icmp eq i32 %13, 3
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -1, i32* %code, align 4, !tbaa !12
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !12
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #1
  %18 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %18) #1
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._Jbig2Ctx* @jbig2_ctx_new(%struct._Jbig2Allocator* %allocator, i32 %options, %struct._Jbig2GlobalCtx* %global_ctx, i32 (i8*, i8*, i32, i32)* %error_callback, i8* %error_callback_data) #0 {
entry:
  %retval = alloca %struct._Jbig2Ctx*, align 8
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %options.addr = alloca i32, align 4
  %global_ctx.addr = alloca %struct._Jbig2GlobalCtx*, align 8
  %error_callback.addr = alloca i32 (i8*, i8*, i32, i32)*, align 8
  %error_callback_data.addr = alloca i8*, align 8
  %result = alloca %struct._Jbig2Ctx*, align 8
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !11
  store %struct._Jbig2GlobalCtx* %global_ctx, %struct._Jbig2GlobalCtx** %global_ctx.addr, align 8, !tbaa !1
  store i32 (i8*, i8*, i32, i32)* %error_callback, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  store i8* %error_callback_data, i8** %error_callback_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Ctx** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Allocator* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Jbig2Allocator* @jbig2_default_allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i32 (i8*, i8*, i32, i32)* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 (i8*, i8*, i32, i32)* @jbig2_default_error, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %3, i64 112, i64 1) #5
  %4 = bitcast i8* %call to %struct._Jbig2Ctx*
  store %struct._Jbig2Ctx* %4, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %cmp4 = icmp eq %struct._Jbig2Ctx* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %error_callback_data.addr, align 8, !tbaa !1
  %call6 = call i32 %6(i8* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 3, i32 -1) #5
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  store %struct._Jbig2Ctx* %8, %struct._Jbig2Ctx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %allocator8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %10, i32 0, i32 0
  store %struct._Jbig2Allocator* %9, %struct._Jbig2Allocator** %allocator8, align 8, !tbaa !17
  %11 = load i32, i32* %options.addr, align 4, !tbaa !11
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %options9 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %12, i32 0, i32 1
  store i32 %11, i32* %options9, align 4, !tbaa !18
  %13 = load %struct._Jbig2GlobalCtx*, %struct._Jbig2GlobalCtx** %global_ctx.addr, align 8, !tbaa !1
  %14 = bitcast %struct._Jbig2GlobalCtx* %13 to %struct._Jbig2Ctx*
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %global_ctx10 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 2
  store %struct._Jbig2Ctx* %14, %struct._Jbig2Ctx** %global_ctx10, align 8, !tbaa !19
  %16 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %error_callback11 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %17, i32 0, i32 3
  store i32 (i8*, i8*, i32, i32)* %16, i32 (i8*, i8*, i32, i32)** %error_callback11, align 8, !tbaa !14
  %18 = load i8*, i8** %error_callback_data.addr, align 8, !tbaa !1
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %error_callback_data12 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %19, i32 0, i32 4
  store i8* %18, i8** %error_callback_data12, align 8, !tbaa !16
  %20 = load i32, i32* %options.addr, align 4, !tbaa !11
  %and = and i32 %20, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %21, i32 0, i32 9
  store i32 %cond, i32* %state, align 4, !tbaa !20
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %22, i32 0, i32 5
  store i8* null, i8** %buf, align 8, !tbaa !21
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %n_segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %23, i32 0, i32 14
  store i32 0, i32* %n_segments, align 4, !tbaa !22
  %24 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %n_segments_max = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %24, i32 0, i32 12
  store i32 16, i32* %n_segments_max, align 4, !tbaa !23
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %allocator13 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %25, i32 0, i32 0
  %26 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator13, align 8, !tbaa !17
  %27 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %n_segments_max14 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %27, i32 0, i32 12
  %28 = load i32, i32* %n_segments_max14, align 4, !tbaa !23
  %conv = sext i32 %28 to i64
  %call15 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %26, i64 %conv, i64 8) #5
  %29 = bitcast i8* %call15 to %struct._Jbig2Segment**
  %30 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %30, i32 0, i32 13
  store %struct._Jbig2Segment** %29, %struct._Jbig2Segment*** %segments, align 8, !tbaa !24
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %segments16 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %31, i32 0, i32 13
  %32 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments16, align 8, !tbaa !24
  %cmp17 = icmp eq %struct._Jbig2Segment** %32, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.7
  %33 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %error_callback_data.addr, align 8, !tbaa !1
  %call20 = call i32 %33(i8* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i32 3, i32 -1) #5
  %35 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %36 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %37 = bitcast %struct._Jbig2Ctx* %36 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %35, i8* %37) #5
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  store %struct._Jbig2Ctx* %38, %struct._Jbig2Ctx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.7
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %segment_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %39, i32 0, i32 15
  store i32 0, i32* %segment_index, align 4, !tbaa !25
  %40 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %40, i32 0, i32 16
  store i32 0, i32* %current_page, align 4, !tbaa !26
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %max_page_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %41, i32 0, i32 17
  store i32 4, i32* %max_page_index, align 4, !tbaa !27
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %allocator22 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %42, i32 0, i32 0
  %43 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator22, align 8, !tbaa !17
  %44 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %max_page_index23 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %44, i32 0, i32 17
  %45 = load i32, i32* %max_page_index23, align 4, !tbaa !27
  %conv24 = sext i32 %45 to i64
  %call25 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %43, i64 %conv24, i64 48) #5
  %46 = bitcast i8* %call25 to %struct._Jbig2Page*
  %47 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %47, i32 0, i32 18
  store %struct._Jbig2Page* %46, %struct._Jbig2Page** %pages, align 8, !tbaa !28
  %48 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %pages26 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %48, i32 0, i32 18
  %49 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages26, align 8, !tbaa !28
  %cmp27 = icmp eq %struct._Jbig2Page* %49, null
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.21
  %50 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %error_callback.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %error_callback_data.addr, align 8, !tbaa !1
  %call30 = call i32 %50(i8* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 -1) #5
  %52 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %53 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %segments31 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %53, i32 0, i32 13
  %54 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments31, align 8, !tbaa !24
  %55 = bitcast %struct._Jbig2Segment** %54 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %52, i8* %55) #5
  %56 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  %57 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %58 = bitcast %struct._Jbig2Ctx* %57 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %56, i8* %58) #5
  %59 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  store %struct._Jbig2Ctx* %59, %struct._Jbig2Ctx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.21
  %60 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %index, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %61 = load i32, i32* %index, align 4, !tbaa !12
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %max_page_index33 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %62, i32 0, i32 17
  %63 = load i32, i32* %max_page_index33, align 4, !tbaa !27
  %cmp34 = icmp slt i32 %61, %63
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %index, align 4, !tbaa !12
  %idxprom = sext i32 %64 to i64
  %65 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %pages36 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %65, i32 0, i32 18
  %66 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages36, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %66, i64 %idxprom
  %state37 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx, i32 0, i32 0
  store i32 0, i32* %state37, align 4, !tbaa !29
  %67 = load i32, i32* %index, align 4, !tbaa !12
  %idxprom38 = sext i32 %67 to i64
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %pages39 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %68, i32 0, i32 18
  %69 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages39, align 8, !tbaa !28
  %arrayidx40 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %69, i64 %idxprom38
  %number = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx40, i32 0, i32 1
  store i32 0, i32* %number, align 4, !tbaa !32
  %70 = load i32, i32* %index, align 4, !tbaa !12
  %idxprom41 = sext i32 %70 to i64
  %71 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  %pages42 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %71, i32 0, i32 18
  %72 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages42, align 8, !tbaa !28
  %arrayidx43 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %72, i64 %idxprom41
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx43, i32 0, i32 10
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i32, i32* %index, align 4, !tbaa !12
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %index, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %result, align 8, !tbaa !1
  store %struct._Jbig2Ctx* %75, %struct._Jbig2Ctx** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.29, %if.then.19, %if.then.5
  %76 = bitcast %struct._Jbig2Ctx** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %retval
  ret %struct._Jbig2Ctx* %77
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_default_error(i8* %data, i8* %msg, i32 %severity, i32 %seg_idx) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  %severity.addr = alloca i32, align 4
  %seg_idx.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i32 %severity, i32* %severity.addr, align 4, !tbaa !11
  store i32 %seg_idx, i32* %seg_idx.addr, align 4, !tbaa !12
  %0 = load i32, i32* %severity.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %2 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %2) #5
  %3 = load i32, i32* %seg_idx.addr, align 4, !tbaa !12
  %cmp1 = icmp ne i32 %3, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %5 = load i32, i32* %seg_idx.addr, align 4, !tbaa !12
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call5 = call i32 @fflush(%struct._IO_FILE* %7) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define signext i16 @jbig2_get_int16(i8* %bptr) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %xor = xor i32 %or, 32768
  %sub = sub nsw i32 %xor, 32768
  %conv3 = trunc i32 %sub to i16
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define zeroext i16 @jbig2_get_uint16(i8* %bptr) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_get_int32(i8* %bptr) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %xor = xor i32 %or, 32768
  %sub = sub nsw i32 %xor, 32768
  %shl3 = shl i32 %sub, 16
  %4 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !11
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %6 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %6, i64 2
  %arrayidx8 = getelementptr inbounds i8, i8* %add.ptr7, i64 1
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !11
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %shl6, %conv9
  %or11 = or i32 %shl3, %or10
  ret i32 %or11
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_get_uint32(i8* %bptr) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %shl3 = shl i32 %or, 16
  %4 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !11
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %6 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %6, i64 2
  %arrayidx8 = getelementptr inbounds i8, i8* %add.ptr7, i64 1
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !11
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %shl6, %conv9
  %or11 = or i32 %shl3, %or10
  ret i32 %or11
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_data_in(%struct._Jbig2Ctx* %ctx, i8* %data, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %initial_buf_size = alloca i64, align 8
  %buf_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %buf35 = alloca i8*, align 8
  %buf_size36 = alloca i64, align 8
  %segment = alloca %struct._Jbig2Segment*, align 8
  %header_size = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  %0 = bitcast i64* %initial_buf_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 1024, i64* %initial_buf_size, align 8, !tbaa !5
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 5
  %2 = load i8*, i8** %buf, align 8, !tbaa !21
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %buf_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 1024, i64* %buf_size, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %4 = load i64, i64* %buf_size, align 8, !tbaa !5
  %shl = shl i64 %4, 1
  store i64 %shl, i64* %buf_size, align 8, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i64, i64* %buf_size, align 8, !tbaa !5
  %6 = load i64, i64* %size.addr, align 8, !tbaa !5
  %cmp1 = icmp ult i64 %5, %6
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %7, i32 0, i32 0
  %8 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !17
  %9 = load i64, i64* %buf_size, align 8, !tbaa !5
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %8, i64 %9, i64 1) #5
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %10, i32 0, i32 5
  store i8* %call, i8** %buf2, align 8, !tbaa !21
  %11 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf3 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %11, i32 0, i32 5
  %12 = load i8*, i8** %buf3, align 8, !tbaa !21
  %cmp4 = icmp eq i8* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.end
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %13, i32 3, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %14 = load i64, i64* %buf_size, align 8, !tbaa !5
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_size7 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 6
  store i64 %14, i64* %buf_size7, align 8, !tbaa !34
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 7
  store i32 0, i32* %buf_rd_ix, align 4, !tbaa !35
  %17 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %17, i32 0, i32 8
  store i32 0, i32* %buf_wr_ix, align 4, !tbaa !36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %18 = bitcast i64* %buf_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.261 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.78

if.else:                                          ; preds = %entry
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %19, i32 0, i32 8
  %20 = load i32, i32* %buf_wr_ix8, align 4, !tbaa !36
  %conv = zext i32 %20 to i64
  %21 = load i64, i64* %size.addr, align 8, !tbaa !5
  %add = add i64 %conv, %21
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_size9 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %22, i32 0, i32 6
  %23 = load i64, i64* %buf_size9, align 8, !tbaa !34
  %cmp10 = icmp ugt i64 %add, %23
  br i1 %cmp10, label %if.then.12, label %if.end.77

if.then.12:                                       ; preds = %if.else
  %24 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix13 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %24, i32 0, i32 7
  %25 = load i32, i32* %buf_rd_ix13, align 4, !tbaa !35
  %conv14 = zext i32 %25 to i64
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_size15 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %26, i32 0, i32 6
  %27 = load i64, i64* %buf_size15, align 8, !tbaa !34
  %shr = lshr i64 %27, 1
  %cmp16 = icmp ule i64 %conv14, %shr
  br i1 %cmp16, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.then.12
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix18 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %28, i32 0, i32 8
  %29 = load i32, i32* %buf_wr_ix18, align 4, !tbaa !36
  %30 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix19 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %30, i32 0, i32 7
  %31 = load i32, i32* %buf_rd_ix19, align 4, !tbaa !35
  %sub = sub i32 %29, %31
  %conv20 = zext i32 %sub to i64
  %32 = load i64, i64* %size.addr, align 8, !tbaa !5
  %add21 = add i64 %conv20, %32
  %33 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_size22 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %33, i32 0, i32 6
  %34 = load i64, i64* %buf_size22, align 8, !tbaa !34
  %cmp23 = icmp ule i64 %add21, %34
  br i1 %cmp23, label %if.then.25, label %if.else.34

if.then.25:                                       ; preds = %land.lhs.true
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf26 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %35, i32 0, i32 5
  %36 = load i8*, i8** %buf26, align 8, !tbaa !21
  %37 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf27 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %37, i32 0, i32 5
  %38 = load i8*, i8** %buf27, align 8, !tbaa !21
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix28 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %39, i32 0, i32 7
  %40 = load i32, i32* %buf_rd_ix28, align 4, !tbaa !35
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix29 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %41, i32 0, i32 8
  %42 = load i32, i32* %buf_wr_ix29, align 4, !tbaa !36
  %43 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix30 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %43, i32 0, i32 7
  %44 = load i32, i32* %buf_rd_ix30, align 4, !tbaa !35
  %sub31 = sub i32 %42, %44
  %conv32 = zext i32 %sub31 to i64
  %call33 = call i8* @memmove(i8* %36, i8* %add.ptr, i64 %conv32) #6
  br label %if.end.72

if.else.34:                                       ; preds = %land.lhs.true, %if.then.12
  %45 = bitcast i8** %buf35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast i64* %buf_size36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64 1024, i64* %buf_size36, align 8, !tbaa !5
  br label %do.body.37

do.body.37:                                       ; preds = %do.cond.39, %if.else.34
  %47 = load i64, i64* %buf_size36, align 8, !tbaa !5
  %shl38 = shl i64 %47, 1
  store i64 %shl38, i64* %buf_size36, align 8, !tbaa !5
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.37
  %48 = load i64, i64* %buf_size36, align 8, !tbaa !5
  %49 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix40 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %49, i32 0, i32 8
  %50 = load i32, i32* %buf_wr_ix40, align 4, !tbaa !36
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix41 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %51, i32 0, i32 7
  %52 = load i32, i32* %buf_rd_ix41, align 4, !tbaa !35
  %sub42 = sub i32 %50, %52
  %conv43 = zext i32 %sub42 to i64
  %53 = load i64, i64* %size.addr, align 8, !tbaa !5
  %add44 = add i64 %conv43, %53
  %cmp45 = icmp ult i64 %48, %add44
  br i1 %cmp45, label %do.body.37, label %do.end.47

do.end.47:                                        ; preds = %do.cond.39
  %54 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator48 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %54, i32 0, i32 0
  %55 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator48, align 8, !tbaa !17
  %56 = load i64, i64* %buf_size36, align 8, !tbaa !5
  %call49 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %55, i64 %56, i64 1) #5
  store i8* %call49, i8** %buf35, align 8, !tbaa !1
  %57 = load i8*, i8** %buf35, align 8, !tbaa !1
  %cmp50 = icmp eq i8* %57, null
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %do.end.47
  %58 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call53 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %58, i32 3, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 %call53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.54:                                        ; preds = %do.end.47
  %59 = load i8*, i8** %buf35, align 8, !tbaa !1
  %60 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf55 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %60, i32 0, i32 5
  %61 = load i8*, i8** %buf55, align 8, !tbaa !21
  %62 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix56 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %62, i32 0, i32 7
  %63 = load i32, i32* %buf_rd_ix56, align 4, !tbaa !35
  %idx.ext57 = zext i32 %63 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %61, i64 %idx.ext57
  %64 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix59 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %64, i32 0, i32 8
  %65 = load i32, i32* %buf_wr_ix59, align 4, !tbaa !36
  %66 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix60 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %66, i32 0, i32 7
  %67 = load i32, i32* %buf_rd_ix60, align 4, !tbaa !35
  %sub61 = sub i32 %65, %67
  %conv62 = zext i32 %sub61 to i64
  %call63 = call i8* @memcpy(i8* %59, i8* %add.ptr58, i64 %conv62) #6
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator64 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %68, i32 0, i32 0
  %69 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator64, align 8, !tbaa !17
  %70 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf65 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %70, i32 0, i32 5
  %71 = load i8*, i8** %buf65, align 8, !tbaa !21
  call void @jbig2_free(%struct._Jbig2Allocator* %69, i8* %71) #5
  %72 = load i8*, i8** %buf35, align 8, !tbaa !1
  %73 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf66 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %73, i32 0, i32 5
  store i8* %72, i8** %buf66, align 8, !tbaa !21
  %74 = load i64, i64* %buf_size36, align 8, !tbaa !5
  %75 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_size67 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %75, i32 0, i32 6
  store i64 %74, i64* %buf_size67, align 8, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.54, %if.then.52
  %76 = bitcast i64* %buf_size36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %buf35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.70, label %cleanup.261 [
    i32 0, label %cleanup.cont.71
  ]

cleanup.cont.71:                                  ; preds = %cleanup.68
  br label %if.end.72

if.end.72:                                        ; preds = %cleanup.cont.71, %if.then.25
  %78 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix73 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %78, i32 0, i32 7
  %79 = load i32, i32* %buf_rd_ix73, align 4, !tbaa !35
  %80 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix74 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %80, i32 0, i32 8
  %81 = load i32, i32* %buf_wr_ix74, align 4, !tbaa !36
  %sub75 = sub i32 %81, %79
  store i32 %sub75, i32* %buf_wr_ix74, align 4, !tbaa !36
  %82 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix76 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %82, i32 0, i32 7
  store i32 0, i32* %buf_rd_ix76, align 4, !tbaa !35
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.72, %if.else
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %cleanup.cont
  %83 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf79 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %83, i32 0, i32 5
  %84 = load i8*, i8** %buf79, align 8, !tbaa !21
  %85 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix80 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %85, i32 0, i32 8
  %86 = load i32, i32* %buf_wr_ix80, align 4, !tbaa !36
  %idx.ext81 = zext i32 %86 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %84, i64 %idx.ext81
  %87 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %88 = load i64, i64* %size.addr, align 8, !tbaa !5
  %call83 = call i8* @memcpy(i8* %add.ptr82, i8* %87, i64 %88) #6
  %89 = load i64, i64* %size.addr, align 8, !tbaa !5
  %90 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix84 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %90, i32 0, i32 8
  %91 = load i32, i32* %buf_wr_ix84, align 4, !tbaa !36
  %conv85 = zext i32 %91 to i64
  %add86 = add i64 %conv85, %89
  %conv87 = trunc i64 %add86 to i32
  store i32 %conv87, i32* %buf_wr_ix84, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.260, %if.end.78
  %92 = bitcast %struct._Jbig2Segment** %segment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = bitcast i64* %header_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %95, i32 0, i32 9
  %96 = load i32, i32* %state, align 4, !tbaa !20
  switch i32 %96, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.159
    i32 3, label %sw.bb.159
    i32 2, label %sw.bb.205
    i32 4, label %sw.bb.205
    i32 5, label %sw.bb.248
  ]

sw.bb:                                            ; preds = %for.cond
  %97 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix88 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %97, i32 0, i32 8
  %98 = load i32, i32* %buf_wr_ix88, align 4, !tbaa !36
  %99 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix89 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %99, i32 0, i32 7
  %100 = load i32, i32* %buf_rd_ix89, align 4, !tbaa !35
  %sub90 = sub i32 %98, %100
  %cmp91 = icmp ult i32 %sub90, 9
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.94:                                        ; preds = %sw.bb
  %101 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf95 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %101, i32 0, i32 5
  %102 = load i8*, i8** %buf95, align 8, !tbaa !21
  %103 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix96 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %103, i32 0, i32 7
  %104 = load i32, i32* %buf_rd_ix96, align 4, !tbaa !35
  %idx.ext97 = zext i32 %104 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %102, i64 %idx.ext97
  %call99 = call i32 @memcmp(i8* %add.ptr98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @jbig2_data_in.jbig2_id_string, i32 0, i32 0), i64 8) #7
  %tobool = icmp ne i32 %call99, 0
  br i1 %tobool, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.94
  %105 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call101 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %105, i32 3, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.102:                                       ; preds = %if.end.94
  %106 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix103 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %106, i32 0, i32 7
  %107 = load i32, i32* %buf_rd_ix103, align 4, !tbaa !35
  %add104 = add i32 %107, 8
  %idxprom = zext i32 %add104 to i64
  %108 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf105 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %108, i32 0, i32 5
  %109 = load i8*, i8** %buf105, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8, i8* %109, i64 %idxprom
  %110 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %111 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %file_header_flags = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %111, i32 0, i32 10
  store i8 %110, i8* %file_header_flags, align 1, !tbaa !37
  %112 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %file_header_flags106 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %112, i32 0, i32 10
  %113 = load i8, i8* %file_header_flags106, align 1, !tbaa !37
  %conv107 = zext i8 %113 to i32
  %and = and i32 %conv107, 252
  %tobool108 = icmp ne i32 %and, 0
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.end.102
  %114 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %115 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %file_header_flags110 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %115, i32 0, i32 10
  %116 = load i8, i8* %file_header_flags110, align 1, !tbaa !37
  %conv111 = zext i8 %116 to i32
  %call112 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %114, i32 2, i32 -1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0), i32 %conv111) #5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.102
  %117 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %file_header_flags114 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %117, i32 0, i32 10
  %118 = load i8, i8* %file_header_flags114, align 1, !tbaa !37
  %conv115 = zext i8 %118 to i32
  %and116 = and i32 %conv115, 2
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.else.143, label %if.then.118

if.then.118:                                      ; preds = %if.end.113
  %119 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix119 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %119, i32 0, i32 8
  %120 = load i32, i32* %buf_wr_ix119, align 4, !tbaa !36
  %121 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix120 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %121, i32 0, i32 7
  %122 = load i32, i32* %buf_rd_ix120, align 4, !tbaa !35
  %sub121 = sub i32 %120, %122
  %cmp122 = icmp ult i32 %sub121, 13
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.118
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.125:                                       ; preds = %if.then.118
  %123 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf126 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %123, i32 0, i32 5
  %124 = load i8*, i8** %buf126, align 8, !tbaa !21
  %125 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix127 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %125, i32 0, i32 7
  %126 = load i32, i32* %buf_rd_ix127, align 4, !tbaa !35
  %idx.ext128 = zext i32 %126 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %124, i64 %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr129, i64 9
  %call131 = call i32 @jbig2_get_uint32(i8* %add.ptr130) #5
  %127 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %127, i32 0, i32 11
  store i32 %call131, i32* %n_pages, align 4, !tbaa !38
  %128 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix132 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %128, i32 0, i32 7
  %129 = load i32, i32* %buf_rd_ix132, align 4, !tbaa !35
  %add133 = add i32 %129, 13
  store i32 %add133, i32* %buf_rd_ix132, align 4, !tbaa !35
  %130 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_pages134 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %130, i32 0, i32 11
  %131 = load i32, i32* %n_pages134, align 4, !tbaa !38
  %cmp135 = icmp eq i32 %131, 1
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.end.125
  %132 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call138 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %132, i32 1, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end.142

if.else.139:                                      ; preds = %if.end.125
  %133 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %134 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_pages140 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %134, i32 0, i32 11
  %135 = load i32, i32* %n_pages140, align 4, !tbaa !38
  %call141 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %133, i32 1, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %135) #5
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.137
  br label %if.end.147

if.else.143:                                      ; preds = %if.end.113
  %136 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_pages144 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %136, i32 0, i32 11
  store i32 0, i32* %n_pages144, align 4, !tbaa !38
  %137 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix145 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %137, i32 0, i32 7
  %138 = load i32, i32* %buf_rd_ix145, align 4, !tbaa !35
  %add146 = add i32 %138, 9
  store i32 %add146, i32* %buf_rd_ix145, align 4, !tbaa !35
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.143, %if.end.142
  %139 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %file_header_flags148 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %139, i32 0, i32 10
  %140 = load i8, i8* %file_header_flags148, align 1, !tbaa !37
  %conv149 = zext i8 %140 to i32
  %and150 = and i32 %conv149, 1
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.then.152, label %if.else.155

if.then.152:                                      ; preds = %if.end.147
  %141 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state153 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %141, i32 0, i32 9
  store i32 1, i32* %state153, align 4, !tbaa !20
  %142 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call154 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %142, i32 0, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %if.end.158

if.else.155:                                      ; preds = %if.end.147
  %143 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state156 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %143, i32 0, i32 9
  store i32 3, i32* %state156, align 4, !tbaa !20
  %144 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call157 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %144, i32 0, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.152
  br label %sw.epilog

sw.bb.159:                                        ; preds = %for.cond, %for.cond
  %145 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %146 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf160 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %146, i32 0, i32 5
  %147 = load i8*, i8** %buf160, align 8, !tbaa !21
  %148 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix161 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %148, i32 0, i32 7
  %149 = load i32, i32* %buf_rd_ix161, align 4, !tbaa !35
  %idx.ext162 = zext i32 %149 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %147, i64 %idx.ext162
  %150 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix164 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %150, i32 0, i32 8
  %151 = load i32, i32* %buf_wr_ix164, align 4, !tbaa !36
  %152 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix165 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %152, i32 0, i32 7
  %153 = load i32, i32* %buf_rd_ix165, align 4, !tbaa !35
  %sub166 = sub i32 %151, %153
  %conv167 = zext i32 %sub166 to i64
  %call168 = call %struct._Jbig2Segment* @jbig2_parse_segment_header(%struct._Jbig2Ctx* %145, i8* %add.ptr163, i64 %conv167, i64* %header_size) #5
  store %struct._Jbig2Segment* %call168, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %154 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %cmp169 = icmp eq %struct._Jbig2Segment* %154, null
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %sw.bb.159
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.172:                                       ; preds = %sw.bb.159
  %155 = load i64, i64* %header_size, align 8, !tbaa !5
  %156 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix173 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %156, i32 0, i32 7
  %157 = load i32, i32* %buf_rd_ix173, align 4, !tbaa !35
  %conv174 = zext i32 %157 to i64
  %add175 = add i64 %conv174, %155
  %conv176 = trunc i64 %add175 to i32
  store i32 %conv176, i32* %buf_rd_ix173, align 4, !tbaa !35
  %158 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %158, i32 0, i32 14
  %159 = load i32, i32* %n_segments, align 4, !tbaa !22
  %160 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments_max = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %160, i32 0, i32 12
  %161 = load i32, i32* %n_segments_max, align 4, !tbaa !23
  %cmp177 = icmp eq i32 %159, %161
  br i1 %cmp177, label %if.then.179, label %if.end.186

if.then.179:                                      ; preds = %if.end.172
  %162 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator180 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %162, i32 0, i32 0
  %163 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator180, align 8, !tbaa !17
  %164 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %164, i32 0, i32 13
  %165 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments, align 8, !tbaa !24
  %166 = bitcast %struct._Jbig2Segment** %165 to i8*
  %167 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments_max181 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %167, i32 0, i32 12
  %168 = load i32, i32* %n_segments_max181, align 4, !tbaa !23
  %shl182 = shl i32 %168, 2
  store i32 %shl182, i32* %n_segments_max181, align 4, !tbaa !23
  %conv183 = sext i32 %shl182 to i64
  %call184 = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %163, i8* %166, i64 %conv183, i64 8) #5
  %169 = bitcast i8* %call184 to %struct._Jbig2Segment**
  %170 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments185 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %170, i32 0, i32 13
  store %struct._Jbig2Segment** %169, %struct._Jbig2Segment*** %segments185, align 8, !tbaa !24
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.179, %if.end.172
  %171 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %172 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments187 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %172, i32 0, i32 14
  %173 = load i32, i32* %n_segments187, align 4, !tbaa !22
  %inc = add nsw i32 %173, 1
  store i32 %inc, i32* %n_segments187, align 4, !tbaa !22
  %idxprom188 = sext i32 %173 to i64
  %174 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments189 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %174, i32 0, i32 13
  %175 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments189, align 8, !tbaa !24
  %arrayidx190 = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %175, i64 %idxprom188
  store %struct._Jbig2Segment* %171, %struct._Jbig2Segment** %arrayidx190, align 8, !tbaa !1
  %176 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state191 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %176, i32 0, i32 9
  %177 = load i32, i32* %state191, align 4, !tbaa !20
  %cmp192 = icmp eq i32 %177, 3
  br i1 %cmp192, label %if.then.194, label %if.else.202

if.then.194:                                      ; preds = %if.end.186
  %178 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %178, i32 0, i32 1
  %179 = load i8, i8* %flags, align 1, !tbaa !39
  %conv195 = zext i8 %179 to i32
  %and196 = and i32 %conv195, 63
  %cmp197 = icmp eq i32 %and196, 51
  br i1 %cmp197, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %if.then.194
  %180 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state200 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %180, i32 0, i32 9
  store i32 4, i32* %state200, align 4, !tbaa !20
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %if.then.194
  br label %if.end.204

if.else.202:                                      ; preds = %if.end.186
  %181 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state203 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %181, i32 0, i32 9
  store i32 2, i32* %state203, align 4, !tbaa !20
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.202, %if.end.201
  br label %sw.epilog

sw.bb.205:                                        ; preds = %for.cond, %for.cond
  %182 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %182, i32 0, i32 15
  %183 = load i32, i32* %segment_index, align 4, !tbaa !25
  %idxprom206 = sext i32 %183 to i64
  %184 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments207 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %184, i32 0, i32 13
  %185 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments207, align 8, !tbaa !24
  %arrayidx208 = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %185, i64 %idxprom206
  %186 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx208, align 8, !tbaa !1
  store %struct._Jbig2Segment* %186, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %187 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %187, i32 0, i32 3
  %188 = load i64, i64* %data_length, align 8, !tbaa !41
  %189 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix209 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %189, i32 0, i32 8
  %190 = load i32, i32* %buf_wr_ix209, align 4, !tbaa !36
  %191 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix210 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %191, i32 0, i32 7
  %192 = load i32, i32* %buf_rd_ix210, align 4, !tbaa !35
  %sub211 = sub i32 %190, %192
  %conv212 = zext i32 %sub211 to i64
  %cmp213 = icmp ugt i64 %188, %conv212
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %sw.bb.205
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.216:                                       ; preds = %sw.bb.205
  %193 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %194 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %195 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf217 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %195, i32 0, i32 5
  %196 = load i8*, i8** %buf217, align 8, !tbaa !21
  %197 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix218 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %197, i32 0, i32 7
  %198 = load i32, i32* %buf_rd_ix218, align 4, !tbaa !35
  %idx.ext219 = zext i32 %198 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %196, i64 %idx.ext219
  %call221 = call i32 @jbig2_parse_segment(%struct._Jbig2Ctx* %193, %struct._Jbig2Segment* %194, i8* %add.ptr220) #5
  store i32 %call221, i32* %code, align 4, !tbaa !12
  %199 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment, align 8, !tbaa !1
  %data_length222 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %199, i32 0, i32 3
  %200 = load i64, i64* %data_length222, align 8, !tbaa !41
  %201 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix223 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %201, i32 0, i32 7
  %202 = load i32, i32* %buf_rd_ix223, align 4, !tbaa !35
  %conv224 = zext i32 %202 to i64
  %add225 = add i64 %conv224, %200
  %conv226 = trunc i64 %add225 to i32
  store i32 %conv226, i32* %buf_rd_ix223, align 4, !tbaa !35
  %203 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index227 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %203, i32 0, i32 15
  %204 = load i32, i32* %segment_index227, align 4, !tbaa !25
  %inc228 = add nsw i32 %204, 1
  store i32 %inc228, i32* %segment_index227, align 4, !tbaa !25
  %205 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state229 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %205, i32 0, i32 9
  %206 = load i32, i32* %state229, align 4, !tbaa !20
  %cmp230 = icmp eq i32 %206, 4
  br i1 %cmp230, label %if.then.232, label %if.else.240

if.then.232:                                      ; preds = %if.end.216
  %207 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segment_index233 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %207, i32 0, i32 15
  %208 = load i32, i32* %segment_index233, align 4, !tbaa !25
  %209 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments234 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %209, i32 0, i32 14
  %210 = load i32, i32* %n_segments234, align 4, !tbaa !22
  %cmp235 = icmp eq i32 %208, %210
  br i1 %cmp235, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.then.232
  %211 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state238 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %211, i32 0, i32 9
  store i32 5, i32* %state238, align 4, !tbaa !20
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.then.232
  br label %if.end.242

if.else.240:                                      ; preds = %if.end.216
  %212 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state241 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %212, i32 0, i32 9
  store i32 1, i32* %state241, align 4, !tbaa !20
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.end.239
  %213 = load i32, i32* %code, align 4, !tbaa !12
  %cmp243 = icmp slt i32 %213, 0
  br i1 %cmp243, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.end.242
  %214 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %state246 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %214, i32 0, i32 9
  store i32 5, i32* %state246, align 4, !tbaa !20
  %215 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %215, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.247:                                       ; preds = %if.end.242
  br label %sw.epilog

sw.bb.248:                                        ; preds = %for.cond
  %216 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_rd_ix249 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %216, i32 0, i32 7
  %217 = load i32, i32* %buf_rd_ix249, align 4, !tbaa !35
  %218 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf_wr_ix250 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %218, i32 0, i32 8
  %219 = load i32, i32* %buf_wr_ix250, align 4, !tbaa !36
  %cmp251 = icmp eq i32 %217, %219
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %sw.bb.248
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

if.end.254:                                       ; preds = %sw.bb.248
  %220 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call255 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %220, i32 2, i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0)) #5
  store i32 %call255, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.256

sw.epilog:                                        ; preds = %for.cond, %if.end.247, %if.end.204, %if.end.158
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.256

cleanup.256:                                      ; preds = %sw.epilog, %if.end.254, %if.then.253, %if.then.245, %if.then.215, %if.then.171, %if.then.124, %if.then.100, %if.then.93
  %221 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i64* %header_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast %struct._Jbig2Segment** %segment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %cleanup.dest.259 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.259, label %cleanup.261 [
    i32 0, label %cleanup.cont.260
  ]

cleanup.cont.260:                                 ; preds = %cleanup.256
  br label %for.cond

cleanup.261:                                      ; preds = %cleanup.256, %cleanup.68, %cleanup
  %224 = bitcast i64* %initial_buf_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare %struct._Jbig2Segment* @jbig2_parse_segment_header(%struct._Jbig2Ctx*, i8*, i64, i64*) #4

declare i32 @jbig2_parse_segment(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i8*) #4

; Function Attrs: nounwind uwtable
define void @jbig2_ctx_free(%struct._Jbig2Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %ca = alloca %struct._Jbig2Allocator*, align 8
  %i = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2Allocator** %ca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !17
  store %struct._Jbig2Allocator* %2, %struct._Jbig2Allocator** %ca, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %ca, align 8, !tbaa !1
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %5, i32 0, i32 5
  %6 = load i8*, i8** %buf, align 8, !tbaa !21
  call void @jbig2_free(%struct._Jbig2Allocator* %4, i8* %6) #5
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %7, i32 0, i32 13
  %8 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments, align 8, !tbaa !24
  %cmp = icmp ne %struct._Jbig2Segment** %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !tbaa !12
  %10 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %n_segments = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %10, i32 0, i32 14
  %11 = load i32, i32* %n_segments, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %9, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments2 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %14, i32 0, i32 13
  %15 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments2, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds %struct._Jbig2Segment*, %struct._Jbig2Segment** %15, i64 %idxprom
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %arrayidx, align 8, !tbaa !1
  call void @jbig2_free_segment(%struct._Jbig2Ctx* %12, %struct._Jbig2Segment* %16) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %ca, align 8, !tbaa !1
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %segments3 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %19, i32 0, i32 13
  %20 = load %struct._Jbig2Segment**, %struct._Jbig2Segment*** %segments3, align 8, !tbaa !24
  %21 = bitcast %struct._Jbig2Segment** %20 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %18, i8* %21) #5
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %22, i32 0, i32 18
  %23 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !28
  %cmp4 = icmp ne %struct._Jbig2Page* %23, null
  br i1 %cmp4, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.19, %if.then.5
  %24 = load i32, i32* %i, align 4, !tbaa !12
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %25, i32 0, i32 16
  %26 = load i32, i32* %current_page, align 4, !tbaa !26
  %cmp7 = icmp sle i32 %24, %26
  br i1 %cmp7, label %for.body.8, label %for.end.21

for.body.8:                                       ; preds = %for.cond.6
  %27 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom9 = sext i32 %27 to i64
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages10 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %28, i32 0, i32 18
  %29 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages10, align 8, !tbaa !28
  %arrayidx11 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %29, i64 %idxprom9
  %image = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx11, i32 0, i32 10
  %30 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !33
  %cmp12 = icmp ne %struct._Jbig2Image* %30, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %for.body.8
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom14 = sext i32 %32 to i64
  %33 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages15 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %33, i32 0, i32 18
  %34 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages15, align 8, !tbaa !28
  %arrayidx16 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %34, i64 %idxprom14
  %image17 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %arrayidx16, i32 0, i32 10
  %35 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image17, align 8, !tbaa !33
  call void @jbig2_image_release(%struct._Jbig2Ctx* %31, %struct._Jbig2Image* %35) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %for.body.8
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %36 = load i32, i32* %i, align 4, !tbaa !12
  %inc20 = add nsw i32 %36, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.end.21:                                       ; preds = %for.cond.6
  %37 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %ca, align 8, !tbaa !1
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages22 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %38, i32 0, i32 18
  %39 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages22, align 8, !tbaa !28
  %40 = bitcast %struct._Jbig2Page* %39 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %37, i8* %40) #5
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.21, %if.end
  %41 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %ca, align 8, !tbaa !1
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %43 = bitcast %struct._Jbig2Ctx* %42 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %41, i8* %43) #5
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct._Jbig2Allocator** %ca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

declare void @jbig2_free_segment(%struct._Jbig2Ctx*, %struct._Jbig2Segment*) #4

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #4

; Function Attrs: nounwind uwtable
define %struct._Jbig2GlobalCtx* @jbig2_make_global_ctx(%struct._Jbig2Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %1 = bitcast %struct._Jbig2Ctx* %0 to %struct._Jbig2GlobalCtx*
  ret %struct._Jbig2GlobalCtx* %1
}

; Function Attrs: nounwind uwtable
define void @jbig2_global_ctx_free(%struct._Jbig2GlobalCtx* %global_ctx) #0 {
entry:
  %global_ctx.addr = alloca %struct._Jbig2GlobalCtx*, align 8
  store %struct._Jbig2GlobalCtx* %global_ctx, %struct._Jbig2GlobalCtx** %global_ctx.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2GlobalCtx*, %struct._Jbig2GlobalCtx** %global_ctx.addr, align 8, !tbaa !1
  %1 = bitcast %struct._Jbig2GlobalCtx* %0 to %struct._Jbig2Ctx*
  call void @jbig2_ctx_free(%struct._Jbig2Ctx* %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %ctx, i8* %data, i64 %size) #0 {
entry:
  %retval = alloca %struct._Jbig2WordStream*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %result = alloca %struct.Jbig2WordStreamBuf*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  %0 = bitcast %struct.Jbig2WordStreamBuf** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !17
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 24) #5
  %3 = bitcast i8* %call to %struct.Jbig2WordStreamBuf*
  store %struct.Jbig2WordStreamBuf* %3, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %4 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.Jbig2WordStreamBuf* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %5, i32 3, i32 -1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0)) #5
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %6, i32 0, i32 0
  %get_next_word = getelementptr inbounds %struct._Jbig2WordStream, %struct._Jbig2WordStream* %super, i32 0, i32 0
  store i32 (%struct._Jbig2WordStream*, i32, i32*)* @jbig2_word_stream_buf_get_next_word, i32 (%struct._Jbig2WordStream*, i32, i32*)** %get_next_word, align 8, !tbaa !42
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %8, i32 0, i32 1
  store i8* %7, i8** %data2, align 8, !tbaa !45
  %9 = load i64, i64* %size.addr, align 8, !tbaa !5
  %10 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %10, i32 0, i32 2
  store i64 %9, i64* %size3, align 8, !tbaa !46
  %11 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %result, align 8, !tbaa !1
  %super4 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %11, i32 0, i32 0
  store %struct._Jbig2WordStream* %super4, %struct._Jbig2WordStream** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.Jbig2WordStreamBuf** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %retval
  ret %struct._Jbig2WordStream* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_word_stream_buf_get_next_word(%struct._Jbig2WordStream* %self, i32 %offset, i32* %word) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._Jbig2WordStream*, align 8
  %offset.addr = alloca i32, align 4
  %word.addr = alloca i32*, align 8
  %z = alloca %struct.Jbig2WordStreamBuf*, align 8
  %data = alloca i8*, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct._Jbig2WordStream* %self, %struct._Jbig2WordStream** %self.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !12
  store i32* %word, i32** %word.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2WordStreamBuf** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._Jbig2WordStream* %1 to %struct.Jbig2WordStreamBuf*
  store %struct.Jbig2WordStreamBuf* %2, %struct.Jbig2WordStreamBuf** %z, align 8, !tbaa !1
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %z, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %4, i32 0, i32 1
  %5 = load i8*, i8** %data1, align 8, !tbaa !45
  store i8* %5, i8** %data, align 8, !tbaa !1
  %6 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %add = add nsw i32 %7, 4
  %conv = sext i32 %add to i64
  %8 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %z, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %8, i32 0, i32 2
  %9 = load i64, i64* %size, align 8, !tbaa !46
  %cmp = icmp ult i64 %conv, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv3 = zext i8 %12 to i32
  %shl = shl i32 %conv3, 24
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %add4 = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add4 to i64
  %14 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !11
  %conv7 = zext i8 %15 to i32
  %shl8 = shl i32 %conv7, 16
  %or = or i32 %shl, %shl8
  %16 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %add9 = add nsw i32 %16, 2
  %idxprom10 = sext i32 %add9 to i64
  %17 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  %18 = load i8, i8* %arrayidx11, align 1, !tbaa !11
  %conv12 = zext i8 %18 to i32
  %shl13 = shl i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %19 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %add15 = add nsw i32 %19, 3
  %idxprom16 = sext i32 %add15 to i64
  %20 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom16
  %21 = load i8, i8* %arrayidx17, align 1, !tbaa !11
  %conv18 = zext i8 %21 to i32
  %or19 = or i32 %or14, %conv18
  store i32 %or19, i32* %result, align 4, !tbaa !12
  br label %if.end.39

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %conv20 = sext i32 %22 to i64
  %23 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %z, align 8, !tbaa !1
  %size21 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %23, i32 0, i32 2
  %24 = load i64, i64* %size21, align 8, !tbaa !46
  %cmp22 = icmp uge i64 %conv20, %24
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.25:                                       ; preds = %if.else
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %result, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.25
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %conv26 = sext i32 %26 to i64
  %27 = load %struct.Jbig2WordStreamBuf*, %struct.Jbig2WordStreamBuf** %z, align 8, !tbaa !1
  %size27 = getelementptr inbounds %struct.Jbig2WordStreamBuf, %struct.Jbig2WordStreamBuf* %27, i32 0, i32 2
  %28 = load i64, i64* %size27, align 8, !tbaa !46
  %29 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %conv28 = sext i32 %29 to i64
  %sub = sub i64 %28, %conv28
  %cmp29 = icmp ult i64 %conv26, %sub
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %offset.addr, align 4, !tbaa !12
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %add31 = add nsw i32 %30, %31
  %idxprom32 = sext i32 %add31 to i64
  %32 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i64 %idxprom32
  %33 = load i8, i8* %arrayidx33, align 1, !tbaa !11
  %conv34 = zext i8 %33 to i32
  %34 = load i32, i32* %i, align 4, !tbaa !12
  %sub35 = sub nsw i32 3, %34
  %shl36 = shl i32 %sub35, 3
  %shl37 = shl i32 %conv34, %shl36
  %35 = load i32, i32* %result, align 4, !tbaa !12
  %or38 = or i32 %35, %shl37
  store i32 %or38, i32* %result, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  br label %if.end

if.end:                                           ; preds = %for.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then
  %38 = load i32, i32* %result, align 4, !tbaa !12
  %39 = load i32*, i32** %word.addr, align 8, !tbaa !1
  store i32 %38, i32* %39, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.24
  %40 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.Jbig2WordStreamBuf** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2WordStream* %ws) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %ws.addr = alloca %struct._Jbig2WordStream*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2WordStream* %ws, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %0, i32 0, i32 0
  %1 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !17
  %2 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %3 = bitcast %struct._Jbig2WordStream* %2 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %1, i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @jbig2_default_alloc(%struct._Jbig2Allocator* %allocator, i64 %size) #0 {
entry:
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %size.addr = alloca i64, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  %0 = load i64, i64* %size.addr, align 8, !tbaa !5
  %call = call noalias i8* @malloc(i64 %0) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @jbig2_default_free(%struct._Jbig2Allocator* %allocator, i8* %p) #0 {
entry:
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %p.addr = alloca i8*, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void @free(i8* %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @jbig2_default_realloc(%struct._Jbig2Allocator* %allocator, i8* %p, i64 %size) #0 {
entry:
  %allocator.addr = alloca %struct._Jbig2Allocator*, align 8
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct._Jbig2Allocator* %allocator, %struct._Jbig2Allocator** %allocator.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %1 = load i64, i64* %size.addr, align 8, !tbaa !5
  %call = call i8* @realloc(i8* %0, i64 %1) #6
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_Jbig2Allocator", !2, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!8, !2, i64 8}
!10 = !{!8, !2, i64 16}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !3, i64 0}
!14 = !{!15, !2, i64 24}
!15 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !13, i64 56, !13, i64 60, !3, i64 64, !3, i64 68, !13, i64 72, !13, i64 76, !2, i64 80, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !2, i64 104}
!16 = !{!15, !2, i64 32}
!17 = !{!15, !2, i64 0}
!18 = !{!15, !3, i64 8}
!19 = !{!15, !2, i64 16}
!20 = !{!15, !3, i64 64}
!21 = !{!15, !2, i64 40}
!22 = !{!15, !13, i64 88}
!23 = !{!15, !13, i64 76}
!24 = !{!15, !2, i64 80}
!25 = !{!15, !13, i64 92}
!26 = !{!15, !13, i64 96}
!27 = !{!15, !13, i64 100}
!28 = !{!15, !2, i64 104}
!29 = !{!30, !3, i64 0}
!30 = !{!"_Jbig2Page", !3, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !31, i64 24, !13, i64 28, !13, i64 32, !3, i64 36, !2, i64 40}
!31 = !{!"short", !3, i64 0}
!32 = !{!30, !13, i64 4}
!33 = !{!30, !2, i64 40}
!34 = !{!15, !6, i64 48}
!35 = !{!15, !13, i64 56}
!36 = !{!15, !13, i64 60}
!37 = !{!15, !3, i64 68}
!38 = !{!15, !13, i64 72}
!39 = !{!40, !3, i64 4}
!40 = !{!"_Jbig2Segment", !13, i64 0, !3, i64 4, !13, i64 8, !6, i64 16, !13, i64 24, !2, i64 32, !2, i64 40}
!41 = !{!40, !6, i64 16}
!42 = !{!43, !2, i64 0}
!43 = !{!"", !44, i64 0, !2, i64 8, !6, i64 16}
!44 = !{!"_Jbig2WordStream", !2, i64 0}
!45 = !{!43, !2, i64 8}
!46 = !{!43, !6, i64 16}
