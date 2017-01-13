; ModuleID = './MultiSource.Benchmarks.7zip/14.7zStream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CLookToRead = type { %struct.ILookInStream, %struct.ISeekInStream*, i64, i64, [16384 x i8] }
%struct.ISeekInStream = type { i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CSecToLook = type { %struct.ISeqInStream, %struct.ILookInStream* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

; Function Attrs: nounwind uwtable
define i32 @SeqInStream_Read2(%struct.ISeqInStream* %stream, i8* %buf, i64 %size, i32 %errorType) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ISeqInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %errorType.addr = alloca i32, align 4
  %processed = alloca i64, align 8
  %__result__ = alloca i32, align 4
  store %struct.ISeqInStream* %stream, %struct.ISeqInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %errorType, i32* %errorType.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %processed, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %2, i32 0, i32 0
  %3 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %4 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %5 = bitcast %struct.ISeqInStream* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i32 %3(i8* %5, i8* %6, i64* %processed)
  store i32 %call, i32* %__result__, align 4
  %7 = load i32, i32* %__result__, align 4
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %__result__, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load i64, i64* %processed, align 8
  %cmp2 = icmp eq i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %errorType.addr, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %processed, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %buf.addr, align 8
  %13 = load i64, i64* %processed, align 8
  %14 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %14, %13
  store i64 %sub, i64* %size.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @SeqInStream_Read(%struct.ISeqInStream* %stream, i8* %buf, i64 %size) #0 {
entry:
  %stream.addr = alloca %struct.ISeqInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.ISeqInStream* %stream, %struct.ISeqInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i32 @SeqInStream_Read2(%struct.ISeqInStream* %0, i8* %1, i64 %2, i32 6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @SeqInStream_ReadByte(%struct.ISeqInStream* %stream, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ISeqInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %processed = alloca i64, align 8
  %__result__ = alloca i32, align 4
  store %struct.ISeqInStream* %stream, %struct.ISeqInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 1, i64* %processed, align 8
  %0 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %0, i32 0, i32 0
  %1 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %2 = load %struct.ISeqInStream*, %struct.ISeqInStream** %stream.addr, align 8
  %3 = bitcast %struct.ISeqInStream* %2 to i8*
  %4 = load i8*, i8** %buf.addr, align 8
  %call = call i32 %1(i8* %3, i8* %4, i64* %processed)
  store i32 %call, i32* %__result__, align 4
  %5 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %__result__, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %processed, align 8
  %cmp1 = icmp eq i64 %7, 1
  %cond = select i1 %cmp1, i32 0, i32 6
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @LookInStream_SeekTo(%struct.ILookInStream* %stream, i64 %offset) #0 {
entry:
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %offset.addr = alloca i64, align 8
  %t = alloca i64, align 8
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i64, i64* %offset.addr, align 8
  store i64 %0, i64* %t, align 8
  %1 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Seek = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %1, i32 0, i32 3
  %2 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek, align 8
  %3 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %4 = bitcast %struct.ILookInStream* %3 to i8*
  %call = call i32 %2(i8* %4, i64* %t, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @LookInStream_LookRead(%struct.ILookInStream* %stream, i8* %buf, i64* %size) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %lookBuf = alloca i8*, align 8
  %__result__ = alloca i32, align 4
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Look = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %2, i32 0, i32 0
  %3 = load i32 (i8*, i8**, i64*)*, i32 (i8*, i8**, i64*)** %Look, align 8
  %4 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %5 = bitcast %struct.ILookInStream* %4 to i8*
  %6 = load i64*, i64** %size.addr, align 8
  %call = call i32 %3(i8* %5, i8** %lookBuf, i64* %6)
  store i32 %call, i32* %__result__, align 4
  %7 = load i32, i32* %__result__, align 4
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %__result__, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i8*, i8** %lookBuf, align 8
  %11 = load i64*, i64** %size.addr, align 8
  %12 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %12, i32 1, i1 false)
  %13 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Skip = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %13, i32 0, i32 1
  %14 = load i32 (i8*, i64)*, i32 (i8*, i64)** %Skip, align 8
  %15 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %16 = bitcast %struct.ILookInStream* %15 to i8*
  %17 = load i64*, i64** %size.addr, align 8
  %18 = load i64, i64* %17, align 8
  %call4 = call i32 %14(i8* %16, i64 %18)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @LookInStream_Read2(%struct.ILookInStream* %stream, i8* %buf, i64 %size, i32 %errorType) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %errorType.addr = alloca i32, align 4
  %processed = alloca i64, align 8
  %__result__ = alloca i32, align 4
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %errorType, i32* %errorType.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %processed, align 8
  %2 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %Read = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %2, i32 0, i32 2
  %3 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %4 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %5 = bitcast %struct.ILookInStream* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i32 %3(i8* %5, i8* %6, i64* %processed)
  store i32 %call, i32* %__result__, align 4
  %7 = load i32, i32* %__result__, align 4
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %__result__, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load i64, i64* %processed, align 8
  %cmp2 = icmp eq i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %errorType.addr, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %processed, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %buf.addr, align 8
  %13 = load i64, i64* %processed, align 8
  %14 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %14, %13
  store i64 %sub, i64* %size.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @LookInStream_Read(%struct.ILookInStream* %stream, i8* %buf, i64 %size) #0 {
entry:
  %stream.addr = alloca %struct.ILookInStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.ILookInStream* %stream, %struct.ILookInStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.ILookInStream*, %struct.ILookInStream** %stream.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i32 @LookInStream_Read2(%struct.ILookInStream* %0, i8* %1, i64 %2, i32 6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @LookToRead_CreateVTable(%struct.CLookToRead* %p, i32 %lookahead) #0 {
entry:
  %p.addr = alloca %struct.CLookToRead*, align 8
  %lookahead.addr = alloca i32, align 4
  store %struct.CLookToRead* %p, %struct.CLookToRead** %p.addr, align 8
  store i32 %lookahead, i32* %lookahead.addr, align 4
  %0 = load i32, i32* %lookahead.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 (i8*, i8**, i64*)* @LookToRead_Look_Lookahead, i32 (i8*, i8**, i64*)* @LookToRead_Look_Exact
  %1 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %s = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %1, i32 0, i32 0
  %Look = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %s, i32 0, i32 0
  store i32 (i8*, i8**, i64*)* %cond, i32 (i8*, i8**, i64*)** %Look, align 8
  %2 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %s1 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %2, i32 0, i32 0
  %Skip = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %s1, i32 0, i32 1
  store i32 (i8*, i64)* @LookToRead_Skip, i32 (i8*, i64)** %Skip, align 8
  %3 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %s2 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %3, i32 0, i32 0
  %Read = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %s2, i32 0, i32 2
  store i32 (i8*, i8*, i64*)* @LookToRead_Read, i32 (i8*, i8*, i64*)** %Read, align 8
  %4 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %s3 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %4, i32 0, i32 0
  %Seek = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %s3, i32 0, i32 3
  store i32 (i8*, i64*, i32)* @LookToRead_Seek, i32 (i8*, i64*, i32)** %Seek, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @LookToRead_Look_Lookahead(i8* %pp, i8** %buf, i64* %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32, align 4
  %p = alloca %struct.CLookToRead*, align 8
  %size2 = alloca i64, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLookToRead*
  store %struct.CLookToRead* %1, %struct.CLookToRead** %p, align 8
  %2 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size1 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %2, i32 0, i32 3
  %3 = load i64, i64* %size1, align 8
  %4 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %4, i32 0, i32 2
  %5 = load i64, i64* %pos, align 8
  %sub = sub i64 %3, %5
  store i64 %sub, i64* %size2, align 8
  %6 = load i64, i64* %size2, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i64*, i64** %size.addr, align 8
  %8 = load i64, i64* %7, align 8
  %cmp2 = icmp ugt i64 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos3 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %9, i32 0, i32 2
  store i64 0, i64* %pos3, align 8
  store i64 16384, i64* %size2, align 8
  %10 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %10, i32 0, i32 1
  %11 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream, align 8
  %Read = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %11, i32 0, i32 0
  %12 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %13 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream4 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %13, i32 0, i32 1
  %14 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream4, align 8
  %15 = bitcast %struct.ISeekInStream* %14 to i8*
  %16 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %buf5 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %16, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf5, i32 0, i32 0
  %call = call i32 %12(i8* %15, i8* %arraydecay, i64* %size2)
  store i32 %call, i32* %res, align 4
  %17 = load i64, i64* %size2, align 8
  %18 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size6 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %18, i32 0, i32 3
  store i64 %17, i64* %size6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load i64, i64* %size2, align 8
  %20 = load i64*, i64** %size.addr, align 8
  %21 = load i64, i64* %20, align 8
  %cmp7 = icmp ult i64 %19, %21
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %22 = load i64, i64* %size2, align 8
  %23 = load i64*, i64** %size.addr, align 8
  store i64 %22, i64* %23, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %24 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %buf10 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %24, i32 0, i32 4
  %arraydecay11 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf10, i32 0, i32 0
  %25 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos12 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %25, i32 0, i32 2
  %26 = load i64, i64* %pos12, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay11, i64 %26
  %27 = load i8**, i8*** %buf.addr, align 8
  store i8* %add.ptr, i8** %27, align 8
  %28 = load i32, i32* %res, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @LookToRead_Look_Exact(i8* %pp, i8** %buf, i64* %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32, align 4
  %p = alloca %struct.CLookToRead*, align 8
  %size2 = alloca i64, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLookToRead*
  store %struct.CLookToRead* %1, %struct.CLookToRead** %p, align 8
  %2 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size1 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %2, i32 0, i32 3
  %3 = load i64, i64* %size1, align 8
  %4 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %4, i32 0, i32 2
  %5 = load i64, i64* %pos, align 8
  %sub = sub i64 %3, %5
  store i64 %sub, i64* %size2, align 8
  %6 = load i64, i64* %size2, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %7 = load i64*, i64** %size.addr, align 8
  %8 = load i64, i64* %7, align 8
  %cmp2 = icmp ugt i64 %8, 0
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos3 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %9, i32 0, i32 2
  store i64 0, i64* %pos3, align 8
  %10 = load i64*, i64** %size.addr, align 8
  %11 = load i64, i64* %10, align 8
  %cmp4 = icmp ugt i64 %11, 16384
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load i64*, i64** %size.addr, align 8
  store i64 16384, i64* %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %13 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %13, i32 0, i32 1
  %14 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream, align 8
  %Read = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %14, i32 0, i32 0
  %15 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %16 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream6 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %16, i32 0, i32 1
  %17 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream6, align 8
  %18 = bitcast %struct.ISeekInStream* %17 to i8*
  %19 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %buf7 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %19, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf7, i32 0, i32 0
  %20 = load i64*, i64** %size.addr, align 8
  %call = call i32 %15(i8* %18, i8* %arraydecay, i64* %20)
  store i32 %call, i32* %res, align 4
  %21 = load i64*, i64** %size.addr, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size8 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %23, i32 0, i32 3
  store i64 %22, i64* %size8, align 8
  store i64 %22, i64* %size2, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  %24 = load i64, i64* %size2, align 8
  %25 = load i64*, i64** %size.addr, align 8
  %26 = load i64, i64* %25, align 8
  %cmp10 = icmp ult i64 %24, %26
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %27 = load i64, i64* %size2, align 8
  %28 = load i64*, i64** %size.addr, align 8
  store i64 %27, i64* %28, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %29 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %buf13 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %29, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf13, i32 0, i32 0
  %30 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos15 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %30, i32 0, i32 2
  %31 = load i64, i64* %pos15, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay14, i64 %31
  %32 = load i8**, i8*** %buf.addr, align 8
  store i8* %add.ptr, i8** %32, align 8
  %33 = load i32, i32* %res, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @LookToRead_Skip(i8* %pp, i64 %offset) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %p = alloca %struct.CLookToRead*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLookToRead*
  store %struct.CLookToRead* %1, %struct.CLookToRead** %p, align 8
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %3, i32 0, i32 2
  %4 = load i64, i64* %pos, align 8
  %add = add i64 %4, %2
  store i64 %add, i64* %pos, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @LookToRead_Read(i8* %pp, i8* %buf, i64* %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca %struct.CLookToRead*, align 8
  %rem = alloca i64, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLookToRead*
  store %struct.CLookToRead* %1, %struct.CLookToRead** %p, align 8
  %2 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size1 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %2, i32 0, i32 3
  %3 = load i64, i64* %size1, align 8
  %4 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %4, i32 0, i32 2
  %5 = load i64, i64* %pos, align 8
  %sub = sub i64 %3, %5
  store i64 %sub, i64* %rem, align 8
  %6 = load i64, i64* %rem, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %7, i32 0, i32 1
  %8 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream, align 8
  %Read = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %8, i32 0, i32 0
  %9 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %10 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream2 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %10, i32 0, i32 1
  %11 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream2, align 8
  %12 = bitcast %struct.ISeekInStream* %11 to i8*
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i64*, i64** %size.addr, align 8
  %call = call i32 %9(i8* %12, i8* %13, i64* %14)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i64, i64* %rem, align 8
  %16 = load i64*, i64** %size.addr, align 8
  %17 = load i64, i64* %16, align 8
  %cmp3 = icmp ugt i64 %15, %17
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %18 = load i64*, i64** %size.addr, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %rem, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %buf6 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf6, i32 0, i32 0
  %22 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos7 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %22, i32 0, i32 2
  %23 = load i64, i64* %pos7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %23
  %24 = load i64, i64* %rem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %add.ptr, i64 %24, i32 1, i1 false)
  %25 = load i64, i64* %rem, align 8
  %26 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos8 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %26, i32 0, i32 2
  %27 = load i64, i64* %pos8, align 8
  %add = add i64 %27, %25
  store i64 %add, i64* %pos8, align 8
  %28 = load i64, i64* %rem, align 8
  %29 = load i64*, i64** %size.addr, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @LookToRead_Seek(i8* %pp, i64* %pos, i32 %origin) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %pos.addr = alloca i64*, align 8
  %origin.addr = alloca i32, align 4
  %p = alloca %struct.CLookToRead*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  store i32 %origin, i32* %origin.addr, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLookToRead*
  store %struct.CLookToRead* %1, %struct.CLookToRead** %p, align 8
  %2 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %size = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %2, i32 0, i32 3
  store i64 0, i64* %size, align 8
  %3 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %pos1 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %3, i32 0, i32 2
  store i64 0, i64* %pos1, align 8
  %4 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %4, i32 0, i32 1
  %5 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream, align 8
  %Seek = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %5, i32 0, i32 1
  %6 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %Seek, align 8
  %7 = load %struct.CLookToRead*, %struct.CLookToRead** %p, align 8
  %realStream2 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %7, i32 0, i32 1
  %8 = load %struct.ISeekInStream*, %struct.ISeekInStream** %realStream2, align 8
  %9 = bitcast %struct.ISeekInStream* %8 to i8*
  %10 = load i64*, i64** %pos.addr, align 8
  %11 = load i32, i32* %origin.addr, align 4
  %call = call i32 %6(i8* %9, i64* %10, i32 %11)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @LookToRead_Init(%struct.CLookToRead* %p) #0 {
entry:
  %p.addr = alloca %struct.CLookToRead*, align 8
  store %struct.CLookToRead* %p, %struct.CLookToRead** %p.addr, align 8
  %0 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %size = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i32 0, i32 3
  store i64 0, i64* %size, align 8
  %1 = load %struct.CLookToRead*, %struct.CLookToRead** %p.addr, align 8
  %pos = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %1, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @SecToLook_CreateVTable(%struct.CSecToLook* %p) #0 {
entry:
  %p.addr = alloca %struct.CSecToLook*, align 8
  store %struct.CSecToLook* %p, %struct.CSecToLook** %p.addr, align 8
  %0 = load %struct.CSecToLook*, %struct.CSecToLook** %p.addr, align 8
  %s = getelementptr inbounds %struct.CSecToLook, %struct.CSecToLook* %0, i32 0, i32 0
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %s, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToLook_Read, i32 (i8*, i8*, i64*)** %Read, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @SecToLook_Read(i8* %pp, i8* %buf, i64* %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca %struct.CSecToLook*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CSecToLook*
  store %struct.CSecToLook* %1, %struct.CSecToLook** %p, align 8
  %2 = load %struct.CSecToLook*, %struct.CSecToLook** %p, align 8
  %realStream = getelementptr inbounds %struct.CSecToLook, %struct.CSecToLook* %2, i32 0, i32 1
  %3 = load %struct.ILookInStream*, %struct.ILookInStream** %realStream, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64*, i64** %size.addr, align 8
  %call = call i32 @LookInStream_LookRead(%struct.ILookInStream* %3, i8* %4, i64* %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @SecToRead_CreateVTable(%struct.CSecToRead* %p) #0 {
entry:
  %p.addr = alloca %struct.CSecToRead*, align 8
  store %struct.CSecToRead* %p, %struct.CSecToRead** %p.addr, align 8
  %0 = load %struct.CSecToRead*, %struct.CSecToRead** %p.addr, align 8
  %s = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %0, i32 0, i32 0
  %Read = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %s, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToRead_Read, i32 (i8*, i8*, i64*)** %Read, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @SecToRead_Read(i8* %pp, i8* %buf, i64* %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %p = alloca %struct.CSecToRead*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CSecToRead*
  store %struct.CSecToRead* %1, %struct.CSecToRead** %p, align 8
  %2 = load %struct.CSecToRead*, %struct.CSecToRead** %p, align 8
  %realStream = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %2, i32 0, i32 1
  %3 = load %struct.ILookInStream*, %struct.ILookInStream** %realStream, align 8
  %Read = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %3, i32 0, i32 2
  %4 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %Read, align 8
  %5 = load %struct.CSecToRead*, %struct.CSecToRead** %p, align 8
  %realStream1 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %5, i32 0, i32 1
  %6 = load %struct.ILookInStream*, %struct.ILookInStream** %realStream1, align 8
  %7 = bitcast %struct.ILookInStream* %6 to i8*
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64*, i64** %size.addr, align 8
  %call = call i32 %4(i8* %7, i8* %8, i64* %9)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
