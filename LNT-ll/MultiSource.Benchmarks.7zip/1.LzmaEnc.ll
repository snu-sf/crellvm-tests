; ModuleID = './MultiSource.Benchmarks.7zip/1.LzmaEnc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.CLzmaEnc = type { %struct._IMatchFinder, i8*, i32, %struct._CMatchFinderMt, %struct._CMatchFinder, [128 x i8], i32, i32, i32, i32, i32, [4096 x %struct.COptimal], [8192 x i8], [128 x i32], [549 x i32], i32, i32, [4 x i32], i32, [4 x [64 x i32]], [4 x [128 x i32]], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i16*, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.CLenPriceEnc, %struct.CLenPriceEnc, i32, i32, %struct.CRangeEnc, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.CSaveState }
%struct._IMatchFinder = type { void (i8*)*, i8 (i8*, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*, i32*)*, void (i8*, i32)* }
%struct._CMatchFinderMt = type { i8*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32*, i32* (i8*, i32, i32*)*, %struct._CMtSync, [128 x i8], i32*, i32, i32, i32, i32*, i32, i32, i32, i8*, i32, i32, i32, %struct._CMtSync, void (i8*, i32, i32*, i32, i32*, i32, i32*)*, %struct._CMatchFinder* }
%struct._CMtSync = type { i32, i32, i32, i32, %struct._CThread, %struct._CEvent, %struct._CEvent, %struct._CEvent, %struct._CSemaphore, %struct._CSemaphore, i32, i32, %struct.CCriticalSection, i32 }
%struct._CThread = type { i64, i32 }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._CSemaphore = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%struct._CMatchFinder = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i8*, %struct.ISeqInStream*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.COptimal = type { i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.CLenPriceEnc = type { %struct.CLenEnc, [16 x [272 x i32]], i32, [16 x i32] }
%struct.CLenEnc = type { i16, i16, [128 x i16], [128 x i16], [256 x i16] }
%struct.CRangeEnc = type { i32, i8, i64, i64, i8*, i8*, i8*, %struct.ISeqOutStream*, i64, i32 }
%struct.ISeqOutStream = type { i64 (i8*, i8*, i64)* }
%struct.CSaveState = type { i16*, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.CLenPriceEnc, %struct.CLenPriceEnc, [4 x i32], i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CSeqOutStreamBuf = type { %struct.ISeqOutStream, i8*, i64, i32 }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }

@kLiteralNextStates = internal constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16
@kShortRepNextStates = internal constant [12 x i32] [i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kRepNextStates = internal constant [12 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kMatchNextStates = internal constant [12 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 10, i32 10, i32 10, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define void @LzmaEncProps_Init(%struct._CLzmaEncProps* %p) #0 {
entry:
  %p.addr = alloca %struct._CLzmaEncProps*, align 8
  store %struct._CLzmaEncProps* %p, %struct._CLzmaEncProps** %p.addr, align 8
  %0 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %level = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %0, i32 0, i32 0
  store i32 5, i32* %level, align 4
  %1 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %mc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %1, i32 0, i32 9
  store i32 0, i32* %mc, align 4
  %2 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %dictSize = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %2, i32 0, i32 1
  store i32 0, i32* %dictSize, align 4
  %3 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numThreads = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %3, i32 0, i32 11
  store i32 -1, i32* %numThreads, align 4
  %4 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %4, i32 0, i32 8
  store i32 -1, i32* %numHashBytes, align 4
  %5 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %btMode = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %5, i32 0, i32 7
  store i32 -1, i32* %btMode, align 4
  %6 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %fb = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %6, i32 0, i32 6
  store i32 -1, i32* %fb, align 4
  %7 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %algo = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %7, i32 0, i32 5
  store i32 -1, i32* %algo, align 4
  %8 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %pb = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %8, i32 0, i32 4
  store i32 -1, i32* %pb, align 4
  %9 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lp = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %9, i32 0, i32 3
  store i32 -1, i32* %lp, align 4
  %10 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %10, i32 0, i32 2
  store i32 -1, i32* %lc, align 4
  %11 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %writeEndMark = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %11, i32 0, i32 10
  store i32 0, i32* %writeEndMark, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %p) #0 {
entry:
  %p.addr = alloca %struct._CLzmaEncProps*, align 8
  %level = alloca i32, align 4
  store %struct._CLzmaEncProps* %p, %struct._CLzmaEncProps** %p.addr, align 8
  %0 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %level1 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %0, i32 0, i32 0
  %1 = load i32, i32* %level1, align 4
  store i32 %1, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %level, align 4
  %4 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %level2 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %4, i32 0, i32 0
  store i32 %3, i32* %level2, align 4
  %5 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %dictSize = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %5, i32 0, i32 1
  %6 = load i32, i32* %dictSize, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %level, align 4
  %cmp5 = icmp sle i32 %7, 5
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %8 = load i32, i32* %level, align 4
  %mul = mul nsw i32 %8, 2
  %add = add nsw i32 %mul, 14
  %shl = shl i32 1, %add
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %9 = load i32, i32* %level, align 4
  %cmp6 = icmp eq i32 %9, 6
  %cond = select i1 %cmp6, i32 33554432, i32 67108864
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ %shl, %cond.true ], [ %cond, %cond.false ]
  %10 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %dictSize8 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %10, i32 0, i32 1
  store i32 %cond7, i32* %dictSize8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.end
  %11 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %11, i32 0, i32 2
  %12 = load i32, i32* %lc, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lc12 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %13, i32 0, i32 2
  store i32 3, i32* %lc12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %14 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lp = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %14, i32 0, i32 3
  %15 = load i32, i32* %lp, align 4
  %cmp14 = icmp slt i32 %15, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %16 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %lp16 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %16, i32 0, i32 3
  store i32 0, i32* %lp16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %17 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %pb = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %17, i32 0, i32 4
  %18 = load i32, i32* %pb, align 4
  %cmp18 = icmp slt i32 %18, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %19 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %pb20 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %19, i32 0, i32 4
  store i32 2, i32* %pb20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %20 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %algo = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %20, i32 0, i32 5
  %21 = load i32, i32* %algo, align 4
  %cmp22 = icmp slt i32 %21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  %22 = load i32, i32* %level, align 4
  %cmp24 = icmp slt i32 %22, 5
  %cond25 = select i1 %cmp24, i32 0, i32 1
  %23 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %algo26 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %23, i32 0, i32 5
  store i32 %cond25, i32* %algo26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.21
  %24 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %fb = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %24, i32 0, i32 6
  %25 = load i32, i32* %fb, align 4
  %cmp28 = icmp slt i32 %25, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.27
  %26 = load i32, i32* %level, align 4
  %cmp30 = icmp slt i32 %26, 7
  %cond31 = select i1 %cmp30, i32 32, i32 64
  %27 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %fb32 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %27, i32 0, i32 6
  store i32 %cond31, i32* %fb32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.end.27
  %28 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %btMode = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %28, i32 0, i32 7
  %29 = load i32, i32* %btMode, align 4
  %cmp34 = icmp slt i32 %29, 0
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.33
  %30 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %algo36 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %30, i32 0, i32 5
  %31 = load i32, i32* %algo36, align 4
  %cmp37 = icmp eq i32 %31, 0
  %cond38 = select i1 %cmp37, i32 0, i32 1
  %32 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %btMode39 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %32, i32 0, i32 7
  store i32 %cond38, i32* %btMode39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.33
  %33 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numHashBytes = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %33, i32 0, i32 8
  %34 = load i32, i32* %numHashBytes, align 4
  %cmp41 = icmp slt i32 %34, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %35 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numHashBytes43 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %35, i32 0, i32 8
  store i32 4, i32* %numHashBytes43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %36 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %mc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %36, i32 0, i32 9
  %37 = load i32, i32* %mc, align 4
  %cmp45 = icmp eq i32 %37, 0
  br i1 %cmp45, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %if.end.44
  %38 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %fb47 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %38, i32 0, i32 6
  %39 = load i32, i32* %fb47, align 4
  %shr = ashr i32 %39, 1
  %add48 = add nsw i32 16, %shr
  %40 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %btMode49 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %40, i32 0, i32 7
  %41 = load i32, i32* %btMode49, align 4
  %tobool = icmp ne i32 %41, 0
  %cond50 = select i1 %tobool, i32 0, i32 1
  %shr51 = ashr i32 %add48, %cond50
  %42 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %mc52 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %42, i32 0, i32 9
  store i32 %shr51, i32* %mc52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.46, %if.end.44
  %43 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numThreads = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %43, i32 0, i32 11
  %44 = load i32, i32* %numThreads, align 4
  %cmp54 = icmp slt i32 %44, 0
  br i1 %cmp54, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.53
  %45 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %btMode56 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %45, i32 0, i32 7
  %46 = load i32, i32* %btMode56, align 4
  %tobool57 = icmp ne i32 %46, 0
  br i1 %tobool57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.55
  %47 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %algo58 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %47, i32 0, i32 5
  %48 = load i32, i32* %algo58, align 4
  %tobool59 = icmp ne i32 %48, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.55
  %49 = phi i1 [ false, %if.then.55 ], [ %tobool59, %land.rhs ]
  %cond60 = select i1 %49, i32 2, i32 1
  %50 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %p.addr, align 8
  %numThreads61 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %50, i32 0, i32 11
  store i32 %cond60, i32* %numThreads61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %land.end, %if.end.53
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEncProps_GetDictSize(%struct._CLzmaEncProps* %props2) #0 {
entry:
  %props2.addr = alloca %struct._CLzmaEncProps*, align 8
  %props = alloca %struct._CLzmaEncProps, align 4
  store %struct._CLzmaEncProps* %props2, %struct._CLzmaEncProps** %props2.addr, align 8
  %0 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %props2.addr, align 8
  %1 = bitcast %struct._CLzmaEncProps* %props to i8*
  %2 = bitcast %struct._CLzmaEncProps* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 48, i32 4, i1 false)
  call void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %props)
  %dictSize = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 1
  %3 = load i32, i32* %dictSize, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @LzmaEnc_FastPosInit(i8* %g_FastPos) #0 {
entry:
  %g_FastPos.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %slotFast = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %g_FastPos, i8** %g_FastPos.addr, align 8
  store i32 2, i32* %c, align 4
  %0 = load i8*, i8** %g_FastPos.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i8*, i8** %g_FastPos.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 1, i8* %arrayidx1, align 1
  store i32 2, i32* %slotFast, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %2 = load i32, i32* %slotFast, align 4
  %cmp = icmp slt i32 %2, 26
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %slotFast, align 4
  %shr = ashr i32 %3, 1
  %sub = sub nsw i32 %shr, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %k, align 4
  %cmp3 = icmp ult i32 %4, %5
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %slotFast, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i32, i32* %c, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %g_FastPos.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %9 = load i32, i32* %j, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %j, align 4
  %10 = load i32, i32* %c, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %c, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %11 = load i32, i32* %slotFast, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* %slotFast, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_SaveState(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  %dest = alloca %struct.CSaveState*, align 8
  %i = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %saveState = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 53
  store %struct.CSaveState* %saveState, %struct.CSaveState** %dest, align 8
  %3 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %lenEnc = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %3, i32 0, i32 10
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lenEnc1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 39
  %5 = bitcast %struct.CLenPriceEnc* %lenEnc to i8*
  %6 = bitcast %struct.CLenPriceEnc* %lenEnc1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 18504, i32 4, i1 false)
  %7 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %repLenEnc = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %7, i32 0, i32 11
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %repLenEnc2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 40
  %9 = bitcast %struct.CLenPriceEnc* %repLenEnc to i8*
  %10 = bitcast %struct.CLenPriceEnc* %repLenEnc2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 18504, i32 4, i1 false)
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %state = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 18
  %12 = load i32, i32* %state, align 4
  %13 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %state3 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %13, i32 0, i32 13
  store i32 %12, i32* %state3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %14, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isMatch = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom
  %17 = bitcast [16 x i16]* %arrayidx to i8*
  %18 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %18 to i64
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isMatch5 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 30
  %arrayidx6 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch5, i32 0, i64 %idxprom4
  %20 = bitcast [16 x i16]* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %20, i64 32, i32 2, i1 false)
  %21 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isRep0Long = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %22, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom7
  %23 = bitcast [16 x i16]* %arrayidx8 to i8*
  %24 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isRep0Long10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %25, i32 0, i32 35
  %arrayidx11 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long10, i32 0, i64 %idxprom9
  %26 = bitcast [16 x i16]* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %26, i64 32, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %for.end
  %28 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %28, 4
  br i1 %cmp13, label %for.body.14, label %for.end.22

for.body.14:                                      ; preds = %for.cond.12
  %29 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %30, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom15
  %31 = bitcast [64 x i16]* %arrayidx16 to i8*
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %posSlotEncoder18 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %33, i32 0, i32 36
  %arrayidx19 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder18, i32 0, i64 %idxprom17
  %34 = bitcast [64 x i16]* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %34, i64 128, i32 2, i1 false)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.14
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  %36 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isRep = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %36, i32 0, i32 2
  %37 = bitcast [12 x i16]* %isRep to i8*
  %38 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isRep23 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %38, i32 0, i32 31
  %39 = bitcast [12 x i16]* %isRep23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 24, i32 8, i1 false)
  %40 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isRepG0 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %40, i32 0, i32 3
  %41 = bitcast [12 x i16]* %isRepG0 to i8*
  %42 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isRepG024 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %42, i32 0, i32 32
  %43 = bitcast [12 x i16]* %isRepG024 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %43, i64 24, i32 8, i1 false)
  %44 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isRepG1 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %44, i32 0, i32 4
  %45 = bitcast [12 x i16]* %isRepG1 to i8*
  %46 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isRepG125 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %46, i32 0, i32 33
  %47 = bitcast [12 x i16]* %isRepG125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 24, i32 8, i1 false)
  %48 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %isRepG2 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %48, i32 0, i32 5
  %49 = bitcast [12 x i16]* %isRepG2 to i8*
  %50 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %isRepG226 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %50, i32 0, i32 34
  %51 = bitcast [12 x i16]* %isRepG226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 24, i32 8, i1 false)
  %52 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %posEncoders = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %52, i32 0, i32 8
  %53 = bitcast [114 x i16]* %posEncoders to i8*
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %posEncoders27 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %54, i32 0, i32 37
  %55 = bitcast [114 x i16]* %posEncoders27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %55, i64 228, i32 8, i1 false)
  %56 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %56, i32 0, i32 9
  %57 = bitcast [16 x i16]* %posAlignEncoder to i8*
  %58 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %posAlignEncoder28 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %58, i32 0, i32 38
  %59 = bitcast [16 x i16]* %posAlignEncoder28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %59, i64 32, i32 4, i1 false)
  %60 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %reps = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %60, i32 0, i32 12
  %61 = bitcast [4 x i32]* %reps to i8*
  %62 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %reps29 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %62, i32 0, i32 17
  %63 = bitcast [4 x i32]* %reps29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %63, i64 16, i32 4, i1 false)
  %64 = load %struct.CSaveState*, %struct.CSaveState** %dest, align 8
  %litProbs = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %64, i32 0, i32 0
  %65 = load i16*, i16** %litProbs, align 8
  %66 = bitcast i16* %65 to i8*
  %67 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %litProbs30 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %67, i32 0, i32 29
  %68 = load i16*, i16** %litProbs30, align 8
  %69 = bitcast i16* %68 to i8*
  %70 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lclp = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %70, i32 0, i32 41
  %71 = load i32, i32* %lclp, align 4
  %shl = shl i32 768, %71
  %conv = sext i32 %shl to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %69, i64 %mul, i32 2, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_RestoreState(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %dest = alloca %struct.CLzmaEnc*, align 8
  %p = alloca %struct.CSaveState*, align 8
  %i = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %dest, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %saveState = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 53
  store %struct.CSaveState* %saveState, %struct.CSaveState** %p, align 8
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 39
  %4 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %lenEnc1 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %4, i32 0, i32 10
  %5 = bitcast %struct.CLenPriceEnc* %lenEnc to i8*
  %6 = bitcast %struct.CLenPriceEnc* %lenEnc1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 18504, i32 4, i1 false)
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 40
  %8 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %repLenEnc2 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %8, i32 0, i32 11
  %9 = bitcast %struct.CLenPriceEnc* %repLenEnc to i8*
  %10 = bitcast %struct.CLenPriceEnc* %repLenEnc2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 18504, i32 4, i1 false)
  %11 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %state = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %11, i32 0, i32 13
  %12 = load i32, i32* %state, align 4
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %state3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 18
  store i32 %12, i32* %state3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %14, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isMatch = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %16, i32 0, i32 30
  %arrayidx = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom
  %17 = bitcast [16 x i16]* %arrayidx to i8*
  %18 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %18 to i64
  %19 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isMatch5 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %19, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch5, i32 0, i64 %idxprom4
  %20 = bitcast [16 x i16]* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %20, i64 32, i32 2, i1 false)
  %21 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isRep0Long = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 35
  %arrayidx8 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom7
  %23 = bitcast [16 x i16]* %arrayidx8 to i8*
  %24 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isRep0Long10 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %25, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long10, i32 0, i64 %idxprom9
  %26 = bitcast [16 x i16]* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %26, i64 32, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %for.end
  %28 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %28, 4
  br i1 %cmp13, label %for.body.14, label %for.end.22

for.body.14:                                      ; preds = %for.cond.12
  %29 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %30, i32 0, i32 36
  %arrayidx16 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom15
  %31 = bitcast [64 x i16]* %arrayidx16 to i8*
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %posSlotEncoder18 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %33, i32 0, i32 7
  %arrayidx19 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder18, i32 0, i64 %idxprom17
  %34 = bitcast [64 x i16]* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %34, i64 128, i32 2, i1 false)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.14
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  %36 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isRep = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %36, i32 0, i32 31
  %37 = bitcast [12 x i16]* %isRep to i8*
  %38 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isRep23 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %38, i32 0, i32 2
  %39 = bitcast [12 x i16]* %isRep23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 24, i32 8, i1 false)
  %40 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isRepG0 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %40, i32 0, i32 32
  %41 = bitcast [12 x i16]* %isRepG0 to i8*
  %42 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isRepG024 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %42, i32 0, i32 3
  %43 = bitcast [12 x i16]* %isRepG024 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %43, i64 24, i32 8, i1 false)
  %44 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isRepG1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %44, i32 0, i32 33
  %45 = bitcast [12 x i16]* %isRepG1 to i8*
  %46 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isRepG125 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %46, i32 0, i32 4
  %47 = bitcast [12 x i16]* %isRepG125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 24, i32 8, i1 false)
  %48 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %isRepG2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %48, i32 0, i32 34
  %49 = bitcast [12 x i16]* %isRepG2 to i8*
  %50 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %isRepG226 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %50, i32 0, i32 5
  %51 = bitcast [12 x i16]* %isRepG226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 24, i32 8, i1 false)
  %52 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %posEncoders = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %52, i32 0, i32 37
  %53 = bitcast [114 x i16]* %posEncoders to i8*
  %54 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %posEncoders27 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %54, i32 0, i32 8
  %55 = bitcast [114 x i16]* %posEncoders27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %55, i64 228, i32 8, i1 false)
  %56 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %56, i32 0, i32 38
  %57 = bitcast [16 x i16]* %posAlignEncoder to i8*
  %58 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %posAlignEncoder28 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %58, i32 0, i32 9
  %59 = bitcast [16 x i16]* %posAlignEncoder28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %59, i64 32, i32 4, i1 false)
  %60 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %reps = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %60, i32 0, i32 17
  %61 = bitcast [4 x i32]* %reps to i8*
  %62 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %reps29 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %62, i32 0, i32 12
  %63 = bitcast [4 x i32]* %reps29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %63, i64 16, i32 4, i1 false)
  %64 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %64, i32 0, i32 29
  %65 = load i16*, i16** %litProbs, align 8
  %66 = bitcast i16* %65 to i8*
  %67 = load %struct.CSaveState*, %struct.CSaveState** %p, align 8
  %litProbs30 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %67, i32 0, i32 0
  %68 = load i16*, i16** %litProbs30, align 8
  %69 = bitcast i16* %68 to i8*
  %70 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %dest, align 8
  %lclp = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %70, i32 0, i32 41
  %71 = load i32, i32* %lclp, align 4
  %shl = shl i32 768, %71
  %conv = sext i32 %shl to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %69, i64 %mul, i32 2, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_SetProps(i8* %pp, %struct._CLzmaEncProps* %props2) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %props2.addr = alloca %struct._CLzmaEncProps*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  %props = alloca %struct._CLzmaEncProps, align 4
  %fb = alloca i32, align 4
  %numHashBytes = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store %struct._CLzmaEncProps* %props2, %struct._CLzmaEncProps** %props2.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %props2.addr, align 8
  %3 = bitcast %struct._CLzmaEncProps* %props to i8*
  %4 = bitcast %struct._CLzmaEncProps* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 48, i32 4, i1 false)
  call void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %props)
  %lc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 2
  %5 = load i32, i32* %lc, align 4
  %cmp = icmp sgt i32 %5, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %lp = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 3
  %6 = load i32, i32* %lp, align 4
  %cmp1 = icmp sgt i32 %6, 4
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %pb = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 4
  %7 = load i32, i32* %pb, align 4
  %cmp3 = icmp sgt i32 %7, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %dictSize = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 1
  %8 = load i32, i32* %dictSize, align 4
  %cmp5 = icmp ugt i32 %8, -2147483648
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %dictSize7 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 1
  %9 = load i32, i32* %dictSize7, align 4
  %cmp8 = icmp ugt i32 %9, 1073741824
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6
  %dictSize9 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 1
  %10 = load i32, i32* %dictSize9, align 4
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %dictSize10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 50
  store i32 %10, i32* %dictSize10, align 4
  %mc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 9
  %12 = load i32, i32* %mc, align 4
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderCycles = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 51
  store i32 %12, i32* %matchFinderCycles, align 4
  %fb11 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 6
  %14 = load i32, i32* %fb11, align 4
  store i32 %14, i32* %fb, align 4
  %15 = load i32, i32* %fb, align 4
  %cmp12 = icmp ult i32 %15, 5
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 5, i32* %fb, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %16 = load i32, i32* %fb, align 4
  %cmp15 = icmp ugt i32 %16, 273
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 273, i32* %fb, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %17 = load i32, i32* %fb, align 4
  %18 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %18, i32 0, i32 15
  store i32 %17, i32* %numFastBytes, align 4
  %lc18 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 2
  %19 = load i32, i32* %lc18, align 4
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lc19 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 24
  store i32 %19, i32* %lc19, align 4
  %lp20 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 3
  %21 = load i32, i32* %lp20, align 4
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lp21 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 25
  store i32 %21, i32* %lp21, align 4
  %pb22 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 4
  %23 = load i32, i32* %pb22, align 4
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %pb23 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %24, i32 0, i32 26
  store i32 %23, i32* %pb23, align 4
  %algo = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 5
  %25 = load i32, i32* %algo, align 4
  %cmp24 = icmp eq i32 %25, 0
  %conv = zext i1 %cmp24 to i32
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %fastMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 42
  store i32 %conv, i32* %fastMode, align 4
  %btMode = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 7
  %27 = load i32, i32* %btMode, align 4
  %28 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %28, i32 0, i32 4
  %btMode25 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 21
  store i32 %27, i32* %btMode25, align 4
  store i32 4, i32* %numHashBytes, align 4
  %btMode26 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 7
  %29 = load i32, i32* %btMode26, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.17
  %numHashBytes28 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 8
  %30 = load i32, i32* %numHashBytes28, align 4
  %cmp29 = icmp slt i32 %30, 2
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.27
  store i32 2, i32* %numHashBytes, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.then.27
  %numHashBytes32 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 8
  %31 = load i32, i32* %numHashBytes32, align 4
  %cmp33 = icmp slt i32 %31, 4
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else
  %numHashBytes36 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 8
  %32 = load i32, i32* %numHashBytes36, align 4
  store i32 %32, i32* %numHashBytes, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.17
  %33 = load i32, i32* %numHashBytes, align 4
  %34 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderBase40 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %34, i32 0, i32 4
  %numHashBytes41 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase40, i32 0, i32 18
  store i32 %33, i32* %numHashBytes41, align 4
  %mc42 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 9
  %35 = load i32, i32* %mc42, align 4
  %36 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderBase43 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %36, i32 0, i32 4
  %cutValue = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase43, i32 0, i32 11
  store i32 %35, i32* %cutValue, align 4
  %writeEndMark = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 10
  %37 = load i32, i32* %writeEndMark, align 4
  %38 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %writeEndMark44 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %38, i32 0, i32 44
  store i32 %37, i32* %writeEndMark44, align 4
  %numThreads = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %props, i32 0, i32 11
  %39 = load i32, i32* %numThreads, align 4
  %cmp45 = icmp sgt i32 %39, 1
  %conv46 = zext i1 %cmp45 to i32
  %40 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %multiThread = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %40, i32 0, i32 48
  store i32 %conv46, i32* %multiThread, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_InitPriceTables(i32* %ProbPrices) #0 {
entry:
  %ProbPrices.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %kCyclesBits = alloca i32, align 4
  %w = alloca i32, align 4
  %bitCount = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 4, i32* %kCyclesBits, align 4
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %w, align 4
  store i32 0, i32* %bitCount, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %w, align 4
  %4 = load i32, i32* %w, align 4
  %mul = mul i32 %3, %4
  store i32 %mul, i32* %w, align 4
  %5 = load i32, i32* %bitCount, align 4
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %bitCount, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.3
  %6 = load i32, i32* %w, align 4
  %cmp4 = icmp uge i32 %6, 65536
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %w, align 4
  %shr = lshr i32 %7, 1
  store i32 %shr, i32* %w, align 4
  %8 = load i32, i32* %bitCount, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %bitCount, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %9 = load i32, i32* %j, align 4
  %inc5 = add nsw i32 %9, 1
  store i32 %inc5, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %10 = load i32, i32* %bitCount, align 4
  %sub = sub i32 161, %10
  %11 = load i32, i32* %i, align 4
  %shr6 = lshr i32 %11, 4
  %idxprom = zext i32 %shr6 to i64
  %12 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %add = add i32 %13, 16
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_Construct(%struct.CLzmaEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %props = alloca %struct._CLzmaEncProps, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 43
  call void @RangeEnc_Construct(%struct.CRangeEnc* %rc)
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 4
  call void @MatchFinder_Construct(%struct._CMatchFinder* %matchFinderBase)
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 3
  call void @MatchFinderMt_Construct(%struct._CMatchFinderMt* %matchFinderMt)
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 4
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 3
  %MatchFinder = getelementptr inbounds %struct._CMatchFinderMt, %struct._CMatchFinderMt* %matchFinderMt2, i32 0, i32 27
  store %struct._CMatchFinder* %matchFinderBase1, %struct._CMatchFinder** %MatchFinder, align 8
  call void @LzmaEncProps_Init(%struct._CLzmaEncProps* %props)
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %6 = bitcast %struct.CLzmaEnc* %5 to i8*
  %call = call i32 @LzmaEnc_SetProps(i8* %6, %struct._CLzmaEncProps* %props)
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 12
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos, i32 0, i32 0
  call void @LzmaEnc_FastPosInit(i8* %arraydecay)
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 13
  %arraydecay3 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  call void @LzmaEnc_InitPriceTables(i32* %arraydecay3)
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 29
  store i16* null, i16** %litProbs, align 8
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 53
  %litProbs4 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState, i32 0, i32 0
  store i16* null, i16** %litProbs4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Construct(%struct.CRangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %outStream = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 7
  store %struct.ISeqOutStream* null, %struct.ISeqOutStream** %outStream, align 8
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %1, i32 0, i32 6
  store i8* null, i8** %bufBase, align 8
  ret void
}

declare void @MatchFinder_Construct(%struct._CMatchFinder*) #2

declare void @MatchFinderMt_Construct(%struct._CMatchFinderMt*) #2

; Function Attrs: nounwind uwtable
define i8* @LzmaEnc_Create(%struct.ISzAlloc* %alloc) #0 {
entry:
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca i8*, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 0
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %call = call i8* %1(i8* %3, i64 291032)
  store i8* %call, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = bitcast i8* %5 to %struct.CLzmaEnc*
  call void @LzmaEnc_Construct(%struct.CLzmaEnc* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %p, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_FreeLits(%struct.CLzmaEnc* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 29
  %5 = load i16*, i16** %litProbs, align 8
  %6 = bitcast i16* %5 to i8*
  call void %1(i8* %3, i8* %6)
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free1 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %7, i32 0, i32 1
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %Free1, align 8
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %10 = bitcast %struct.ISzAlloc* %9 to i8*
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 53
  %litProbs2 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState, i32 0, i32 0
  %12 = load i16*, i16** %litProbs2, align 8
  %13 = bitcast i16* %12 to i8*
  call void %8(i8* %10, i8* %13)
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 29
  store i16* null, i16** %litProbs3, align 8
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState4 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %15, i32 0, i32 53
  %litProbs5 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState4, i32 0, i32 0
  store i16* null, i16** %litProbs5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_Destruct(%struct.CLzmaEnc* %p, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 3
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  call void @MatchFinderMt_Destruct(%struct._CMatchFinderMt* %matchFinderMt, %struct.ISzAlloc* %1)
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 4
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  call void @MatchFinder_Free(%struct._CMatchFinder* %matchFinderBase, %struct.ISzAlloc* %3)
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaEnc_FreeLits(%struct.CLzmaEnc* %4, %struct.ISzAlloc* %5)
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 43
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @RangeEnc_Free(%struct.CRangeEnc* %rc, %struct.ISzAlloc* %7)
  ret void
}

declare void @MatchFinderMt_Destruct(%struct._CMatchFinderMt*, %struct.ISzAlloc*) #2

declare void @MatchFinder_Free(%struct._CMatchFinder*, %struct.ISzAlloc*) #2

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Free(%struct.CRangeEnc* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %4, i32 0, i32 6
  %5 = load i8*, i8** %bufBase, align 8
  call void %1(i8* %3, i8* %5)
  %6 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase1 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %6, i32 0, i32 6
  store i8* null, i8** %bufBase1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_Destroy(i8* %p, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  call void @LzmaEnc_Destruct(%struct.CLzmaEnc* %1, %struct.ISzAlloc* %2, %struct.ISzAlloc* %3)
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %4, i32 0, i32 1
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %7 = bitcast %struct.ISzAlloc* %6 to i8*
  %8 = load i8*, i8** %p.addr, align 8
  call void %5(i8* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_Init(%struct.CLzmaEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num = alloca i32, align 4
  %probs = alloca i16*, align 8
  %j42 = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 18
  store i32 0, i32* %state, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 17
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 43
  call void @RangeEnc_Init(%struct.CRangeEnc* %rc)
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.26, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %6, 12
  br i1 %cmp2, label %for.body.3, label %for.end.28

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.15, %for.body.3
  %7 = load i32, i32* %j, align 4
  %cmp5 = icmp ult i32 %7, 16
  br i1 %cmp5, label %for.body.6, label %for.end.17

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %j, align 4
  %idxprom7 = zext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %9 to i64
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 30
  %arrayidx9 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx9, i32 0, i64 %idxprom7
  store i16 1024, i16* %arrayidx10, align 2
  %11 = load i32, i32* %j, align 4
  %idxprom11 = zext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %12 to i64
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep0Long = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 35
  %arrayidx13 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx13, i32 0, i64 %idxprom11
  store i16 1024, i16* %arrayidx14, align 2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.6
  %14 = load i32, i32* %j, align 4
  %inc16 = add i32 %14, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond.4

for.end.17:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %15 to i64
  %16 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %16, i32 0, i32 31
  %arrayidx19 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep, i32 0, i64 %idxprom18
  store i16 1024, i16* %arrayidx19, align 2
  %17 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %17 to i64
  %18 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG0 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %18, i32 0, i32 32
  %arrayidx21 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG0, i32 0, i64 %idxprom20
  store i16 1024, i16* %arrayidx21, align 2
  %19 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %19 to i64
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 33
  %arrayidx23 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG1, i32 0, i64 %idxprom22
  store i16 1024, i16* %arrayidx23, align 2
  %21 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %21 to i64
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 34
  %arrayidx25 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG2, i32 0, i64 %idxprom24
  store i16 1024, i16* %arrayidx25, align 2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.17
  %23 = load i32, i32* %i, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.1

for.end.28:                                       ; preds = %for.cond.1
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lp = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %24, i32 0, i32 25
  %25 = load i32, i32* %lp, align 4
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 24
  %27 = load i32, i32* %lc, align 4
  %add = add i32 %25, %27
  %shl = shl i32 768, %add
  store i32 %shl, i32* %num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.34, %for.end.28
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %num, align 4
  %cmp30 = icmp ult i32 %28, %29
  br i1 %cmp30, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.29
  %30 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %30 to i64
  %31 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %31, i32 0, i32 29
  %32 = load i16*, i16** %litProbs, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %32, i64 %idxprom32
  store i16 1024, i16* %arrayidx33, align 2
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.31
  %33 = load i32, i32* %i, align 4
  %inc35 = add i32 %33, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.29

for.end.36:                                       ; preds = %for.cond.29
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.51, %for.end.36
  %34 = load i32, i32* %i, align 4
  %cmp38 = icmp ult i32 %34, 4
  br i1 %cmp38, label %for.body.39, label %for.end.53

for.body.39:                                      ; preds = %for.cond.37
  %35 = load i32, i32* %i, align 4
  %idxprom40 = zext i32 %35 to i64
  %36 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %36, i32 0, i32 36
  %arrayidx41 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom40
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx41, i32 0, i32 0
  store i16* %arraydecay, i16** %probs, align 8
  store i32 0, i32* %j42, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.48, %for.body.39
  %37 = load i32, i32* %j42, align 4
  %cmp44 = icmp ult i32 %37, 64
  br i1 %cmp44, label %for.body.45, label %for.end.50

for.body.45:                                      ; preds = %for.cond.43
  %38 = load i32, i32* %j42, align 4
  %idxprom46 = zext i32 %38 to i64
  %39 = load i16*, i16** %probs, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %39, i64 %idxprom46
  store i16 1024, i16* %arrayidx47, align 2
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.45
  %40 = load i32, i32* %j42, align 4
  %inc49 = add i32 %40, 1
  store i32 %inc49, i32* %j42, align 4
  br label %for.cond.43

for.end.50:                                       ; preds = %for.cond.43
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %41 = load i32, i32* %i, align 4
  %inc52 = add i32 %41, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.37

for.end.53:                                       ; preds = %for.cond.37
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.59, %for.end.53
  %42 = load i32, i32* %i, align 4
  %cmp55 = icmp ult i32 %42, 114
  br i1 %cmp55, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %for.cond.54
  %43 = load i32, i32* %i, align 4
  %idxprom57 = zext i32 %43 to i64
  %44 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posEncoders = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %44, i32 0, i32 37
  %arrayidx58 = getelementptr inbounds [114 x i16], [114 x i16]* %posEncoders, i32 0, i64 %idxprom57
  store i16 1024, i16* %arrayidx58, align 2
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %45 = load i32, i32* %i, align 4
  %inc60 = add i32 %45, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.54

for.end.61:                                       ; preds = %for.cond.54
  %46 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %46, i32 0, i32 39
  %p62 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %lenEnc, i32 0, i32 0
  call void @LenEnc_Init(%struct.CLenEnc* %p62)
  %47 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %47, i32 0, i32 40
  %p63 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc, i32 0, i32 0
  call void @LenEnc_Init(%struct.CLenEnc* %p63)
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.69, %for.end.61
  %48 = load i32, i32* %i, align 4
  %cmp65 = icmp ult i32 %48, 16
  br i1 %cmp65, label %for.body.66, label %for.end.71

for.body.66:                                      ; preds = %for.cond.64
  %49 = load i32, i32* %i, align 4
  %idxprom67 = zext i32 %49 to i64
  %50 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %50, i32 0, i32 38
  %arrayidx68 = getelementptr inbounds [16 x i16], [16 x i16]* %posAlignEncoder, i32 0, i64 %idxprom67
  store i16 1024, i16* %arrayidx68, align 2
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.66
  %51 = load i32, i32* %i, align 4
  %inc70 = add i32 %51, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.64

for.end.71:                                       ; preds = %for.cond.64
  %52 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumEndIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %52, i32 0, i32 6
  store i32 0, i32* %optimumEndIndex, align 4
  %53 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %53, i32 0, i32 7
  store i32 0, i32* %optimumCurrentIndex, align 4
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %54, i32 0, i32 16
  store i32 0, i32* %additionalOffset, align 4
  %55 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pb = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %55, i32 0, i32 26
  %56 = load i32, i32* %pb, align 4
  %shl72 = shl i32 1, %56
  %sub = sub nsw i32 %shl72, 1
  %57 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %57, i32 0, i32 28
  store i32 %sub, i32* %pbMask, align 4
  %58 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lp73 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %58, i32 0, i32 25
  %59 = load i32, i32* %lp73, align 4
  %shl74 = shl i32 1, %59
  %sub75 = sub nsw i32 %shl74, 1
  %60 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %60, i32 0, i32 27
  store i32 %sub75, i32* %lpMask, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Init(%struct.CRangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 2
  store i64 0, i64* %low, align 8
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %1, i32 0, i32 0
  store i32 -1, i32* %range, align 4
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cacheSize = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %2, i32 0, i32 3
  store i64 1, i64* %cacheSize, align 8
  %3 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cache = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %3, i32 0, i32 1
  store i8 0, i8* %cache, align 1
  %4 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %4, i32 0, i32 6
  %5 = load i8*, i8** %bufBase, align 8
  %6 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %6, i32 0, i32 4
  store i8* %5, i8** %buf, align 8
  %7 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %processed = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %7, i32 0, i32 8
  store i64 0, i64* %processed, align 8
  %8 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %res = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %8, i32 0, i32 9
  store i32 0, i32* %res, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LenEnc_Init(%struct.CLenEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLenEnc*, align 8
  %i = alloca i32, align 4
  store %struct.CLenEnc* %p, %struct.CLenEnc** %p.addr, align 8
  %0 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice2 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %0, i32 0, i32 1
  store i16 1024, i16* %choice2, align 2
  %1 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %1, i32 0, i32 0
  store i16 1024, i16* %choice, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* %low, i32 0, i64 %idxprom
  store i16 1024, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %6, 128
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %mid = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %8, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [128 x i16], [128 x i16]* %mid, i32 0, i64 %idxprom4
  store i16 1024, i16* %arrayidx5, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.end.8
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp ult i32 %10, 256
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %11 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %11 to i64
  %12 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %high = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %12, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* %high, i32 0, i64 %idxprom12
  store i16 1024, i16* %arrayidx13, align 2
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %13 = load i32, i32* %i, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_InitPrices(%struct.CLzmaEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 42
  %1 = load i32, i32* %fastMode, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @FillDistancesPrices(%struct.CLzmaEnc* %2)
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @FillAlignPrices(%struct.CLzmaEnc* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 15
  %5 = load i32, i32* %numFastBytes, align 4
  %add = add i32 %5, 1
  %sub = sub i32 %add, 2
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 40
  %tableSize = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc, i32 0, i32 2
  store i32 %sub, i32* %tableSize, align 4
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 39
  %tableSize1 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %lenEnc, i32 0, i32 2
  store i32 %sub, i32* %tableSize1, align 4
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 39
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pb = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 26
  %10 = load i32, i32* %pb, align 4
  %shl = shl i32 1, %10
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 13
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  call void @LenPriceEnc_UpdateTables(%struct.CLenPriceEnc* %lenEnc2, i32 %shl, i32* %arraydecay)
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 40
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pb4 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 26
  %14 = load i32, i32* %pb4, align 4
  %shl5 = shl i32 1, %14
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices6 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %15, i32 0, i32 13
  %arraydecay7 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices6, i32 0, i32 0
  call void @LenPriceEnc_UpdateTables(%struct.CLenPriceEnc* %repLenEnc3, i32 %shl5, i32* %arraydecay7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FillDistancesPrices(%struct.CLzmaEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %tempPrices = alloca [128 x i32], align 16
  %i = alloca i32, align 4
  %lenToPosState = alloca i32, align 4
  %posSlot = alloca i32, align 4
  %footerBits = alloca i32, align 4
  %base = alloca i32, align 4
  %posSlot12 = alloca i32, align 4
  %encoder = alloca i16*, align 8
  %posSlotPrices = alloca i32*, align 8
  %distancesPrices = alloca i32*, align 8
  %i50 = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 12
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %posSlot, align 4
  %4 = load i32, i32* %posSlot, align 4
  %shr = lshr i32 %4, 1
  %sub = sub i32 %shr, 1
  store i32 %sub, i32* %footerBits, align 4
  %5 = load i32, i32* %posSlot, align 4
  %and = and i32 %5, 1
  %or = or i32 2, %and
  %6 = load i32, i32* %footerBits, align 4
  %shl = shl i32 %or, %6
  store i32 %shl, i32* %base, align 4
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posEncoders = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 37
  %arraydecay = getelementptr inbounds [114 x i16], [114 x i16]* %posEncoders, i32 0, i32 0
  %8 = load i32, i32* %base, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  %9 = load i32, i32* %posSlot, align 4
  %idx.ext1 = zext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext1
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.neg
  %add.ptr3 = getelementptr inbounds i16, i16* %add.ptr2, i64 -1
  %10 = load i32, i32* %footerBits, align 4
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %base, align 4
  %sub4 = sub i32 %11, %12
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 13
  %arraydecay5 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  %call = call i32 @RcTree_ReverseGetPrice(i16* %add.ptr3, i32 %10, i32 %sub4, i32* %arraydecay5)
  %14 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* %tempPrices, i32 0, i64 %idxprom6
  store i32 %call, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %lenToPosState, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.79, %for.end
  %16 = load i32, i32* %lenToPosState, align 4
  %cmp9 = icmp ult i32 %16, 4
  br i1 %cmp9, label %for.body.11, label %for.end.81

for.body.11:                                      ; preds = %for.cond.8
  %17 = load i32, i32* %lenToPosState, align 4
  %idxprom13 = zext i32 %17 to i64
  %18 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %18, i32 0, i32 36
  %arrayidx14 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom13
  %arraydecay15 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx14, i32 0, i32 0
  store i16* %arraydecay15, i16** %encoder, align 8
  %19 = load i32, i32* %lenToPosState, align 4
  %idxprom16 = zext i32 %19 to i64
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotPrices17 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 19
  %arrayidx18 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %posSlotPrices17, i32 0, i64 %idxprom16
  %arraydecay19 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx18, i32 0, i32 0
  store i32* %arraydecay19, i32** %posSlotPrices, align 8
  store i32 0, i32* %posSlot12, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.body.11
  %21 = load i32, i32* %posSlot12, align 4
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distTableSize = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 23
  %23 = load i32, i32* %distTableSize, align 4
  %cmp21 = icmp ult i32 %21, %23
  br i1 %cmp21, label %for.body.23, label %for.end.31

for.body.23:                                      ; preds = %for.cond.20
  %24 = load i16*, i16** %encoder, align 8
  %25 = load i32, i32* %posSlot12, align 4
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices24 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 13
  %arraydecay25 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices24, i32 0, i32 0
  %call26 = call i32 @RcTree_GetPrice(i16* %24, i32 6, i32 %25, i32* %arraydecay25)
  %27 = load i32, i32* %posSlot12, align 4
  %idxprom27 = zext i32 %27 to i64
  %28 = load i32*, i32** %posSlotPrices, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %28, i64 %idxprom27
  store i32 %call26, i32* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.23
  %29 = load i32, i32* %posSlot12, align 4
  %inc30 = add i32 %29, 1
  store i32 %inc30, i32* %posSlot12, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  store i32 14, i32* %posSlot12, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %for.end.31
  %30 = load i32, i32* %posSlot12, align 4
  %31 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distTableSize33 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %31, i32 0, i32 23
  %32 = load i32, i32* %distTableSize33, align 4
  %cmp34 = icmp ult i32 %30, %32
  br i1 %cmp34, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.32
  %33 = load i32, i32* %posSlot12, align 4
  %shr37 = lshr i32 %33, 1
  %sub38 = sub i32 %shr37, 1
  %sub39 = sub i32 %sub38, 4
  %shl40 = shl i32 %sub39, 4
  %34 = load i32, i32* %posSlot12, align 4
  %idxprom41 = zext i32 %34 to i64
  %35 = load i32*, i32** %posSlotPrices, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %35, i64 %idxprom41
  %36 = load i32, i32* %arrayidx42, align 4
  %add = add i32 %36, %shl40
  store i32 %add, i32* %arrayidx42, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %37 = load i32, i32* %posSlot12, align 4
  %inc44 = add i32 %37, 1
  store i32 %inc44, i32* %posSlot12, align 4
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  %38 = load i32, i32* %lenToPosState, align 4
  %idxprom46 = zext i32 %38 to i64
  %39 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distancesPrices47 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %39, i32 0, i32 20
  %arrayidx48 = getelementptr inbounds [4 x [128 x i32]], [4 x [128 x i32]]* %distancesPrices47, i32 0, i64 %idxprom46
  %arraydecay49 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx48, i32 0, i32 0
  store i32* %arraydecay49, i32** %distancesPrices, align 8
  store i32 0, i32* %i50, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %for.end.45
  %40 = load i32, i32* %i50, align 4
  %cmp52 = icmp ult i32 %40, 4
  br i1 %cmp52, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.51
  %41 = load i32, i32* %i50, align 4
  %idxprom55 = zext i32 %41 to i64
  %42 = load i32*, i32** %posSlotPrices, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %42, i64 %idxprom55
  %43 = load i32, i32* %arrayidx56, align 4
  %44 = load i32, i32* %i50, align 4
  %idxprom57 = zext i32 %44 to i64
  %45 = load i32*, i32** %distancesPrices, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %45, i64 %idxprom57
  store i32 %43, i32* %arrayidx58, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %46 = load i32, i32* %i50, align 4
  %inc60 = add i32 %46, 1
  store i32 %inc60, i32* %i50, align 4
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.76, %for.end.61
  %47 = load i32, i32* %i50, align 4
  %cmp63 = icmp ult i32 %47, 128
  br i1 %cmp63, label %for.body.65, label %for.end.78

for.body.65:                                      ; preds = %for.cond.62
  %48 = load i32, i32* %i50, align 4
  %idxprom66 = zext i32 %48 to i64
  %49 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos67 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %49, i32 0, i32 12
  %arrayidx68 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos67, i32 0, i64 %idxprom66
  %50 = load i8, i8* %arrayidx68, align 1
  %idxprom69 = zext i8 %50 to i64
  %51 = load i32*, i32** %posSlotPrices, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %51, i64 %idxprom69
  %52 = load i32, i32* %arrayidx70, align 4
  %53 = load i32, i32* %i50, align 4
  %idxprom71 = zext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [128 x i32], [128 x i32]* %tempPrices, i32 0, i64 %idxprom71
  %54 = load i32, i32* %arrayidx72, align 4
  %add73 = add i32 %52, %54
  %55 = load i32, i32* %i50, align 4
  %idxprom74 = zext i32 %55 to i64
  %56 = load i32*, i32** %distancesPrices, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %56, i64 %idxprom74
  store i32 %add73, i32* %arrayidx75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.65
  %57 = load i32, i32* %i50, align 4
  %inc77 = add i32 %57, 1
  store i32 %inc77, i32* %i50, align 4
  br label %for.cond.62

for.end.78:                                       ; preds = %for.cond.62
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %58 = load i32, i32* %lenToPosState, align 4
  %inc80 = add i32 %58, 1
  store i32 %inc80, i32* %lenToPosState, align 4
  br label %for.cond.8

for.end.81:                                       ; preds = %for.cond.8
  %59 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchPriceCount = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %59, i32 0, i32 46
  store i32 0, i32* %matchPriceCount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FillAlignPrices(%struct.CLzmaEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %i = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 38
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %posAlignEncoder, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 13
  %arraydecay1 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  %call = call i32 @RcTree_ReverseGetPrice(i16* %arraydecay, i32 4, i32 %2, i32* %arraydecay1)
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 21
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %alignPrices, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPriceCount = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 22
  store i32 0, i32* %alignPriceCount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LenPriceEnc_UpdateTables(%struct.CLenPriceEnc* %p, i32 %numPosStates, i32* %ProbPrices) #0 {
entry:
  %p.addr = alloca %struct.CLenPriceEnc*, align 8
  %numPosStates.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  %posState = alloca i32, align 4
  store %struct.CLenPriceEnc* %p, %struct.CLenPriceEnc** %p.addr, align 8
  store i32 %numPosStates, i32* %numPosStates.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 0, i32* %posState, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %posState, align 4
  %1 = load i32, i32* %numPosStates.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %3 = load i32, i32* %posState, align 4
  %4 = load i32*, i32** %ProbPrices.addr, align 8
  call void @LenPriceEnc_UpdateTable(%struct.CLenPriceEnc* %2, i32 %3, i32* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %posState, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %posState, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_PrepareForLzma2(i8* %pp, %struct.ISeqInStream* %inStream, i32 %keepWindowSize, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %keepWindowSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store i32 %keepWindowSize, i32* %keepWindowSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 4
  %stream = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 13
  store %struct.ISeqInStream* %2, %struct.ISeqInStream** %stream, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %needInit = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 52
  store i32 1, i32* %needInit, align 4
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %6 = load i32, i32* %keepWindowSize.addr, align 4
  %7 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_AllocAndInit(%struct.CLzmaEnc* %5, i32 %6, %struct.ISzAlloc* %7, %struct.ISzAlloc* %8)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaEnc_AllocAndInit(%struct.CLzmaEnc* %p, i32 %keepWindowSize, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %keepWindowSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %i = alloca i32, align 4
  %__result__ = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %keepWindowSize, i32* %keepWindowSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 50
  %2 = load i32, i32* %dictSize, align 4
  %3 = load i32, i32* %i, align 4
  %shl = shl i32 1, %3
  %cmp1 = icmp ule i32 %2, %shl
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, i32* %i, align 4
  %mul = mul i32 %5, 2
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distTableSize = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 23
  store i32 %mul, i32* %distTableSize, align 4
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 47
  store i32 0, i32* %finished, align 4
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 49
  store i32 0, i32* %result, align 4
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %10 = load i32, i32* %keepWindowSize.addr, align 4
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %12 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_Alloc(%struct.CLzmaEnc* %9, i32 %10, %struct.ISzAlloc* %11, %struct.ISzAlloc* %12)
  store i32 %call, i32* %__result__, align 4
  %13 = load i32, i32* %__result__, align 4
  %cmp2 = icmp ne i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  %14 = load i32, i32* %__result__, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.4:                                         ; preds = %for.end
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @LzmaEnc_Init(%struct.CLzmaEnc* %15)
  %16 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @LzmaEnc_InitPrices(%struct.CLzmaEnc* %16)
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos64 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 45
  store i64 0, i64* %nowPos64, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_MemPrepare(i8* %pp, i8* %src, i64 %srcLen, i32 %keepWindowSize, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64, align 8
  %keepWindowSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcLen, i64* %srcLen.addr, align 8
  store i32 %keepWindowSize, i32* %keepWindowSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i64, i64* %srcLen.addr, align 8
  call void @LzmaEnc_SetInputBuf(%struct.CLzmaEnc* %2, i8* %3, i64 %4)
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %needInit = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 52
  store i32 1, i32* %needInit, align 4
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %7 = load i32, i32* %keepWindowSize.addr, align 4
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_AllocAndInit(%struct.CLzmaEnc* %6, i32 %7, %struct.ISzAlloc* %8, %struct.ISzAlloc* %9)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @LzmaEnc_SetInputBuf(%struct.CLzmaEnc* %p, i8* %src, i64 %srcLen) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcLen, i64* %srcLen.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 4
  %directInput = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 19
  store i32 1, i32* %directInput, align 4
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 4
  %bufferBase = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase1, i32 0, i32 12
  store i8* %1, i8** %bufferBase, align 8
  %3 = load i64, i64* %srcLen.addr, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 4
  %directInputRem = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase2, i32 0, i32 20
  store i64 %3, i64* %directInputRem, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaEnc_Finish(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %mtMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 2
  %3 = load i32, i32* %mtMode, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderMt = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 3
  call void @MatchFinderMt_ReleaseStream(%struct._CMatchFinderMt* %matchFinderMt)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @MatchFinderMt_ReleaseStream(%struct._CMatchFinderMt*) #2

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_GetNumAvailableBytes(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 0
  %GetNumAvailableBytes = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 2
  %3 = load i32 (i8*)*, i32 (i8*)** %GetNumAvailableBytes, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 1
  %5 = load i8*, i8** %matchFinderObj, align 8
  %call = call i32 %3(i8* %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @LzmaEnc_GetCurBuf(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 0
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 3
  %3 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 1
  %5 = load i8*, i8** %matchFinderObj, align 8
  %call = call i8* %3(i8* %5)
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 16
  %7 = load i32, i32* %additionalOffset, align 4
  %idx.ext = zext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.neg
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_CodeOneMemBlock(i8* %pp, i32 %reInit, i8* %dest, i64* %destLen, i32 %desiredPackSize, i32* %unpackSize) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %reInit.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %desiredPackSize.addr = alloca i32, align 4
  %unpackSize.addr = alloca i32*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  %nowPos64 = alloca i64, align 8
  %res = alloca i32, align 4
  %outStream = alloca %struct.CSeqOutStreamBuf, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i32 %reInit, i32* %reInit.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i32 %desiredPackSize, i32* %desiredPackSize.addr, align 4
  store i32* %unpackSize, i32** %unpackSize.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %funcTable = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 0
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %funcTable, i32 0, i32 0
  store i64 (i8*, i8*, i64)* @MyWrite, i64 (i8*, i8*, i64)** %Write, align 8
  %2 = load i8*, i8** %dest.addr, align 8
  %data = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 1
  store i8* %2, i8** %data, align 8
  %3 = load i64*, i64** %destLen.addr, align 8
  %4 = load i64, i64* %3, align 8
  %rem = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 2
  store i64 %4, i64* %rem, align 8
  %overflow = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 3
  store i32 0, i32* %overflow, align 4
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %writeEndMark = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 44
  store i32 0, i32* %writeEndMark, align 4
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 47
  store i32 0, i32* %finished, align 4
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %result = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 49
  store i32 0, i32* %result, align 4
  %8 = load i32, i32* %reInit.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  call void @LzmaEnc_Init(%struct.CLzmaEnc* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  call void @LzmaEnc_InitPrices(%struct.CLzmaEnc* %10)
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %nowPos641 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 45
  %12 = load i64, i64* %nowPos641, align 8
  store i64 %12, i64* %nowPos64, align 8
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 43
  call void @RangeEnc_Init(%struct.CRangeEnc* %rc)
  %funcTable2 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 0
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %rc3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 43
  %outStream4 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc3, i32 0, i32 7
  store %struct.ISeqOutStream* %funcTable2, %struct.ISeqOutStream** %outStream4, align 8
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %16 = load i32, i32* %desiredPackSize.addr, align 4
  %17 = load i32*, i32** %unpackSize.addr, align 8
  %18 = load i32, i32* %17, align 4
  %call = call i32 @LzmaEnc_CodeOneBlock(%struct.CLzmaEnc* %15, i32 1, i32 %16, i32 %18)
  store i32 %call, i32* %res, align 4
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %nowPos645 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 45
  %20 = load i64, i64* %nowPos645, align 8
  %21 = load i64, i64* %nowPos64, align 8
  %sub = sub i64 %20, %21
  %conv = trunc i64 %sub to i32
  %22 = load i32*, i32** %unpackSize.addr, align 8
  store i32 %conv, i32* %22, align 4
  %rem6 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 2
  %23 = load i64, i64* %rem6, align 8
  %24 = load i64*, i64** %destLen.addr, align 8
  %25 = load i64, i64* %24, align 8
  %sub7 = sub i64 %25, %23
  store i64 %sub7, i64* %24, align 8
  %overflow8 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 3
  %26 = load i32, i32* %overflow8, align 4
  %tobool9 = icmp ne i32 %26, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %27 = load i32, i32* %res, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i64 @MyWrite(i8* %pp, i8* %data, i64 %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca %struct.CSeqOutStreamBuf*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CSeqOutStreamBuf*
  store %struct.CSeqOutStreamBuf* %1, %struct.CSeqOutStreamBuf** %p, align 8
  %2 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %rem = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %2, i32 0, i32 2
  %3 = load i64, i64* %rem, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %rem1 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %5, i32 0, i32 2
  %6 = load i64, i64* %rem1, align 8
  store i64 %6, i64* %size.addr, align 8
  %7 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %overflow = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %7, i32 0, i32 3
  store i32 1, i32* %overflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %data2 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %8, i32 0, i32 1
  %9 = load i8*, i8** %data2, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %11, i32 1, i1 false)
  %12 = load i64, i64* %size.addr, align 8
  %13 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %rem3 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %13, i32 0, i32 2
  %14 = load i64, i64* %rem3, align 8
  %sub = sub i64 %14, %12
  store i64 %sub, i64* %rem3, align 8
  %15 = load i64, i64* %size.addr, align 8
  %16 = load %struct.CSeqOutStreamBuf*, %struct.CSeqOutStreamBuf** %p, align 8
  %data4 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %16, i32 0, i32 1
  %17 = load i8*, i8** %data4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %15
  store i8* %add.ptr, i8** %data4, align 8
  %18 = load i64, i64* %size.addr, align 8
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaEnc_CodeOneBlock(%struct.CLzmaEnc* %p, i32 %useLimits, i32 %maxPackSize, i32 %maxUnpackSize) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %useLimits.addr = alloca i32, align 4
  %maxPackSize.addr = alloca i32, align 4
  %maxUnpackSize.addr = alloca i32, align 4
  %nowPos32 = alloca i32, align 4
  %startPos32 = alloca i32, align 4
  %__result__ = alloca i32, align 4
  %numPairs = alloca i32, align 4
  %curByte = alloca i8, align 1
  %pos = alloca i32, align 4
  %len = alloca i32, align 4
  %posState = alloca i32, align 4
  %curByte49 = alloca i8, align 1
  %probs = alloca i16*, align 8
  %data = alloca i8*, align 8
  %distance = alloca i32, align 4
  %posSlot = alloca i32, align 4
  %i = alloca i32, align 4
  %footerBits = alloca i32, align 4
  %base = alloca i32, align 4
  %posReduced = alloca i32, align 4
  %processed = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %useLimits, i32* %useLimits.addr, align 4
  store i32 %maxPackSize, i32* %maxPackSize.addr, align 4
  store i32 %maxUnpackSize, i32* %maxUnpackSize.addr, align 4
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %needInit = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 52
  %1 = load i32, i32* %needInit, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 0
  %Init = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 0
  %3 = load void (i8*)*, void (i8*)** %Init, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 1
  %5 = load i8*, i8** %matchFinderObj, align 8
  call void %3(i8* %5)
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %needInit1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 52
  store i32 0, i32* %needInit1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 47
  %8 = load i32, i32* %finished, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 49
  %10 = load i32, i32* %result, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call = call i32 @CheckErrors(%struct.CLzmaEnc* %11)
  store i32 %call, i32* %__result__, align 4
  %12 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  %13 = load i32, i32* %__result__, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos64 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 45
  %15 = load i64, i64* %nowPos64, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %nowPos32, align 4
  %16 = load i32, i32* %nowPos32, align 4
  store i32 %16, i32* %startPos32, align 4
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos647 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 45
  %18 = load i64, i64* %nowPos647, align 8
  %cmp8 = icmp eq i64 %18, 0
  br i1 %cmp8, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %if.end.6
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder11 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 0
  %GetNumAvailableBytes = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder11, i32 0, i32 2
  %20 = load i32 (i8*)*, i32 (i8*)** %GetNumAvailableBytes, align 8
  %21 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj12 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %21, i32 0, i32 1
  %22 = load i8*, i8** %matchFinderObj12, align 8
  %call13 = call i32 %20(i8* %22)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.10
  %23 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %24 = load i32, i32* %nowPos32, align 4
  %call17 = call i32 @Flush(%struct.CLzmaEnc* %23, i32 %24)
  store i32 %call17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.10
  %25 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call19 = call i32 @ReadMatchDistances(%struct.CLzmaEnc* %25, i32* %numPairs)
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 43
  %27 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %27, i32 0, i32 18
  %28 = load i32, i32* %state, align 4
  %idxprom = zext i32 %28 to i64
  %29 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %29, i32 0, i32 30
  %arrayidx = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom
  %arrayidx20 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx, i32 0, i64 0
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc, i16* %arrayidx20, i32 0)
  %30 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state21 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %30, i32 0, i32 18
  %31 = load i32, i32* %state21, align 4
  %idxprom22 = zext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom22
  %32 = load i32, i32* %arrayidx23, align 4
  %33 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state24 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %33, i32 0, i32 18
  store i32 %32, i32* %state24, align 4
  %34 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder25 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %34, i32 0, i32 0
  %GetIndexByte = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder25, i32 0, i32 1
  %35 = load i8 (i8*, i32)*, i8 (i8*, i32)** %GetIndexByte, align 8
  %36 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj26 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %36, i32 0, i32 1
  %37 = load i8*, i8** %matchFinderObj26, align 8
  %38 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %38, i32 0, i32 16
  %39 = load i32, i32* %additionalOffset, align 4
  %sub = sub i32 0, %39
  %call27 = call zeroext i8 %35(i8* %37, i32 %sub)
  store i8 %call27, i8* %curByte, align 1
  %40 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc28 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %40, i32 0, i32 43
  %41 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %41, i32 0, i32 29
  %42 = load i16*, i16** %litProbs, align 8
  %43 = load i8, i8* %curByte, align 1
  %conv29 = zext i8 %43 to i32
  call void @LitEnc_Encode(%struct.CRangeEnc* %rc28, i16* %42, i32 %conv29)
  %44 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset30 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %44, i32 0, i32 16
  %45 = load i32, i32* %additionalOffset30, align 4
  %dec = add i32 %45, -1
  store i32 %dec, i32* %additionalOffset30, align 4
  %46 = load i32, i32* %nowPos32, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %nowPos32, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.18, %if.end.6
  %47 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder32 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %47, i32 0, i32 0
  %GetNumAvailableBytes33 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder32, i32 0, i32 2
  %48 = load i32 (i8*)*, i32 (i8*)** %GetNumAvailableBytes33, align 8
  %49 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj34 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %49, i32 0, i32 1
  %50 = load i8*, i8** %matchFinderObj34, align 8
  %call35 = call i32 %48(i8* %50)
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.337

if.then.38:                                       ; preds = %if.end.31
  br label %for.cond

for.cond:                                         ; preds = %if.end.336, %if.then.38
  %51 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %51, i32 0, i32 42
  %52 = load i32, i32* %fastMode, align 4
  %tobool39 = icmp ne i32 %52, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.cond
  %53 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call41 = call i32 @GetOptimumFast(%struct.CLzmaEnc* %53, i32* %pos)
  store i32 %call41, i32* %len, align 4
  br label %if.end.43

if.else:                                          ; preds = %for.cond
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %55 = load i32, i32* %nowPos32, align 4
  %call42 = call i32 @GetOptimum(%struct.CLzmaEnc* %54, i32 %55, i32* %pos)
  store i32 %call42, i32* %len, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.40
  %56 = load i32, i32* %nowPos32, align 4
  %57 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %57, i32 0, i32 28
  %58 = load i32, i32* %pbMask, align 4
  %and = and i32 %56, %58
  store i32 %and, i32* %posState, align 4
  %59 = load i32, i32* %len, align 4
  %cmp44 = icmp eq i32 %59, 1
  br i1 %cmp44, label %land.lhs.true, label %if.else.89

land.lhs.true:                                    ; preds = %if.end.43
  %60 = load i32, i32* %pos, align 4
  %cmp46 = icmp eq i32 %60, -1
  br i1 %cmp46, label %if.then.48, label %if.else.89

if.then.48:                                       ; preds = %land.lhs.true
  %61 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc50 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %61, i32 0, i32 43
  %62 = load i32, i32* %posState, align 4
  %idxprom51 = zext i32 %62 to i64
  %63 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state52 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %63, i32 0, i32 18
  %64 = load i32, i32* %state52, align 4
  %idxprom53 = zext i32 %64 to i64
  %65 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch54 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %65, i32 0, i32 30
  %arrayidx55 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch54, i32 0, i64 %idxprom53
  %arrayidx56 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx55, i32 0, i64 %idxprom51
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc50, i16* %arrayidx56, i32 0)
  %66 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder57 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %66, i32 0, i32 0
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder57, i32 0, i32 3
  %67 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos, align 8
  %68 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj58 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %68, i32 0, i32 1
  %69 = load i8*, i8** %matchFinderObj58, align 8
  %call59 = call i8* %67(i8* %69)
  %70 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset60 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %70, i32 0, i32 16
  %71 = load i32, i32* %additionalOffset60, align 4
  %idx.ext = zext i32 %71 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %call59, i64 %idx.neg
  store i8* %add.ptr, i8** %data, align 8
  %72 = load i8*, i8** %data, align 8
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %curByte49, align 1
  %74 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs61 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %74, i32 0, i32 29
  %75 = load i16*, i16** %litProbs61, align 8
  %76 = load i32, i32* %nowPos32, align 4
  %77 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %77, i32 0, i32 27
  %78 = load i32, i32* %lpMask, align 4
  %and62 = and i32 %76, %78
  %79 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %79, i32 0, i32 24
  %80 = load i32, i32* %lc, align 4
  %shl = shl i32 %and62, %80
  %81 = load i8*, i8** %data, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %81, i64 -1
  %82 = load i8, i8* %add.ptr63, align 1
  %conv64 = zext i8 %82 to i32
  %83 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc65 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %83, i32 0, i32 24
  %84 = load i32, i32* %lc65, align 4
  %sub66 = sub i32 8, %84
  %shr = ashr i32 %conv64, %sub66
  %add = add i32 %shl, %shr
  %mul = mul i32 %add, 768
  %idx.ext67 = zext i32 %mul to i64
  %add.ptr68 = getelementptr inbounds i16, i16* %75, i64 %idx.ext67
  store i16* %add.ptr68, i16** %probs, align 8
  %85 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state69 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %85, i32 0, i32 18
  %86 = load i32, i32* %state69, align 4
  %cmp70 = icmp ult i32 %86, 7
  br i1 %cmp70, label %if.then.72, label %if.else.75

if.then.72:                                       ; preds = %if.then.48
  %87 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc73 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %87, i32 0, i32 43
  %88 = load i16*, i16** %probs, align 8
  %89 = load i8, i8* %curByte49, align 1
  %conv74 = zext i8 %89 to i32
  call void @LitEnc_Encode(%struct.CRangeEnc* %rc73, i16* %88, i32 %conv74)
  br label %if.end.84

if.else.75:                                       ; preds = %if.then.48
  %90 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc76 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %90, i32 0, i32 43
  %91 = load i16*, i16** %probs, align 8
  %92 = load i8, i8* %curByte49, align 1
  %conv77 = zext i8 %92 to i32
  %93 = load i8*, i8** %data, align 8
  %94 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %94, i32 0, i32 17
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %95 = load i32, i32* %arrayidx78, align 4
  %idx.ext79 = zext i32 %95 to i64
  %idx.neg80 = sub i64 0, %idx.ext79
  %add.ptr81 = getelementptr inbounds i8, i8* %93, i64 %idx.neg80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 -1
  %96 = load i8, i8* %add.ptr82, align 1
  %conv83 = zext i8 %96 to i32
  call void @LitEnc_EncodeMatched(%struct.CRangeEnc* %rc76, i16* %91, i32 %conv77, i32 %conv83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.75, %if.then.72
  %97 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state85 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %97, i32 0, i32 18
  %98 = load i32, i32* %state85, align 4
  %idxprom86 = zext i32 %98 to i64
  %arrayidx87 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom86
  %99 = load i32, i32* %arrayidx87, align 4
  %100 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state88 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %100, i32 0, i32 18
  store i32 %99, i32* %state88, align 4
  br label %if.end.275

if.else.89:                                       ; preds = %land.lhs.true, %if.end.43
  %101 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc90 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %101, i32 0, i32 43
  %102 = load i32, i32* %posState, align 4
  %idxprom91 = zext i32 %102 to i64
  %103 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state92 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %103, i32 0, i32 18
  %104 = load i32, i32* %state92, align 4
  %idxprom93 = zext i32 %104 to i64
  %105 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch94 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %105, i32 0, i32 30
  %arrayidx95 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch94, i32 0, i64 %idxprom93
  %arrayidx96 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx95, i32 0, i64 %idxprom91
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc90, i16* %arrayidx96, i32 1)
  %106 = load i32, i32* %pos, align 4
  %cmp97 = icmp ult i32 %106, 4
  br i1 %cmp97, label %if.then.99, label %if.else.183

if.then.99:                                       ; preds = %if.else.89
  %107 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc100 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %107, i32 0, i32 43
  %108 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state101 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %108, i32 0, i32 18
  %109 = load i32, i32* %state101, align 4
  %idxprom102 = zext i32 %109 to i64
  %110 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %110, i32 0, i32 31
  %arrayidx103 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep, i32 0, i64 %idxprom102
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc100, i16* %arrayidx103, i32 1)
  %111 = load i32, i32* %pos, align 4
  %cmp104 = icmp eq i32 %111, 0
  br i1 %cmp104, label %if.then.106, label %if.else.119

if.then.106:                                      ; preds = %if.then.99
  %112 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc107 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %112, i32 0, i32 43
  %113 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state108 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %113, i32 0, i32 18
  %114 = load i32, i32* %state108, align 4
  %idxprom109 = zext i32 %114 to i64
  %115 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG0 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %115, i32 0, i32 32
  %arrayidx110 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG0, i32 0, i64 %idxprom109
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc107, i16* %arrayidx110, i32 0)
  %116 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc111 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %116, i32 0, i32 43
  %117 = load i32, i32* %posState, align 4
  %idxprom112 = zext i32 %117 to i64
  %118 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state113 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %118, i32 0, i32 18
  %119 = load i32, i32* %state113, align 4
  %idxprom114 = zext i32 %119 to i64
  %120 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep0Long = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %120, i32 0, i32 35
  %arrayidx115 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx115, i32 0, i64 %idxprom112
  %121 = load i32, i32* %len, align 4
  %cmp117 = icmp eq i32 %121, 1
  %cond = select i1 %cmp117, i32 0, i32 1
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc111, i16* %arrayidx116, i32 %cond)
  br label %if.end.165

if.else.119:                                      ; preds = %if.then.99
  %122 = load i32, i32* %pos, align 4
  %idxprom120 = zext i32 %122 to i64
  %123 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps121 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %123, i32 0, i32 17
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %reps121, i32 0, i64 %idxprom120
  %124 = load i32, i32* %arrayidx122, align 4
  store i32 %124, i32* %distance, align 4
  %125 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc123 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %125, i32 0, i32 43
  %126 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state124 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %126, i32 0, i32 18
  %127 = load i32, i32* %state124, align 4
  %idxprom125 = zext i32 %127 to i64
  %128 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG0126 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %128, i32 0, i32 32
  %arrayidx127 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG0126, i32 0, i64 %idxprom125
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc123, i16* %arrayidx127, i32 1)
  %129 = load i32, i32* %pos, align 4
  %cmp128 = icmp eq i32 %129, 1
  br i1 %cmp128, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %if.else.119
  %130 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc131 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %130, i32 0, i32 43
  %131 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state132 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %131, i32 0, i32 18
  %132 = load i32, i32* %state132, align 4
  %idxprom133 = zext i32 %132 to i64
  %133 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %133, i32 0, i32 33
  %arrayidx134 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG1, i32 0, i64 %idxprom133
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc131, i16* %arrayidx134, i32 0)
  br label %if.end.158

if.else.135:                                      ; preds = %if.else.119
  %134 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc136 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %134, i32 0, i32 43
  %135 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state137 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %135, i32 0, i32 18
  %136 = load i32, i32* %state137, align 4
  %idxprom138 = zext i32 %136 to i64
  %137 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG1139 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %137, i32 0, i32 33
  %arrayidx140 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG1139, i32 0, i64 %idxprom138
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc136, i16* %arrayidx140, i32 1)
  %138 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc141 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %138, i32 0, i32 43
  %139 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state142 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %139, i32 0, i32 18
  %140 = load i32, i32* %state142, align 4
  %idxprom143 = zext i32 %140 to i64
  %141 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %141, i32 0, i32 34
  %arrayidx144 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG2, i32 0, i64 %idxprom143
  %142 = load i32, i32* %pos, align 4
  %sub145 = sub i32 %142, 2
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc141, i16* %arrayidx144, i32 %sub145)
  %143 = load i32, i32* %pos, align 4
  %cmp146 = icmp eq i32 %143, 3
  br i1 %cmp146, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.else.135
  %144 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps149 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %144, i32 0, i32 17
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %reps149, i32 0, i64 2
  %145 = load i32, i32* %arrayidx150, align 4
  %146 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps151 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %146, i32 0, i32 17
  %arrayidx152 = getelementptr inbounds [4 x i32], [4 x i32]* %reps151, i32 0, i64 3
  store i32 %145, i32* %arrayidx152, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.148, %if.else.135
  %147 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps154 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %147, i32 0, i32 17
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %reps154, i32 0, i64 1
  %148 = load i32, i32* %arrayidx155, align 4
  %149 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps156 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %149, i32 0, i32 17
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %reps156, i32 0, i64 2
  store i32 %148, i32* %arrayidx157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.153, %if.then.130
  %150 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps159 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %150, i32 0, i32 17
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %reps159, i32 0, i64 0
  %151 = load i32, i32* %arrayidx160, align 4
  %152 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps161 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %152, i32 0, i32 17
  %arrayidx162 = getelementptr inbounds [4 x i32], [4 x i32]* %reps161, i32 0, i64 1
  store i32 %151, i32* %arrayidx162, align 4
  %153 = load i32, i32* %distance, align 4
  %154 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps163 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %154, i32 0, i32 17
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %reps163, i32 0, i64 0
  store i32 %153, i32* %arrayidx164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.158, %if.then.106
  %155 = load i32, i32* %len, align 4
  %cmp166 = icmp eq i32 %155, 1
  br i1 %cmp166, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.end.165
  %156 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state169 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %156, i32 0, i32 18
  %157 = load i32, i32* %state169, align 4
  %idxprom170 = zext i32 %157 to i64
  %arrayidx171 = getelementptr inbounds [12 x i32], [12 x i32]* @kShortRepNextStates, i32 0, i64 %idxprom170
  %158 = load i32, i32* %arrayidx171, align 4
  %159 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state172 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %159, i32 0, i32 18
  store i32 %158, i32* %state172, align 4
  br label %if.end.182

if.else.173:                                      ; preds = %if.end.165
  %160 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %160, i32 0, i32 40
  %161 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc174 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %161, i32 0, i32 43
  %162 = load i32, i32* %len, align 4
  %sub175 = sub i32 %162, 2
  %163 = load i32, i32* %posState, align 4
  %164 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode176 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %164, i32 0, i32 42
  %165 = load i32, i32* %fastMode176, align 4
  %tobool177 = icmp ne i32 %165, 0
  %lnot = xor i1 %tobool177, true
  %lnot.ext = zext i1 %lnot to i32
  %166 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %166, i32 0, i32 13
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  call void @LenEnc_Encode2(%struct.CLenPriceEnc* %repLenEnc, %struct.CRangeEnc* %rc174, i32 %sub175, i32 %163, i32 %lnot.ext, i32* %arraydecay)
  %167 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state178 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %167, i32 0, i32 18
  %168 = load i32, i32* %state178, align 4
  %idxprom179 = zext i32 %168 to i64
  %arrayidx180 = getelementptr inbounds [12 x i32], [12 x i32]* @kRepNextStates, i32 0, i64 %idxprom179
  %169 = load i32, i32* %arrayidx180, align 4
  %170 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state181 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %170, i32 0, i32 18
  store i32 %169, i32* %state181, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.173, %if.then.168
  br label %if.end.274

if.else.183:                                      ; preds = %if.else.89
  %171 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc184 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %171, i32 0, i32 43
  %172 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state185 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %172, i32 0, i32 18
  %173 = load i32, i32* %state185, align 4
  %idxprom186 = zext i32 %173 to i64
  %174 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep187 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %174, i32 0, i32 31
  %arrayidx188 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep187, i32 0, i64 %idxprom186
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc184, i16* %arrayidx188, i32 0)
  %175 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state189 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %175, i32 0, i32 18
  %176 = load i32, i32* %state189, align 4
  %idxprom190 = zext i32 %176 to i64
  %arrayidx191 = getelementptr inbounds [12 x i32], [12 x i32]* @kMatchNextStates, i32 0, i64 %idxprom190
  %177 = load i32, i32* %arrayidx191, align 4
  %178 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state192 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %178, i32 0, i32 18
  store i32 %177, i32* %state192, align 4
  %179 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %179, i32 0, i32 39
  %180 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc193 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %180, i32 0, i32 43
  %181 = load i32, i32* %len, align 4
  %sub194 = sub i32 %181, 2
  %182 = load i32, i32* %posState, align 4
  %183 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode195 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %183, i32 0, i32 42
  %184 = load i32, i32* %fastMode195, align 4
  %tobool196 = icmp ne i32 %184, 0
  %lnot197 = xor i1 %tobool196, true
  %lnot.ext198 = zext i1 %lnot197 to i32
  %185 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices199 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %185, i32 0, i32 13
  %arraydecay200 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices199, i32 0, i32 0
  call void @LenEnc_Encode2(%struct.CLenPriceEnc* %lenEnc, %struct.CRangeEnc* %rc193, i32 %sub194, i32 %182, i32 %lnot.ext198, i32* %arraydecay200)
  %186 = load i32, i32* %pos, align 4
  %sub201 = sub i32 %186, 4
  store i32 %sub201, i32* %pos, align 4
  %187 = load i32, i32* %pos, align 4
  %cmp202 = icmp ult i32 %187, 128
  br i1 %cmp202, label %if.then.204, label %if.else.208

if.then.204:                                      ; preds = %if.else.183
  %188 = load i32, i32* %pos, align 4
  %idxprom205 = zext i32 %188 to i64
  %189 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %189, i32 0, i32 12
  %arrayidx206 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos, i32 0, i64 %idxprom205
  %190 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %190 to i32
  store i32 %conv207, i32* %posSlot, align 4
  br label %if.end.221

if.else.208:                                      ; preds = %if.else.183
  %191 = load i32, i32* %pos, align 4
  %sub209 = sub i32 524287, %191
  %shr210 = lshr i32 %sub209, 31
  %sub211 = sub i32 0, %shr210
  %and212 = and i32 12, %sub211
  %add213 = add i32 6, %and212
  store i32 %add213, i32* %i, align 4
  %192 = load i32, i32* %pos, align 4
  %193 = load i32, i32* %i, align 4
  %shr214 = lshr i32 %192, %193
  %idxprom215 = zext i32 %shr214 to i64
  %194 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos216 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %194, i32 0, i32 12
  %arrayidx217 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos216, i32 0, i64 %idxprom215
  %195 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %195 to i32
  %196 = load i32, i32* %i, align 4
  %mul219 = mul i32 %196, 2
  %add220 = add i32 %conv218, %mul219
  store i32 %add220, i32* %posSlot, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.208, %if.then.204
  %197 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc222 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %197, i32 0, i32 43
  %198 = load i32, i32* %len, align 4
  %cmp223 = icmp ult i32 %198, 5
  br i1 %cmp223, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.221
  %199 = load i32, i32* %len, align 4
  %sub225 = sub i32 %199, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.221
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond226 = phi i32 [ %sub225, %cond.true ], [ 3, %cond.false ]
  %idxprom227 = zext i32 %cond226 to i64
  %200 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %200, i32 0, i32 36
  %arrayidx228 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom227
  %arraydecay229 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx228, i32 0, i32 0
  %201 = load i32, i32* %posSlot, align 4
  call void @RcTree_Encode(%struct.CRangeEnc* %rc222, i16* %arraydecay229, i32 6, i32 %201)
  %202 = load i32, i32* %posSlot, align 4
  %cmp230 = icmp uge i32 %202, 4
  br i1 %cmp230, label %if.then.232, label %if.end.258

if.then.232:                                      ; preds = %cond.end
  %203 = load i32, i32* %posSlot, align 4
  %shr233 = lshr i32 %203, 1
  %sub234 = sub i32 %shr233, 1
  store i32 %sub234, i32* %footerBits, align 4
  %204 = load i32, i32* %posSlot, align 4
  %and235 = and i32 %204, 1
  %or = or i32 2, %and235
  %205 = load i32, i32* %footerBits, align 4
  %shl236 = shl i32 %or, %205
  store i32 %shl236, i32* %base, align 4
  %206 = load i32, i32* %pos, align 4
  %207 = load i32, i32* %base, align 4
  %sub237 = sub i32 %206, %207
  store i32 %sub237, i32* %posReduced, align 4
  %208 = load i32, i32* %posSlot, align 4
  %cmp238 = icmp ult i32 %208, 14
  br i1 %cmp238, label %if.then.240, label %if.else.249

if.then.240:                                      ; preds = %if.then.232
  %209 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc241 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %209, i32 0, i32 43
  %210 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posEncoders = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %210, i32 0, i32 37
  %arraydecay242 = getelementptr inbounds [114 x i16], [114 x i16]* %posEncoders, i32 0, i32 0
  %211 = load i32, i32* %base, align 4
  %idx.ext243 = zext i32 %211 to i64
  %add.ptr244 = getelementptr inbounds i16, i16* %arraydecay242, i64 %idx.ext243
  %212 = load i32, i32* %posSlot, align 4
  %idx.ext245 = zext i32 %212 to i64
  %idx.neg246 = sub i64 0, %idx.ext245
  %add.ptr247 = getelementptr inbounds i16, i16* %add.ptr244, i64 %idx.neg246
  %add.ptr248 = getelementptr inbounds i16, i16* %add.ptr247, i64 -1
  %213 = load i32, i32* %footerBits, align 4
  %214 = load i32, i32* %posReduced, align 4
  call void @RcTree_ReverseEncode(%struct.CRangeEnc* %rc241, i16* %add.ptr248, i32 %213, i32 %214)
  br label %if.end.257

if.else.249:                                      ; preds = %if.then.232
  %215 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc250 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %215, i32 0, i32 43
  %216 = load i32, i32* %posReduced, align 4
  %shr251 = lshr i32 %216, 4
  %217 = load i32, i32* %footerBits, align 4
  %sub252 = sub i32 %217, 4
  call void @RangeEnc_EncodeDirectBits(%struct.CRangeEnc* %rc250, i32 %shr251, i32 %sub252)
  %218 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc253 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %218, i32 0, i32 43
  %219 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %219, i32 0, i32 38
  %arraydecay254 = getelementptr inbounds [16 x i16], [16 x i16]* %posAlignEncoder, i32 0, i32 0
  %220 = load i32, i32* %posReduced, align 4
  %and255 = and i32 %220, 15
  call void @RcTree_ReverseEncode(%struct.CRangeEnc* %rc253, i16* %arraydecay254, i32 4, i32 %and255)
  %221 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPriceCount = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %221, i32 0, i32 22
  %222 = load i32, i32* %alignPriceCount, align 4
  %inc256 = add i32 %222, 1
  store i32 %inc256, i32* %alignPriceCount, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.249, %if.then.240
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %cond.end
  %223 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps259 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %223, i32 0, i32 17
  %arrayidx260 = getelementptr inbounds [4 x i32], [4 x i32]* %reps259, i32 0, i64 2
  %224 = load i32, i32* %arrayidx260, align 4
  %225 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps261 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %225, i32 0, i32 17
  %arrayidx262 = getelementptr inbounds [4 x i32], [4 x i32]* %reps261, i32 0, i64 3
  store i32 %224, i32* %arrayidx262, align 4
  %226 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps263 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %226, i32 0, i32 17
  %arrayidx264 = getelementptr inbounds [4 x i32], [4 x i32]* %reps263, i32 0, i64 1
  %227 = load i32, i32* %arrayidx264, align 4
  %228 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps265 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %228, i32 0, i32 17
  %arrayidx266 = getelementptr inbounds [4 x i32], [4 x i32]* %reps265, i32 0, i64 2
  store i32 %227, i32* %arrayidx266, align 4
  %229 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps267 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %229, i32 0, i32 17
  %arrayidx268 = getelementptr inbounds [4 x i32], [4 x i32]* %reps267, i32 0, i64 0
  %230 = load i32, i32* %arrayidx268, align 4
  %231 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps269 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %231, i32 0, i32 17
  %arrayidx270 = getelementptr inbounds [4 x i32], [4 x i32]* %reps269, i32 0, i64 1
  store i32 %230, i32* %arrayidx270, align 4
  %232 = load i32, i32* %pos, align 4
  %233 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps271 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %233, i32 0, i32 17
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %reps271, i32 0, i64 0
  store i32 %232, i32* %arrayidx272, align 4
  %234 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchPriceCount = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %234, i32 0, i32 46
  %235 = load i32, i32* %matchPriceCount, align 4
  %inc273 = add i32 %235, 1
  store i32 %inc273, i32* %matchPriceCount, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.258, %if.end.182
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.84
  %236 = load i32, i32* %len, align 4
  %237 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset276 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %237, i32 0, i32 16
  %238 = load i32, i32* %additionalOffset276, align 4
  %sub277 = sub i32 %238, %236
  store i32 %sub277, i32* %additionalOffset276, align 4
  %239 = load i32, i32* %len, align 4
  %240 = load i32, i32* %nowPos32, align 4
  %add278 = add i32 %240, %239
  store i32 %add278, i32* %nowPos32, align 4
  %241 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset279 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %241, i32 0, i32 16
  %242 = load i32, i32* %additionalOffset279, align 4
  %cmp280 = icmp eq i32 %242, 0
  br i1 %cmp280, label %if.then.282, label %if.end.336

if.then.282:                                      ; preds = %if.end.275
  %243 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode283 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %243, i32 0, i32 42
  %244 = load i32, i32* %fastMode283, align 4
  %tobool284 = icmp ne i32 %244, 0
  br i1 %tobool284, label %if.end.296, label %if.then.285

if.then.285:                                      ; preds = %if.then.282
  %245 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchPriceCount286 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %245, i32 0, i32 46
  %246 = load i32, i32* %matchPriceCount286, align 4
  %cmp287 = icmp uge i32 %246, 128
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.then.285
  %247 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @FillDistancesPrices(%struct.CLzmaEnc* %247)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %if.then.285
  %248 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPriceCount291 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %248, i32 0, i32 22
  %249 = load i32, i32* %alignPriceCount291, align 4
  %cmp292 = icmp uge i32 %249, 16
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.end.290
  %250 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  call void @FillAlignPrices(%struct.CLzmaEnc* %250)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %if.end.290
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.282
  %251 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder297 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %251, i32 0, i32 0
  %GetNumAvailableBytes298 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder297, i32 0, i32 2
  %252 = load i32 (i8*)*, i32 (i8*)** %GetNumAvailableBytes298, align 8
  %253 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj299 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %253, i32 0, i32 1
  %254 = load i8*, i8** %matchFinderObj299, align 8
  %call300 = call i32 %252(i8* %254)
  %cmp301 = icmp eq i32 %call300, 0
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.end.296
  br label %for.end

if.end.304:                                       ; preds = %if.end.296
  %255 = load i32, i32* %nowPos32, align 4
  %256 = load i32, i32* %startPos32, align 4
  %sub305 = sub i32 %255, %256
  store i32 %sub305, i32* %processed, align 4
  %257 = load i32, i32* %useLimits.addr, align 4
  %tobool306 = icmp ne i32 %257, 0
  br i1 %tobool306, label %if.then.307, label %if.else.325

if.then.307:                                      ; preds = %if.end.304
  %258 = load i32, i32* %processed, align 4
  %add308 = add i32 %258, 4096
  %add309 = add i32 %add308, 300
  %259 = load i32, i32* %maxUnpackSize.addr, align 4
  %cmp310 = icmp uge i32 %add309, %259
  br i1 %cmp310, label %if.then.323, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.307
  %260 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc312 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %260, i32 0, i32 43
  %processed313 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc312, i32 0, i32 8
  %261 = load i64, i64* %processed313, align 8
  %262 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc314 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %262, i32 0, i32 43
  %buf = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc314, i32 0, i32 4
  %263 = load i8*, i8** %buf, align 8
  %264 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc315 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %264, i32 0, i32 43
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc315, i32 0, i32 6
  %265 = load i8*, i8** %bufBase, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %263 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %265 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add316 = add i64 %261, %sub.ptr.sub
  %266 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc317 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %266, i32 0, i32 43
  %cacheSize = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc317, i32 0, i32 3
  %267 = load i64, i64* %cacheSize, align 8
  %add318 = add i64 %add316, %267
  %add319 = add i64 %add318, 8192
  %268 = load i32, i32* %maxPackSize.addr, align 4
  %conv320 = zext i32 %268 to i64
  %cmp321 = icmp uge i64 %add319, %conv320
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %lor.lhs.false, %if.then.307
  br label %for.end

if.end.324:                                       ; preds = %lor.lhs.false
  br label %if.end.335

if.else.325:                                      ; preds = %if.end.304
  %269 = load i32, i32* %processed, align 4
  %cmp326 = icmp uge i32 %269, 32768
  br i1 %cmp326, label %if.then.328, label %if.end.334

if.then.328:                                      ; preds = %if.else.325
  %270 = load i32, i32* %nowPos32, align 4
  %271 = load i32, i32* %startPos32, align 4
  %sub329 = sub i32 %270, %271
  %conv330 = zext i32 %sub329 to i64
  %272 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos64331 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %272, i32 0, i32 45
  %273 = load i64, i64* %nowPos64331, align 8
  %add332 = add i64 %273, %conv330
  store i64 %add332, i64* %nowPos64331, align 8
  %274 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call333 = call i32 @CheckErrors(%struct.CLzmaEnc* %274)
  store i32 %call333, i32* %retval
  br label %return

if.end.334:                                       ; preds = %if.else.325
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.324
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.275
  br label %for.cond

for.end:                                          ; preds = %if.then.323, %if.then.303
  br label %if.end.337

if.end.337:                                       ; preds = %for.end, %if.end.31
  %275 = load i32, i32* %nowPos32, align 4
  %276 = load i32, i32* %startPos32, align 4
  %sub338 = sub i32 %275, %276
  %conv339 = zext i32 %sub338 to i64
  %277 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos64340 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %277, i32 0, i32 45
  %278 = load i64, i64* %nowPos64340, align 8
  %add341 = add i64 %278, %conv339
  store i64 %add341, i64* %nowPos64340, align 8
  %279 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %280 = load i32, i32* %nowPos32, align 4
  %call342 = call i32 @Flush(%struct.CLzmaEnc* %279, i32 %280)
  store i32 %call342, i32* %retval
  br label %return

return:                                           ; preds = %if.end.337, %if.then.328, %if.then.16, %if.then.5, %if.then.3
  %281 = load i32, i32* %retval
  ret i32 %281
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_Encode(i8* %pp, %struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.ICompressProgress* %progress, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %__result__ = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_Prepare(i8* %0, %struct.ISeqOutStream* %1, %struct.ISeqInStream* %2, %struct.ISzAlloc* %3, %struct.ISzAlloc* %4)
  store i32 %call, i32* %__result__, align 4
  %5 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %__result__, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %pp.addr, align 8
  %8 = bitcast i8* %7 to %struct.CLzmaEnc*
  %9 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %call1 = call i32 @LzmaEnc_Encode2(%struct.CLzmaEnc* %8, %struct.ICompressProgress* %9)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaEnc_Prepare(i8* %pp, %struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 4
  %stream = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 13
  store %struct.ISeqInStream* %2, %struct.ISeqInStream** %stream, align 8
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %needInit = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 52
  store i32 1, i32* %needInit, align 4
  %5 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 43
  %outStream1 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc, i32 0, i32 7
  store %struct.ISeqOutStream* %5, %struct.ISeqOutStream** %outStream1, align 8
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_AllocAndInit(%struct.CLzmaEnc* %7, i32 0, %struct.ISzAlloc* %8, %struct.ISzAlloc* %9)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaEnc_Encode2(%struct.CLzmaEnc* %p, %struct.ICompressProgress* %progress) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %res = alloca i32, align 4
  %allocaDummy = alloca [768 x i8], align 16
  %i = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store i32 0, i32* %res, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %allocaDummy, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %if.end.18, %for.end
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call = call i32 @LzmaEnc_CodeOneBlock(%struct.CLzmaEnc* %4, i32 0, i32 0, i32 0)
  store i32 %call, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.1
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 47
  %7 = load i32, i32* %finished, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond.1
  br label %for.end.19

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %cmp6 = icmp ne %struct.ICompressProgress* %8, null
  br i1 %cmp6, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %Progress = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %9, i32 0, i32 0
  %10 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %Progress, align 8
  %11 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %12 = bitcast %struct.ICompressProgress* %11 to i8*
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %nowPos64 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 45
  %14 = load i64, i64* %nowPos64, align 8
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %15, i32 0, i32 43
  %processed = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc, i32 0, i32 8
  %16 = load i64, i64* %processed, align 8
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc9 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 43
  %buf = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc9, i32 0, i32 4
  %18 = load i8*, i8** %buf, align 8
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 43
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc10, i32 0, i32 6
  %20 = load i8*, i8** %bufBase, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i64 %16, %sub.ptr.sub
  %21 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc11 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %21, i32 0, i32 43
  %cacheSize = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc11, i32 0, i32 3
  %22 = load i64, i64* %cacheSize, align 8
  %add12 = add i64 %add, %22
  %call13 = call i32 %10(i8* %12, i64 %14, i64 %add12)
  store i32 %call13, i32* %res, align 4
  %23 = load i32, i32* %res, align 4
  %cmp14 = icmp ne i32 %23, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.8
  store i32 10, i32* %res, align 4
  br label %for.end.19

if.end.17:                                        ; preds = %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %for.cond.1

for.end.19:                                       ; preds = %if.then.16, %if.then
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %25 = bitcast %struct.CLzmaEnc* %24 to i8*
  call void @LzmaEnc_Finish(i8* %25)
  %26 = load i32, i32* %res, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_WriteProperties(i8* %pp, i8* %props, i64* %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %props.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  %i = alloca i32, align 4
  %dictSize = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %props, i8** %props.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %dictSize1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 50
  %3 = load i32, i32* %dictSize1, align 4
  store i32 %3, i32* %dictSize, align 4
  %4 = load i64*, i64** %size.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp = icmp ult i64 %5, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64*, i64** %size.addr, align 8
  store i64 5, i64* %6, align 8
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %pb = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 26
  %8 = load i32, i32* %pb, align 4
  %mul = mul i32 %8, 5
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lp = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 25
  %10 = load i32, i32* %lp, align 4
  %add = add i32 %mul, %10
  %mul2 = mul i32 %add, 9
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %lc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 24
  %12 = load i32, i32* %lc, align 4
  %add3 = add i32 %mul2, %12
  %conv = trunc i32 %add3 to i8
  %13 = load i8*, i8** %props.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  store i32 11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %14, 30
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %dictSize, align 4
  %16 = load i32, i32* %i, align 4
  %shl = shl i32 2, %16
  %cmp6 = icmp ule i32 %15, %shl
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %shl9 = shl i32 2, %17
  store i32 %shl9, i32* %dictSize, align 4
  br label %for.end

if.end.10:                                        ; preds = %for.body
  %18 = load i32, i32* %dictSize, align 4
  %19 = load i32, i32* %i, align 4
  %shl11 = shl i32 3, %19
  %cmp12 = icmp ule i32 %18, %shl11
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %20 = load i32, i32* %i, align 4
  %shl15 = shl i32 3, %20
  store i32 %shl15, i32* %dictSize, align 4
  br label %for.end

if.end.16:                                        ; preds = %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %if.then.8, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %for.end
  %22 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %22, 4
  br i1 %cmp18, label %for.body.20, label %for.end.27

for.body.20:                                      ; preds = %for.cond.17
  %23 = load i32, i32* %dictSize, align 4
  %24 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 8, %24
  %shr = lshr i32 %23, %mul21
  %conv22 = trunc i32 %shr to i8
  %25 = load i32, i32* %i, align 4
  %add23 = add nsw i32 1, %25
  %idxprom = sext i32 %add23 to i64
  %26 = load i8*, i8** %props.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 %conv22, i8* %arrayidx24, align 1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.20
  %27 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.27, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEnc_MemEncode(i8* %pp, i8* %dest, i64* %destLen, i8* %src, i64 %srcLen, i32 %writeEndMark, %struct.ICompressProgress* %progress, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64, align 8
  %writeEndMark.addr = alloca i32, align 4
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %res = alloca i32, align 4
  %p = alloca %struct.CLzmaEnc*, align 8
  %outStream = alloca %struct.CSeqOutStreamBuf, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcLen, i64* %srcLen.addr, align 8
  store i32 %writeEndMark, i32* %writeEndMark.addr, align 4
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i64, i64* %srcLen.addr, align 8
  call void @LzmaEnc_SetInputBuf(%struct.CLzmaEnc* %2, i8* %3, i64 %4)
  %funcTable = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 0
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %funcTable, i32 0, i32 0
  store i64 (i8*, i8*, i64)* @MyWrite, i64 (i8*, i8*, i64)** %Write, align 8
  %5 = load i8*, i8** %dest.addr, align 8
  %data = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 1
  store i8* %5, i8** %data, align 8
  %6 = load i64*, i64** %destLen.addr, align 8
  %7 = load i64, i64* %6, align 8
  %rem = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 2
  store i64 %7, i64* %rem, align 8
  %overflow = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 3
  store i32 0, i32* %overflow, align 4
  %8 = load i32, i32* %writeEndMark.addr, align 4
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %writeEndMark1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 44
  store i32 %8, i32* %writeEndMark1, align 4
  %funcTable2 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 0
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 43
  %outStream3 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc, i32 0, i32 7
  store %struct.ISeqOutStream* %funcTable2, %struct.ISeqOutStream** %outStream3, align 8
  %11 = load i8*, i8** %pp.addr, align 8
  %12 = load i8*, i8** %src.addr, align 8
  %13 = load i64, i64* %srcLen.addr, align 8
  %14 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %15 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call = call i32 @LzmaEnc_MemPrepare(i8* %11, i8* %12, i64 %13, i32 0, %struct.ISzAlloc* %14, %struct.ISzAlloc* %15)
  store i32 %call, i32* %res, align 4
  %16 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %18 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %call4 = call i32 @LzmaEnc_Encode2(%struct.CLzmaEnc* %17, %struct.ICompressProgress* %18)
  store i32 %call4, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rem5 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 2
  %19 = load i64, i64* %rem5, align 8
  %20 = load i64*, i64** %destLen.addr, align 8
  %21 = load i64, i64* %20, align 8
  %sub = sub i64 %21, %19
  store i64 %sub, i64* %20, align 8
  %overflow6 = getelementptr inbounds %struct.CSeqOutStreamBuf, %struct.CSeqOutStreamBuf* %outStream, i32 0, i32 3
  %22 = load i32, i32* %overflow6, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %23 = load i32, i32* %res, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @LzmaEncode(i8* %dest, i64* %destLen, i8* %src, i64 %srcLen, %struct._CLzmaEncProps* %props, i8* %propsEncoded, i64* %propsSize, i32 %writeEndMark, %struct.ICompressProgress* %progress, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64, align 8
  %props.addr = alloca %struct._CLzmaEncProps*, align 8
  %propsEncoded.addr = alloca i8*, align 8
  %propsSize.addr = alloca i64*, align 8
  %writeEndMark.addr = alloca i32, align 4
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzmaEnc*, align 8
  %res = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcLen, i64* %srcLen.addr, align 8
  store %struct._CLzmaEncProps* %props, %struct._CLzmaEncProps** %props.addr, align 8
  store i8* %propsEncoded, i8** %propsEncoded.addr, align 8
  store i64* %propsSize, i64** %propsSize.addr, align 8
  store i32 %writeEndMark, i32* %writeEndMark.addr, align 4
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call = call i8* @LzmaEnc_Create(%struct.ISzAlloc* %0)
  %1 = bitcast i8* %call to %struct.CLzmaEnc*
  store %struct.CLzmaEnc* %1, %struct.CLzmaEnc** %p, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %cmp = icmp eq %struct.CLzmaEnc* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %4 = bitcast %struct.CLzmaEnc* %3 to i8*
  %5 = load %struct._CLzmaEncProps*, %struct._CLzmaEncProps** %props.addr, align 8
  %call1 = call i32 @LzmaEnc_SetProps(i8* %4, %struct._CLzmaEncProps* %5)
  store i32 %call1, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %8 = bitcast %struct.CLzmaEnc* %7 to i8*
  %9 = load i8*, i8** %propsEncoded.addr, align 8
  %10 = load i64*, i64** %propsSize.addr, align 8
  %call4 = call i32 @LzmaEnc_WriteProperties(i8* %8, i8* %9, i64* %10)
  store i32 %call4, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.3
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %13 = bitcast %struct.CLzmaEnc* %12 to i8*
  %14 = load i8*, i8** %dest.addr, align 8
  %15 = load i64*, i64** %destLen.addr, align 8
  %16 = load i8*, i8** %src.addr, align 8
  %17 = load i64, i64* %srcLen.addr, align 8
  %18 = load i32, i32* %writeEndMark.addr, align 4
  %19 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %20 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call7 = call i32 @LzmaEnc_MemEncode(i8* %13, i8* %14, i64* %15, i8* %16, i64 %17, i32 %18, %struct.ICompressProgress* %19, %struct.ISzAlloc* %20, %struct.ISzAlloc* %21)
  store i32 %call7, i32* %res, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p, align 8
  %23 = bitcast %struct.CLzmaEnc* %22 to i8*
  %24 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %25 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  call void @LzmaEnc_Destroy(i8* %23, %struct.ISzAlloc* %24, %struct.ISzAlloc* %25)
  %26 = load i32, i32* %res, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @RcTree_ReverseGetPrice(i16* %probs, i32 %numBitLevels, i32 %symbol, i32* %ProbPrices) #0 {
entry:
  %probs.addr = alloca i16*, align 8
  %numBitLevels.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  %price = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %numBitLevels, i32* %numBitLevels.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 0, i32* %price, align 4
  store i32 1, i32* %m, align 4
  %0 = load i32, i32* %numBitLevels.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %symbol.addr, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %bit, align 4
  %3 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, i32* %symbol.addr, align 4
  %4 = load i32, i32* %m, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i16*, i16** %probs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %7 = load i32, i32* %bit, align 4
  %sub = sub nsw i32 0, %7
  %and1 = and i32 %sub, 2047
  %xor = xor i32 %conv, %and1
  %shr2 = ashr i32 %xor, 4
  %idxprom3 = sext i32 %shr2 to i64
  %8 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %price, align 4
  %add = add i32 %10, %9
  store i32 %add, i32* %price, align 4
  %11 = load i32, i32* %m, align 4
  %shl = shl i32 %11, 1
  %12 = load i32, i32* %bit, align 4
  %or = or i32 %shl, %12
  store i32 %or, i32* %m, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %price, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @RcTree_GetPrice(i16* %probs, i32 %numBitLevels, i32 %symbol, i32* %ProbPrices) #0 {
entry:
  %probs.addr = alloca i16*, align 8
  %numBitLevels.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  %price = alloca i32, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %numBitLevels, i32* %numBitLevels.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 0, i32* %price, align 4
  %0 = load i32, i32* %numBitLevels.addr, align 4
  %shl = shl i32 1, %0
  %1 = load i32, i32* %symbol.addr, align 4
  %or = or i32 %1, %shl
  store i32 %or, i32* %symbol.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %3, 1
  %idxprom = zext i32 %shr to i64
  %4 = load i16*, i16** %probs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %6 = load i32, i32* %symbol.addr, align 4
  %and = and i32 %6, 1
  %sub = sub nsw i32 0, %and
  %and1 = and i32 %sub, 2047
  %xor = xor i32 %conv, %and1
  %shr2 = ashr i32 %xor, 4
  %idxprom3 = sext i32 %shr2 to i64
  %7 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %price, align 4
  %add = add i32 %9, %8
  store i32 %add, i32* %price, align 4
  %10 = load i32, i32* %symbol.addr, align 4
  %shr5 = lshr i32 %10, 1
  store i32 %shr5, i32* %symbol.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %price, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @LenPriceEnc_UpdateTable(%struct.CLenPriceEnc* %p, i32 %posState, i32* %ProbPrices) #0 {
entry:
  %p.addr = alloca %struct.CLenPriceEnc*, align 8
  %posState.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  store %struct.CLenPriceEnc* %p, %struct.CLenPriceEnc** %p.addr, align 8
  store i32 %posState, i32* %posState.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  %0 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %0, i32 0, i32 0
  %1 = load i32, i32* %posState.addr, align 4
  %2 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %tableSize = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %2, i32 0, i32 2
  %3 = load i32, i32* %tableSize, align 4
  %4 = load i32, i32* %posState.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %prices = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx, i32 0, i32 0
  %6 = load i32*, i32** %ProbPrices.addr, align 8
  call void @LenEnc_SetPrices(%struct.CLenEnc* %p1, i32 %1, i32 %3, i32* %arraydecay, i32* %6)
  %7 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %tableSize2 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %7, i32 0, i32 2
  %8 = load i32, i32* %tableSize2, align 4
  %9 = load i32, i32* %posState.addr, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %counters = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %counters, i32 0, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LenEnc_SetPrices(%struct.CLenEnc* %p, i32 %posState, i32 %numSymbols, i32* %prices, i32* %ProbPrices) #0 {
entry:
  %p.addr = alloca %struct.CLenEnc*, align 8
  %posState.addr = alloca i32, align 4
  %numSymbols.addr = alloca i32, align 4
  %prices.addr = alloca i32*, align 8
  %ProbPrices.addr = alloca i32*, align 8
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLenEnc* %p, %struct.CLenEnc** %p.addr, align 8
  store i32 %posState, i32* %posState.addr, align 4
  store i32 %numSymbols, i32* %numSymbols.addr, align 4
  store i32* %prices, i32** %prices.addr, align 8
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  %0 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %0, i32 0, i32 0
  %1 = load i16, i16* %choice, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %2 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %a0, align 4
  %4 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice1 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %4, i32 0, i32 0
  %5 = load i16, i16* %choice1, align 2
  %conv2 = zext i16 %5 to i32
  %xor = xor i32 %conv2, 2047
  %shr3 = ashr i32 %xor, 4
  %idxprom4 = sext i32 %shr3 to i64
  %6 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  store i32 %7, i32* %a1, align 4
  %8 = load i32, i32* %a1, align 4
  %9 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice2 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %9, i32 0, i32 1
  %10 = load i16, i16* %choice2, align 2
  %conv6 = zext i16 %10 to i32
  %shr7 = ashr i32 %conv6, 4
  %idxprom8 = sext i32 %shr7 to i64
  %11 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %add = add i32 %8, %12
  store i32 %add, i32* %b0, align 4
  %13 = load i32, i32* %a1, align 4
  %14 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice210 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %14, i32 0, i32 1
  %15 = load i16, i16* %choice210, align 2
  %conv11 = zext i16 %15 to i32
  %xor12 = xor i32 %conv11, 2047
  %shr13 = ashr i32 %xor12, 4
  %idxprom14 = sext i32 %shr13 to i64
  %16 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %add16 = add i32 %13, %17
  store i32 %add16, i32* %b1, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %18, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %numSymbols.addr, align 4
  %cmp18 = icmp uge i32 %19, %20
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.55

if.end:                                           ; preds = %for.body
  %21 = load i32, i32* %a0, align 4
  %22 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %22, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %low, i32 0, i32 0
  %23 = load i32, i32* %posState.addr, align 4
  %shl = shl i32 %23, 3
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  %24 = load i32, i32* %i, align 4
  %25 = load i32*, i32** %ProbPrices.addr, align 8
  %call = call i32 @RcTree_GetPrice(i16* %add.ptr, i32 3, i32 %24, i32* %25)
  %add20 = add i32 %21, %call
  %26 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %26 to i64
  %27 = load i32*, i32** %prices.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom21
  store i32 %add20, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp24 = icmp ult i32 %29, 16
  br i1 %cmp24, label %for.body.26, label %for.end.41

for.body.26:                                      ; preds = %for.cond.23
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %numSymbols.addr, align 4
  %cmp27 = icmp uge i32 %30, %31
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body.26
  br label %for.end.55

if.end.30:                                        ; preds = %for.body.26
  %32 = load i32, i32* %b0, align 4
  %33 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %mid = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %33, i32 0, i32 3
  %arraydecay31 = getelementptr inbounds [128 x i16], [128 x i16]* %mid, i32 0, i32 0
  %34 = load i32, i32* %posState.addr, align 4
  %shl32 = shl i32 %34, 3
  %idx.ext33 = zext i32 %shl32 to i64
  %add.ptr34 = getelementptr inbounds i16, i16* %arraydecay31, i64 %idx.ext33
  %35 = load i32, i32* %i, align 4
  %sub = sub i32 %35, 8
  %36 = load i32*, i32** %ProbPrices.addr, align 8
  %call35 = call i32 @RcTree_GetPrice(i16* %add.ptr34, i32 3, i32 %sub, i32* %36)
  %add36 = add i32 %32, %call35
  %37 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %37 to i64
  %38 = load i32*, i32** %prices.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %38, i64 %idxprom37
  store i32 %add36, i32* %arrayidx38, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.30
  %39 = load i32, i32* %i, align 4
  %inc40 = add i32 %39, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.23

for.end.41:                                       ; preds = %for.cond.23
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.53, %for.end.41
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %numSymbols.addr, align 4
  %cmp43 = icmp ult i32 %40, %41
  br i1 %cmp43, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.42
  %42 = load i32, i32* %b1, align 4
  %43 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %high = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %43, i32 0, i32 4
  %arraydecay46 = getelementptr inbounds [256 x i16], [256 x i16]* %high, i32 0, i32 0
  %44 = load i32, i32* %i, align 4
  %sub47 = sub i32 %44, 8
  %sub48 = sub i32 %sub47, 8
  %45 = load i32*, i32** %ProbPrices.addr, align 8
  %call49 = call i32 @RcTree_GetPrice(i16* %arraydecay46, i32 8, i32 %sub48, i32* %45)
  %add50 = add i32 %42, %call49
  %46 = load i32, i32* %i, align 4
  %idxprom51 = zext i32 %46 to i64
  %47 = load i32*, i32** %prices.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %47, i64 %idxprom51
  store i32 %add50, i32* %arrayidx52, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.45
  %48 = load i32, i32* %i, align 4
  %inc54 = add i32 %48, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.42

for.end.55:                                       ; preds = %if.then, %if.then.29, %for.cond.42
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaEnc_Alloc(%struct.CLzmaEnc* %p, i32 %keepWindowSize, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %keepWindowSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %beforeSize = alloca i32, align 4
  %btMode = alloca i32, align 4
  %lclp = alloca i32, align 4
  %__result__ = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %keepWindowSize, i32* %keepWindowSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  store i32 4096, i32* %beforeSize, align 4
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 43
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call = call i32 @RangeEnc_Alloc(%struct.CRangeEnc* %rc, %struct.ISzAlloc* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 4
  %btMode1 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 21
  %3 = load i32, i32* %btMode1, align 4
  %cmp = icmp ne i32 %3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %btMode, align 4
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %multiThread = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 48
  %5 = load i32, i32* %multiThread, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 42
  %7 = load i32, i32* %fastMode, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %btMode, align 4
  %tobool4 = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %mtMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 2
  store i32 %land.ext, i32* %mtMode, align 4
  %11 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %11, i32 0, i32 24
  %12 = load i32, i32* %lc, align 4
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lp = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 25
  %14 = load i32, i32* %lp, align 4
  %add = add i32 %12, %14
  store i32 %add, i32* %lclp, align 4
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %15, i32 0, i32 29
  %16 = load i16*, i16** %litProbs, align 8
  %cmp5 = icmp eq i16* %16, null
  br i1 %cmp5, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 53
  %litProbs7 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState, i32 0, i32 0
  %18 = load i16*, i16** %litProbs7, align 8
  %cmp8 = icmp eq i16* %18, null
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lclp11 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 41
  %20 = load i32, i32* %lclp11, align 4
  %21 = load i32, i32* %lclp, align 4
  %cmp12 = icmp ne i32 %20, %21
  br i1 %cmp12, label %if.then.14, label %if.end.36

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %land.end
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %23 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaEnc_FreeLits(%struct.CLzmaEnc* %22, %struct.ISzAlloc* %23)
  %24 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %24, i32 0, i32 0
  %25 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %26 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %27 = bitcast %struct.ISzAlloc* %26 to i8*
  %28 = load i32, i32* %lclp, align 4
  %shl = shl i32 768, %28
  %conv15 = sext i32 %shl to i64
  %mul = mul i64 %conv15, 2
  %call16 = call i8* %25(i8* %27, i64 %mul)
  %29 = bitcast i8* %call16 to i16*
  %30 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs17 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %30, i32 0, i32 29
  store i16* %29, i16** %litProbs17, align 8
  %31 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc18 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %31, i32 0, i32 0
  %32 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc18, align 8
  %33 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %34 = bitcast %struct.ISzAlloc* %33 to i8*
  %35 = load i32, i32* %lclp, align 4
  %shl19 = shl i32 768, %35
  %conv20 = sext i32 %shl19 to i64
  %mul21 = mul i64 %conv20, 2
  %call22 = call i8* %32(i8* %34, i64 %mul21)
  %36 = bitcast i8* %call22 to i16*
  %37 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState23 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %37, i32 0, i32 53
  %litProbs24 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState23, i32 0, i32 0
  store i16* %36, i16** %litProbs24, align 8
  %38 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs25 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %38, i32 0, i32 29
  %39 = load i16*, i16** %litProbs25, align 8
  %cmp26 = icmp eq i16* %39, null
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.14
  %40 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %saveState29 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %40, i32 0, i32 53
  %litProbs30 = getelementptr inbounds %struct.CSaveState, %struct.CSaveState* %saveState29, i32 0, i32 0
  %41 = load i16*, i16** %litProbs30, align 8
  %cmp31 = icmp eq i16* %41, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.28, %if.then.14
  %42 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %43 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaEnc_FreeLits(%struct.CLzmaEnc* %42, %struct.ISzAlloc* %43)
  store i32 2, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.28
  %44 = load i32, i32* %lclp, align 4
  %45 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lclp35 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %45, i32 0, i32 41
  store i32 %44, i32* %lclp35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %lor.lhs.false.10
  %46 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %46, i32 0, i32 50
  %47 = load i32, i32* %dictSize, align 4
  %cmp37 = icmp ugt i32 %47, 16777216
  %conv38 = zext i1 %cmp37 to i32
  %48 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase39 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %48, i32 0, i32 4
  %bigHash = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase39, i32 0, i32 22
  store i32 %conv38, i32* %bigHash, align 4
  %49 = load i32, i32* %beforeSize, align 4
  %50 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize40 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %50, i32 0, i32 50
  %51 = load i32, i32* %dictSize40, align 4
  %add41 = add i32 %49, %51
  %52 = load i32, i32* %keepWindowSize.addr, align 4
  %cmp42 = icmp ult i32 %add41, %52
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.36
  %53 = load i32, i32* %keepWindowSize.addr, align 4
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize45 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %54, i32 0, i32 50
  %55 = load i32, i32* %dictSize45, align 4
  %sub = sub i32 %53, %55
  store i32 %sub, i32* %beforeSize, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.36
  %56 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %mtMode47 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %56, i32 0, i32 2
  %57 = load i32, i32* %mtMode47, align 4
  %tobool48 = icmp ne i32 %57, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.46
  %58 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %58, i32 0, i32 3
  %59 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize50 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %59, i32 0, i32 50
  %60 = load i32, i32* %dictSize50, align 4
  %61 = load i32, i32* %beforeSize, align 4
  %62 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %62, i32 0, i32 15
  %63 = load i32, i32* %numFastBytes, align 4
  %64 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call51 = call i32 @MatchFinderMt_Create(%struct._CMatchFinderMt* %matchFinderMt, i32 %60, i32 %61, i32 %63, i32 273, %struct.ISzAlloc* %64)
  store i32 %call51, i32* %__result__, align 4
  %65 = load i32, i32* %__result__, align 4
  %cmp52 = icmp ne i32 %65, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.49
  %66 = load i32, i32* %__result__, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.49
  %67 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt56 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %67, i32 0, i32 3
  %68 = bitcast %struct._CMatchFinderMt* %matchFinderMt56 to i8*
  %69 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %69, i32 0, i32 1
  store i8* %68, i8** %matchFinderObj, align 8
  %70 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderMt57 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %70, i32 0, i32 3
  %71 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %71, i32 0, i32 0
  call void @MatchFinderMt_CreateVTable(%struct._CMatchFinderMt* %matchFinderMt57, %struct._IMatchFinder* %matchFinder)
  br label %if.end.69

if.else:                                          ; preds = %if.end.46
  %72 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase58 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %72, i32 0, i32 4
  %73 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %dictSize59 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %73, i32 0, i32 50
  %74 = load i32, i32* %dictSize59, align 4
  %75 = load i32, i32* %beforeSize, align 4
  %76 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes60 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %76, i32 0, i32 15
  %77 = load i32, i32* %numFastBytes60, align 4
  %78 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %call61 = call i32 @MatchFinder_Create(%struct._CMatchFinder* %matchFinderBase58, i32 %74, i32 %75, i32 %77, i32 273, %struct.ISzAlloc* %78)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.else
  %79 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase65 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %79, i32 0, i32 4
  %80 = bitcast %struct._CMatchFinder* %matchFinderBase65 to i8*
  %81 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj66 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %81, i32 0, i32 1
  store i8* %80, i8** %matchFinderObj66, align 8
  %82 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase67 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %82, i32 0, i32 4
  %83 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder68 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %83, i32 0, i32 0
  call void @MatchFinder_CreateVTable(%struct._CMatchFinder* %matchFinderBase67, %struct._IMatchFinder* %matchFinder68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.64, %if.end.55
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.63, %if.then.54, %if.then.33, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @RangeEnc_Alloc(%struct.CRangeEnc* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 6
  %1 = load i8*, i8** %bufBase, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %2, i32 0, i32 0
  %3 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %5 = bitcast %struct.ISzAlloc* %4 to i8*
  %call = call i8* %3(i8* %5, i64 65536)
  %6 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase1 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %6, i32 0, i32 6
  store i8* %call, i8** %bufBase1, align 8
  %7 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase2 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %7, i32 0, i32 6
  %8 = load i8*, i8** %bufBase2, align 8
  %cmp3 = icmp eq i8* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase5 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %9, i32 0, i32 6
  %10 = load i8*, i8** %bufBase5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 65536
  %11 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufLim = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %11, i32 0, i32 5
  store i8* %add.ptr, i8** %bufLim, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @MatchFinderMt_Create(%struct._CMatchFinderMt*, i32, i32, i32, i32, %struct.ISzAlloc*) #2

declare void @MatchFinderMt_CreateVTable(%struct._CMatchFinderMt*, %struct._IMatchFinder*) #2

declare i32 @MatchFinder_Create(%struct._CMatchFinder*, i32, i32, i32, i32, %struct.ISzAlloc*) #2

declare void @MatchFinder_CreateVTable(%struct._CMatchFinder*, %struct._IMatchFinder*) #2

; Function Attrs: nounwind uwtable
define internal i32 @CheckErrors(%struct.CLzmaEnc* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 49
  %1 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 49
  %3 = load i32, i32* %result1, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 43
  %res = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %rc, i32 0, i32 9
  %5 = load i32, i32* %res, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result4 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 49
  store i32 9, i32* %result4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderBase = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 4
  %result6 = getelementptr inbounds %struct._CMatchFinder, %struct._CMatchFinder* %matchFinderBase, i32 0, i32 27
  %8 = load i32, i32* %result6, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result9 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 49
  store i32 8, i32* %result9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result11 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 49
  %11 = load i32, i32* %result11, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 47
  store i32 1, i32* %finished, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %result15 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 49
  %14 = load i32, i32* %result15, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @Flush(%struct.CLzmaEnc* %p, i32 %nowPos) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %nowPos.addr = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %nowPos, i32* %nowPos.addr, align 4
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %finished = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 47
  store i32 1, i32* %finished, align 4
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %writeEndMark = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 44
  %2 = load i32, i32* %writeEndMark, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %4 = load i32, i32* %nowPos.addr, align 4
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 28
  %6 = load i32, i32* %pbMask, align 4
  %and = and i32 %4, %6
  call void @WriteEndMarker(%struct.CLzmaEnc* %3, i32 %and)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 43
  call void @RangeEnc_FlushData(%struct.CRangeEnc* %rc)
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 43
  call void @RangeEnc_FlushStream(%struct.CRangeEnc* %rc1)
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call = call i32 @CheckErrors(%struct.CLzmaEnc* %9)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ReadMatchDistances(%struct.CLzmaEnc* %p, i32* %numDistancePairsRes) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %numDistancePairsRes.addr = alloca i32*, align 8
  %lenRes = alloca i32, align 4
  %numPairs = alloca i32, align 4
  %pby = alloca i8*, align 8
  %distance = alloca i32, align 4
  %numAvail14 = alloca i32, align 4
  %pby2 = alloca i8*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32* %numDistancePairsRes, i32** %numDistancePairsRes.addr, align 8
  store i32 0, i32* %lenRes, align 4
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 0
  %GetNumAvailableBytes = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 2
  %1 = load i32 (i8*)*, i32 (i8*)** %GetNumAvailableBytes, align 8
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 1
  %3 = load i8*, i8** %matchFinderObj, align 8
  %call = call i32 %1(i8* %3)
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numAvail = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 10
  store i32 %call, i32* %numAvail, align 4
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 0
  %GetMatches = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder1, i32 0, i32 4
  %6 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %GetMatches, align 8
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 1
  %8 = load i8*, i8** %matchFinderObj2, align 8
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matches = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 14
  %arraydecay = getelementptr inbounds [549 x i32], [549 x i32]* %matches, i32 0, i32 0
  %call3 = call i32 %6(i8* %8, i32* %arraydecay)
  store i32 %call3, i32* %numPairs, align 4
  %10 = load i32, i32* %numPairs, align 4
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %numPairs, align 4
  %sub = sub i32 %11, 2
  %idxprom = zext i32 %sub to i64
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matches4 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 14
  %arrayidx = getelementptr inbounds [549 x i32], [549 x i32]* %matches4, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  store i32 %13, i32* %lenRes, align 4
  %14 = load i32, i32* %lenRes, align 4
  %15 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %15, i32 0, i32 15
  %16 = load i32, i32* %numFastBytes, align 4
  %cmp5 = icmp eq i32 %14, %16
  br i1 %cmp5, label %if.then.6, label %if.end.27

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder7 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 0
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder7, i32 0, i32 3
  %18 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos, align 8
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj8 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 1
  %20 = load i8*, i8** %matchFinderObj8, align 8
  %call9 = call i8* %18(i8* %20)
  %add.ptr = getelementptr inbounds i8, i8* %call9, i64 -1
  store i8* %add.ptr, i8** %pby, align 8
  %21 = load i32, i32* %numPairs, align 4
  %sub10 = sub i32 %21, 1
  %idxprom11 = zext i32 %sub10 to i64
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matches12 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 14
  %arrayidx13 = getelementptr inbounds [549 x i32], [549 x i32]* %matches12, i32 0, i64 %idxprom11
  %23 = load i32, i32* %arrayidx13, align 4
  %add = add i32 %23, 1
  store i32 %add, i32* %distance, align 4
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numAvail15 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %24, i32 0, i32 10
  %25 = load i32, i32* %numAvail15, align 4
  store i32 %25, i32* %numAvail14, align 4
  %26 = load i32, i32* %numAvail14, align 4
  %cmp16 = icmp ugt i32 %26, 273
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.6
  store i32 273, i32* %numAvail14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.6
  %27 = load i8*, i8** %pby, align 8
  %28 = load i32, i32* %distance, align 4
  %idx.ext = zext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr18 = getelementptr inbounds i8, i8* %27, i64 %idx.neg
  store i8* %add.ptr18, i8** %pby2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %lenRes, align 4
  %30 = load i32, i32* %numAvail14, align 4
  %cmp19 = icmp ult i32 %29, %30
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load i32, i32* %lenRes, align 4
  %idxprom20 = zext i32 %31 to i64
  %32 = load i8*, i8** %pby, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 %idxprom20
  %33 = load i8, i8* %arrayidx21, align 1
  %conv = zext i8 %33 to i32
  %34 = load i32, i32* %lenRes, align 4
  %idxprom22 = zext i32 %34 to i64
  %35 = load i8*, i8** %pby2, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %35, i64 %idxprom22
  %36 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %36 to i32
  %cmp25 = icmp eq i32 %conv, %conv24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %37 = phi i1 [ false, %for.cond ], [ %cmp25, %land.rhs ]
  br i1 %37, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %lenRes, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %lenRes, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  %39 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %39, i32 0, i32 16
  %40 = load i32, i32* %additionalOffset, align 4
  %inc29 = add i32 %40, 1
  store i32 %inc29, i32* %additionalOffset, align 4
  %41 = load i32, i32* %numPairs, align 4
  %42 = load i32*, i32** %numDistancePairsRes.addr, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %lenRes, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeBit(%struct.CRangeEnc* %p, i16* %prob, i32 %symbol) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %prob.addr = alloca i16*, align 8
  %symbol.addr = alloca i32, align 4
  %ttt = alloca i32, align 4
  %newBound = alloca i32, align 4
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store i16* %prob, i16** %prob.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i16*, i16** %prob.addr, align 8
  %1 = load i16, i16* %0, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %ttt, align 4
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %2, i32 0, i32 0
  %3 = load i32, i32* %range, align 4
  %shr = lshr i32 %3, 11
  %4 = load i32, i32* %ttt, align 4
  %mul = mul i32 %shr, %4
  store i32 %mul, i32* %newBound, align 4
  %5 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %newBound, align 4
  %7 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range2 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %7, i32 0, i32 0
  store i32 %6, i32* %range2, align 4
  %8 = load i32, i32* %ttt, align 4
  %sub = sub i32 2048, %8
  %shr3 = lshr i32 %sub, 5
  %9 = load i32, i32* %ttt, align 4
  %add = add i32 %9, %shr3
  store i32 %add, i32* %ttt, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %newBound, align 4
  %conv4 = zext i32 %10 to i64
  %11 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %11, i32 0, i32 2
  %12 = load i64, i64* %low, align 8
  %add5 = add i64 %12, %conv4
  store i64 %add5, i64* %low, align 8
  %13 = load i32, i32* %newBound, align 4
  %14 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range6 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %14, i32 0, i32 0
  %15 = load i32, i32* %range6, align 4
  %sub7 = sub i32 %15, %13
  store i32 %sub7, i32* %range6, align 4
  %16 = load i32, i32* %ttt, align 4
  %shr8 = lshr i32 %16, 5
  %17 = load i32, i32* %ttt, align 4
  %sub9 = sub i32 %17, %shr8
  store i32 %sub9, i32* %ttt, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %ttt, align 4
  %conv10 = trunc i32 %18 to i16
  %19 = load i16*, i16** %prob.addr, align 8
  store i16 %conv10, i16* %19, align 2
  %20 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range11 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %20, i32 0, i32 0
  %21 = load i32, i32* %range11, align 4
  %cmp12 = icmp ult i32 %21, 16777216
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %22 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range15 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %22, i32 0, i32 0
  %23 = load i32, i32* %range15, align 4
  %shl = shl i32 %23, 8
  store i32 %shl, i32* %range15, align 4
  %24 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CRangeEnc* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LitEnc_Encode(%struct.CRangeEnc* %p, i16* %probs, i32 %symbol) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %probs.addr = alloca i16*, align 8
  %symbol.addr = alloca i32, align 4
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %or = or i32 %0, 256
  store i32 %or, i32* %symbol.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %2 = load i16*, i16** %probs.addr, align 8
  %3 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %3, 8
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 %idx.ext
  %4 = load i32, i32* %symbol.addr, align 4
  %shr1 = lshr i32 %4, 7
  %and = and i32 %shr1, 1
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %1, i16* %add.ptr, i32 %and)
  %5 = load i32, i32* %symbol.addr, align 4
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %symbol.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ult i32 %6, 65536
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetOptimumFast(%struct.CLzmaEnc* %p, i32* %backRes) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %backRes.addr = alloca i32*, align 8
  %numAvail = alloca i32, align 4
  %mainLen = alloca i32, align 4
  %mainDist = alloca i32, align 4
  %numPairs = alloca i32, align 4
  %repIndex = alloca i32, align 4
  %repLen = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %matches = alloca i32*, align 8
  %len = alloca i32, align 4
  %data2 = alloca i8*, align 8
  %newDistance = alloca i32, align 4
  %len181 = alloca i32, align 4
  %limit = alloca i32, align 4
  %data2182 = alloca i8*, align 8
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32* %backRes, i32** %backRes.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 16
  %1 = load i32, i32* %additionalOffset, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call = call i32 @ReadMatchDistances(%struct.CLzmaEnc* %2, i32* %numPairs)
  store i32 %call, i32* %mainLen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 8
  %4 = load i32, i32* %longestMatchLength, align 4
  store i32 %4, i32* %mainLen, align 4
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numPairs1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 9
  %6 = load i32, i32* %numPairs1, align 4
  store i32 %6, i32* %numPairs, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numAvail2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 10
  %8 = load i32, i32* %numAvail2, align 4
  store i32 %8, i32* %numAvail, align 4
  %9 = load i32*, i32** %backRes.addr, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %numAvail, align 4
  %cmp3 = icmp ult i32 %10, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load i32, i32* %numAvail, align 4
  %cmp6 = icmp ugt i32 %11, 273
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 273, i32* %numAvail, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 0
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 3
  %13 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos, align 8
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 1
  %15 = load i8*, i8** %matchFinderObj, align 8
  %call9 = call i8* %13(i8* %15)
  %add.ptr = getelementptr inbounds i8, i8* %call9, i64 -1
  store i8* %add.ptr, i8** %data, align 8
  store i32 0, i32* %repIndex, align 4
  store i32 0, i32* %repLen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.end.8
  %16 = load i32, i32* %i, align 4
  %cmp10 = icmp ult i32 %16, 4
  br i1 %cmp10, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %data, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 17
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  %add = add i32 %20, 1
  %idx.ext = zext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 %idx.neg
  store i8* %add.ptr11, i8** %data2, align 8
  %21 = load i8*, i8** %data, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %22 to i32
  %23 = load i8*, i8** %data2, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %24 to i32
  %cmp15 = icmp ne i32 %conv, %conv14
  br i1 %cmp15, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i8*, i8** %data, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %26 to i32
  %27 = load i8*, i8** %data2, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %cmp21 = icmp ne i32 %conv18, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc.45

if.end.24:                                        ; preds = %lor.lhs.false
  store i32 2, i32* %len, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.end.24
  %29 = load i32, i32* %len, align 4
  %30 = load i32, i32* %numAvail, align 4
  %cmp26 = icmp ult i32 %29, %30
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.25
  %31 = load i32, i32* %len, align 4
  %idxprom28 = zext i32 %31 to i64
  %32 = load i8*, i8** %data, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %32, i64 %idxprom28
  %33 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %33 to i32
  %34 = load i32, i32* %len, align 4
  %idxprom31 = zext i32 %34 to i64
  %35 = load i8*, i8** %data2, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 %idxprom31
  %36 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv30, %conv33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %37 = phi i1 [ false, %for.cond.25 ], [ %cmp34, %land.rhs ]
  br i1 %37, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %38 = load i32, i32* %len, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond.25

for.end:                                          ; preds = %land.end
  %39 = load i32, i32* %len, align 4
  %40 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %40, i32 0, i32 15
  %41 = load i32, i32* %numFastBytes, align 4
  %cmp37 = icmp uge i32 %39, %41
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4
  %43 = load i32*, i32** %backRes.addr, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %45 = load i32, i32* %len, align 4
  %sub = sub i32 %45, 1
  call void @MovePos(%struct.CLzmaEnc* %44, i32 %sub)
  %46 = load i32, i32* %len, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  %47 = load i32, i32* %len, align 4
  %48 = load i32, i32* %repLen, align 4
  %cmp41 = icmp ugt i32 %47, %48
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %49 = load i32, i32* %i, align 4
  store i32 %49, i32* %repIndex, align 4
  %50 = load i32, i32* %len, align 4
  store i32 %50, i32* %repLen, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44, %if.then.23
  %51 = load i32, i32* %i, align 4
  %inc46 = add i32 %51, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %52 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matches48 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %52, i32 0, i32 14
  %arraydecay = getelementptr inbounds [549 x i32], [549 x i32]* %matches48, i32 0, i32 0
  store i32* %arraydecay, i32** %matches, align 8
  %53 = load i32, i32* %mainLen, align 4
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes49 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %54, i32 0, i32 15
  %55 = load i32, i32* %numFastBytes49, align 4
  %cmp50 = icmp uge i32 %53, %55
  br i1 %cmp50, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %for.end.47
  %56 = load i32, i32* %numPairs, align 4
  %sub53 = sub i32 %56, 1
  %idxprom54 = zext i32 %sub53 to i64
  %57 = load i32*, i32** %matches, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %57, i64 %idxprom54
  %58 = load i32, i32* %arrayidx55, align 4
  %add56 = add i32 %58, 4
  %59 = load i32*, i32** %backRes.addr, align 8
  store i32 %add56, i32* %59, align 4
  %60 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %61 = load i32, i32* %mainLen, align 4
  %sub57 = sub i32 %61, 1
  call void @MovePos(%struct.CLzmaEnc* %60, i32 %sub57)
  %62 = load i32, i32* %mainLen, align 4
  store i32 %62, i32* %retval
  br label %return

if.end.58:                                        ; preds = %for.end.47
  store i32 0, i32* %mainDist, align 4
  %63 = load i32, i32* %mainLen, align 4
  %cmp59 = icmp uge i32 %63, 2
  br i1 %cmp59, label %if.then.61, label %if.end.95

if.then.61:                                       ; preds = %if.end.58
  %64 = load i32, i32* %numPairs, align 4
  %sub62 = sub i32 %64, 1
  %idxprom63 = zext i32 %sub62 to i64
  %65 = load i32*, i32** %matches, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %65, i64 %idxprom63
  %66 = load i32, i32* %arrayidx64, align 4
  store i32 %66, i32* %mainDist, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.81, %if.then.61
  %67 = load i32, i32* %numPairs, align 4
  %cmp65 = icmp ugt i32 %67, 2
  br i1 %cmp65, label %land.rhs.67, label %land.end.74

land.rhs.67:                                      ; preds = %while.cond
  %68 = load i32, i32* %mainLen, align 4
  %69 = load i32, i32* %numPairs, align 4
  %sub68 = sub i32 %69, 4
  %idxprom69 = zext i32 %sub68 to i64
  %70 = load i32*, i32** %matches, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %70, i64 %idxprom69
  %71 = load i32, i32* %arrayidx70, align 4
  %add71 = add i32 %71, 1
  %cmp72 = icmp eq i32 %68, %add71
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.67, %while.cond
  %72 = phi i1 [ false, %while.cond ], [ %cmp72, %land.rhs.67 ]
  br i1 %72, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.74
  %73 = load i32, i32* %mainDist, align 4
  %shr = lshr i32 %73, 7
  %74 = load i32, i32* %numPairs, align 4
  %sub75 = sub i32 %74, 3
  %idxprom76 = zext i32 %sub75 to i64
  %75 = load i32*, i32** %matches, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %75, i64 %idxprom76
  %76 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp ugt i32 %shr, %76
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %while.body
  br label %while.end

if.end.81:                                        ; preds = %while.body
  %77 = load i32, i32* %numPairs, align 4
  %sub82 = sub i32 %77, 2
  store i32 %sub82, i32* %numPairs, align 4
  %78 = load i32, i32* %numPairs, align 4
  %sub83 = sub i32 %78, 2
  %idxprom84 = zext i32 %sub83 to i64
  %79 = load i32*, i32** %matches, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %79, i64 %idxprom84
  %80 = load i32, i32* %arrayidx85, align 4
  store i32 %80, i32* %mainLen, align 4
  %81 = load i32, i32* %numPairs, align 4
  %sub86 = sub i32 %81, 1
  %idxprom87 = zext i32 %sub86 to i64
  %82 = load i32*, i32** %matches, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %82, i64 %idxprom87
  %83 = load i32, i32* %arrayidx88, align 4
  store i32 %83, i32* %mainDist, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.80, %land.end.74
  %84 = load i32, i32* %mainLen, align 4
  %cmp89 = icmp eq i32 %84, 2
  br i1 %cmp89, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %while.end
  %85 = load i32, i32* %mainDist, align 4
  %cmp91 = icmp uge i32 %85, 128
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true
  store i32 1, i32* %mainLen, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %land.lhs.true, %while.end
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.58
  %86 = load i32, i32* %repLen, align 4
  %cmp96 = icmp uge i32 %86, 2
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.118

land.lhs.true.98:                                 ; preds = %if.end.95
  %87 = load i32, i32* %repLen, align 4
  %add99 = add i32 %87, 1
  %88 = load i32, i32* %mainLen, align 4
  %cmp100 = icmp uge i32 %add99, %88
  br i1 %cmp100, label %if.then.116, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.98
  %89 = load i32, i32* %repLen, align 4
  %add103 = add i32 %89, 2
  %90 = load i32, i32* %mainLen, align 4
  %cmp104 = icmp uge i32 %add103, %90
  br i1 %cmp104, label %land.lhs.true.106, label %lor.lhs.false.109

land.lhs.true.106:                                ; preds = %lor.lhs.false.102
  %91 = load i32, i32* %mainDist, align 4
  %cmp107 = icmp uge i32 %91, 512
  br i1 %cmp107, label %if.then.116, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.106, %lor.lhs.false.102
  %92 = load i32, i32* %repLen, align 4
  %add110 = add i32 %92, 3
  %93 = load i32, i32* %mainLen, align 4
  %cmp111 = icmp uge i32 %add110, %93
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.118

land.lhs.true.113:                                ; preds = %lor.lhs.false.109
  %94 = load i32, i32* %mainDist, align 4
  %cmp114 = icmp uge i32 %94, 32768
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %land.lhs.true.113, %land.lhs.true.106, %land.lhs.true.98
  %95 = load i32, i32* %repIndex, align 4
  %96 = load i32*, i32** %backRes.addr, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %98 = load i32, i32* %repLen, align 4
  %sub117 = sub i32 %98, 1
  call void @MovePos(%struct.CLzmaEnc* %97, i32 %sub117)
  %99 = load i32, i32* %repLen, align 4
  store i32 %99, i32* %retval
  br label %return

if.end.118:                                       ; preds = %land.lhs.true.113, %lor.lhs.false.109, %if.end.95
  %100 = load i32, i32* %mainLen, align 4
  %cmp119 = icmp ult i32 %100, 2
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.118
  %101 = load i32, i32* %numAvail, align 4
  %cmp122 = icmp ule i32 %101, 2
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false.121, %if.end.118
  store i32 1, i32* %retval
  br label %return

if.end.125:                                       ; preds = %lor.lhs.false.121
  %102 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %103 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numPairs126 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %103, i32 0, i32 9
  %call127 = call i32 @ReadMatchDistances(%struct.CLzmaEnc* %102, i32* %numPairs126)
  %104 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength128 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %104, i32 0, i32 8
  store i32 %call127, i32* %longestMatchLength128, align 4
  %105 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength129 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %105, i32 0, i32 8
  %106 = load i32, i32* %longestMatchLength129, align 4
  %cmp130 = icmp uge i32 %106, 2
  br i1 %cmp130, label %if.then.132, label %if.end.171

if.then.132:                                      ; preds = %if.end.125
  %107 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numPairs133 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %107, i32 0, i32 9
  %108 = load i32, i32* %numPairs133, align 4
  %sub134 = sub i32 %108, 1
  %idxprom135 = zext i32 %sub134 to i64
  %109 = load i32*, i32** %matches, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %109, i64 %idxprom135
  %110 = load i32, i32* %arrayidx136, align 4
  store i32 %110, i32* %newDistance, align 4
  %111 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength137 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %111, i32 0, i32 8
  %112 = load i32, i32* %longestMatchLength137, align 4
  %113 = load i32, i32* %mainLen, align 4
  %cmp138 = icmp uge i32 %112, %113
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.143

land.lhs.true.140:                                ; preds = %if.then.132
  %114 = load i32, i32* %newDistance, align 4
  %115 = load i32, i32* %mainDist, align 4
  %cmp141 = icmp ult i32 %114, %115
  br i1 %cmp141, label %if.then.169, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %land.lhs.true.140, %if.then.132
  %116 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength144 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %116, i32 0, i32 8
  %117 = load i32, i32* %longestMatchLength144, align 4
  %118 = load i32, i32* %mainLen, align 4
  %add145 = add i32 %118, 1
  %cmp146 = icmp eq i32 %117, %add145
  br i1 %cmp146, label %land.lhs.true.148, label %lor.lhs.false.152

land.lhs.true.148:                                ; preds = %lor.lhs.false.143
  %119 = load i32, i32* %newDistance, align 4
  %shr149 = lshr i32 %119, 7
  %120 = load i32, i32* %mainDist, align 4
  %cmp150 = icmp ugt i32 %shr149, %120
  br i1 %cmp150, label %lor.lhs.false.152, label %if.then.169

lor.lhs.false.152:                                ; preds = %land.lhs.true.148, %lor.lhs.false.143
  %121 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength153 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %121, i32 0, i32 8
  %122 = load i32, i32* %longestMatchLength153, align 4
  %123 = load i32, i32* %mainLen, align 4
  %add154 = add i32 %123, 1
  %cmp155 = icmp ugt i32 %122, %add154
  br i1 %cmp155, label %if.then.169, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.152
  %124 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength158 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %124, i32 0, i32 8
  %125 = load i32, i32* %longestMatchLength158, align 4
  %add159 = add i32 %125, 1
  %126 = load i32, i32* %mainLen, align 4
  %cmp160 = icmp uge i32 %add159, %126
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.170

land.lhs.true.162:                                ; preds = %lor.lhs.false.157
  %127 = load i32, i32* %mainLen, align 4
  %cmp163 = icmp uge i32 %127, 3
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.170

land.lhs.true.165:                                ; preds = %land.lhs.true.162
  %128 = load i32, i32* %mainDist, align 4
  %shr166 = lshr i32 %128, 7
  %129 = load i32, i32* %newDistance, align 4
  %cmp167 = icmp ugt i32 %shr166, %129
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.165, %lor.lhs.false.152, %land.lhs.true.148, %land.lhs.true.140
  store i32 1, i32* %retval
  br label %return

if.end.170:                                       ; preds = %land.lhs.true.165, %land.lhs.true.162, %lor.lhs.false.157
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.125
  %130 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder172 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %130, i32 0, i32 0
  %GetPointerToCurrentPos173 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder172, i32 0, i32 3
  %131 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos173, align 8
  %132 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj174 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %132, i32 0, i32 1
  %133 = load i8*, i8** %matchFinderObj174, align 8
  %call175 = call i8* %131(i8* %133)
  %add.ptr176 = getelementptr inbounds i8, i8* %call175, i64 -1
  store i8* %add.ptr176, i8** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.227, %if.end.171
  %134 = load i32, i32* %i, align 4
  %cmp178 = icmp ult i32 %134, 4
  br i1 %cmp178, label %for.body.180, label %for.end.229

for.body.180:                                     ; preds = %for.cond.177
  %135 = load i8*, i8** %data, align 8
  %136 = load i32, i32* %i, align 4
  %idxprom183 = zext i32 %136 to i64
  %137 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps184 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %137, i32 0, i32 17
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %reps184, i32 0, i64 %idxprom183
  %138 = load i32, i32* %arrayidx185, align 4
  %add186 = add i32 %138, 1
  %idx.ext187 = zext i32 %add186 to i64
  %idx.neg188 = sub i64 0, %idx.ext187
  %add.ptr189 = getelementptr inbounds i8, i8* %135, i64 %idx.neg188
  store i8* %add.ptr189, i8** %data2182, align 8
  %139 = load i8*, i8** %data, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %140 to i32
  %141 = load i8*, i8** %data2182, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %141, i64 0
  %142 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %142 to i32
  %cmp194 = icmp ne i32 %conv191, %conv193
  br i1 %cmp194, label %if.then.203, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %for.body.180
  %143 = load i8*, i8** %data, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %144 to i32
  %145 = load i8*, i8** %data2182, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %146 to i32
  %cmp201 = icmp ne i32 %conv198, %conv200
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %lor.lhs.false.196, %for.body.180
  br label %for.inc.227

if.end.204:                                       ; preds = %lor.lhs.false.196
  %147 = load i32, i32* %mainLen, align 4
  %sub205 = sub i32 %147, 1
  store i32 %sub205, i32* %limit, align 4
  store i32 2, i32* %len181, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.220, %if.end.204
  %148 = load i32, i32* %len181, align 4
  %149 = load i32, i32* %limit, align 4
  %cmp207 = icmp ult i32 %148, %149
  br i1 %cmp207, label %land.rhs.209, label %land.end.218

land.rhs.209:                                     ; preds = %for.cond.206
  %150 = load i32, i32* %len181, align 4
  %idxprom210 = zext i32 %150 to i64
  %151 = load i8*, i8** %data, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %151, i64 %idxprom210
  %152 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %152 to i32
  %153 = load i32, i32* %len181, align 4
  %idxprom213 = zext i32 %153 to i64
  %154 = load i8*, i8** %data2182, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %154, i64 %idxprom213
  %155 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %155 to i32
  %cmp216 = icmp eq i32 %conv212, %conv215
  br label %land.end.218

land.end.218:                                     ; preds = %land.rhs.209, %for.cond.206
  %156 = phi i1 [ false, %for.cond.206 ], [ %cmp216, %land.rhs.209 ]
  br i1 %156, label %for.body.219, label %for.end.222

for.body.219:                                     ; preds = %land.end.218
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.219
  %157 = load i32, i32* %len181, align 4
  %inc221 = add i32 %157, 1
  store i32 %inc221, i32* %len181, align 4
  br label %for.cond.206

for.end.222:                                      ; preds = %land.end.218
  %158 = load i32, i32* %len181, align 4
  %159 = load i32, i32* %limit, align 4
  %cmp223 = icmp uge i32 %158, %159
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %for.end.222
  store i32 1, i32* %retval
  br label %return

if.end.226:                                       ; preds = %for.end.222
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226, %if.then.203
  %160 = load i32, i32* %i, align 4
  %inc228 = add i32 %160, 1
  store i32 %inc228, i32* %i, align 4
  br label %for.cond.177

for.end.229:                                      ; preds = %for.cond.177
  %161 = load i32, i32* %mainDist, align 4
  %add230 = add i32 %161, 4
  %162 = load i32*, i32** %backRes.addr, align 8
  store i32 %add230, i32* %162, align 4
  %163 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %164 = load i32, i32* %mainLen, align 4
  %sub231 = sub i32 %164, 2
  call void @MovePos(%struct.CLzmaEnc* %163, i32 %sub231)
  %165 = load i32, i32* %mainLen, align 4
  store i32 %165, i32* %retval
  br label %return

return:                                           ; preds = %for.end.229, %if.then.225, %if.then.169, %if.then.124, %if.then.116, %if.then.52, %if.then.39, %if.then.4
  %166 = load i32, i32* %retval
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define internal i32 @GetOptimum(%struct.CLzmaEnc* %p, i32 %position, i32* %backRes) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %position.addr = alloca i32, align 4
  %backRes.addr = alloca i32*, align 8
  %numAvail = alloca i32, align 4
  %mainLen = alloca i32, align 4
  %numPairs = alloca i32, align 4
  %repMaxIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %posState = alloca i32, align 4
  %lenEnd = alloca i32, align 4
  %len = alloca i32, align 4
  %cur = alloca i32, align 4
  %matchPrice = alloca i32, align 4
  %repMatchPrice = alloca i32, align 4
  %normalMatchPrice = alloca i32, align 4
  %reps = alloca [4 x i32], align 16
  %repLens = alloca [4 x i32], align 16
  %matches = alloca i32*, align 8
  %data = alloca i8*, align 8
  %curByte = alloca i8, align 1
  %matchByte = alloca i8, align 1
  %opt = alloca %struct.COptimal*, align 8
  %lenRes = alloca i32, align 4
  %lenTest = alloca i32, align 4
  %data2 = alloca i8*, align 8
  %lenRes72 = alloca i32, align 4
  %probs = alloca i16*, align 8
  %shortRepPrice = alloca i32, align 4
  %repLen = alloca i32, align 4
  %price237 = alloca i32, align 4
  %curAndLenPrice = alloca i32, align 4
  %opt252 = alloca %struct.COptimal*, align 8
  %offs = alloca i32, align 4
  %opt301 = alloca %struct.COptimal*, align 8
  %distance = alloca i32, align 4
  %curAndLenPrice305 = alloca i32, align 4
  %lenToPosState = alloca i32, align 4
  %slot = alloca i32, align 4
  %i329 = alloca i32, align 4
  %numAvailFull = alloca i32, align 4
  %newLen = alloca i32, align 4
  %numPairs380 = alloca i32, align 4
  %posPrev381 = alloca i32, align 4
  %state382 = alloca i32, align 4
  %posState383 = alloca i32, align 4
  %startLen = alloca i32, align 4
  %curPrice = alloca i32, align 4
  %curAnd1Price = alloca i32, align 4
  %matchPrice384 = alloca i32, align 4
  %repMatchPrice385 = alloca i32, align 4
  %nextIsChar = alloca i32, align 4
  %curByte386 = alloca i8, align 1
  %matchByte387 = alloca i8, align 1
  %data388 = alloca i8*, align 8
  %curOpt = alloca %struct.COptimal*, align 8
  %nextOpt = alloca %struct.COptimal*, align 8
  %pos = alloca i32, align 4
  %prevOpt = alloca %struct.COptimal*, align 8
  %i484 = alloca i32, align 4
  %i515 = alloca i32, align 4
  %probs570 = alloca i16*, align 8
  %shortRepPrice649 = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp687 = alloca i32, align 4
  %lenTest2 = alloca i32, align 4
  %data2688 = alloca i8*, align 8
  %limit = alloca i32, align 4
  %state2 = alloca i32, align 4
  %posStateNext = alloca i32, align 4
  %nextRepMatchPrice = alloca i32, align 4
  %curAndLenPrice748 = alloca i32, align 4
  %opt749 = alloca %struct.COptimal*, align 8
  %offset = alloca i32, align 4
  %repIndex = alloca i32, align 4
  %lenTest784 = alloca i32, align 4
  %lenTestTemp = alloca i32, align 4
  %price785 = alloca i32, align 4
  %data2786 = alloca i8*, align 8
  %curAndLenPrice839 = alloca i32, align 4
  %opt848 = alloca %struct.COptimal*, align 8
  %lenTest2872 = alloca i32, align 4
  %limit874 = alloca i32, align 4
  %nextRepMatchPrice877 = alloca i32, align 4
  %state2904 = alloca i32, align 4
  %posStateNext907 = alloca i32, align 4
  %curAndLenCharPrice = alloca i32, align 4
  %curAndLenPrice985 = alloca i32, align 4
  %opt986 = alloca %struct.COptimal*, align 8
  %offset987 = alloca i32, align 4
  %normalMatchPrice1043 = alloca i32, align 4
  %offs1053 = alloca i32, align 4
  %curBack = alloca i32, align 4
  %posSlot = alloca i32, align 4
  %lenTest1054 = alloca i32, align 4
  %i1077 = alloca i32, align 4
  %curAndLenPrice1091 = alloca i32, align 4
  %lenToPosState1100 = alloca i32, align 4
  %opt1108 = alloca %struct.COptimal*, align 8
  %data21150 = alloca i8*, align 8
  %lenTest21155 = alloca i32, align 4
  %limit1157 = alloca i32, align 4
  %nextRepMatchPrice1160 = alloca i32, align 4
  %state21187 = alloca i32, align 4
  %posStateNext1190 = alloca i32, align 4
  %curAndLenCharPrice1194 = alloca i32, align 4
  %offset1260 = alloca i32, align 4
  %curAndLenPrice1264 = alloca i32, align 4
  %opt1265 = alloca %struct.COptimal*, align 8
  %i1308 = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32* %backRes, i32** %backRes.addr, align 8
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumEndIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 6
  %1 = load i32, i32* %optimumEndIndex, align 4
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 7
  %3 = load i32, i32* %optimumCurrentIndex, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 7
  %5 = load i32, i32* %optimumCurrentIndex1, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt2, i32 0, i64 %idxprom
  store %struct.COptimal* %arrayidx, %struct.COptimal** %opt, align 8
  %7 = load %struct.COptimal*, %struct.COptimal** %opt, align 8
  %posPrev = getelementptr inbounds %struct.COptimal, %struct.COptimal* %7, i32 0, i32 6
  %8 = load i32, i32* %posPrev, align 4
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 7
  %10 = load i32, i32* %optimumCurrentIndex3, align 4
  %sub = sub i32 %8, %10
  store i32 %sub, i32* %lenRes, align 4
  %11 = load %struct.COptimal*, %struct.COptimal** %opt, align 8
  %backPrev = getelementptr inbounds %struct.COptimal, %struct.COptimal* %11, i32 0, i32 7
  %12 = load i32, i32* %backPrev, align 4
  %13 = load i32*, i32** %backRes.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.COptimal*, %struct.COptimal** %opt, align 8
  %posPrev4 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %14, i32 0, i32 6
  %15 = load i32, i32* %posPrev4, align 4
  %16 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex5 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %16, i32 0, i32 7
  store i32 %15, i32* %optimumCurrentIndex5, align 4
  %17 = load i32, i32* %lenRes, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumEndIndex6 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %18, i32 0, i32 6
  store i32 0, i32* %optimumEndIndex6, align 4
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex7 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 7
  store i32 0, i32* %optimumCurrentIndex7, align 4
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 16
  %21 = load i32, i32* %additionalOffset, align 4
  %cmp8 = icmp eq i32 %21, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call = call i32 @ReadMatchDistances(%struct.CLzmaEnc* %22, i32* %numPairs)
  store i32 %call, i32* %mainLen, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %23 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %23, i32 0, i32 8
  %24 = load i32, i32* %longestMatchLength, align 4
  store i32 %24, i32* %mainLen, align 4
  %25 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numPairs10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %25, i32 0, i32 9
  %26 = load i32, i32* %numPairs10, align 4
  store i32 %26, i32* %numPairs, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %27 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numAvail12 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %27, i32 0, i32 10
  %28 = load i32, i32* %numAvail12, align 4
  store i32 %28, i32* %numAvail, align 4
  %29 = load i32, i32* %numAvail, align 4
  %cmp13 = icmp ult i32 %29, 2
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %30 = load i32*, i32** %backRes.addr, align 8
  store i32 -1, i32* %30, align 4
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %31 = load i32, i32* %numAvail, align 4
  %cmp16 = icmp ugt i32 %31, 273
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 273, i32* %numAvail, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %32 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %32, i32 0, i32 0
  %GetPointerToCurrentPos = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 3
  %33 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos, align 8
  %34 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %34, i32 0, i32 1
  %35 = load i8*, i8** %matchFinderObj, align 8
  %call19 = call i8* %33(i8* %35)
  %add.ptr = getelementptr inbounds i8, i8* %call19, i64 -1
  store i8* %add.ptr, i8** %data, align 8
  store i32 0, i32* %repMaxIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %if.end.18
  %36 = load i32, i32* %i, align 4
  %cmp20 = icmp ult i32 %36, 4
  br i1 %cmp20, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %37 to i64
  %38 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %reps22 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %38, i32 0, i32 17
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %reps22, i32 0, i64 %idxprom21
  %39 = load i32, i32* %arrayidx23, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %40 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom24
  store i32 %39, i32* %arrayidx25, align 4
  %41 = load i8*, i8** %data, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %42 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom26
  %43 = load i32, i32* %arrayidx27, align 4
  %add = add i32 %43, 1
  %idx.ext = zext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr28 = getelementptr inbounds i8, i8* %41, i64 %idx.neg
  store i8* %add.ptr28, i8** %data2, align 8
  %44 = load i8*, i8** %data, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %45 to i32
  %46 = load i8*, i8** %data2, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %47 to i32
  %cmp32 = icmp ne i32 %conv, %conv31
  br i1 %cmp32, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %48 = load i8*, i8** %data, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %49 to i32
  %50 = load i8*, i8** %data2, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %51 to i32
  %cmp38 = icmp ne i32 %conv35, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %lor.lhs.false, %for.body
  %52 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom41
  store i32 0, i32* %arrayidx42, align 4
  br label %for.inc.64

if.end.43:                                        ; preds = %lor.lhs.false
  store i32 2, i32* %lenTest, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.end.43
  %53 = load i32, i32* %lenTest, align 4
  %54 = load i32, i32* %numAvail, align 4
  %cmp45 = icmp ult i32 %53, %54
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.44
  %55 = load i32, i32* %lenTest, align 4
  %idxprom47 = zext i32 %55 to i64
  %56 = load i8*, i8** %data, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %56, i64 %idxprom47
  %57 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %57 to i32
  %58 = load i32, i32* %lenTest, align 4
  %idxprom50 = zext i32 %58 to i64
  %59 = load i8*, i8** %data2, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %59, i64 %idxprom50
  %60 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %60 to i32
  %cmp53 = icmp eq i32 %conv49, %conv52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.44
  %61 = phi i1 [ false, %for.cond.44 ], [ %cmp53, %land.rhs ]
  br i1 %61, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.55
  %62 = load i32, i32* %lenTest, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %lenTest, align 4
  br label %for.cond.44

for.end:                                          ; preds = %land.end
  %63 = load i32, i32* %lenTest, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %64 to i64
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom56
  store i32 %63, i32* %arrayidx57, align 4
  %65 = load i32, i32* %lenTest, align 4
  %66 = load i32, i32* %repMaxIndex, align 4
  %idxprom58 = zext i32 %66 to i64
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom58
  %67 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp ugt i32 %65, %67
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.end
  %68 = load i32, i32* %i, align 4
  store i32 %68, i32* %repMaxIndex, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.end
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63, %if.then.40
  %69 = load i32, i32* %i, align 4
  %inc65 = add i32 %69, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %70 = load i32, i32* %repMaxIndex, align 4
  %idxprom67 = zext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom67
  %71 = load i32, i32* %arrayidx68, align 4
  %72 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %72, i32 0, i32 15
  %73 = load i32, i32* %numFastBytes, align 4
  %cmp69 = icmp uge i32 %71, %73
  br i1 %cmp69, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %for.end.66
  %74 = load i32, i32* %repMaxIndex, align 4
  %75 = load i32*, i32** %backRes.addr, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %repMaxIndex, align 4
  %idxprom73 = zext i32 %76 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom73
  %77 = load i32, i32* %arrayidx74, align 4
  store i32 %77, i32* %lenRes72, align 4
  %78 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %79 = load i32, i32* %lenRes72, align 4
  %sub75 = sub i32 %79, 1
  call void @MovePos(%struct.CLzmaEnc* %78, i32 %sub75)
  %80 = load i32, i32* %lenRes72, align 4
  store i32 %80, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end.66
  %81 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matches77 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %81, i32 0, i32 14
  %arraydecay = getelementptr inbounds [549 x i32], [549 x i32]* %matches77, i32 0, i32 0
  store i32* %arraydecay, i32** %matches, align 8
  %82 = load i32, i32* %mainLen, align 4
  %83 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes78 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %83, i32 0, i32 15
  %84 = load i32, i32* %numFastBytes78, align 4
  %cmp79 = icmp uge i32 %82, %84
  br i1 %cmp79, label %if.then.81, label %if.end.87

if.then.81:                                       ; preds = %if.end.76
  %85 = load i32, i32* %numPairs, align 4
  %sub82 = sub i32 %85, 1
  %idxprom83 = zext i32 %sub82 to i64
  %86 = load i32*, i32** %matches, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %86, i64 %idxprom83
  %87 = load i32, i32* %arrayidx84, align 4
  %add85 = add i32 %87, 4
  %88 = load i32*, i32** %backRes.addr, align 8
  store i32 %add85, i32* %88, align 4
  %89 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %90 = load i32, i32* %mainLen, align 4
  %sub86 = sub i32 %90, 1
  call void @MovePos(%struct.CLzmaEnc* %89, i32 %sub86)
  %91 = load i32, i32* %mainLen, align 4
  store i32 %91, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end.76
  %92 = load i8*, i8** %data, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %curByte, align 1
  %94 = load i8*, i8** %data, align 8
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %95 = load i32, i32* %arrayidx88, align 4
  %add89 = add i32 %95, 1
  %idx.ext90 = zext i32 %add89 to i64
  %idx.neg91 = sub i64 0, %idx.ext90
  %add.ptr92 = getelementptr inbounds i8, i8* %94, i64 %idx.neg91
  %96 = load i8, i8* %add.ptr92, align 1
  store i8 %96, i8* %matchByte, align 1
  %97 = load i32, i32* %mainLen, align 4
  %cmp93 = icmp ult i32 %97, 2
  br i1 %cmp93, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %if.end.87
  %98 = load i8, i8* %curByte, align 1
  %conv95 = zext i8 %98 to i32
  %99 = load i8, i8* %matchByte, align 1
  %conv96 = zext i8 %99 to i32
  %cmp97 = icmp ne i32 %conv95, %conv96
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.105

land.lhs.true.99:                                 ; preds = %land.lhs.true
  %100 = load i32, i32* %repMaxIndex, align 4
  %idxprom100 = zext i32 %100 to i64
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom100
  %101 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ult i32 %101, 2
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.99
  %102 = load i32*, i32** %backRes.addr, align 8
  store i32 -1, i32* %102, align 4
  store i32 1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %land.lhs.true.99, %land.lhs.true, %if.end.87
  %103 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %103, i32 0, i32 18
  %104 = load i32, i32* %state, align 4
  %105 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt106 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %105, i32 0, i32 11
  %arrayidx107 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt106, i32 0, i64 0
  %state108 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx107, i32 0, i32 1
  store i32 %104, i32* %state108, align 4
  %106 = load i32, i32* %position.addr, align 4
  %107 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %107, i32 0, i32 28
  %108 = load i32, i32* %pbMask, align 4
  %and = and i32 %106, %108
  store i32 %and, i32* %posState, align 4
  %109 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %109, i32 0, i32 29
  %110 = load i16*, i16** %litProbs, align 8
  %111 = load i32, i32* %position.addr, align 4
  %112 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %112, i32 0, i32 27
  %113 = load i32, i32* %lpMask, align 4
  %and109 = and i32 %111, %113
  %114 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %114, i32 0, i32 24
  %115 = load i32, i32* %lc, align 4
  %shl = shl i32 %and109, %115
  %116 = load i8*, i8** %data, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %116, i64 -1
  %117 = load i8, i8* %add.ptr110, align 1
  %conv111 = zext i8 %117 to i32
  %118 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc112 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %118, i32 0, i32 24
  %119 = load i32, i32* %lc112, align 4
  %sub113 = sub i32 8, %119
  %shr = ashr i32 %conv111, %sub113
  %add114 = add i32 %shl, %shr
  %mul = mul i32 %add114, 768
  %idx.ext115 = zext i32 %mul to i64
  %add.ptr116 = getelementptr inbounds i16, i16* %110, i64 %idx.ext115
  store i16* %add.ptr116, i16** %probs, align 8
  %120 = load i32, i32* %posState, align 4
  %idxprom117 = zext i32 %120 to i64
  %121 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state118 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %121, i32 0, i32 18
  %122 = load i32, i32* %state118, align 4
  %idxprom119 = zext i32 %122 to i64
  %123 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %123, i32 0, i32 30
  %arrayidx120 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx120, i32 0, i64 %idxprom117
  %124 = load i16, i16* %arrayidx121, align 2
  %conv122 = zext i16 %124 to i32
  %shr123 = ashr i32 %conv122, 4
  %idxprom124 = sext i32 %shr123 to i64
  %125 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %125, i32 0, i32 13
  %arrayidx125 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i64 %idxprom124
  %126 = load i32, i32* %arrayidx125, align 4
  %127 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state126 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %127, i32 0, i32 18
  %128 = load i32, i32* %state126, align 4
  %cmp127 = icmp ult i32 %128, 7
  br i1 %cmp127, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.105
  %129 = load i16*, i16** %probs, align 8
  %130 = load i8, i8* %curByte, align 1
  %conv129 = zext i8 %130 to i32
  %131 = load i8, i8* %matchByte, align 1
  %conv130 = zext i8 %131 to i32
  %132 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices131 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %132, i32 0, i32 13
  %arraydecay132 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices131, i32 0, i32 0
  %call133 = call i32 @LitEnc_GetPriceMatched(i16* %129, i32 %conv129, i32 %conv130, i32* %arraydecay132)
  br label %cond.end

cond.false:                                       ; preds = %if.end.105
  %133 = load i16*, i16** %probs, align 8
  %134 = load i8, i8* %curByte, align 1
  %conv134 = zext i8 %134 to i32
  %135 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices135 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %135, i32 0, i32 13
  %arraydecay136 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices135, i32 0, i32 0
  %call137 = call i32 @LitEnc_GetPrice(i16* %133, i32 %conv134, i32* %arraydecay136)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call133, %cond.true ], [ %call137, %cond.false ]
  %add138 = add i32 %126, %cond
  %136 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt139 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %136, i32 0, i32 11
  %arrayidx140 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt139, i32 0, i64 1
  %price = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx140, i32 0, i32 0
  store i32 %add138, i32* %price, align 4
  %137 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt141 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %137, i32 0, i32 11
  %arrayidx142 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt141, i32 0, i64 1
  %backPrev143 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx142, i32 0, i32 7
  store i32 -1, i32* %backPrev143, align 4
  %138 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt144 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %138, i32 0, i32 11
  %arrayidx145 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt144, i32 0, i64 1
  %prev1IsChar = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx145, i32 0, i32 2
  store i32 0, i32* %prev1IsChar, align 4
  %139 = load i32, i32* %posState, align 4
  %idxprom146 = zext i32 %139 to i64
  %140 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state147 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %140, i32 0, i32 18
  %141 = load i32, i32* %state147, align 4
  %idxprom148 = zext i32 %141 to i64
  %142 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch149 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %142, i32 0, i32 30
  %arrayidx150 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch149, i32 0, i64 %idxprom148
  %arrayidx151 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx150, i32 0, i64 %idxprom146
  %143 = load i16, i16* %arrayidx151, align 2
  %conv152 = zext i16 %143 to i32
  %xor = xor i32 %conv152, 2047
  %shr153 = ashr i32 %xor, 4
  %idxprom154 = sext i32 %shr153 to i64
  %144 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices155 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %144, i32 0, i32 13
  %arrayidx156 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices155, i32 0, i64 %idxprom154
  %145 = load i32, i32* %arrayidx156, align 4
  store i32 %145, i32* %matchPrice, align 4
  %146 = load i32, i32* %matchPrice, align 4
  %147 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state157 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %147, i32 0, i32 18
  %148 = load i32, i32* %state157, align 4
  %idxprom158 = zext i32 %148 to i64
  %149 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %149, i32 0, i32 31
  %arrayidx159 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep, i32 0, i64 %idxprom158
  %150 = load i16, i16* %arrayidx159, align 2
  %conv160 = zext i16 %150 to i32
  %xor161 = xor i32 %conv160, 2047
  %shr162 = ashr i32 %xor161, 4
  %idxprom163 = sext i32 %shr162 to i64
  %151 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices164 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %151, i32 0, i32 13
  %arrayidx165 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices164, i32 0, i64 %idxprom163
  %152 = load i32, i32* %arrayidx165, align 4
  %add166 = add i32 %146, %152
  store i32 %add166, i32* %repMatchPrice, align 4
  %153 = load i8, i8* %matchByte, align 1
  %conv167 = zext i8 %153 to i32
  %154 = load i8, i8* %curByte, align 1
  %conv168 = zext i8 %154 to i32
  %cmp169 = icmp eq i32 %conv167, %conv168
  br i1 %cmp169, label %if.then.171, label %if.end.191

if.then.171:                                      ; preds = %cond.end
  %155 = load i32, i32* %repMatchPrice, align 4
  %156 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %157 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state172 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %157, i32 0, i32 18
  %158 = load i32, i32* %state172, align 4
  %159 = load i32, i32* %posState, align 4
  %call173 = call i32 @GetRepLen1Price(%struct.CLzmaEnc* %156, i32 %158, i32 %159)
  %add174 = add i32 %155, %call173
  store i32 %add174, i32* %shortRepPrice, align 4
  %160 = load i32, i32* %shortRepPrice, align 4
  %161 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt175 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %161, i32 0, i32 11
  %arrayidx176 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt175, i32 0, i64 1
  %price177 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx176, i32 0, i32 0
  %162 = load i32, i32* %price177, align 4
  %cmp178 = icmp ult i32 %160, %162
  br i1 %cmp178, label %if.then.180, label %if.end.190

if.then.180:                                      ; preds = %if.then.171
  %163 = load i32, i32* %shortRepPrice, align 4
  %164 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt181 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %164, i32 0, i32 11
  %arrayidx182 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt181, i32 0, i64 1
  %price183 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx182, i32 0, i32 0
  store i32 %163, i32* %price183, align 4
  %165 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt184 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %165, i32 0, i32 11
  %arrayidx185 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt184, i32 0, i64 1
  %backPrev186 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx185, i32 0, i32 7
  store i32 0, i32* %backPrev186, align 4
  %166 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt187 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %166, i32 0, i32 11
  %arrayidx188 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt187, i32 0, i64 1
  %prev1IsChar189 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx188, i32 0, i32 2
  store i32 0, i32* %prev1IsChar189, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.180, %if.then.171
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %cond.end
  %167 = load i32, i32* %mainLen, align 4
  %168 = load i32, i32* %repMaxIndex, align 4
  %idxprom192 = zext i32 %168 to i64
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom192
  %169 = load i32, i32* %arrayidx193, align 4
  %cmp194 = icmp uge i32 %167, %169
  br i1 %cmp194, label %cond.true.196, label %cond.false.197

cond.true.196:                                    ; preds = %if.end.191
  %170 = load i32, i32* %mainLen, align 4
  br label %cond.end.200

cond.false.197:                                   ; preds = %if.end.191
  %171 = load i32, i32* %repMaxIndex, align 4
  %idxprom198 = zext i32 %171 to i64
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom198
  %172 = load i32, i32* %arrayidx199, align 4
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.197, %cond.true.196
  %cond201 = phi i32 [ %170, %cond.true.196 ], [ %172, %cond.false.197 ]
  store i32 %cond201, i32* %lenEnd, align 4
  %173 = load i32, i32* %lenEnd, align 4
  %cmp202 = icmp ult i32 %173, 2
  br i1 %cmp202, label %if.then.204, label %if.end.208

if.then.204:                                      ; preds = %cond.end.200
  %174 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt205 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %174, i32 0, i32 11
  %arrayidx206 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt205, i32 0, i64 1
  %backPrev207 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx206, i32 0, i32 7
  %175 = load i32, i32* %backPrev207, align 4
  %176 = load i32*, i32** %backRes.addr, align 8
  store i32 %175, i32* %176, align 4
  store i32 1, i32* %retval
  br label %return

if.end.208:                                       ; preds = %cond.end.200
  %177 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt209 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %177, i32 0, i32 11
  %arrayidx210 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt209, i32 0, i64 1
  %posPrev211 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx210, i32 0, i32 6
  store i32 0, i32* %posPrev211, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.222, %if.end.208
  %178 = load i32, i32* %i, align 4
  %cmp213 = icmp ult i32 %178, 4
  br i1 %cmp213, label %for.body.215, label %for.end.224

for.body.215:                                     ; preds = %for.cond.212
  %179 = load i32, i32* %i, align 4
  %idxprom216 = zext i32 %179 to i64
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom216
  %180 = load i32, i32* %arrayidx217, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom218 = zext i32 %181 to i64
  %182 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt219 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %182, i32 0, i32 11
  %arrayidx220 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt219, i32 0, i64 0
  %backs = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx220, i32 0, i32 8
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %backs, i32 0, i64 %idxprom218
  store i32 %180, i32* %arrayidx221, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.215
  %183 = load i32, i32* %i, align 4
  %inc223 = add i32 %183, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond.212

for.end.224:                                      ; preds = %for.cond.212
  %184 = load i32, i32* %lenEnd, align 4
  store i32 %184, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.224
  %185 = load i32, i32* %len, align 4
  %dec = add i32 %185, -1
  store i32 %dec, i32* %len, align 4
  %idxprom225 = zext i32 %185 to i64
  %186 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt226 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %186, i32 0, i32 11
  %arrayidx227 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt226, i32 0, i64 %idxprom225
  %price228 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx227, i32 0, i32 0
  store i32 1073741824, i32* %price228, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %187 = load i32, i32* %len, align 4
  %cmp229 = icmp uge i32 %187, 2
  br i1 %cmp229, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.270, %do.end
  %188 = load i32, i32* %i, align 4
  %cmp232 = icmp ult i32 %188, 4
  br i1 %cmp232, label %for.body.234, label %for.end.272

for.body.234:                                     ; preds = %for.cond.231
  %189 = load i32, i32* %i, align 4
  %idxprom235 = zext i32 %189 to i64
  %arrayidx236 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 %idxprom235
  %190 = load i32, i32* %arrayidx236, align 4
  store i32 %190, i32* %repLen, align 4
  %191 = load i32, i32* %repLen, align 4
  %cmp238 = icmp ult i32 %191, 2
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %for.body.234
  br label %for.inc.270

if.end.241:                                       ; preds = %for.body.234
  %192 = load i32, i32* %repMatchPrice, align 4
  %193 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %194 = load i32, i32* %i, align 4
  %195 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state242 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %195, i32 0, i32 18
  %196 = load i32, i32* %state242, align 4
  %197 = load i32, i32* %posState, align 4
  %call243 = call i32 @GetPureRepPrice(%struct.CLzmaEnc* %193, i32 %194, i32 %196, i32 %197)
  %add244 = add i32 %192, %call243
  store i32 %add244, i32* %price237, align 4
  br label %do.body.245

do.body.245:                                      ; preds = %do.cond.265, %if.end.241
  %198 = load i32, i32* %price237, align 4
  %199 = load i32, i32* %repLen, align 4
  %sub246 = sub i32 %199, 2
  %idxprom247 = zext i32 %sub246 to i64
  %200 = load i32, i32* %posState, align 4
  %idxprom248 = zext i32 %200 to i64
  %201 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %201, i32 0, i32 40
  %prices = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices, i32 0, i64 %idxprom248
  %arrayidx250 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx249, i32 0, i64 %idxprom247
  %202 = load i32, i32* %arrayidx250, align 4
  %add251 = add i32 %198, %202
  store i32 %add251, i32* %curAndLenPrice, align 4
  %203 = load i32, i32* %repLen, align 4
  %idxprom253 = zext i32 %203 to i64
  %204 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt254 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %204, i32 0, i32 11
  %arrayidx255 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt254, i32 0, i64 %idxprom253
  store %struct.COptimal* %arrayidx255, %struct.COptimal** %opt252, align 8
  %205 = load i32, i32* %curAndLenPrice, align 4
  %206 = load %struct.COptimal*, %struct.COptimal** %opt252, align 8
  %price256 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %206, i32 0, i32 0
  %207 = load i32, i32* %price256, align 4
  %cmp257 = icmp ult i32 %205, %207
  br i1 %cmp257, label %if.then.259, label %if.end.264

if.then.259:                                      ; preds = %do.body.245
  %208 = load i32, i32* %curAndLenPrice, align 4
  %209 = load %struct.COptimal*, %struct.COptimal** %opt252, align 8
  %price260 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %209, i32 0, i32 0
  store i32 %208, i32* %price260, align 4
  %210 = load %struct.COptimal*, %struct.COptimal** %opt252, align 8
  %posPrev261 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %210, i32 0, i32 6
  store i32 0, i32* %posPrev261, align 4
  %211 = load i32, i32* %i, align 4
  %212 = load %struct.COptimal*, %struct.COptimal** %opt252, align 8
  %backPrev262 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %212, i32 0, i32 7
  store i32 %211, i32* %backPrev262, align 4
  %213 = load %struct.COptimal*, %struct.COptimal** %opt252, align 8
  %prev1IsChar263 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %213, i32 0, i32 2
  store i32 0, i32* %prev1IsChar263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.259, %do.body.245
  br label %do.cond.265

do.cond.265:                                      ; preds = %if.end.264
  %214 = load i32, i32* %repLen, align 4
  %dec266 = add i32 %214, -1
  store i32 %dec266, i32* %repLen, align 4
  %cmp267 = icmp uge i32 %dec266, 2
  br i1 %cmp267, label %do.body.245, label %do.end.269

do.end.269:                                       ; preds = %do.cond.265
  br label %for.inc.270

for.inc.270:                                      ; preds = %do.end.269, %if.then.240
  %215 = load i32, i32* %i, align 4
  %inc271 = add i32 %215, 1
  store i32 %inc271, i32* %i, align 4
  br label %for.cond.231

for.end.272:                                      ; preds = %for.cond.231
  %216 = load i32, i32* %matchPrice, align 4
  %217 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state273 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %217, i32 0, i32 18
  %218 = load i32, i32* %state273, align 4
  %idxprom274 = zext i32 %218 to i64
  %219 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep275 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %219, i32 0, i32 31
  %arrayidx276 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep275, i32 0, i64 %idxprom274
  %220 = load i16, i16* %arrayidx276, align 2
  %conv277 = zext i16 %220 to i32
  %shr278 = ashr i32 %conv277, 4
  %idxprom279 = sext i32 %shr278 to i64
  %221 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices280 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %221, i32 0, i32 13
  %arrayidx281 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices280, i32 0, i64 %idxprom279
  %222 = load i32, i32* %arrayidx281, align 4
  %add282 = add i32 %216, %222
  store i32 %add282, i32* %normalMatchPrice, align 4
  %arrayidx283 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 0
  %223 = load i32, i32* %arrayidx283, align 4
  %cmp284 = icmp uge i32 %223, 2
  br i1 %cmp284, label %cond.true.286, label %cond.false.289

cond.true.286:                                    ; preds = %for.end.272
  %arrayidx287 = getelementptr inbounds [4 x i32], [4 x i32]* %repLens, i32 0, i64 0
  %224 = load i32, i32* %arrayidx287, align 4
  %add288 = add i32 %224, 1
  br label %cond.end.290

cond.false.289:                                   ; preds = %for.end.272
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.286
  %cond291 = phi i32 [ %add288, %cond.true.286 ], [ 2, %cond.false.289 ]
  store i32 %cond291, i32* %len, align 4
  %225 = load i32, i32* %len, align 4
  %226 = load i32, i32* %mainLen, align 4
  %cmp292 = icmp ule i32 %225, %226
  br i1 %cmp292, label %if.then.294, label %if.end.378

if.then.294:                                      ; preds = %cond.end.290
  store i32 0, i32* %offs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.294
  %227 = load i32, i32* %len, align 4
  %228 = load i32, i32* %offs, align 4
  %idxprom295 = zext i32 %228 to i64
  %229 = load i32*, i32** %matches, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %229, i64 %idxprom295
  %230 = load i32, i32* %arrayidx296, align 4
  %cmp297 = icmp ugt i32 %227, %230
  br i1 %cmp297, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %231 = load i32, i32* %offs, align 4
  %add299 = add i32 %231, 2
  store i32 %add299, i32* %offs, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.375, %while.end
  %232 = load i32, i32* %offs, align 4
  %add302 = add i32 %232, 1
  %idxprom303 = zext i32 %add302 to i64
  %233 = load i32*, i32** %matches, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %233, i64 %idxprom303
  %234 = load i32, i32* %arrayidx304, align 4
  store i32 %234, i32* %distance, align 4
  %235 = load i32, i32* %normalMatchPrice, align 4
  %236 = load i32, i32* %len, align 4
  %sub306 = sub i32 %236, 2
  %idxprom307 = zext i32 %sub306 to i64
  %237 = load i32, i32* %posState, align 4
  %idxprom308 = zext i32 %237 to i64
  %238 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %238, i32 0, i32 39
  %prices309 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %lenEnc, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices309, i32 0, i64 %idxprom308
  %arrayidx311 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx310, i32 0, i64 %idxprom307
  %239 = load i32, i32* %arrayidx311, align 4
  %add312 = add i32 %235, %239
  store i32 %add312, i32* %curAndLenPrice305, align 4
  %240 = load i32, i32* %len, align 4
  %cmp313 = icmp ult i32 %240, 5
  br i1 %cmp313, label %cond.true.315, label %cond.false.317

cond.true.315:                                    ; preds = %for.cond.300
  %241 = load i32, i32* %len, align 4
  %sub316 = sub i32 %241, 2
  br label %cond.end.318

cond.false.317:                                   ; preds = %for.cond.300
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.315
  %cond319 = phi i32 [ %sub316, %cond.true.315 ], [ 3, %cond.false.317 ]
  store i32 %cond319, i32* %lenToPosState, align 4
  %242 = load i32, i32* %distance, align 4
  %cmp320 = icmp ult i32 %242, 128
  br i1 %cmp320, label %if.then.322, label %if.else.328

if.then.322:                                      ; preds = %cond.end.318
  %243 = load i32, i32* %distance, align 4
  %idxprom323 = zext i32 %243 to i64
  %244 = load i32, i32* %lenToPosState, align 4
  %idxprom324 = zext i32 %244 to i64
  %245 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distancesPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %245, i32 0, i32 20
  %arrayidx325 = getelementptr inbounds [4 x [128 x i32]], [4 x [128 x i32]]* %distancesPrices, i32 0, i64 %idxprom324
  %arrayidx326 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx325, i32 0, i64 %idxprom323
  %246 = load i32, i32* %arrayidx326, align 4
  %247 = load i32, i32* %curAndLenPrice305, align 4
  %add327 = add i32 %247, %246
  store i32 %add327, i32* %curAndLenPrice305, align 4
  br label %if.end.350

if.else.328:                                      ; preds = %cond.end.318
  %248 = load i32, i32* %distance, align 4
  %sub330 = sub i32 524287, %248
  %shr331 = lshr i32 %sub330, 31
  %sub332 = sub i32 0, %shr331
  %and333 = and i32 12, %sub332
  %add334 = add i32 6, %and333
  store i32 %add334, i32* %i329, align 4
  %249 = load i32, i32* %distance, align 4
  %250 = load i32, i32* %i329, align 4
  %shr335 = lshr i32 %249, %250
  %idxprom336 = zext i32 %shr335 to i64
  %251 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %251, i32 0, i32 12
  %arrayidx337 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos, i32 0, i64 %idxprom336
  %252 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %252 to i32
  %253 = load i32, i32* %i329, align 4
  %mul339 = mul i32 %253, 2
  %add340 = add i32 %conv338, %mul339
  store i32 %add340, i32* %slot, align 4
  %254 = load i32, i32* %distance, align 4
  %and341 = and i32 %254, 15
  %idxprom342 = zext i32 %and341 to i64
  %255 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %255, i32 0, i32 21
  %arrayidx343 = getelementptr inbounds [16 x i32], [16 x i32]* %alignPrices, i32 0, i64 %idxprom342
  %256 = load i32, i32* %arrayidx343, align 4
  %257 = load i32, i32* %slot, align 4
  %idxprom344 = zext i32 %257 to i64
  %258 = load i32, i32* %lenToPosState, align 4
  %idxprom345 = zext i32 %258 to i64
  %259 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %259, i32 0, i32 19
  %arrayidx346 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %posSlotPrices, i32 0, i64 %idxprom345
  %arrayidx347 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx346, i32 0, i64 %idxprom344
  %260 = load i32, i32* %arrayidx347, align 4
  %add348 = add i32 %256, %260
  %261 = load i32, i32* %curAndLenPrice305, align 4
  %add349 = add i32 %261, %add348
  store i32 %add349, i32* %curAndLenPrice305, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.328, %if.then.322
  %262 = load i32, i32* %len, align 4
  %idxprom351 = zext i32 %262 to i64
  %263 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt352 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %263, i32 0, i32 11
  %arrayidx353 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt352, i32 0, i64 %idxprom351
  store %struct.COptimal* %arrayidx353, %struct.COptimal** %opt301, align 8
  %264 = load i32, i32* %curAndLenPrice305, align 4
  %265 = load %struct.COptimal*, %struct.COptimal** %opt301, align 8
  %price354 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %265, i32 0, i32 0
  %266 = load i32, i32* %price354, align 4
  %cmp355 = icmp ult i32 %264, %266
  br i1 %cmp355, label %if.then.357, label %if.end.363

if.then.357:                                      ; preds = %if.end.350
  %267 = load i32, i32* %curAndLenPrice305, align 4
  %268 = load %struct.COptimal*, %struct.COptimal** %opt301, align 8
  %price358 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %268, i32 0, i32 0
  store i32 %267, i32* %price358, align 4
  %269 = load %struct.COptimal*, %struct.COptimal** %opt301, align 8
  %posPrev359 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %269, i32 0, i32 6
  store i32 0, i32* %posPrev359, align 4
  %270 = load i32, i32* %distance, align 4
  %add360 = add i32 %270, 4
  %271 = load %struct.COptimal*, %struct.COptimal** %opt301, align 8
  %backPrev361 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %271, i32 0, i32 7
  store i32 %add360, i32* %backPrev361, align 4
  %272 = load %struct.COptimal*, %struct.COptimal** %opt301, align 8
  %prev1IsChar362 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %272, i32 0, i32 2
  store i32 0, i32* %prev1IsChar362, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.357, %if.end.350
  %273 = load i32, i32* %len, align 4
  %274 = load i32, i32* %offs, align 4
  %idxprom364 = zext i32 %274 to i64
  %275 = load i32*, i32** %matches, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %275, i64 %idxprom364
  %276 = load i32, i32* %arrayidx365, align 4
  %cmp366 = icmp eq i32 %273, %276
  br i1 %cmp366, label %if.then.368, label %if.end.374

if.then.368:                                      ; preds = %if.end.363
  %277 = load i32, i32* %offs, align 4
  %add369 = add i32 %277, 2
  store i32 %add369, i32* %offs, align 4
  %278 = load i32, i32* %offs, align 4
  %279 = load i32, i32* %numPairs, align 4
  %cmp370 = icmp eq i32 %278, %279
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.then.368
  br label %for.end.377

if.end.373:                                       ; preds = %if.then.368
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.end.363
  br label %for.inc.375

for.inc.375:                                      ; preds = %if.end.374
  %280 = load i32, i32* %len, align 4
  %inc376 = add i32 %280, 1
  store i32 %inc376, i32* %len, align 4
  br label %for.cond.300

for.end.377:                                      ; preds = %if.then.372
  br label %if.end.378

if.end.378:                                       ; preds = %for.end.377, %cond.end.290
  store i32 0, i32* %cur, align 4
  br label %for.cond.379

for.cond.379:                                     ; preds = %if.end.1326, %if.then.670, %if.end.378
  %281 = load i32, i32* %cur, align 4
  %inc389 = add i32 %281, 1
  store i32 %inc389, i32* %cur, align 4
  %282 = load i32, i32* %cur, align 4
  %283 = load i32, i32* %lenEnd, align 4
  %cmp390 = icmp eq i32 %282, %283
  br i1 %cmp390, label %if.then.392, label %if.end.394

if.then.392:                                      ; preds = %for.cond.379
  %284 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %285 = load i32*, i32** %backRes.addr, align 8
  %286 = load i32, i32* %cur, align 4
  %call393 = call i32 @Backward(%struct.CLzmaEnc* %284, i32* %285, i32 %286)
  store i32 %call393, i32* %retval
  br label %return

if.end.394:                                       ; preds = %for.cond.379
  %287 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %call395 = call i32 @ReadMatchDistances(%struct.CLzmaEnc* %287, i32* %numPairs380)
  store i32 %call395, i32* %newLen, align 4
  %288 = load i32, i32* %newLen, align 4
  %289 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes396 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %289, i32 0, i32 15
  %290 = load i32, i32* %numFastBytes396, align 4
  %cmp397 = icmp uge i32 %288, %290
  br i1 %cmp397, label %if.then.399, label %if.end.403

if.then.399:                                      ; preds = %if.end.394
  %291 = load i32, i32* %numPairs380, align 4
  %292 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numPairs400 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %292, i32 0, i32 9
  store i32 %291, i32* %numPairs400, align 4
  %293 = load i32, i32* %newLen, align 4
  %294 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %longestMatchLength401 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %294, i32 0, i32 8
  store i32 %293, i32* %longestMatchLength401, align 4
  %295 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %296 = load i32*, i32** %backRes.addr, align 8
  %297 = load i32, i32* %cur, align 4
  %call402 = call i32 @Backward(%struct.CLzmaEnc* %295, i32* %296, i32 %297)
  store i32 %call402, i32* %retval
  br label %return

if.end.403:                                       ; preds = %if.end.394
  %298 = load i32, i32* %position.addr, align 4
  %inc404 = add i32 %298, 1
  store i32 %inc404, i32* %position.addr, align 4
  %299 = load i32, i32* %cur, align 4
  %idxprom405 = zext i32 %299 to i64
  %300 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt406 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %300, i32 0, i32 11
  %arrayidx407 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt406, i32 0, i64 %idxprom405
  store %struct.COptimal* %arrayidx407, %struct.COptimal** %curOpt, align 8
  %301 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %posPrev408 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %301, i32 0, i32 6
  %302 = load i32, i32* %posPrev408, align 4
  store i32 %302, i32* %posPrev381, align 4
  %303 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %prev1IsChar409 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %303, i32 0, i32 2
  %304 = load i32, i32* %prev1IsChar409, align 4
  %tobool = icmp ne i32 %304, 0
  br i1 %tobool, label %if.then.410, label %if.else.435

if.then.410:                                      ; preds = %if.end.403
  %305 = load i32, i32* %posPrev381, align 4
  %dec411 = add i32 %305, -1
  store i32 %dec411, i32* %posPrev381, align 4
  %306 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %prev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %306, i32 0, i32 3
  %307 = load i32, i32* %prev2, align 4
  %tobool412 = icmp ne i32 %307, 0
  br i1 %tobool412, label %if.then.413, label %if.else.427

if.then.413:                                      ; preds = %if.then.410
  %308 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %posPrev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %308, i32 0, i32 4
  %309 = load i32, i32* %posPrev2, align 4
  %idxprom414 = zext i32 %309 to i64
  %310 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt415 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %310, i32 0, i32 11
  %arrayidx416 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt415, i32 0, i64 %idxprom414
  %state417 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx416, i32 0, i32 1
  %311 = load i32, i32* %state417, align 4
  store i32 %311, i32* %state382, align 4
  %312 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backPrev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %312, i32 0, i32 5
  %313 = load i32, i32* %backPrev2, align 4
  %cmp418 = icmp ult i32 %313, 4
  br i1 %cmp418, label %if.then.420, label %if.else.423

if.then.420:                                      ; preds = %if.then.413
  %314 = load i32, i32* %state382, align 4
  %idxprom421 = zext i32 %314 to i64
  %arrayidx422 = getelementptr inbounds [12 x i32], [12 x i32]* @kRepNextStates, i32 0, i64 %idxprom421
  %315 = load i32, i32* %arrayidx422, align 4
  store i32 %315, i32* %state382, align 4
  br label %if.end.426

if.else.423:                                      ; preds = %if.then.413
  %316 = load i32, i32* %state382, align 4
  %idxprom424 = zext i32 %316 to i64
  %arrayidx425 = getelementptr inbounds [12 x i32], [12 x i32]* @kMatchNextStates, i32 0, i64 %idxprom424
  %317 = load i32, i32* %arrayidx425, align 4
  store i32 %317, i32* %state382, align 4
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.423, %if.then.420
  br label %if.end.432

if.else.427:                                      ; preds = %if.then.410
  %318 = load i32, i32* %posPrev381, align 4
  %idxprom428 = zext i32 %318 to i64
  %319 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt429 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %319, i32 0, i32 11
  %arrayidx430 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt429, i32 0, i64 %idxprom428
  %state431 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx430, i32 0, i32 1
  %320 = load i32, i32* %state431, align 4
  store i32 %320, i32* %state382, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %if.else.427, %if.end.426
  %321 = load i32, i32* %state382, align 4
  %idxprom433 = zext i32 %321 to i64
  %arrayidx434 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom433
  %322 = load i32, i32* %arrayidx434, align 4
  store i32 %322, i32* %state382, align 4
  br label %if.end.440

if.else.435:                                      ; preds = %if.end.403
  %323 = load i32, i32* %posPrev381, align 4
  %idxprom436 = zext i32 %323 to i64
  %324 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt437 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %324, i32 0, i32 11
  %arrayidx438 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt437, i32 0, i64 %idxprom436
  %state439 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx438, i32 0, i32 1
  %325 = load i32, i32* %state439, align 4
  store i32 %325, i32* %state382, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.435, %if.end.432
  %326 = load i32, i32* %posPrev381, align 4
  %327 = load i32, i32* %cur, align 4
  %sub441 = sub i32 %327, 1
  %cmp442 = icmp eq i32 %326, %sub441
  br i1 %cmp442, label %if.then.444, label %if.else.455

if.then.444:                                      ; preds = %if.end.440
  %328 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backPrev445 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %328, i32 0, i32 7
  %329 = load i32, i32* %backPrev445, align 4
  %cmp446 = icmp eq i32 %329, 0
  br i1 %cmp446, label %if.then.448, label %if.else.451

if.then.448:                                      ; preds = %if.then.444
  %330 = load i32, i32* %state382, align 4
  %idxprom449 = zext i32 %330 to i64
  %arrayidx450 = getelementptr inbounds [12 x i32], [12 x i32]* @kShortRepNextStates, i32 0, i64 %idxprom449
  %331 = load i32, i32* %arrayidx450, align 4
  store i32 %331, i32* %state382, align 4
  br label %if.end.454

if.else.451:                                      ; preds = %if.then.444
  %332 = load i32, i32* %state382, align 4
  %idxprom452 = zext i32 %332 to i64
  %arrayidx453 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom452
  %333 = load i32, i32* %arrayidx453, align 4
  store i32 %333, i32* %state382, align 4
  br label %if.end.454

if.end.454:                                       ; preds = %if.else.451, %if.then.448
  br label %if.end.532

if.else.455:                                      ; preds = %if.end.440
  %334 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %prev1IsChar456 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %334, i32 0, i32 2
  %335 = load i32, i32* %prev1IsChar456, align 4
  %tobool457 = icmp ne i32 %335, 0
  br i1 %tobool457, label %land.lhs.true.458, label %if.else.466

land.lhs.true.458:                                ; preds = %if.else.455
  %336 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %prev2459 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %336, i32 0, i32 3
  %337 = load i32, i32* %prev2459, align 4
  %tobool460 = icmp ne i32 %337, 0
  br i1 %tobool460, label %if.then.461, label %if.else.466

if.then.461:                                      ; preds = %land.lhs.true.458
  %338 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %posPrev2462 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %338, i32 0, i32 4
  %339 = load i32, i32* %posPrev2462, align 4
  store i32 %339, i32* %posPrev381, align 4
  %340 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backPrev2463 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %340, i32 0, i32 5
  %341 = load i32, i32* %backPrev2463, align 4
  store i32 %341, i32* %pos, align 4
  %342 = load i32, i32* %state382, align 4
  %idxprom464 = zext i32 %342 to i64
  %arrayidx465 = getelementptr inbounds [12 x i32], [12 x i32]* @kRepNextStates, i32 0, i64 %idxprom464
  %343 = load i32, i32* %arrayidx465, align 4
  store i32 %343, i32* %state382, align 4
  br label %if.end.477

if.else.466:                                      ; preds = %land.lhs.true.458, %if.else.455
  %344 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backPrev467 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %344, i32 0, i32 7
  %345 = load i32, i32* %backPrev467, align 4
  store i32 %345, i32* %pos, align 4
  %346 = load i32, i32* %pos, align 4
  %cmp468 = icmp ult i32 %346, 4
  br i1 %cmp468, label %if.then.470, label %if.else.473

if.then.470:                                      ; preds = %if.else.466
  %347 = load i32, i32* %state382, align 4
  %idxprom471 = zext i32 %347 to i64
  %arrayidx472 = getelementptr inbounds [12 x i32], [12 x i32]* @kRepNextStates, i32 0, i64 %idxprom471
  %348 = load i32, i32* %arrayidx472, align 4
  store i32 %348, i32* %state382, align 4
  br label %if.end.476

if.else.473:                                      ; preds = %if.else.466
  %349 = load i32, i32* %state382, align 4
  %idxprom474 = zext i32 %349 to i64
  %arrayidx475 = getelementptr inbounds [12 x i32], [12 x i32]* @kMatchNextStates, i32 0, i64 %idxprom474
  %350 = load i32, i32* %arrayidx475, align 4
  store i32 %350, i32* %state382, align 4
  br label %if.end.476

if.end.476:                                       ; preds = %if.else.473, %if.then.470
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.then.461
  %351 = load i32, i32* %posPrev381, align 4
  %idxprom478 = zext i32 %351 to i64
  %352 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt479 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %352, i32 0, i32 11
  %arrayidx480 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt479, i32 0, i64 %idxprom478
  store %struct.COptimal* %arrayidx480, %struct.COptimal** %prevOpt, align 8
  %353 = load i32, i32* %pos, align 4
  %cmp481 = icmp ult i32 %353, 4
  br i1 %cmp481, label %if.then.483, label %if.else.514

if.then.483:                                      ; preds = %if.end.477
  %354 = load i32, i32* %pos, align 4
  %idxprom485 = zext i32 %354 to i64
  %355 = load %struct.COptimal*, %struct.COptimal** %prevOpt, align 8
  %backs486 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %355, i32 0, i32 8
  %arrayidx487 = getelementptr inbounds [4 x i32], [4 x i32]* %backs486, i32 0, i64 %idxprom485
  %356 = load i32, i32* %arrayidx487, align 4
  %arrayidx488 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  store i32 %356, i32* %arrayidx488, align 4
  store i32 1, i32* %i484, align 4
  br label %for.cond.489

for.cond.489:                                     ; preds = %for.inc.499, %if.then.483
  %357 = load i32, i32* %i484, align 4
  %358 = load i32, i32* %pos, align 4
  %cmp490 = icmp ule i32 %357, %358
  br i1 %cmp490, label %for.body.492, label %for.end.501

for.body.492:                                     ; preds = %for.cond.489
  %359 = load i32, i32* %i484, align 4
  %sub493 = sub i32 %359, 1
  %idxprom494 = zext i32 %sub493 to i64
  %360 = load %struct.COptimal*, %struct.COptimal** %prevOpt, align 8
  %backs495 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %360, i32 0, i32 8
  %arrayidx496 = getelementptr inbounds [4 x i32], [4 x i32]* %backs495, i32 0, i64 %idxprom494
  %361 = load i32, i32* %arrayidx496, align 4
  %362 = load i32, i32* %i484, align 4
  %idxprom497 = zext i32 %362 to i64
  %arrayidx498 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom497
  store i32 %361, i32* %arrayidx498, align 4
  br label %for.inc.499

for.inc.499:                                      ; preds = %for.body.492
  %363 = load i32, i32* %i484, align 4
  %inc500 = add i32 %363, 1
  store i32 %inc500, i32* %i484, align 4
  br label %for.cond.489

for.end.501:                                      ; preds = %for.cond.489
  br label %for.cond.502

for.cond.502:                                     ; preds = %for.inc.511, %for.end.501
  %364 = load i32, i32* %i484, align 4
  %cmp503 = icmp ult i32 %364, 4
  br i1 %cmp503, label %for.body.505, label %for.end.513

for.body.505:                                     ; preds = %for.cond.502
  %365 = load i32, i32* %i484, align 4
  %idxprom506 = zext i32 %365 to i64
  %366 = load %struct.COptimal*, %struct.COptimal** %prevOpt, align 8
  %backs507 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %366, i32 0, i32 8
  %arrayidx508 = getelementptr inbounds [4 x i32], [4 x i32]* %backs507, i32 0, i64 %idxprom506
  %367 = load i32, i32* %arrayidx508, align 4
  %368 = load i32, i32* %i484, align 4
  %idxprom509 = zext i32 %368 to i64
  %arrayidx510 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom509
  store i32 %367, i32* %arrayidx510, align 4
  br label %for.inc.511

for.inc.511:                                      ; preds = %for.body.505
  %369 = load i32, i32* %i484, align 4
  %inc512 = add i32 %369, 1
  store i32 %inc512, i32* %i484, align 4
  br label %for.cond.502

for.end.513:                                      ; preds = %for.cond.502
  br label %if.end.531

if.else.514:                                      ; preds = %if.end.477
  %370 = load i32, i32* %pos, align 4
  %sub516 = sub i32 %370, 4
  %arrayidx517 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  store i32 %sub516, i32* %arrayidx517, align 4
  store i32 1, i32* %i515, align 4
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc.528, %if.else.514
  %371 = load i32, i32* %i515, align 4
  %cmp519 = icmp ult i32 %371, 4
  br i1 %cmp519, label %for.body.521, label %for.end.530

for.body.521:                                     ; preds = %for.cond.518
  %372 = load i32, i32* %i515, align 4
  %sub522 = sub i32 %372, 1
  %idxprom523 = zext i32 %sub522 to i64
  %373 = load %struct.COptimal*, %struct.COptimal** %prevOpt, align 8
  %backs524 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %373, i32 0, i32 8
  %arrayidx525 = getelementptr inbounds [4 x i32], [4 x i32]* %backs524, i32 0, i64 %idxprom523
  %374 = load i32, i32* %arrayidx525, align 4
  %375 = load i32, i32* %i515, align 4
  %idxprom526 = zext i32 %375 to i64
  %arrayidx527 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom526
  store i32 %374, i32* %arrayidx527, align 4
  br label %for.inc.528

for.inc.528:                                      ; preds = %for.body.521
  %376 = load i32, i32* %i515, align 4
  %inc529 = add i32 %376, 1
  store i32 %inc529, i32* %i515, align 4
  br label %for.cond.518

for.end.530:                                      ; preds = %for.cond.518
  br label %if.end.531

if.end.531:                                       ; preds = %for.end.530, %for.end.513
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531, %if.end.454
  %377 = load i32, i32* %state382, align 4
  %378 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %state533 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %378, i32 0, i32 1
  store i32 %377, i32* %state533, align 4
  %arrayidx534 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %379 = load i32, i32* %arrayidx534, align 4
  %380 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backs535 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %380, i32 0, i32 8
  %arrayidx536 = getelementptr inbounds [4 x i32], [4 x i32]* %backs535, i32 0, i64 0
  store i32 %379, i32* %arrayidx536, align 4
  %arrayidx537 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 1
  %381 = load i32, i32* %arrayidx537, align 4
  %382 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backs538 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %382, i32 0, i32 8
  %arrayidx539 = getelementptr inbounds [4 x i32], [4 x i32]* %backs538, i32 0, i64 1
  store i32 %381, i32* %arrayidx539, align 4
  %arrayidx540 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 2
  %383 = load i32, i32* %arrayidx540, align 4
  %384 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backs541 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %384, i32 0, i32 8
  %arrayidx542 = getelementptr inbounds [4 x i32], [4 x i32]* %backs541, i32 0, i64 2
  store i32 %383, i32* %arrayidx542, align 4
  %arrayidx543 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 3
  %385 = load i32, i32* %arrayidx543, align 4
  %386 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %backs544 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %386, i32 0, i32 8
  %arrayidx545 = getelementptr inbounds [4 x i32], [4 x i32]* %backs544, i32 0, i64 3
  store i32 %385, i32* %arrayidx545, align 4
  %387 = load %struct.COptimal*, %struct.COptimal** %curOpt, align 8
  %price546 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %387, i32 0, i32 0
  %388 = load i32, i32* %price546, align 4
  store i32 %388, i32* %curPrice, align 4
  store i32 0, i32* %nextIsChar, align 4
  %389 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder547 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %389, i32 0, i32 0
  %GetPointerToCurrentPos548 = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder547, i32 0, i32 3
  %390 = load i8* (i8*)*, i8* (i8*)** %GetPointerToCurrentPos548, align 8
  %391 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj549 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %391, i32 0, i32 1
  %392 = load i8*, i8** %matchFinderObj549, align 8
  %call550 = call i8* %390(i8* %392)
  %add.ptr551 = getelementptr inbounds i8, i8* %call550, i64 -1
  store i8* %add.ptr551, i8** %data388, align 8
  %393 = load i8*, i8** %data388, align 8
  %394 = load i8, i8* %393, align 1
  store i8 %394, i8* %curByte386, align 1
  %395 = load i8*, i8** %data388, align 8
  %arrayidx552 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %396 = load i32, i32* %arrayidx552, align 4
  %add553 = add i32 %396, 1
  %idx.ext554 = zext i32 %add553 to i64
  %idx.neg555 = sub i64 0, %idx.ext554
  %add.ptr556 = getelementptr inbounds i8, i8* %395, i64 %idx.neg555
  %397 = load i8, i8* %add.ptr556, align 1
  store i8 %397, i8* %matchByte387, align 1
  %398 = load i32, i32* %position.addr, align 4
  %399 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask557 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %399, i32 0, i32 28
  %400 = load i32, i32* %pbMask557, align 4
  %and558 = and i32 %398, %400
  store i32 %and558, i32* %posState383, align 4
  %401 = load i32, i32* %curPrice, align 4
  %402 = load i32, i32* %posState383, align 4
  %idxprom559 = zext i32 %402 to i64
  %403 = load i32, i32* %state382, align 4
  %idxprom560 = zext i32 %403 to i64
  %404 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch561 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %404, i32 0, i32 30
  %arrayidx562 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch561, i32 0, i64 %idxprom560
  %arrayidx563 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx562, i32 0, i64 %idxprom559
  %405 = load i16, i16* %arrayidx563, align 2
  %conv564 = zext i16 %405 to i32
  %shr565 = ashr i32 %conv564, 4
  %idxprom566 = sext i32 %shr565 to i64
  %406 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices567 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %406, i32 0, i32 13
  %arrayidx568 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices567, i32 0, i64 %idxprom566
  %407 = load i32, i32* %arrayidx568, align 4
  %add569 = add i32 %401, %407
  store i32 %add569, i32* %curAnd1Price, align 4
  %408 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs571 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %408, i32 0, i32 29
  %409 = load i16*, i16** %litProbs571, align 8
  %410 = load i32, i32* %position.addr, align 4
  %411 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask572 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %411, i32 0, i32 27
  %412 = load i32, i32* %lpMask572, align 4
  %and573 = and i32 %410, %412
  %413 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc574 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %413, i32 0, i32 24
  %414 = load i32, i32* %lc574, align 4
  %shl575 = shl i32 %and573, %414
  %415 = load i8*, i8** %data388, align 8
  %add.ptr576 = getelementptr inbounds i8, i8* %415, i64 -1
  %416 = load i8, i8* %add.ptr576, align 1
  %conv577 = zext i8 %416 to i32
  %417 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc578 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %417, i32 0, i32 24
  %418 = load i32, i32* %lc578, align 4
  %sub579 = sub i32 8, %418
  %shr580 = ashr i32 %conv577, %sub579
  %add581 = add i32 %shl575, %shr580
  %mul582 = mul i32 %add581, 768
  %idx.ext583 = zext i32 %mul582 to i64
  %add.ptr584 = getelementptr inbounds i16, i16* %409, i64 %idx.ext583
  store i16* %add.ptr584, i16** %probs570, align 8
  %419 = load i32, i32* %state382, align 4
  %cmp585 = icmp ult i32 %419, 7
  br i1 %cmp585, label %cond.false.593, label %cond.true.587

cond.true.587:                                    ; preds = %if.end.532
  %420 = load i16*, i16** %probs570, align 8
  %421 = load i8, i8* %curByte386, align 1
  %conv588 = zext i8 %421 to i32
  %422 = load i8, i8* %matchByte387, align 1
  %conv589 = zext i8 %422 to i32
  %423 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices590 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %423, i32 0, i32 13
  %arraydecay591 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices590, i32 0, i32 0
  %call592 = call i32 @LitEnc_GetPriceMatched(i16* %420, i32 %conv588, i32 %conv589, i32* %arraydecay591)
  br label %cond.end.598

cond.false.593:                                   ; preds = %if.end.532
  %424 = load i16*, i16** %probs570, align 8
  %425 = load i8, i8* %curByte386, align 1
  %conv594 = zext i8 %425 to i32
  %426 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices595 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %426, i32 0, i32 13
  %arraydecay596 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices595, i32 0, i32 0
  %call597 = call i32 @LitEnc_GetPrice(i16* %424, i32 %conv594, i32* %arraydecay596)
  br label %cond.end.598

cond.end.598:                                     ; preds = %cond.false.593, %cond.true.587
  %cond599 = phi i32 [ %call592, %cond.true.587 ], [ %call597, %cond.false.593 ]
  %427 = load i32, i32* %curAnd1Price, align 4
  %add600 = add i32 %427, %cond599
  store i32 %add600, i32* %curAnd1Price, align 4
  %428 = load i32, i32* %cur, align 4
  %add601 = add i32 %428, 1
  %idxprom602 = zext i32 %add601 to i64
  %429 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt603 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %429, i32 0, i32 11
  %arrayidx604 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt603, i32 0, i64 %idxprom602
  store %struct.COptimal* %arrayidx604, %struct.COptimal** %nextOpt, align 8
  %430 = load i32, i32* %curAnd1Price, align 4
  %431 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %price605 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %431, i32 0, i32 0
  %432 = load i32, i32* %price605, align 4
  %cmp606 = icmp ult i32 %430, %432
  br i1 %cmp606, label %if.then.608, label %if.end.613

if.then.608:                                      ; preds = %cond.end.598
  %433 = load i32, i32* %curAnd1Price, align 4
  %434 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %price609 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %434, i32 0, i32 0
  store i32 %433, i32* %price609, align 4
  %435 = load i32, i32* %cur, align 4
  %436 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %posPrev610 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %436, i32 0, i32 6
  store i32 %435, i32* %posPrev610, align 4
  %437 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %backPrev611 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %437, i32 0, i32 7
  store i32 -1, i32* %backPrev611, align 4
  %438 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %prev1IsChar612 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %438, i32 0, i32 2
  store i32 0, i32* %prev1IsChar612, align 4
  store i32 1, i32* %nextIsChar, align 4
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.608, %cond.end.598
  %439 = load i32, i32* %curPrice, align 4
  %440 = load i32, i32* %posState383, align 4
  %idxprom614 = zext i32 %440 to i64
  %441 = load i32, i32* %state382, align 4
  %idxprom615 = zext i32 %441 to i64
  %442 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch616 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %442, i32 0, i32 30
  %arrayidx617 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch616, i32 0, i64 %idxprom615
  %arrayidx618 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx617, i32 0, i64 %idxprom614
  %443 = load i16, i16* %arrayidx618, align 2
  %conv619 = zext i16 %443 to i32
  %xor620 = xor i32 %conv619, 2047
  %shr621 = ashr i32 %xor620, 4
  %idxprom622 = sext i32 %shr621 to i64
  %444 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices623 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %444, i32 0, i32 13
  %arrayidx624 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices623, i32 0, i64 %idxprom622
  %445 = load i32, i32* %arrayidx624, align 4
  %add625 = add i32 %439, %445
  store i32 %add625, i32* %matchPrice384, align 4
  %446 = load i32, i32* %matchPrice384, align 4
  %447 = load i32, i32* %state382, align 4
  %idxprom626 = zext i32 %447 to i64
  %448 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep627 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %448, i32 0, i32 31
  %arrayidx628 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep627, i32 0, i64 %idxprom626
  %449 = load i16, i16* %arrayidx628, align 2
  %conv629 = zext i16 %449 to i32
  %xor630 = xor i32 %conv629, 2047
  %shr631 = ashr i32 %xor630, 4
  %idxprom632 = sext i32 %shr631 to i64
  %450 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices633 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %450, i32 0, i32 13
  %arrayidx634 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices633, i32 0, i64 %idxprom632
  %451 = load i32, i32* %arrayidx634, align 4
  %add635 = add i32 %446, %451
  store i32 %add635, i32* %repMatchPrice385, align 4
  %452 = load i8, i8* %matchByte387, align 1
  %conv636 = zext i8 %452 to i32
  %453 = load i8, i8* %curByte386, align 1
  %conv637 = zext i8 %453 to i32
  %cmp638 = icmp eq i32 %conv636, %conv637
  br i1 %cmp638, label %land.lhs.true.640, label %if.end.661

land.lhs.true.640:                                ; preds = %if.end.613
  %454 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %posPrev641 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %454, i32 0, i32 6
  %455 = load i32, i32* %posPrev641, align 4
  %456 = load i32, i32* %cur, align 4
  %cmp642 = icmp ult i32 %455, %456
  br i1 %cmp642, label %land.lhs.true.644, label %if.then.648

land.lhs.true.644:                                ; preds = %land.lhs.true.640
  %457 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %backPrev645 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %457, i32 0, i32 7
  %458 = load i32, i32* %backPrev645, align 4
  %cmp646 = icmp eq i32 %458, 0
  br i1 %cmp646, label %if.end.661, label %if.then.648

if.then.648:                                      ; preds = %land.lhs.true.644, %land.lhs.true.640
  %459 = load i32, i32* %repMatchPrice385, align 4
  %460 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %461 = load i32, i32* %state382, align 4
  %462 = load i32, i32* %posState383, align 4
  %call650 = call i32 @GetRepLen1Price(%struct.CLzmaEnc* %460, i32 %461, i32 %462)
  %add651 = add i32 %459, %call650
  store i32 %add651, i32* %shortRepPrice649, align 4
  %463 = load i32, i32* %shortRepPrice649, align 4
  %464 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %price652 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %464, i32 0, i32 0
  %465 = load i32, i32* %price652, align 4
  %cmp653 = icmp ule i32 %463, %465
  br i1 %cmp653, label %if.then.655, label %if.end.660

if.then.655:                                      ; preds = %if.then.648
  %466 = load i32, i32* %shortRepPrice649, align 4
  %467 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %price656 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %467, i32 0, i32 0
  store i32 %466, i32* %price656, align 4
  %468 = load i32, i32* %cur, align 4
  %469 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %posPrev657 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %469, i32 0, i32 6
  store i32 %468, i32* %posPrev657, align 4
  %470 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %backPrev658 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %470, i32 0, i32 7
  store i32 0, i32* %backPrev658, align 4
  %471 = load %struct.COptimal*, %struct.COptimal** %nextOpt, align 8
  %prev1IsChar659 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %471, i32 0, i32 2
  store i32 0, i32* %prev1IsChar659, align 4
  store i32 1, i32* %nextIsChar, align 4
  br label %if.end.660

if.end.660:                                       ; preds = %if.then.655, %if.then.648
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %land.lhs.true.644, %if.end.613
  %472 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numAvail662 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %472, i32 0, i32 10
  %473 = load i32, i32* %numAvail662, align 4
  store i32 %473, i32* %numAvailFull, align 4
  %474 = load i32, i32* %cur, align 4
  %sub663 = sub i32 4095, %474
  store i32 %sub663, i32* %temp, align 4
  %475 = load i32, i32* %temp, align 4
  %476 = load i32, i32* %numAvailFull, align 4
  %cmp664 = icmp ult i32 %475, %476
  br i1 %cmp664, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %if.end.661
  %477 = load i32, i32* %temp, align 4
  store i32 %477, i32* %numAvailFull, align 4
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.666, %if.end.661
  %478 = load i32, i32* %numAvailFull, align 4
  %cmp668 = icmp ult i32 %478, 2
  br i1 %cmp668, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %if.end.667
  br label %for.cond.379

if.end.671:                                       ; preds = %if.end.667
  %479 = load i32, i32* %numAvailFull, align 4
  %480 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes672 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %480, i32 0, i32 15
  %481 = load i32, i32* %numFastBytes672, align 4
  %cmp673 = icmp ule i32 %479, %481
  br i1 %cmp673, label %cond.true.675, label %cond.false.676

cond.true.675:                                    ; preds = %if.end.671
  %482 = load i32, i32* %numAvailFull, align 4
  br label %cond.end.678

cond.false.676:                                   ; preds = %if.end.671
  %483 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes677 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %483, i32 0, i32 15
  %484 = load i32, i32* %numFastBytes677, align 4
  br label %cond.end.678

cond.end.678:                                     ; preds = %cond.false.676, %cond.true.675
  %cond679 = phi i32 [ %482, %cond.true.675 ], [ %484, %cond.false.676 ]
  store i32 %cond679, i32* %numAvail, align 4
  %485 = load i32, i32* %nextIsChar, align 4
  %tobool680 = icmp ne i32 %485, 0
  br i1 %tobool680, label %if.end.779, label %land.lhs.true.681

land.lhs.true.681:                                ; preds = %cond.end.678
  %486 = load i8, i8* %matchByte387, align 1
  %conv682 = zext i8 %486 to i32
  %487 = load i8, i8* %curByte386, align 1
  %conv683 = zext i8 %487 to i32
  %cmp684 = icmp ne i32 %conv682, %conv683
  br i1 %cmp684, label %if.then.686, label %if.end.779

if.then.686:                                      ; preds = %land.lhs.true.681
  %488 = load i8*, i8** %data388, align 8
  %arrayidx689 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %489 = load i32, i32* %arrayidx689, align 4
  %add690 = add i32 %489, 1
  %idx.ext691 = zext i32 %add690 to i64
  %idx.neg692 = sub i64 0, %idx.ext691
  %add.ptr693 = getelementptr inbounds i8, i8* %488, i64 %idx.neg692
  store i8* %add.ptr693, i8** %data2688, align 8
  %490 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes694 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %490, i32 0, i32 15
  %491 = load i32, i32* %numFastBytes694, align 4
  %add695 = add i32 %491, 1
  store i32 %add695, i32* %limit, align 4
  %492 = load i32, i32* %limit, align 4
  %493 = load i32, i32* %numAvailFull, align 4
  %cmp696 = icmp ugt i32 %492, %493
  br i1 %cmp696, label %if.then.698, label %if.end.699

if.then.698:                                      ; preds = %if.then.686
  %494 = load i32, i32* %numAvailFull, align 4
  store i32 %494, i32* %limit, align 4
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.698, %if.then.686
  store i32 1, i32* %temp687, align 4
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.714, %if.end.699
  %495 = load i32, i32* %temp687, align 4
  %496 = load i32, i32* %limit, align 4
  %cmp701 = icmp ult i32 %495, %496
  br i1 %cmp701, label %land.rhs.703, label %land.end.712

land.rhs.703:                                     ; preds = %for.cond.700
  %497 = load i32, i32* %temp687, align 4
  %idxprom704 = zext i32 %497 to i64
  %498 = load i8*, i8** %data388, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %498, i64 %idxprom704
  %499 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %499 to i32
  %500 = load i32, i32* %temp687, align 4
  %idxprom707 = zext i32 %500 to i64
  %501 = load i8*, i8** %data2688, align 8
  %arrayidx708 = getelementptr inbounds i8, i8* %501, i64 %idxprom707
  %502 = load i8, i8* %arrayidx708, align 1
  %conv709 = zext i8 %502 to i32
  %cmp710 = icmp eq i32 %conv706, %conv709
  br label %land.end.712

land.end.712:                                     ; preds = %land.rhs.703, %for.cond.700
  %503 = phi i1 [ false, %for.cond.700 ], [ %cmp710, %land.rhs.703 ]
  br i1 %503, label %for.body.713, label %for.end.716

for.body.713:                                     ; preds = %land.end.712
  br label %for.inc.714

for.inc.714:                                      ; preds = %for.body.713
  %504 = load i32, i32* %temp687, align 4
  %inc715 = add i32 %504, 1
  store i32 %inc715, i32* %temp687, align 4
  br label %for.cond.700

for.end.716:                                      ; preds = %land.end.712
  %505 = load i32, i32* %temp687, align 4
  %sub717 = sub i32 %505, 1
  store i32 %sub717, i32* %lenTest2, align 4
  %506 = load i32, i32* %lenTest2, align 4
  %cmp718 = icmp uge i32 %506, 2
  br i1 %cmp718, label %if.then.720, label %if.end.778

if.then.720:                                      ; preds = %for.end.716
  %507 = load i32, i32* %state382, align 4
  %idxprom721 = zext i32 %507 to i64
  %arrayidx722 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom721
  %508 = load i32, i32* %arrayidx722, align 4
  store i32 %508, i32* %state2, align 4
  %509 = load i32, i32* %position.addr, align 4
  %add723 = add i32 %509, 1
  %510 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask724 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %510, i32 0, i32 28
  %511 = load i32, i32* %pbMask724, align 4
  %and725 = and i32 %add723, %511
  store i32 %and725, i32* %posStateNext, align 4
  %512 = load i32, i32* %curAnd1Price, align 4
  %513 = load i32, i32* %posStateNext, align 4
  %idxprom726 = zext i32 %513 to i64
  %514 = load i32, i32* %state2, align 4
  %idxprom727 = zext i32 %514 to i64
  %515 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch728 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %515, i32 0, i32 30
  %arrayidx729 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch728, i32 0, i64 %idxprom727
  %arrayidx730 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx729, i32 0, i64 %idxprom726
  %516 = load i16, i16* %arrayidx730, align 2
  %conv731 = zext i16 %516 to i32
  %xor732 = xor i32 %conv731, 2047
  %shr733 = ashr i32 %xor732, 4
  %idxprom734 = sext i32 %shr733 to i64
  %517 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices735 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %517, i32 0, i32 13
  %arrayidx736 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices735, i32 0, i64 %idxprom734
  %518 = load i32, i32* %arrayidx736, align 4
  %add737 = add i32 %512, %518
  %519 = load i32, i32* %state2, align 4
  %idxprom738 = zext i32 %519 to i64
  %520 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep739 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %520, i32 0, i32 31
  %arrayidx740 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep739, i32 0, i64 %idxprom738
  %521 = load i16, i16* %arrayidx740, align 2
  %conv741 = zext i16 %521 to i32
  %xor742 = xor i32 %conv741, 2047
  %shr743 = ashr i32 %xor742, 4
  %idxprom744 = sext i32 %shr743 to i64
  %522 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices745 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %522, i32 0, i32 13
  %arrayidx746 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices745, i32 0, i64 %idxprom744
  %523 = load i32, i32* %arrayidx746, align 4
  %add747 = add i32 %add737, %523
  store i32 %add747, i32* %nextRepMatchPrice, align 4
  %524 = load i32, i32* %cur, align 4
  %add750 = add i32 %524, 1
  %525 = load i32, i32* %lenTest2, align 4
  %add751 = add i32 %add750, %525
  store i32 %add751, i32* %offset, align 4
  br label %while.cond.752

while.cond.752:                                   ; preds = %while.body.755, %if.then.720
  %526 = load i32, i32* %lenEnd, align 4
  %527 = load i32, i32* %offset, align 4
  %cmp753 = icmp ult i32 %526, %527
  br i1 %cmp753, label %while.body.755, label %while.end.761

while.body.755:                                   ; preds = %while.cond.752
  %528 = load i32, i32* %lenEnd, align 4
  %inc756 = add i32 %528, 1
  store i32 %inc756, i32* %lenEnd, align 4
  %idxprom757 = zext i32 %inc756 to i64
  %529 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt758 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %529, i32 0, i32 11
  %arrayidx759 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt758, i32 0, i64 %idxprom757
  %price760 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx759, i32 0, i32 0
  store i32 1073741824, i32* %price760, align 4
  br label %while.cond.752

while.end.761:                                    ; preds = %while.cond.752
  %530 = load i32, i32* %nextRepMatchPrice, align 4
  %531 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %532 = load i32, i32* %lenTest2, align 4
  %533 = load i32, i32* %state2, align 4
  %534 = load i32, i32* %posStateNext, align 4
  %call762 = call i32 @GetRepPrice(%struct.CLzmaEnc* %531, i32 0, i32 %532, i32 %533, i32 %534)
  %add763 = add i32 %530, %call762
  store i32 %add763, i32* %curAndLenPrice748, align 4
  %535 = load i32, i32* %offset, align 4
  %idxprom764 = zext i32 %535 to i64
  %536 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt765 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %536, i32 0, i32 11
  %arrayidx766 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt765, i32 0, i64 %idxprom764
  store %struct.COptimal* %arrayidx766, %struct.COptimal** %opt749, align 8
  %537 = load i32, i32* %curAndLenPrice748, align 4
  %538 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %price767 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %538, i32 0, i32 0
  %539 = load i32, i32* %price767, align 4
  %cmp768 = icmp ult i32 %537, %539
  br i1 %cmp768, label %if.then.770, label %if.end.777

if.then.770:                                      ; preds = %while.end.761
  %540 = load i32, i32* %curAndLenPrice748, align 4
  %541 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %price771 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %541, i32 0, i32 0
  store i32 %540, i32* %price771, align 4
  %542 = load i32, i32* %cur, align 4
  %add772 = add i32 %542, 1
  %543 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %posPrev773 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %543, i32 0, i32 6
  store i32 %add772, i32* %posPrev773, align 4
  %544 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %backPrev774 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %544, i32 0, i32 7
  store i32 0, i32* %backPrev774, align 4
  %545 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %prev1IsChar775 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %545, i32 0, i32 2
  store i32 1, i32* %prev1IsChar775, align 4
  %546 = load %struct.COptimal*, %struct.COptimal** %opt749, align 8
  %prev2776 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %546, i32 0, i32 3
  store i32 0, i32* %prev2776, align 4
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.770, %while.end.761
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777, %for.end.716
  br label %if.end.779

if.end.779:                                       ; preds = %if.end.778, %land.lhs.true.681, %cond.end.678
  store i32 2, i32* %startLen, align 4
  store i32 0, i32* %repIndex, align 4
  br label %for.cond.780

for.cond.780:                                     ; preds = %for.inc.1021, %if.end.779
  %547 = load i32, i32* %repIndex, align 4
  %cmp781 = icmp ult i32 %547, 4
  br i1 %cmp781, label %for.body.783, label %for.end.1023

for.body.783:                                     ; preds = %for.cond.780
  %548 = load i8*, i8** %data388, align 8
  %549 = load i32, i32* %repIndex, align 4
  %idxprom787 = zext i32 %549 to i64
  %arrayidx788 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 %idxprom787
  %550 = load i32, i32* %arrayidx788, align 4
  %add789 = add i32 %550, 1
  %idx.ext790 = zext i32 %add789 to i64
  %idx.neg791 = sub i64 0, %idx.ext790
  %add.ptr792 = getelementptr inbounds i8, i8* %548, i64 %idx.neg791
  store i8* %add.ptr792, i8** %data2786, align 8
  %551 = load i8*, i8** %data388, align 8
  %arrayidx793 = getelementptr inbounds i8, i8* %551, i64 0
  %552 = load i8, i8* %arrayidx793, align 1
  %conv794 = zext i8 %552 to i32
  %553 = load i8*, i8** %data2786, align 8
  %arrayidx795 = getelementptr inbounds i8, i8* %553, i64 0
  %554 = load i8, i8* %arrayidx795, align 1
  %conv796 = zext i8 %554 to i32
  %cmp797 = icmp ne i32 %conv794, %conv796
  br i1 %cmp797, label %if.then.806, label %lor.lhs.false.799

lor.lhs.false.799:                                ; preds = %for.body.783
  %555 = load i8*, i8** %data388, align 8
  %arrayidx800 = getelementptr inbounds i8, i8* %555, i64 1
  %556 = load i8, i8* %arrayidx800, align 1
  %conv801 = zext i8 %556 to i32
  %557 = load i8*, i8** %data2786, align 8
  %arrayidx802 = getelementptr inbounds i8, i8* %557, i64 1
  %558 = load i8, i8* %arrayidx802, align 1
  %conv803 = zext i8 %558 to i32
  %cmp804 = icmp ne i32 %conv801, %conv803
  br i1 %cmp804, label %if.then.806, label %if.end.807

if.then.806:                                      ; preds = %lor.lhs.false.799, %for.body.783
  br label %for.inc.1021

if.end.807:                                       ; preds = %lor.lhs.false.799
  store i32 2, i32* %lenTest784, align 4
  br label %for.cond.808

for.cond.808:                                     ; preds = %for.inc.822, %if.end.807
  %559 = load i32, i32* %lenTest784, align 4
  %560 = load i32, i32* %numAvail, align 4
  %cmp809 = icmp ult i32 %559, %560
  br i1 %cmp809, label %land.rhs.811, label %land.end.820

land.rhs.811:                                     ; preds = %for.cond.808
  %561 = load i32, i32* %lenTest784, align 4
  %idxprom812 = zext i32 %561 to i64
  %562 = load i8*, i8** %data388, align 8
  %arrayidx813 = getelementptr inbounds i8, i8* %562, i64 %idxprom812
  %563 = load i8, i8* %arrayidx813, align 1
  %conv814 = zext i8 %563 to i32
  %564 = load i32, i32* %lenTest784, align 4
  %idxprom815 = zext i32 %564 to i64
  %565 = load i8*, i8** %data2786, align 8
  %arrayidx816 = getelementptr inbounds i8, i8* %565, i64 %idxprom815
  %566 = load i8, i8* %arrayidx816, align 1
  %conv817 = zext i8 %566 to i32
  %cmp818 = icmp eq i32 %conv814, %conv817
  br label %land.end.820

land.end.820:                                     ; preds = %land.rhs.811, %for.cond.808
  %567 = phi i1 [ false, %for.cond.808 ], [ %cmp818, %land.rhs.811 ]
  br i1 %567, label %for.body.821, label %for.end.824

for.body.821:                                     ; preds = %land.end.820
  br label %for.inc.822

for.inc.822:                                      ; preds = %for.body.821
  %568 = load i32, i32* %lenTest784, align 4
  %inc823 = add i32 %568, 1
  store i32 %inc823, i32* %lenTest784, align 4
  br label %for.cond.808

for.end.824:                                      ; preds = %land.end.820
  br label %while.cond.825

while.cond.825:                                   ; preds = %while.body.829, %for.end.824
  %569 = load i32, i32* %lenEnd, align 4
  %570 = load i32, i32* %cur, align 4
  %571 = load i32, i32* %lenTest784, align 4
  %add826 = add i32 %570, %571
  %cmp827 = icmp ult i32 %569, %add826
  br i1 %cmp827, label %while.body.829, label %while.end.835

while.body.829:                                   ; preds = %while.cond.825
  %572 = load i32, i32* %lenEnd, align 4
  %inc830 = add i32 %572, 1
  store i32 %inc830, i32* %lenEnd, align 4
  %idxprom831 = zext i32 %inc830 to i64
  %573 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt832 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %573, i32 0, i32 11
  %arrayidx833 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt832, i32 0, i64 %idxprom831
  %price834 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx833, i32 0, i32 0
  store i32 1073741824, i32* %price834, align 4
  br label %while.cond.825

while.end.835:                                    ; preds = %while.cond.825
  %574 = load i32, i32* %lenTest784, align 4
  store i32 %574, i32* %lenTestTemp, align 4
  %575 = load i32, i32* %repMatchPrice385, align 4
  %576 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %577 = load i32, i32* %repIndex, align 4
  %578 = load i32, i32* %state382, align 4
  %579 = load i32, i32* %posState383, align 4
  %call836 = call i32 @GetPureRepPrice(%struct.CLzmaEnc* %576, i32 %577, i32 %578, i32 %579)
  %add837 = add i32 %575, %call836
  store i32 %add837, i32* %price785, align 4
  br label %do.body.838

do.body.838:                                      ; preds = %do.cond.862, %while.end.835
  %580 = load i32, i32* %price785, align 4
  %581 = load i32, i32* %lenTest784, align 4
  %sub840 = sub i32 %581, 2
  %idxprom841 = zext i32 %sub840 to i64
  %582 = load i32, i32* %posState383, align 4
  %idxprom842 = zext i32 %582 to i64
  %583 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc843 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %583, i32 0, i32 40
  %prices844 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc843, i32 0, i32 1
  %arrayidx845 = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices844, i32 0, i64 %idxprom842
  %arrayidx846 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx845, i32 0, i64 %idxprom841
  %584 = load i32, i32* %arrayidx846, align 4
  %add847 = add i32 %580, %584
  store i32 %add847, i32* %curAndLenPrice839, align 4
  %585 = load i32, i32* %cur, align 4
  %586 = load i32, i32* %lenTest784, align 4
  %add849 = add i32 %585, %586
  %idxprom850 = zext i32 %add849 to i64
  %587 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt851 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %587, i32 0, i32 11
  %arrayidx852 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt851, i32 0, i64 %idxprom850
  store %struct.COptimal* %arrayidx852, %struct.COptimal** %opt848, align 8
  %588 = load i32, i32* %curAndLenPrice839, align 4
  %589 = load %struct.COptimal*, %struct.COptimal** %opt848, align 8
  %price853 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %589, i32 0, i32 0
  %590 = load i32, i32* %price853, align 4
  %cmp854 = icmp ult i32 %588, %590
  br i1 %cmp854, label %if.then.856, label %if.end.861

if.then.856:                                      ; preds = %do.body.838
  %591 = load i32, i32* %curAndLenPrice839, align 4
  %592 = load %struct.COptimal*, %struct.COptimal** %opt848, align 8
  %price857 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %592, i32 0, i32 0
  store i32 %591, i32* %price857, align 4
  %593 = load i32, i32* %cur, align 4
  %594 = load %struct.COptimal*, %struct.COptimal** %opt848, align 8
  %posPrev858 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %594, i32 0, i32 6
  store i32 %593, i32* %posPrev858, align 4
  %595 = load i32, i32* %repIndex, align 4
  %596 = load %struct.COptimal*, %struct.COptimal** %opt848, align 8
  %backPrev859 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %596, i32 0, i32 7
  store i32 %595, i32* %backPrev859, align 4
  %597 = load %struct.COptimal*, %struct.COptimal** %opt848, align 8
  %prev1IsChar860 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %597, i32 0, i32 2
  store i32 0, i32* %prev1IsChar860, align 4
  br label %if.end.861

if.end.861:                                       ; preds = %if.then.856, %do.body.838
  br label %do.cond.862

do.cond.862:                                      ; preds = %if.end.861
  %598 = load i32, i32* %lenTest784, align 4
  %dec863 = add i32 %598, -1
  store i32 %dec863, i32* %lenTest784, align 4
  %cmp864 = icmp uge i32 %dec863, 2
  br i1 %cmp864, label %do.body.838, label %do.end.866

do.end.866:                                       ; preds = %do.cond.862
  %599 = load i32, i32* %lenTestTemp, align 4
  store i32 %599, i32* %lenTest784, align 4
  %600 = load i32, i32* %repIndex, align 4
  %cmp867 = icmp eq i32 %600, 0
  br i1 %cmp867, label %if.then.869, label %if.end.871

if.then.869:                                      ; preds = %do.end.866
  %601 = load i32, i32* %lenTest784, align 4
  %add870 = add i32 %601, 1
  store i32 %add870, i32* %startLen, align 4
  br label %if.end.871

if.end.871:                                       ; preds = %if.then.869, %do.end.866
  %602 = load i32, i32* %lenTest784, align 4
  %add873 = add i32 %602, 1
  store i32 %add873, i32* %lenTest2872, align 4
  %603 = load i32, i32* %lenTest2872, align 4
  %604 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes875 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %604, i32 0, i32 15
  %605 = load i32, i32* %numFastBytes875, align 4
  %add876 = add i32 %603, %605
  store i32 %add876, i32* %limit874, align 4
  %606 = load i32, i32* %limit874, align 4
  %607 = load i32, i32* %numAvailFull, align 4
  %cmp878 = icmp ugt i32 %606, %607
  br i1 %cmp878, label %if.then.880, label %if.end.881

if.then.880:                                      ; preds = %if.end.871
  %608 = load i32, i32* %numAvailFull, align 4
  store i32 %608, i32* %limit874, align 4
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.880, %if.end.871
  br label %for.cond.882

for.cond.882:                                     ; preds = %for.inc.896, %if.end.881
  %609 = load i32, i32* %lenTest2872, align 4
  %610 = load i32, i32* %limit874, align 4
  %cmp883 = icmp ult i32 %609, %610
  br i1 %cmp883, label %land.rhs.885, label %land.end.894

land.rhs.885:                                     ; preds = %for.cond.882
  %611 = load i32, i32* %lenTest2872, align 4
  %idxprom886 = zext i32 %611 to i64
  %612 = load i8*, i8** %data388, align 8
  %arrayidx887 = getelementptr inbounds i8, i8* %612, i64 %idxprom886
  %613 = load i8, i8* %arrayidx887, align 1
  %conv888 = zext i8 %613 to i32
  %614 = load i32, i32* %lenTest2872, align 4
  %idxprom889 = zext i32 %614 to i64
  %615 = load i8*, i8** %data2786, align 8
  %arrayidx890 = getelementptr inbounds i8, i8* %615, i64 %idxprom889
  %616 = load i8, i8* %arrayidx890, align 1
  %conv891 = zext i8 %616 to i32
  %cmp892 = icmp eq i32 %conv888, %conv891
  br label %land.end.894

land.end.894:                                     ; preds = %land.rhs.885, %for.cond.882
  %617 = phi i1 [ false, %for.cond.882 ], [ %cmp892, %land.rhs.885 ]
  br i1 %617, label %for.body.895, label %for.end.898

for.body.895:                                     ; preds = %land.end.894
  br label %for.inc.896

for.inc.896:                                      ; preds = %for.body.895
  %618 = load i32, i32* %lenTest2872, align 4
  %inc897 = add i32 %618, 1
  store i32 %inc897, i32* %lenTest2872, align 4
  br label %for.cond.882

for.end.898:                                      ; preds = %land.end.894
  %619 = load i32, i32* %lenTest784, align 4
  %add899 = add i32 %619, 1
  %620 = load i32, i32* %lenTest2872, align 4
  %sub900 = sub i32 %620, %add899
  store i32 %sub900, i32* %lenTest2872, align 4
  %621 = load i32, i32* %lenTest2872, align 4
  %cmp901 = icmp uge i32 %621, 2
  br i1 %cmp901, label %if.then.903, label %if.end.1020

if.then.903:                                      ; preds = %for.end.898
  %622 = load i32, i32* %state382, align 4
  %idxprom905 = zext i32 %622 to i64
  %arrayidx906 = getelementptr inbounds [12 x i32], [12 x i32]* @kRepNextStates, i32 0, i64 %idxprom905
  %623 = load i32, i32* %arrayidx906, align 4
  store i32 %623, i32* %state2904, align 4
  %624 = load i32, i32* %position.addr, align 4
  %625 = load i32, i32* %lenTest784, align 4
  %add908 = add i32 %624, %625
  %626 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask909 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %626, i32 0, i32 28
  %627 = load i32, i32* %pbMask909, align 4
  %and910 = and i32 %add908, %627
  store i32 %and910, i32* %posStateNext907, align 4
  %628 = load i32, i32* %price785, align 4
  %629 = load i32, i32* %lenTest784, align 4
  %sub911 = sub i32 %629, 2
  %idxprom912 = zext i32 %sub911 to i64
  %630 = load i32, i32* %posState383, align 4
  %idxprom913 = zext i32 %630 to i64
  %631 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc914 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %631, i32 0, i32 40
  %prices915 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc914, i32 0, i32 1
  %arrayidx916 = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices915, i32 0, i64 %idxprom913
  %arrayidx917 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx916, i32 0, i64 %idxprom912
  %632 = load i32, i32* %arrayidx917, align 4
  %add918 = add i32 %628, %632
  %633 = load i32, i32* %posStateNext907, align 4
  %idxprom919 = zext i32 %633 to i64
  %634 = load i32, i32* %state2904, align 4
  %idxprom920 = zext i32 %634 to i64
  %635 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch921 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %635, i32 0, i32 30
  %arrayidx922 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch921, i32 0, i64 %idxprom920
  %arrayidx923 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx922, i32 0, i64 %idxprom919
  %636 = load i16, i16* %arrayidx923, align 2
  %conv924 = zext i16 %636 to i32
  %shr925 = ashr i32 %conv924, 4
  %idxprom926 = sext i32 %shr925 to i64
  %637 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices927 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %637, i32 0, i32 13
  %arrayidx928 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices927, i32 0, i64 %idxprom926
  %638 = load i32, i32* %arrayidx928, align 4
  %add929 = add i32 %add918, %638
  %639 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs930 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %639, i32 0, i32 29
  %640 = load i16*, i16** %litProbs930, align 8
  %641 = load i32, i32* %position.addr, align 4
  %642 = load i32, i32* %lenTest784, align 4
  %add931 = add i32 %641, %642
  %643 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask932 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %643, i32 0, i32 27
  %644 = load i32, i32* %lpMask932, align 4
  %and933 = and i32 %add931, %644
  %645 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc934 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %645, i32 0, i32 24
  %646 = load i32, i32* %lc934, align 4
  %shl935 = shl i32 %and933, %646
  %647 = load i32, i32* %lenTest784, align 4
  %sub936 = sub i32 %647, 1
  %idxprom937 = zext i32 %sub936 to i64
  %648 = load i8*, i8** %data388, align 8
  %arrayidx938 = getelementptr inbounds i8, i8* %648, i64 %idxprom937
  %649 = load i8, i8* %arrayidx938, align 1
  %conv939 = zext i8 %649 to i32
  %650 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc940 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %650, i32 0, i32 24
  %651 = load i32, i32* %lc940, align 4
  %sub941 = sub i32 8, %651
  %shr942 = ashr i32 %conv939, %sub941
  %add943 = add i32 %shl935, %shr942
  %mul944 = mul i32 %add943, 768
  %idx.ext945 = zext i32 %mul944 to i64
  %add.ptr946 = getelementptr inbounds i16, i16* %640, i64 %idx.ext945
  %652 = load i32, i32* %lenTest784, align 4
  %idxprom947 = zext i32 %652 to i64
  %653 = load i8*, i8** %data388, align 8
  %arrayidx948 = getelementptr inbounds i8, i8* %653, i64 %idxprom947
  %654 = load i8, i8* %arrayidx948, align 1
  %conv949 = zext i8 %654 to i32
  %655 = load i32, i32* %lenTest784, align 4
  %idxprom950 = zext i32 %655 to i64
  %656 = load i8*, i8** %data2786, align 8
  %arrayidx951 = getelementptr inbounds i8, i8* %656, i64 %idxprom950
  %657 = load i8, i8* %arrayidx951, align 1
  %conv952 = zext i8 %657 to i32
  %658 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices953 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %658, i32 0, i32 13
  %arraydecay954 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices953, i32 0, i32 0
  %call955 = call i32 @LitEnc_GetPriceMatched(i16* %add.ptr946, i32 %conv949, i32 %conv952, i32* %arraydecay954)
  %add956 = add i32 %add929, %call955
  store i32 %add956, i32* %curAndLenCharPrice, align 4
  %659 = load i32, i32* %state2904, align 4
  %idxprom957 = zext i32 %659 to i64
  %arrayidx958 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom957
  %660 = load i32, i32* %arrayidx958, align 4
  store i32 %660, i32* %state2904, align 4
  %661 = load i32, i32* %position.addr, align 4
  %662 = load i32, i32* %lenTest784, align 4
  %add959 = add i32 %661, %662
  %add960 = add i32 %add959, 1
  %663 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask961 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %663, i32 0, i32 28
  %664 = load i32, i32* %pbMask961, align 4
  %and962 = and i32 %add960, %664
  store i32 %and962, i32* %posStateNext907, align 4
  %665 = load i32, i32* %curAndLenCharPrice, align 4
  %666 = load i32, i32* %posStateNext907, align 4
  %idxprom963 = zext i32 %666 to i64
  %667 = load i32, i32* %state2904, align 4
  %idxprom964 = zext i32 %667 to i64
  %668 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch965 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %668, i32 0, i32 30
  %arrayidx966 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch965, i32 0, i64 %idxprom964
  %arrayidx967 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx966, i32 0, i64 %idxprom963
  %669 = load i16, i16* %arrayidx967, align 2
  %conv968 = zext i16 %669 to i32
  %xor969 = xor i32 %conv968, 2047
  %shr970 = ashr i32 %xor969, 4
  %idxprom971 = sext i32 %shr970 to i64
  %670 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices972 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %670, i32 0, i32 13
  %arrayidx973 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices972, i32 0, i64 %idxprom971
  %671 = load i32, i32* %arrayidx973, align 4
  %add974 = add i32 %665, %671
  %672 = load i32, i32* %state2904, align 4
  %idxprom975 = zext i32 %672 to i64
  %673 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep976 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %673, i32 0, i32 31
  %arrayidx977 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep976, i32 0, i64 %idxprom975
  %674 = load i16, i16* %arrayidx977, align 2
  %conv978 = zext i16 %674 to i32
  %xor979 = xor i32 %conv978, 2047
  %shr980 = ashr i32 %xor979, 4
  %idxprom981 = sext i32 %shr980 to i64
  %675 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices982 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %675, i32 0, i32 13
  %arrayidx983 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices982, i32 0, i64 %idxprom981
  %676 = load i32, i32* %arrayidx983, align 4
  %add984 = add i32 %add974, %676
  store i32 %add984, i32* %nextRepMatchPrice877, align 4
  %677 = load i32, i32* %cur, align 4
  %678 = load i32, i32* %lenTest784, align 4
  %add988 = add i32 %677, %678
  %add989 = add i32 %add988, 1
  %679 = load i32, i32* %lenTest2872, align 4
  %add990 = add i32 %add989, %679
  store i32 %add990, i32* %offset987, align 4
  br label %while.cond.991

while.cond.991:                                   ; preds = %while.body.994, %if.then.903
  %680 = load i32, i32* %lenEnd, align 4
  %681 = load i32, i32* %offset987, align 4
  %cmp992 = icmp ult i32 %680, %681
  br i1 %cmp992, label %while.body.994, label %while.end.1000

while.body.994:                                   ; preds = %while.cond.991
  %682 = load i32, i32* %lenEnd, align 4
  %inc995 = add i32 %682, 1
  store i32 %inc995, i32* %lenEnd, align 4
  %idxprom996 = zext i32 %inc995 to i64
  %683 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt997 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %683, i32 0, i32 11
  %arrayidx998 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt997, i32 0, i64 %idxprom996
  %price999 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx998, i32 0, i32 0
  store i32 1073741824, i32* %price999, align 4
  br label %while.cond.991

while.end.1000:                                   ; preds = %while.cond.991
  %684 = load i32, i32* %nextRepMatchPrice877, align 4
  %685 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %686 = load i32, i32* %lenTest2872, align 4
  %687 = load i32, i32* %state2904, align 4
  %688 = load i32, i32* %posStateNext907, align 4
  %call1001 = call i32 @GetRepPrice(%struct.CLzmaEnc* %685, i32 0, i32 %686, i32 %687, i32 %688)
  %add1002 = add i32 %684, %call1001
  store i32 %add1002, i32* %curAndLenPrice985, align 4
  %689 = load i32, i32* %offset987, align 4
  %idxprom1003 = zext i32 %689 to i64
  %690 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt1004 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %690, i32 0, i32 11
  %arrayidx1005 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt1004, i32 0, i64 %idxprom1003
  store %struct.COptimal* %arrayidx1005, %struct.COptimal** %opt986, align 8
  %691 = load i32, i32* %curAndLenPrice985, align 4
  %692 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %price1006 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %692, i32 0, i32 0
  %693 = load i32, i32* %price1006, align 4
  %cmp1007 = icmp ult i32 %691, %693
  br i1 %cmp1007, label %if.then.1009, label %if.end.1019

if.then.1009:                                     ; preds = %while.end.1000
  %694 = load i32, i32* %curAndLenPrice985, align 4
  %695 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %price1010 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %695, i32 0, i32 0
  store i32 %694, i32* %price1010, align 4
  %696 = load i32, i32* %cur, align 4
  %697 = load i32, i32* %lenTest784, align 4
  %add1011 = add i32 %696, %697
  %add1012 = add i32 %add1011, 1
  %698 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %posPrev1013 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %698, i32 0, i32 6
  store i32 %add1012, i32* %posPrev1013, align 4
  %699 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %backPrev1014 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %699, i32 0, i32 7
  store i32 0, i32* %backPrev1014, align 4
  %700 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %prev1IsChar1015 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %700, i32 0, i32 2
  store i32 1, i32* %prev1IsChar1015, align 4
  %701 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %prev21016 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %701, i32 0, i32 3
  store i32 1, i32* %prev21016, align 4
  %702 = load i32, i32* %cur, align 4
  %703 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %posPrev21017 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %703, i32 0, i32 4
  store i32 %702, i32* %posPrev21017, align 4
  %704 = load i32, i32* %repIndex, align 4
  %705 = load %struct.COptimal*, %struct.COptimal** %opt986, align 8
  %backPrev21018 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %705, i32 0, i32 5
  store i32 %704, i32* %backPrev21018, align 4
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.then.1009, %while.end.1000
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.end.1019, %for.end.898
  br label %for.inc.1021

for.inc.1021:                                     ; preds = %if.end.1020, %if.then.806
  %706 = load i32, i32* %repIndex, align 4
  %inc1022 = add i32 %706, 1
  store i32 %inc1022, i32* %repIndex, align 4
  br label %for.cond.780

for.end.1023:                                     ; preds = %for.cond.780
  %707 = load i32, i32* %newLen, align 4
  %708 = load i32, i32* %numAvail, align 4
  %cmp1024 = icmp ugt i32 %707, %708
  br i1 %cmp1024, label %if.then.1026, label %if.end.1039

if.then.1026:                                     ; preds = %for.end.1023
  %709 = load i32, i32* %numAvail, align 4
  store i32 %709, i32* %newLen, align 4
  store i32 0, i32* %numPairs380, align 4
  br label %for.cond.1027

for.cond.1027:                                    ; preds = %for.inc.1033, %if.then.1026
  %710 = load i32, i32* %newLen, align 4
  %711 = load i32, i32* %numPairs380, align 4
  %idxprom1028 = zext i32 %711 to i64
  %712 = load i32*, i32** %matches, align 8
  %arrayidx1029 = getelementptr inbounds i32, i32* %712, i64 %idxprom1028
  %713 = load i32, i32* %arrayidx1029, align 4
  %cmp1030 = icmp ugt i32 %710, %713
  br i1 %cmp1030, label %for.body.1032, label %for.end.1035

for.body.1032:                                    ; preds = %for.cond.1027
  br label %for.inc.1033

for.inc.1033:                                     ; preds = %for.body.1032
  %714 = load i32, i32* %numPairs380, align 4
  %add1034 = add i32 %714, 2
  store i32 %add1034, i32* %numPairs380, align 4
  br label %for.cond.1027

for.end.1035:                                     ; preds = %for.cond.1027
  %715 = load i32, i32* %newLen, align 4
  %716 = load i32, i32* %numPairs380, align 4
  %idxprom1036 = zext i32 %716 to i64
  %717 = load i32*, i32** %matches, align 8
  %arrayidx1037 = getelementptr inbounds i32, i32* %717, i64 %idxprom1036
  store i32 %715, i32* %arrayidx1037, align 4
  %718 = load i32, i32* %numPairs380, align 4
  %add1038 = add i32 %718, 2
  store i32 %add1038, i32* %numPairs380, align 4
  br label %if.end.1039

if.end.1039:                                      ; preds = %for.end.1035, %for.end.1023
  %719 = load i32, i32* %newLen, align 4
  %720 = load i32, i32* %startLen, align 4
  %cmp1040 = icmp uge i32 %719, %720
  br i1 %cmp1040, label %if.then.1042, label %if.end.1326

if.then.1042:                                     ; preds = %if.end.1039
  %721 = load i32, i32* %matchPrice384, align 4
  %722 = load i32, i32* %state382, align 4
  %idxprom1044 = zext i32 %722 to i64
  %723 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep1045 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %723, i32 0, i32 31
  %arrayidx1046 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep1045, i32 0, i64 %idxprom1044
  %724 = load i16, i16* %arrayidx1046, align 2
  %conv1047 = zext i16 %724 to i32
  %shr1048 = ashr i32 %conv1047, 4
  %idxprom1049 = sext i32 %shr1048 to i64
  %725 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices1050 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %725, i32 0, i32 13
  %arrayidx1051 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices1050, i32 0, i64 %idxprom1049
  %726 = load i32, i32* %arrayidx1051, align 4
  %add1052 = add i32 %721, %726
  store i32 %add1052, i32* %normalMatchPrice1043, align 4
  br label %while.cond.1055

while.cond.1055:                                  ; preds = %while.body.1059, %if.then.1042
  %727 = load i32, i32* %lenEnd, align 4
  %728 = load i32, i32* %cur, align 4
  %729 = load i32, i32* %newLen, align 4
  %add1056 = add i32 %728, %729
  %cmp1057 = icmp ult i32 %727, %add1056
  br i1 %cmp1057, label %while.body.1059, label %while.end.1065

while.body.1059:                                  ; preds = %while.cond.1055
  %730 = load i32, i32* %lenEnd, align 4
  %inc1060 = add i32 %730, 1
  store i32 %inc1060, i32* %lenEnd, align 4
  %idxprom1061 = zext i32 %inc1060 to i64
  %731 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt1062 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %731, i32 0, i32 11
  %arrayidx1063 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt1062, i32 0, i64 %idxprom1061
  %price1064 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx1063, i32 0, i32 0
  store i32 1073741824, i32* %price1064, align 4
  br label %while.cond.1055

while.end.1065:                                   ; preds = %while.cond.1055
  store i32 0, i32* %offs1053, align 4
  br label %while.cond.1066

while.cond.1066:                                  ; preds = %while.body.1071, %while.end.1065
  %732 = load i32, i32* %startLen, align 4
  %733 = load i32, i32* %offs1053, align 4
  %idxprom1067 = zext i32 %733 to i64
  %734 = load i32*, i32** %matches, align 8
  %arrayidx1068 = getelementptr inbounds i32, i32* %734, i64 %idxprom1067
  %735 = load i32, i32* %arrayidx1068, align 4
  %cmp1069 = icmp ugt i32 %732, %735
  br i1 %cmp1069, label %while.body.1071, label %while.end.1073

while.body.1071:                                  ; preds = %while.cond.1066
  %736 = load i32, i32* %offs1053, align 4
  %add1072 = add i32 %736, 2
  store i32 %add1072, i32* %offs1053, align 4
  br label %while.cond.1066

while.end.1073:                                   ; preds = %while.cond.1066
  %737 = load i32, i32* %offs1053, align 4
  %add1074 = add i32 %737, 1
  %idxprom1075 = zext i32 %add1074 to i64
  %738 = load i32*, i32** %matches, align 8
  %arrayidx1076 = getelementptr inbounds i32, i32* %738, i64 %idxprom1075
  %739 = load i32, i32* %arrayidx1076, align 4
  store i32 %739, i32* %curBack, align 4
  %740 = load i32, i32* %curBack, align 4
  %sub1078 = sub i32 524287, %740
  %shr1079 = lshr i32 %sub1078, 31
  %sub1080 = sub i32 0, %shr1079
  %and1081 = and i32 12, %sub1080
  %add1082 = add i32 6, %and1081
  store i32 %add1082, i32* %i1077, align 4
  %741 = load i32, i32* %curBack, align 4
  %742 = load i32, i32* %i1077, align 4
  %shr1083 = lshr i32 %741, %742
  %idxprom1084 = zext i32 %shr1083 to i64
  %743 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos1085 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %743, i32 0, i32 12
  %arrayidx1086 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos1085, i32 0, i64 %idxprom1084
  %744 = load i8, i8* %arrayidx1086, align 1
  %conv1087 = zext i8 %744 to i32
  %745 = load i32, i32* %i1077, align 4
  %mul1088 = mul i32 %745, 2
  %add1089 = add i32 %conv1087, %mul1088
  store i32 %add1089, i32* %posSlot, align 4
  %746 = load i32, i32* %startLen, align 4
  store i32 %746, i32* %lenTest1054, align 4
  br label %for.cond.1090

for.cond.1090:                                    ; preds = %for.inc.1323, %while.end.1073
  %747 = load i32, i32* %normalMatchPrice1043, align 4
  %748 = load i32, i32* %lenTest1054, align 4
  %sub1092 = sub i32 %748, 2
  %idxprom1093 = zext i32 %sub1092 to i64
  %749 = load i32, i32* %posState383, align 4
  %idxprom1094 = zext i32 %749 to i64
  %750 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc1095 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %750, i32 0, i32 39
  %prices1096 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %lenEnc1095, i32 0, i32 1
  %arrayidx1097 = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices1096, i32 0, i64 %idxprom1094
  %arrayidx1098 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx1097, i32 0, i64 %idxprom1093
  %751 = load i32, i32* %arrayidx1098, align 4
  %add1099 = add i32 %747, %751
  store i32 %add1099, i32* %curAndLenPrice1091, align 4
  %752 = load i32, i32* %lenTest1054, align 4
  %cmp1101 = icmp ult i32 %752, 5
  br i1 %cmp1101, label %cond.true.1103, label %cond.false.1105

cond.true.1103:                                   ; preds = %for.cond.1090
  %753 = load i32, i32* %lenTest1054, align 4
  %sub1104 = sub i32 %753, 2
  br label %cond.end.1106

cond.false.1105:                                  ; preds = %for.cond.1090
  br label %cond.end.1106

cond.end.1106:                                    ; preds = %cond.false.1105, %cond.true.1103
  %cond1107 = phi i32 [ %sub1104, %cond.true.1103 ], [ 3, %cond.false.1105 ]
  store i32 %cond1107, i32* %lenToPosState1100, align 4
  %754 = load i32, i32* %curBack, align 4
  %cmp1109 = icmp ult i32 %754, 128
  br i1 %cmp1109, label %if.then.1111, label %if.else.1118

if.then.1111:                                     ; preds = %cond.end.1106
  %755 = load i32, i32* %curBack, align 4
  %idxprom1112 = zext i32 %755 to i64
  %756 = load i32, i32* %lenToPosState1100, align 4
  %idxprom1113 = zext i32 %756 to i64
  %757 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %distancesPrices1114 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %757, i32 0, i32 20
  %arrayidx1115 = getelementptr inbounds [4 x [128 x i32]], [4 x [128 x i32]]* %distancesPrices1114, i32 0, i64 %idxprom1113
  %arrayidx1116 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx1115, i32 0, i64 %idxprom1112
  %758 = load i32, i32* %arrayidx1116, align 4
  %759 = load i32, i32* %curAndLenPrice1091, align 4
  %add1117 = add i32 %759, %758
  store i32 %add1117, i32* %curAndLenPrice1091, align 4
  br label %if.end.1130

if.else.1118:                                     ; preds = %cond.end.1106
  %760 = load i32, i32* %posSlot, align 4
  %idxprom1119 = zext i32 %760 to i64
  %761 = load i32, i32* %lenToPosState1100, align 4
  %idxprom1120 = zext i32 %761 to i64
  %762 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotPrices1121 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %762, i32 0, i32 19
  %arrayidx1122 = getelementptr inbounds [4 x [64 x i32]], [4 x [64 x i32]]* %posSlotPrices1121, i32 0, i64 %idxprom1120
  %arrayidx1123 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx1122, i32 0, i64 %idxprom1119
  %763 = load i32, i32* %arrayidx1123, align 4
  %764 = load i32, i32* %curBack, align 4
  %and1124 = and i32 %764, 15
  %idxprom1125 = zext i32 %and1124 to i64
  %765 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %alignPrices1126 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %765, i32 0, i32 21
  %arrayidx1127 = getelementptr inbounds [16 x i32], [16 x i32]* %alignPrices1126, i32 0, i64 %idxprom1125
  %766 = load i32, i32* %arrayidx1127, align 4
  %add1128 = add i32 %763, %766
  %767 = load i32, i32* %curAndLenPrice1091, align 4
  %add1129 = add i32 %767, %add1128
  store i32 %add1129, i32* %curAndLenPrice1091, align 4
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.else.1118, %if.then.1111
  %768 = load i32, i32* %cur, align 4
  %769 = load i32, i32* %lenTest1054, align 4
  %add1131 = add i32 %768, %769
  %idxprom1132 = zext i32 %add1131 to i64
  %770 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt1133 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %770, i32 0, i32 11
  %arrayidx1134 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt1133, i32 0, i64 %idxprom1132
  store %struct.COptimal* %arrayidx1134, %struct.COptimal** %opt1108, align 8
  %771 = load i32, i32* %curAndLenPrice1091, align 4
  %772 = load %struct.COptimal*, %struct.COptimal** %opt1108, align 8
  %price1135 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %772, i32 0, i32 0
  %773 = load i32, i32* %price1135, align 4
  %cmp1136 = icmp ult i32 %771, %773
  br i1 %cmp1136, label %if.then.1138, label %if.end.1144

if.then.1138:                                     ; preds = %if.end.1130
  %774 = load i32, i32* %curAndLenPrice1091, align 4
  %775 = load %struct.COptimal*, %struct.COptimal** %opt1108, align 8
  %price1139 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %775, i32 0, i32 0
  store i32 %774, i32* %price1139, align 4
  %776 = load i32, i32* %cur, align 4
  %777 = load %struct.COptimal*, %struct.COptimal** %opt1108, align 8
  %posPrev1140 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %777, i32 0, i32 6
  store i32 %776, i32* %posPrev1140, align 4
  %778 = load i32, i32* %curBack, align 4
  %add1141 = add i32 %778, 4
  %779 = load %struct.COptimal*, %struct.COptimal** %opt1108, align 8
  %backPrev1142 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %779, i32 0, i32 7
  store i32 %add1141, i32* %backPrev1142, align 4
  %780 = load %struct.COptimal*, %struct.COptimal** %opt1108, align 8
  %prev1IsChar1143 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %780, i32 0, i32 2
  store i32 0, i32* %prev1IsChar1143, align 4
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.then.1138, %if.end.1130
  %781 = load i32, i32* %lenTest1054, align 4
  %782 = load i32, i32* %offs1053, align 4
  %idxprom1145 = zext i32 %782 to i64
  %783 = load i32*, i32** %matches, align 8
  %arrayidx1146 = getelementptr inbounds i32, i32* %783, i64 %idxprom1145
  %784 = load i32, i32* %arrayidx1146, align 4
  %cmp1147 = icmp eq i32 %781, %784
  br i1 %cmp1147, label %if.then.1149, label %if.end.1322

if.then.1149:                                     ; preds = %if.end.1144
  %785 = load i8*, i8** %data388, align 8
  %786 = load i32, i32* %curBack, align 4
  %add1151 = add i32 %786, 1
  %idx.ext1152 = zext i32 %add1151 to i64
  %idx.neg1153 = sub i64 0, %idx.ext1152
  %add.ptr1154 = getelementptr inbounds i8, i8* %785, i64 %idx.neg1153
  store i8* %add.ptr1154, i8** %data21150, align 8
  %787 = load i32, i32* %lenTest1054, align 4
  %add1156 = add i32 %787, 1
  store i32 %add1156, i32* %lenTest21155, align 4
  %788 = load i32, i32* %lenTest21155, align 4
  %789 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %numFastBytes1158 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %789, i32 0, i32 15
  %790 = load i32, i32* %numFastBytes1158, align 4
  %add1159 = add i32 %788, %790
  store i32 %add1159, i32* %limit1157, align 4
  %791 = load i32, i32* %limit1157, align 4
  %792 = load i32, i32* %numAvailFull, align 4
  %cmp1161 = icmp ugt i32 %791, %792
  br i1 %cmp1161, label %if.then.1163, label %if.end.1164

if.then.1163:                                     ; preds = %if.then.1149
  %793 = load i32, i32* %numAvailFull, align 4
  store i32 %793, i32* %limit1157, align 4
  br label %if.end.1164

if.end.1164:                                      ; preds = %if.then.1163, %if.then.1149
  br label %for.cond.1165

for.cond.1165:                                    ; preds = %for.inc.1179, %if.end.1164
  %794 = load i32, i32* %lenTest21155, align 4
  %795 = load i32, i32* %limit1157, align 4
  %cmp1166 = icmp ult i32 %794, %795
  br i1 %cmp1166, label %land.rhs.1168, label %land.end.1177

land.rhs.1168:                                    ; preds = %for.cond.1165
  %796 = load i32, i32* %lenTest21155, align 4
  %idxprom1169 = zext i32 %796 to i64
  %797 = load i8*, i8** %data388, align 8
  %arrayidx1170 = getelementptr inbounds i8, i8* %797, i64 %idxprom1169
  %798 = load i8, i8* %arrayidx1170, align 1
  %conv1171 = zext i8 %798 to i32
  %799 = load i32, i32* %lenTest21155, align 4
  %idxprom1172 = zext i32 %799 to i64
  %800 = load i8*, i8** %data21150, align 8
  %arrayidx1173 = getelementptr inbounds i8, i8* %800, i64 %idxprom1172
  %801 = load i8, i8* %arrayidx1173, align 1
  %conv1174 = zext i8 %801 to i32
  %cmp1175 = icmp eq i32 %conv1171, %conv1174
  br label %land.end.1177

land.end.1177:                                    ; preds = %land.rhs.1168, %for.cond.1165
  %802 = phi i1 [ false, %for.cond.1165 ], [ %cmp1175, %land.rhs.1168 ]
  br i1 %802, label %for.body.1178, label %for.end.1181

for.body.1178:                                    ; preds = %land.end.1177
  br label %for.inc.1179

for.inc.1179:                                     ; preds = %for.body.1178
  %803 = load i32, i32* %lenTest21155, align 4
  %inc1180 = add i32 %803, 1
  store i32 %inc1180, i32* %lenTest21155, align 4
  br label %for.cond.1165

for.end.1181:                                     ; preds = %land.end.1177
  %804 = load i32, i32* %lenTest1054, align 4
  %add1182 = add i32 %804, 1
  %805 = load i32, i32* %lenTest21155, align 4
  %sub1183 = sub i32 %805, %add1182
  store i32 %sub1183, i32* %lenTest21155, align 4
  %806 = load i32, i32* %lenTest21155, align 4
  %cmp1184 = icmp uge i32 %806, 2
  br i1 %cmp1184, label %if.then.1186, label %if.end.1296

if.then.1186:                                     ; preds = %for.end.1181
  %807 = load i32, i32* %state382, align 4
  %idxprom1188 = zext i32 %807 to i64
  %arrayidx1189 = getelementptr inbounds [12 x i32], [12 x i32]* @kMatchNextStates, i32 0, i64 %idxprom1188
  %808 = load i32, i32* %arrayidx1189, align 4
  store i32 %808, i32* %state21187, align 4
  %809 = load i32, i32* %position.addr, align 4
  %810 = load i32, i32* %lenTest1054, align 4
  %add1191 = add i32 %809, %810
  %811 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask1192 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %811, i32 0, i32 28
  %812 = load i32, i32* %pbMask1192, align 4
  %and1193 = and i32 %add1191, %812
  store i32 %and1193, i32* %posStateNext1190, align 4
  %813 = load i32, i32* %curAndLenPrice1091, align 4
  %814 = load i32, i32* %posStateNext1190, align 4
  %idxprom1195 = zext i32 %814 to i64
  %815 = load i32, i32* %state21187, align 4
  %idxprom1196 = zext i32 %815 to i64
  %816 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch1197 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %816, i32 0, i32 30
  %arrayidx1198 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch1197, i32 0, i64 %idxprom1196
  %arrayidx1199 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1198, i32 0, i64 %idxprom1195
  %817 = load i16, i16* %arrayidx1199, align 2
  %conv1200 = zext i16 %817 to i32
  %shr1201 = ashr i32 %conv1200, 4
  %idxprom1202 = sext i32 %shr1201 to i64
  %818 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices1203 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %818, i32 0, i32 13
  %arrayidx1204 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices1203, i32 0, i64 %idxprom1202
  %819 = load i32, i32* %arrayidx1204, align 4
  %add1205 = add i32 %813, %819
  %820 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %litProbs1206 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %820, i32 0, i32 29
  %821 = load i16*, i16** %litProbs1206, align 8
  %822 = load i32, i32* %position.addr, align 4
  %823 = load i32, i32* %lenTest1054, align 4
  %add1207 = add i32 %822, %823
  %824 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lpMask1208 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %824, i32 0, i32 27
  %825 = load i32, i32* %lpMask1208, align 4
  %and1209 = and i32 %add1207, %825
  %826 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc1210 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %826, i32 0, i32 24
  %827 = load i32, i32* %lc1210, align 4
  %shl1211 = shl i32 %and1209, %827
  %828 = load i32, i32* %lenTest1054, align 4
  %sub1212 = sub i32 %828, 1
  %idxprom1213 = zext i32 %sub1212 to i64
  %829 = load i8*, i8** %data388, align 8
  %arrayidx1214 = getelementptr inbounds i8, i8* %829, i64 %idxprom1213
  %830 = load i8, i8* %arrayidx1214, align 1
  %conv1215 = zext i8 %830 to i32
  %831 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lc1216 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %831, i32 0, i32 24
  %832 = load i32, i32* %lc1216, align 4
  %sub1217 = sub i32 8, %832
  %shr1218 = ashr i32 %conv1215, %sub1217
  %add1219 = add i32 %shl1211, %shr1218
  %mul1220 = mul i32 %add1219, 768
  %idx.ext1221 = zext i32 %mul1220 to i64
  %add.ptr1222 = getelementptr inbounds i16, i16* %821, i64 %idx.ext1221
  %833 = load i32, i32* %lenTest1054, align 4
  %idxprom1223 = zext i32 %833 to i64
  %834 = load i8*, i8** %data388, align 8
  %arrayidx1224 = getelementptr inbounds i8, i8* %834, i64 %idxprom1223
  %835 = load i8, i8* %arrayidx1224, align 1
  %conv1225 = zext i8 %835 to i32
  %836 = load i32, i32* %lenTest1054, align 4
  %idxprom1226 = zext i32 %836 to i64
  %837 = load i8*, i8** %data21150, align 8
  %arrayidx1227 = getelementptr inbounds i8, i8* %837, i64 %idxprom1226
  %838 = load i8, i8* %arrayidx1227, align 1
  %conv1228 = zext i8 %838 to i32
  %839 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices1229 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %839, i32 0, i32 13
  %arraydecay1230 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices1229, i32 0, i32 0
  %call1231 = call i32 @LitEnc_GetPriceMatched(i16* %add.ptr1222, i32 %conv1225, i32 %conv1228, i32* %arraydecay1230)
  %add1232 = add i32 %add1205, %call1231
  store i32 %add1232, i32* %curAndLenCharPrice1194, align 4
  %840 = load i32, i32* %state21187, align 4
  %idxprom1233 = zext i32 %840 to i64
  %arrayidx1234 = getelementptr inbounds [12 x i32], [12 x i32]* @kLiteralNextStates, i32 0, i64 %idxprom1233
  %841 = load i32, i32* %arrayidx1234, align 4
  store i32 %841, i32* %state21187, align 4
  %842 = load i32, i32* %posStateNext1190, align 4
  %add1235 = add i32 %842, 1
  %843 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %pbMask1236 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %843, i32 0, i32 28
  %844 = load i32, i32* %pbMask1236, align 4
  %and1237 = and i32 %add1235, %844
  store i32 %and1237, i32* %posStateNext1190, align 4
  %845 = load i32, i32* %curAndLenCharPrice1194, align 4
  %846 = load i32, i32* %posStateNext1190, align 4
  %idxprom1238 = zext i32 %846 to i64
  %847 = load i32, i32* %state21187, align 4
  %idxprom1239 = zext i32 %847 to i64
  %848 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch1240 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %848, i32 0, i32 30
  %arrayidx1241 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch1240, i32 0, i64 %idxprom1239
  %arrayidx1242 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1241, i32 0, i64 %idxprom1238
  %849 = load i16, i16* %arrayidx1242, align 2
  %conv1243 = zext i16 %849 to i32
  %xor1244 = xor i32 %conv1243, 2047
  %shr1245 = ashr i32 %xor1244, 4
  %idxprom1246 = sext i32 %shr1245 to i64
  %850 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices1247 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %850, i32 0, i32 13
  %arrayidx1248 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices1247, i32 0, i64 %idxprom1246
  %851 = load i32, i32* %arrayidx1248, align 4
  %add1249 = add i32 %845, %851
  %852 = load i32, i32* %state21187, align 4
  %idxprom1250 = zext i32 %852 to i64
  %853 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep1251 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %853, i32 0, i32 31
  %arrayidx1252 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep1251, i32 0, i64 %idxprom1250
  %854 = load i16, i16* %arrayidx1252, align 2
  %conv1253 = zext i16 %854 to i32
  %xor1254 = xor i32 %conv1253, 2047
  %shr1255 = ashr i32 %xor1254, 4
  %idxprom1256 = sext i32 %shr1255 to i64
  %855 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices1257 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %855, i32 0, i32 13
  %arrayidx1258 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices1257, i32 0, i64 %idxprom1256
  %856 = load i32, i32* %arrayidx1258, align 4
  %add1259 = add i32 %add1249, %856
  store i32 %add1259, i32* %nextRepMatchPrice1160, align 4
  %857 = load i32, i32* %cur, align 4
  %858 = load i32, i32* %lenTest1054, align 4
  %add1261 = add i32 %857, %858
  %add1262 = add i32 %add1261, 1
  %859 = load i32, i32* %lenTest21155, align 4
  %add1263 = add i32 %add1262, %859
  store i32 %add1263, i32* %offset1260, align 4
  br label %while.cond.1266

while.cond.1266:                                  ; preds = %while.body.1269, %if.then.1186
  %860 = load i32, i32* %lenEnd, align 4
  %861 = load i32, i32* %offset1260, align 4
  %cmp1267 = icmp ult i32 %860, %861
  br i1 %cmp1267, label %while.body.1269, label %while.end.1275

while.body.1269:                                  ; preds = %while.cond.1266
  %862 = load i32, i32* %lenEnd, align 4
  %inc1270 = add i32 %862, 1
  store i32 %inc1270, i32* %lenEnd, align 4
  %idxprom1271 = zext i32 %inc1270 to i64
  %863 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt1272 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %863, i32 0, i32 11
  %arrayidx1273 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt1272, i32 0, i64 %idxprom1271
  %price1274 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx1273, i32 0, i32 0
  store i32 1073741824, i32* %price1274, align 4
  br label %while.cond.1266

while.end.1275:                                   ; preds = %while.cond.1266
  %864 = load i32, i32* %nextRepMatchPrice1160, align 4
  %865 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %866 = load i32, i32* %lenTest21155, align 4
  %867 = load i32, i32* %state21187, align 4
  %868 = load i32, i32* %posStateNext1190, align 4
  %call1276 = call i32 @GetRepPrice(%struct.CLzmaEnc* %865, i32 0, i32 %866, i32 %867, i32 %868)
  %add1277 = add i32 %864, %call1276
  store i32 %add1277, i32* %curAndLenPrice1264, align 4
  %869 = load i32, i32* %offset1260, align 4
  %idxprom1278 = zext i32 %869 to i64
  %870 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt1279 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %870, i32 0, i32 11
  %arrayidx1280 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt1279, i32 0, i64 %idxprom1278
  store %struct.COptimal* %arrayidx1280, %struct.COptimal** %opt1265, align 8
  %871 = load i32, i32* %curAndLenPrice1264, align 4
  %872 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %price1281 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %872, i32 0, i32 0
  %873 = load i32, i32* %price1281, align 4
  %cmp1282 = icmp ult i32 %871, %873
  br i1 %cmp1282, label %if.then.1284, label %if.end.1295

if.then.1284:                                     ; preds = %while.end.1275
  %874 = load i32, i32* %curAndLenPrice1264, align 4
  %875 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %price1285 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %875, i32 0, i32 0
  store i32 %874, i32* %price1285, align 4
  %876 = load i32, i32* %cur, align 4
  %877 = load i32, i32* %lenTest1054, align 4
  %add1286 = add i32 %876, %877
  %add1287 = add i32 %add1286, 1
  %878 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %posPrev1288 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %878, i32 0, i32 6
  store i32 %add1287, i32* %posPrev1288, align 4
  %879 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %backPrev1289 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %879, i32 0, i32 7
  store i32 0, i32* %backPrev1289, align 4
  %880 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %prev1IsChar1290 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %880, i32 0, i32 2
  store i32 1, i32* %prev1IsChar1290, align 4
  %881 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %prev21291 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %881, i32 0, i32 3
  store i32 1, i32* %prev21291, align 4
  %882 = load i32, i32* %cur, align 4
  %883 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %posPrev21292 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %883, i32 0, i32 4
  store i32 %882, i32* %posPrev21292, align 4
  %884 = load i32, i32* %curBack, align 4
  %add1293 = add i32 %884, 4
  %885 = load %struct.COptimal*, %struct.COptimal** %opt1265, align 8
  %backPrev21294 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %885, i32 0, i32 5
  store i32 %add1293, i32* %backPrev21294, align 4
  br label %if.end.1295

if.end.1295:                                      ; preds = %if.then.1284, %while.end.1275
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.end.1295, %for.end.1181
  %886 = load i32, i32* %offs1053, align 4
  %add1297 = add i32 %886, 2
  store i32 %add1297, i32* %offs1053, align 4
  %887 = load i32, i32* %offs1053, align 4
  %888 = load i32, i32* %numPairs380, align 4
  %cmp1298 = icmp eq i32 %887, %888
  br i1 %cmp1298, label %if.then.1300, label %if.end.1301

if.then.1300:                                     ; preds = %if.end.1296
  br label %for.end.1325

if.end.1301:                                      ; preds = %if.end.1296
  %889 = load i32, i32* %offs1053, align 4
  %add1302 = add i32 %889, 1
  %idxprom1303 = zext i32 %add1302 to i64
  %890 = load i32*, i32** %matches, align 8
  %arrayidx1304 = getelementptr inbounds i32, i32* %890, i64 %idxprom1303
  %891 = load i32, i32* %arrayidx1304, align 4
  store i32 %891, i32* %curBack, align 4
  %892 = load i32, i32* %curBack, align 4
  %cmp1305 = icmp uge i32 %892, 128
  br i1 %cmp1305, label %if.then.1307, label %if.end.1321

if.then.1307:                                     ; preds = %if.end.1301
  %893 = load i32, i32* %curBack, align 4
  %sub1309 = sub i32 524287, %893
  %shr1310 = lshr i32 %sub1309, 31
  %sub1311 = sub i32 0, %shr1310
  %and1312 = and i32 12, %sub1311
  %add1313 = add i32 6, %and1312
  store i32 %add1313, i32* %i1308, align 4
  %894 = load i32, i32* %curBack, align 4
  %895 = load i32, i32* %i1308, align 4
  %shr1314 = lshr i32 %894, %895
  %idxprom1315 = zext i32 %shr1314 to i64
  %896 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %g_FastPos1316 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %896, i32 0, i32 12
  %arrayidx1317 = getelementptr inbounds [8192 x i8], [8192 x i8]* %g_FastPos1316, i32 0, i64 %idxprom1315
  %897 = load i8, i8* %arrayidx1317, align 1
  %conv1318 = zext i8 %897 to i32
  %898 = load i32, i32* %i1308, align 4
  %mul1319 = mul i32 %898, 2
  %add1320 = add i32 %conv1318, %mul1319
  store i32 %add1320, i32* %posSlot, align 4
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.then.1307, %if.end.1301
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.end.1321, %if.end.1144
  br label %for.inc.1323

for.inc.1323:                                     ; preds = %if.end.1322
  %899 = load i32, i32* %lenTest1054, align 4
  %inc1324 = add i32 %899, 1
  store i32 %inc1324, i32* %lenTest1054, align 4
  br label %for.cond.1090

for.end.1325:                                     ; preds = %if.then.1300
  br label %if.end.1326

if.end.1326:                                      ; preds = %for.end.1325, %if.end.1039
  br label %for.cond.379

return:                                           ; preds = %if.then.399, %if.then.392, %if.then.204, %if.then.104, %if.then.81, %if.then.71, %if.then.14, %if.then
  %900 = load i32, i32* %retval
  ret i32 %900
}

; Function Attrs: nounwind uwtable
define internal void @LitEnc_EncodeMatched(%struct.CRangeEnc* %p, i16* %probs, i32 %symbol, i32 %matchByte) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %probs.addr = alloca i16*, align 8
  %symbol.addr = alloca i32, align 4
  %matchByte.addr = alloca i32, align 4
  %offs = alloca i32, align 4
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %matchByte, i32* %matchByte.addr, align 4
  store i32 256, i32* %offs, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %or = or i32 %0, 256
  store i32 %or, i32* %symbol.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %matchByte.addr, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %matchByte.addr, align 4
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %3 = load i16*, i16** %probs.addr, align 8
  %4 = load i32, i32* %offs, align 4
  %5 = load i32, i32* %matchByte.addr, align 4
  %6 = load i32, i32* %offs, align 4
  %and = and i32 %5, %6
  %add = add i32 %4, %and
  %7 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %7, 8
  %add1 = add i32 %add, %shr
  %idx.ext = zext i32 %add1 to i64
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %idx.ext
  %8 = load i32, i32* %symbol.addr, align 4
  %shr2 = lshr i32 %8, 7
  %and3 = and i32 %shr2, 1
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %2, i16* %add.ptr, i32 %and3)
  %9 = load i32, i32* %symbol.addr, align 4
  %shl4 = shl i32 %9, 1
  store i32 %shl4, i32* %symbol.addr, align 4
  %10 = load i32, i32* %matchByte.addr, align 4
  %11 = load i32, i32* %symbol.addr, align 4
  %xor = xor i32 %10, %11
  %neg = xor i32 %xor, -1
  %12 = load i32, i32* %offs, align 4
  %and5 = and i32 %12, %neg
  store i32 %and5, i32* %offs, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ult i32 %13, 65536
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LenEnc_Encode2(%struct.CLenPriceEnc* %p, %struct.CRangeEnc* %rc, i32 %symbol, i32 %posState, i32 %updatePrice, i32* %ProbPrices) #0 {
entry:
  %p.addr = alloca %struct.CLenPriceEnc*, align 8
  %rc.addr = alloca %struct.CRangeEnc*, align 8
  %symbol.addr = alloca i32, align 4
  %posState.addr = alloca i32, align 4
  %updatePrice.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  store %struct.CLenPriceEnc* %p, %struct.CLenPriceEnc** %p.addr, align 8
  store %struct.CRangeEnc* %rc, %struct.CRangeEnc** %rc.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %posState, i32* %posState.addr, align 4
  store i32 %updatePrice, i32* %updatePrice.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  %0 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %0, i32 0, i32 0
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %2 = load i32, i32* %symbol.addr, align 4
  %3 = load i32, i32* %posState.addr, align 4
  call void @LenEnc_Encode(%struct.CLenEnc* %p1, %struct.CRangeEnc* %1, i32 %2, i32 %3)
  %4 = load i32, i32* %updatePrice.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %posState.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %counters = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %counters, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.CLenPriceEnc*, %struct.CLenPriceEnc** %p.addr, align 8
  %9 = load i32, i32* %posState.addr, align 4
  %10 = load i32*, i32** %ProbPrices.addr, align 8
  call void @LenPriceEnc_UpdateTable(%struct.CLenPriceEnc* %8, i32 %9, i32* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RcTree_Encode(%struct.CRangeEnc* %rc, i16* %probs, i32 %numBitLevels, i32 %symbol) #0 {
entry:
  %rc.addr = alloca %struct.CRangeEnc*, align 8
  %probs.addr = alloca i16*, align 8
  %numBitLevels.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct.CRangeEnc* %rc, %struct.CRangeEnc** %rc.addr, align 8
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %numBitLevels, i32* %numBitLevels.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 1, i32* %m, align 4
  %0 = load i32, i32* %numBitLevels.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %3 = load i32, i32* %symbol.addr, align 4
  %4 = load i32, i32* %i, align 4
  %shr = lshr i32 %3, %4
  %and = and i32 %shr, 1
  store i32 %and, i32* %bit, align 4
  %5 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %6 = load i16*, i16** %probs.addr, align 8
  %7 = load i32, i32* %m, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %idx.ext
  %8 = load i32, i32* %bit, align 4
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %5, i16* %add.ptr, i32 %8)
  %9 = load i32, i32* %m, align 4
  %shl = shl i32 %9, 1
  %10 = load i32, i32* %bit, align 4
  %or = or i32 %shl, %10
  store i32 %or, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RcTree_ReverseEncode(%struct.CRangeEnc* %rc, i16* %probs, i32 %numBitLevels, i32 %symbol) #0 {
entry:
  %rc.addr = alloca %struct.CRangeEnc*, align 8
  %probs.addr = alloca i16*, align 8
  %numBitLevels.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct.CRangeEnc* %rc, %struct.CRangeEnc** %rc.addr, align 8
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %numBitLevels, i32* %numBitLevels.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 1, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numBitLevels.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %symbol.addr, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %bit, align 4
  %3 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %4 = load i16*, i16** %probs.addr, align 8
  %5 = load i32, i32* %m, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i16, i16* %4, i64 %idx.ext
  %6 = load i32, i32* %bit, align 4
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %3, i16* %add.ptr, i32 %6)
  %7 = load i32, i32* %m, align 4
  %shl = shl i32 %7, 1
  %8 = load i32, i32* %bit, align 4
  %or = or i32 %shl, %8
  store i32 %or, i32* %m, align 4
  %9 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %9, 1
  store i32 %shr, i32* %symbol.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeDirectBits(%struct.CRangeEnc* %p, i32 %value, i32 %numBits) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %value.addr = alloca i32, align 4
  %numBits.addr = alloca i32, align 4
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %numBits, i32* %numBits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 0
  %1 = load i32, i32* %range, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %range, align 4
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range1 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %2, i32 0, i32 0
  %3 = load i32, i32* %range1, align 4
  %4 = load i32, i32* %value.addr, align 4
  %5 = load i32, i32* %numBits.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %numBits.addr, align 4
  %shr2 = lshr i32 %4, %dec
  %and = and i32 %shr2, 1
  %sub = sub i32 0, %and
  %and3 = and i32 %3, %sub
  %conv = zext i32 %and3 to i64
  %6 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %6, i32 0, i32 2
  %7 = load i64, i64* %low, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %low, align 8
  %8 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range4 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %8, i32 0, i32 0
  %9 = load i32, i32* %range4, align 4
  %cmp = icmp ult i32 %9, 16777216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %10 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %range6 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %10, i32 0, i32 0
  %11 = load i32, i32* %range6, align 4
  %shl = shl i32 %11, 8
  store i32 %shl, i32* %range6, align 4
  %12 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CRangeEnc* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %13 = load i32, i32* %numBits.addr, align 4
  %cmp7 = icmp ne i32 %13, 0
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteEndMarker(%struct.CLzmaEnc* %p, i32 %posState) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %posState.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %posState, i32* %posState.addr, align 4
  %0 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %0, i32 0, i32 43
  %1 = load i32, i32* %posState.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 18
  %3 = load i32, i32* %state, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isMatch = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 30
  %arrayidx = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isMatch, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx, i32 0, i64 %idxprom
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc, i16* %arrayidx2, i32 1)
  %5 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc3 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %5, i32 0, i32 43
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state4 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 18
  %7 = load i32, i32* %state4, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 31
  %arrayidx6 = getelementptr inbounds [12 x i16], [12 x i16]* %isRep, i32 0, i64 %idxprom5
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %rc3, i16* %arrayidx6, i32 0)
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state7 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 18
  %10 = load i32, i32* %state7, align 4
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [12 x i32], [12 x i32]* @kMatchNextStates, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %state10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 18
  store i32 %11, i32* %state10, align 4
  store i32 2, i32* %len, align 4
  %13 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %lenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %13, i32 0, i32 39
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc11 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 43
  %15 = load i32, i32* %len, align 4
  %sub = sub i32 %15, 2
  %16 = load i32, i32* %posState.addr, align 4
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %fastMode = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 42
  %18 = load i32, i32* %fastMode, align 4
  %tobool = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 13
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i32 0
  call void @LenEnc_Encode2(%struct.CLenPriceEnc* %lenEnc, %struct.CRangeEnc* %rc11, i32 %sub, i32 %16, i32 %lnot.ext, i32* %arraydecay)
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc12 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 43
  %21 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %21, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load i32, i32* %len, align 4
  %sub13 = sub i32 %22, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub13, %cond.true ], [ 3, %cond.false ]
  %idxprom14 = zext i32 %cond to i64
  %23 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posSlotEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %23, i32 0, i32 36
  %arrayidx15 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %posSlotEncoder, i32 0, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx15, i32 0, i32 0
  call void @RcTree_Encode(%struct.CRangeEnc* %rc12, i16* %arraydecay16, i32 6, i32 63)
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc17 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %24, i32 0, i32 43
  call void @RangeEnc_EncodeDirectBits(%struct.CRangeEnc* %rc17, i32 67108863, i32 26)
  %25 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %rc18 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %25, i32 0, i32 43
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %posAlignEncoder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 38
  %arraydecay19 = getelementptr inbounds [16 x i16], [16 x i16]* %posAlignEncoder, i32 0, i32 0
  call void @RcTree_ReverseEncode(%struct.CRangeEnc* %rc18, i16* %arraydecay19, i32 4, i32 15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_FlushData(%struct.CRangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %i = alloca i32, align 4
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CRangeEnc* %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_FlushStream(%struct.CRangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %num = alloca i64, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %res = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 9
  %1 = load i32, i32* %res, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %2, i32 0, i32 4
  %3 = load i8*, i8** %buf, align 8
  %4 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %4, i32 0, i32 6
  %5 = load i8*, i8** %bufBase, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %num, align 8
  %6 = load i64, i64* %num, align 8
  %7 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %outStream = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %7, i32 0, i32 7
  %8 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %8, i32 0, i32 0
  %9 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %10 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %outStream1 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %10, i32 0, i32 7
  %11 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream1, align 8
  %12 = bitcast %struct.ISeqOutStream* %11 to i8*
  %13 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase2 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %13, i32 0, i32 6
  %14 = load i8*, i8** %bufBase2, align 8
  %15 = load i64, i64* %num, align 8
  %call = call i64 %9(i8* %12, i8* %14, i64 %15)
  %cmp3 = icmp ne i64 %6, %call
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %res5 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %16, i32 0, i32 9
  store i32 9, i32* %res5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i64, i64* %num, align 8
  %18 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %processed = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %18, i32 0, i32 8
  %19 = load i64, i64* %processed, align 8
  %add = add i64 %19, %17
  store i64 %add, i64* %processed, align 8
  %20 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufBase7 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %20, i32 0, i32 6
  %21 = load i8*, i8** %bufBase7, align 8
  %22 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %buf8 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %22, i32 0, i32 4
  store i8* %21, i8** %buf8, align 8
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_ShiftLow(%struct.CRangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CRangeEnc*, align 8
  %temp = alloca i8, align 1
  %buf = alloca i8*, align 8
  store %struct.CRangeEnc* %p, %struct.CRangeEnc** %p.addr, align 8
  %0 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %0, i32 0, i32 2
  %1 = load i64, i64* %low, align 8
  %conv = trunc i64 %1 to i32
  %cmp = icmp ult i32 %conv, -16777216
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low2 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %2, i32 0, i32 2
  %3 = load i64, i64* %low2, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end.24

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cache = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %4, i32 0, i32 1
  %5 = load i8, i8* %cache, align 1
  store i8 %5, i8* %temp, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %6 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %buf6 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %6, i32 0, i32 4
  %7 = load i8*, i8** %buf6, align 8
  store i8* %7, i8** %buf, align 8
  %8 = load i8, i8* %temp, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low8 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %9, i32 0, i32 2
  %10 = load i64, i64* %low8, align 8
  %shr9 = lshr i64 %10, 32
  %conv10 = trunc i64 %shr9 to i8
  %conv11 = zext i8 %conv10 to i32
  %add = add nsw i32 %conv7, %conv11
  %conv12 = trunc i32 %add to i8
  %11 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %buf, align 8
  store i8 %conv12, i8* %11, align 1
  %12 = load i8*, i8** %buf, align 8
  %13 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %buf13 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %13, i32 0, i32 4
  store i8* %12, i8** %buf13, align 8
  %14 = load i8*, i8** %buf, align 8
  %15 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %bufLim = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %15, i32 0, i32 5
  %16 = load i8*, i8** %bufLim, align 8
  %cmp14 = icmp eq i8* %14, %16
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %do.body
  %17 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  call void @RangeEnc_FlushStream(%struct.CRangeEnc* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %do.body
  store i8 -1, i8* %temp, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %18 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cacheSize = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %18, i32 0, i32 3
  %19 = load i64, i64* %cacheSize, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %cacheSize, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low19 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %20, i32 0, i32 2
  %21 = load i64, i64* %low19, align 8
  %conv20 = trunc i64 %21 to i32
  %shr21 = lshr i32 %conv20, 24
  %conv22 = trunc i32 %shr21 to i8
  %22 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cache23 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %22, i32 0, i32 1
  store i8 %conv22, i8* %cache23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %lor.lhs.false
  %23 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %cacheSize25 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %23, i32 0, i32 3
  %24 = load i64, i64* %cacheSize25, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %cacheSize25, align 8
  %25 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low26 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %25, i32 0, i32 2
  %26 = load i64, i64* %low26, align 8
  %conv27 = trunc i64 %26 to i32
  %shl = shl i32 %conv27, 8
  %conv28 = zext i32 %shl to i64
  %27 = load %struct.CRangeEnc*, %struct.CRangeEnc** %p.addr, align 8
  %low29 = getelementptr inbounds %struct.CRangeEnc, %struct.CRangeEnc* %27, i32 0, i32 2
  store i64 %conv28, i64* %low29, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MovePos(%struct.CLzmaEnc* %p, i32 %num) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %num.addr = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %num.addr, align 4
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %additionalOffset = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 16
  %3 = load i32, i32* %additionalOffset, align 4
  %add = add i32 %3, %1
  store i32 %add, i32* %additionalOffset, align 4
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinder = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 0
  %Skip = getelementptr inbounds %struct._IMatchFinder, %struct._IMatchFinder* %matchFinder, i32 0, i32 5
  %5 = load void (i8*, i32)*, void (i8*, i32)** %Skip, align 8
  %6 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %matchFinderObj = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %6, i32 0, i32 1
  %7 = load i8*, i8** %matchFinderObj, align 8
  %8 = load i32, i32* %num.addr, align 4
  call void %5(i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @LitEnc_GetPriceMatched(i16* %probs, i32 %symbol, i32 %matchByte, i32* %ProbPrices) #0 {
entry:
  %probs.addr = alloca i16*, align 8
  %symbol.addr = alloca i32, align 4
  %matchByte.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  %price = alloca i32, align 4
  %offs = alloca i32, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %matchByte, i32* %matchByte.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 0, i32* %price, align 4
  store i32 256, i32* %offs, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %or = or i32 %0, 256
  store i32 %or, i32* %symbol.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %matchByte.addr, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %matchByte.addr, align 4
  %2 = load i32, i32* %offs, align 4
  %3 = load i32, i32* %matchByte.addr, align 4
  %4 = load i32, i32* %offs, align 4
  %and = and i32 %3, %4
  %add = add i32 %2, %and
  %5 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %5, 8
  %add1 = add i32 %add, %shr
  %idxprom = zext i32 %add1 to i64
  %6 = load i16*, i16** %probs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %8 = load i32, i32* %symbol.addr, align 4
  %shr2 = lshr i32 %8, 7
  %and3 = and i32 %shr2, 1
  %sub = sub nsw i32 0, %and3
  %and4 = and i32 %sub, 2047
  %xor = xor i32 %conv, %and4
  %shr5 = ashr i32 %xor, 4
  %idxprom6 = sext i32 %shr5 to i64
  %9 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %11 = load i32, i32* %price, align 4
  %add8 = add i32 %11, %10
  store i32 %add8, i32* %price, align 4
  %12 = load i32, i32* %symbol.addr, align 4
  %shl9 = shl i32 %12, 1
  store i32 %shl9, i32* %symbol.addr, align 4
  %13 = load i32, i32* %matchByte.addr, align 4
  %14 = load i32, i32* %symbol.addr, align 4
  %xor10 = xor i32 %13, %14
  %neg = xor i32 %xor10, -1
  %15 = load i32, i32* %offs, align 4
  %and11 = and i32 %15, %neg
  store i32 %and11, i32* %offs, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ult i32 %16, 65536
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %price, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @LitEnc_GetPrice(i16* %probs, i32 %symbol, i32* %ProbPrices) #0 {
entry:
  %probs.addr = alloca i16*, align 8
  %symbol.addr = alloca i32, align 4
  %ProbPrices.addr = alloca i32*, align 8
  %price = alloca i32, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32* %ProbPrices, i32** %ProbPrices.addr, align 8
  store i32 0, i32* %price, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %or = or i32 %0, 256
  store i32 %or, i32* %symbol.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %symbol.addr, align 4
  %shr = lshr i32 %1, 8
  %idxprom = zext i32 %shr to i64
  %2 = load i16*, i16** %probs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %4 = load i32, i32* %symbol.addr, align 4
  %shr1 = lshr i32 %4, 7
  %and = and i32 %shr1, 1
  %sub = sub nsw i32 0, %and
  %and2 = and i32 %sub, 2047
  %xor = xor i32 %conv, %and2
  %shr3 = ashr i32 %xor, 4
  %idxprom4 = sext i32 %shr3 to i64
  %5 = load i32*, i32** %ProbPrices.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %5, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %7 = load i32, i32* %price, align 4
  %add = add i32 %7, %6
  store i32 %add, i32* %price, align 4
  %8 = load i32, i32* %symbol.addr, align 4
  %shl = shl i32 %8, 1
  store i32 %shl, i32* %symbol.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ult i32 %9, 65536
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %price, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @GetRepLen1Price(%struct.CLzmaEnc* %p, i32 %state, i32 %posState) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %state.addr = alloca i32, align 4
  %posState.addr = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %posState, i32* %posState.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG0 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 32
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG0, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 4
  %idxprom1 = sext i32 %shr to i64
  %3 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %3, i32 0, i32 13
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %posState.addr, align 4
  %idxprom3 = zext i32 %5 to i64
  %6 = load i32, i32* %state.addr, align 4
  %idxprom4 = zext i32 %6 to i64
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep0Long = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 35
  %arrayidx5 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx5, i32 0, i64 %idxprom3
  %8 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %8 to i32
  %shr8 = ashr i32 %conv7, 4
  %idxprom9 = sext i32 %shr8 to i64
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 13
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices10, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx11, align 4
  %add = add i32 %4, %10
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i32 @GetPureRepPrice(%struct.CLzmaEnc* %p, i32 %repIndex, i32 %state, i32 %posState) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %repIndex.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %posState.addr = alloca i32, align 4
  %price = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %repIndex, i32* %repIndex.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %posState, i32* %posState.addr, align 4
  %0 = load i32, i32* %repIndex.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG0 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 32
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG0, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 4
  %idxprom1 = sext i32 %shr to i64
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 13
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %price, align 4
  %6 = load i32, i32* %posState.addr, align 4
  %idxprom3 = zext i32 %6 to i64
  %7 = load i32, i32* %state.addr, align 4
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRep0Long = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %8, i32 0, i32 35
  %arrayidx5 = getelementptr inbounds [12 x [16 x i16]], [12 x [16 x i16]]* %isRep0Long, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx5, i32 0, i64 %idxprom3
  %9 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %9 to i32
  %xor = xor i32 %conv7, 2047
  %shr8 = ashr i32 %xor, 4
  %idxprom9 = sext i32 %shr8 to i64
  %10 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices10 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %10, i32 0, i32 13
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices10, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32, i32* %price, align 4
  %add = add i32 %12, %11
  store i32 %add, i32* %price, align 4
  br label %if.end.53

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %state.addr, align 4
  %idxprom12 = zext i32 %13 to i64
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG013 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 32
  %arrayidx14 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG013, i32 0, i64 %idxprom12
  %15 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %15 to i32
  %xor16 = xor i32 %conv15, 2047
  %shr17 = ashr i32 %xor16, 4
  %idxprom18 = sext i32 %shr17 to i64
  %16 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices19 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %16, i32 0, i32 13
  %arrayidx20 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices19, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx20, align 4
  store i32 %17, i32* %price, align 4
  %18 = load i32, i32* %repIndex.addr, align 4
  %cmp21 = icmp eq i32 %18, 1
  br i1 %cmp21, label %if.then.23, label %if.else.32

if.then.23:                                       ; preds = %if.else
  %19 = load i32, i32* %state.addr, align 4
  %idxprom24 = zext i32 %19 to i64
  %20 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG1 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %20, i32 0, i32 33
  %arrayidx25 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG1, i32 0, i64 %idxprom24
  %21 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %21 to i32
  %shr27 = ashr i32 %conv26, 4
  %idxprom28 = sext i32 %shr27 to i64
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices29 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 13
  %arrayidx30 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices29, i32 0, i64 %idxprom28
  %23 = load i32, i32* %arrayidx30, align 4
  %24 = load i32, i32* %price, align 4
  %add31 = add i32 %24, %23
  store i32 %add31, i32* %price, align 4
  br label %if.end

if.else.32:                                       ; preds = %if.else
  %25 = load i32, i32* %state.addr, align 4
  %idxprom33 = zext i32 %25 to i64
  %26 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG134 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %26, i32 0, i32 33
  %arrayidx35 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG134, i32 0, i64 %idxprom33
  %27 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %27 to i32
  %xor37 = xor i32 %conv36, 2047
  %shr38 = ashr i32 %xor37, 4
  %idxprom39 = sext i32 %shr38 to i64
  %28 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices40 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %28, i32 0, i32 13
  %arrayidx41 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices40, i32 0, i64 %idxprom39
  %29 = load i32, i32* %arrayidx41, align 4
  %30 = load i32, i32* %price, align 4
  %add42 = add i32 %30, %29
  store i32 %add42, i32* %price, align 4
  %31 = load i32, i32* %state.addr, align 4
  %idxprom43 = zext i32 %31 to i64
  %32 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %isRepG2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %32, i32 0, i32 34
  %arrayidx44 = getelementptr inbounds [12 x i16], [12 x i16]* %isRepG2, i32 0, i64 %idxprom43
  %33 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %33 to i32
  %34 = load i32, i32* %repIndex.addr, align 4
  %sub = sub i32 %34, 2
  %sub46 = sub nsw i32 0, %sub
  %and = and i32 %sub46, 2047
  %xor47 = xor i32 %conv45, %and
  %shr48 = ashr i32 %xor47, 4
  %idxprom49 = sext i32 %shr48 to i64
  %35 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %ProbPrices50 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %35, i32 0, i32 13
  %arrayidx51 = getelementptr inbounds [128 x i32], [128 x i32]* %ProbPrices50, i32 0, i64 %idxprom49
  %36 = load i32, i32* %arrayidx51, align 4
  %37 = load i32, i32* %price, align 4
  %add52 = add i32 %37, %36
  store i32 %add52, i32* %price, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.23
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then
  %38 = load i32, i32* %price, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @Backward(%struct.CLzmaEnc* %p, i32* %backRes, i32 %cur) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %backRes.addr = alloca i32*, align 8
  %cur.addr = alloca i32, align 4
  %posMem = alloca i32, align 4
  %backMem = alloca i32, align 4
  %posPrev46 = alloca i32, align 4
  %backCur = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32* %backRes, i32** %backRes.addr, align 8
  store i32 %cur, i32* %cur.addr, align 4
  %0 = load i32, i32* %cur.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %1, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt, i32 0, i64 %idxprom
  %posPrev = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx, i32 0, i32 6
  %2 = load i32, i32* %posPrev, align 4
  store i32 %2, i32* %posMem, align 4
  %3 = load i32, i32* %cur.addr, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt2 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %4, i32 0, i32 11
  %arrayidx3 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt2, i32 0, i64 %idxprom1
  %backPrev = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx3, i32 0, i32 7
  %5 = load i32, i32* %backPrev, align 4
  store i32 %5, i32* %backMem, align 4
  %6 = load i32, i32* %cur.addr, align 4
  %7 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumEndIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %7, i32 0, i32 6
  store i32 %6, i32* %optimumEndIndex, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, i32* %cur.addr, align 4
  %idxprom4 = zext i32 %8 to i64
  %9 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt5 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %9, i32 0, i32 11
  %arrayidx6 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt5, i32 0, i64 %idxprom4
  %prev1IsChar = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx6, i32 0, i32 2
  %10 = load i32, i32* %prev1IsChar, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.45

if.then:                                          ; preds = %do.body
  %11 = load i32, i32* %posMem, align 4
  %idxprom7 = zext i32 %11 to i64
  %12 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt8 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %12, i32 0, i32 11
  %arrayidx9 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt8, i32 0, i64 %idxprom7
  %backPrev10 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx9, i32 0, i32 7
  store i32 -1, i32* %backPrev10, align 4
  %13 = load i32, i32* %posMem, align 4
  %idxprom11 = zext i32 %13 to i64
  %14 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt12 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %14, i32 0, i32 11
  %arrayidx13 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt12, i32 0, i64 %idxprom11
  %prev1IsChar14 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx13, i32 0, i32 2
  store i32 0, i32* %prev1IsChar14, align 4
  %15 = load i32, i32* %posMem, align 4
  %sub = sub i32 %15, 1
  %16 = load i32, i32* %posMem, align 4
  %idxprom15 = zext i32 %16 to i64
  %17 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt16 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %17, i32 0, i32 11
  %arrayidx17 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt16, i32 0, i64 %idxprom15
  %posPrev18 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx17, i32 0, i32 6
  store i32 %sub, i32* %posPrev18, align 4
  %18 = load i32, i32* %cur.addr, align 4
  %idxprom19 = zext i32 %18 to i64
  %19 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt20 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %19, i32 0, i32 11
  %arrayidx21 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt20, i32 0, i64 %idxprom19
  %prev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx21, i32 0, i32 3
  %20 = load i32, i32* %prev2, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %21 = load i32, i32* %posMem, align 4
  %sub24 = sub i32 %21, 1
  %idxprom25 = zext i32 %sub24 to i64
  %22 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt26 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %22, i32 0, i32 11
  %arrayidx27 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt26, i32 0, i64 %idxprom25
  %prev1IsChar28 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx27, i32 0, i32 2
  store i32 0, i32* %prev1IsChar28, align 4
  %23 = load i32, i32* %cur.addr, align 4
  %idxprom29 = zext i32 %23 to i64
  %24 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt30 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %24, i32 0, i32 11
  %arrayidx31 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt30, i32 0, i64 %idxprom29
  %posPrev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx31, i32 0, i32 4
  %25 = load i32, i32* %posPrev2, align 4
  %26 = load i32, i32* %posMem, align 4
  %sub32 = sub i32 %26, 1
  %idxprom33 = zext i32 %sub32 to i64
  %27 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt34 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %27, i32 0, i32 11
  %arrayidx35 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt34, i32 0, i64 %idxprom33
  %posPrev36 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx35, i32 0, i32 6
  store i32 %25, i32* %posPrev36, align 4
  %28 = load i32, i32* %cur.addr, align 4
  %idxprom37 = zext i32 %28 to i64
  %29 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt38 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %29, i32 0, i32 11
  %arrayidx39 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt38, i32 0, i64 %idxprom37
  %backPrev2 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx39, i32 0, i32 5
  %30 = load i32, i32* %backPrev2, align 4
  %31 = load i32, i32* %posMem, align 4
  %sub40 = sub i32 %31, 1
  %idxprom41 = zext i32 %sub40 to i64
  %32 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt42 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %32, i32 0, i32 11
  %arrayidx43 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt42, i32 0, i64 %idxprom41
  %backPrev44 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx43, i32 0, i32 7
  store i32 %30, i32* %backPrev44, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %do.body
  %33 = load i32, i32* %posMem, align 4
  store i32 %33, i32* %posPrev46, align 4
  %34 = load i32, i32* %backMem, align 4
  store i32 %34, i32* %backCur, align 4
  %35 = load i32, i32* %posPrev46, align 4
  %idxprom47 = zext i32 %35 to i64
  %36 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt48 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %36, i32 0, i32 11
  %arrayidx49 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt48, i32 0, i64 %idxprom47
  %backPrev50 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx49, i32 0, i32 7
  %37 = load i32, i32* %backPrev50, align 4
  store i32 %37, i32* %backMem, align 4
  %38 = load i32, i32* %posPrev46, align 4
  %idxprom51 = zext i32 %38 to i64
  %39 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt52 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %39, i32 0, i32 11
  %arrayidx53 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt52, i32 0, i64 %idxprom51
  %posPrev54 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx53, i32 0, i32 6
  %40 = load i32, i32* %posPrev54, align 4
  store i32 %40, i32* %posMem, align 4
  %41 = load i32, i32* %backCur, align 4
  %42 = load i32, i32* %posPrev46, align 4
  %idxprom55 = zext i32 %42 to i64
  %43 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt56 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %43, i32 0, i32 11
  %arrayidx57 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt56, i32 0, i64 %idxprom55
  %backPrev58 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx57, i32 0, i32 7
  store i32 %41, i32* %backPrev58, align 4
  %44 = load i32, i32* %cur.addr, align 4
  %45 = load i32, i32* %posPrev46, align 4
  %idxprom59 = zext i32 %45 to i64
  %46 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt60 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %46, i32 0, i32 11
  %arrayidx61 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt60, i32 0, i64 %idxprom59
  %posPrev62 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx61, i32 0, i32 6
  store i32 %44, i32* %posPrev62, align 4
  %47 = load i32, i32* %posPrev46, align 4
  store i32 %47, i32* %cur.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  %48 = load i32, i32* %cur.addr, align 4
  %cmp = icmp ne i32 %48, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt63 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %49, i32 0, i32 11
  %arrayidx64 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt63, i32 0, i64 0
  %backPrev65 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx64, i32 0, i32 7
  %50 = load i32, i32* %backPrev65, align 4
  %51 = load i32*, i32** %backRes.addr, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %opt66 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %52, i32 0, i32 11
  %arrayidx67 = getelementptr inbounds [4096 x %struct.COptimal], [4096 x %struct.COptimal]* %opt66, i32 0, i64 0
  %posPrev68 = getelementptr inbounds %struct.COptimal, %struct.COptimal* %arrayidx67, i32 0, i32 6
  %53 = load i32, i32* %posPrev68, align 4
  %54 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %54, i32 0, i32 7
  store i32 %53, i32* %optimumCurrentIndex, align 4
  %55 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %optimumCurrentIndex69 = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %55, i32 0, i32 7
  %56 = load i32, i32* %optimumCurrentIndex69, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @GetRepPrice(%struct.CLzmaEnc* %p, i32 %repIndex, i32 %len, i32 %state, i32 %posState) #0 {
entry:
  %p.addr = alloca %struct.CLzmaEnc*, align 8
  %repIndex.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %posState.addr = alloca i32, align 4
  store %struct.CLzmaEnc* %p, %struct.CLzmaEnc** %p.addr, align 8
  store i32 %repIndex, i32* %repIndex.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %posState, i32* %posState.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %0, 2
  %idxprom = zext i32 %sub to i64
  %1 = load i32, i32* %posState.addr, align 4
  %idxprom1 = zext i32 %1 to i64
  %2 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %repLenEnc = getelementptr inbounds %struct.CLzmaEnc, %struct.CLzmaEnc* %2, i32 0, i32 40
  %prices = getelementptr inbounds %struct.CLenPriceEnc, %struct.CLenPriceEnc* %repLenEnc, i32 0, i32 1
  %arrayidx = getelementptr inbounds [16 x [272 x i32]], [16 x [272 x i32]]* %prices, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [272 x i32], [272 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load %struct.CLzmaEnc*, %struct.CLzmaEnc** %p.addr, align 8
  %5 = load i32, i32* %repIndex.addr, align 4
  %6 = load i32, i32* %state.addr, align 4
  %7 = load i32, i32* %posState.addr, align 4
  %call = call i32 @GetPureRepPrice(%struct.CLzmaEnc* %4, i32 %5, i32 %6, i32 %7)
  %add = add i32 %3, %call
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal void @LenEnc_Encode(%struct.CLenEnc* %p, %struct.CRangeEnc* %rc, i32 %symbol, i32 %posState) #0 {
entry:
  %p.addr = alloca %struct.CLenEnc*, align 8
  %rc.addr = alloca %struct.CRangeEnc*, align 8
  %symbol.addr = alloca i32, align 4
  %posState.addr = alloca i32, align 4
  store %struct.CLenEnc* %p, %struct.CLenEnc** %p.addr, align 8
  store %struct.CRangeEnc* %rc, %struct.CRangeEnc** %rc.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %posState, i32* %posState.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %2 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %2, i32 0, i32 0
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %1, i16* %choice, i32 0)
  %3 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %4 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %low = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %low, i32 0, i32 0
  %5 = load i32, i32* %posState.addr, align 4
  %shl = shl i32 %5, 3
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  %6 = load i32, i32* %symbol.addr, align 4
  call void @RcTree_Encode(%struct.CRangeEnc* %3, i16* %add.ptr, i32 3, i32 %6)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %7 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %8 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice1 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %8, i32 0, i32 0
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %7, i16* %choice1, i32 1)
  %9 = load i32, i32* %symbol.addr, align 4
  %cmp2 = icmp ult i32 %9, 16
  br i1 %cmp2, label %if.then.3, label %if.else.8

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %11 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice2 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %11, i32 0, i32 1
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %10, i16* %choice2, i32 0)
  %12 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %13 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %mid = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %13, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [128 x i16], [128 x i16]* %mid, i32 0, i32 0
  %14 = load i32, i32* %posState.addr, align 4
  %shl5 = shl i32 %14, 3
  %idx.ext6 = zext i32 %shl5 to i64
  %add.ptr7 = getelementptr inbounds i16, i16* %arraydecay4, i64 %idx.ext6
  %15 = load i32, i32* %symbol.addr, align 4
  %sub = sub i32 %15, 8
  call void @RcTree_Encode(%struct.CRangeEnc* %12, i16* %add.ptr7, i32 3, i32 %sub)
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %16 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %17 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %choice29 = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %17, i32 0, i32 1
  call void @RangeEnc_EncodeBit(%struct.CRangeEnc* %16, i16* %choice29, i32 1)
  %18 = load %struct.CRangeEnc*, %struct.CRangeEnc** %rc.addr, align 8
  %19 = load %struct.CLenEnc*, %struct.CLenEnc** %p.addr, align 8
  %high = getelementptr inbounds %struct.CLenEnc, %struct.CLenEnc* %19, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [256 x i16], [256 x i16]* %high, i32 0, i32 0
  %20 = load i32, i32* %symbol.addr, align 4
  %sub11 = sub i32 %20, 8
  %sub12 = sub i32 %sub11, 8
  call void @RcTree_Encode(%struct.CRangeEnc* %18, i16* %arraydecay10, i32 8, i32 %sub12)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
