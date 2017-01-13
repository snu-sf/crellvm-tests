; ModuleID = './MultiSource.Benchmarks.7zip/15.XzEnc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.ISeqOutStream = type { i64 (i8*, i8*, i64)* }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.CSeqCheckInStream = type { %struct.ISeqInStream, %struct.ISeqInStream*, i64, %struct.CXzCheck }
%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.CXzCheck = type { i32, i32, i64, %struct.CSha256 }
%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }
%struct.CLzma2EncProps = type { %struct._CLzmaEncProps, i64, i32, i32 }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CLzma2WithFilters = type { i8*, %struct.ISzAlloc*, %struct.ISzAlloc* }
%struct.CSeqSizeOutStream = type { %struct.ISeqOutStream, %struct.ISeqOutStream*, i64 }

@XZ_SIG = external global [6 x i8], align 1
@XZ_FOOTER_SIG = external global [2 x i8], align 1
@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8
@g_BigAlloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzBigAlloc, void (i8*, i8*)* @SzBigFree }, align 8

; Function Attrs: nounwind uwtable
define i32 @Xz_WriteHeader(i16 zeroext %f, %struct.ISeqOutStream* %s) #0 {
entry:
  %f.addr = alloca i16, align 2
  %s.addr = alloca %struct.ISeqOutStream*, align 8
  %crc = alloca i32, align 4
  %header = alloca [12 x i8], align 1
  store i16 %f, i16* %f.addr, align 2
  store %struct.ISeqOutStream* %s, %struct.ISeqOutStream** %s.addr, align 8
  %0 = bitcast [12 x i8]* %header to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i32 0, i32 0), i64 6, i32 1, i1 false)
  %1 = load i16, i16* %f.addr, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %header, i32 0, i64 6
  store i8 %conv1, i8* %arrayidx, align 1
  %2 = load i16, i16* %f.addr, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 255
  %conv3 = trunc i32 %and to i8
  %arrayidx4 = getelementptr inbounds [12 x i8], [12 x i8]* %header, i32 0, i64 7
  store i8 %conv3, i8* %arrayidx4, align 1
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 6
  %call = call i32 @CrcCalc(i8* %add.ptr, i64 2)
  store i32 %call, i32* %crc, align 4
  %3 = load i32, i32* %crc, align 4
  %arraydecay5 = getelementptr inbounds [12 x i8], [12 x i8]* %header, i32 0, i32 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 6
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 2
  %4 = bitcast i8* %add.ptr7 to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay8 = getelementptr inbounds [12 x i8], [12 x i8]* %header, i32 0, i32 0
  %call9 = call i32 @WriteBytes(%struct.ISeqOutStream* %5, i8* %arraydecay8, i32 12)
  ret i32 %call9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @CrcCalc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @WriteBytes(%struct.ISeqOutStream* %s, i8* %buf, i32 %size) #0 {
entry:
  %s.addr = alloca %struct.ISeqOutStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.ISeqOutStream* %s, %struct.ISeqOutStream** %s.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %0, i32 0, i32 0
  %1 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %2 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %3 = bitcast %struct.ISeqOutStream* %2 to i8*
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %5 to i64
  %call = call i64 %1(i8* %3, i8* %4, i64 %conv)
  %6 = load i32, i32* %size.addr, align 4
  %conv1 = zext i32 %6 to i64
  %cmp = icmp eq i64 %call, %conv1
  %cond = select i1 %cmp, i32 0, i32 9
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @XzBlock_WriteHeader(%struct.CXzBlock* %p, %struct.ISeqOutStream* %s) #0 {
entry:
  %p.addr = alloca %struct.CXzBlock*, align 8
  %s.addr = alloca %struct.ISeqOutStream*, align 8
  %header = alloca [1024 x i8], align 16
  %pos = alloca i32, align 4
  %numFilters = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca %struct.CXzFilter*, align 8
  store %struct.CXzBlock* %p, %struct.CXzBlock** %p.addr, align 8
  store %struct.ISeqOutStream* %s, %struct.ISeqOutStream** %s.addr, align 8
  store i32 1, i32* %pos, align 4
  %0 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %0, i32 0, i32 2
  %1 = load i8, i8* %flags, align 1
  %2 = load i32, i32* %pos, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i64 %idxprom
  store i8 %1, i8* %arrayidx, align 1
  %3 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags1 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %3, i32 0, i32 2
  %4 = load i8, i8* %flags1, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 64
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %5 = load i32, i32* %pos, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %6 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %packSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %6, i32 0, i32 0
  %7 = load i64, i64* %packSize, align 8
  %call = call i32 @Xz_WriteVarInt(i8* %add.ptr, i64 %7)
  %8 = load i32, i32* %pos, align 4
  %add = add i32 %8, %call
  store i32 %add, i32* %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags3 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %9, i32 0, i32 2
  %10 = load i8, i8* %flags3, align 1
  %conv4 = zext i8 %10 to i32
  %and5 = and i32 %conv4, 128
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %11 = load i32, i32* %pos, align 4
  %idx.ext10 = zext i32 %11 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay9, i64 %idx.ext10
  %12 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %unpackSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %12, i32 0, i32 1
  %13 = load i64, i64* %unpackSize, align 8
  %call12 = call i32 @Xz_WriteVarInt(i8* %add.ptr11, i64 %13)
  %14 = load i32, i32* %pos, align 4
  %add13 = add i32 %14, %call12
  store i32 %add13, i32* %pos, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end
  %15 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %flags15 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %15, i32 0, i32 2
  %16 = load i8, i8* %flags15, align 1
  %conv16 = zext i8 %16 to i32
  %and17 = and i32 %conv16, 3
  %add18 = add nsw i32 %and17, 1
  store i32 %add18, i32* %numFilters, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %numFilters, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %filters = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %20, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters, i32 0, i64 %idxprom21
  store %struct.CXzFilter* %arrayidx22, %struct.CXzFilter** %f, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %21 = load i32, i32* %pos, align 4
  %idx.ext24 = zext i32 %21 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %arraydecay23, i64 %idx.ext24
  %22 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %id = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %22, i32 0, i32 0
  %23 = load i64, i64* %id, align 8
  %call26 = call i32 @Xz_WriteVarInt(i8* %add.ptr25, i64 %23)
  %24 = load i32, i32* %pos, align 4
  %add27 = add i32 %24, %call26
  store i32 %add27, i32* %pos, align 4
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %25 = load i32, i32* %pos, align 4
  %idx.ext29 = zext i32 %25 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay28, i64 %idx.ext29
  %26 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %propsSize = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %26, i32 0, i32 1
  %27 = load i32, i32* %propsSize, align 4
  %conv31 = zext i32 %27 to i64
  %call32 = call i32 @Xz_WriteVarInt(i8* %add.ptr30, i64 %conv31)
  %28 = load i32, i32* %pos, align 4
  %add33 = add i32 %28, %call32
  store i32 %add33, i32* %pos, align 4
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %29 = load i32, i32* %pos, align 4
  %idx.ext35 = zext i32 %29 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay34, i64 %idx.ext35
  %30 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %props = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %30, i32 0, i32 2
  %31 = bitcast [20 x i8]* %props to i8*
  %32 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %propsSize37 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %32, i32 0, i32 1
  %33 = load i32, i32* %propsSize37, align 4
  %conv38 = zext i32 %33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr36, i8* %31, i64 %conv38, i32 1, i1 false)
  %34 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %propsSize39 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %34, i32 0, i32 1
  %35 = load i32, i32* %propsSize39, align 4
  %36 = load i32, i32* %pos, align 4
  %add40 = add i32 %36, %35
  store i32 %add40, i32* %pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %38 = load i32, i32* %pos, align 4
  %and42 = and i32 %38, 3
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* %pos, align 4
  %inc45 = add i32 %39, 1
  store i32 %inc45, i32* %pos, align 4
  %idxprom46 = zext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load i32, i32* %pos, align 4
  %shr = lshr i32 %40, 2
  %conv48 = trunc i32 %shr to i8
  %arrayidx49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i64 0
  store i8 %conv48, i8* %arrayidx49, align 1
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %41 = load i32, i32* %pos, align 4
  %conv51 = zext i32 %41 to i64
  %call52 = call i32 @CrcCalc(i8* %arraydecay50, i64 %conv51)
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %42 = load i32, i32* %pos, align 4
  %idx.ext54 = zext i32 %42 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %arraydecay53, i64 %idx.ext54
  %43 = bitcast i8* %add.ptr55 to i32*
  store i32 %call52, i32* %43, align 4
  %44 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %45 = load i32, i32* %pos, align 4
  %add57 = add i32 %45, 4
  %call58 = call i32 @WriteBytes(%struct.ISeqOutStream* %44, i8* %arraydecay56, i32 %add57)
  ret i32 %call58
}

declare i32 @Xz_WriteVarInt(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @Xz_WriteFooter(%struct.CXzStream* %p, %struct.ISeqOutStream* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzStream*, align 8
  %s.addr = alloca %struct.ISeqOutStream*, align 8
  %buf = alloca [32 x i8], align 16
  %globalPos = alloca i64, align 8
  %crc = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %block = alloca %struct.CXzBlockSizes*, align 8
  %__result__16 = alloca i32, align 4
  %__result__30 = alloca i32, align 4
  %__result__42 = alloca i32, align 4
  %indexSize = alloca i32, align 4
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store %struct.ISeqOutStream* %s, %struct.ISeqOutStream** %s.addr, align 8
  store i32 -1, i32* %crc, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %0 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i32 0, i32 1
  %1 = load i64, i64* %numBlocks, align 8
  %call = call i32 @Xz_WriteVarInt(i8* %add.ptr, i64 %1)
  %add = add i32 1, %call
  store i32 %add, i32* %pos, align 4
  %2 = load i32, i32* %pos, align 4
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %globalPos, align 8
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %3 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %4 = load i32, i32* %pos, align 4
  %call2 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* %3, i8* %arraydecay1, i32 %4, i32* %crc)
  store i32 %call2, i32* %__result__, align 4
  %5 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %__result__, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks4 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %8, i32 0, i32 1
  %9 = load i64, i64* %numBlocks4, align 8
  %cmp5 = icmp ult i64 %7, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %11, i32 0, i32 3
  %12 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks, align 8
  %arrayidx7 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %12, i64 %10
  store %struct.CXzBlockSizes* %arrayidx7, %struct.CXzBlockSizes** %block, align 8
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %13 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %totalSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %13, i32 0, i32 1
  %14 = load i64, i64* %totalSize, align 8
  %call9 = call i32 @Xz_WriteVarInt(i8* %arraydecay8, i64 %14)
  store i32 %call9, i32* %pos, align 4
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %15 = load i32, i32* %pos, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 %idx.ext
  %16 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %unpackSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %16, i32 0, i32 0
  %17 = load i64, i64* %unpackSize, align 8
  %call12 = call i32 @Xz_WriteVarInt(i8* %add.ptr11, i64 %17)
  %18 = load i32, i32* %pos, align 4
  %add13 = add i32 %18, %call12
  store i32 %add13, i32* %pos, align 4
  %19 = load i32, i32* %pos, align 4
  %conv14 = zext i32 %19 to i64
  %20 = load i64, i64* %globalPos, align 8
  %add15 = add i64 %20, %conv14
  store i64 %add15, i64* %globalPos, align 8
  %21 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %pos, align 4
  %call18 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* %21, i8* %arraydecay17, i32 %22, i32* %crc)
  store i32 %call18, i32* %__result__16, align 4
  %23 = load i32, i32* %__result__16, align 4
  %cmp19 = icmp ne i32 %23, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %24 = load i32, i32* %__result__16, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i64, i64* %globalPos, align 8
  %conv23 = trunc i64 %26 to i32
  %and = and i32 %conv23, 3
  store i32 %and, i32* %pos, align 4
  %27 = load i32, i32* %pos, align 4
  %cmp24 = icmp ne i32 %27, 0
  br i1 %cmp24, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %for.end
  %arrayidx27 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 2
  store i8 0, i8* %arrayidx27, align 1
  %arrayidx28 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx29, align 1
  %28 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay31 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %29 = load i32, i32* %pos, align 4
  %sub = sub i32 4, %29
  %call32 = call i32 @WriteBytesAndCrc(%struct.ISeqOutStream* %28, i8* %arraydecay31, i32 %sub, i32* %crc)
  store i32 %call32, i32* %__result__30, align 4
  %30 = load i32, i32* %__result__30, align 4
  %cmp33 = icmp ne i32 %30, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.26
  %31 = load i32, i32* %__result__30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.26
  %32 = load i32, i32* %pos, align 4
  %sub37 = sub i32 4, %32
  %conv38 = zext i32 %sub37 to i64
  %33 = load i64, i64* %globalPos, align 8
  %add39 = add i64 %33, %conv38
  store i64 %add39, i64* %globalPos, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36, %for.end
  %34 = load i32, i32* %crc, align 4
  %xor = xor i32 %34, -1
  %arraydecay41 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %35 = bitcast i8* %arraydecay41 to i32*
  store i32 %xor, i32* %35, align 4
  %36 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay43 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call44 = call i32 @WriteBytes(%struct.ISeqOutStream* %36, i8* %arraydecay43, i32 4)
  store i32 %call44, i32* %__result__42, align 4
  %37 = load i32, i32* %__result__42, align 4
  %cmp45 = icmp ne i32 %37, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  %38 = load i32, i32* %__result__42, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.40
  %39 = load i64, i64* %globalPos, align 8
  %add49 = add i64 %39, 4
  store i64 %add49, i64* %globalPos, align 8
  %40 = load i64, i64* %globalPos, align 8
  %shr = lshr i64 %40, 2
  %sub50 = sub i64 %shr, 1
  %conv51 = trunc i64 %sub50 to i32
  store i32 %conv51, i32* %indexSize, align 4
  %41 = load i32, i32* %indexSize, align 4
  %arraydecay52 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %add.ptr53 = getelementptr inbounds i8, i8* %arraydecay52, i64 4
  %42 = bitcast i8* %add.ptr53 to i32*
  store i32 %41, i32* %42, align 4
  %43 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %43, i32 0, i32 0
  %44 = load i16, i16* %flags, align 2
  %conv54 = zext i16 %44 to i32
  %shr55 = ashr i32 %conv54, 8
  %conv56 = trunc i32 %shr55 to i8
  %arrayidx57 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 8
  store i8 %conv56, i8* %arrayidx57, align 1
  %45 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags58 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %45, i32 0, i32 0
  %46 = load i16, i16* %flags58, align 2
  %conv59 = zext i16 %46 to i32
  %and60 = and i32 %conv59, 255
  %conv61 = trunc i32 %and60 to i8
  %arrayidx62 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 9
  store i8 %conv61, i8* %arrayidx62, align 1
  %arraydecay63 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %add.ptr64 = getelementptr inbounds i8, i8* %arraydecay63, i64 4
  %call65 = call i32 @CrcCalc(i8* %add.ptr64, i64 6)
  %arraydecay66 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %47 = bitcast i8* %arraydecay66 to i32*
  store i32 %call65, i32* %47, align 4
  %arraydecay67 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %add.ptr68 = getelementptr inbounds i8, i8* %arraydecay67, i64 10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i32 0, i32 0), i64 2, i32 1, i1 false)
  %48 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %arraydecay69 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call70 = call i32 @WriteBytes(%struct.ISeqOutStream* %48, i8* %arraydecay69, i32 12)
  store i32 %call70, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %if.then.35, %if.then.21, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @WriteBytesAndCrc(%struct.ISeqOutStream* %s, i8* %buf, i32 %size, i32* %crc) #0 {
entry:
  %s.addr = alloca %struct.ISeqOutStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %crc.addr = alloca i32*, align 8
  store %struct.ISeqOutStream* %s, %struct.ISeqOutStream** %s.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %crc, i32** %crc.addr, align 8
  %0 = load i32*, i32** %crc.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %3 to i64
  %call = call i32 @CrcUpdate(i32 %1, i8* %2, i64 %conv)
  %4 = load i32*, i32** %crc.addr, align 8
  store i32 %call, i32* %4, align 4
  %5 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %s.addr, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i32, i32* %size.addr, align 4
  %call1 = call i32 @WriteBytes(%struct.ISeqOutStream* %5, i8* %6, i32 %7)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @Xz_AddIndexRecord(%struct.CXzStream* %p, i64 %unpackSize, i64 %totalSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzStream*, align 8
  %unpackSize.addr = alloca i64, align 8
  %totalSize.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %num = alloca i64, align 8
  %newSize = alloca i64, align 8
  %blocks4 = alloca %struct.CXzBlockSizes*, align 8
  %block = alloca %struct.CXzBlockSizes*, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store i64 %unpackSize, i64* %unpackSize.addr, align 8
  store i64 %totalSize, i64* %totalSize.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i32 0, i32 3
  %1 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks, align 8
  %cmp = icmp eq %struct.CXzBlockSizes* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocksAllocated = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %2, i32 0, i32 2
  %3 = load i64, i64* %numBlocksAllocated, align 8
  %4 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %4, i32 0, i32 1
  %5 = load i64, i64* %numBlocks, align 8
  %cmp1 = icmp eq i64 %3, %5
  br i1 %cmp1, label %if.then, label %if.end.19

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks2 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %6, i32 0, i32 1
  %7 = load i64, i64* %numBlocks2, align 8
  %add = add i64 %7, 1
  %mul = mul i64 %add, 2
  store i64 %mul, i64* %num, align 8
  %8 = load i64, i64* %num, align 8
  %mul3 = mul i64 16, %8
  store i64 %mul3, i64* %newSize, align 8
  %9 = load i64, i64* %newSize, align 8
  %div = udiv i64 %9, 16
  %10 = load i64, i64* %num, align 8
  %cmp5 = icmp ne i64 %div, %10
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %11, i32 0, i32 0
  %12 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %13 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %14 = bitcast %struct.ISzAlloc* %13 to i8*
  %15 = load i64, i64* %newSize, align 8
  %call = call i8* %12(i8* %14, i64 %15)
  %16 = bitcast i8* %call to %struct.CXzBlockSizes*
  store %struct.CXzBlockSizes* %16, %struct.CXzBlockSizes** %blocks4, align 8
  %17 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks4, align 8
  %cmp7 = icmp eq %struct.CXzBlockSizes* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %18 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %18, i32 0, i32 1
  %19 = load i64, i64* %numBlocks10, align 8
  %cmp11 = icmp ne i64 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %20 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks4, align 8
  %21 = bitcast %struct.CXzBlockSizes* %20 to i8*
  %22 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks13 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %22, i32 0, i32 3
  %23 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks13, align 8
  %24 = bitcast %struct.CXzBlockSizes* %23 to i8*
  %25 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks14 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %25, i32 0, i32 1
  %26 = load i64, i64* %numBlocks14, align 8
  %mul15 = mul i64 %26, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %24, i64 %mul15, i32 8, i1 false)
  %27 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %28 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @Xz_Free(%struct.CXzStream* %27, %struct.ISzAlloc* %28)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %29 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks4, align 8
  %30 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks17 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %30, i32 0, i32 3
  store %struct.CXzBlockSizes* %29, %struct.CXzBlockSizes** %blocks17, align 8
  %31 = load i64, i64* %num, align 8
  %32 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocksAllocated18 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %32, i32 0, i32 2
  store i64 %31, i64* %numBlocksAllocated18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %lor.lhs.false
  %33 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks20 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %33, i32 0, i32 1
  %34 = load i64, i64* %numBlocks20, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %numBlocks20, align 8
  %35 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks21 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %35, i32 0, i32 3
  %36 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks21, align 8
  %arrayidx = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %36, i64 %34
  store %struct.CXzBlockSizes* %arrayidx, %struct.CXzBlockSizes** %block, align 8
  %37 = load i64, i64* %totalSize.addr, align 8
  %38 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %totalSize22 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %38, i32 0, i32 1
  store i64 %37, i64* %totalSize22, align 8
  %39 = load i64, i64* %unpackSize.addr, align 8
  %40 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %unpackSize23 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %40, i32 0, i32 0
  store i64 %39, i64* %unpackSize23, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.8, %if.then.6
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare void @Xz_Free(%struct.CXzStream*, %struct.ISzAlloc*) #2

; Function Attrs: nounwind uwtable
define void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* %p, i32 %mode) #0 {
entry:
  %p.addr = alloca %struct.CSeqCheckInStream*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.CSeqCheckInStream* %p, %struct.CSeqCheckInStream** %p.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p.addr, align 8
  %processed = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %0, i32 0, i32 2
  store i64 0, i64* %processed, align 8
  %1 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p.addr, align 8
  %check = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %1, i32 0, i32 3
  %2 = load i32, i32* %mode.addr, align 4
  call void @XzCheck_Init(%struct.CXzCheck* %check, i32 %2)
  ret void
}

declare void @XzCheck_Init(%struct.CXzCheck*, i32) #2

; Function Attrs: nounwind uwtable
define void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* %p, i8* %digest) #0 {
entry:
  %p.addr = alloca %struct.CSeqCheckInStream*, align 8
  %digest.addr = alloca i8*, align 8
  store %struct.CSeqCheckInStream* %p, %struct.CSeqCheckInStream** %p.addr, align 8
  store i8* %digest, i8** %digest.addr, align 8
  %0 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p.addr, align 8
  %check = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %0, i32 0, i32 3
  %1 = load i8*, i8** %digest.addr, align 8
  %call = call i32 @XzCheck_Final(%struct.CXzCheck* %check, i8* %1)
  ret void
}

declare i32 @XzCheck_Final(%struct.CXzCheck*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @Xz_Encode(%struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.CLzma2EncProps* %lzma2Props, i32 %useSubblock, %struct.ICompressProgress* %progress) #0 {
entry:
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %lzma2Props.addr = alloca %struct.CLzma2EncProps*, align 8
  %useSubblock.addr = alloca i32, align 4
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %res = alloca i32, align 4
  %xz = alloca %struct.CXzStream, align 8
  %lzmaf = alloca %struct.CLzma2WithFilters, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.CLzma2EncProps* %lzma2Props, %struct.CLzma2EncProps** %lzma2Props.addr, align 8
  store i32 %useSubblock, i32* %useSubblock.addr, align 4
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  call void @Xz_Construct(%struct.CXzStream* %xz)
  call void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* %lzmaf, %struct.ISzAlloc* @g_Alloc, %struct.ISzAlloc* @g_BigAlloc)
  %call = call i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* %lzmaf)
  store i32 %call, i32* %res, align 4
  %0 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %3 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %lzma2Props.addr, align 8
  %4 = load i32, i32* %useSubblock.addr, align 4
  %5 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %call1 = call i32 @Xz_Compress(%struct.CXzStream* %xz, %struct.CLzma2WithFilters* %lzmaf, %struct.ISeqOutStream* %1, %struct.ISeqInStream* %2, %struct.CLzma2EncProps* %3, i32 %4, %struct.ICompressProgress* %5)
  store i32 %call1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* %lzmaf)
  call void @Xz_Free(%struct.CXzStream* %xz, %struct.ISzAlloc* @g_Alloc)
  %6 = load i32, i32* %res, align 4
  ret i32 %6
}

declare void @Xz_Construct(%struct.CXzStream*) #2

; Function Attrs: nounwind uwtable
define internal void @Lzma2WithFilters_Construct(%struct.CLzma2WithFilters* %p, %struct.ISzAlloc* %alloc, %struct.ISzAlloc* %bigAlloc) #0 {
entry:
  %p.addr = alloca %struct.CLzma2WithFilters*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %bigAlloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzma2WithFilters* %p, %struct.CLzma2WithFilters** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store %struct.ISzAlloc* %bigAlloc, %struct.ISzAlloc** %bigAlloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %1 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %alloc1 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %1, i32 0, i32 1
  store %struct.ISzAlloc* %0, %struct.ISzAlloc** %alloc1, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %bigAlloc.addr, align 8
  %3 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %bigAlloc2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %3, i32 0, i32 2
  store %struct.ISzAlloc* %2, %struct.ISzAlloc** %bigAlloc2, align 8
  %4 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %4, i32 0, i32 0
  store i8* null, i8** %lzma2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2WithFilters_Create(%struct.CLzma2WithFilters* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2WithFilters*, align 8
  store %struct.CLzma2WithFilters* %p, %struct.CLzma2WithFilters** %p.addr, align 8
  %0 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %alloc = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i32 0, i32 1
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc, align 8
  %2 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %bigAlloc = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %2, i32 0, i32 2
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %bigAlloc, align 8
  %call = call i8* @Lzma2Enc_Create(%struct.ISzAlloc* %1, %struct.ISzAlloc* %3)
  %4 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %4, i32 0, i32 0
  store i8* %call, i8** %lzma2, align 8
  %5 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma21 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %5, i32 0, i32 0
  %6 = load i8*, i8** %lzma21, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @Xz_Compress(%struct.CXzStream* %xz, %struct.CLzma2WithFilters* %lzmaf, %struct.ISeqOutStream* %outStream, %struct.ISeqInStream* %inStream, %struct.CLzma2EncProps* %lzma2Props, i32 %useSubblock, %struct.ICompressProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %xz.addr = alloca %struct.CXzStream*, align 8
  %lzmaf.addr = alloca %struct.CLzma2WithFilters*, align 8
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %lzma2Props.addr = alloca %struct.CLzma2EncProps*, align 8
  %useSubblock.addr = alloca i32, align 4
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %__result__ = alloca i32, align 4
  %__result__1 = alloca i32, align 4
  %checkInStream = alloca %struct.CSeqCheckInStream, align 8
  %seqSizeOutStream = alloca %struct.CSeqSizeOutStream, align 8
  %block = alloca %struct.CXzBlock, align 8
  %filterIndex = alloca i32, align 4
  %f = alloca %struct.CXzFilter*, align 8
  %f13 = alloca %struct.CXzFilter*, align 8
  %__result__23 = alloca i32, align 4
  %packPos = alloca i64, align 8
  %res = alloca i32, align 4
  %__result__39 = alloca i32, align 4
  %padSize = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %__result__56 = alloca i32, align 4
  %__result__67 = alloca i32, align 4
  store %struct.CXzStream* %xz, %struct.CXzStream** %xz.addr, align 8
  store %struct.CLzma2WithFilters* %lzmaf, %struct.CLzma2WithFilters** %lzmaf.addr, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store %struct.CLzma2EncProps* %lzma2Props, %struct.CLzma2EncProps** %lzma2Props.addr, align 8
  store i32 %useSubblock, i32* %useSubblock.addr, align 4
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  %0 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %flags = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i32 0, i32 0
  store i16 1, i16* %flags, align 2
  %1 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %lzmaf.addr, align 8
  %lzma2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %1, i32 0, i32 0
  %2 = load i8*, i8** %lzma2, align 8
  %3 = load %struct.CLzma2EncProps*, %struct.CLzma2EncProps** %lzma2Props.addr, align 8
  %call = call i32 @Lzma2Enc_SetProps(i8* %2, %struct.CLzma2EncProps* %3)
  store i32 %call, i32* %__result__, align 4
  %4 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %__result__, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %flags2 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %6, i32 0, i32 0
  %7 = load i16, i16* %flags2, align 2
  %8 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %call3 = call i32 @Xz_WriteHeader(i16 zeroext %7, %struct.ISeqOutStream* %8)
  store i32 %call3, i32* %__result__1, align 4
  %9 = load i32, i32* %__result__1, align 4
  %cmp4 = icmp ne i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load i32, i32* %__result__1, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %filterIndex, align 4
  %flags7 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 2
  store i8 0, i8* %flags7, align 1
  %11 = load i32, i32* %useSubblock.addr, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 1, %cond
  %sub = sub nsw i32 %add, 1
  %flags8 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 2
  %12 = load i8, i8* %flags8, align 1
  %conv = zext i8 %12 to i32
  %or = or i32 %conv, %sub
  %conv9 = trunc i32 %or to i8
  store i8 %conv9, i8* %flags8, align 1
  %13 = load i32, i32* %useSubblock.addr, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  %14 = load i32, i32* %filterIndex, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %filterIndex, align 4
  %idxprom = sext i32 %14 to i64
  %filters = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters, i32 0, i64 %idxprom
  store %struct.CXzFilter* %arrayidx, %struct.CXzFilter** %f, align 8
  %15 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %id = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %15, i32 0, i32 0
  store i64 1, i64* %id, align 8
  %16 = load %struct.CXzFilter*, %struct.CXzFilter** %f, align 8
  %propsSize = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %16, i32 0, i32 1
  store i32 0, i32* %propsSize, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  %17 = load i32, i32* %filterIndex, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %filterIndex, align 4
  %idxprom15 = sext i32 %17 to i64
  %filters16 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [4 x %struct.CXzFilter], [4 x %struct.CXzFilter]* %filters16, i32 0, i64 %idxprom15
  store %struct.CXzFilter* %arrayidx17, %struct.CXzFilter** %f13, align 8
  %18 = load %struct.CXzFilter*, %struct.CXzFilter** %f13, align 8
  %id18 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %18, i32 0, i32 0
  store i64 33, i64* %id18, align 8
  %19 = load %struct.CXzFilter*, %struct.CXzFilter** %f13, align 8
  %propsSize19 = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %19, i32 0, i32 1
  store i32 1, i32* %propsSize19, align 4
  %20 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %lzmaf.addr, align 8
  %lzma220 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %20, i32 0, i32 0
  %21 = load i8*, i8** %lzma220, align 8
  %call21 = call zeroext i8 @Lzma2Enc_WriteProperties(i8* %21)
  %22 = load %struct.CXzFilter*, %struct.CXzFilter** %f13, align 8
  %props = getelementptr inbounds %struct.CXzFilter, %struct.CXzFilter* %22, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [20 x i8], [20 x i8]* %props, i32 0, i64 0
  store i8 %call21, i8* %arrayidx22, align 1
  %p = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 0
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %p, i32 0, i32 0
  store i64 (i8*, i8*, i64)* @MyWrite, i64 (i8*, i8*, i64)** %Write, align 8
  %23 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %realStream = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 1
  store %struct.ISeqOutStream* %23, %struct.ISeqOutStream** %realStream, align 8
  %processed = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 2
  store i64 0, i64* %processed, align 8
  %p24 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 0
  %call25 = call i32 @XzBlock_WriteHeader(%struct.CXzBlock* %block, %struct.ISeqOutStream* %p24)
  store i32 %call25, i32* %__result__23, align 4
  %24 = load i32, i32* %__result__23, align 4
  %cmp26 = icmp ne i32 %24, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.12
  %25 = load i32, i32* %__result__23, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.12
  %p30 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %checkInStream, i32 0, i32 0
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %p30, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SeqCheckInStream_Read, i32 (i8*, i8*, i64*)** %Read, align 8
  %26 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %realStream31 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %checkInStream, i32 0, i32 1
  store %struct.ISeqInStream* %26, %struct.ISeqInStream** %realStream31, align 8
  %27 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %flags32 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %27, i32 0, i32 0
  %28 = load i16, i16* %flags32, align 2
  %conv33 = zext i16 %28 to i32
  %and = and i32 %conv33, 15
  call void @SeqCheckInStream_Init(%struct.CSeqCheckInStream* %checkInStream, i32 %and)
  %processed34 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 2
  %29 = load i64, i64* %processed34, align 8
  store i64 %29, i64* %packPos, align 8
  %30 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %lzmaf.addr, align 8
  %lzma235 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %30, i32 0, i32 0
  %31 = load i8*, i8** %lzma235, align 8
  %p36 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %checkInStream, i32 0, i32 0
  %32 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %call38 = call i32 @Lzma2Enc_Encode(i8* %31, %struct.ISeqOutStream* %p36, %struct.ISeqInStream* %p37, %struct.ICompressProgress* %32)
  store i32 %call38, i32* %res, align 4
  %33 = load i32, i32* %res, align 4
  store i32 %33, i32* %__result__39, align 4
  %34 = load i32, i32* %__result__39, align 4
  %cmp40 = icmp ne i32 %34, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.29
  %35 = load i32, i32* %__result__39, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.29
  %processed44 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %checkInStream, i32 0, i32 2
  %36 = load i64, i64* %processed44, align 8
  %unpackSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 1
  store i64 %36, i64* %unpackSize, align 8
  %processed45 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 2
  %37 = load i64, i64* %processed45, align 8
  %38 = load i64, i64* %packPos, align 8
  %sub46 = sub i64 %37, %38
  %packSize = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 0
  store i64 %sub46, i64* %packSize, align 8
  store i32 0, i32* %padSize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.43
  %packSize47 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 0
  %39 = load i64, i64* %packSize47, align 8
  %conv48 = trunc i64 %39 to i32
  %40 = load i32, i32* %padSize, align 4
  %add49 = add i32 %conv48, %40
  %and50 = and i32 %add49, 3
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %padSize, align 4
  %inc53 = add i32 %41, 1
  store i32 %inc53, i32* %padSize, align 4
  %idxprom54 = zext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %42 = load i32, i32* %padSize, align 4
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  call void @SeqCheckInStream_GetDigest(%struct.CSeqCheckInStream* %checkInStream, i8* %add.ptr)
  %p57 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 0
  %arraydecay58 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %43 = load i32, i32* %padSize, align 4
  %44 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %flags59 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %44, i32 0, i32 0
  %45 = load i16, i16* %flags59, align 2
  %call60 = call i32 @XzFlags_GetCheckSize(i16 zeroext %45)
  %add61 = add i32 %43, %call60
  %call62 = call i32 @WriteBytes(%struct.ISeqOutStream* %p57, i8* %arraydecay58, i32 %add61)
  store i32 %call62, i32* %__result__56, align 4
  %46 = load i32, i32* %__result__56, align 4
  %cmp63 = icmp ne i32 %46, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.end
  %47 = load i32, i32* %__result__56, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.66:                                        ; preds = %while.end
  %48 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %unpackSize68 = getelementptr inbounds %struct.CXzBlock, %struct.CXzBlock* %block, i32 0, i32 1
  %49 = load i64, i64* %unpackSize68, align 8
  %processed69 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %seqSizeOutStream, i32 0, i32 2
  %50 = load i64, i64* %processed69, align 8
  %51 = load i32, i32* %padSize, align 4
  %conv70 = zext i32 %51 to i64
  %sub71 = sub i64 %50, %conv70
  %call72 = call i32 @Xz_AddIndexRecord(%struct.CXzStream* %48, i64 %49, i64 %sub71, %struct.ISzAlloc* @g_Alloc)
  store i32 %call72, i32* %__result__67, align 4
  %52 = load i32, i32* %__result__67, align 4
  %cmp73 = icmp ne i32 %52, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.66
  %53 = load i32, i32* %__result__67, align 4
  store i32 %53, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.66
  %54 = load %struct.CXzStream*, %struct.CXzStream** %xz.addr, align 8
  %55 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %call77 = call i32 @Xz_WriteFooter(%struct.CXzStream* %54, %struct.ISeqOutStream* %55)
  store i32 %call77, i32* %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.then.75, %if.then.65, %if.then.42, %if.then.28, %if.then.5, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @Lzma2WithFilters_Free(%struct.CLzma2WithFilters* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzma2WithFilters*, align 8
  store %struct.CLzma2WithFilters* %p, %struct.CLzma2WithFilters** %p.addr, align 8
  %0 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma2 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %0, i32 0, i32 0
  %1 = load i8*, i8** %lzma2, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma21 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %2, i32 0, i32 0
  %3 = load i8*, i8** %lzma21, align 8
  call void @Lzma2Enc_Destroy(i8* %3)
  %4 = load %struct.CLzma2WithFilters*, %struct.CLzma2WithFilters** %p.addr, align 8
  %lzma22 = getelementptr inbounds %struct.CLzma2WithFilters, %struct.CLzma2WithFilters* %4, i32 0, i32 0
  store i8* null, i8** %lzma22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Xz_EncodeEmpty(%struct.ISeqOutStream* %outStream) #0 {
entry:
  %outStream.addr = alloca %struct.ISeqOutStream*, align 8
  %res = alloca i32, align 4
  %xz = alloca %struct.CXzStream, align 8
  store %struct.ISeqOutStream* %outStream, %struct.ISeqOutStream** %outStream.addr, align 8
  call void @Xz_Construct(%struct.CXzStream* %xz)
  %flags = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %xz, i32 0, i32 0
  %0 = load i16, i16* %flags, align 2
  %1 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %call = call i32 @Xz_WriteHeader(i16 zeroext %0, %struct.ISeqOutStream* %1)
  store i32 %call, i32* %res, align 4
  %2 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %outStream.addr, align 8
  %call1 = call i32 @Xz_WriteFooter(%struct.CXzStream* %xz, %struct.ISeqOutStream* %3)
  store i32 %call1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Xz_Free(%struct.CXzStream* %xz, %struct.ISzAlloc* @g_Alloc)
  %4 = load i32, i32* %res, align 4
  ret i32 %4
}

declare i32 @CrcUpdate(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @SzAlloc(i8* %p, i64 %size) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %p.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @MyAlloc(i64 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @SzFree(i8* %p, i8* %address) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %address.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %p.addr, align 8
  %1 = load i8*, i8** %address.addr, align 8
  call void @MyFree(i8* %1)
  ret void
}

declare i8* @MyAlloc(i64) #2

declare void @MyFree(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @SzBigAlloc(i8* %p, i64 %size) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %p.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @BigAlloc(i64 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @SzBigFree(i8* %p, i8* %address) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %address.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %address, i8** %address.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %p.addr, align 8
  %1 = load i8*, i8** %address.addr, align 8
  call void @BigFree(i8* %1)
  ret void
}

declare i8* @BigAlloc(i64) #2

declare void @BigFree(i8*) #2

declare i8* @Lzma2Enc_Create(%struct.ISzAlloc*, %struct.ISzAlloc*) #2

declare i32 @Lzma2Enc_SetProps(i8*, %struct.CLzma2EncProps*) #2

declare zeroext i8 @Lzma2Enc_WriteProperties(i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @MyWrite(i8* %pp, i8* %data, i64 %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca %struct.CSeqSizeOutStream*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CSeqSizeOutStream*
  store %struct.CSeqSizeOutStream* %1, %struct.CSeqSizeOutStream** %p, align 8
  %2 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %p, align 8
  %realStream = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %2, i32 0, i32 1
  %3 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %realStream, align 8
  %Write = getelementptr inbounds %struct.ISeqOutStream, %struct.ISeqOutStream* %3, i32 0, i32 0
  %4 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %Write, align 8
  %5 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %p, align 8
  %realStream1 = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %5, i32 0, i32 1
  %6 = load %struct.ISeqOutStream*, %struct.ISeqOutStream** %realStream1, align 8
  %7 = bitcast %struct.ISeqOutStream* %6 to i8*
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i64, i64* %size.addr, align 8
  %call = call i64 %4(i8* %7, i8* %8, i64 %9)
  store i64 %call, i64* %size.addr, align 8
  %10 = load i64, i64* %size.addr, align 8
  %11 = load %struct.CSeqSizeOutStream*, %struct.CSeqSizeOutStream** %p, align 8
  %processed = getelementptr inbounds %struct.CSeqSizeOutStream, %struct.CSeqSizeOutStream* %11, i32 0, i32 2
  %12 = load i64, i64* %processed, align 8
  %add = add i64 %12, %10
  store i64 %add, i64* %processed, align 8
  %13 = load i64, i64* %size.addr, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @SeqCheckInStream_Read(i8* %pp, i8* %data, i64* %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca %struct.CSeqCheckInStream*, align 8
  %res = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CSeqCheckInStream*
  store %struct.CSeqCheckInStream* %1, %struct.CSeqCheckInStream** %p, align 8
  %2 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p, align 8
  %realStream = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %2, i32 0, i32 1
  %3 = load %struct.ISeqInStream*, %struct.ISeqInStream** %realStream, align 8
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %3, i32 0, i32 0
  %4 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %5 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p, align 8
  %realStream1 = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %5, i32 0, i32 1
  %6 = load %struct.ISeqInStream*, %struct.ISeqInStream** %realStream1, align 8
  %7 = bitcast %struct.ISeqInStream* %6 to i8*
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i64*, i64** %size.addr, align 8
  %call = call i32 %4(i8* %7, i8* %8, i64* %9)
  store i32 %call, i32* %res, align 4
  %10 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p, align 8
  %check = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %10, i32 0, i32 3
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i64*, i64** %size.addr, align 8
  %13 = load i64, i64* %12, align 8
  call void @XzCheck_Update(%struct.CXzCheck* %check, i8* %11, i64 %13)
  %14 = load i64*, i64** %size.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.CSeqCheckInStream*, %struct.CSeqCheckInStream** %p, align 8
  %processed = getelementptr inbounds %struct.CSeqCheckInStream, %struct.CSeqCheckInStream* %16, i32 0, i32 2
  %17 = load i64, i64* %processed, align 8
  %add = add i64 %17, %15
  store i64 %add, i64* %processed, align 8
  %18 = load i32, i32* %res, align 4
  ret i32 %18
}

declare i32 @Lzma2Enc_Encode(i8*, %struct.ISeqOutStream*, %struct.ISeqInStream*, %struct.ICompressProgress*) #2

declare i32 @XzFlags_GetCheckSize(i16 zeroext) #2

declare void @XzCheck_Update(%struct.CXzCheck*, i8*, i64) #2

declare void @Lzma2Enc_Destroy(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
