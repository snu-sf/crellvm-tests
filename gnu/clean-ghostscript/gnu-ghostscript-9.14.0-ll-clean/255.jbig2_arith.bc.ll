; ModuleID = './jbig2_arith.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Jbig2ArithQe = type { i16, i8, i8 }
%struct._Jbig2ArithState = type { i32, i32, i32, i32, i32, %struct._Jbig2WordStream*, i32, %struct._Jbig2Ctx* }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }

@.str = private unnamed_addr constant [54 x i8] c"failed to allocate Jbig2ArithState in jbig2_arith_new\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"unable to get first word in jbig2_arith_new\00", align 1
@jbig2_arith_Qe = constant [47 x %struct.Jbig2ArithQe] [%struct.Jbig2ArithQe { i16 22017, i8 1, i8 -127 }, %struct.Jbig2ArithQe { i16 13313, i8 3, i8 7 }, %struct.Jbig2ArithQe { i16 6145, i8 1, i8 11 }, %struct.Jbig2ArithQe { i16 2753, i8 7, i8 15 }, %struct.Jbig2ArithQe { i16 1313, i8 1, i8 25 }, %struct.Jbig2ArithQe { i16 545, i8 35, i8 36 }, %struct.Jbig2ArithQe { i16 22017, i8 1, i8 -128 }, %struct.Jbig2ArithQe { i16 21505, i8 15, i8 9 }, %struct.Jbig2ArithQe { i16 18433, i8 1, i8 6 }, %struct.Jbig2ArithQe { i16 14337, i8 3, i8 7 }, %struct.Jbig2ArithQe { i16 12289, i8 1, i8 27 }, %struct.Jbig2ArithQe { i16 9217, i8 7, i8 25 }, %struct.Jbig2ArithQe { i16 7169, i8 1, i8 24 }, %struct.Jbig2ArithQe { i16 5633, i8 16, i8 24 }, %struct.Jbig2ArithQe { i16 22017, i8 1, i8 -128 }, %struct.Jbig2ArithQe { i16 21505, i8 31, i8 1 }, %struct.Jbig2ArithQe { i16 20737, i8 1, i8 31 }, %struct.Jbig2ArithQe { i16 18433, i8 3, i8 1 }, %struct.Jbig2ArithQe { i16 14337, i8 1, i8 3 }, %struct.Jbig2ArithQe { i16 13313, i8 7, i8 1 }, %struct.Jbig2ArithQe { i16 12289, i8 1, i8 7 }, %struct.Jbig2ArithQe { i16 10241, i8 3, i8 6 }, %struct.Jbig2ArithQe { i16 9217, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 8705, i8 15, i8 2 }, %struct.Jbig2ArithQe { i16 7169, i8 1, i8 14 }, %struct.Jbig2ArithQe { i16 6145, i8 3, i8 14 }, %struct.Jbig2ArithQe { i16 5633, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 5121, i8 7, i8 2 }, %struct.Jbig2ArithQe { i16 4609, i8 1, i8 6 }, %struct.Jbig2ArithQe { i16 4353, i8 3, i8 6 }, %struct.Jbig2ArithQe { i16 2753, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 2497, i8 63, i8 2 }, %struct.Jbig2ArithQe { i16 2209, i8 1, i8 62 }, %struct.Jbig2ArithQe { i16 1313, i8 3, i8 62 }, %struct.Jbig2ArithQe { i16 1089, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 673, i8 7, i8 2 }, %struct.Jbig2ArithQe { i16 545, i8 1, i8 6 }, %struct.Jbig2ArithQe { i16 321, i8 3, i8 6 }, %struct.Jbig2ArithQe { i16 273, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 133, i8 15, i8 2 }, %struct.Jbig2ArithQe { i16 73, i8 1, i8 14 }, %struct.Jbig2ArithQe { i16 37, i8 3, i8 14 }, %struct.Jbig2ArithQe { i16 21, i8 1, i8 2 }, %struct.Jbig2ArithQe { i16 9, i8 7, i8 2 }, %struct.Jbig2ArithQe { i16 5, i8 1, i8 6 }, %struct.Jbig2ArithQe { i16 1, i8 0, i8 6 }, %struct.Jbig2ArithQe { i16 22017, i8 0, i8 0 }], align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"end of jbig2 buffer reached at offset %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %ctx, %struct._Jbig2WordStream* %ws) #0 {
entry:
  %retval = alloca %struct._Jbig2ArithState*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %ws.addr = alloca %struct._Jbig2WordStream*, align 8
  %result = alloca %struct._Jbig2ArithState*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2WordStream* %ws, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Jbig2ArithState** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %1, i32 0, i32 0
  %2 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !5
  %call = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %2, i64 1, i64 48) #3
  %3 = bitcast i8* %call to %struct._Jbig2ArithState*
  store %struct._Jbig2ArithState* %3, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %4 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2ArithState* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %5, i32 3, i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0)) #3
  %6 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %6, %struct._Jbig2ArithState** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %8 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %ws2 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %8, i32 0, i32 5
  store %struct._Jbig2WordStream* %7, %struct._Jbig2WordStream** %ws2, align 8, !tbaa !9
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %ctx3 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %10, i32 0, i32 7
  store %struct._Jbig2Ctx* %9, %struct._Jbig2Ctx** %ctx3, align 8, !tbaa !11
  %11 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %get_next_word = getelementptr inbounds %struct._Jbig2WordStream, %struct._Jbig2WordStream* %11, i32 0, i32 0
  %12 = load i32 (%struct._Jbig2WordStream*, i32, i32*)*, i32 (%struct._Jbig2WordStream*, i32, i32*)** %get_next_word, align 8, !tbaa !12
  %13 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %14 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %14, i32 0, i32 3
  %call4 = call i32 %12(%struct._Jbig2WordStream* %13, i32 0, i32* %next_word) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 3, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0)) #3
  %16 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator7 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %16, i32 0, i32 0
  %17 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator7, align 8, !tbaa !5
  %18 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %19 = bitcast %struct._Jbig2ArithState* %18 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %17, i8* %19) #3
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %20 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %next_word_bytes = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %20, i32 0, i32 4
  store i32 4, i32* %next_word_bytes, align 4, !tbaa !14
  %21 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %21, i32 0, i32 6
  store i32 4, i32* %offset, align 4, !tbaa !15
  %22 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %next_word9 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %22, i32 0, i32 3
  %23 = load i32, i32* %next_word9, align 4, !tbaa !16
  %shr = lshr i32 %23, 8
  %and = and i32 %shr, 16711680
  %24 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %C = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %24, i32 0, i32 0
  store i32 %and, i32* %C, align 4, !tbaa !17
  %25 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %call10 = call i32 @jbig2_arith_bytein(%struct._Jbig2ArithState* %25) #3
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %26 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator13 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %26, i32 0, i32 0
  %27 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator13, align 8, !tbaa !5
  %28 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %29 = bitcast %struct._Jbig2ArithState* %28 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %27, i8* %29) #3
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  %30 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %C15 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %30, i32 0, i32 0
  %31 = load i32, i32* %C15, align 4, !tbaa !17
  %shl = shl i32 %31, 7
  store i32 %shl, i32* %C15, align 4, !tbaa !17
  %32 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %CT = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %32, i32 0, i32 2
  %33 = load i32, i32* %CT, align 4, !tbaa !18
  %sub = sub nsw i32 %33, 7
  store i32 %sub, i32* %CT, align 4, !tbaa !18
  %34 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  %A = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %34, i32 0, i32 1
  store i32 32768, i32* %A, align 4, !tbaa !19
  %35 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %result, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %35, %struct._Jbig2ArithState** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.5, %if.then
  %36 = bitcast %struct._Jbig2ArithState** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %retval
  ret %struct._Jbig2ArithState* %37
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_arith_bytein(%struct._Jbig2ArithState* %as) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %B = alloca i8, align 1
  %B1 = alloca i8, align 1
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %cleanup.dest.slot = alloca i32
  %ws67 = alloca %struct._Jbig2WordStream*, align 8
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %B) #1
  %0 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %0, i32 0, i32 3
  %1 = load i32, i32* %next_word, align 4, !tbaa !16
  %shr = lshr i32 %1, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %B, align 1, !tbaa !20
  %2 = load i8, i8* %B, align 1, !tbaa !20
  %conv1 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv1, 255
  br i1 %cmp, label %if.then, label %if.else.57

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %B1) #1
  %3 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %3, i32 0, i32 4
  %4 = load i32, i32* %next_word_bytes, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then.5, label %if.else.31

if.then.5:                                        ; preds = %if.then
  %5 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %ws6 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %6, i32 0, i32 5
  %7 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws6, align 8, !tbaa !9
  store %struct._Jbig2WordStream* %7, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %8 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %get_next_word = getelementptr inbounds %struct._Jbig2WordStream, %struct._Jbig2WordStream* %8, i32 0, i32 0
  %9 = load i32 (%struct._Jbig2WordStream*, i32, i32*)*, i32 (%struct._Jbig2WordStream*, i32, i32*)** %get_next_word, align 8, !tbaa !12
  %10 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %11 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %11, i32 0, i32 6
  %12 = load i32, i32* %offset, align 4, !tbaa !15
  %13 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word7 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %13, i32 0, i32 3
  %call = call i32 %9(%struct._Jbig2WordStream* %10, i32 %12, i32* %next_word7) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %14 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %ctx = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %14, i32 0, i32 7
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx, align 8, !tbaa !11
  %16 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset9 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %16, i32 0, i32 6
  %17 = load i32, i32* %offset9, align 4, !tbaa !15
  %call10 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 3, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %17) #3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.5
  %18 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset11 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %18, i32 0, i32 6
  %19 = load i32, i32* %offset11, align 4, !tbaa !15
  %add = add nsw i32 %19, 4
  store i32 %add, i32* %offset11, align 4, !tbaa !15
  %20 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word12 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %20, i32 0, i32 3
  %21 = load i32, i32* %next_word12, align 4, !tbaa !16
  %shr13 = lshr i32 %21, 24
  %and14 = and i32 %shr13, 255
  %conv15 = trunc i32 %and14 to i8
  store i8 %conv15, i8* %B1, align 1, !tbaa !20
  %22 = load i8, i8* %B1, align 1, !tbaa !20
  %conv16 = zext i8 %22 to i32
  %cmp17 = icmp sgt i32 %conv16, 143
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end
  %23 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %23, i32 0, i32 0
  %24 = load i32, i32* %C, align 4, !tbaa !17
  %add20 = add i32 %24, 65280
  store i32 %add20, i32* %C, align 4, !tbaa !17
  %25 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %25, i32 0, i32 2
  store i32 8, i32* %CT, align 4, !tbaa !18
  %26 = load i8, i8* %B1, align 1, !tbaa !20
  %conv21 = zext i8 %26 to i32
  %or = or i32 65280, %conv21
  %shl = shl i32 %or, 16
  %27 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word22 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %27, i32 0, i32 3
  store i32 %shl, i32* %next_word22, align 4, !tbaa !16
  %28 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes23 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %28, i32 0, i32 4
  store i32 2, i32* %next_word_bytes23, align 4, !tbaa !14
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %29 = load i8, i8* %B1, align 1, !tbaa !20
  %conv24 = zext i8 %29 to i32
  %shl25 = shl i32 %conv24, 9
  %30 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C26 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %30, i32 0, i32 0
  %31 = load i32, i32* %C26, align 4, !tbaa !17
  %add27 = add i32 %31, %shl25
  store i32 %add27, i32* %C26, align 4, !tbaa !17
  %32 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT28 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %32, i32 0, i32 2
  store i32 7, i32* %CT28, align 4, !tbaa !18
  %33 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes29 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %33, i32 0, i32 4
  store i32 4, i32* %next_word_bytes29, align 4, !tbaa !14
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.8
  %34 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else.31:                                       ; preds = %if.then
  %35 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word32 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %35, i32 0, i32 3
  %36 = load i32, i32* %next_word32, align 4, !tbaa !16
  %shr33 = lshr i32 %36, 16
  %and34 = and i32 %shr33, 255
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, i8* %B1, align 1, !tbaa !20
  %37 = load i8, i8* %B1, align 1, !tbaa !20
  %conv36 = zext i8 %37 to i32
  %cmp37 = icmp sgt i32 %conv36, 143
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.else.31
  %38 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C40 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %38, i32 0, i32 0
  %39 = load i32, i32* %C40, align 4, !tbaa !17
  %add41 = add i32 %39, 65280
  store i32 %add41, i32* %C40, align 4, !tbaa !17
  %40 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT42 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %40, i32 0, i32 2
  store i32 8, i32* %CT42, align 4, !tbaa !18
  br label %if.end.52

if.else.43:                                       ; preds = %if.else.31
  %41 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes44 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %41, i32 0, i32 4
  %42 = load i32, i32* %next_word_bytes44, align 4, !tbaa !14
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %next_word_bytes44, align 4, !tbaa !14
  %43 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word45 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %43, i32 0, i32 3
  %44 = load i32, i32* %next_word45, align 4, !tbaa !16
  %shl46 = shl i32 %44, 8
  store i32 %shl46, i32* %next_word45, align 4, !tbaa !16
  %45 = load i8, i8* %B1, align 1, !tbaa !20
  %conv47 = zext i8 %45 to i32
  %shl48 = shl i32 %conv47, 9
  %46 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C49 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %46, i32 0, i32 0
  %47 = load i32, i32* %C49, align 4, !tbaa !17
  %add50 = add i32 %47, %shl48
  store i32 %add50, i32* %C49, align 4, !tbaa !17
  %48 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT51 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %48, i32 0, i32 2
  store i32 7, i32* %CT51, align 4, !tbaa !18
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.53, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %B1) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.95 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.54
  br label %if.end.94

if.else.57:                                       ; preds = %entry
  %49 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT58 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %49, i32 0, i32 2
  store i32 8, i32* %CT58, align 4, !tbaa !18
  %50 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word59 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %50, i32 0, i32 3
  %51 = load i32, i32* %next_word59, align 4, !tbaa !16
  %shl60 = shl i32 %51, 8
  store i32 %shl60, i32* %next_word59, align 4, !tbaa !16
  %52 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes61 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %52, i32 0, i32 4
  %53 = load i32, i32* %next_word_bytes61, align 4, !tbaa !14
  %dec62 = add nsw i32 %53, -1
  store i32 %dec62, i32* %next_word_bytes61, align 4, !tbaa !14
  %54 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes63 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %54, i32 0, i32 4
  %55 = load i32, i32* %next_word_bytes63, align 4, !tbaa !14
  %cmp64 = icmp eq i32 %55, 0
  br i1 %cmp64, label %if.then.66, label %if.end.85

if.then.66:                                       ; preds = %if.else.57
  %56 = bitcast %struct._Jbig2WordStream** %ws67 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %ws68 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %57, i32 0, i32 5
  %58 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws68, align 8, !tbaa !9
  store %struct._Jbig2WordStream* %58, %struct._Jbig2WordStream** %ws67, align 8, !tbaa !1
  %59 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws67, align 8, !tbaa !1
  %get_next_word69 = getelementptr inbounds %struct._Jbig2WordStream, %struct._Jbig2WordStream* %59, i32 0, i32 0
  %60 = load i32 (%struct._Jbig2WordStream*, i32, i32*)*, i32 (%struct._Jbig2WordStream*, i32, i32*)** %get_next_word69, align 8, !tbaa !12
  %61 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws67, align 8, !tbaa !1
  %62 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset70 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %62, i32 0, i32 6
  %63 = load i32, i32* %offset70, align 4, !tbaa !15
  %64 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word71 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %64, i32 0, i32 3
  %call72 = call i32 %60(%struct._Jbig2WordStream* %61, i32 %63, i32* %next_word71) #3
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.then.66
  %65 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %ctx75 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %65, i32 0, i32 7
  %66 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx75, align 8, !tbaa !11
  %67 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset76 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %67, i32 0, i32 6
  %68 = load i32, i32* %offset76, align 4, !tbaa !15
  %call77 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %66, i32 3, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %68) #3
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.78:                                        ; preds = %if.then.66
  %69 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset79 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %69, i32 0, i32 6
  %70 = load i32, i32* %offset79, align 4, !tbaa !15
  %add80 = add nsw i32 %70, 4
  store i32 %add80, i32* %offset79, align 4, !tbaa !15
  %71 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word_bytes81 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %71, i32 0, i32 4
  store i32 4, i32* %next_word_bytes81, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.78, %if.then.74
  %72 = bitcast %struct._Jbig2WordStream** %ws67 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %cleanup.dest.83 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.83, label %cleanup.95 [
    i32 0, label %cleanup.cont.84
  ]

cleanup.cont.84:                                  ; preds = %cleanup.82
  br label %if.end.85

if.end.85:                                        ; preds = %cleanup.cont.84, %if.else.57
  %73 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %next_word86 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %73, i32 0, i32 3
  %74 = load i32, i32* %next_word86, align 4, !tbaa !16
  %shr87 = lshr i32 %74, 24
  %and88 = and i32 %shr87, 255
  %conv89 = trunc i32 %and88 to i8
  store i8 %conv89, i8* %B, align 1, !tbaa !20
  %75 = load i8, i8* %B, align 1, !tbaa !20
  %conv90 = zext i8 %75 to i32
  %shl91 = shl i32 %conv90, 8
  %76 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C92 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %76, i32 0, i32 0
  %77 = load i32, i32* %C92, align 4, !tbaa !17
  %add93 = add i32 %77, %shl91
  store i32 %add93, i32* %C92, align 4, !tbaa !17
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.85, %cleanup.cont.56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %cleanup.82, %cleanup.54
  call void @llvm.lifetime.end(i64 1, i8* %B) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @jbig2_arith_decode(%struct._Jbig2ArithState* %as, i8* %pcx) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %pcx.addr = alloca i8*, align 8
  %cx = alloca i8, align 1
  %pqe = alloca %struct.Jbig2ArithQe*, align 8
  %index = alloca i32, align 4
  %D = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store i8* %pcx, i8** %pcx.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %cx) #1
  %0 = load i8*, i8** %pcx.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !20
  store i8 %1, i8* %cx, align 1, !tbaa !20
  %2 = bitcast %struct.Jbig2ArithQe** %pqe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8, i8* %cx, align 1, !tbaa !20
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 127
  store i32 %and, i32* %index, align 4, !tbaa !21
  %5 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %index, align 4, !tbaa !21
  %cmp = icmp uge i32 %6, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %index, align 4, !tbaa !21
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [47 x %struct.Jbig2ArithQe], [47 x %struct.Jbig2ArithQe]* @jbig2_arith_Qe, i32 0, i64 %idxprom
  store %struct.Jbig2ArithQe* %arrayidx, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else
  %8 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %8, i32 0, i32 0
  %9 = load i16, i16* %Qe, align 2, !tbaa !22
  %conv2 = zext i16 %9 to i32
  %10 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %10, i32 0, i32 1
  %11 = load i32, i32* %A, align 4, !tbaa !19
  %sub = sub nsw i32 %11, %conv2
  store i32 %sub, i32* %A, align 4, !tbaa !19
  %12 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %12, i32 0, i32 0
  %13 = load i32, i32* %C, align 4, !tbaa !17
  %shr = lshr i32 %13, 16
  %14 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe3 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %14, i32 0, i32 0
  %15 = load i16, i16* %Qe3, align 2, !tbaa !22
  %conv4 = zext i16 %15 to i32
  %cmp5 = icmp ult i32 %shr, %conv4
  br i1 %cmp5, label %if.else.42, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe8 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %16, i32 0, i32 0
  %17 = load i16, i16* %Qe8, align 2, !tbaa !22
  %conv9 = zext i16 %17 to i32
  %shl = shl i32 %conv9, 16
  %18 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C10 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %18, i32 0, i32 0
  %19 = load i32, i32* %C10, align 4, !tbaa !17
  %sub11 = sub i32 %19, %shl
  store i32 %sub11, i32* %C10, align 4, !tbaa !17
  %20 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A12 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %20, i32 0, i32 1
  %21 = load i32, i32* %A12, align 4, !tbaa !19
  %and13 = and i32 %21, 32768
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.39

if.then.16:                                       ; preds = %if.then.7
  %22 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A17 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %22, i32 0, i32 1
  %23 = load i32, i32* %A17, align 4, !tbaa !19
  %24 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe18 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %24, i32 0, i32 0
  %25 = load i16, i16* %Qe18, align 2, !tbaa !22
  %conv19 = zext i16 %25 to i32
  %cmp20 = icmp slt i32 %23, %conv19
  br i1 %cmp20, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.then.16
  %26 = load i8, i8* %cx, align 1, !tbaa !20
  %conv23 = zext i8 %26 to i32
  %shr24 = ashr i32 %conv23, 7
  %sub25 = sub nsw i32 1, %shr24
  store i32 %sub25, i32* %D, align 4, !tbaa !21
  %27 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %lps_xor = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %27, i32 0, i32 2
  %28 = load i8, i8* %lps_xor, align 1, !tbaa !25
  %conv26 = zext i8 %28 to i32
  %29 = load i8*, i8** %pcx.addr, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !20
  %conv27 = zext i8 %30 to i32
  %xor = xor i32 %conv27, %conv26
  %conv28 = trunc i32 %xor to i8
  store i8 %conv28, i8* %29, align 1, !tbaa !20
  br label %if.end.36

if.else.29:                                       ; preds = %if.then.16
  %31 = load i8, i8* %cx, align 1, !tbaa !20
  %conv30 = zext i8 %31 to i32
  %shr31 = ashr i32 %conv30, 7
  store i32 %shr31, i32* %D, align 4, !tbaa !21
  %32 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %mps_xor = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %32, i32 0, i32 1
  %33 = load i8, i8* %mps_xor, align 1, !tbaa !26
  %conv32 = zext i8 %33 to i32
  %34 = load i8*, i8** %pcx.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !20
  %conv33 = zext i8 %35 to i32
  %xor34 = xor i32 %conv33, %conv32
  %conv35 = trunc i32 %xor34 to i8
  store i8 %conv35, i8* %34, align 1, !tbaa !20
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.29, %if.then.22
  %36 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_arith_renormd(%struct._Jbig2ArithState* %36) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.36
  %37 = load i32, i32* %D, align 4, !tbaa !21
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.39:                                       ; preds = %if.then.7
  %38 = load i8, i8* %cx, align 1, !tbaa !20
  %conv40 = zext i8 %38 to i32
  %shr41 = ashr i32 %conv40, 7
  store i32 %shr41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.42:                                       ; preds = %if.end
  %39 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A43 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %39, i32 0, i32 1
  %40 = load i32, i32* %A43, align 4, !tbaa !19
  %41 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe44 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %41, i32 0, i32 0
  %42 = load i16, i16* %Qe44, align 2, !tbaa !22
  %conv45 = zext i16 %42 to i32
  %cmp46 = icmp slt i32 %40, %conv45
  br i1 %cmp46, label %if.then.48, label %if.else.59

if.then.48:                                       ; preds = %if.else.42
  %43 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe49 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %43, i32 0, i32 0
  %44 = load i16, i16* %Qe49, align 2, !tbaa !22
  %conv50 = zext i16 %44 to i32
  %45 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A51 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %45, i32 0, i32 1
  store i32 %conv50, i32* %A51, align 4, !tbaa !19
  %46 = load i8, i8* %cx, align 1, !tbaa !20
  %conv52 = zext i8 %46 to i32
  %shr53 = ashr i32 %conv52, 7
  store i32 %shr53, i32* %D, align 4, !tbaa !21
  %47 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %mps_xor54 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %47, i32 0, i32 1
  %48 = load i8, i8* %mps_xor54, align 1, !tbaa !26
  %conv55 = zext i8 %48 to i32
  %49 = load i8*, i8** %pcx.addr, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !20
  %conv56 = zext i8 %50 to i32
  %xor57 = xor i32 %conv56, %conv55
  %conv58 = trunc i32 %xor57 to i8
  store i8 %conv58, i8* %49, align 1, !tbaa !20
  br label %if.end.71

if.else.59:                                       ; preds = %if.else.42
  %51 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %Qe60 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %51, i32 0, i32 0
  %52 = load i16, i16* %Qe60, align 2, !tbaa !22
  %conv61 = zext i16 %52 to i32
  %53 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A62 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %53, i32 0, i32 1
  store i32 %conv61, i32* %A62, align 4, !tbaa !19
  %54 = load i8, i8* %cx, align 1, !tbaa !20
  %conv63 = zext i8 %54 to i32
  %shr64 = ashr i32 %conv63, 7
  %sub65 = sub nsw i32 1, %shr64
  store i32 %sub65, i32* %D, align 4, !tbaa !21
  %55 = load %struct.Jbig2ArithQe*, %struct.Jbig2ArithQe** %pqe, align 8, !tbaa !1
  %lps_xor66 = getelementptr inbounds %struct.Jbig2ArithQe, %struct.Jbig2ArithQe* %55, i32 0, i32 2
  %56 = load i8, i8* %lps_xor66, align 1, !tbaa !25
  %conv67 = zext i8 %56 to i32
  %57 = load i8*, i8** %pcx.addr, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !20
  %conv68 = zext i8 %58 to i32
  %xor69 = xor i32 %conv68, %conv67
  %conv70 = trunc i32 %xor69 to i8
  store i8 %conv70, i8* %57, align 1, !tbaa !20
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.59, %if.then.48
  %59 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call72 = call i32 @jbig2_arith_renormd(%struct._Jbig2ArithState* %59) #3
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.71
  %60 = load i32, i32* %D, align 4, !tbaa !21
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.74, %if.else.39, %if.end.38, %if.then.37, %if.then
  %61 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.Jbig2ArithQe** %pqe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  call void @llvm.lifetime.end(i64 1, i8* %cx) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @jbig2_arith_renormd(%struct._Jbig2ArithState* %as) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %0, i32 0, i32 2
  %1 = load i32, i32* %CT, align 4, !tbaa !18
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_arith_bytein(%struct._Jbig2ArithState* %2) #3
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.body
  %3 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %3, i32 0, i32 1
  %4 = load i32, i32* %A, align 4, !tbaa !19
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %A, align 4, !tbaa !19
  %5 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %5, i32 0, i32 0
  %6 = load i32, i32* %C, align 4, !tbaa !17
  %shl2 = shl i32 %6, 1
  store i32 %shl2, i32* %C, align 4, !tbaa !17
  %7 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %CT3 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %7, i32 0, i32 2
  %8 = load i32, i32* %CT3, align 4, !tbaa !18
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %CT3, align 4, !tbaa !18
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %A4 = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %9, i32 0, i32 1
  %10 = load i32, i32* %A4, align 4, !tbaa !19
  %and = and i32 %10, 32768
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_arith_get_offset(%struct._Jbig2ArithState* %as) #0 {
entry:
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %0 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct._Jbig2ArithState, %struct._Jbig2ArithState* %0, i32 0, i32 6
  %1 = load i32, i32* %offset, align 4, !tbaa !15
  ret i32 %1
}

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
!5 = !{!6, !2, i64 0}
!6 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48, !8, i64 56, !8, i64 60, !3, i64 64, !3, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !2, i64 104}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !2, i64 24}
!10 = !{!"_Jbig2ArithState", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40}
!11 = !{!10, !2, i64 40}
!12 = !{!13, !2, i64 0}
!13 = !{!"_Jbig2WordStream", !2, i64 0}
!14 = !{!10, !8, i64 16}
!15 = !{!10, !8, i64 32}
!16 = !{!10, !8, i64 12}
!17 = !{!10, !8, i64 0}
!18 = !{!10, !8, i64 8}
!19 = !{!10, !8, i64 4}
!20 = !{!3, !3, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"", !24, i64 0, !3, i64 2, !3, i64 3}
!24 = !{!"short", !3, i64 0}
!25 = !{!23, !3, i64 3}
!26 = !{!23, !3, i64 2}
