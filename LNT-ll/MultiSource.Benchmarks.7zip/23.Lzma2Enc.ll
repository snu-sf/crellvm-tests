; ModuleID = './MultiSource.Benchmarks.7zip/23.Lzma2Enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzma2EncProps = type { %struct._CLzmaEncProps, i64, i32, i32 }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CLzma2Enc = type { i8, %struct.CLzma2EncProps, i8*, %struct.ISzAlloc*, %struct.ISzAlloc*, [32 x %struct.CLzma2EncInt], %struct._CMtCoder }
%struct.CLzma2EncInt = type { i8*, i64, i8, i32, i32 }
%struct._CMtCoder = type { i64, i64, i32, %struct.ISeqInStream*, %struct.ISeqOutStream*, %struct.ICompressProgress*, %struct.ISzAlloc*, %struct.IMtCoderCallback*, %struct.CCriticalSection, i32, %struct.CMtProgress, [32 x %struct.CMtThread] }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ISeqOutStream = type { i64 (i8*, i8*, i64)* }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.IMtCoderCallback = type { i32 (i8*, i32, i8*, i64*, i8*, i64, i32)* }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.CMtProgress = type { i64, i64, %struct.ICompressProgress*, i32, %struct.CCriticalSection, [32 x i64], [32 x i64] }
%struct.CMtThread = type { %struct._CMtCoder*, i8*, i64, i8*, i64, i32, %struct.CLoopThread, i32, i32, %struct._CEvent, %struct._CEvent }
%struct.CLoopThread = type { %struct._CThread, %struct._CEvent, %struct._CEvent, i32, i32 (i8*)*, i8*, i32 }
%struct._CThread = type { i64, i32 }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.CMtCallbackImp = type { %struct.IMtCoderCallback, %struct.CLzma2Enc* }

; Function Attrs: nounwind uwtable
define void @Lzma2EncProps_Init(%struct.CLzma2EncProps* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzma2EncProps*, align 8
  store %struct.CLzma2EncProps* %p, %struct.CLzma2EncProps** %p.addr, align 8
  %0 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %0, i32 0, i32 0
  call void @LzmaEncProps_Init(%struct._CLzmaEncProps* %lzmaProps)
  %1 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numTotalThreads = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %1, i32 0, i32 3
  store i32 -1, i32* %numTotalThreads, align 4
  %2 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numBlockThreads = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %2, i32 0, i32 2
  store i32 -1, i32* %numBlockThreads, align 4
  %3 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %blockSize = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %3, i32 0, i32 1
  store i64 0, i64* %blockSize, align 8
  ret void
}

declare void @LzmaEncProps_Init(%struct._CLzmaEncProps*) #1

; Function Attrs: nounwind uwtable
define void @Lzma2EncProps_Normalize(%struct.CLzma2EncProps* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzma2EncProps*, align 8
  %t1 = alloca i32, align 4
  %t1n = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %lzmaProps = alloca %struct._CLzmaEncProps, align 4
  %dictSize = alloca i32, align 4
  %blockSize38 = alloca i64, align 8
  %kMinSize = alloca i32, align 4
  %kMaxSize = alloca i32, align 4
  store %struct.CLzma2EncProps* %p, %struct.CLzma2EncProps** %p.addr, align 8
  %0 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps1 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %0, i32 0, i32 0
  %1 = bitcast %struct._CLzmaEncProps* %lzmaProps to i8*
  %2 = bitcast %struct._CLzmaEncProps* %lzmaProps1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 48, i32 4, i1 false)
  call void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %lzmaProps)
  %numThreads = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps, i32 0, i32 11
  %3 = load i32, i32* %numThreads, align 4
  store i32 %3, i32* %t1n, align 4
  %4 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps2 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %4, i32 0, i32 0
  %numThreads3 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps2, i32 0, i32 11
  %5 = load i32, i32* %numThreads3, align 4
  store i32 %5, i32* %t1, align 4
  %6 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numBlockThreads = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %6, i32 0, i32 2
  %7 = load i32, i32* %numBlockThreads, align 4
  store i32 %7, i32* %t2, align 4
  %8 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numTotalThreads = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %8, i32 0, i32 3
  %9 = load i32, i32* %numTotalThreads, align 4
  store i32 %9, i32* %t3, align 4
  %10 = load i32, i32* %t2, align 4
  %cmp = icmp sgt i32 %10, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32, i32* %t2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %t3, align 4
  %cmp4 = icmp sle i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* %t2, align 4
  %cmp6 = icmp sle i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 1, i32* %t2, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  %13 = load i32, i32* %t1n, align 4
  %14 = load i32, i32* %t2, align 4
  %mul = mul nsw i32 %13, %14
  store i32 %mul, i32* %t3, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %t2, align 4
  %cmp9 = icmp sle i32 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %if.else
  %16 = load i32, i32* %t3, align 4
  %17 = load i32, i32* %t1n, align 4
  %div = sdiv i32 %16, %17
  store i32 %div, i32* %t2, align 4
  %18 = load i32, i32* %t2, align 4
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i32 1, i32* %t1, align 4
  %19 = load i32, i32* %t3, align 4
  store i32 %19, i32* %t2, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %20 = load i32, i32* %t2, align 4
  %cmp14 = icmp sgt i32 %20, 32
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 32, i32* %t2, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  br label %if.end.27

if.else.17:                                       ; preds = %if.else
  %21 = load i32, i32* %t1, align 4
  %cmp18 = icmp sle i32 %21, 0
  br i1 %cmp18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.else.17
  %22 = load i32, i32* %t3, align 4
  %23 = load i32, i32* %t2, align 4
  %div20 = sdiv i32 %22, %23
  store i32 %div20, i32* %t1, align 4
  %24 = load i32, i32* %t1, align 4
  %cmp21 = icmp eq i32 %24, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  store i32 1, i32* %t1, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.26

if.else.24:                                       ; preds = %if.else.17
  %25 = load i32, i32* %t1n, align 4
  %26 = load i32, i32* %t2, align 4
  %mul25 = mul nsw i32 %25, %26
  store i32 %mul25, i32* %t3, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.end.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.8
  %27 = load i32, i32* %t1, align 4
  %28 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps29 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %28, i32 0, i32 0
  %numThreads30 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps29, i32 0, i32 11
  store i32 %27, i32* %numThreads30, align 4
  %29 = load i32, i32* %t2, align 4
  %30 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numBlockThreads31 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %30, i32 0, i32 2
  store i32 %29, i32* %numBlockThreads31, align 4
  %31 = load i32, i32* %t3, align 4
  %32 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %numTotalThreads32 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %32, i32 0, i32 3
  store i32 %31, i32* %numTotalThreads32, align 4
  %33 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps33 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %33, i32 0, i32 0
  call void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %lzmaProps33)
  %34 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %blockSize = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %34, i32 0, i32 1
  %35 = load i64, i64* %blockSize, align 8
  %cmp34 = icmp eq i64 %35, 0
  br i1 %cmp34, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %if.end.28
  %36 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %lzmaProps36 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %36, i32 0, i32 0
  %dictSize37 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps36, i32 0, i32 1
  %37 = load i32, i32* %dictSize37, align 4
  store i32 %37, i32* %dictSize, align 4
  %38 = load i32, i32* %dictSize, align 4
  %conv = zext i32 %38 to i64
  %shl = shl i64 %conv, 2
  store i64 %shl, i64* %blockSize38, align 8
  store i32 1048576, i32* %kMinSize, align 4
  store i32 268435456, i32* %kMaxSize, align 4
  %39 = load i64, i64* %blockSize38, align 8
  %cmp39 = icmp ult i64 %39, 1048576
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.35
  store i64 1048576, i64* %blockSize38, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.35
  %40 = load i64, i64* %blockSize38, align 8
  %cmp43 = icmp ugt i64 %40, 268435456
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i64 268435456, i64* %blockSize38, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %41 = load i64, i64* %blockSize38, align 8
  %42 = load i32, i32* %dictSize, align 4
  %conv47 = zext i32 %42 to i64
  %cmp48 = icmp ult i64 %41, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.46
  %43 = load i32, i32* %dictSize, align 4
  %conv51 = zext i32 %43 to i64
  store i64 %conv51, i64* %blockSize38, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %44 = load i64, i64* %blockSize38, align 8
  %45 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %p.addr, align 8
  %blockSize53 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %45, i32 0, i32 1
  store i64 %44, i64* %blockSize53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %if.end.28
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @LzmaEncProps_Normalize(%struct._CLzmaEncProps*) #1

; Function Attrs: nounwind uwtable
define i8* @Lzma2Enc_Create(%struct.ISzAlloc* %alloc, %struct.ISzAlloc* %allocBig) #0 {
entry:
  %retval = alloca i8*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %allocBig.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzma2Enc*, align 8
  %i = alloca i32, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %allocBig, %struct.ISzAlloc** %allocBig.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 0
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %call = call i8* %1(i8* %3, i64 18456)
  %4 = bitcast i8* %call to %struct.CLzma2Enc*
  store %struct.CLzma2Enc* %4, %struct.CLzma2Enc** %p, align 8
  %5 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %cmp = icmp eq %struct.CLzma2Enc* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %6, i32 0, i32 1
  call void @Lzma2EncProps_Init(%struct.CLzma2EncProps* %props)
  %7 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props1 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %7, i32 0, i32 1
  call void @Lzma2EncProps_Normalize(%struct.CLzma2EncProps* %props1)
  %8 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %outBuf = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %8, i32 0, i32 2
  store i8* null, i8** %outBuf, align 8
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %10 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc2 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %10, i32 0, i32 3
  store %struct.ISzAlloc* %9, %struct.ISzAlloc** %alloc2, align 8
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig.addr, align 8
  %12 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %allocBig3 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %12, i32 0, i32 4
  store %struct.ISzAlloc* %11, %struct.ISzAlloc** %allocBig3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %cmp4 = icmp ult i32 %13, 32
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %coders = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %15, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x %struct.CLzma2EncInt], [32 x %struct.CLzma2EncInt]* %coders, i32 0, i64 %idxprom
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %arrayidx, i32 0, i32 0
  store i8* null, i8** %enc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %17, i32 0, i32 6
  call void @MtCoder_Construct(%struct._CMtCoder* %mtCoder)
  %18 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %19 = bitcast %struct.CLzma2Enc* %18 to i8*
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare void @MtCoder_Construct(%struct._CMtCoder*) #1

; Function Attrs: nounwind uwtable
define void @Lzma2Enc_Destroy(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzma2Enc*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.CLzma2EncInt*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Enc*
  store %struct.CLzma2Enc* %1, %struct.CLzma2Enc** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %coders = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %4, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x %struct.CLzma2EncInt], [32 x %struct.CLzma2EncInt]* %coders, i32 0, i64 %idxprom
  store %struct.CLzma2EncInt* %arrayidx, %struct.CLzma2EncInt** %t, align 8
  %5 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %5, i32 0, i32 0
  %6 = load i8*, i8** %enc, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc1 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %7, i32 0, i32 0
  %8 = load i8*, i8** %enc1, align 8
  %9 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %9, i32 0, i32 3
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %11 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %allocBig = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %11, i32 0, i32 4
  %12 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig, align 8
  call void @LzmaEnc_Destroy(i8* %8, %struct.ISzAlloc* %10, %struct.ISzAlloc* %12)
  %13 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc2 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %13, i32 0, i32 0
  store i8* null, i8** %enc2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %15, i32 0, i32 6
  call void @MtCoder_Destruct(%struct._CMtCoder* %mtCoder)
  %16 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc3 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %16, i32 0, i32 3
  %17 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc3, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %17, i32 0, i32 1
  %18 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %19 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc4 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %19, i32 0, i32 3
  %20 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc4, align 8
  %21 = bitcast %struct.ISzAlloc* %20 to i8*
  %22 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %outBuf = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %22, i32 0, i32 2
  %23 = load i8*, i8** %outBuf, align 8
  call void %18(i8* %21, i8* %23)
  %24 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc5 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %24, i32 0, i32 3
  %25 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc5, align 8
  %Free6 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %25, i32 0, i32 1
  %26 = load void (i8*, i8*)*, void (i8*, i8*)** %Free6, align 8
  %27 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc7 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %27, i32 0, i32 3
  %28 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc7, align 8
  %29 = bitcast %struct.ISzAlloc* %28 to i8*
  %30 = load i8*, i8** %pp.addr, align 8
  call void %26(i8* %29, i8* %30)
  ret void
}

declare void @LzmaEnc_Destroy(i8*, %struct.ISzAlloc*, %struct.ISzAlloc*) #1

declare void @MtCoder_Destruct(%struct._CMtCoder*) #1

; Function Attrs: nounwind uwtable
define i32 @Lzma2Enc_SetProps(i8* %pp, %struct.CLzma2EncProps* %props) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %props.addr = alloca %struct.CLzma2EncProps*, align 8
  %p = alloca %struct.CLzma2Enc*, align 8
  %lzmaProps = alloca %struct._CLzmaEncProps, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.CLzma2EncProps* %props, %struct.CLzma2EncProps** %props.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Enc*
  store %struct.CLzma2Enc* %1, %struct.CLzma2Enc** %p, align 8
  %2 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %props.addr, align 8
  %lzmaProps1 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %2, i32 0, i32 0
  %3 = bitcast %struct._CLzmaEncProps* %lzmaProps to i8*
  %4 = bitcast %struct._CLzmaEncProps* %lzmaProps1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 48, i32 4, i1 false)
  call void @LzmaEncProps_Normalize(%struct._CLzmaEncProps* %lzmaProps)
  %lc = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps, i32 0, i32 2
  %5 = load i32, i32* %lc, align 4
  %lp = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %lzmaProps, i32 0, i32 3
  %6 = load i32, i32* %lp, align 4
  %add = add nsw i32 %5, %6
  %cmp = icmp sgt i32 %add, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props2 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %7, i32 0, i32 1
  %8 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %props.addr, align 8
  %9 = bitcast %struct.CLzma2EncProps* %props2 to i8*
  %10 = bitcast %struct.CLzma2EncProps* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 64, i32 8, i1 false)
  %11 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props3 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %11, i32 0, i32 1
  call void @Lzma2EncProps_Normalize(%struct.CLzma2EncProps* %props3)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define zeroext i8 @Lzma2Enc_WriteProperties(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %p = alloca %struct.CLzma2Enc*, align 8
  %i = alloca i32, align 4
  %dicSize = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Enc*
  store %struct.CLzma2Enc* %1, %struct.CLzma2Enc** %p, align 8
  %2 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %2, i32 0, i32 1
  %lzmaProps = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props, i32 0, i32 0
  %call = call i32 @LzmaEncProps_GetDictSize(%struct._CLzmaEncProps* %lzmaProps)
  store i32 %call, i32* %dicSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %3, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %dicSize, align 4
  %5 = load i32, i32* %i, align 4
  %and = and i32 %5, 1
  %or = or i32 2, %and
  %6 = load i32, i32* %i, align 4
  %div = udiv i32 %6, 2
  %add = add i32 %div, 11
  %shl = shl i32 %or, %add
  %cmp1 = icmp ule i32 %4, %shl
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = trunc i32 %8 to i8
  ret i8 %conv
}

declare i32 @LzmaEncProps_GetDictSize(%struct._CLzmaEncProps*) #1

; Function Attrs: nounwind uwtable
define i32 @Lzma2Enc_Encode(i8* %pp, %struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.ICompressProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %p = alloca %struct.CLzma2Enc*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.CLzma2EncInt*, align 8
  %mtCallback = alloca %struct.CMtCallbackImp, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLzma2Enc*
  store %struct.CLzma2Enc* %1, %struct.CLzma2Enc** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %3, i32 0, i32 1
  %numBlockThreads = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props, i32 0, i32 2
  %4 = load i32, i32* %numBlockThreads, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %coders = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %6, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x %struct.CLzma2EncInt], [32 x %struct.CLzma2EncInt]* %coders, i32 0, i64 %idxprom
  store %struct.CLzma2EncInt* %arrayidx, %struct.CLzma2EncInt** %t, align 8
  %7 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %7, i32 0, i32 0
  %8 = load i8*, i8** %enc, align 8
  %cmp1 = icmp eq i8* %8, null
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %9 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %9, i32 0, i32 3
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %call = call i8* @LzmaEnc_Create(%struct.ISzAlloc* %10)
  %11 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc2 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %11, i32 0, i32 0
  store i8* %call, i8** %enc2, align 8
  %12 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %t, align 8
  %enc3 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %12, i32 0, i32 0
  %13 = load i8*, i8** %enc3, align 8
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props7 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %15, i32 0, i32 1
  %numBlockThreads8 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props7, i32 0, i32 2
  %16 = load i32, i32* %numBlockThreads8, align 4
  %cmp9 = icmp sle i32 %16, 1
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.end
  %17 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %coders11 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %17, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [32 x %struct.CLzma2EncInt], [32 x %struct.CLzma2EncInt]* %coders11, i32 0, i64 0
  %18 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %19 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %20 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %21 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %call13 = call i32 @Lzma2Enc_EncodeMt1(%struct.CLzma2EncInt* %arrayidx12, %struct.CLzma2Enc* %18, %struct.ISeqOutStream* %19, %struct.ISeqInStream* %20, %struct.ICompressProgress* %21)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  %funcTable = getelementptr inbounds %struct.CMtCallbackImp, %struct.CMtCallbackImp* %mtCallback, i32 0, i32 0
  %Code = getelementptr inbounds %struct.IMtCoderCallback, %struct.IMtCoderCallback* %funcTable, i32 0, i32 0
  store i32 (i8*, i32, i8*, i64*, i8*, i64, i32)* @MtCallbackImp_Code, i32 (i8*, i32, i8*, i64*, i8*, i64, i32)** %Code, align 8
  %22 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %lzma2Enc = getelementptr inbounds %struct.CMtCallbackImp, %struct.CMtCallbackImp* %mtCallback, i32 0, i32 1
  store %struct.CLzma2Enc* %22, %struct.CLzma2Enc** %lzma2Enc, align 8
  %23 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %24 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %24, i32 0, i32 6
  %progress15 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder, i32 0, i32 5
  store %struct.ICompressProgress* %23, %struct.ICompressProgress** %progress15, align 8
  %25 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %26 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder16 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %26, i32 0, i32 6
  %inStream17 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder16, i32 0, i32 3
  store %struct.ISeqInStream* %25, %struct.ISeqInStream** %inStream17, align 8
  %27 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %28 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder18 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %28, i32 0, i32 6
  %outStream19 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder18, i32 0, i32 4
  store %struct.ISeqOutStream* %27, %struct.ISeqOutStream** %outStream19, align 8
  %29 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %alloc20 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %29, i32 0, i32 3
  %30 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc20, align 8
  %31 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder21 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %31, i32 0, i32 6
  %alloc22 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder21, i32 0, i32 6
  store %struct.ISzAlloc* %30, %struct.ISzAlloc** %alloc22, align 8
  %funcTable23 = getelementptr inbounds %struct.CMtCallbackImp, %struct.CMtCallbackImp* %mtCallback, i32 0, i32 0
  %32 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder24 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %32, i32 0, i32 6
  %mtCallback25 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder24, i32 0, i32 7
  store %struct.IMtCoderCallback* %funcTable23, %struct.IMtCoderCallback** %mtCallback25, align 8
  %33 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props26 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %33, i32 0, i32 1
  %blockSize = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props26, i32 0, i32 1
  %34 = load i64, i64* %blockSize, align 8
  %35 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder27 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %35, i32 0, i32 6
  %blockSize28 = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder27, i32 0, i32 0
  store i64 %34, i64* %blockSize28, align 8
  %36 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props29 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %36, i32 0, i32 1
  %blockSize30 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props29, i32 0, i32 1
  %37 = load i64, i64* %blockSize30, align 8
  %38 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props31 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %38, i32 0, i32 1
  %blockSize32 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props31, i32 0, i32 1
  %39 = load i64, i64* %blockSize32, align 8
  %shr = lshr i64 %39, 10
  %add = add i64 %37, %shr
  %add33 = add i64 %add, 16
  %40 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder34 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %40, i32 0, i32 6
  %destBlockSize = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder34, i32 0, i32 1
  store i64 %add33, i64* %destBlockSize, align 8
  %41 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %props35 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %41, i32 0, i32 1
  %numBlockThreads36 = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %props35, i32 0, i32 2
  %42 = load i32, i32* %numBlockThreads36, align 4
  %43 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder37 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %43, i32 0, i32 6
  %numThreads = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder37, i32 0, i32 2
  store i32 %42, i32* %numThreads, align 4
  %44 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %p, align 8
  %mtCoder38 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %44, i32 0, i32 6
  %call39 = call i32 @MtCoder_Code(%struct._CMtCoder* %mtCoder38)
  store i32 %call39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then.5
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i8* @LzmaEnc_Create(%struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2Enc_EncodeMt1(%struct.CLzma2EncInt* %p, %struct.CLzma2Enc* %mainEncoder, %struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.ICompressProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2EncInt*, align 8
  %mainEncoder.addr = alloca %struct.CLzma2Enc*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %packTotal = alloca i64, align 8
  %res = alloca i32, align 4
  %__result__ = alloca i32, align 4
  %__result__11 = alloca i32, align 4
  %packSize = alloca i64, align 8
  %b = alloca i8, align 1
  store %struct.CLzma2EncInt* %p, %struct.CLzma2EncInt** %p.addr, align 8
  store %struct.CLzma2Enc* %mainEncoder, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store i64 0, i64* %packTotal, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %outBuf = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %0, i32 0, i32 2
  %1 = load i8*, i8** %outBuf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %alloc = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %2, i32 0, i32 3
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i32 0, i32 0
  %4 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %5 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %alloc1 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %5, i32 0, i32 3
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc1, align 8
  %7 = bitcast %struct.ISzAlloc* %6 to i8*
  %call = call i8* %4(i8* %7, i64 65552)
  %8 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %outBuf2 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %8, i32 0, i32 2
  store i8* %call, i8** %outBuf2, align 8
  %9 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %outBuf3 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %9, i32 0, i32 2
  %10 = load i8*, i8** %outBuf3, align 8
  %cmp4 = icmp eq i8* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %11 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %12 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %props = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %12, i32 0, i32 1
  %call7 = call i32 @Lzma2EncInt_Init(%struct.CLzma2EncInt* %11, %struct.CLzma2EncProps* %props)
  store i32 %call7, i32* %__result__, align 4
  %13 = load i32, i32* %__result__, align 4
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %14 = load i32, i32* %__result__, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %15 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %15, i32 0, i32 0
  %16 = load i8*, i8** %enc, align 8
  %17 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %18 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %alloc12 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %18, i32 0, i32 3
  %19 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc12, align 8
  %20 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %allocBig = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %20, i32 0, i32 4
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig, align 8
  %call13 = call i32 @LzmaEnc_PrepareForLzma2(i8* %16, %struct.ISeqInStream* %17, i32 2097152, %struct.ISzAlloc* %19, %struct.ISzAlloc* %21)
  store i32 %call13, i32* %__result__11, align 4
  %22 = load i32, i32* %__result__11, align 4
  %cmp14 = icmp ne i32 %22, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %23 = load i32, i32* %__result__11, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  br label %for.cond

for.cond:                                         ; preds = %if.end.28, %if.end.16
  store i64 65552, i64* %packSize, align 8
  %24 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %25 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder.addr, align 8
  %outBuf17 = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %25, i32 0, i32 2
  %26 = load i8*, i8** %outBuf17, align 8
  %27 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %call18 = call i32 @Lzma2EncInt_EncodeSubblock(%struct.CLzma2EncInt* %24, i8* %26, i64* %packSize, %struct.ISeqOutStream* %27)
  store i32 %call18, i32* %res, align 4
  %28 = load i32, i32* %res, align 4
  %cmp19 = icmp ne i32 %28, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.cond
  br label %for.end

if.end.21:                                        ; preds = %for.cond
  %29 = load i64, i64* %packSize, align 8
  %30 = load i64, i64* %packTotal, align 8
  %add = add i64 %30, %29
  store i64 %add, i64* %packTotal, align 8
  %31 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %32 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %32, i32 0, i32 1
  %33 = load i64, i64* %srcPos, align 8
  %34 = load i64, i64* %packTotal, align 8
  %call22 = call i32 @Progress(%struct.ICompressProgress* %31, i64 %33, i64 %34)
  store i32 %call22, i32* %res, align 4
  %35 = load i32, i32* %res, align 4
  %cmp23 = icmp ne i32 %35, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  br label %for.end

if.end.25:                                        ; preds = %if.end.21
  %36 = load i64, i64* %packSize, align 8
  %cmp26 = icmp eq i64 %36, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  br label %for.end

if.end.28:                                        ; preds = %if.end.25
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %if.then.24, %if.then.20
  %37 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc29 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %37, i32 0, i32 0
  %38 = load i8*, i8** %enc29, align 8
  call void @LzmaEnc_Finish(i8* %38)
  %39 = load i32, i32* %res, align 4
  %cmp30 = icmp eq i32 %39, 0
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %for.end
  store i8 0, i8* %b, align 1
  %40 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %40, i32 0, i32 0
  %41 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %42 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %43 = bitcast %struct.ISeqOutStream* %42 to i8*
  %call32 = call i64 %41(i8* %43, i8* %b, i64 1)
  %cmp33 = icmp ne i64 %call32, 1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  store i32 9, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.end
  %44 = load i32, i32* %res, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.34, %if.then.15, %if.then.9, %if.then.5
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @MtCallbackImp_Code(i8* %pp, i32 %index, i8* %dest, i64* %destSize, i8* %src, i64 %srcSize, i32 %finished) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destSize.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %finished.addr = alloca i32, align 4
  %imp = alloca %struct.CMtCallbackImp*, align 8
  %mainEncoder = alloca %struct.CLzma2Enc*, align 8
  %p = alloca %struct.CLzma2EncInt*, align 8
  %res = alloca i32, align 4
  %destLim = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %__result__3 = alloca i32, align 4
  %packSize = alloca i64, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destSize, i64** %destSize.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store i32 %finished, i32* %finished.addr, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CMtCallbackImp*
  store %struct.CMtCallbackImp* %1, %struct.CMtCallbackImp** %imp, align 8
  %2 = load %struct.CMtCallbackImp*, %struct.CMtCallbackImp** %imp, align 8
  %lzma2Enc = getelementptr inbounds %struct.CMtCallbackImp, %struct.CMtCallbackImp* %2, i32 0, i32 1
  %3 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %lzma2Enc, align 8
  store %struct.CLzma2Enc* %3, %struct.CLzma2Enc** %mainEncoder, align 8
  %4 = load i32, i32* %index.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder, align 8
  %coders = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x %struct.CLzma2EncInt], [32 x %struct.CLzma2EncInt]* %coders, i32 0, i64 %idxprom
  store %struct.CLzma2EncInt* %arrayidx, %struct.CLzma2EncInt** %p, align 8
  store i32 0, i32* %res, align 4
  %6 = load i64*, i64** %destSize.addr, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %destLim, align 8
  %8 = load i64*, i64** %destSize.addr, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %srcSize.addr, align 8
  %cmp = icmp ne i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %10 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %11 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder, align 8
  %props = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %11, i32 0, i32 1
  %call = call i32 @Lzma2EncInt_Init(%struct.CLzma2EncInt* %10, %struct.CLzma2EncProps* %props)
  store i32 %call, i32* %__result__, align 4
  %12 = load i32, i32* %__result__, align 4
  %cmp1 = icmp ne i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %__result__, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %14, i32 0, i32 0
  %15 = load i8*, i8** %enc, align 8
  %16 = load i8*, i8** %src.addr, align 8
  %17 = load i64, i64* %srcSize.addr, align 8
  %18 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder, align 8
  %alloc = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %18, i32 0, i32 3
  %19 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %20 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder, align 8
  %allocBig = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %20, i32 0, i32 4
  %21 = load %struct.ISzAlloc*, %struct.ISzAlloc** %allocBig, align 8
  %call4 = call i32 @LzmaEnc_MemPrepare(i8* %15, i8* %16, i64 %17, i32 2097152, %struct.ISzAlloc* %19, %struct.ISzAlloc* %21)
  store i32 %call4, i32* %__result__3, align 4
  %22 = load i32, i32* %__result__3, align 4
  %cmp5 = icmp ne i32 %22, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %23 = load i32, i32* %__result__3, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end.7
  %24 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %srcPos = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %24, i32 0, i32 1
  %25 = load i64, i64* %srcPos, align 8
  %26 = load i64, i64* %srcSize.addr, align 8
  %cmp8 = icmp ult i64 %25, %26
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i64, i64* %destLim, align 8
  %28 = load i64*, i64** %destSize.addr, align 8
  %29 = load i64, i64* %28, align 8
  %sub = sub i64 %27, %29
  store i64 %sub, i64* %packSize, align 8
  %30 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %31 = load i8*, i8** %dest.addr, align 8
  %32 = load i64*, i64** %destSize.addr, align 8
  %33 = load i64, i64* %32, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %33
  %call9 = call i32 @Lzma2EncInt_EncodeSubblock(%struct.CLzma2EncInt* %30, i8* %add.ptr, i64* %packSize, %struct.ISeqOutStream* null)
  store i32 %call9, i32* %res, align 4
  %34 = load i32, i32* %res, align 4
  %cmp10 = icmp ne i32 %34, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %35 = load i64, i64* %packSize, align 8
  %36 = load i64*, i64** %destSize.addr, align 8
  %37 = load i64, i64* %36, align 8
  %add = add i64 %37, %35
  store i64 %add, i64* %36, align 8
  %38 = load i64, i64* %packSize, align 8
  %cmp13 = icmp eq i64 %38, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i32 11, i32* %res, align 4
  br label %while.end

if.end.15:                                        ; preds = %if.end.12
  %39 = load %struct.CLzma2Enc*, %struct.CLzma2Enc** %mainEncoder, align 8
  %mtCoder = getelementptr inbounds %struct.CLzma2Enc, %struct.CLzma2Enc* %39, i32 0, i32 6
  %mtProgress = getelementptr inbounds %struct._CMtCoder, %struct._CMtCoder* %mtCoder, i32 0, i32 10
  %40 = load i32, i32* %index.addr, align 4
  %41 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %srcPos16 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %41, i32 0, i32 1
  %42 = load i64, i64* %srcPos16, align 8
  %43 = load i64*, i64** %destSize.addr, align 8
  %44 = load i64, i64* %43, align 8
  %call17 = call i32 @MtProgress_Set(%struct.CMtProgress* %mtProgress, i32 %40, i64 %42, i64 %44)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 10, i32* %res, align 4
  br label %while.end

if.end.20:                                        ; preds = %if.end.15
  br label %while.cond

while.end:                                        ; preds = %if.then.19, %if.then.14, %if.then.11, %while.cond
  %45 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p, align 8
  %enc21 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %45, i32 0, i32 0
  %46 = load i8*, i8** %enc21, align 8
  call void @LzmaEnc_Finish(i8* %46)
  %47 = load i32, i32* %res, align 4
  %cmp22 = icmp ne i32 %47, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.end
  %48 = load i32, i32* %res, align 4
  store i32 %48, i32* %retval
  br label %return

if.end.24:                                        ; preds = %while.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %49 = load i32, i32* %finished.addr, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.25
  %50 = load i64*, i64** %destSize.addr, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %destLim, align 8
  %cmp27 = icmp eq i64 %51, %52
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.26
  store i32 7, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.26
  %53 = load i64*, i64** %destSize.addr, align 8
  %54 = load i64, i64* %53, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %53, align 8
  %55 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8 0, i8* %arrayidx30, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.25
  %56 = load i32, i32* %res, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.28, %if.then.23, %if.then.6, %if.then.2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @MtCoder_Code(%struct._CMtCoder*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2EncInt_Init(%struct.CLzma2EncInt* %p, %struct.CLzma2EncProps* %props) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2EncInt*, align 8
  %props.addr = alloca %struct.CLzma2EncProps*, align 8
  %propsEncoded = alloca [5 x i8], align 1
  %propsSize = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %__result__1 = alloca i32, align 4
  store %struct.CLzma2EncInt* %p, %struct.CLzma2EncInt** %p.addr, align 8
  store %struct.CLzma2EncProps* %props, %struct.CLzma2EncProps** %props.addr, align 8
  store i64 5, i64* %propsSize, align 8
  %0 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %0, i32 0, i32 0
  %1 = load i8*, i8** %enc, align 8
  %2 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %props.addr, align 8
  %lzmaProps = getelementptr inbounds %struct.CLzma2EncProps, %struct.CLzma2EncProps* %2, i32 0, i32 0
  %call = call i32 @LzmaEnc_SetProps(i8* %1, %struct._CLzmaEncProps* %lzmaProps)
  store i32 %call, i32* %__result__, align 4
  %3 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %__result__, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc2 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %5, i32 0, i32 0
  %6 = load i8*, i8** %enc2, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %propsEncoded, i32 0, i32 0
  %call3 = call i32 @LzmaEnc_WriteProperties(i8* %6, i8* %arraydecay, i64* %propsSize)
  store i32 %call3, i32* %__result__1, align 4
  %7 = load i32, i32* %__result__1, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %__result__1, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %9, i32 0, i32 1
  store i64 0, i64* %srcPos, align 8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %propsEncoded, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %props7 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %11, i32 0, i32 2
  store i8 %10, i8* %props7, align 1
  %12 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %12, i32 0, i32 3
  store i32 1, i32* %needInitState, align 4
  %13 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitProp = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %13, i32 0, i32 4
  store i32 1, i32* %needInitProp, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @LzmaEnc_PrepareForLzma2(i8*, %struct.ISeqInStream*, i32, %struct.ISzAlloc*, %struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2EncInt_EncodeSubblock(%struct.CLzma2EncInt* %p, i8* %outBuf, i64* %packSizeRes, %struct.ISeqOutStream* %outStream) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2EncInt*, align 8
  %outBuf.addr = alloca i8*, align 8
  %packSizeRes.addr = alloca i64*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %packSizeLimit = alloca i64, align 8
  %packSize = alloca i64, align 8
  %unpackSize = alloca i32, align 4
  %lzHeaderSize = alloca i32, align 4
  %useCopyBlock = alloca i32, align 4
  %res = alloca i32, align 4
  %destPos = alloca i64, align 8
  %u = alloca i32, align 4
  %destPos72 = alloca i64, align 8
  %u73 = alloca i32, align 4
  %pm = alloca i32, align 4
  %mode = alloca i32, align 4
  store %struct.CLzma2EncInt* %p, %struct.CLzma2EncInt** %p.addr, align 8
  store i8* %outBuf, i8** %outBuf.addr, align 8
  store i64* %packSizeRes, i64** %packSizeRes.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  %0 = load i64*, i64** %packSizeRes.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %packSizeLimit, align 8
  %2 = load i64, i64* %packSizeLimit, align 8
  store i64 %2, i64* %packSize, align 8
  store i32 2097152, i32* %unpackSize, align 4
  %3 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitProp = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %3, i32 0, i32 4
  %4 = load i32, i32* %needInitProp, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 5, %cond
  store i32 %add, i32* %lzHeaderSize, align 4
  %5 = load i64*, i64** %packSizeRes.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %packSize, align 8
  %7 = load i32, i32* %lzHeaderSize, align 4
  %conv = zext i32 %7 to i64
  %cmp = icmp ult i64 %6, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %lzHeaderSize, align 4
  %conv2 = zext i32 %8 to i64
  %9 = load i64, i64* %packSize, align 8
  %sub = sub i64 %9, %conv2
  store i64 %sub, i64* %packSize, align 8
  %10 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %10, i32 0, i32 0
  %11 = load i8*, i8** %enc, align 8
  call void @LzmaEnc_SaveState(i8* %11)
  %12 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc3 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %12, i32 0, i32 0
  %13 = load i8*, i8** %enc3, align 8
  %14 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %14, i32 0, i32 3
  %15 = load i32, i32* %needInitState, align 4
  %16 = load i8*, i8** %outBuf.addr, align 8
  %17 = load i32, i32* %lzHeaderSize, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %call = call i32 @LzmaEnc_CodeOneMemBlock(i8* %13, i32 %15, i8* %add.ptr, i64* %packSize, i32 65536, i32* %unpackSize)
  store i32 %call, i32* %res, align 4
  %18 = load i32, i32* %unpackSize, align 4
  %cmp4 = icmp eq i32 %18, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %19 = load i32, i32* %res, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %20 = load i32, i32* %res, align 4
  %cmp8 = icmp eq i32 %20, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %21 = load i64, i64* %packSize, align 8
  %add11 = add i64 %21, 2
  %22 = load i32, i32* %unpackSize, align 4
  %conv12 = zext i32 %22 to i64
  %cmp13 = icmp uge i64 %add11, %conv12
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.10
  %23 = load i64, i64* %packSize, align 8
  %cmp15 = icmp ugt i64 %23, 65536
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.10
  %24 = phi i1 [ true, %if.then.10 ], [ %cmp15, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, i32* %useCopyBlock, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  %25 = load i32, i32* %res, align 4
  %cmp17 = icmp ne i32 %25, 7
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %26 = load i32, i32* %res, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.else
  store i32 0, i32* %res, align 4
  store i32 1, i32* %useCopyBlock, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %lor.end
  %27 = load i32, i32* %useCopyBlock, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %if.then.23, label %if.end.71

if.then.23:                                       ; preds = %if.end.21
  store i64 0, i64* %destPos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %if.then.23
  %28 = load i32, i32* %unpackSize, align 4
  %cmp24 = icmp ugt i32 %28, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %unpackSize, align 4
  %cmp26 = icmp ult i32 %29, 65536
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %30 = load i32, i32* %unpackSize, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi i32 [ %30, %cond.true ], [ 65536, %cond.false ]
  store i32 %cond28, i32* %u, align 4
  %31 = load i64, i64* %packSizeLimit, align 8
  %32 = load i64, i64* %destPos, align 8
  %sub29 = sub i64 %31, %32
  %33 = load i32, i32* %u, align 4
  %add30 = add i32 %33, 3
  %conv31 = zext i32 %add30 to i64
  %cmp32 = icmp ult i64 %sub29, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end
  store i32 7, i32* %retval
  br label %return

if.end.35:                                        ; preds = %cond.end
  %34 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %34, i32 0, i32 1
  %35 = load i64, i64* %srcPos, align 8
  %cmp36 = icmp eq i64 %35, 0
  %cond38 = select i1 %cmp36, i32 1, i32 2
  %conv39 = trunc i32 %cond38 to i8
  %36 = load i64, i64* %destPos, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %destPos, align 8
  %37 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %36
  store i8 %conv39, i8* %arrayidx, align 1
  %38 = load i32, i32* %u, align 4
  %sub40 = sub i32 %38, 1
  %shr = lshr i32 %sub40, 8
  %conv41 = trunc i32 %shr to i8
  %39 = load i64, i64* %destPos, align 8
  %inc42 = add i64 %39, 1
  store i64 %inc42, i64* %destPos, align 8
  %40 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 %conv41, i8* %arrayidx43, align 1
  %41 = load i32, i32* %u, align 4
  %sub44 = sub i32 %41, 1
  %conv45 = trunc i32 %sub44 to i8
  %42 = load i64, i64* %destPos, align 8
  %inc46 = add i64 %42, 1
  store i64 %inc46, i64* %destPos, align 8
  %43 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8 %conv45, i8* %arrayidx47, align 1
  %44 = load i8*, i8** %outBuf.addr, align 8
  %45 = load i64, i64* %destPos, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %44, i64 %45
  %46 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc49 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %46, i32 0, i32 0
  %47 = load i8*, i8** %enc49, align 8
  %call50 = call i8* @LzmaEnc_GetCurBuf(i8* %47)
  %48 = load i32, i32* %unpackSize, align 4
  %idx.ext51 = zext i32 %48 to i64
  %idx.neg = sub i64 0, %idx.ext51
  %add.ptr52 = getelementptr inbounds i8, i8* %call50, i64 %idx.neg
  %49 = load i32, i32* %u, align 4
  %conv53 = zext i32 %49 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr48, i8* %add.ptr52, i64 %conv53, i32 1, i1 false)
  %50 = load i32, i32* %u, align 4
  %51 = load i32, i32* %unpackSize, align 4
  %sub54 = sub i32 %51, %50
  store i32 %sub54, i32* %unpackSize, align 4
  %52 = load i32, i32* %u, align 4
  %conv55 = zext i32 %52 to i64
  %53 = load i64, i64* %destPos, align 8
  %add56 = add i64 %53, %conv55
  store i64 %add56, i64* %destPos, align 8
  %54 = load i32, i32* %u, align 4
  %conv57 = zext i32 %54 to i64
  %55 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos58 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %55, i32 0, i32 1
  %56 = load i64, i64* %srcPos58, align 8
  %add59 = add i64 %56, %conv57
  store i64 %add59, i64* %srcPos58, align 8
  %57 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %tobool60 = icmp ne %struct.ISeqOutStream* %57, null
  br i1 %tobool60, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %if.end.35
  %58 = load i64, i64* %destPos, align 8
  %59 = load i64*, i64** %packSizeRes.addr, align 8
  %60 = load i64, i64* %59, align 8
  %add62 = add i64 %60, %58
  store i64 %add62, i64* %59, align 8
  %61 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %61, i32 0, i32 0
  %62 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %63 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %64 = bitcast %struct.ISeqOutStream* %63 to i8*
  %65 = load i8*, i8** %outBuf.addr, align 8
  %66 = load i64, i64* %destPos, align 8
  %call63 = call i64 %62(i8* %64, i8* %65, i64 %66)
  %67 = load i64, i64* %destPos, align 8
  %cmp64 = icmp ne i64 %call63, %67
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.61
  store i32 9, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.then.61
  store i64 0, i64* %destPos, align 8
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.35
  %68 = load i64, i64* %destPos, align 8
  %69 = load i64*, i64** %packSizeRes.addr, align 8
  store i64 %68, i64* %69, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %70 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %enc70 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %70, i32 0, i32 0
  %71 = load i8*, i8** %enc70, align 8
  call void @LzmaEnc_RestoreState(i8* %71)
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.21
  store i64 0, i64* %destPos72, align 8
  %72 = load i32, i32* %unpackSize, align 4
  %sub74 = sub i32 %72, 1
  store i32 %sub74, i32* %u73, align 4
  %73 = load i64, i64* %packSize, align 8
  %sub75 = sub i64 %73, 1
  %conv76 = trunc i64 %sub75 to i32
  store i32 %conv76, i32* %pm, align 4
  %74 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos77 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %74, i32 0, i32 1
  %75 = load i64, i64* %srcPos77, align 8
  %cmp78 = icmp eq i64 %75, 0
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.end.71
  br label %cond.end.91

cond.false.81:                                    ; preds = %if.end.71
  %76 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitState82 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %76, i32 0, i32 3
  %77 = load i32, i32* %needInitState82, align 4
  %tobool83 = icmp ne i32 %77, 0
  br i1 %tobool83, label %cond.true.84, label %cond.false.88

cond.true.84:                                     ; preds = %cond.false.81
  %78 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitProp85 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %78, i32 0, i32 4
  %79 = load i32, i32* %needInitProp85, align 4
  %tobool86 = icmp ne i32 %79, 0
  %cond87 = select i1 %tobool86, i32 2, i32 1
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.false.81
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.84
  %cond90 = phi i32 [ %cond87, %cond.true.84 ], [ 0, %cond.false.88 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.80
  %cond92 = phi i32 [ 3, %cond.true.80 ], [ %cond90, %cond.end.89 ]
  store i32 %cond92, i32* %mode, align 4
  %80 = load i32, i32* %mode, align 4
  %shl = shl i32 %80, 5
  %or = or i32 128, %shl
  %81 = load i32, i32* %u73, align 4
  %shr93 = lshr i32 %81, 16
  %and = and i32 %shr93, 31
  %or94 = or i32 %or, %and
  %conv95 = trunc i32 %or94 to i8
  %82 = load i64, i64* %destPos72, align 8
  %inc96 = add i64 %82, 1
  store i64 %inc96, i64* %destPos72, align 8
  %83 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8 %conv95, i8* %arrayidx97, align 1
  %84 = load i32, i32* %u73, align 4
  %shr98 = lshr i32 %84, 8
  %conv99 = trunc i32 %shr98 to i8
  %85 = load i64, i64* %destPos72, align 8
  %inc100 = add i64 %85, 1
  store i64 %inc100, i64* %destPos72, align 8
  %86 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8 %conv99, i8* %arrayidx101, align 1
  %87 = load i32, i32* %u73, align 4
  %conv102 = trunc i32 %87 to i8
  %88 = load i64, i64* %destPos72, align 8
  %inc103 = add i64 %88, 1
  store i64 %inc103, i64* %destPos72, align 8
  %89 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8 %conv102, i8* %arrayidx104, align 1
  %90 = load i32, i32* %pm, align 4
  %shr105 = lshr i32 %90, 8
  %conv106 = trunc i32 %shr105 to i8
  %91 = load i64, i64* %destPos72, align 8
  %inc107 = add i64 %91, 1
  store i64 %inc107, i64* %destPos72, align 8
  %92 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8 %conv106, i8* %arrayidx108, align 1
  %93 = load i32, i32* %pm, align 4
  %conv109 = trunc i32 %93 to i8
  %94 = load i64, i64* %destPos72, align 8
  %inc110 = add i64 %94, 1
  store i64 %inc110, i64* %destPos72, align 8
  %95 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8 %conv109, i8* %arrayidx111, align 1
  %96 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitProp112 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %96, i32 0, i32 4
  %97 = load i32, i32* %needInitProp112, align 4
  %tobool113 = icmp ne i32 %97, 0
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %cond.end.91
  %98 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %props = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %98, i32 0, i32 2
  %99 = load i8, i8* %props, align 1
  %100 = load i64, i64* %destPos72, align 8
  %inc115 = add i64 %100, 1
  store i64 %inc115, i64* %destPos72, align 8
  %101 = load i8*, i8** %outBuf.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8 %99, i8* %arrayidx116, align 1
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %cond.end.91
  %102 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitProp118 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %102, i32 0, i32 4
  store i32 0, i32* %needInitProp118, align 4
  %103 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %needInitState119 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %103, i32 0, i32 3
  store i32 0, i32* %needInitState119, align 4
  %104 = load i64, i64* %packSize, align 8
  %105 = load i64, i64* %destPos72, align 8
  %add120 = add i64 %105, %104
  store i64 %add120, i64* %destPos72, align 8
  %106 = load i32, i32* %unpackSize, align 4
  %conv121 = zext i32 %106 to i64
  %107 = load %struct.CLzma2EncInt*, %struct.CLzma2EncInt** %p.addr, align 8
  %srcPos122 = getelementptr inbounds %struct.CLzma2EncInt, %struct.CLzma2EncInt* %107, i32 0, i32 1
  %108 = load i64, i64* %srcPos122, align 8
  %add123 = add i64 %108, %conv121
  store i64 %add123, i64* %srcPos122, align 8
  %109 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %tobool124 = icmp ne %struct.ISeqOutStream* %109, null
  br i1 %tobool124, label %if.then.125, label %if.end.132

if.then.125:                                      ; preds = %if.end.117
  %110 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %Write126 = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %110, i32 0, i32 0
  %111 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write126, align 8
  %112 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %113 = bitcast %struct.ISeqOutStream* %112 to i8*
  %114 = load i8*, i8** %outBuf.addr, align 8
  %115 = load i64, i64* %destPos72, align 8
  %call127 = call i64 %111(i8* %113, i8* %114, i64 %115)
  %116 = load i64, i64* %destPos72, align 8
  %cmp128 = icmp ne i64 %call127, %116
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.125
  store i32 9, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.then.125
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.117
  %117 = load i64, i64* %destPos72, align 8
  %118 = load i64*, i64** %packSizeRes.addr, align 8
  store i64 %117, i64* %118, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.130, %while.end, %if.then.66, %if.then.34, %if.then.19, %if.then.6, %if.then
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define internal i32 @Progress(%struct.ICompressProgress* %p, i64 %inSize, i64 %outSize) #0 {
entry:
  %p.addr = alloca %struct.ICompressProgress*, align 8
  %inSize.addr = alloca i64, align 8
  %outSize.addr = alloca i64, align 8
  store %struct.ICompressProgress* %p, %struct.ICompressProgress** %p.addr, align 8
  store i64 %inSize, i64* %inSize.addr, align 8
  store i64 %outSize, i64* %outSize.addr, align 8
  %0 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %tobool = icmp ne %struct.ICompressProgress* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %Progress = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %1, i32 0, i32 0
  %2 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %Progress, align 8
  %3 = load %struct.ICompressProgress*, %struct.ICompressProgress** %p.addr, align 8
  %4 = bitcast %struct.ICompressProgress* %3 to i8*
  %5 = load i64, i64* %inSize.addr, align 8
  %6 = load i64, i64* %outSize.addr, align 8
  %call = call i32 %2(i8* %4, i64 %5, i64 %6)
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %cond = select i1 %7, i32 10, i32 0
  ret i32 %cond
}

declare void @LzmaEnc_Finish(i8*) #1

declare i32 @LzmaEnc_SetProps(i8*, %struct._CLzmaEncProps*) #1

declare i32 @LzmaEnc_WriteProperties(i8*, i8*, i64*) #1

declare void @LzmaEnc_SaveState(i8*) #1

declare i32 @LzmaEnc_CodeOneMemBlock(i8*, i32, i8*, i64*, i32, i32*) #1

declare i8* @LzmaEnc_GetCurBuf(i8*) #1

declare void @LzmaEnc_RestoreState(i8*) #1

declare i32 @LzmaEnc_MemPrepare(i8*, i8*, i64, i32, %struct.ISzAlloc*, %struct.ISzAlloc*) #1

declare i32 @MtProgress_Set(%struct.CMtProgress*, i32, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
