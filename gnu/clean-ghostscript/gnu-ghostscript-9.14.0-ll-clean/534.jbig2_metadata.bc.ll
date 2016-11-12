; ModuleID = './jbig2_metadata.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2Metadata = type { i32, i8**, i8**, i32, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"failed to allocate storage for metadata keys/values\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to allocate storage for metadata\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to resize metadata structure\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ASCII comment data\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to allocate comment structure\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"'%s'\09'%s'\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"unexpected end of comment segment\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"unhandled unicode comment segment\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unable to duplicate comment string\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2Metadata* @jbig2_metadata_new(%struct._Jbig2Ctx* %ctx, i32 %encoding) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %encoding.addr = alloca i32, align 4
  %md = alloca %struct._Jbig2Metadata*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %encoding, i32* %encoding.addr, align 4, !tbaa !5
  %0 = bitcast %struct._Jbig2Metadata** %md to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !6
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 32) #5
  %3 = bitcast i8* %call to %struct._Jbig2Metadata*
  store %struct._Jbig2Metadata* %3, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %4 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %cmp = icmp ne %struct._Jbig2Metadata* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %encoding.addr, align 4, !tbaa !5
  %6 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %encoding1 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %6, i32 0, i32 0
  store i32 %5, i32* %encoding1, align 4, !tbaa !10
  %7 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %7, i32 0, i32 3
  store i32 0, i32* %entries, align 4, !tbaa !12
  %8 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %max_entries = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %8, i32 0, i32 4
  store i32 4, i32* %max_entries, align 4, !tbaa !13
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator2 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %9, i32 0, i32 0
  %10 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator2, align 8, !tbaa !6
  %11 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %max_entries3 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %11, i32 0, i32 4
  %12 = load i32, i32* %max_entries3, align 4, !tbaa !13
  %conv = sext i32 %12 to i64
  %call4 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %10, i64 %conv, i64 8) #5
  %13 = bitcast i8* %call4 to i8**
  %14 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %14, i32 0, i32 1
  store i8** %13, i8*** %keys, align 8, !tbaa !14
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator5 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 0
  %16 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator5, align 8, !tbaa !6
  %17 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %max_entries6 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %17, i32 0, i32 4
  %18 = load i32, i32* %max_entries6, align 4, !tbaa !13
  %conv7 = sext i32 %18 to i64
  %call8 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %16, i64 %conv7, i64 8) #5
  %19 = bitcast i8* %call8 to i8**
  %20 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %values = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %20, i32 0, i32 2
  store i8** %19, i8*** %values, align 8, !tbaa !15
  %21 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %keys9 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %21, i32 0, i32 1
  %22 = load i8**, i8*** %keys9, align 8, !tbaa !14
  %cmp10 = icmp eq i8** %22, null
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %values12 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %23, i32 0, i32 2
  %24 = load i8**, i8*** %values12, align 8, !tbaa !15
  %cmp13 = icmp eq i8** %24, null
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.then
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %25, i32 3, i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0)) #5
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %27 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  call void @jbig2_metadata_free(%struct._Jbig2Ctx* %26, %struct._Jbig2Metadata* %27) #5
  store %struct._Jbig2Metadata* null, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false
  br label %if.end.18

if.else:                                          ; preds = %entry
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %28, i32 3, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  %29 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md, align 8, !tbaa !1
  %30 = bitcast %struct._Jbig2Metadata** %md to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret %struct._Jbig2Metadata* %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @jbig2_metadata_free(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Metadata* %md) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %md.addr = alloca %struct._Jbig2Metadata*, align 8
  %i = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Metadata* %md, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %1, i32 0, i32 1
  %2 = load i8**, i8*** %keys, align 8, !tbaa !14
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !tbaa !16
  %4 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %4, i32 0, i32 3
  %5 = load i32, i32* %entries, align 4, !tbaa !12
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %6, i32 0, i32 0
  %7 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys1 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %9, i32 0, i32 1
  %10 = load i8**, i8*** %keys1, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %7, i8* %11) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator2 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %13, i32 0, i32 0
  %14 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator2, align 8, !tbaa !6
  %15 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys3 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %15, i32 0, i32 1
  %16 = load i8**, i8*** %keys3, align 8, !tbaa !14
  %17 = bitcast i8** %16 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %14, i8* %17) #5
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %18 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %18, i32 0, i32 2
  %19 = load i8**, i8*** %values, align 8, !tbaa !15
  %tobool4 = icmp ne i8** %19, null
  br i1 %tobool4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.14, %if.then.5
  %20 = load i32, i32* %i, align 4, !tbaa !16
  %21 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries7 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %21, i32 0, i32 3
  %22 = load i32, i32* %entries7, align 4, !tbaa !12
  %cmp8 = icmp slt i32 %20, %22
  br i1 %cmp8, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.6
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator10 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %23, i32 0, i32 0
  %24 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator10, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values12 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %26, i32 0, i32 2
  %27 = load i8**, i8*** %values12, align 8, !tbaa !15
  %arrayidx13 = getelementptr inbounds i8*, i8** %27, i64 %idxprom11
  %28 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %24, i8* %28) #5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.9
  %29 = load i32, i32* %i, align 4, !tbaa !16
  %inc15 = add nsw i32 %29, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !16
  br label %for.cond.6

for.end.16:                                       ; preds = %for.cond.6
  %30 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator17 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %30, i32 0, i32 0
  %31 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator17, align 8, !tbaa !6
  %32 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values18 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %32, i32 0, i32 2
  %33 = load i8**, i8*** %values18, align 8, !tbaa !15
  %34 = bitcast i8** %33 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %31, i8* %34) #5
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.16, %if.end
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator20 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %35, i32 0, i32 0
  %36 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator20, align 8, !tbaa !6
  %37 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %38 = bitcast %struct._Jbig2Metadata* %37 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %36, i8* %38) #5
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_metadata_add(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Metadata* %md, i8* %key, i32 %key_length, i8* %value, i32 %value_length) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %md.addr = alloca %struct._Jbig2Metadata*, align 8
  %key.addr = alloca i8*, align 8
  %key_length.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %value_length.addr = alloca i32, align 4
  %keys = alloca i8**, align 8
  %values = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Metadata* %md, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %key_length, i32* %key_length.addr, align 4, !tbaa !16
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_length, i32* %value_length.addr, align 4, !tbaa !16
  %0 = bitcast i8*** %keys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8*** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %2, i32 0, i32 3
  %3 = load i32, i32* %entries, align 4, !tbaa !12
  %4 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %max_entries = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %4, i32 0, i32 4
  %5 = load i32, i32* %max_entries, align 4, !tbaa !13
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %6 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %max_entries1 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %6, i32 0, i32 4
  %7 = load i32, i32* %max_entries1, align 4, !tbaa !13
  %shl = shl i32 %7, 1
  store i32 %shl, i32* %max_entries1, align 4, !tbaa !13
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %8, i32 0, i32 0
  %9 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !6
  %10 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys2 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %10, i32 0, i32 1
  %11 = load i8**, i8*** %keys2, align 8, !tbaa !14
  %12 = bitcast i8** %11 to i8*
  %13 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %max_entries3 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %13, i32 0, i32 4
  %14 = load i32, i32* %max_entries3, align 4, !tbaa !13
  %conv = sext i32 %14 to i64
  %call = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %9, i8* %12, i64 %conv, i64 8) #5
  %15 = bitcast i8* %call to i8**
  store i8** %15, i8*** %keys, align 8, !tbaa !1
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator4 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 0
  %17 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator4, align 8, !tbaa !6
  %18 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values5 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %18, i32 0, i32 2
  %19 = load i8**, i8*** %values5, align 8, !tbaa !15
  %20 = bitcast i8** %19 to i8*
  %21 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %max_entries6 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %21, i32 0, i32 4
  %22 = load i32, i32* %max_entries6, align 4, !tbaa !13
  %conv7 = sext i32 %22 to i64
  %call8 = call i8* @jbig2_realloc(%struct._Jbig2Allocator* %17, i8* %20, i64 %conv7, i64 8) #5
  %23 = bitcast i8* %call8 to i8**
  store i8** %23, i8*** %values, align 8, !tbaa !1
  %24 = load i8**, i8*** %keys, align 8, !tbaa !1
  %cmp9 = icmp eq i8** %24, null
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %25 = load i8**, i8*** %values, align 8, !tbaa !1
  %cmp11 = icmp eq i8** %25, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %if.then
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %26, i32 3, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %27 = load i8**, i8*** %keys, align 8, !tbaa !1
  %28 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys15 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %28, i32 0, i32 1
  store i8** %27, i8*** %keys15, align 8, !tbaa !14
  %29 = load i8**, i8*** %values, align 8, !tbaa !1
  %30 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values16 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %30, i32 0, i32 2
  store i8** %29, i8*** %values16, align 8, !tbaa !15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %33 = load i32, i32* %key_length.addr, align 4, !tbaa !16
  %call18 = call i8* @jbig2_strndup(%struct._Jbig2Ctx* %31, i8* %32, i32 %33) #5
  %34 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries19 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %34, i32 0, i32 3
  %35 = load i32, i32* %entries19, align 4, !tbaa !12
  %idxprom = sext i32 %35 to i64
  %36 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %keys20 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %36, i32 0, i32 1
  %37 = load i8**, i8*** %keys20, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  store i8* %call18, i8** %arrayidx, align 8, !tbaa !1
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %40 = load i32, i32* %value_length.addr, align 4, !tbaa !16
  %call21 = call i8* @jbig2_strndup(%struct._Jbig2Ctx* %38, i8* %39, i32 %40) #5
  %41 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries22 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %41, i32 0, i32 3
  %42 = load i32, i32* %entries22, align 4, !tbaa !12
  %idxprom23 = sext i32 %42 to i64
  %43 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %values24 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %43, i32 0, i32 2
  %44 = load i8**, i8*** %values24, align 8, !tbaa !15
  %arrayidx25 = getelementptr inbounds i8*, i8** %44, i64 %idxprom23
  store i8* %call21, i8** %arrayidx25, align 8, !tbaa !1
  %45 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %md.addr, align 8, !tbaa !1
  %entries26 = getelementptr inbounds %struct._Jbig2Metadata, %struct._Jbig2Metadata* %45, i32 0, i32 3
  %46 = load i32, i32* %entries26, align 4, !tbaa !12
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %entries26, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.13
  %47 = bitcast i8*** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8*** %keys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i8* @jbig2_realloc(%struct._Jbig2Allocator*, i8*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @jbig2_strndup(%struct._Jbig2Ctx* %ctx, i8* %c, i32 %len) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %c.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i8* %c, i8** %c.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !16
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !6
  %3 = load i32, i32* %len.addr, align 4, !tbaa !16
  %conv = sext i32 %3 to i64
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 %conv, i64 1) #5
  store i8* %call, i8** %s, align 8, !tbaa !1
  %4 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %5, i32 3, i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %s, align 8, !tbaa !1
  %7 = load i8*, i8** %c.addr, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !16
  %conv3 = sext i32 %8 to i64
  %call4 = call i8* @memcpy(i8* %6, i8* %7, i64 %conv3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %s, align 8, !tbaa !1
  %10 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_comment_ascii(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %end = alloca i8*, align 8
  %comment = alloca %struct._Jbig2Metadata*, align 8
  %key = alloca i8*, align 8
  %value = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  %2 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %4 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %4, i32 0, i32 3
  %5 = load i64, i64* %data_length, align 8, !tbaa !17
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %5
  store i8* %add.ptr1, i8** %end, align 8, !tbaa !1
  %6 = bitcast %struct._Jbig2Metadata** %comment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %10, i32 0, i32 0
  %11 = load i32, i32* %number, align 4, !tbaa !19
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %9, i32 1, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #5
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call2 = call %struct._Jbig2Metadata* @jbig2_metadata_new(%struct._Jbig2Ctx* %12, i32 0) #5
  store %struct._Jbig2Metadata* %call2, %struct._Jbig2Metadata** %comment, align 8, !tbaa !1
  %13 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %comment, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2Metadata* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %15 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number3 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %15, i32 0, i32 0
  %16 = load i32, i32* %number3, align 4, !tbaa !19
  %call4 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %14, i32 2, i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %17 = load i8*, i8** %s, align 8, !tbaa !1
  %18 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp5 = icmp ult i8* %17, %18
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i8*, i8** %s, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %conv = sext i8 %20 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i8*, i8** %s, align 8, !tbaa !1
  store i8* %22, i8** %key, align 8, !tbaa !1
  %23 = load i8*, i8** %key, align 8, !tbaa !1
  %24 = load i8*, i8** %end, align 8, !tbaa !1
  %25 = load i8*, i8** %key, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call6 = call i8* @memchr(i8* %23, i32 48, i64 %sub.ptr.sub) #7
  store i8* %call6, i8** %value, align 8, !tbaa !1
  %26 = load i8*, i8** %value, align 8, !tbaa !1
  %tobool7 = icmp ne i8* %26, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %while.body
  br label %too_short

if.end.9:                                         ; preds = %while.body
  %27 = load i8*, i8** %value, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %value, align 8, !tbaa !1
  %28 = load i8*, i8** %value, align 8, !tbaa !1
  %29 = load i8*, i8** %end, align 8, !tbaa !1
  %30 = load i8*, i8** %value, align 8, !tbaa !1
  %sub.ptr.lhs.cast10 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %30 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %call13 = call i8* @memchr(i8* %28, i32 48, i64 %sub.ptr.sub12) #7
  store i8* %call13, i8** %s, align 8, !tbaa !1
  %31 = load i8*, i8** %s, align 8, !tbaa !1
  %tobool14 = icmp ne i8* %31, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.9
  br label %too_short

if.end.16:                                        ; preds = %if.end.9
  %32 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr17, i8** %s, align 8, !tbaa !1
  %33 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %34 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %comment, align 8, !tbaa !1
  %35 = load i8*, i8** %key, align 8, !tbaa !1
  %36 = load i8*, i8** %value, align 8, !tbaa !1
  %37 = load i8*, i8** %key, align 8, !tbaa !1
  %sub.ptr.lhs.cast18 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %37 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  %38 = load i8*, i8** %value, align 8, !tbaa !1
  %39 = load i8*, i8** %s, align 8, !tbaa !1
  %40 = load i8*, i8** %value, align 8, !tbaa !1
  %sub.ptr.lhs.cast22 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %40 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %conv25 = trunc i64 %sub.ptr.sub24 to i32
  %call26 = call i32 @jbig2_metadata_add(%struct._Jbig2Ctx* %33, %struct._Jbig2Metadata* %34, i8* %35, i32 %conv21, i8* %38, i32 %conv25) #5
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %42 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number27 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %42, i32 0, i32 0
  %43 = load i32, i32* %number27, align 4, !tbaa !19
  %44 = load i8*, i8** %key, align 8, !tbaa !1
  %45 = load i8*, i8** %value, align 8, !tbaa !1
  %call28 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %41, i32 1, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %44, i8* %45) #5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %46 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %comment, align 8, !tbaa !1
  %47 = bitcast %struct._Jbig2Metadata* %46 to i8*
  %48 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %48, i32 0, i32 6
  store i8* %47, i8** %result, align 8, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

too_short:                                        ; preds = %if.then.15, %if.then.8
  %49 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %50 = load %struct._Jbig2Metadata*, %struct._Jbig2Metadata** %comment, align 8, !tbaa !1
  call void @jbig2_metadata_free(%struct._Jbig2Ctx* %49, %struct._Jbig2Metadata* %50) #5
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %52 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number29 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %52, i32 0, i32 0
  %53 = load i32, i32* %number29, align 4, !tbaa !19
  %call30 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %51, i32 2, i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %too_short, %while.end, %if.then
  %54 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct._Jbig2Metadata** %comment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @jbig2_comment_unicode(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %1 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %1, i32 0, i32 0
  %2 = load i32, i32* %number, align 4, !tbaa !19
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %0, i32 2, i32 %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 0}
!7 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !9, i64 56, !9, i64 60, !3, i64 64, !3, i64 68, !9, i64 72, !9, i64 76, !2, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !2, i64 104}
!8 = !{!"long", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !3, i64 0}
!11 = !{!"_Jbig2Metadata", !3, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28}
!12 = !{!11, !9, i64 24}
!13 = !{!11, !9, i64 28}
!14 = !{!11, !2, i64 8}
!15 = !{!11, !2, i64 16}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !8, i64 16}
!18 = !{!"_Jbig2Segment", !9, i64 0, !3, i64 4, !9, i64 8, !8, i64 16, !9, i64 24, !2, i64 32, !2, i64 40}
!19 = !{!18, !9, i64 0}
!20 = !{!18, !2, i64 40}
