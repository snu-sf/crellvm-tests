; ModuleID = './MultiSource.Benchmarks.7zip/21.XzIn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.CXzBlock = type { i64, i64, i8, [4 x %struct.CXzFilter] }
%struct.CXzFilter = type { i64, i32, [20 x i8] }
%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.CXzs = type { i64, i64, %struct.CXzStream* }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

@XZ_SIG = external global [6 x i8], align 1
@XZ_FOOTER_SIG = external global [2 x i8], align 1

; Function Attrs: nounwind uwtable
define i32 @Xz_ReadHeader(i16* %p, %struct.ISeqInStream* %inStream) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i16*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %sig = alloca [12 x i8], align 1
  %__result__ = alloca i32, align 4
  store i16* %p, i16** %p.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  %0 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %sig, i32 0, i32 0
  %call = call i32 @SeqInStream_Read2(%struct.ISeqInStream* %0, i8* %arraydecay, i64 12, i32 17)
  store i32 %call, i32* %__result__, align 4
  %1 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %__result__, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %sig, i32 0, i32 0
  %call2 = call i32 @memcmp(i8* %arraydecay1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @XZ_SIG, i32 0, i32 0), i64 6) #4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 17, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i16*, i16** %p.addr, align 8
  %arraydecay6 = getelementptr inbounds [12 x i8], [12 x i8]* %sig, i32 0, i32 0
  %call7 = call i32 @Xz_ParseHeader(i16* %3, i8* %arraydecay6)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @SeqInStream_Read2(%struct.ISeqInStream*, i8*, i64, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i32 @Xz_ParseHeader(i16*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @XzBlock_ReadHeader(%struct.CXzBlock* %p, %struct.ISeqInStream* %inStream, i32* %isIndex, i32* %headerSizeRes) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzBlock*, align 8
  %inStream.addr = alloca %struct.ISeqInStream*, align 8
  %isIndex.addr = alloca i32*, align 8
  %headerSizeRes.addr = alloca i32*, align 8
  %header = alloca [1024 x i8], align 16
  %headerSize = alloca i32, align 4
  %__result__ = alloca i32, align 4
  %__result__6 = alloca i32, align 4
  store %struct.CXzBlock* %p, %struct.CXzBlock** %p.addr, align 8
  store %struct.ISeqInStream* %inStream, %struct.ISeqInStream** %inStream.addr, align 8
  store i32* %isIndex, i32** %isIndex.addr, align 8
  store i32* %headerSizeRes, i32** %headerSizeRes.addr, align 8
  %0 = load i32*, i32** %headerSizeRes.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i64 0
  %call = call i32 @SeqInStream_ReadByte(%struct.ISeqInStream* %1, i8* %arrayidx)
  store i32 %call, i32* %__result__, align 4
  %2 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %__result__, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 2
  %add = add i32 %shl, 4
  store i32 %add, i32* %headerSize, align 4
  %5 = load i32, i32* %headerSize, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i32*, i32** %headerSizeRes.addr, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %isIndex.addr, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i32*, i32** %isIndex.addr, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %headerSize, align 4
  %10 = load i32*, i32** %headerSizeRes.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ISeqInStream*, %struct.ISeqInStream** %inStream.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %12 = load i32, i32* %headerSize, align 4
  %sub = sub i32 %12, 1
  %conv7 = zext i32 %sub to i64
  %call8 = call i32 @SeqInStream_Read(%struct.ISeqInStream* %11, i8* %add.ptr, i64 %conv7)
  store i32 %call8, i32* %__result__6, align 4
  %13 = load i32, i32* %__result__6, align 4
  %cmp9 = icmp ne i32 %13, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  %14 = load i32, i32* %__result__6, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %15 = load %struct.CXzBlock*, %struct.CXzBlock** %p.addr, align 8
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %header, i32 0, i32 0
  %call14 = call i32 @XzBlock_Parse(%struct.CXzBlock* %15, i8* %arraydecay13)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @SeqInStream_ReadByte(%struct.ISeqInStream*, i8*) #1

declare i32 @SeqInStream_Read(%struct.ISeqInStream*, i8*, i64) #1

declare i32 @XzBlock_Parse(%struct.CXzBlock*, i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Xz_GetUnpackSize(%struct.CXzStream* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.CXzStream*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %newSize = alloca i64, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %1, i32 0, i32 1
  %2 = load i64, i64* %numBlocks, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %size, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %5, i32 0, i32 3
  %6 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks, align 8
  %arrayidx = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %6, i64 %4
  %unpackSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %arrayidx, i32 0, i32 0
  %7 = load i64, i64* %unpackSize, align 8
  %add = add i64 %3, %7
  store i64 %add, i64* %newSize, align 8
  %8 = load i64, i64* %newSize, align 8
  %9 = load i64, i64* %size, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i64, i64* %newSize, align 8
  store i64 %10, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %size, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @Xz_GetPackSize(%struct.CXzStream* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.CXzStream*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %newSize = alloca i64, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %1, i32 0, i32 1
  %2 = load i64, i64* %numBlocks, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %size, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %5, i32 0, i32 3
  %6 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks, align 8
  %arrayidx = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %6, i64 %4
  %totalSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %totalSize, align 8
  %add = add i64 %7, 3
  %and = and i64 %add, -4
  %add1 = add i64 %3, %and
  store i64 %add1, i64* %newSize, align 8
  %8 = load i64, i64* %newSize, align 8
  %9 = load i64, i64* %size, align 8
  %cmp2 = icmp ult i64 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i64, i64* %newSize, align 8
  store i64 %10, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %size, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define void @Xzs_Construct(%struct.CXzs* %p) #0 {
entry:
  %p.addr = alloca %struct.CXzs*, align 8
  store %struct.CXzs* %p, %struct.CXzs** %p.addr, align 8
  %0 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %numAllocated = getelementptr inbounds %struct.CXzs, %struct.CXzs* %0, i32 0, i32 1
  store i64 0, i64* %numAllocated, align 8
  %1 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num = getelementptr inbounds %struct.CXzs, %struct.CXzs* %1, i32 0, i32 0
  store i64 0, i64* %num, align 8
  %2 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams = getelementptr inbounds %struct.CXzs, %struct.CXzs* %2, i32 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %streams, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Xzs_Free(%struct.CXzs* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CXzs*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %i = alloca i64, align 8
  store %struct.CXzs* %p, %struct.CXzs** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num = getelementptr inbounds %struct.CXzs, %struct.CXzs* %1, i32 0, i32 0
  %2 = load i64, i64* %num, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams = getelementptr inbounds %struct.CXzs, %struct.CXzs* %4, i32 0, i32 2
  %5 = load %struct.CXzStream*, %struct.CXzStream** %streams, align 8
  %arrayidx = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %5, i64 %3
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @Xz_Free(%struct.CXzStream* %arrayidx, %struct.ISzAlloc* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %8, i32 0, i32 1
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %11 = bitcast %struct.ISzAlloc* %10 to i8*
  %12 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams1 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %12, i32 0, i32 2
  %13 = load %struct.CXzStream*, %struct.CXzStream** %streams1, align 8
  %14 = bitcast %struct.CXzStream* %13 to i8*
  call void %9(i8* %11, i8* %14)
  %15 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %numAllocated = getelementptr inbounds %struct.CXzs, %struct.CXzs* %15, i32 0, i32 1
  store i64 0, i64* %numAllocated, align 8
  %16 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num2 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %16, i32 0, i32 0
  store i64 0, i64* %num2, align 8
  %17 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams3 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %17, i32 0, i32 2
  store %struct.CXzStream* null, %struct.CXzStream** %streams3, align 8
  ret void
}

declare void @Xz_Free(%struct.CXzStream*, %struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define i64 @Xzs_GetNumBlocks(%struct.CXzs* %p) #0 {
entry:
  %p.addr = alloca %struct.CXzs*, align 8
  %num = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.CXzs* %p, %struct.CXzs** %p.addr, align 8
  store i64 0, i64* %num, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num1 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %1, i32 0, i32 0
  %2 = load i64, i64* %num1, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams = getelementptr inbounds %struct.CXzs, %struct.CXzs* %4, i32 0, i32 2
  %5 = load %struct.CXzStream*, %struct.CXzStream** %streams, align 8
  %arrayidx = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %5, i64 %3
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %arrayidx, i32 0, i32 1
  %6 = load i64, i64* %numBlocks, align 8
  %7 = load i64, i64* %num, align 8
  %add = add i64 %7, %6
  store i64 %add, i64* %num, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %num, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @Xzs_GetUnpackSize(%struct.CXzs* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.CXzs*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %newSize = alloca i64, align 8
  store %struct.CXzs* %p, %struct.CXzs** %p.addr, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num = getelementptr inbounds %struct.CXzs, %struct.CXzs* %1, i32 0, i32 0
  %2 = load i64, i64* %num, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %size, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams = getelementptr inbounds %struct.CXzs, %struct.CXzs* %5, i32 0, i32 2
  %6 = load %struct.CXzStream*, %struct.CXzStream** %streams, align 8
  %arrayidx = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %6, i64 %4
  %call = call i64 @Xz_GetUnpackSize(%struct.CXzStream* %arrayidx)
  %add = add i64 %3, %call
  store i64 %add, i64* %newSize, align 8
  %7 = load i64, i64* %newSize, align 8
  %8 = load i64, i64* %size, align 8
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load i64, i64* %newSize, align 8
  store i64 %9, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %size, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i32 @Xzs_ReadBackward(%struct.CXzs* %p, %struct.ILookInStream* %stream, i64* %startOffset, %struct.ICompressProgress* %progress, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzs*, align 8
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %startOffset.addr = alloca i64*, align 8
  %progress.addr = alloca %struct.ICompressProgress*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %endOffset = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %st = alloca %struct.CXzStream, align 8
  %res = alloca i32, align 4
  %__result__3 = alloca i32, align 4
  %newNum = alloca i64, align 8
  %data = alloca i8*, align 8
  %__result__27 = alloca i32, align 4
  store %struct.CXzs* %p, %struct.CXzs** %p.addr, align 8
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i64* %startOffset, i64** %startOffset.addr, align 8
  store %struct.ICompressProgress* %progress, %struct.ICompressProgress** %progress.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store i64 0, i64* %endOffset, align 8
  %0 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Seek = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i32 0, i32 3
  %1 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek, align 8
  %2 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %3 = bitcast %struct.ILookInStream* %2 to i8*
  %call = call i32 %1(i8* %3, i64* %endOffset, i32 2)
  store i32 %call, i32* %__result__, align 4
  %4 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %__result__, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %endOffset, align 8
  %7 = load i64*, i64** %startOffset.addr, align 8
  store i64 %6, i64* %7, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.36, %if.end
  call void @Xz_Construct(%struct.CXzStream* %st)
  %8 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %9 = load i64*, i64** %startOffset.addr, align 8
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call1 = call i32 @Xz_ReadBackward(%struct.CXzStream* %st, %struct.ILookInStream* %8, i64* %9, %struct.ISzAlloc* %10)
  store i32 %call1, i32* %res, align 4
  %11 = load i64*, i64** %startOffset.addr, align 8
  %12 = load i64, i64* %11, align 8
  %startOffset2 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %st, i32 0, i32 4
  store i64 %12, i64* %startOffset2, align 8
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %__result__3, align 4
  %14 = load i32, i32* %__result__3, align 4
  %cmp4 = icmp ne i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.cond
  %15 = load i32, i32* %__result__3, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.cond
  %16 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num = getelementptr inbounds %struct.CXzs, %struct.CXzs* %16, i32 0, i32 0
  %17 = load i64, i64* %num, align 8
  %18 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %numAllocated = getelementptr inbounds %struct.CXzs, %struct.CXzs* %18, i32 0, i32 1
  %19 = load i64, i64* %numAllocated, align 8
  %cmp7 = icmp eq i64 %17, %19
  br i1 %cmp7, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.end.6
  %20 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num9 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %20, i32 0, i32 0
  %21 = load i64, i64* %num9, align 8
  %22 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num10 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %22, i32 0, i32 0
  %23 = load i64, i64* %num10, align 8
  %div = udiv i64 %23, 4
  %add = add i64 %21, %div
  %add11 = add i64 %add, 1
  store i64 %add11, i64* %newNum, align 8
  %24 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %24, i32 0, i32 0
  %25 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %26 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %27 = bitcast %struct.ISzAlloc* %26 to i8*
  %28 = load i64, i64* %newNum, align 8
  %mul = mul i64 %28, 40
  %call12 = call i8* %25(i8* %27, i64 %mul)
  store i8* %call12, i8** %data, align 8
  %29 = load i8*, i8** %data, align 8
  %cmp13 = icmp eq i8* %29, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.8
  store i32 2, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.8
  %30 = load i64, i64* %newNum, align 8
  %31 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %numAllocated16 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %31, i32 0, i32 1
  store i64 %30, i64* %numAllocated16, align 8
  %32 = load i8*, i8** %data, align 8
  %33 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams = getelementptr inbounds %struct.CXzs, %struct.CXzs* %33, i32 0, i32 2
  %34 = load %struct.CXzStream*, %struct.CXzStream** %streams, align 8
  %35 = bitcast %struct.CXzStream* %34 to i8*
  %36 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num17 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %36, i32 0, i32 0
  %37 = load i64, i64* %num17, align 8
  %mul18 = mul i64 %37, 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %35, i64 %mul18, i32 1, i1 false)
  %38 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %38, i32 0, i32 1
  %39 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %40 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %41 = bitcast %struct.ISzAlloc* %40 to i8*
  %42 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams19 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %42, i32 0, i32 2
  %43 = load %struct.CXzStream*, %struct.CXzStream** %streams19, align 8
  %44 = bitcast %struct.CXzStream* %43 to i8*
  call void %39(i8* %41, i8* %44)
  %45 = load i8*, i8** %data, align 8
  %46 = bitcast i8* %45 to %struct.CXzStream*
  %47 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams20 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %47, i32 0, i32 2
  store %struct.CXzStream* %46, %struct.CXzStream** %streams20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.15, %if.end.6
  %48 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %num22 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %48, i32 0, i32 0
  %49 = load i64, i64* %num22, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %num22, align 8
  %50 = load %struct.CXzs*, %struct.CXzs** %p.addr, align 8
  %streams23 = getelementptr inbounds %struct.CXzs, %struct.CXzs* %50, i32 0, i32 2
  %51 = load %struct.CXzStream*, %struct.CXzStream** %streams23, align 8
  %arrayidx = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %51, i64 %49
  %52 = bitcast %struct.CXzStream* %arrayidx to i8*
  %53 = bitcast %struct.CXzStream* %st to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 40, i32 8, i1 false)
  %54 = load i64*, i64** %startOffset.addr, align 8
  %55 = load i64, i64* %54, align 8
  %cmp24 = icmp eq i64 %55, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  br label %for.end

if.end.26:                                        ; preds = %if.end.21
  %56 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Seek28 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %56, i32 0, i32 3
  %57 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek28, align 8
  %58 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %59 = bitcast %struct.ILookInStream* %58 to i8*
  %60 = load i64*, i64** %startOffset.addr, align 8
  %call29 = call i32 %57(i8* %59, i64* %60, i32 0)
  store i32 %call29, i32* %__result__27, align 4
  %61 = load i32, i32* %__result__27, align 4
  %cmp30 = icmp ne i32 %61, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  %62 = load i32, i32* %__result__27, align 4
  store i32 %62, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %63 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %tobool = icmp ne %struct.ICompressProgress* %63, null
  br i1 %tobool, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.32
  %64 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %Progress = getelementptr inbounds %struct.ICompressProgress, %struct.ICompressProgress* %64, i32 0, i32 0
  %65 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %Progress, align 8
  %66 = load %struct.ICompressProgress*, %struct.ICompressProgress** %progress.addr, align 8
  %67 = bitcast %struct.ICompressProgress* %66 to i8*
  %68 = load i64, i64* %endOffset, align 8
  %69 = load i64*, i64** %startOffset.addr, align 8
  %70 = load i64, i64* %69, align 8
  %sub = sub nsw i64 %68, %70
  %call33 = call i32 %65(i8* %67, i64 %sub, i64 -1)
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  store i32 10, i32* %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true, %if.end.32
  br label %for.cond

for.end:                                          ; preds = %if.then.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.35, %if.then.31, %if.then.14, %if.then.5, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare void @Xz_Construct(%struct.CXzStream*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Xz_ReadBackward(%struct.CXzStream* %p, %struct.ILookInStream* %stream, i64* %startOffset, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzStream*, align 8
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %startOffset.addr = alloca i64*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %indexSize = alloca i64, align 8
  %buf = alloca [12 x i8], align 1
  %__result__ = alloca i32, align 4
  %__result__5 = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %processedSize = alloca i64, align 8
  %tempBuf = alloca [1024 x i8], align 16
  %__result__21 = alloca i32, align 4
  %__result__26 = alloca i32, align 4
  %__result__56 = alloca i32, align 4
  %__result__62 = alloca i32, align 4
  %__result__110 = alloca i32, align 4
  %__result__116 = alloca i32, align 4
  %totalSize = alloca i64, align 8
  %sum = alloca i64, align 8
  %__result__136 = alloca i32, align 4
  %headerFlags = alloca i16, align 2
  %secToRead = alloca %struct.CSecToRead, align 8
  %__result__142 = alloca i32, align 4
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i64* %startOffset, i64** %startOffset.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64*, i64** %startOffset.addr, align 8
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 3
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %startOffset.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp1 = icmp slt i64 %3, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 17, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i64*, i64** %startOffset.addr, align 8
  store i64 -12, i64* %4, align 8
  %5 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %6 = load i64*, i64** %startOffset.addr, align 8
  %call = call i32 @SeekFromCur(%struct.ILookInStream* %5, i64* %6)
  store i32 %call, i32* %__result__, align 4
  %7 = load i32, i32* %__result__, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %__result__, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 @LookInStream_Read2(%struct.ILookInStream* %9, i8* %arraydecay, i64 12, i32 17)
  store i32 %call6, i32* %__result__5, align 4
  %10 = load i32, i32* %__result__5, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %11 = load i32, i32* %__result__5, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %arraydecay10 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay10, i64 10
  %call11 = call i32 @memcmp(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i32 0, i32 0), i64 2) #4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.78

if.then.13:                                       ; preds = %if.end.9
  store i64 0, i64* %i, align 8
  %12 = load i64*, i64** %startOffset.addr, align 8
  %13 = load i64, i64* %12, align 8
  %add = add nsw i64 %13, 12
  store i64 %add, i64* %12, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.76, %if.then.13
  %14 = load i64*, i64** %startOffset.addr, align 8
  %15 = load i64, i64* %14, align 8
  %cmp14 = icmp slt i64 %15, 12
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %cmp16 = icmp sgt i64 %16, 65536
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %for.cond
  store i32 17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.15
  %17 = load i64*, i64** %startOffset.addr, align 8
  %18 = load i64, i64* %17, align 8
  %cmp19 = icmp sgt i64 %18, 1024
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %19 = load i64*, i64** %startOffset.addr, align 8
  %20 = load i64, i64* %19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1024, %cond.true ], [ %20, %cond.false ]
  store i64 %cond, i64* %processedSize, align 8
  %21 = load i64, i64* %processedSize, align 8
  %22 = load i64, i64* %i, align 8
  %add20 = add i64 %22, %21
  store i64 %add20, i64* %i, align 8
  %23 = load i64, i64* %processedSize, align 8
  %sub = sub nsw i64 0, %23
  %24 = load i64*, i64** %startOffset.addr, align 8
  store i64 %sub, i64* %24, align 8
  %25 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %26 = load i64*, i64** %startOffset.addr, align 8
  %call22 = call i32 @SeekFromCur(%struct.ILookInStream* %25, i64* %26)
  store i32 %call22, i32* %__result__21, align 4
  %27 = load i32, i32* %__result__21, align 4
  %cmp23 = icmp ne i32 %27, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end
  %28 = load i32, i32* %__result__21, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.25:                                        ; preds = %cond.end
  %29 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuf, i32 0, i32 0
  %30 = load i64, i64* %processedSize, align 8
  %call28 = call i32 @LookInStream_Read2(%struct.ILookInStream* %29, i8* %arraydecay27, i64 %30, i32 17)
  store i32 %call28, i32* %__result__26, align 4
  %31 = load i32, i32* %__result__26, align 4
  %cmp29 = icmp ne i32 %31, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  %32 = load i32, i32* %__result__26, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.25
  %33 = load i64, i64* %processedSize, align 8
  %conv = trunc i64 %33 to i32
  store i32 %conv, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.end.31
  %34 = load i32, i32* %j, align 4
  %cmp33 = icmp sge i32 %34, 1
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.32
  %35 = load i32, i32* %j, align 4
  %sub35 = sub nsw i32 %35, 1
  %idxprom = sext i32 %sub35 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuf, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %conv36 = zext i8 %36 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  br label %for.end

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %37 = load i32, i32* %j, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %if.then.39, %for.cond.32
  %38 = load i32, i32* %j, align 4
  %cmp41 = icmp ne i32 %38, 0
  br i1 %cmp41, label %if.then.43, label %if.end.76

if.then.43:                                       ; preds = %for.end
  %39 = load i32, i32* %j, align 4
  %and44 = and i32 %39, 3
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.43
  store i32 17, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.43
  %40 = load i32, i32* %j, align 4
  %conv49 = sext i32 %40 to i64
  %41 = load i64*, i64** %startOffset.addr, align 8
  %42 = load i64, i64* %41, align 8
  %add50 = add nsw i64 %42, %conv49
  store i64 %add50, i64* %41, align 8
  %43 = load i64*, i64** %startOffset.addr, align 8
  %44 = load i64, i64* %43, align 8
  %cmp51 = icmp slt i64 %44, 12
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.48
  store i32 17, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.48
  %45 = load i64*, i64** %startOffset.addr, align 8
  %46 = load i64, i64* %45, align 8
  %sub55 = sub nsw i64 %46, 12
  store i64 %sub55, i64* %45, align 8
  %47 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Seek = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %47, i32 0, i32 3
  %48 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek, align 8
  %49 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %50 = bitcast %struct.ILookInStream* %49 to i8*
  %51 = load i64*, i64** %startOffset.addr, align 8
  %call57 = call i32 %48(i8* %50, i64* %51, i32 0)
  store i32 %call57, i32* %__result__56, align 4
  %52 = load i32, i32* %__result__56, align 4
  %cmp58 = icmp ne i32 %52, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.54
  %53 = load i32, i32* %__result__56, align 4
  store i32 %53, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.54
  %54 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %arraydecay63 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call64 = call i32 @LookInStream_Read2(%struct.ILookInStream* %54, i8* %arraydecay63, i64 12, i32 17)
  store i32 %call64, i32* %__result__62, align 4
  %55 = load i32, i32* %__result__62, align 4
  %cmp65 = icmp ne i32 %55, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.61
  %56 = load i32, i32* %__result__62, align 4
  store i32 %56, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.61
  %arraydecay69 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr70 = getelementptr inbounds i8, i8* %arraydecay69, i64 10
  %call71 = call i32 @memcmp(i8* %add.ptr70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @XZ_FOOTER_SIG, i32 0, i32 0), i64 2) #4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  store i32 17, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.68
  br label %for.end.77

if.end.76:                                        ; preds = %for.end
  br label %for.cond

for.end.77:                                       ; preds = %if.end.75
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %if.end.9
  %arraydecay79 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr80 = getelementptr inbounds i8, i8* %arraydecay79, i64 8
  %arrayidx81 = getelementptr inbounds i8, i8* %add.ptr80, i64 0
  %57 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %57 to i16
  %conv83 = zext i16 %conv82 to i32
  %shl = shl i32 %conv83, 8
  %arraydecay84 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr85 = getelementptr inbounds i8, i8* %arraydecay84, i64 8
  %arrayidx86 = getelementptr inbounds i8, i8* %add.ptr85, i64 1
  %58 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %58 to i32
  %or = or i32 %shl, %conv87
  %conv88 = trunc i32 %or to i16
  %59 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %59, i32 0, i32 0
  store i16 %conv88, i16* %flags, align 2
  %60 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags89 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %60, i32 0, i32 0
  %61 = load i16, i16* %flags89, align 2
  %conv90 = zext i16 %61 to i32
  %cmp91 = icmp sle i32 %conv90, 15
  br i1 %cmp91, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.78
  store i32 4, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.78
  %arraydecay95 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %62 = bitcast i8* %arraydecay95 to i32*
  %63 = load i32, i32* %62, align 4
  %arraydecay96 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr97 = getelementptr inbounds i8, i8* %arraydecay96, i64 4
  %call98 = call i32 @CrcCalc(i8* %add.ptr97, i64 6)
  %cmp99 = icmp ne i32 %63, %call98
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.94
  store i32 16, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.end.94
  %arraydecay103 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %add.ptr104 = getelementptr inbounds i8, i8* %arraydecay103, i64 4
  %64 = bitcast i8* %add.ptr104 to i32*
  %65 = load i32, i32* %64, align 4
  %conv105 = zext i32 %65 to i64
  %add106 = add i64 %conv105, 1
  %shl107 = shl i64 %add106, 2
  store i64 %shl107, i64* %indexSize, align 8
  %66 = load i64, i64* %indexSize, align 8
  %add108 = add i64 %66, 12
  %sub109 = sub nsw i64 0, %add108
  %67 = load i64*, i64** %startOffset.addr, align 8
  store i64 %sub109, i64* %67, align 8
  %68 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %69 = load i64*, i64** %startOffset.addr, align 8
  %call111 = call i32 @SeekFromCur(%struct.ILookInStream* %68, i64* %69)
  store i32 %call111, i32* %__result__110, align 4
  %70 = load i32, i32* %__result__110, align 4
  %cmp112 = icmp ne i32 %70, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.102
  %71 = load i32, i32* %__result__110, align 4
  store i32 %71, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.end.102
  %72 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %73 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %74 = load i64, i64* %indexSize, align 8
  %75 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call117 = call i32 @Xz_ReadIndex(%struct.CXzStream* %72, %struct.ILookInStream* %73, i64 %74, %struct.ISzAlloc* %75)
  store i32 %call117, i32* %__result__116, align 4
  %76 = load i32, i32* %__result__116, align 4
  %cmp118 = icmp ne i32 %76, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.115
  %77 = load i32, i32* %__result__116, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.115
  %78 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %call122 = call i64 @Xz_GetPackSize(%struct.CXzStream* %78)
  store i64 %call122, i64* %totalSize, align 8
  %79 = load i64, i64* %totalSize, align 8
  %add123 = add i64 12, %79
  %80 = load i64, i64* %indexSize, align 8
  %add124 = add i64 %add123, %80
  store i64 %add124, i64* %sum, align 8
  %81 = load i64, i64* %totalSize, align 8
  %cmp125 = icmp eq i64 %81, -1
  br i1 %cmp125, label %if.then.133, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %if.end.121
  %82 = load i64, i64* %sum, align 8
  %cmp128 = icmp uge i64 %82, -9223372036854775808
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.127
  %83 = load i64, i64* %totalSize, align 8
  %cmp131 = icmp uge i64 %83, -9223372036854775808
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.127, %if.end.121
  store i32 16, i32* %retval
  br label %return

if.end.134:                                       ; preds = %lor.lhs.false.130
  %84 = load i64, i64* %sum, align 8
  %sub135 = sub nsw i64 0, %84
  %85 = load i64*, i64** %startOffset.addr, align 8
  store i64 %sub135, i64* %85, align 8
  %86 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %87 = load i64*, i64** %startOffset.addr, align 8
  %call137 = call i32 @SeekFromCur(%struct.ILookInStream* %86, i64* %87)
  store i32 %call137, i32* %__result__136, align 4
  %88 = load i32, i32* %__result__136, align 4
  %cmp138 = icmp ne i32 %88, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.134
  %89 = load i32, i32* %__result__136, align 4
  store i32 %89, i32* %retval
  br label %return

if.end.141:                                       ; preds = %if.end.134
  call void @SecToRead_CreateVTable(%struct.CSecToRead* %secToRead)
  %90 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %realStream = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %secToRead, i32 0, i32 1
  store %struct.ILookInStream* %90, %struct.ILookInStream** %realStream, align 8
  %s = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %secToRead, i32 0, i32 0
  %call143 = call i32 @Xz_ReadHeader(i16* %headerFlags, %struct.ISeqInStream* %s)
  store i32 %call143, i32* %__result__142, align 4
  %91 = load i32, i32* %__result__142, align 4
  %cmp144 = icmp ne i32 %91, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.141
  %92 = load i32, i32* %__result__142, align 4
  store i32 %92, i32* %retval
  br label %return

if.end.147:                                       ; preds = %if.end.141
  %93 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags148 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %93, i32 0, i32 0
  %94 = load i16, i16* %flags148, align 2
  %conv149 = zext i16 %94 to i32
  %95 = load i16, i16* %headerFlags, align 2
  %conv150 = zext i16 %95 to i32
  %cmp151 = icmp eq i32 %conv149, %conv150
  %cond153 = select i1 %cmp151, i32 0, i32 16
  store i32 %cond153, i32* %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.then.146, %if.then.140, %if.then.133, %if.then.120, %if.then.114, %if.then.101, %if.then.93, %if.then.74, %if.then.67, %if.then.60, %if.then.53, %if.then.47, %if.then.30, %if.then.24, %if.then.17, %if.then.8, %if.then.3, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @SeekFromCur(%struct.ILookInStream* %inStream, i64* %res) #0 {
entry:
  %inStream.addr = alloca %struct.ILookInStream*, align 8
  %res.addr = alloca i64*, align 8
  store %struct.ILookInStream* %inStream, %struct.ILookInStream** %inStream.addr, align 8
  store i64* %res, i64** %res.addr, align 8
  %0 = load %struct.ILookInStream*, %struct.ILookInStream** %inStream.addr, align 8
  %Seek = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i32 0, i32 3
  %1 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek, align 8
  %2 = load %struct.ILookInStream*, %struct.ILookInStream** %inStream.addr, align 8
  %3 = bitcast %struct.ILookInStream* %2 to i8*
  %4 = load i64*, i64** %res.addr, align 8
  %call = call i32 %1(i8* %3, i64* %4, i32 1)
  ret i32 %call
}

declare i32 @LookInStream_Read2(%struct.ILookInStream*, i8*, i64, i32) #1

declare i32 @CrcCalc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @Xz_ReadIndex(%struct.CXzStream* %p, %struct.ILookInStream* %stream, i64 %indexSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzStream*, align 8
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %indexSize.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %res = alloca i32, align 4
  %size = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i64 %indexSize, i64* %indexSize.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64, i64* %indexSize.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483648
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %indexSize.addr, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %3 = load i64, i64* %indexSize.addr, align 8
  %cmp1 = icmp ne i64 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %4, i32 0, i32 0
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %6 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %7 = bitcast %struct.ISzAlloc* %6 to i8*
  %8 = load i64, i64* %size, align 8
  %call = call i8* %5(i8* %7, i64 %8)
  store i8* %call, i8** %buf, align 8
  %9 = load i8*, i8** %buf, align 8
  %cmp4 = icmp eq i8* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %10 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %11 = load i8*, i8** %buf, align 8
  %12 = load i64, i64* %size, align 8
  %call7 = call i32 @LookInStream_Read2(%struct.ILookInStream* %10, i8* %11, i64 %12, i32 4)
  store i32 %call7, i32* %res, align 4
  %13 = load i32, i32* %res, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %14 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call10 = call i32 @Xz_ReadIndex2(%struct.CXzStream* %14, i8* %15, i64 %16, %struct.ISzAlloc* %17)
  store i32 %call10, i32* %res, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %18 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %18, i32 0, i32 1
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %20 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %21 = bitcast %struct.ISzAlloc* %20 to i8*
  %22 = load i8*, i8** %buf, align 8
  call void %19(i8* %21, i8* %22)
  %23 = load i32, i32* %res, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.5, %if.then.2, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @SecToRead_CreateVTable(%struct.CSecToRead*) #1

; Function Attrs: nounwind uwtable
define internal i32 @Xz_ReadIndex2(%struct.CXzStream* %p, i8* %buf, i64 %size, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %i = alloca i64, align 8
  %numBlocks = alloca i64, align 8
  %crcStartPos = alloca i64, align 8
  %pos = alloca i64, align 8
  %crc = alloca i32, align 4
  %numBlocks64 = alloca i64, align 8
  %s = alloca i32, align 4
  %block = alloca %struct.CXzBlockSizes*, align 8
  %s37 = alloca i32, align 4
  %s47 = alloca i32, align 4
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  store i64 1, i64* %pos, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 16, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %3, 4
  store i64 %sub, i64* %size.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call = call i32 @CrcCalc(i8* %4, i64 %5)
  store i32 %call, i32* %crc, align 4
  %6 = load i32, i32* %crc, align 4
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = bitcast i8* %add.ptr to i32*
  %10 = load i32, i32* %9, align 4
  %cmp3 = icmp ne i32 %6, %10
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 16, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %pos, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i64, i64* %size.addr, align 8
  %14 = load i64, i64* %pos, align 8
  %sub8 = sub i64 %13, %14
  %call9 = call i32 @Xz_ReadVarInt(i8* %add.ptr7, i64 %sub8, i64* %numBlocks64)
  store i32 %call9, i32* %s, align 4
  %15 = load i32, i32* %s, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  store i32 16, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %16 = load i32, i32* %s, align 4
  %conv14 = zext i32 %16 to i64
  %17 = load i64, i64* %pos, align 8
  %add = add i64 %17, %conv14
  store i64 %add, i64* %pos, align 8
  %18 = load i64, i64* %numBlocks64, align 8
  store i64 %18, i64* %numBlocks, align 8
  %19 = load i64, i64* %numBlocks, align 8
  %20 = load i64, i64* %numBlocks64, align 8
  %cmp15 = icmp ne i64 %19, %20
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.13
  %21 = load i64, i64* %numBlocks, align 8
  %mul = mul i64 %21, 2
  %22 = load i64, i64* %size.addr, align 8
  %cmp18 = icmp ugt i64 %mul, %22
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.13
  store i32 16, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.17
  %23 = load i64, i64* %pos, align 8
  store i64 %23, i64* %crcStartPos, align 8
  %24 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %25 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @Xz_Free(%struct.CXzStream* %24, %struct.ISzAlloc* %25)
  %26 = load i64, i64* %numBlocks, align 8
  %cmp22 = icmp ne i64 %26, 0
  br i1 %cmp22, label %if.then.24, label %if.end.62

if.then.24:                                       ; preds = %if.end.21
  %27 = load i64, i64* %numBlocks, align 8
  %28 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks25 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %28, i32 0, i32 1
  store i64 %27, i64* %numBlocks25, align 8
  %29 = load i64, i64* %numBlocks, align 8
  %30 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocksAllocated = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %30, i32 0, i32 2
  store i64 %29, i64* %numBlocksAllocated, align 8
  %31 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %31, i32 0, i32 0
  %32 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %33 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %34 = bitcast %struct.ISzAlloc* %33 to i8*
  %35 = load i64, i64* %numBlocks, align 8
  %mul26 = mul i64 16, %35
  %call27 = call i8* %32(i8* %34, i64 %mul26)
  %36 = bitcast i8* %call27 to %struct.CXzBlockSizes*
  %37 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %37, i32 0, i32 3
  store %struct.CXzBlockSizes* %36, %struct.CXzBlockSizes** %blocks, align 8
  %38 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks28 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %38, i32 0, i32 3
  %39 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks28, align 8
  %cmp29 = icmp eq %struct.CXzBlockSizes* %39, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.24
  store i32 2, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.24
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %numBlocks, align 8
  %cmp33 = icmp ult i64 %40, %41
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks35 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %43, i32 0, i32 3
  %44 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks35, align 8
  %arrayidx36 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %44, i64 %42
  store %struct.CXzBlockSizes* %arrayidx36, %struct.CXzBlockSizes** %block, align 8
  %45 = load i8*, i8** %buf.addr, align 8
  %46 = load i64, i64* %pos, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i64, i64* %size.addr, align 8
  %48 = load i64, i64* %pos, align 8
  %sub39 = sub i64 %47, %48
  %49 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %totalSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %49, i32 0, i32 1
  %call40 = call i32 @Xz_ReadVarInt(i8* %add.ptr38, i64 %sub39, i64* %totalSize)
  store i32 %call40, i32* %s37, align 4
  %50 = load i32, i32* %s37, align 4
  %cmp41 = icmp eq i32 %50, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body
  store i32 16, i32* %retval
  br label %return

if.end.44:                                        ; preds = %for.body
  %51 = load i32, i32* %s37, align 4
  %conv45 = zext i32 %51 to i64
  %52 = load i64, i64* %pos, align 8
  %add46 = add i64 %52, %conv45
  store i64 %add46, i64* %pos, align 8
  %53 = load i8*, i8** %buf.addr, align 8
  %54 = load i64, i64* %pos, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %53, i64 %54
  %55 = load i64, i64* %size.addr, align 8
  %56 = load i64, i64* %pos, align 8
  %sub49 = sub i64 %55, %56
  %57 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %unpackSize = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %57, i32 0, i32 0
  %call50 = call i32 @Xz_ReadVarInt(i8* %add.ptr48, i64 %sub49, i64* %unpackSize)
  store i32 %call50, i32* %s47, align 4
  %58 = load i32, i32* %s47, align 4
  %cmp51 = icmp eq i32 %58, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.44
  store i32 16, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.44
  %59 = load i32, i32* %s47, align 4
  %conv55 = zext i32 %59 to i64
  %60 = load i64, i64* %pos, align 8
  %add56 = add i64 %60, %conv55
  store i64 %add56, i64* %pos, align 8
  %61 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %block, align 8
  %totalSize57 = getelementptr inbounds %struct.CXzBlockSizes, %struct.CXzBlockSizes* %61, i32 0, i32 1
  %62 = load i64, i64* %totalSize57, align 8
  %cmp58 = icmp eq i64 %62, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.54
  store i32 16, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %63 = load i64, i64* %i, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %if.end.21
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %if.end.62
  %64 = load i64, i64* %pos, align 8
  %and = and i64 %64, 3
  %cmp63 = icmp ne i64 %and, 0
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %65 = load i64, i64* %pos, align 8
  %inc65 = add i64 %65, 1
  store i64 %inc65, i64* %pos, align 8
  %66 = load i8*, i8** %buf.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %66, i64 %65
  %67 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %67 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %while.body
  store i32 16, i32* %retval
  br label %return

if.end.71:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load i64, i64* %pos, align 8
  %69 = load i64, i64* %size.addr, align 8
  %cmp72 = icmp eq i64 %68, %69
  %cond = select i1 %cmp72, i32 0, i32 16
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.70, %if.then.60, %if.then.53, %if.then.43, %if.then.31, %if.then.20, %if.then.12, %if.then.5, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare i32 @Xz_ReadVarInt(i8*, i64, i64*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
