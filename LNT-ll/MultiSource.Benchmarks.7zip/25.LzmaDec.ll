; ModuleID = './MultiSource.Benchmarks.7zip/25.LzmaDec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzmaDec = type { %struct._CLzmaProps, i16*, i8*, i8*, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

; Function Attrs: nounwind uwtable
define void @LzmaDec_InitDicAndState(%struct.CLzmaDec* %p, i32 %initDic, i32 %initState) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %initDic.addr = alloca i32, align 4
  %initState.addr = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i32 %initDic, i32* %initDic.addr, align 4
  store i32 %initState, i32* %initState.addr, align 4
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needFlush = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 13
  store i32 1, i32* %needFlush, align 4
  %1 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %1, i32 0, i32 12
  store i32 0, i32* %remainLen, align 4
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 16
  store i32 0, i32* %tempBufSize, align 4
  %3 = load i32, i32* %initDic.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 8
  store i32 0, i32* %processedPos, align 4
  %5 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %5, i32 0, i32 9
  store i32 0, i32* %checkDicSize, align 4
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 14
  store i32 1, i32* %needInitState, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %initState.addr, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needInitState3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 14
  store i32 1, i32* %needInitState3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaDec_Init(%struct.CLzmaDec* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 6
  store i64 0, i64* %dicPos, align 8
  %1 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* %1, i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* %p, i64 %dicLimit, i8* %src, i64* %srcLen, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %dicLimit.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %inSize = alloca i64, align 8
  %checkEndMarkNow = alloca i32, align 4
  %processed = alloca i64, align 8
  %bufLimit = alloca i8*, align 8
  %dummyRes = alloca i32, align 4
  %rem = alloca i32, align 4
  %lookAhead = alloca i32, align 4
  %dummyRes95 = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i64 %dicLimit, i64* %dicLimit.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  %0 = load i64*, i64** %srcLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %inSize, align 8
  %2 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %4 = load i64, i64* %dicLimit.addr, align 8
  call void @LzmaDec_WriteRem(%struct.CLzmaDec* %3, i64 %4)
  %5 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %5, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.137, %entry
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 12
  %7 = load i32, i32* %remainLen, align 4
  %cmp = icmp ne i32 %7, 274
  br i1 %cmp, label %while.body, label %while.end.138

while.body:                                       ; preds = %while.cond
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needFlush = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 13
  %9 = load i32, i32* %needFlush, align 4
  %cmp1 = icmp ne i32 %9, 0
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %while.body
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i64, i64* %inSize, align 8
  %cmp2 = icmp ugt i64 %10, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %11, i32 0, i32 16
  %12 = load i32, i32* %tempBufSize, align 4
  %cmp3 = icmp ult i32 %12, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %15 = load i8, i8* %14, align 1
  %16 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %16, i32 0, i32 16
  %17 = load i32, i32* %tempBufSize4, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %tempBufSize4, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %18, i32 0, i32 17
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf, i32 0, i64 %idxprom
  store i8 %15, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64*, i64** %srcLen.addr, align 8
  %20 = load i64, i64* %19, align 8
  %inc5 = add i64 %20, 1
  store i64 %inc5, i64* %19, align 8
  %21 = load i64, i64* %inSize, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %inSize, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %22, i32 0, i32 16
  %23 = load i32, i32* %tempBufSize6, align 4
  %cmp7 = icmp ult i32 %23, 5
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.end
  %24 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %24, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %25 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf9 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %25, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf9, i32 0, i64 0
  %26 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %26 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %27 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %28 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf15 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %28, i32 0, i32 17
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf15, i32 0, i32 0
  call void @LzmaDec_InitRc(%struct.CLzmaDec* %27, i8* %arraydecay)
  %29 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize16 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %29, i32 0, i32 16
  store i32 0, i32* %tempBufSize16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %while.body
  store i32 0, i32* %checkEndMarkNow, align 4
  %30 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %30, i32 0, i32 6
  %31 = load i64, i64* %dicPos, align 8
  %32 = load i64, i64* %dicLimit.addr, align 8
  %cmp18 = icmp uge i64 %31, %32
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %if.end.17
  %33 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen21 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %33, i32 0, i32 12
  %34 = load i32, i32* %remainLen21, align 4
  %cmp22 = icmp eq i32 %34, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.20
  %35 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %35, i32 0, i32 5
  %36 = load i32, i32* %code, align 4
  %cmp24 = icmp eq i32 %36, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  %37 = load i32*, i32** %status.addr, align 8
  store i32 4, i32* %37, align 4
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.then.20
  %38 = load i32, i32* %finishMode.addr, align 4
  %cmp28 = icmp eq i32 %38, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %39 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %39, align 4
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %40 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen32 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %40, i32 0, i32 12
  %41 = load i32, i32* %remainLen32, align 4
  %cmp33 = icmp ne i32 %41, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %42 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %42, align 4
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.31
  store i32 1, i32* %checkEndMarkNow, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.17
  %43 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %43, i32 0, i32 14
  %44 = load i32, i32* %needInitState, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.37
  %45 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  call void @LzmaDec_InitStateReal(%struct.CLzmaDec* %45)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.37
  %46 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize40 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %46, i32 0, i32 16
  %47 = load i32, i32* %tempBufSize40, align 4
  %cmp41 = icmp eq i32 %47, 0
  br i1 %cmp41, label %if.then.43, label %if.else.71

if.then.43:                                       ; preds = %if.end.39
  %48 = load i64, i64* %inSize, align 8
  %cmp44 = icmp ult i64 %48, 20
  br i1 %cmp44, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.43
  %49 = load i32, i32* %checkEndMarkNow, align 4
  %tobool46 = icmp ne i32 %49, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.43
  %50 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %51 = load i8*, i8** %src.addr, align 8
  %52 = load i64, i64* %inSize, align 8
  %call = call i32 @LzmaDec_TryDummy(%struct.CLzmaDec* %50, i8* %51, i64 %52)
  store i32 %call, i32* %dummyRes, align 4
  %53 = load i32, i32* %dummyRes, align 4
  %cmp48 = icmp eq i32 %53, 0
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.47
  %54 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf51 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %54, i32 0, i32 17
  %55 = bitcast [20 x i8]* %tempBuf51 to i8*
  %56 = load i8*, i8** %src.addr, align 8
  %57 = load i64, i64* %inSize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 %57, i32 1, i1 false)
  %58 = load i64, i64* %inSize, align 8
  %conv52 = trunc i64 %58 to i32
  %59 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize53 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %59, i32 0, i32 16
  store i32 %conv52, i32* %tempBufSize53, align 4
  %60 = load i64, i64* %inSize, align 8
  %61 = load i64*, i64** %srcLen.addr, align 8
  %62 = load i64, i64* %61, align 8
  %add = add i64 %62, %60
  store i64 %add, i64* %61, align 8
  %63 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %63, align 4
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.47
  %64 = load i32, i32* %checkEndMarkNow, align 4
  %tobool55 = icmp ne i32 %64, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.60

land.lhs.true.56:                                 ; preds = %if.end.54
  %65 = load i32, i32* %dummyRes, align 4
  %cmp57 = icmp ne i32 %65, 2
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.56
  %66 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %66, align 4
  store i32 1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.56, %if.end.54
  %67 = load i8*, i8** %src.addr, align 8
  store i8* %67, i8** %bufLimit, align 8
  br label %if.end.62

if.else:                                          ; preds = %lor.lhs.false
  %68 = load i8*, i8** %src.addr, align 8
  %69 = load i64, i64* %inSize, align 8
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %69
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr, i64 -20
  store i8* %add.ptr61, i8** %bufLimit, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.end.60
  %70 = load i8*, i8** %src.addr, align 8
  %71 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %71, i32 0, i32 3
  store i8* %70, i8** %buf, align 8
  %72 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %73 = load i64, i64* %dicLimit.addr, align 8
  %74 = load i8*, i8** %bufLimit, align 8
  %call63 = call i32 @LzmaDec_DecodeReal2(%struct.CLzmaDec* %72, i64 %73, i8* %74)
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  store i32 1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.62
  %75 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf68 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %75, i32 0, i32 3
  %76 = load i8*, i8** %buf68, align 8
  %77 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %processed, align 8
  %78 = load i64, i64* %processed, align 8
  %79 = load i64*, i64** %srcLen.addr, align 8
  %80 = load i64, i64* %79, align 8
  %add69 = add i64 %80, %78
  store i64 %add69, i64* %79, align 8
  %81 = load i64, i64* %processed, align 8
  %82 = load i8*, i8** %src.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %add.ptr70, i8** %src.addr, align 8
  %83 = load i64, i64* %processed, align 8
  %84 = load i64, i64* %inSize, align 8
  %sub = sub i64 %84, %83
  store i64 %sub, i64* %inSize, align 8
  br label %if.end.137

if.else.71:                                       ; preds = %if.end.39
  %85 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize72 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %85, i32 0, i32 16
  %86 = load i32, i32* %tempBufSize72, align 4
  store i32 %86, i32* %rem, align 4
  store i32 0, i32* %lookAhead, align 4
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.81, %if.else.71
  %87 = load i32, i32* %rem, align 4
  %cmp74 = icmp ult i32 %87, 20
  br i1 %cmp74, label %land.rhs.76, label %land.end.80

land.rhs.76:                                      ; preds = %while.cond.73
  %88 = load i32, i32* %lookAhead, align 4
  %conv77 = zext i32 %88 to i64
  %89 = load i64, i64* %inSize, align 8
  %cmp78 = icmp ult i64 %conv77, %89
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.76, %while.cond.73
  %90 = phi i1 [ false, %while.cond.73 ], [ %cmp78, %land.rhs.76 ]
  br i1 %90, label %while.body.81, label %while.end

while.body.81:                                    ; preds = %land.end.80
  %91 = load i32, i32* %lookAhead, align 4
  %inc82 = add i32 %91, 1
  store i32 %inc82, i32* %lookAhead, align 4
  %idxprom83 = zext i32 %91 to i64
  %92 = load i8*, i8** %src.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %92, i64 %idxprom83
  %93 = load i8, i8* %arrayidx84, align 1
  %94 = load i32, i32* %rem, align 4
  %inc85 = add i32 %94, 1
  store i32 %inc85, i32* %rem, align 4
  %idxprom86 = zext i32 %94 to i64
  %95 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf87 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %95, i32 0, i32 17
  %arrayidx88 = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf87, i32 0, i64 %idxprom86
  store i8 %93, i8* %arrayidx88, align 1
  br label %while.cond.73

while.end:                                        ; preds = %land.end.80
  %96 = load i32, i32* %rem, align 4
  %97 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize89 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %97, i32 0, i32 16
  store i32 %96, i32* %tempBufSize89, align 4
  %98 = load i32, i32* %rem, align 4
  %cmp90 = icmp ult i32 %98, 20
  br i1 %cmp90, label %if.then.94, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %while.end
  %99 = load i32, i32* %checkEndMarkNow, align 4
  %tobool93 = icmp ne i32 %99, 0
  br i1 %tobool93, label %if.then.94, label %if.end.112

if.then.94:                                       ; preds = %lor.lhs.false.92, %while.end
  %100 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %101 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf96 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %101, i32 0, i32 17
  %arraydecay97 = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf96, i32 0, i32 0
  %102 = load i32, i32* %rem, align 4
  %conv98 = zext i32 %102 to i64
  %call99 = call i32 @LzmaDec_TryDummy(%struct.CLzmaDec* %100, i8* %arraydecay97, i64 %conv98)
  store i32 %call99, i32* %dummyRes95, align 4
  %103 = load i32, i32* %dummyRes95, align 4
  %cmp100 = icmp eq i32 %103, 0
  br i1 %cmp100, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.then.94
  %104 = load i32, i32* %lookAhead, align 4
  %conv103 = zext i32 %104 to i64
  %105 = load i64*, i64** %srcLen.addr, align 8
  %106 = load i64, i64* %105, align 8
  %add104 = add i64 %106, %conv103
  store i64 %add104, i64* %105, align 8
  %107 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %107, align 4
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.then.94
  %108 = load i32, i32* %checkEndMarkNow, align 4
  %tobool106 = icmp ne i32 %108, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %if.end.105
  %109 = load i32, i32* %dummyRes95, align 4
  %cmp108 = icmp ne i32 %109, 2
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %land.lhs.true.107
  %110 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %110, align 4
  store i32 1, i32* %retval
  br label %return

if.end.111:                                       ; preds = %land.lhs.true.107, %if.end.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %lor.lhs.false.92
  %111 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf113 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %111, i32 0, i32 17
  %arraydecay114 = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf113, i32 0, i32 0
  %112 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf115 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %112, i32 0, i32 3
  store i8* %arraydecay114, i8** %buf115, align 8
  %113 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %114 = load i64, i64* %dicLimit.addr, align 8
  %115 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf116 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %115, i32 0, i32 3
  %116 = load i8*, i8** %buf116, align 8
  %call117 = call i32 @LzmaDec_DecodeReal2(%struct.CLzmaDec* %113, i64 %114, i8* %116)
  %cmp118 = icmp ne i32 %call117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.112
  store i32 1, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.112
  %117 = load i32, i32* %rem, align 4
  %118 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf122 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %118, i32 0, i32 3
  %119 = load i8*, i8** %buf122, align 8
  %120 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBuf123 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %120, i32 0, i32 17
  %arraydecay124 = getelementptr inbounds [20 x i8], [20 x i8]* %tempBuf123, i32 0, i32 0
  %sub.ptr.lhs.cast125 = ptrtoint i8* %119 to i64
  %sub.ptr.rhs.cast126 = ptrtoint i8* %arraydecay124 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i32
  %sub129 = sub i32 %117, %conv128
  %121 = load i32, i32* %lookAhead, align 4
  %sub130 = sub i32 %121, %sub129
  store i32 %sub130, i32* %lookAhead, align 4
  %122 = load i32, i32* %lookAhead, align 4
  %conv131 = zext i32 %122 to i64
  %123 = load i64*, i64** %srcLen.addr, align 8
  %124 = load i64, i64* %123, align 8
  %add132 = add i64 %124, %conv131
  store i64 %add132, i64* %123, align 8
  %125 = load i32, i32* %lookAhead, align 4
  %126 = load i8*, i8** %src.addr, align 8
  %idx.ext = zext i32 %125 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %126, i64 %idx.ext
  store i8* %add.ptr133, i8** %src.addr, align 8
  %127 = load i32, i32* %lookAhead, align 4
  %conv134 = zext i32 %127 to i64
  %128 = load i64, i64* %inSize, align 8
  %sub135 = sub i64 %128, %conv134
  store i64 %sub135, i64* %inSize, align 8
  %129 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %tempBufSize136 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %129, i32 0, i32 16
  store i32 0, i32* %tempBufSize136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.121, %if.end.67
  br label %while.cond

while.end.138:                                    ; preds = %while.cond
  %130 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code139 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %130, i32 0, i32 5
  %131 = load i32, i32* %code139, align 4
  %cmp140 = icmp eq i32 %131, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %while.end.138
  %132 = load i32*, i32** %status.addr, align 8
  store i32 1, i32* %132, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %while.end.138
  %133 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code144 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %133, i32 0, i32 5
  %134 = load i32, i32* %code144, align 4
  %cmp145 = icmp eq i32 %134, 0
  %cond = select i1 %cmp145, i32 0, i32 1
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %if.then.120, %if.then.110, %if.then.102, %if.then.66, %if.then.59, %if.then.50, %if.then.35, %if.then.30, %if.then.26, %if.then.13, %if.then.8
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal void @LzmaDec_WriteRem(%struct.CLzmaDec* %p, i64 %limit) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %limit.addr = alloca i64, align 8
  %dic = alloca i8*, align 8
  %dicPos = alloca i64, align 8
  %dicBufSize = alloca i64, align 8
  %len = alloca i32, align 4
  %rep0 = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 12
  %1 = load i32, i32* %remainLen, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 12
  %3 = load i32, i32* %remainLen1, align 4
  %cmp2 = icmp ult i32 %3, 274
  br i1 %cmp2, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 2
  %5 = load i8*, i8** %dic3, align 8
  store i8* %5, i8** %dic, align 8
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 6
  %7 = load i64, i64* %dicPos4, align 8
  store i64 %7, i64* %dicPos, align 8
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize5 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 7
  %9 = load i64, i64* %dicBufSize5, align 8
  store i64 %9, i64* %dicBufSize, align 8
  %10 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %10, i32 0, i32 12
  %11 = load i32, i32* %remainLen6, align 4
  store i32 %11, i32* %len, align 4
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %13 = load i32, i32* %arrayidx, align 4
  store i32 %13, i32* %rep0, align 4
  %14 = load i64, i64* %limit.addr, align 8
  %15 = load i64, i64* %dicPos, align 8
  %sub = sub i64 %14, %15
  %16 = load i32, i32* %len, align 4
  %conv = zext i32 %16 to i64
  %cmp7 = icmp ult i64 %sub, %conv
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %17 = load i64, i64* %limit.addr, align 8
  %18 = load i64, i64* %dicPos, align 8
  %sub10 = sub i64 %17, %18
  %conv11 = trunc i64 %sub10 to i32
  store i32 %conv11, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %19 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %19, i32 0, i32 9
  %20 = load i32, i32* %checkDicSize, align 4
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %if.end
  %21 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %21, i32 0, i32 0
  %dicSize = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 3
  %22 = load i32, i32* %dicSize, align 4
  %23 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %23, i32 0, i32 8
  %24 = load i32, i32* %processedPos, align 4
  %sub15 = sub i32 %22, %24
  %25 = load i32, i32* %len, align 4
  %cmp16 = icmp ule i32 %sub15, %25
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true.14
  %26 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop19 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %26, i32 0, i32 0
  %dicSize20 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop19, i32 0, i32 3
  %27 = load i32, i32* %dicSize20, align 4
  %28 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize21 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %28, i32 0, i32 9
  store i32 %27, i32* %checkDicSize21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %land.lhs.true.14, %if.end
  %29 = load i32, i32* %len, align 4
  %30 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos23 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %30, i32 0, i32 8
  %31 = load i32, i32* %processedPos23, align 4
  %add = add i32 %31, %29
  store i32 %add, i32* %processedPos23, align 4
  %32 = load i32, i32* %len, align 4
  %33 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen24 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %33, i32 0, i32 12
  %34 = load i32, i32* %remainLen24, align 4
  %sub25 = sub i32 %34, %32
  store i32 %sub25, i32* %remainLen24, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.22
  %35 = load i32, i32* %len, align 4
  %dec = add i32 %35, -1
  store i32 %dec, i32* %len, align 4
  %cmp26 = icmp ne i32 %35, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i64, i64* %dicPos, align 8
  %37 = load i32, i32* %rep0, align 4
  %conv28 = zext i32 %37 to i64
  %sub29 = sub i64 %36, %conv28
  %38 = load i64, i64* %dicPos, align 8
  %39 = load i32, i32* %rep0, align 4
  %conv30 = zext i32 %39 to i64
  %cmp31 = icmp ult i64 %38, %conv30
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %40 = load i64, i64* %dicBufSize, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %40, %cond.true ], [ 0, %cond.false ]
  %add33 = add i64 %sub29, %cond
  %41 = load i8*, i8** %dic, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 %add33
  %42 = load i8, i8* %arrayidx34, align 1
  %43 = load i64, i64* %dicPos, align 8
  %44 = load i8*, i8** %dic, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8 %42, i8* %arrayidx35, align 1
  %45 = load i64, i64* %dicPos, align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* %dicPos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i64, i64* %dicPos, align 8
  %47 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos36 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %47, i32 0, i32 6
  store i64 %46, i64* %dicPos36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LzmaDec_InitRc(%struct.CLzmaDec* %p, i8* %data) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 5
  store i32 %or10, i32* %code, align 4
  %9 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %range = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %9, i32 0, i32 4
  store i32 -1, i32* %range, align 4
  %10 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needFlush = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %10, i32 0, i32 13
  store i32 0, i32* %needFlush, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LzmaDec_InitStateReal(%struct.CLzmaDec* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %numProbs = alloca i32, align 4
  %i = alloca i32, align 4
  %probs = alloca i16*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 0
  %lc = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 0
  %1 = load i32, i32* %lc, align 4
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 0
  %lp = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop1, i32 0, i32 1
  %3 = load i32, i32* %lp, align 4
  %add = add i32 %1, %3
  %shl = shl i32 768, %add
  %add2 = add i32 1846, %shl
  store i32 %add2, i32* %numProbs, align 4
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 1
  %5 = load i16*, i16** %probs3, align 8
  store i16* %5, i16** %probs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %numProbs, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load i16*, i16** %probs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  store i16 1024, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %11, i32 0, i32 11
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 3
  store i32 1, i32* %arrayidx4, align 4
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps5 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 11
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %reps5, i32 0, i64 2
  store i32 1, i32* %arrayidx6, align 4
  %13 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps7 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %13, i32 0, i32 11
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %reps7, i32 0, i64 1
  store i32 1, i32* %arrayidx8, align 4
  %14 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps9 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %14, i32 0, i32 11
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %reps9, i32 0, i64 0
  store i32 1, i32* %arrayidx10, align 4
  %15 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %15, i32 0, i32 10
  store i32 0, i32* %state, align 4
  %16 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %16, i32 0, i32 14
  store i32 0, i32* %needInitState, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaDec_TryDummy(%struct.CLzmaDec* %p, i8* %buf, i64 %inSize) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %buf.addr = alloca i8*, align 8
  %inSize.addr = alloca i64, align 8
  %range = alloca i32, align 4
  %code = alloca i32, align 4
  %bufLimit = alloca i8*, align 8
  %probs = alloca i16*, align 8
  %state = alloca i32, align 4
  %res = alloca i32, align 4
  %prob = alloca i16*, align 8
  %bound = alloca i32, align 4
  %ttt = alloca i32, align 4
  %posState = alloca i32, align 4
  %symbol = alloca i32, align 4
  %matchByte = alloca i32, align 4
  %offs = alloca i32, align 4
  %symbol100 = alloca i32, align 4
  %bit = alloca i32, align 4
  %probLit = alloca i16*, align 8
  %len = alloca i32, align 4
  %limit = alloca i32, align 4
  %offset = alloca i32, align 4
  %probLen = alloca i16*, align 8
  %posSlot = alloca i32, align 4
  %numDirectBits = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %inSize, i64* %inSize.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %range1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 4
  %1 = load i32, i32* %range1, align 4
  store i32 %1, i32* %range, align 4
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code2 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 5
  %3 = load i32, i32* %code2, align 4
  store i32 %3, i32* %code, align 4
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %inSize.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %bufLimit, align 8
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 1
  %7 = load i16*, i16** %probs3, align 8
  store i16* %7, i16** %probs, align 8
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %state4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 10
  %9 = load i32, i32* %state4, align 4
  store i32 %9, i32* %state, align 4
  %10 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %10, i32 0, i32 8
  %11 = load i32, i32* %processedPos, align 4
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 0
  %pb = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 2
  %13 = load i32, i32* %pb, align 4
  %shl = shl i32 1, %13
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %11, %sub
  store i32 %and, i32* %posState, align 4
  %14 = load i16*, i16** %probs, align 8
  %add.ptr5 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i32, i32* %state, align 4
  %shl6 = shl i32 %15, 4
  %idx.ext = zext i32 %shl6 to i64
  %add.ptr7 = getelementptr inbounds i16, i16* %add.ptr5, i64 %idx.ext
  %16 = load i32, i32* %posState, align 4
  %idx.ext8 = zext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds i16, i16* %add.ptr7, i64 %idx.ext8
  store i16* %add.ptr9, i16** %prob, align 8
  %17 = load i16*, i16** %prob, align 8
  %18 = load i16, i16* %17, align 2
  %conv = zext i16 %18 to i32
  store i32 %conv, i32* %ttt, align 4
  %19 = load i32, i32* %range, align 4
  %cmp = icmp ult i32 %19, 16777216
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i8*, i8** %bufLimit, align 8
  %cmp11 = icmp uge i8* %20, %21
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %22 = load i32, i32* %range, align 4
  %shl14 = shl i32 %22, 8
  store i32 %shl14, i32* %range, align 4
  %23 = load i32, i32* %code, align 4
  %shl15 = shl i32 %23, 8
  %24 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv16 = zext i8 %25 to i32
  %or = or i32 %shl15, %conv16
  store i32 %or, i32* %code, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %26 = load i32, i32* %range, align 4
  %shr = lshr i32 %26, 11
  %27 = load i32, i32* %ttt, align 4
  %mul = mul i32 %shr, %27
  store i32 %mul, i32* %bound, align 4
  %28 = load i32, i32* %code, align 4
  %29 = load i32, i32* %bound, align 4
  %cmp18 = icmp ult i32 %28, %29
  br i1 %cmp18, label %if.then.20, label %if.else.143

if.then.20:                                       ; preds = %if.end.17
  %30 = load i32, i32* %bound, align 4
  store i32 %30, i32* %range, align 4
  %31 = load i16*, i16** %probs, align 8
  %add.ptr21 = getelementptr inbounds i16, i16* %31, i64 1846
  store i16* %add.ptr21, i16** %prob, align 8
  %32 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %32, i32 0, i32 9
  %33 = load i32, i32* %checkDicSize, align 4
  %cmp22 = icmp ne i32 %33, 0
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %34 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos24 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %34, i32 0, i32 8
  %35 = load i32, i32* %processedPos24, align 4
  %cmp25 = icmp ne i32 %35, 0
  br i1 %cmp25, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.20
  %36 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos28 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %36, i32 0, i32 8
  %37 = load i32, i32* %processedPos28, align 4
  %38 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop29 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %38, i32 0, i32 0
  %lp = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop29, i32 0, i32 1
  %39 = load i32, i32* %lp, align 4
  %shl30 = shl i32 1, %39
  %sub31 = sub nsw i32 %shl30, 1
  %and32 = and i32 %37, %sub31
  %40 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop33 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %40, i32 0, i32 0
  %lc = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop33, i32 0, i32 0
  %41 = load i32, i32* %lc, align 4
  %shl34 = shl i32 %and32, %41
  %42 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %42, i32 0, i32 6
  %43 = load i64, i64* %dicPos, align 8
  %cmp35 = icmp eq i64 %43, 0
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %44 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %44, i32 0, i32 7
  %45 = load i64, i64* %dicBufSize, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %46 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos37 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %46, i32 0, i32 6
  %47 = load i64, i64* %dicPos37, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %45, %cond.true ], [ %47, %cond.false ]
  %sub38 = sub i64 %cond, 1
  %48 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %48, i32 0, i32 2
  %49 = load i8*, i8** %dic, align 8
  %arrayidx = getelementptr inbounds i8, i8* %49, i64 %sub38
  %50 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %50 to i32
  %51 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop40 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %51, i32 0, i32 0
  %lc41 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop40, i32 0, i32 0
  %52 = load i32, i32* %lc41, align 4
  %sub42 = sub i32 8, %52
  %shr43 = ashr i32 %conv39, %sub42
  %add = add i32 %shl34, %shr43
  %mul44 = mul i32 768, %add
  %53 = load i16*, i16** %prob, align 8
  %idx.ext45 = zext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i16, i16* %53, i64 %idx.ext45
  store i16* %add.ptr46, i16** %prob, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %lor.lhs.false
  %54 = load i32, i32* %state, align 4
  %cmp48 = icmp ult i32 %54, 7
  br i1 %cmp48, label %if.then.50, label %if.else.80

if.then.50:                                       ; preds = %if.end.47
  store i32 1, i32* %symbol, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.50
  %55 = load i16*, i16** %prob, align 8
  %56 = load i32, i32* %symbol, align 4
  %idx.ext51 = zext i32 %56 to i64
  %add.ptr52 = getelementptr inbounds i16, i16* %55, i64 %idx.ext51
  %57 = load i16, i16* %add.ptr52, align 2
  %conv53 = zext i16 %57 to i32
  store i32 %conv53, i32* %ttt, align 4
  %58 = load i32, i32* %range, align 4
  %cmp54 = icmp ult i32 %58, 16777216
  br i1 %cmp54, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %do.body
  %59 = load i8*, i8** %buf.addr, align 8
  %60 = load i8*, i8** %bufLimit, align 8
  %cmp57 = icmp uge i8* %59, %60
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.56
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.56
  %61 = load i32, i32* %range, align 4
  %shl61 = shl i32 %61, 8
  store i32 %shl61, i32* %range, align 4
  %62 = load i32, i32* %code, align 4
  %shl62 = shl i32 %62, 8
  %63 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr63, i8** %buf.addr, align 8
  %64 = load i8, i8* %63, align 1
  %conv64 = zext i8 %64 to i32
  %or65 = or i32 %shl62, %conv64
  store i32 %or65, i32* %code, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.60, %do.body
  %65 = load i32, i32* %range, align 4
  %shr67 = lshr i32 %65, 11
  %66 = load i32, i32* %ttt, align 4
  %mul68 = mul i32 %shr67, %66
  store i32 %mul68, i32* %bound, align 4
  %67 = load i32, i32* %code, align 4
  %68 = load i32, i32* %bound, align 4
  %cmp69 = icmp ult i32 %67, %68
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.end.66
  %69 = load i32, i32* %bound, align 4
  store i32 %69, i32* %range, align 4
  %70 = load i32, i32* %symbol, align 4
  %71 = load i32, i32* %symbol, align 4
  %add72 = add i32 %70, %71
  store i32 %add72, i32* %symbol, align 4
  br label %if.end.77

if.else:                                          ; preds = %if.end.66
  %72 = load i32, i32* %bound, align 4
  %73 = load i32, i32* %range, align 4
  %sub73 = sub i32 %73, %72
  store i32 %sub73, i32* %range, align 4
  %74 = load i32, i32* %bound, align 4
  %75 = load i32, i32* %code, align 4
  %sub74 = sub i32 %75, %74
  store i32 %sub74, i32* %code, align 4
  %76 = load i32, i32* %symbol, align 4
  %77 = load i32, i32* %symbol, align 4
  %add75 = add i32 %76, %77
  %add76 = add i32 %add75, 1
  store i32 %add76, i32* %symbol, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.71
  br label %do.cond

do.cond:                                          ; preds = %if.end.77
  %78 = load i32, i32* %symbol, align 4
  %cmp78 = icmp ult i32 %78, 256
  br i1 %cmp78, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.142

if.else.80:                                       ; preds = %if.end.47
  %79 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos81 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %79, i32 0, i32 6
  %80 = load i64, i64* %dicPos81, align 8
  %81 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %81, i32 0, i32 11
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %82 = load i32, i32* %arrayidx82, align 4
  %conv83 = zext i32 %82 to i64
  %sub84 = sub i64 %80, %conv83
  %83 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos85 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %83, i32 0, i32 6
  %84 = load i64, i64* %dicPos85, align 8
  %85 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps86 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %85, i32 0, i32 11
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %reps86, i32 0, i64 0
  %86 = load i32, i32* %arrayidx87, align 4
  %conv88 = zext i32 %86 to i64
  %cmp89 = icmp ult i64 %84, %conv88
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %if.else.80
  %87 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize92 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %87, i32 0, i32 7
  %88 = load i64, i64* %dicBufSize92, align 8
  br label %cond.end.94

cond.false.93:                                    ; preds = %if.else.80
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.91
  %cond95 = phi i64 [ %88, %cond.true.91 ], [ 0, %cond.false.93 ]
  %add96 = add i64 %sub84, %cond95
  %89 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic97 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %89, i32 0, i32 2
  %90 = load i8*, i8** %dic97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %90, i64 %add96
  %91 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %91 to i32
  store i32 %conv99, i32* %matchByte, align 4
  store i32 256, i32* %offs, align 4
  store i32 1, i32* %symbol100, align 4
  br label %do.body.101

do.body.101:                                      ; preds = %do.cond.138, %cond.end.94
  %92 = load i32, i32* %matchByte, align 4
  %shl102 = shl i32 %92, 1
  store i32 %shl102, i32* %matchByte, align 4
  %93 = load i32, i32* %matchByte, align 4
  %94 = load i32, i32* %offs, align 4
  %and103 = and i32 %93, %94
  store i32 %and103, i32* %bit, align 4
  %95 = load i16*, i16** %prob, align 8
  %96 = load i32, i32* %offs, align 4
  %idx.ext104 = zext i32 %96 to i64
  %add.ptr105 = getelementptr inbounds i16, i16* %95, i64 %idx.ext104
  %97 = load i32, i32* %bit, align 4
  %idx.ext106 = zext i32 %97 to i64
  %add.ptr107 = getelementptr inbounds i16, i16* %add.ptr105, i64 %idx.ext106
  %98 = load i32, i32* %symbol100, align 4
  %idx.ext108 = zext i32 %98 to i64
  %add.ptr109 = getelementptr inbounds i16, i16* %add.ptr107, i64 %idx.ext108
  store i16* %add.ptr109, i16** %probLit, align 8
  %99 = load i16*, i16** %probLit, align 8
  %100 = load i16, i16* %99, align 2
  %conv110 = zext i16 %100 to i32
  store i32 %conv110, i32* %ttt, align 4
  %101 = load i32, i32* %range, align 4
  %cmp111 = icmp ult i32 %101, 16777216
  br i1 %cmp111, label %if.then.113, label %if.end.123

if.then.113:                                      ; preds = %do.body.101
  %102 = load i8*, i8** %buf.addr, align 8
  %103 = load i8*, i8** %bufLimit, align 8
  %cmp114 = icmp uge i8* %102, %103
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.113
  store i32 0, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.then.113
  %104 = load i32, i32* %range, align 4
  %shl118 = shl i32 %104, 8
  store i32 %shl118, i32* %range, align 4
  %105 = load i32, i32* %code, align 4
  %shl119 = shl i32 %105, 8
  %106 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr120, i8** %buf.addr, align 8
  %107 = load i8, i8* %106, align 1
  %conv121 = zext i8 %107 to i32
  %or122 = or i32 %shl119, %conv121
  store i32 %or122, i32* %code, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.117, %do.body.101
  %108 = load i32, i32* %range, align 4
  %shr124 = lshr i32 %108, 11
  %109 = load i32, i32* %ttt, align 4
  %mul125 = mul i32 %shr124, %109
  store i32 %mul125, i32* %bound, align 4
  %110 = load i32, i32* %code, align 4
  %111 = load i32, i32* %bound, align 4
  %cmp126 = icmp ult i32 %110, %111
  br i1 %cmp126, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %if.end.123
  %112 = load i32, i32* %bound, align 4
  store i32 %112, i32* %range, align 4
  %113 = load i32, i32* %symbol100, align 4
  %114 = load i32, i32* %symbol100, align 4
  %add129 = add i32 %113, %114
  store i32 %add129, i32* %symbol100, align 4
  %115 = load i32, i32* %bit, align 4
  %neg = xor i32 %115, -1
  %116 = load i32, i32* %offs, align 4
  %and130 = and i32 %116, %neg
  store i32 %and130, i32* %offs, align 4
  br label %if.end.137

if.else.131:                                      ; preds = %if.end.123
  %117 = load i32, i32* %bound, align 4
  %118 = load i32, i32* %range, align 4
  %sub132 = sub i32 %118, %117
  store i32 %sub132, i32* %range, align 4
  %119 = load i32, i32* %bound, align 4
  %120 = load i32, i32* %code, align 4
  %sub133 = sub i32 %120, %119
  store i32 %sub133, i32* %code, align 4
  %121 = load i32, i32* %symbol100, align 4
  %122 = load i32, i32* %symbol100, align 4
  %add134 = add i32 %121, %122
  %add135 = add i32 %add134, 1
  store i32 %add135, i32* %symbol100, align 4
  %123 = load i32, i32* %bit, align 4
  %124 = load i32, i32* %offs, align 4
  %and136 = and i32 %124, %123
  store i32 %and136, i32* %offs, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.131, %if.then.128
  br label %do.cond.138

do.cond.138:                                      ; preds = %if.end.137
  %125 = load i32, i32* %symbol100, align 4
  %cmp139 = icmp ult i32 %125, 256
  br i1 %cmp139, label %do.body.101, label %do.end.141

do.end.141:                                       ; preds = %do.cond.138
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %do.end
  store i32 1, i32* %res, align 4
  br label %if.end.514

if.else.143:                                      ; preds = %if.end.17
  %126 = load i32, i32* %bound, align 4
  %127 = load i32, i32* %range, align 4
  %sub144 = sub i32 %127, %126
  store i32 %sub144, i32* %range, align 4
  %128 = load i32, i32* %bound, align 4
  %129 = load i32, i32* %code, align 4
  %sub145 = sub i32 %129, %128
  store i32 %sub145, i32* %code, align 4
  %130 = load i16*, i16** %probs, align 8
  %add.ptr146 = getelementptr inbounds i16, i16* %130, i64 192
  %131 = load i32, i32* %state, align 4
  %idx.ext147 = zext i32 %131 to i64
  %add.ptr148 = getelementptr inbounds i16, i16* %add.ptr146, i64 %idx.ext147
  store i16* %add.ptr148, i16** %prob, align 8
  %132 = load i16*, i16** %prob, align 8
  %133 = load i16, i16* %132, align 2
  %conv149 = zext i16 %133 to i32
  store i32 %conv149, i32* %ttt, align 4
  %134 = load i32, i32* %range, align 4
  %cmp150 = icmp ult i32 %134, 16777216
  br i1 %cmp150, label %if.then.152, label %if.end.162

if.then.152:                                      ; preds = %if.else.143
  %135 = load i8*, i8** %buf.addr, align 8
  %136 = load i8*, i8** %bufLimit, align 8
  %cmp153 = icmp uge i8* %135, %136
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.then.152
  store i32 0, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.then.152
  %137 = load i32, i32* %range, align 4
  %shl157 = shl i32 %137, 8
  store i32 %shl157, i32* %range, align 4
  %138 = load i32, i32* %code, align 4
  %shl158 = shl i32 %138, 8
  %139 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr159, i8** %buf.addr, align 8
  %140 = load i8, i8* %139, align 1
  %conv160 = zext i8 %140 to i32
  %or161 = or i32 %shl158, %conv160
  store i32 %or161, i32* %code, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.156, %if.else.143
  %141 = load i32, i32* %range, align 4
  %shr163 = lshr i32 %141, 11
  %142 = load i32, i32* %ttt, align 4
  %mul164 = mul i32 %shr163, %142
  store i32 %mul164, i32* %bound, align 4
  %143 = load i32, i32* %code, align 4
  %144 = load i32, i32* %bound, align 4
  %cmp165 = icmp ult i32 %143, %144
  br i1 %cmp165, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.end.162
  %145 = load i32, i32* %bound, align 4
  store i32 %145, i32* %range, align 4
  store i32 0, i32* %state, align 4
  %146 = load i16*, i16** %probs, align 8
  %add.ptr168 = getelementptr inbounds i16, i16* %146, i64 818
  store i16* %add.ptr168, i16** %prob, align 8
  store i32 2, i32* %res, align 4
  br label %if.end.293

if.else.169:                                      ; preds = %if.end.162
  %147 = load i32, i32* %bound, align 4
  %148 = load i32, i32* %range, align 4
  %sub170 = sub i32 %148, %147
  store i32 %sub170, i32* %range, align 4
  %149 = load i32, i32* %bound, align 4
  %150 = load i32, i32* %code, align 4
  %sub171 = sub i32 %150, %149
  store i32 %sub171, i32* %code, align 4
  store i32 3, i32* %res, align 4
  %151 = load i16*, i16** %probs, align 8
  %add.ptr172 = getelementptr inbounds i16, i16* %151, i64 204
  %152 = load i32, i32* %state, align 4
  %idx.ext173 = zext i32 %152 to i64
  %add.ptr174 = getelementptr inbounds i16, i16* %add.ptr172, i64 %idx.ext173
  store i16* %add.ptr174, i16** %prob, align 8
  %153 = load i16*, i16** %prob, align 8
  %154 = load i16, i16* %153, align 2
  %conv175 = zext i16 %154 to i32
  store i32 %conv175, i32* %ttt, align 4
  %155 = load i32, i32* %range, align 4
  %cmp176 = icmp ult i32 %155, 16777216
  br i1 %cmp176, label %if.then.178, label %if.end.188

if.then.178:                                      ; preds = %if.else.169
  %156 = load i8*, i8** %buf.addr, align 8
  %157 = load i8*, i8** %bufLimit, align 8
  %cmp179 = icmp uge i8* %156, %157
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.then.178
  store i32 0, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.then.178
  %158 = load i32, i32* %range, align 4
  %shl183 = shl i32 %158, 8
  store i32 %shl183, i32* %range, align 4
  %159 = load i32, i32* %code, align 4
  %shl184 = shl i32 %159, 8
  %160 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr185, i8** %buf.addr, align 8
  %161 = load i8, i8* %160, align 1
  %conv186 = zext i8 %161 to i32
  %or187 = or i32 %shl184, %conv186
  store i32 %or187, i32* %code, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.182, %if.else.169
  %162 = load i32, i32* %range, align 4
  %shr189 = lshr i32 %162, 11
  %163 = load i32, i32* %ttt, align 4
  %mul190 = mul i32 %shr189, %163
  store i32 %mul190, i32* %bound, align 4
  %164 = load i32, i32* %code, align 4
  %165 = load i32, i32* %bound, align 4
  %cmp191 = icmp ult i32 %164, %165
  br i1 %cmp191, label %if.then.193, label %if.else.236

if.then.193:                                      ; preds = %if.end.188
  %166 = load i32, i32* %bound, align 4
  store i32 %166, i32* %range, align 4
  %167 = load i16*, i16** %probs, align 8
  %add.ptr194 = getelementptr inbounds i16, i16* %167, i64 240
  %168 = load i32, i32* %state, align 4
  %shl195 = shl i32 %168, 4
  %idx.ext196 = zext i32 %shl195 to i64
  %add.ptr197 = getelementptr inbounds i16, i16* %add.ptr194, i64 %idx.ext196
  %169 = load i32, i32* %posState, align 4
  %idx.ext198 = zext i32 %169 to i64
  %add.ptr199 = getelementptr inbounds i16, i16* %add.ptr197, i64 %idx.ext198
  store i16* %add.ptr199, i16** %prob, align 8
  %170 = load i16*, i16** %prob, align 8
  %171 = load i16, i16* %170, align 2
  %conv200 = zext i16 %171 to i32
  store i32 %conv200, i32* %ttt, align 4
  %172 = load i32, i32* %range, align 4
  %cmp201 = icmp ult i32 %172, 16777216
  br i1 %cmp201, label %if.then.203, label %if.end.213

if.then.203:                                      ; preds = %if.then.193
  %173 = load i8*, i8** %buf.addr, align 8
  %174 = load i8*, i8** %bufLimit, align 8
  %cmp204 = icmp uge i8* %173, %174
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.203
  store i32 0, i32* %retval
  br label %return

if.end.207:                                       ; preds = %if.then.203
  %175 = load i32, i32* %range, align 4
  %shl208 = shl i32 %175, 8
  store i32 %shl208, i32* %range, align 4
  %176 = load i32, i32* %code, align 4
  %shl209 = shl i32 %176, 8
  %177 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr210 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr210, i8** %buf.addr, align 8
  %178 = load i8, i8* %177, align 1
  %conv211 = zext i8 %178 to i32
  %or212 = or i32 %shl209, %conv211
  store i32 %or212, i32* %code, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.207, %if.then.193
  %179 = load i32, i32* %range, align 4
  %shr214 = lshr i32 %179, 11
  %180 = load i32, i32* %ttt, align 4
  %mul215 = mul i32 %shr214, %180
  store i32 %mul215, i32* %bound, align 4
  %181 = load i32, i32* %code, align 4
  %182 = load i32, i32* %bound, align 4
  %cmp216 = icmp ult i32 %181, %182
  br i1 %cmp216, label %if.then.218, label %if.else.232

if.then.218:                                      ; preds = %if.end.213
  %183 = load i32, i32* %bound, align 4
  store i32 %183, i32* %range, align 4
  %184 = load i32, i32* %range, align 4
  %cmp219 = icmp ult i32 %184, 16777216
  br i1 %cmp219, label %if.then.221, label %if.end.231

if.then.221:                                      ; preds = %if.then.218
  %185 = load i8*, i8** %buf.addr, align 8
  %186 = load i8*, i8** %bufLimit, align 8
  %cmp222 = icmp uge i8* %185, %186
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.then.221
  store i32 0, i32* %retval
  br label %return

if.end.225:                                       ; preds = %if.then.221
  %187 = load i32, i32* %range, align 4
  %shl226 = shl i32 %187, 8
  store i32 %shl226, i32* %range, align 4
  %188 = load i32, i32* %code, align 4
  %shl227 = shl i32 %188, 8
  %189 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr228, i8** %buf.addr, align 8
  %190 = load i8, i8* %189, align 1
  %conv229 = zext i8 %190 to i32
  %or230 = or i32 %shl227, %conv229
  store i32 %or230, i32* %code, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.225, %if.then.218
  store i32 3, i32* %retval
  br label %return

if.else.232:                                      ; preds = %if.end.213
  %191 = load i32, i32* %bound, align 4
  %192 = load i32, i32* %range, align 4
  %sub233 = sub i32 %192, %191
  store i32 %sub233, i32* %range, align 4
  %193 = load i32, i32* %bound, align 4
  %194 = load i32, i32* %code, align 4
  %sub234 = sub i32 %194, %193
  store i32 %sub234, i32* %code, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.232
  br label %if.end.291

if.else.236:                                      ; preds = %if.end.188
  %195 = load i32, i32* %bound, align 4
  %196 = load i32, i32* %range, align 4
  %sub237 = sub i32 %196, %195
  store i32 %sub237, i32* %range, align 4
  %197 = load i32, i32* %bound, align 4
  %198 = load i32, i32* %code, align 4
  %sub238 = sub i32 %198, %197
  store i32 %sub238, i32* %code, align 4
  %199 = load i16*, i16** %probs, align 8
  %add.ptr239 = getelementptr inbounds i16, i16* %199, i64 216
  %200 = load i32, i32* %state, align 4
  %idx.ext240 = zext i32 %200 to i64
  %add.ptr241 = getelementptr inbounds i16, i16* %add.ptr239, i64 %idx.ext240
  store i16* %add.ptr241, i16** %prob, align 8
  %201 = load i16*, i16** %prob, align 8
  %202 = load i16, i16* %201, align 2
  %conv242 = zext i16 %202 to i32
  store i32 %conv242, i32* %ttt, align 4
  %203 = load i32, i32* %range, align 4
  %cmp243 = icmp ult i32 %203, 16777216
  br i1 %cmp243, label %if.then.245, label %if.end.255

if.then.245:                                      ; preds = %if.else.236
  %204 = load i8*, i8** %buf.addr, align 8
  %205 = load i8*, i8** %bufLimit, align 8
  %cmp246 = icmp uge i8* %204, %205
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.then.245
  store i32 0, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.then.245
  %206 = load i32, i32* %range, align 4
  %shl250 = shl i32 %206, 8
  store i32 %shl250, i32* %range, align 4
  %207 = load i32, i32* %code, align 4
  %shl251 = shl i32 %207, 8
  %208 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr252, i8** %buf.addr, align 8
  %209 = load i8, i8* %208, align 1
  %conv253 = zext i8 %209 to i32
  %or254 = or i32 %shl251, %conv253
  store i32 %or254, i32* %code, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.249, %if.else.236
  %210 = load i32, i32* %range, align 4
  %shr256 = lshr i32 %210, 11
  %211 = load i32, i32* %ttt, align 4
  %mul257 = mul i32 %shr256, %211
  store i32 %mul257, i32* %bound, align 4
  %212 = load i32, i32* %code, align 4
  %213 = load i32, i32* %bound, align 4
  %cmp258 = icmp ult i32 %212, %213
  br i1 %cmp258, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %if.end.255
  %214 = load i32, i32* %bound, align 4
  store i32 %214, i32* %range, align 4
  br label %if.end.290

if.else.261:                                      ; preds = %if.end.255
  %215 = load i32, i32* %bound, align 4
  %216 = load i32, i32* %range, align 4
  %sub262 = sub i32 %216, %215
  store i32 %sub262, i32* %range, align 4
  %217 = load i32, i32* %bound, align 4
  %218 = load i32, i32* %code, align 4
  %sub263 = sub i32 %218, %217
  store i32 %sub263, i32* %code, align 4
  %219 = load i16*, i16** %probs, align 8
  %add.ptr264 = getelementptr inbounds i16, i16* %219, i64 228
  %220 = load i32, i32* %state, align 4
  %idx.ext265 = zext i32 %220 to i64
  %add.ptr266 = getelementptr inbounds i16, i16* %add.ptr264, i64 %idx.ext265
  store i16* %add.ptr266, i16** %prob, align 8
  %221 = load i16*, i16** %prob, align 8
  %222 = load i16, i16* %221, align 2
  %conv267 = zext i16 %222 to i32
  store i32 %conv267, i32* %ttt, align 4
  %223 = load i32, i32* %range, align 4
  %cmp268 = icmp ult i32 %223, 16777216
  br i1 %cmp268, label %if.then.270, label %if.end.280

if.then.270:                                      ; preds = %if.else.261
  %224 = load i8*, i8** %buf.addr, align 8
  %225 = load i8*, i8** %bufLimit, align 8
  %cmp271 = icmp uge i8* %224, %225
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.270
  store i32 0, i32* %retval
  br label %return

if.end.274:                                       ; preds = %if.then.270
  %226 = load i32, i32* %range, align 4
  %shl275 = shl i32 %226, 8
  store i32 %shl275, i32* %range, align 4
  %227 = load i32, i32* %code, align 4
  %shl276 = shl i32 %227, 8
  %228 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr277, i8** %buf.addr, align 8
  %229 = load i8, i8* %228, align 1
  %conv278 = zext i8 %229 to i32
  %or279 = or i32 %shl276, %conv278
  store i32 %or279, i32* %code, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.274, %if.else.261
  %230 = load i32, i32* %range, align 4
  %shr281 = lshr i32 %230, 11
  %231 = load i32, i32* %ttt, align 4
  %mul282 = mul i32 %shr281, %231
  store i32 %mul282, i32* %bound, align 4
  %232 = load i32, i32* %code, align 4
  %233 = load i32, i32* %bound, align 4
  %cmp283 = icmp ult i32 %232, %233
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %if.end.280
  %234 = load i32, i32* %bound, align 4
  store i32 %234, i32* %range, align 4
  br label %if.end.289

if.else.286:                                      ; preds = %if.end.280
  %235 = load i32, i32* %bound, align 4
  %236 = load i32, i32* %range, align 4
  %sub287 = sub i32 %236, %235
  store i32 %sub287, i32* %range, align 4
  %237 = load i32, i32* %bound, align 4
  %238 = load i32, i32* %code, align 4
  %sub288 = sub i32 %238, %237
  store i32 %sub288, i32* %code, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.286, %if.then.285
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.260
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.235
  store i32 12, i32* %state, align 4
  %239 = load i16*, i16** %probs, align 8
  %add.ptr292 = getelementptr inbounds i16, i16* %239, i64 1332
  store i16* %add.ptr292, i16** %prob, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.291, %if.then.167
  %240 = load i16*, i16** %prob, align 8
  %add.ptr294 = getelementptr inbounds i16, i16* %240, i64 0
  store i16* %add.ptr294, i16** %probLen, align 8
  %241 = load i16*, i16** %probLen, align 8
  %242 = load i16, i16* %241, align 2
  %conv295 = zext i16 %242 to i32
  store i32 %conv295, i32* %ttt, align 4
  %243 = load i32, i32* %range, align 4
  %cmp296 = icmp ult i32 %243, 16777216
  br i1 %cmp296, label %if.then.298, label %if.end.308

if.then.298:                                      ; preds = %if.end.293
  %244 = load i8*, i8** %buf.addr, align 8
  %245 = load i8*, i8** %bufLimit, align 8
  %cmp299 = icmp uge i8* %244, %245
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.then.298
  store i32 0, i32* %retval
  br label %return

if.end.302:                                       ; preds = %if.then.298
  %246 = load i32, i32* %range, align 4
  %shl303 = shl i32 %246, 8
  store i32 %shl303, i32* %range, align 4
  %247 = load i32, i32* %code, align 4
  %shl304 = shl i32 %247, 8
  %248 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr305 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr305, i8** %buf.addr, align 8
  %249 = load i8, i8* %248, align 1
  %conv306 = zext i8 %249 to i32
  %or307 = or i32 %shl304, %conv306
  store i32 %or307, i32* %code, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.302, %if.end.293
  %250 = load i32, i32* %range, align 4
  %shr309 = lshr i32 %250, 11
  %251 = load i32, i32* %ttt, align 4
  %mul310 = mul i32 %shr309, %251
  store i32 %mul310, i32* %bound, align 4
  %252 = load i32, i32* %code, align 4
  %253 = load i32, i32* %bound, align 4
  %cmp311 = icmp ult i32 %252, %253
  br i1 %cmp311, label %if.then.313, label %if.else.318

if.then.313:                                      ; preds = %if.end.308
  %254 = load i32, i32* %bound, align 4
  store i32 %254, i32* %range, align 4
  %255 = load i16*, i16** %prob, align 8
  %add.ptr314 = getelementptr inbounds i16, i16* %255, i64 2
  %256 = load i32, i32* %posState, align 4
  %shl315 = shl i32 %256, 3
  %idx.ext316 = zext i32 %shl315 to i64
  %add.ptr317 = getelementptr inbounds i16, i16* %add.ptr314, i64 %idx.ext316
  store i16* %add.ptr317, i16** %probLen, align 8
  store i32 0, i32* %offset, align 4
  store i32 8, i32* %limit, align 4
  br label %if.end.350

if.else.318:                                      ; preds = %if.end.308
  %257 = load i32, i32* %bound, align 4
  %258 = load i32, i32* %range, align 4
  %sub319 = sub i32 %258, %257
  store i32 %sub319, i32* %range, align 4
  %259 = load i32, i32* %bound, align 4
  %260 = load i32, i32* %code, align 4
  %sub320 = sub i32 %260, %259
  store i32 %sub320, i32* %code, align 4
  %261 = load i16*, i16** %prob, align 8
  %add.ptr321 = getelementptr inbounds i16, i16* %261, i64 1
  store i16* %add.ptr321, i16** %probLen, align 8
  %262 = load i16*, i16** %probLen, align 8
  %263 = load i16, i16* %262, align 2
  %conv322 = zext i16 %263 to i32
  store i32 %conv322, i32* %ttt, align 4
  %264 = load i32, i32* %range, align 4
  %cmp323 = icmp ult i32 %264, 16777216
  br i1 %cmp323, label %if.then.325, label %if.end.335

if.then.325:                                      ; preds = %if.else.318
  %265 = load i8*, i8** %buf.addr, align 8
  %266 = load i8*, i8** %bufLimit, align 8
  %cmp326 = icmp uge i8* %265, %266
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.then.325
  store i32 0, i32* %retval
  br label %return

if.end.329:                                       ; preds = %if.then.325
  %267 = load i32, i32* %range, align 4
  %shl330 = shl i32 %267, 8
  store i32 %shl330, i32* %range, align 4
  %268 = load i32, i32* %code, align 4
  %shl331 = shl i32 %268, 8
  %269 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr332 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr332, i8** %buf.addr, align 8
  %270 = load i8, i8* %269, align 1
  %conv333 = zext i8 %270 to i32
  %or334 = or i32 %shl331, %conv333
  store i32 %or334, i32* %code, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.329, %if.else.318
  %271 = load i32, i32* %range, align 4
  %shr336 = lshr i32 %271, 11
  %272 = load i32, i32* %ttt, align 4
  %mul337 = mul i32 %shr336, %272
  store i32 %mul337, i32* %bound, align 4
  %273 = load i32, i32* %code, align 4
  %274 = load i32, i32* %bound, align 4
  %cmp338 = icmp ult i32 %273, %274
  br i1 %cmp338, label %if.then.340, label %if.else.345

if.then.340:                                      ; preds = %if.end.335
  %275 = load i32, i32* %bound, align 4
  store i32 %275, i32* %range, align 4
  %276 = load i16*, i16** %prob, align 8
  %add.ptr341 = getelementptr inbounds i16, i16* %276, i64 130
  %277 = load i32, i32* %posState, align 4
  %shl342 = shl i32 %277, 3
  %idx.ext343 = zext i32 %shl342 to i64
  %add.ptr344 = getelementptr inbounds i16, i16* %add.ptr341, i64 %idx.ext343
  store i16* %add.ptr344, i16** %probLen, align 8
  store i32 8, i32* %offset, align 4
  store i32 8, i32* %limit, align 4
  br label %if.end.349

if.else.345:                                      ; preds = %if.end.335
  %278 = load i32, i32* %bound, align 4
  %279 = load i32, i32* %range, align 4
  %sub346 = sub i32 %279, %278
  store i32 %sub346, i32* %range, align 4
  %280 = load i32, i32* %bound, align 4
  %281 = load i32, i32* %code, align 4
  %sub347 = sub i32 %281, %280
  store i32 %sub347, i32* %code, align 4
  %282 = load i16*, i16** %prob, align 8
  %add.ptr348 = getelementptr inbounds i16, i16* %282, i64 258
  store i16* %add.ptr348, i16** %probLen, align 8
  store i32 16, i32* %offset, align 4
  store i32 256, i32* %limit, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.345, %if.then.340
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.313
  store i32 1, i32* %len, align 4
  br label %do.body.351

do.body.351:                                      ; preds = %do.cond.380, %if.end.350
  %283 = load i16*, i16** %probLen, align 8
  %284 = load i32, i32* %len, align 4
  %idx.ext352 = zext i32 %284 to i64
  %add.ptr353 = getelementptr inbounds i16, i16* %283, i64 %idx.ext352
  %285 = load i16, i16* %add.ptr353, align 2
  %conv354 = zext i16 %285 to i32
  store i32 %conv354, i32* %ttt, align 4
  %286 = load i32, i32* %range, align 4
  %cmp355 = icmp ult i32 %286, 16777216
  br i1 %cmp355, label %if.then.357, label %if.end.367

if.then.357:                                      ; preds = %do.body.351
  %287 = load i8*, i8** %buf.addr, align 8
  %288 = load i8*, i8** %bufLimit, align 8
  %cmp358 = icmp uge i8* %287, %288
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.then.357
  store i32 0, i32* %retval
  br label %return

if.end.361:                                       ; preds = %if.then.357
  %289 = load i32, i32* %range, align 4
  %shl362 = shl i32 %289, 8
  store i32 %shl362, i32* %range, align 4
  %290 = load i32, i32* %code, align 4
  %shl363 = shl i32 %290, 8
  %291 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr364 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr364, i8** %buf.addr, align 8
  %292 = load i8, i8* %291, align 1
  %conv365 = zext i8 %292 to i32
  %or366 = or i32 %shl363, %conv365
  store i32 %or366, i32* %code, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.361, %do.body.351
  %293 = load i32, i32* %range, align 4
  %shr368 = lshr i32 %293, 11
  %294 = load i32, i32* %ttt, align 4
  %mul369 = mul i32 %shr368, %294
  store i32 %mul369, i32* %bound, align 4
  %295 = load i32, i32* %code, align 4
  %296 = load i32, i32* %bound, align 4
  %cmp370 = icmp ult i32 %295, %296
  br i1 %cmp370, label %if.then.372, label %if.else.374

if.then.372:                                      ; preds = %if.end.367
  %297 = load i32, i32* %bound, align 4
  store i32 %297, i32* %range, align 4
  %298 = load i32, i32* %len, align 4
  %299 = load i32, i32* %len, align 4
  %add373 = add i32 %298, %299
  store i32 %add373, i32* %len, align 4
  br label %if.end.379

if.else.374:                                      ; preds = %if.end.367
  %300 = load i32, i32* %bound, align 4
  %301 = load i32, i32* %range, align 4
  %sub375 = sub i32 %301, %300
  store i32 %sub375, i32* %range, align 4
  %302 = load i32, i32* %bound, align 4
  %303 = load i32, i32* %code, align 4
  %sub376 = sub i32 %303, %302
  store i32 %sub376, i32* %code, align 4
  %304 = load i32, i32* %len, align 4
  %305 = load i32, i32* %len, align 4
  %add377 = add i32 %304, %305
  %add378 = add i32 %add377, 1
  store i32 %add378, i32* %len, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.374, %if.then.372
  br label %do.cond.380

do.cond.380:                                      ; preds = %if.end.379
  %306 = load i32, i32* %len, align 4
  %307 = load i32, i32* %limit, align 4
  %cmp381 = icmp ult i32 %306, %307
  br i1 %cmp381, label %do.body.351, label %do.end.383

do.end.383:                                       ; preds = %do.cond.380
  %308 = load i32, i32* %limit, align 4
  %309 = load i32, i32* %len, align 4
  %sub384 = sub i32 %309, %308
  store i32 %sub384, i32* %len, align 4
  %310 = load i32, i32* %offset, align 4
  %311 = load i32, i32* %len, align 4
  %add385 = add i32 %311, %310
  store i32 %add385, i32* %len, align 4
  %312 = load i32, i32* %state, align 4
  %cmp386 = icmp ult i32 %312, 4
  br i1 %cmp386, label %if.then.388, label %if.end.513

if.then.388:                                      ; preds = %do.end.383
  %313 = load i16*, i16** %probs, align 8
  %add.ptr389 = getelementptr inbounds i16, i16* %313, i64 432
  %314 = load i32, i32* %len, align 4
  %cmp390 = icmp ult i32 %314, 4
  br i1 %cmp390, label %cond.true.392, label %cond.false.393

cond.true.392:                                    ; preds = %if.then.388
  %315 = load i32, i32* %len, align 4
  br label %cond.end.394

cond.false.393:                                   ; preds = %if.then.388
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.393, %cond.true.392
  %cond395 = phi i32 [ %315, %cond.true.392 ], [ 3, %cond.false.393 ]
  %shl396 = shl i32 %cond395, 6
  %idx.ext397 = zext i32 %shl396 to i64
  %add.ptr398 = getelementptr inbounds i16, i16* %add.ptr389, i64 %idx.ext397
  store i16* %add.ptr398, i16** %prob, align 8
  store i32 1, i32* %posSlot, align 4
  br label %do.body.399

do.body.399:                                      ; preds = %do.cond.428, %cond.end.394
  %316 = load i16*, i16** %prob, align 8
  %317 = load i32, i32* %posSlot, align 4
  %idx.ext400 = zext i32 %317 to i64
  %add.ptr401 = getelementptr inbounds i16, i16* %316, i64 %idx.ext400
  %318 = load i16, i16* %add.ptr401, align 2
  %conv402 = zext i16 %318 to i32
  store i32 %conv402, i32* %ttt, align 4
  %319 = load i32, i32* %range, align 4
  %cmp403 = icmp ult i32 %319, 16777216
  br i1 %cmp403, label %if.then.405, label %if.end.415

if.then.405:                                      ; preds = %do.body.399
  %320 = load i8*, i8** %buf.addr, align 8
  %321 = load i8*, i8** %bufLimit, align 8
  %cmp406 = icmp uge i8* %320, %321
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %if.then.405
  store i32 0, i32* %retval
  br label %return

if.end.409:                                       ; preds = %if.then.405
  %322 = load i32, i32* %range, align 4
  %shl410 = shl i32 %322, 8
  store i32 %shl410, i32* %range, align 4
  %323 = load i32, i32* %code, align 4
  %shl411 = shl i32 %323, 8
  %324 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr412 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr412, i8** %buf.addr, align 8
  %325 = load i8, i8* %324, align 1
  %conv413 = zext i8 %325 to i32
  %or414 = or i32 %shl411, %conv413
  store i32 %or414, i32* %code, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.409, %do.body.399
  %326 = load i32, i32* %range, align 4
  %shr416 = lshr i32 %326, 11
  %327 = load i32, i32* %ttt, align 4
  %mul417 = mul i32 %shr416, %327
  store i32 %mul417, i32* %bound, align 4
  %328 = load i32, i32* %code, align 4
  %329 = load i32, i32* %bound, align 4
  %cmp418 = icmp ult i32 %328, %329
  br i1 %cmp418, label %if.then.420, label %if.else.422

if.then.420:                                      ; preds = %if.end.415
  %330 = load i32, i32* %bound, align 4
  store i32 %330, i32* %range, align 4
  %331 = load i32, i32* %posSlot, align 4
  %332 = load i32, i32* %posSlot, align 4
  %add421 = add i32 %331, %332
  store i32 %add421, i32* %posSlot, align 4
  br label %if.end.427

if.else.422:                                      ; preds = %if.end.415
  %333 = load i32, i32* %bound, align 4
  %334 = load i32, i32* %range, align 4
  %sub423 = sub i32 %334, %333
  store i32 %sub423, i32* %range, align 4
  %335 = load i32, i32* %bound, align 4
  %336 = load i32, i32* %code, align 4
  %sub424 = sub i32 %336, %335
  store i32 %sub424, i32* %code, align 4
  %337 = load i32, i32* %posSlot, align 4
  %338 = load i32, i32* %posSlot, align 4
  %add425 = add i32 %337, %338
  %add426 = add i32 %add425, 1
  store i32 %add426, i32* %posSlot, align 4
  br label %if.end.427

if.end.427:                                       ; preds = %if.else.422, %if.then.420
  br label %do.cond.428

do.cond.428:                                      ; preds = %if.end.427
  %339 = load i32, i32* %posSlot, align 4
  %cmp429 = icmp ult i32 %339, 64
  br i1 %cmp429, label %do.body.399, label %do.end.431

do.end.431:                                       ; preds = %do.cond.428
  %340 = load i32, i32* %posSlot, align 4
  %sub432 = sub i32 %340, 64
  store i32 %sub432, i32* %posSlot, align 4
  %341 = load i32, i32* %posSlot, align 4
  %cmp433 = icmp uge i32 %341, 4
  br i1 %cmp433, label %if.then.435, label %if.end.512

if.then.435:                                      ; preds = %do.end.431
  %342 = load i32, i32* %posSlot, align 4
  %shr436 = lshr i32 %342, 1
  %sub437 = sub i32 %shr436, 1
  store i32 %sub437, i32* %numDirectBits, align 4
  %343 = load i32, i32* %posSlot, align 4
  %cmp438 = icmp ult i32 %343, 14
  br i1 %cmp438, label %if.then.440, label %if.else.450

if.then.440:                                      ; preds = %if.then.435
  %344 = load i16*, i16** %probs, align 8
  %add.ptr441 = getelementptr inbounds i16, i16* %344, i64 688
  %345 = load i32, i32* %posSlot, align 4
  %and442 = and i32 %345, 1
  %or443 = or i32 2, %and442
  %346 = load i32, i32* %numDirectBits, align 4
  %shl444 = shl i32 %or443, %346
  %idx.ext445 = zext i32 %shl444 to i64
  %add.ptr446 = getelementptr inbounds i16, i16* %add.ptr441, i64 %idx.ext445
  %347 = load i32, i32* %posSlot, align 4
  %idx.ext447 = zext i32 %347 to i64
  %idx.neg = sub i64 0, %idx.ext447
  %add.ptr448 = getelementptr inbounds i16, i16* %add.ptr446, i64 %idx.neg
  %add.ptr449 = getelementptr inbounds i16, i16* %add.ptr448, i64 -1
  store i16* %add.ptr449, i16** %prob, align 8
  br label %if.end.477

if.else.450:                                      ; preds = %if.then.435
  %348 = load i32, i32* %numDirectBits, align 4
  %sub451 = sub nsw i32 %348, 4
  store i32 %sub451, i32* %numDirectBits, align 4
  br label %do.body.452

do.body.452:                                      ; preds = %do.cond.472, %if.else.450
  %349 = load i32, i32* %range, align 4
  %cmp453 = icmp ult i32 %349, 16777216
  br i1 %cmp453, label %if.then.455, label %if.end.465

if.then.455:                                      ; preds = %do.body.452
  %350 = load i8*, i8** %buf.addr, align 8
  %351 = load i8*, i8** %bufLimit, align 8
  %cmp456 = icmp uge i8* %350, %351
  br i1 %cmp456, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.then.455
  store i32 0, i32* %retval
  br label %return

if.end.459:                                       ; preds = %if.then.455
  %352 = load i32, i32* %range, align 4
  %shl460 = shl i32 %352, 8
  store i32 %shl460, i32* %range, align 4
  %353 = load i32, i32* %code, align 4
  %shl461 = shl i32 %353, 8
  %354 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr462 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %incdec.ptr462, i8** %buf.addr, align 8
  %355 = load i8, i8* %354, align 1
  %conv463 = zext i8 %355 to i32
  %or464 = or i32 %shl461, %conv463
  store i32 %or464, i32* %code, align 4
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.459, %do.body.452
  %356 = load i32, i32* %range, align 4
  %shr466 = lshr i32 %356, 1
  store i32 %shr466, i32* %range, align 4
  %357 = load i32, i32* %range, align 4
  %358 = load i32, i32* %code, align 4
  %359 = load i32, i32* %range, align 4
  %sub467 = sub i32 %358, %359
  %shr468 = lshr i32 %sub467, 31
  %sub469 = sub i32 %shr468, 1
  %and470 = and i32 %357, %sub469
  %360 = load i32, i32* %code, align 4
  %sub471 = sub i32 %360, %and470
  store i32 %sub471, i32* %code, align 4
  br label %do.cond.472

do.cond.472:                                      ; preds = %if.end.465
  %361 = load i32, i32* %numDirectBits, align 4
  %dec = add nsw i32 %361, -1
  store i32 %dec, i32* %numDirectBits, align 4
  %cmp473 = icmp ne i32 %dec, 0
  br i1 %cmp473, label %do.body.452, label %do.end.475

do.end.475:                                       ; preds = %do.cond.472
  %362 = load i16*, i16** %probs, align 8
  %add.ptr476 = getelementptr inbounds i16, i16* %362, i64 802
  store i16* %add.ptr476, i16** %prob, align 8
  store i32 4, i32* %numDirectBits, align 4
  br label %if.end.477

if.end.477:                                       ; preds = %do.end.475, %if.then.440
  store i32 1, i32* %i, align 4
  br label %do.body.478

do.body.478:                                      ; preds = %do.cond.507, %if.end.477
  %363 = load i16*, i16** %prob, align 8
  %364 = load i32, i32* %i, align 4
  %idx.ext479 = zext i32 %364 to i64
  %add.ptr480 = getelementptr inbounds i16, i16* %363, i64 %idx.ext479
  %365 = load i16, i16* %add.ptr480, align 2
  %conv481 = zext i16 %365 to i32
  store i32 %conv481, i32* %ttt, align 4
  %366 = load i32, i32* %range, align 4
  %cmp482 = icmp ult i32 %366, 16777216
  br i1 %cmp482, label %if.then.484, label %if.end.494

if.then.484:                                      ; preds = %do.body.478
  %367 = load i8*, i8** %buf.addr, align 8
  %368 = load i8*, i8** %bufLimit, align 8
  %cmp485 = icmp uge i8* %367, %368
  br i1 %cmp485, label %if.then.487, label %if.end.488

if.then.487:                                      ; preds = %if.then.484
  store i32 0, i32* %retval
  br label %return

if.end.488:                                       ; preds = %if.then.484
  %369 = load i32, i32* %range, align 4
  %shl489 = shl i32 %369, 8
  store i32 %shl489, i32* %range, align 4
  %370 = load i32, i32* %code, align 4
  %shl490 = shl i32 %370, 8
  %371 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr491 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %incdec.ptr491, i8** %buf.addr, align 8
  %372 = load i8, i8* %371, align 1
  %conv492 = zext i8 %372 to i32
  %or493 = or i32 %shl490, %conv492
  store i32 %or493, i32* %code, align 4
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.488, %do.body.478
  %373 = load i32, i32* %range, align 4
  %shr495 = lshr i32 %373, 11
  %374 = load i32, i32* %ttt, align 4
  %mul496 = mul i32 %shr495, %374
  store i32 %mul496, i32* %bound, align 4
  %375 = load i32, i32* %code, align 4
  %376 = load i32, i32* %bound, align 4
  %cmp497 = icmp ult i32 %375, %376
  br i1 %cmp497, label %if.then.499, label %if.else.501

if.then.499:                                      ; preds = %if.end.494
  %377 = load i32, i32* %bound, align 4
  store i32 %377, i32* %range, align 4
  %378 = load i32, i32* %i, align 4
  %379 = load i32, i32* %i, align 4
  %add500 = add i32 %378, %379
  store i32 %add500, i32* %i, align 4
  br label %if.end.506

if.else.501:                                      ; preds = %if.end.494
  %380 = load i32, i32* %bound, align 4
  %381 = load i32, i32* %range, align 4
  %sub502 = sub i32 %381, %380
  store i32 %sub502, i32* %range, align 4
  %382 = load i32, i32* %bound, align 4
  %383 = load i32, i32* %code, align 4
  %sub503 = sub i32 %383, %382
  store i32 %sub503, i32* %code, align 4
  %384 = load i32, i32* %i, align 4
  %385 = load i32, i32* %i, align 4
  %add504 = add i32 %384, %385
  %add505 = add i32 %add504, 1
  store i32 %add505, i32* %i, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.501, %if.then.499
  br label %do.cond.507

do.cond.507:                                      ; preds = %if.end.506
  %386 = load i32, i32* %numDirectBits, align 4
  %dec508 = add nsw i32 %386, -1
  store i32 %dec508, i32* %numDirectBits, align 4
  %cmp509 = icmp ne i32 %dec508, 0
  br i1 %cmp509, label %do.body.478, label %do.end.511

do.end.511:                                       ; preds = %do.cond.507
  br label %if.end.512

if.end.512:                                       ; preds = %do.end.511, %do.end.431
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %do.end.383
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %if.end.142
  %387 = load i32, i32* %range, align 4
  %cmp515 = icmp ult i32 %387, 16777216
  br i1 %cmp515, label %if.then.517, label %if.end.527

if.then.517:                                      ; preds = %if.end.514
  %388 = load i8*, i8** %buf.addr, align 8
  %389 = load i8*, i8** %bufLimit, align 8
  %cmp518 = icmp uge i8* %388, %389
  br i1 %cmp518, label %if.then.520, label %if.end.521

if.then.520:                                      ; preds = %if.then.517
  store i32 0, i32* %retval
  br label %return

if.end.521:                                       ; preds = %if.then.517
  %390 = load i32, i32* %range, align 4
  %shl522 = shl i32 %390, 8
  store i32 %shl522, i32* %range, align 4
  %391 = load i32, i32* %code, align 4
  %shl523 = shl i32 %391, 8
  %392 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr524 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %incdec.ptr524, i8** %buf.addr, align 8
  %393 = load i8, i8* %392, align 1
  %conv525 = zext i8 %393 to i32
  %or526 = or i32 %shl523, %conv525
  store i32 %or526, i32* %code, align 4
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.521, %if.end.514
  %394 = load i32, i32* %res, align 4
  store i32 %394, i32* %retval
  br label %return

return:                                           ; preds = %if.end.527, %if.then.520, %if.then.487, %if.then.458, %if.then.408, %if.then.360, %if.then.328, %if.then.301, %if.then.273, %if.then.248, %if.end.231, %if.then.224, %if.then.206, %if.then.181, %if.then.155, %if.then.116, %if.then.59, %if.then.13
  %395 = load i32, i32* %retval
  ret i32 %395
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @LzmaDec_DecodeReal2(%struct.CLzmaDec* %p, i64 %limit, i8* %bufLimit) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %limit.addr = alloca i64, align 8
  %bufLimit.addr = alloca i8*, align 8
  %limit2 = alloca i64, align 8
  %rem = alloca i32, align 4
  %__result__ = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i8* %bufLimit, i8** %bufLimit.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i64, i64* %limit.addr, align 8
  store i64 %0, i64* %limit2, align 8
  %1 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %1, i32 0, i32 9
  %2 = load i32, i32* %checkDicSize, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %3 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %3, i32 0, i32 0
  %dicSize = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 3
  %4 = load i32, i32* %dicSize, align 4
  %5 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %5, i32 0, i32 8
  %6 = load i32, i32* %processedPos, align 4
  %sub = sub i32 %4, %6
  store i32 %sub, i32* %rem, align 4
  %7 = load i64, i64* %limit.addr, align 8
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 6
  %9 = load i64, i64* %dicPos, align 8
  %sub1 = sub i64 %7, %9
  %10 = load i32, i32* %rem, align 4
  %conv = zext i32 %10 to i64
  %cmp2 = icmp ugt i64 %sub1, %conv
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos5 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %11, i32 0, i32 6
  %12 = load i64, i64* %dicPos5, align 8
  %13 = load i32, i32* %rem, align 4
  %conv6 = zext i32 %13 to i64
  %add = add i64 %12, %conv6
  store i64 %add, i64* %limit2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %do.body
  %14 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %15 = load i64, i64* %limit2, align 8
  %16 = load i8*, i8** %bufLimit.addr, align 8
  %call = call i32 @LzmaDec_DecodeReal(%struct.CLzmaDec* %14, i64 %15, i8* %16)
  store i32 %call, i32* %__result__, align 4
  %17 = load i32, i32* %__result__, align 4
  %cmp8 = icmp ne i32 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %18 = load i32, i32* %__result__, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %19 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos12 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %19, i32 0, i32 8
  %20 = load i32, i32* %processedPos12, align 4
  %21 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop13 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %21, i32 0, i32 0
  %dicSize14 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop13, i32 0, i32 3
  %22 = load i32, i32* %dicSize14, align 4
  %cmp15 = icmp uge i32 %20, %22
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.11
  %23 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop18 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %23, i32 0, i32 0
  %dicSize19 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop18, i32 0, i32 3
  %24 = load i32, i32* %dicSize19, align 4
  %25 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize20 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %25, i32 0, i32 9
  store i32 %24, i32* %checkDicSize20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.11
  %26 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %27 = load i64, i64* %limit.addr, align 8
  call void @LzmaDec_WriteRem(%struct.CLzmaDec* %26, i64 %27)
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %28 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos22 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %28, i32 0, i32 6
  %29 = load i64, i64* %dicPos22, align 8
  %30 = load i64, i64* %limit.addr, align 8
  %cmp23 = icmp ult i64 %29, %30
  br i1 %cmp23, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %31 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %31, i32 0, i32 3
  %32 = load i8*, i8** %buf, align 8
  %33 = load i8*, i8** %bufLimit.addr, align 8
  %cmp25 = icmp ult i8* %32, %33
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %34 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %34, i32 0, i32 12
  %35 = load i32, i32* %remainLen, align 4
  %cmp27 = icmp ult i32 %35, 274
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp27, %land.rhs ]
  br i1 %36, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %37 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen29 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %37, i32 0, i32 12
  %38 = load i32, i32* %remainLen29, align 4
  %cmp30 = icmp ugt i32 %38, 274
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.end
  %39 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen33 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %39, i32 0, i32 12
  store i32 274, i32* %remainLen33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.10
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @LzmaDec_DecodeToBuf(%struct.CLzmaDec* %p, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %outSize = alloca i64, align 8
  %inSize = alloca i64, align 8
  %inSizeCur = alloca i64, align 8
  %outSizeCur = alloca i64, align 8
  %dicPos = alloca i64, align 8
  %curFinishMode = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  %0 = load i64*, i64** %destLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %outSize, align 8
  %2 = load i64*, i64** %srcLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %inSize, align 8
  %4 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %5, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %entry
  %6 = load i64, i64* %inSize, align 8
  store i64 %6, i64* %inSizeCur, align 8
  %7 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %7, i32 0, i32 6
  %8 = load i64, i64* %dicPos1, align 8
  %9 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %9, i32 0, i32 7
  %10 = load i64, i64* %dicBufSize, align 8
  %cmp = icmp eq i64 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %11 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos2 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %11, i32 0, i32 6
  store i64 0, i64* %dicPos2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 6
  %13 = load i64, i64* %dicPos3, align 8
  store i64 %13, i64* %dicPos, align 8
  %14 = load i64, i64* %outSize, align 8
  %15 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %15, i32 0, i32 7
  %16 = load i64, i64* %dicBufSize4, align 8
  %17 = load i64, i64* %dicPos, align 8
  %sub = sub i64 %16, %17
  %cmp5 = icmp ugt i64 %14, %sub
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize7 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %18, i32 0, i32 7
  %19 = load i64, i64* %dicBufSize7, align 8
  store i64 %19, i64* %outSizeCur, align 8
  store i32 0, i32* %curFinishMode, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %20 = load i64, i64* %dicPos, align 8
  %21 = load i64, i64* %outSize, align 8
  %add = add i64 %20, %21
  store i64 %add, i64* %outSizeCur, align 8
  %22 = load i32, i32* %finishMode.addr, align 4
  store i32 %22, i32* %curFinishMode, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %23 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %24 = load i64, i64* %outSizeCur, align 8
  %25 = load i8*, i8** %src.addr, align 8
  %26 = load i32, i32* %curFinishMode, align 4
  %27 = load i32*, i32** %status.addr, align 8
  %call = call i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* %23, i64 %24, i8* %25, i64* %inSizeCur, i32 %26, i32* %27)
  store i32 %call, i32* %res, align 4
  %28 = load i64, i64* %inSizeCur, align 8
  %29 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %add.ptr, i8** %src.addr, align 8
  %30 = load i64, i64* %inSizeCur, align 8
  %31 = load i64, i64* %inSize, align 8
  %sub9 = sub i64 %31, %30
  store i64 %sub9, i64* %inSize, align 8
  %32 = load i64, i64* %inSizeCur, align 8
  %33 = load i64*, i64** %srcLen.addr, align 8
  %34 = load i64, i64* %33, align 8
  %add10 = add i64 %34, %32
  store i64 %add10, i64* %33, align 8
  %35 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos11 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %35, i32 0, i32 6
  %36 = load i64, i64* %dicPos11, align 8
  %37 = load i64, i64* %dicPos, align 8
  %sub12 = sub i64 %36, %37
  store i64 %sub12, i64* %outSizeCur, align 8
  %38 = load i8*, i8** %dest.addr, align 8
  %39 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %39, i32 0, i32 2
  %40 = load i8*, i8** %dic, align 8
  %41 = load i64, i64* %dicPos, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i64, i64* %outSizeCur, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %add.ptr13, i64 %42, i32 1, i1 false)
  %43 = load i64, i64* %outSizeCur, align 8
  %44 = load i8*, i8** %dest.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %add.ptr14, i8** %dest.addr, align 8
  %45 = load i64, i64* %outSizeCur, align 8
  %46 = load i64, i64* %outSize, align 8
  %sub15 = sub i64 %46, %45
  store i64 %sub15, i64* %outSize, align 8
  %47 = load i64, i64* %outSizeCur, align 8
  %48 = load i64*, i64** %destLen.addr, align 8
  %49 = load i64, i64* %48, align 8
  %add16 = add i64 %49, %47
  store i64 %add16, i64* %48, align 8
  %50 = load i32, i32* %res, align 4
  %cmp17 = icmp ne i32 %50, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.8
  %51 = load i32, i32* %res, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.8
  %52 = load i64, i64* %outSizeCur, align 8
  %cmp20 = icmp eq i64 %52, 0
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %53 = load i64, i64* %outSize, align 8
  %cmp21 = icmp eq i64 %53, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.19
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false
  br label %for.cond

return:                                           ; preds = %if.then.22, %if.then.18
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define void @LzmaDec_FreeProbs(%struct.CLzmaDec* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 1
  %5 = load i16*, i16** %probs, align 8
  %6 = bitcast i16* %5 to i8*
  call void %1(i8* %3, i8* %6)
  %7 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %7, i32 0, i32 1
  store i16* null, i16** %probs1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaDec_Free(%struct.CLzmaDec* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %1 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* %0, %struct.ISzAlloc* %1)
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %3 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeDict(%struct.CLzmaDec* %2, %struct.ISzAlloc* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LzmaDec_FreeDict(%struct.CLzmaDec* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 2
  %5 = load i8*, i8** %dic, align 8
  call void %1(i8* %3, i8* %5)
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 2
  store i8* null, i8** %dic1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LzmaProps_Decode(%struct._CLzmaProps* %p, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._CLzmaProps*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %dicSize = alloca i32, align 4
  %d = alloca i8, align 1
  store %struct._CLzmaProps* %p, %struct._CLzmaProps** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 3
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %7 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 4
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  store i32 %or10, i32* %dicSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %9 = load i32, i32* %dicSize, align 4
  %cmp11 = icmp ult i32 %9, 4096
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 4096, i32* %dicSize, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %10 = load i32, i32* %dicSize, align 4
  %11 = load %struct._CLzmaProps*, %struct._CLzmaProps** %p.addr, align 8
  %dicSize15 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %11, i32 0, i32 3
  store i32 %10, i32* %dicSize15, align 4
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx16, align 1
  store i8 %13, i8* %d, align 1
  %14 = load i8, i8* %d, align 1
  %conv17 = zext i8 %14 to i32
  %cmp18 = icmp sge i32 %conv17, 225
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  store i32 4, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %15 = load i8, i8* %d, align 1
  %conv22 = zext i8 %15 to i32
  %rem = srem i32 %conv22, 9
  %16 = load %struct._CLzmaProps*, %struct._CLzmaProps** %p.addr, align 8
  %lc = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %16, i32 0, i32 0
  store i32 %rem, i32* %lc, align 4
  %17 = load i8, i8* %d, align 1
  %conv23 = zext i8 %17 to i32
  %div = sdiv i32 %conv23, 9
  %conv24 = trunc i32 %div to i8
  store i8 %conv24, i8* %d, align 1
  %18 = load i8, i8* %d, align 1
  %conv25 = zext i8 %18 to i32
  %div26 = sdiv i32 %conv25, 5
  %19 = load %struct._CLzmaProps*, %struct._CLzmaProps** %p.addr, align 8
  %pb = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %19, i32 0, i32 2
  store i32 %div26, i32* %pb, align 4
  %20 = load i8, i8* %d, align 1
  %conv27 = zext i8 %20 to i32
  %rem28 = srem i32 %conv27, 5
  %21 = load %struct._CLzmaProps*, %struct._CLzmaProps** %p.addr, align 8
  %lp = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %21, i32 0, i32 1
  store i32 %rem28, i32* %lp, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* %p, i8* %props, i32 %propsSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %props.addr = alloca i8*, align 8
  %propsSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %propNew = alloca %struct._CLzmaProps, align 4
  %__result__ = alloca i32, align 4
  %__result__1 = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %props, i8** %props.addr, align 8
  store i32 %propsSize, i32* %propsSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8*, i8** %props.addr, align 8
  %1 = load i32, i32* %propsSize.addr, align 4
  %call = call i32 @LzmaProps_Decode(%struct._CLzmaProps* %propNew, i8* %0, i32 %1)
  store i32 %call, i32* %__result__, align 4
  %2 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %__result__, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call2 = call i32 @LzmaDec_AllocateProbs2(%struct.CLzmaDec* %4, %struct._CLzmaProps* %propNew, %struct.ISzAlloc* %5)
  store i32 %call2, i32* %__result__1, align 4
  %6 = load i32, i32* %__result__1, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %__result__1, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 0
  %9 = bitcast %struct._CLzmaProps* %prop to i8*
  %10 = bitcast %struct._CLzmaProps* %propNew to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 4, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaDec_AllocateProbs2(%struct.CLzmaDec* %p, %struct._CLzmaProps* %propNew, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %propNew.addr = alloca %struct._CLzmaProps*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %numProbs = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store %struct._CLzmaProps* %propNew, %struct._CLzmaProps** %propNew.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct._CLzmaProps*, %struct._CLzmaProps** %propNew.addr, align 8
  %lc = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %0, i32 0, i32 0
  %1 = load i32, i32* %lc, align 4
  %2 = load %struct._CLzmaProps*, %struct._CLzmaProps** %propNew.addr, align 8
  %lp = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %2, i32 0, i32 1
  %3 = load i32, i32* %lp, align 4
  %add = add i32 %1, %3
  %shl = shl i32 768, %add
  %add1 = add i32 1846, %shl
  store i32 %add1, i32* %numProbs, align 4
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 1
  %5 = load i16*, i16** %probs, align 8
  %cmp = icmp eq i16* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %numProbs, align 4
  %7 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %numProbs2 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %7, i32 0, i32 15
  %8 = load i32, i32* %numProbs2, align 4
  %cmp3 = icmp ne i32 %6, %8
  br i1 %cmp3, label %if.then, label %if.end.10

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %10 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* %9, %struct.ISzAlloc* %10)
  %11 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %11, i32 0, i32 0
  %12 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %13 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %14 = bitcast %struct.ISzAlloc* %13 to i8*
  %15 = load i32, i32* %numProbs, align 4
  %conv = zext i32 %15 to i64
  %mul = mul i64 %conv, 2
  %call = call i8* %12(i8* %14, i64 %mul)
  %16 = bitcast i8* %call to i16*
  %17 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %17, i32 0, i32 1
  store i16* %16, i16** %probs4, align 8
  %18 = load i32, i32* %numProbs, align 4
  %19 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %numProbs5 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %19, i32 0, i32 15
  store i32 %18, i32* %numProbs5, align 4
  %20 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %20, i32 0, i32 1
  %21 = load i16*, i16** %probs6, align 8
  %cmp7 = icmp eq i16* %21, null
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @LzmaDec_Allocate(%struct.CLzmaDec* %p, i8* %props, i32 %propsSize, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %props.addr = alloca i8*, align 8
  %propsSize.addr = alloca i32, align 4
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %propNew = alloca %struct._CLzmaProps, align 4
  %dicBufSize = alloca i64, align 8
  %__result__ = alloca i32, align 4
  %__result__1 = alloca i32, align 4
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %props, i8** %props.addr, align 8
  store i32 %propsSize, i32* %propsSize.addr, align 4
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8*, i8** %props.addr, align 8
  %1 = load i32, i32* %propsSize.addr, align 4
  %call = call i32 @LzmaProps_Decode(%struct._CLzmaProps* %propNew, i8* %0, i32 %1)
  store i32 %call, i32* %__result__, align 4
  %2 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %__result__, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call2 = call i32 @LzmaDec_AllocateProbs2(%struct.CLzmaDec* %4, %struct._CLzmaProps* %propNew, %struct.ISzAlloc* %5)
  store i32 %call2, i32* %__result__1, align 4
  %6 = load i32, i32* %__result__1, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %__result__1, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %dicSize = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %propNew, i32 0, i32 3
  %8 = load i32, i32* %dicSize, align 4
  %conv = zext i32 %8 to i64
  store i64 %conv, i64* %dicBufSize, align 8
  %9 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %9, i32 0, i32 2
  %10 = load i8*, i8** %dic, align 8
  %cmp6 = icmp eq i8* %10, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %11 = load i64, i64* %dicBufSize, align 8
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize8 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 7
  %13 = load i64, i64* %dicBufSize8, align 8
  %cmp9 = icmp ne i64 %11, %13
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.5
  %14 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %15 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeDict(%struct.CLzmaDec* %14, %struct.ISzAlloc* %15)
  %16 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Alloc = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %16, i32 0, i32 0
  %17 = load i8* (i8*, i64)*, i8* (i8*, i64)** %Alloc, align 8
  %18 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %19 = bitcast %struct.ISzAlloc* %18 to i8*
  %20 = load i64, i64* %dicBufSize, align 8
  %call12 = call i8* %17(i8* %19, i64 %20)
  %21 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic13 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %21, i32 0, i32 2
  store i8* %call12, i8** %dic13, align 8
  %22 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic14 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %22, i32 0, i32 2
  %23 = load i8*, i8** %dic14, align 8
  %cmp15 = icmp eq i8* %23, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  %24 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %25 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* %24, %struct.ISzAlloc* %25)
  store i32 2, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %lor.lhs.false
  %26 = load i64, i64* %dicBufSize, align 8
  %27 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize20 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %27, i32 0, i32 7
  store i64 %26, i64* %dicBufSize20, align 8
  %28 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %28, i32 0, i32 0
  %29 = bitcast %struct._CLzmaProps* %prop to i8*
  %30 = bitcast %struct._CLzmaProps* %propNew to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 4, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @LzmaDecode(i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i8* %propData, i32 %propSize, i32 %finishMode, i32* %status, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %propData.addr = alloca i8*, align 8
  %propSize.addr = alloca i32, align 4
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %p = alloca %struct.CLzmaDec, align 8
  %res = alloca i32, align 4
  %inSize = alloca i64, align 8
  %outSize = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i8* %propData, i8** %propData.addr, align 8
  store i32 %propSize, i32* %propSize.addr, align 4
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64*, i64** %srcLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %inSize, align 8
  %2 = load i64*, i64** %destLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %outSize, align 8
  %4 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %inSize, align 8
  %cmp = icmp ult i64 %6, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %p, i32 0, i32 2
  store i8* null, i8** %dic, align 8
  %probs = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %p, i32 0, i32 1
  store i16* null, i16** %probs, align 8
  %7 = load i8*, i8** %propData.addr, align 8
  %8 = load i32, i32* %propSize.addr, align 4
  %9 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* %p, i8* %7, i32 %8, %struct.ISzAlloc* %9)
  store i32 %call, i32* %res, align 4
  %10 = load i32, i32* %res, align 4
  %cmp1 = icmp ne i32 %10, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load i32, i32* %res, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %12 = load i8*, i8** %dest.addr, align 8
  %dic4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %p, i32 0, i32 2
  store i8* %12, i8** %dic4, align 8
  %13 = load i64, i64* %outSize, align 8
  %dicBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %p, i32 0, i32 7
  store i64 %13, i64* %dicBufSize, align 8
  call void @LzmaDec_Init(%struct.CLzmaDec* %p)
  %14 = load i64, i64* %inSize, align 8
  %15 = load i64*, i64** %srcLen.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %outSize, align 8
  %17 = load i8*, i8** %src.addr, align 8
  %18 = load i64*, i64** %srcLen.addr, align 8
  %19 = load i32, i32* %finishMode.addr, align 4
  %20 = load i32*, i32** %status.addr, align 8
  %call5 = call i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* %p, i64 %16, i8* %17, i64* %18, i32 %19, i32* %20)
  store i32 %call5, i32* %res, align 4
  %21 = load i32, i32* %res, align 4
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.3
  %22 = load i32*, i32** %status.addr, align 8
  %23 = load i32, i32* %22, align 4
  %cmp7 = icmp eq i32 %23, 3
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 6, i32* %res, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end.3
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %p, i32 0, i32 6
  %24 = load i64, i64* %dicPos, align 8
  %25 = load i64*, i64** %destLen.addr, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* %p, %struct.ISzAlloc* %26)
  %27 = load i32, i32* %res, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.2, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @LzmaDec_DecodeReal(%struct.CLzmaDec* %p, i64 %limit, i8* %bufLimit) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %limit.addr = alloca i64, align 8
  %bufLimit.addr = alloca i8*, align 8
  %probs = alloca i16*, align 8
  %state = alloca i32, align 4
  %rep0 = alloca i32, align 4
  %rep1 = alloca i32, align 4
  %rep2 = alloca i32, align 4
  %rep3 = alloca i32, align 4
  %pbMask = alloca i32, align 4
  %lpMask = alloca i32, align 4
  %lc = alloca i32, align 4
  %dic = alloca i8*, align 8
  %dicBufSize = alloca i64, align 8
  %dicPos = alloca i64, align 8
  %processedPos = alloca i32, align 4
  %checkDicSize = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca i8*, align 8
  %range = alloca i32, align 4
  %code = alloca i32, align 4
  %prob = alloca i16*, align 8
  %bound = alloca i32, align 4
  %ttt = alloca i32, align 4
  %posState = alloca i32, align 4
  %symbol = alloca i32, align 4
  %matchByte = alloca i32, align 4
  %offs = alloca i32, align 4
  %bit = alloca i32, align 4
  %probLit = alloca i16*, align 8
  %distance = alloca i32, align 4
  %limit351 = alloca i32, align 4
  %offset = alloca i32, align 4
  %probLen = alloca i16*, align 8
  %distance460 = alloca i32, align 4
  %posSlot = alloca i32, align 4
  %numDirectBits = alloca i32, align 4
  %mask = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %i769 = alloca i32, align 4
  %rem = alloca i64, align 8
  %curLen = alloca i32, align 4
  %pos = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i64, align 8
  %lim = alloca i8*, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i8* %bufLimit, i8** %bufLimit.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %probs1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 1
  %1 = load i16*, i16** %probs1, align 8
  store i16* %1, i16** %probs, align 8
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %state2 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 10
  %3 = load i32, i32* %state2, align 4
  store i32 %3, i32* %state, align 4
  %4 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %4, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %reps, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %rep0, align 4
  %6 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps3 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %6, i32 0, i32 11
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %reps3, i32 0, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  store i32 %7, i32* %rep1, align 4
  %8 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps5 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %8, i32 0, i32 11
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %reps5, i32 0, i64 2
  %9 = load i32, i32* %arrayidx6, align 4
  store i32 %9, i32* %rep2, align 4
  %10 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps7 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %10, i32 0, i32 11
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %reps7, i32 0, i64 3
  %11 = load i32, i32* %arrayidx8, align 4
  store i32 %11, i32* %rep3, align 4
  %12 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %12, i32 0, i32 0
  %pb = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 2
  %13 = load i32, i32* %pb, align 4
  %shl = shl i32 1, %13
  %sub = sub i32 %shl, 1
  store i32 %sub, i32* %pbMask, align 4
  %14 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop9 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %14, i32 0, i32 0
  %lp = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop9, i32 0, i32 1
  %15 = load i32, i32* %lp, align 4
  %shl10 = shl i32 1, %15
  %sub11 = sub i32 %shl10, 1
  store i32 %sub11, i32* %lpMask, align 4
  %16 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop12 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %16, i32 0, i32 0
  %lc13 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop12, i32 0, i32 0
  %17 = load i32, i32* %lc13, align 4
  store i32 %17, i32* %lc, align 4
  %18 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic14 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %18, i32 0, i32 2
  %19 = load i8*, i8** %dic14, align 8
  store i8* %19, i8** %dic, align 8
  %20 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicBufSize15 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %20, i32 0, i32 7
  %21 = load i64, i64* %dicBufSize15, align 8
  store i64 %21, i64* %dicBufSize, align 8
  %22 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos16 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %22, i32 0, i32 6
  %23 = load i64, i64* %dicPos16, align 8
  store i64 %23, i64* %dicPos, align 8
  %24 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos17 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %24, i32 0, i32 8
  %25 = load i32, i32* %processedPos17, align 4
  store i32 %25, i32* %processedPos, align 4
  %26 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize18 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %26, i32 0, i32 9
  %27 = load i32, i32* %checkDicSize18, align 4
  store i32 %27, i32* %checkDicSize, align 4
  store i32 0, i32* %len, align 4
  %28 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf19 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %28, i32 0, i32 3
  %29 = load i8*, i8** %buf19, align 8
  store i8* %29, i8** %buf, align 8
  %30 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %range20 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %30, i32 0, i32 4
  %31 = load i32, i32* %range20, align 4
  store i32 %31, i32* %range, align 4
  %32 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code21 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %32, i32 0, i32 5
  %33 = load i32, i32* %code21, align 4
  store i32 %33, i32* %code, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %34 = load i32, i32* %processedPos, align 4
  %35 = load i32, i32* %pbMask, align 4
  %and = and i32 %34, %35
  store i32 %and, i32* %posState, align 4
  %36 = load i16*, i16** %probs, align 8
  %add.ptr = getelementptr inbounds i16, i16* %36, i64 0
  %37 = load i32, i32* %state, align 4
  %shl22 = shl i32 %37, 4
  %idx.ext = zext i32 %shl22 to i64
  %add.ptr23 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext
  %38 = load i32, i32* %posState, align 4
  %idx.ext24 = zext i32 %38 to i64
  %add.ptr25 = getelementptr inbounds i16, i16* %add.ptr23, i64 %idx.ext24
  store i16* %add.ptr25, i16** %prob, align 8
  %39 = load i16*, i16** %prob, align 8
  %40 = load i16, i16* %39, align 2
  %conv = zext i16 %40 to i32
  store i32 %conv, i32* %ttt, align 4
  %41 = load i32, i32* %range, align 4
  %cmp = icmp ult i32 %41, 16777216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %42 = load i32, i32* %range, align 4
  %shl27 = shl i32 %42, 8
  store i32 %shl27, i32* %range, align 4
  %43 = load i32, i32* %code, align 4
  %shl28 = shl i32 %43, 8
  %44 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %buf, align 8
  %45 = load i8, i8* %44, align 1
  %conv29 = zext i8 %45 to i32
  %or = or i32 %shl28, %conv29
  store i32 %or, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %46 = load i32, i32* %range, align 4
  %shr = lshr i32 %46, 11
  %47 = load i32, i32* %ttt, align 4
  %mul = mul i32 %shr, %47
  store i32 %mul, i32* %bound, align 4
  %48 = load i32, i32* %code, align 4
  %49 = load i32, i32* %bound, align 4
  %cmp30 = icmp ult i32 %48, %49
  br i1 %cmp30, label %if.then.32, label %if.else.169

if.then.32:                                       ; preds = %if.end
  %50 = load i32, i32* %bound, align 4
  store i32 %50, i32* %range, align 4
  %51 = load i32, i32* %ttt, align 4
  %52 = load i32, i32* %ttt, align 4
  %sub33 = sub i32 2048, %52
  %shr34 = lshr i32 %sub33, 5
  %add = add i32 %51, %shr34
  %conv35 = trunc i32 %add to i16
  %53 = load i16*, i16** %prob, align 8
  store i16 %conv35, i16* %53, align 2
  %54 = load i16*, i16** %probs, align 8
  %add.ptr36 = getelementptr inbounds i16, i16* %54, i64 1846
  store i16* %add.ptr36, i16** %prob, align 8
  %55 = load i32, i32* %checkDicSize, align 4
  %cmp37 = icmp ne i32 %55, 0
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.32
  %56 = load i32, i32* %processedPos, align 4
  %cmp39 = icmp ne i32 %56, 0
  br i1 %cmp39, label %if.then.41, label %if.end.55

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.32
  %57 = load i32, i32* %processedPos, align 4
  %58 = load i32, i32* %lpMask, align 4
  %and42 = and i32 %57, %58
  %59 = load i32, i32* %lc, align 4
  %shl43 = shl i32 %and42, %59
  %60 = load i64, i64* %dicPos, align 8
  %cmp44 = icmp eq i64 %60, 0
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.41
  %61 = load i64, i64* %dicBufSize, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  %62 = load i64, i64* %dicPos, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %61, %cond.true ], [ %62, %cond.false ]
  %sub46 = sub i64 %cond, 1
  %63 = load i8*, i8** %dic, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %63, i64 %sub46
  %64 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %64 to i32
  %65 = load i32, i32* %lc, align 4
  %sub49 = sub i32 8, %65
  %shr50 = ashr i32 %conv48, %sub49
  %add51 = add i32 %shl43, %shr50
  %mul52 = mul i32 768, %add51
  %66 = load i16*, i16** %prob, align 8
  %idx.ext53 = zext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds i16, i16* %66, i64 %idx.ext53
  store i16* %add.ptr54, i16** %prob, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end, %lor.lhs.false
  %67 = load i32, i32* %state, align 4
  %cmp56 = icmp ult i32 %67, 7
  br i1 %cmp56, label %if.then.58, label %if.else.103

if.then.58:                                       ; preds = %if.end.55
  %68 = load i32, i32* %state, align 4
  %cmp59 = icmp ult i32 %68, 4
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.then.58
  %69 = load i32, i32* %state, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %if.then.58
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %69, %cond.true.61 ], [ 3, %cond.false.62 ]
  %70 = load i32, i32* %state, align 4
  %sub65 = sub i32 %70, %cond64
  store i32 %sub65, i32* %state, align 4
  store i32 1, i32* %symbol, align 4
  br label %do.body.66

do.body.66:                                       ; preds = %do.cond, %cond.end.63
  %71 = load i16*, i16** %prob, align 8
  %72 = load i32, i32* %symbol, align 4
  %idx.ext67 = zext i32 %72 to i64
  %add.ptr68 = getelementptr inbounds i16, i16* %71, i64 %idx.ext67
  %73 = load i16, i16* %add.ptr68, align 2
  %conv69 = zext i16 %73 to i32
  store i32 %conv69, i32* %ttt, align 4
  %74 = load i32, i32* %range, align 4
  %cmp70 = icmp ult i32 %74, 16777216
  br i1 %cmp70, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %do.body.66
  %75 = load i32, i32* %range, align 4
  %shl73 = shl i32 %75, 8
  store i32 %shl73, i32* %range, align 4
  %76 = load i32, i32* %code, align 4
  %shl74 = shl i32 %76, 8
  %77 = load i8*, i8** %buf, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr75, i8** %buf, align 8
  %78 = load i8, i8* %77, align 1
  %conv76 = zext i8 %78 to i32
  %or77 = or i32 %shl74, %conv76
  store i32 %or77, i32* %code, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.72, %do.body.66
  %79 = load i32, i32* %range, align 4
  %shr79 = lshr i32 %79, 11
  %80 = load i32, i32* %ttt, align 4
  %mul80 = mul i32 %shr79, %80
  store i32 %mul80, i32* %bound, align 4
  %81 = load i32, i32* %code, align 4
  %82 = load i32, i32* %bound, align 4
  %cmp81 = icmp ult i32 %81, %82
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.end.78
  %83 = load i32, i32* %bound, align 4
  store i32 %83, i32* %range, align 4
  %84 = load i32, i32* %ttt, align 4
  %85 = load i32, i32* %ttt, align 4
  %sub84 = sub i32 2048, %85
  %shr85 = lshr i32 %sub84, 5
  %add86 = add i32 %84, %shr85
  %conv87 = trunc i32 %add86 to i16
  %86 = load i16*, i16** %prob, align 8
  %87 = load i32, i32* %symbol, align 4
  %idx.ext88 = zext i32 %87 to i64
  %add.ptr89 = getelementptr inbounds i16, i16* %86, i64 %idx.ext88
  store i16 %conv87, i16* %add.ptr89, align 2
  %88 = load i32, i32* %symbol, align 4
  %89 = load i32, i32* %symbol, align 4
  %add90 = add i32 %88, %89
  store i32 %add90, i32* %symbol, align 4
  br label %if.end.100

if.else:                                          ; preds = %if.end.78
  %90 = load i32, i32* %bound, align 4
  %91 = load i32, i32* %range, align 4
  %sub91 = sub i32 %91, %90
  store i32 %sub91, i32* %range, align 4
  %92 = load i32, i32* %bound, align 4
  %93 = load i32, i32* %code, align 4
  %sub92 = sub i32 %93, %92
  store i32 %sub92, i32* %code, align 4
  %94 = load i32, i32* %ttt, align 4
  %95 = load i32, i32* %ttt, align 4
  %shr93 = lshr i32 %95, 5
  %sub94 = sub i32 %94, %shr93
  %conv95 = trunc i32 %sub94 to i16
  %96 = load i16*, i16** %prob, align 8
  %97 = load i32, i32* %symbol, align 4
  %idx.ext96 = zext i32 %97 to i64
  %add.ptr97 = getelementptr inbounds i16, i16* %96, i64 %idx.ext96
  store i16 %conv95, i16* %add.ptr97, align 2
  %98 = load i32, i32* %symbol, align 4
  %99 = load i32, i32* %symbol, align 4
  %add98 = add i32 %98, %99
  %add99 = add i32 %add98, 1
  store i32 %add99, i32* %symbol, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.then.83
  br label %do.cond

do.cond:                                          ; preds = %if.end.100
  %100 = load i32, i32* %symbol, align 4
  %cmp101 = icmp ult i32 %100, 256
  br i1 %cmp101, label %do.body.66, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.165

if.else.103:                                      ; preds = %if.end.55
  %101 = load i64, i64* %dicPos, align 8
  %102 = load i32, i32* %rep0, align 4
  %conv104 = zext i32 %102 to i64
  %sub105 = sub i64 %101, %conv104
  %103 = load i64, i64* %dicPos, align 8
  %104 = load i32, i32* %rep0, align 4
  %conv106 = zext i32 %104 to i64
  %cmp107 = icmp ult i64 %103, %conv106
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %if.else.103
  %105 = load i64, i64* %dicBufSize, align 8
  br label %cond.end.111

cond.false.110:                                   ; preds = %if.else.103
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi i64 [ %105, %cond.true.109 ], [ 0, %cond.false.110 ]
  %add113 = add i64 %sub105, %cond112
  %106 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic114 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %106, i32 0, i32 2
  %107 = load i8*, i8** %dic114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %107, i64 %add113
  %108 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %108 to i32
  store i32 %conv116, i32* %matchByte, align 4
  store i32 256, i32* %offs, align 4
  %109 = load i32, i32* %state, align 4
  %cmp117 = icmp ult i32 %109, 10
  %cond119 = select i1 %cmp117, i32 3, i32 6
  %110 = load i32, i32* %state, align 4
  %sub120 = sub i32 %110, %cond119
  store i32 %sub120, i32* %state, align 4
  store i32 1, i32* %symbol, align 4
  br label %do.body.121

do.body.121:                                      ; preds = %do.cond.161, %cond.end.111
  %111 = load i32, i32* %matchByte, align 4
  %shl122 = shl i32 %111, 1
  store i32 %shl122, i32* %matchByte, align 4
  %112 = load i32, i32* %matchByte, align 4
  %113 = load i32, i32* %offs, align 4
  %and123 = and i32 %112, %113
  store i32 %and123, i32* %bit, align 4
  %114 = load i16*, i16** %prob, align 8
  %115 = load i32, i32* %offs, align 4
  %idx.ext124 = zext i32 %115 to i64
  %add.ptr125 = getelementptr inbounds i16, i16* %114, i64 %idx.ext124
  %116 = load i32, i32* %bit, align 4
  %idx.ext126 = zext i32 %116 to i64
  %add.ptr127 = getelementptr inbounds i16, i16* %add.ptr125, i64 %idx.ext126
  %117 = load i32, i32* %symbol, align 4
  %idx.ext128 = zext i32 %117 to i64
  %add.ptr129 = getelementptr inbounds i16, i16* %add.ptr127, i64 %idx.ext128
  store i16* %add.ptr129, i16** %probLit, align 8
  %118 = load i16*, i16** %probLit, align 8
  %119 = load i16, i16* %118, align 2
  %conv130 = zext i16 %119 to i32
  store i32 %conv130, i32* %ttt, align 4
  %120 = load i32, i32* %range, align 4
  %cmp131 = icmp ult i32 %120, 16777216
  br i1 %cmp131, label %if.then.133, label %if.end.139

if.then.133:                                      ; preds = %do.body.121
  %121 = load i32, i32* %range, align 4
  %shl134 = shl i32 %121, 8
  store i32 %shl134, i32* %range, align 4
  %122 = load i32, i32* %code, align 4
  %shl135 = shl i32 %122, 8
  %123 = load i8*, i8** %buf, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr136, i8** %buf, align 8
  %124 = load i8, i8* %123, align 1
  %conv137 = zext i8 %124 to i32
  %or138 = or i32 %shl135, %conv137
  store i32 %or138, i32* %code, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.133, %do.body.121
  %125 = load i32, i32* %range, align 4
  %shr140 = lshr i32 %125, 11
  %126 = load i32, i32* %ttt, align 4
  %mul141 = mul i32 %shr140, %126
  store i32 %mul141, i32* %bound, align 4
  %127 = load i32, i32* %code, align 4
  %128 = load i32, i32* %bound, align 4
  %cmp142 = icmp ult i32 %127, %128
  br i1 %cmp142, label %if.then.144, label %if.else.151

if.then.144:                                      ; preds = %if.end.139
  %129 = load i32, i32* %bound, align 4
  store i32 %129, i32* %range, align 4
  %130 = load i32, i32* %ttt, align 4
  %131 = load i32, i32* %ttt, align 4
  %sub145 = sub i32 2048, %131
  %shr146 = lshr i32 %sub145, 5
  %add147 = add i32 %130, %shr146
  %conv148 = trunc i32 %add147 to i16
  %132 = load i16*, i16** %probLit, align 8
  store i16 %conv148, i16* %132, align 2
  %133 = load i32, i32* %symbol, align 4
  %134 = load i32, i32* %symbol, align 4
  %add149 = add i32 %133, %134
  store i32 %add149, i32* %symbol, align 4
  %135 = load i32, i32* %bit, align 4
  %neg = xor i32 %135, -1
  %136 = load i32, i32* %offs, align 4
  %and150 = and i32 %136, %neg
  store i32 %and150, i32* %offs, align 4
  br label %if.end.160

if.else.151:                                      ; preds = %if.end.139
  %137 = load i32, i32* %bound, align 4
  %138 = load i32, i32* %range, align 4
  %sub152 = sub i32 %138, %137
  store i32 %sub152, i32* %range, align 4
  %139 = load i32, i32* %bound, align 4
  %140 = load i32, i32* %code, align 4
  %sub153 = sub i32 %140, %139
  store i32 %sub153, i32* %code, align 4
  %141 = load i32, i32* %ttt, align 4
  %142 = load i32, i32* %ttt, align 4
  %shr154 = lshr i32 %142, 5
  %sub155 = sub i32 %141, %shr154
  %conv156 = trunc i32 %sub155 to i16
  %143 = load i16*, i16** %probLit, align 8
  store i16 %conv156, i16* %143, align 2
  %144 = load i32, i32* %symbol, align 4
  %145 = load i32, i32* %symbol, align 4
  %add157 = add i32 %144, %145
  %add158 = add i32 %add157, 1
  store i32 %add158, i32* %symbol, align 4
  %146 = load i32, i32* %bit, align 4
  %147 = load i32, i32* %offs, align 4
  %and159 = and i32 %147, %146
  store i32 %and159, i32* %offs, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.151, %if.then.144
  br label %do.cond.161

do.cond.161:                                      ; preds = %if.end.160
  %148 = load i32, i32* %symbol, align 4
  %cmp162 = icmp ult i32 %148, 256
  br i1 %cmp162, label %do.body.121, label %do.end.164

do.end.164:                                       ; preds = %do.cond.161
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.end
  %149 = load i32, i32* %symbol, align 4
  %conv166 = trunc i32 %149 to i8
  %150 = load i64, i64* %dicPos, align 8
  %inc = add i64 %150, 1
  store i64 %inc, i64* %dicPos, align 8
  %151 = load i8*, i8** %dic, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8 %conv166, i8* %arrayidx167, align 1
  %152 = load i32, i32* %processedPos, align 4
  %inc168 = add i32 %152, 1
  store i32 %inc168, i32* %processedPos, align 4
  br label %do.cond.1001

if.else.169:                                      ; preds = %if.end
  %153 = load i32, i32* %bound, align 4
  %154 = load i32, i32* %range, align 4
  %sub170 = sub i32 %154, %153
  store i32 %sub170, i32* %range, align 4
  %155 = load i32, i32* %bound, align 4
  %156 = load i32, i32* %code, align 4
  %sub171 = sub i32 %156, %155
  store i32 %sub171, i32* %code, align 4
  %157 = load i32, i32* %ttt, align 4
  %158 = load i32, i32* %ttt, align 4
  %shr172 = lshr i32 %158, 5
  %sub173 = sub i32 %157, %shr172
  %conv174 = trunc i32 %sub173 to i16
  %159 = load i16*, i16** %prob, align 8
  store i16 %conv174, i16* %159, align 2
  %160 = load i16*, i16** %probs, align 8
  %add.ptr175 = getelementptr inbounds i16, i16* %160, i64 192
  %161 = load i32, i32* %state, align 4
  %idx.ext176 = zext i32 %161 to i64
  %add.ptr177 = getelementptr inbounds i16, i16* %add.ptr175, i64 %idx.ext176
  store i16* %add.ptr177, i16** %prob, align 8
  %162 = load i16*, i16** %prob, align 8
  %163 = load i16, i16* %162, align 2
  %conv178 = zext i16 %163 to i32
  store i32 %conv178, i32* %ttt, align 4
  %164 = load i32, i32* %range, align 4
  %cmp179 = icmp ult i32 %164, 16777216
  br i1 %cmp179, label %if.then.181, label %if.end.187

if.then.181:                                      ; preds = %if.else.169
  %165 = load i32, i32* %range, align 4
  %shl182 = shl i32 %165, 8
  store i32 %shl182, i32* %range, align 4
  %166 = load i32, i32* %code, align 4
  %shl183 = shl i32 %166, 8
  %167 = load i8*, i8** %buf, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr184, i8** %buf, align 8
  %168 = load i8, i8* %167, align 1
  %conv185 = zext i8 %168 to i32
  %or186 = or i32 %shl183, %conv185
  store i32 %or186, i32* %code, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.181, %if.else.169
  %169 = load i32, i32* %range, align 4
  %shr188 = lshr i32 %169, 11
  %170 = load i32, i32* %ttt, align 4
  %mul189 = mul i32 %shr188, %170
  store i32 %mul189, i32* %bound, align 4
  %171 = load i32, i32* %code, align 4
  %172 = load i32, i32* %bound, align 4
  %cmp190 = icmp ult i32 %171, %172
  br i1 %cmp190, label %if.then.192, label %if.else.199

if.then.192:                                      ; preds = %if.end.187
  %173 = load i32, i32* %bound, align 4
  store i32 %173, i32* %range, align 4
  %174 = load i32, i32* %ttt, align 4
  %175 = load i32, i32* %ttt, align 4
  %sub193 = sub i32 2048, %175
  %shr194 = lshr i32 %sub193, 5
  %add195 = add i32 %174, %shr194
  %conv196 = trunc i32 %add195 to i16
  %176 = load i16*, i16** %prob, align 8
  store i16 %conv196, i16* %176, align 2
  %177 = load i32, i32* %state, align 4
  %add197 = add i32 %177, 12
  store i32 %add197, i32* %state, align 4
  %178 = load i16*, i16** %probs, align 8
  %add.ptr198 = getelementptr inbounds i16, i16* %178, i64 818
  store i16* %add.ptr198, i16** %prob, align 8
  br label %if.end.350

if.else.199:                                      ; preds = %if.end.187
  %179 = load i32, i32* %bound, align 4
  %180 = load i32, i32* %range, align 4
  %sub200 = sub i32 %180, %179
  store i32 %sub200, i32* %range, align 4
  %181 = load i32, i32* %bound, align 4
  %182 = load i32, i32* %code, align 4
  %sub201 = sub i32 %182, %181
  store i32 %sub201, i32* %code, align 4
  %183 = load i32, i32* %ttt, align 4
  %184 = load i32, i32* %ttt, align 4
  %shr202 = lshr i32 %184, 5
  %sub203 = sub i32 %183, %shr202
  %conv204 = trunc i32 %sub203 to i16
  %185 = load i16*, i16** %prob, align 8
  store i16 %conv204, i16* %185, align 2
  %186 = load i32, i32* %checkDicSize, align 4
  %cmp205 = icmp eq i32 %186, 0
  br i1 %cmp205, label %land.lhs.true, label %if.end.210

land.lhs.true:                                    ; preds = %if.else.199
  %187 = load i32, i32* %processedPos, align 4
  %cmp207 = icmp eq i32 %187, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.210:                                       ; preds = %land.lhs.true, %if.else.199
  %188 = load i16*, i16** %probs, align 8
  %add.ptr211 = getelementptr inbounds i16, i16* %188, i64 204
  %189 = load i32, i32* %state, align 4
  %idx.ext212 = zext i32 %189 to i64
  %add.ptr213 = getelementptr inbounds i16, i16* %add.ptr211, i64 %idx.ext212
  store i16* %add.ptr213, i16** %prob, align 8
  %190 = load i16*, i16** %prob, align 8
  %191 = load i16, i16* %190, align 2
  %conv214 = zext i16 %191 to i32
  store i32 %conv214, i32* %ttt, align 4
  %192 = load i32, i32* %range, align 4
  %cmp215 = icmp ult i32 %192, 16777216
  br i1 %cmp215, label %if.then.217, label %if.end.223

if.then.217:                                      ; preds = %if.end.210
  %193 = load i32, i32* %range, align 4
  %shl218 = shl i32 %193, 8
  store i32 %shl218, i32* %range, align 4
  %194 = load i32, i32* %code, align 4
  %shl219 = shl i32 %194, 8
  %195 = load i8*, i8** %buf, align 8
  %incdec.ptr220 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr220, i8** %buf, align 8
  %196 = load i8, i8* %195, align 1
  %conv221 = zext i8 %196 to i32
  %or222 = or i32 %shl219, %conv221
  store i32 %or222, i32* %code, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.217, %if.end.210
  %197 = load i32, i32* %range, align 4
  %shr224 = lshr i32 %197, 11
  %198 = load i32, i32* %ttt, align 4
  %mul225 = mul i32 %shr224, %198
  store i32 %mul225, i32* %bound, align 4
  %199 = load i32, i32* %code, align 4
  %200 = load i32, i32* %bound, align 4
  %cmp226 = icmp ult i32 %199, %200
  br i1 %cmp226, label %if.then.228, label %if.else.281

if.then.228:                                      ; preds = %if.end.223
  %201 = load i32, i32* %bound, align 4
  store i32 %201, i32* %range, align 4
  %202 = load i32, i32* %ttt, align 4
  %203 = load i32, i32* %ttt, align 4
  %sub229 = sub i32 2048, %203
  %shr230 = lshr i32 %sub229, 5
  %add231 = add i32 %202, %shr230
  %conv232 = trunc i32 %add231 to i16
  %204 = load i16*, i16** %prob, align 8
  store i16 %conv232, i16* %204, align 2
  %205 = load i16*, i16** %probs, align 8
  %add.ptr233 = getelementptr inbounds i16, i16* %205, i64 240
  %206 = load i32, i32* %state, align 4
  %shl234 = shl i32 %206, 4
  %idx.ext235 = zext i32 %shl234 to i64
  %add.ptr236 = getelementptr inbounds i16, i16* %add.ptr233, i64 %idx.ext235
  %207 = load i32, i32* %posState, align 4
  %idx.ext237 = zext i32 %207 to i64
  %add.ptr238 = getelementptr inbounds i16, i16* %add.ptr236, i64 %idx.ext237
  store i16* %add.ptr238, i16** %prob, align 8
  %208 = load i16*, i16** %prob, align 8
  %209 = load i16, i16* %208, align 2
  %conv239 = zext i16 %209 to i32
  store i32 %conv239, i32* %ttt, align 4
  %210 = load i32, i32* %range, align 4
  %cmp240 = icmp ult i32 %210, 16777216
  br i1 %cmp240, label %if.then.242, label %if.end.248

if.then.242:                                      ; preds = %if.then.228
  %211 = load i32, i32* %range, align 4
  %shl243 = shl i32 %211, 8
  store i32 %shl243, i32* %range, align 4
  %212 = load i32, i32* %code, align 4
  %shl244 = shl i32 %212, 8
  %213 = load i8*, i8** %buf, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr245, i8** %buf, align 8
  %214 = load i8, i8* %213, align 1
  %conv246 = zext i8 %214 to i32
  %or247 = or i32 %shl244, %conv246
  store i32 %or247, i32* %code, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.242, %if.then.228
  %215 = load i32, i32* %range, align 4
  %shr249 = lshr i32 %215, 11
  %216 = load i32, i32* %ttt, align 4
  %mul250 = mul i32 %shr249, %216
  store i32 %mul250, i32* %bound, align 4
  %217 = load i32, i32* %code, align 4
  %218 = load i32, i32* %bound, align 4
  %cmp251 = icmp ult i32 %217, %218
  br i1 %cmp251, label %if.then.253, label %if.end.275

if.then.253:                                      ; preds = %if.end.248
  %219 = load i32, i32* %bound, align 4
  store i32 %219, i32* %range, align 4
  %220 = load i32, i32* %ttt, align 4
  %221 = load i32, i32* %ttt, align 4
  %sub254 = sub i32 2048, %221
  %shr255 = lshr i32 %sub254, 5
  %add256 = add i32 %220, %shr255
  %conv257 = trunc i32 %add256 to i16
  %222 = load i16*, i16** %prob, align 8
  store i16 %conv257, i16* %222, align 2
  %223 = load i64, i64* %dicPos, align 8
  %224 = load i32, i32* %rep0, align 4
  %conv258 = zext i32 %224 to i64
  %sub259 = sub i64 %223, %conv258
  %225 = load i64, i64* %dicPos, align 8
  %226 = load i32, i32* %rep0, align 4
  %conv260 = zext i32 %226 to i64
  %cmp261 = icmp ult i64 %225, %conv260
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %if.then.253
  %227 = load i64, i64* %dicBufSize, align 8
  br label %cond.end.265

cond.false.264:                                   ; preds = %if.then.253
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.263
  %cond266 = phi i64 [ %227, %cond.true.263 ], [ 0, %cond.false.264 ]
  %add267 = add i64 %sub259, %cond266
  %228 = load i8*, i8** %dic, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %228, i64 %add267
  %229 = load i8, i8* %arrayidx268, align 1
  %230 = load i64, i64* %dicPos, align 8
  %231 = load i8*, i8** %dic, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %231, i64 %230
  store i8 %229, i8* %arrayidx269, align 1
  %232 = load i64, i64* %dicPos, align 8
  %inc270 = add i64 %232, 1
  store i64 %inc270, i64* %dicPos, align 8
  %233 = load i32, i32* %processedPos, align 4
  %inc271 = add i32 %233, 1
  store i32 %inc271, i32* %processedPos, align 4
  %234 = load i32, i32* %state, align 4
  %cmp272 = icmp ult i32 %234, 7
  %cond274 = select i1 %cmp272, i32 9, i32 11
  store i32 %cond274, i32* %state, align 4
  br label %do.cond.1001

if.end.275:                                       ; preds = %if.end.248
  %235 = load i32, i32* %bound, align 4
  %236 = load i32, i32* %range, align 4
  %sub276 = sub i32 %236, %235
  store i32 %sub276, i32* %range, align 4
  %237 = load i32, i32* %bound, align 4
  %238 = load i32, i32* %code, align 4
  %sub277 = sub i32 %238, %237
  store i32 %sub277, i32* %code, align 4
  %239 = load i32, i32* %ttt, align 4
  %240 = load i32, i32* %ttt, align 4
  %shr278 = lshr i32 %240, 5
  %sub279 = sub i32 %239, %shr278
  %conv280 = trunc i32 %sub279 to i16
  %241 = load i16*, i16** %prob, align 8
  store i16 %conv280, i16* %241, align 2
  br label %if.end.345

if.else.281:                                      ; preds = %if.end.223
  %242 = load i32, i32* %bound, align 4
  %243 = load i32, i32* %range, align 4
  %sub282 = sub i32 %243, %242
  store i32 %sub282, i32* %range, align 4
  %244 = load i32, i32* %bound, align 4
  %245 = load i32, i32* %code, align 4
  %sub283 = sub i32 %245, %244
  store i32 %sub283, i32* %code, align 4
  %246 = load i32, i32* %ttt, align 4
  %247 = load i32, i32* %ttt, align 4
  %shr284 = lshr i32 %247, 5
  %sub285 = sub i32 %246, %shr284
  %conv286 = trunc i32 %sub285 to i16
  %248 = load i16*, i16** %prob, align 8
  store i16 %conv286, i16* %248, align 2
  %249 = load i16*, i16** %probs, align 8
  %add.ptr287 = getelementptr inbounds i16, i16* %249, i64 216
  %250 = load i32, i32* %state, align 4
  %idx.ext288 = zext i32 %250 to i64
  %add.ptr289 = getelementptr inbounds i16, i16* %add.ptr287, i64 %idx.ext288
  store i16* %add.ptr289, i16** %prob, align 8
  %251 = load i16*, i16** %prob, align 8
  %252 = load i16, i16* %251, align 2
  %conv290 = zext i16 %252 to i32
  store i32 %conv290, i32* %ttt, align 4
  %253 = load i32, i32* %range, align 4
  %cmp291 = icmp ult i32 %253, 16777216
  br i1 %cmp291, label %if.then.293, label %if.end.299

if.then.293:                                      ; preds = %if.else.281
  %254 = load i32, i32* %range, align 4
  %shl294 = shl i32 %254, 8
  store i32 %shl294, i32* %range, align 4
  %255 = load i32, i32* %code, align 4
  %shl295 = shl i32 %255, 8
  %256 = load i8*, i8** %buf, align 8
  %incdec.ptr296 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr296, i8** %buf, align 8
  %257 = load i8, i8* %256, align 1
  %conv297 = zext i8 %257 to i32
  %or298 = or i32 %shl295, %conv297
  store i32 %or298, i32* %code, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.293, %if.else.281
  %258 = load i32, i32* %range, align 4
  %shr300 = lshr i32 %258, 11
  %259 = load i32, i32* %ttt, align 4
  %mul301 = mul i32 %shr300, %259
  store i32 %mul301, i32* %bound, align 4
  %260 = load i32, i32* %code, align 4
  %261 = load i32, i32* %bound, align 4
  %cmp302 = icmp ult i32 %260, %261
  br i1 %cmp302, label %if.then.304, label %if.else.309

if.then.304:                                      ; preds = %if.end.299
  %262 = load i32, i32* %bound, align 4
  store i32 %262, i32* %range, align 4
  %263 = load i32, i32* %ttt, align 4
  %264 = load i32, i32* %ttt, align 4
  %sub305 = sub i32 2048, %264
  %shr306 = lshr i32 %sub305, 5
  %add307 = add i32 %263, %shr306
  %conv308 = trunc i32 %add307 to i16
  %265 = load i16*, i16** %prob, align 8
  store i16 %conv308, i16* %265, align 2
  %266 = load i32, i32* %rep1, align 4
  store i32 %266, i32* %distance, align 4
  br label %if.end.344

if.else.309:                                      ; preds = %if.end.299
  %267 = load i32, i32* %bound, align 4
  %268 = load i32, i32* %range, align 4
  %sub310 = sub i32 %268, %267
  store i32 %sub310, i32* %range, align 4
  %269 = load i32, i32* %bound, align 4
  %270 = load i32, i32* %code, align 4
  %sub311 = sub i32 %270, %269
  store i32 %sub311, i32* %code, align 4
  %271 = load i32, i32* %ttt, align 4
  %272 = load i32, i32* %ttt, align 4
  %shr312 = lshr i32 %272, 5
  %sub313 = sub i32 %271, %shr312
  %conv314 = trunc i32 %sub313 to i16
  %273 = load i16*, i16** %prob, align 8
  store i16 %conv314, i16* %273, align 2
  %274 = load i16*, i16** %probs, align 8
  %add.ptr315 = getelementptr inbounds i16, i16* %274, i64 228
  %275 = load i32, i32* %state, align 4
  %idx.ext316 = zext i32 %275 to i64
  %add.ptr317 = getelementptr inbounds i16, i16* %add.ptr315, i64 %idx.ext316
  store i16* %add.ptr317, i16** %prob, align 8
  %276 = load i16*, i16** %prob, align 8
  %277 = load i16, i16* %276, align 2
  %conv318 = zext i16 %277 to i32
  store i32 %conv318, i32* %ttt, align 4
  %278 = load i32, i32* %range, align 4
  %cmp319 = icmp ult i32 %278, 16777216
  br i1 %cmp319, label %if.then.321, label %if.end.327

if.then.321:                                      ; preds = %if.else.309
  %279 = load i32, i32* %range, align 4
  %shl322 = shl i32 %279, 8
  store i32 %shl322, i32* %range, align 4
  %280 = load i32, i32* %code, align 4
  %shl323 = shl i32 %280, 8
  %281 = load i8*, i8** %buf, align 8
  %incdec.ptr324 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %incdec.ptr324, i8** %buf, align 8
  %282 = load i8, i8* %281, align 1
  %conv325 = zext i8 %282 to i32
  %or326 = or i32 %shl323, %conv325
  store i32 %or326, i32* %code, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.321, %if.else.309
  %283 = load i32, i32* %range, align 4
  %shr328 = lshr i32 %283, 11
  %284 = load i32, i32* %ttt, align 4
  %mul329 = mul i32 %shr328, %284
  store i32 %mul329, i32* %bound, align 4
  %285 = load i32, i32* %code, align 4
  %286 = load i32, i32* %bound, align 4
  %cmp330 = icmp ult i32 %285, %286
  br i1 %cmp330, label %if.then.332, label %if.else.337

if.then.332:                                      ; preds = %if.end.327
  %287 = load i32, i32* %bound, align 4
  store i32 %287, i32* %range, align 4
  %288 = load i32, i32* %ttt, align 4
  %289 = load i32, i32* %ttt, align 4
  %sub333 = sub i32 2048, %289
  %shr334 = lshr i32 %sub333, 5
  %add335 = add i32 %288, %shr334
  %conv336 = trunc i32 %add335 to i16
  %290 = load i16*, i16** %prob, align 8
  store i16 %conv336, i16* %290, align 2
  %291 = load i32, i32* %rep2, align 4
  store i32 %291, i32* %distance, align 4
  br label %if.end.343

if.else.337:                                      ; preds = %if.end.327
  %292 = load i32, i32* %bound, align 4
  %293 = load i32, i32* %range, align 4
  %sub338 = sub i32 %293, %292
  store i32 %sub338, i32* %range, align 4
  %294 = load i32, i32* %bound, align 4
  %295 = load i32, i32* %code, align 4
  %sub339 = sub i32 %295, %294
  store i32 %sub339, i32* %code, align 4
  %296 = load i32, i32* %ttt, align 4
  %297 = load i32, i32* %ttt, align 4
  %shr340 = lshr i32 %297, 5
  %sub341 = sub i32 %296, %shr340
  %conv342 = trunc i32 %sub341 to i16
  %298 = load i16*, i16** %prob, align 8
  store i16 %conv342, i16* %298, align 2
  %299 = load i32, i32* %rep3, align 4
  store i32 %299, i32* %distance, align 4
  %300 = load i32, i32* %rep2, align 4
  store i32 %300, i32* %rep3, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.337, %if.then.332
  %301 = load i32, i32* %rep1, align 4
  store i32 %301, i32* %rep2, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.then.304
  %302 = load i32, i32* %rep0, align 4
  store i32 %302, i32* %rep1, align 4
  %303 = load i32, i32* %distance, align 4
  store i32 %303, i32* %rep0, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.275
  %304 = load i32, i32* %state, align 4
  %cmp346 = icmp ult i32 %304, 7
  %cond348 = select i1 %cmp346, i32 8, i32 11
  store i32 %cond348, i32* %state, align 4
  %305 = load i16*, i16** %probs, align 8
  %add.ptr349 = getelementptr inbounds i16, i16* %305, i64 1332
  store i16* %add.ptr349, i16** %prob, align 8
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.345, %if.then.192
  %306 = load i16*, i16** %prob, align 8
  %add.ptr352 = getelementptr inbounds i16, i16* %306, i64 0
  store i16* %add.ptr352, i16** %probLen, align 8
  %307 = load i16*, i16** %probLen, align 8
  %308 = load i16, i16* %307, align 2
  %conv353 = zext i16 %308 to i32
  store i32 %conv353, i32* %ttt, align 4
  %309 = load i32, i32* %range, align 4
  %cmp354 = icmp ult i32 %309, 16777216
  br i1 %cmp354, label %if.then.356, label %if.end.362

if.then.356:                                      ; preds = %if.end.350
  %310 = load i32, i32* %range, align 4
  %shl357 = shl i32 %310, 8
  store i32 %shl357, i32* %range, align 4
  %311 = load i32, i32* %code, align 4
  %shl358 = shl i32 %311, 8
  %312 = load i8*, i8** %buf, align 8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %incdec.ptr359, i8** %buf, align 8
  %313 = load i8, i8* %312, align 1
  %conv360 = zext i8 %313 to i32
  %or361 = or i32 %shl358, %conv360
  store i32 %or361, i32* %code, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.356, %if.end.350
  %314 = load i32, i32* %range, align 4
  %shr363 = lshr i32 %314, 11
  %315 = load i32, i32* %ttt, align 4
  %mul364 = mul i32 %shr363, %315
  store i32 %mul364, i32* %bound, align 4
  %316 = load i32, i32* %code, align 4
  %317 = load i32, i32* %bound, align 4
  %cmp365 = icmp ult i32 %316, %317
  br i1 %cmp365, label %if.then.367, label %if.else.376

if.then.367:                                      ; preds = %if.end.362
  %318 = load i32, i32* %bound, align 4
  store i32 %318, i32* %range, align 4
  %319 = load i32, i32* %ttt, align 4
  %320 = load i32, i32* %ttt, align 4
  %sub368 = sub i32 2048, %320
  %shr369 = lshr i32 %sub368, 5
  %add370 = add i32 %319, %shr369
  %conv371 = trunc i32 %add370 to i16
  %321 = load i16*, i16** %probLen, align 8
  store i16 %conv371, i16* %321, align 2
  %322 = load i16*, i16** %prob, align 8
  %add.ptr372 = getelementptr inbounds i16, i16* %322, i64 2
  %323 = load i32, i32* %posState, align 4
  %shl373 = shl i32 %323, 3
  %idx.ext374 = zext i32 %shl373 to i64
  %add.ptr375 = getelementptr inbounds i16, i16* %add.ptr372, i64 %idx.ext374
  store i16* %add.ptr375, i16** %probLen, align 8
  store i32 0, i32* %offset, align 4
  store i32 8, i32* %limit351, align 4
  br label %if.end.414

if.else.376:                                      ; preds = %if.end.362
  %324 = load i32, i32* %bound, align 4
  %325 = load i32, i32* %range, align 4
  %sub377 = sub i32 %325, %324
  store i32 %sub377, i32* %range, align 4
  %326 = load i32, i32* %bound, align 4
  %327 = load i32, i32* %code, align 4
  %sub378 = sub i32 %327, %326
  store i32 %sub378, i32* %code, align 4
  %328 = load i32, i32* %ttt, align 4
  %329 = load i32, i32* %ttt, align 4
  %shr379 = lshr i32 %329, 5
  %sub380 = sub i32 %328, %shr379
  %conv381 = trunc i32 %sub380 to i16
  %330 = load i16*, i16** %probLen, align 8
  store i16 %conv381, i16* %330, align 2
  %331 = load i16*, i16** %prob, align 8
  %add.ptr382 = getelementptr inbounds i16, i16* %331, i64 1
  store i16* %add.ptr382, i16** %probLen, align 8
  %332 = load i16*, i16** %probLen, align 8
  %333 = load i16, i16* %332, align 2
  %conv383 = zext i16 %333 to i32
  store i32 %conv383, i32* %ttt, align 4
  %334 = load i32, i32* %range, align 4
  %cmp384 = icmp ult i32 %334, 16777216
  br i1 %cmp384, label %if.then.386, label %if.end.392

if.then.386:                                      ; preds = %if.else.376
  %335 = load i32, i32* %range, align 4
  %shl387 = shl i32 %335, 8
  store i32 %shl387, i32* %range, align 4
  %336 = load i32, i32* %code, align 4
  %shl388 = shl i32 %336, 8
  %337 = load i8*, i8** %buf, align 8
  %incdec.ptr389 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr389, i8** %buf, align 8
  %338 = load i8, i8* %337, align 1
  %conv390 = zext i8 %338 to i32
  %or391 = or i32 %shl388, %conv390
  store i32 %or391, i32* %code, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.386, %if.else.376
  %339 = load i32, i32* %range, align 4
  %shr393 = lshr i32 %339, 11
  %340 = load i32, i32* %ttt, align 4
  %mul394 = mul i32 %shr393, %340
  store i32 %mul394, i32* %bound, align 4
  %341 = load i32, i32* %code, align 4
  %342 = load i32, i32* %bound, align 4
  %cmp395 = icmp ult i32 %341, %342
  br i1 %cmp395, label %if.then.397, label %if.else.406

if.then.397:                                      ; preds = %if.end.392
  %343 = load i32, i32* %bound, align 4
  store i32 %343, i32* %range, align 4
  %344 = load i32, i32* %ttt, align 4
  %345 = load i32, i32* %ttt, align 4
  %sub398 = sub i32 2048, %345
  %shr399 = lshr i32 %sub398, 5
  %add400 = add i32 %344, %shr399
  %conv401 = trunc i32 %add400 to i16
  %346 = load i16*, i16** %probLen, align 8
  store i16 %conv401, i16* %346, align 2
  %347 = load i16*, i16** %prob, align 8
  %add.ptr402 = getelementptr inbounds i16, i16* %347, i64 130
  %348 = load i32, i32* %posState, align 4
  %shl403 = shl i32 %348, 3
  %idx.ext404 = zext i32 %shl403 to i64
  %add.ptr405 = getelementptr inbounds i16, i16* %add.ptr402, i64 %idx.ext404
  store i16* %add.ptr405, i16** %probLen, align 8
  store i32 8, i32* %offset, align 4
  store i32 8, i32* %limit351, align 4
  br label %if.end.413

if.else.406:                                      ; preds = %if.end.392
  %349 = load i32, i32* %bound, align 4
  %350 = load i32, i32* %range, align 4
  %sub407 = sub i32 %350, %349
  store i32 %sub407, i32* %range, align 4
  %351 = load i32, i32* %bound, align 4
  %352 = load i32, i32* %code, align 4
  %sub408 = sub i32 %352, %351
  store i32 %sub408, i32* %code, align 4
  %353 = load i32, i32* %ttt, align 4
  %354 = load i32, i32* %ttt, align 4
  %shr409 = lshr i32 %354, 5
  %sub410 = sub i32 %353, %shr409
  %conv411 = trunc i32 %sub410 to i16
  %355 = load i16*, i16** %probLen, align 8
  store i16 %conv411, i16* %355, align 2
  %356 = load i16*, i16** %prob, align 8
  %add.ptr412 = getelementptr inbounds i16, i16* %356, i64 258
  store i16* %add.ptr412, i16** %probLen, align 8
  store i32 16, i32* %offset, align 4
  store i32 256, i32* %limit351, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.406, %if.then.397
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %if.then.367
  store i32 1, i32* %len, align 4
  br label %do.body.415

do.body.415:                                      ; preds = %do.cond.451, %if.end.414
  %357 = load i16*, i16** %probLen, align 8
  %358 = load i32, i32* %len, align 4
  %idx.ext416 = zext i32 %358 to i64
  %add.ptr417 = getelementptr inbounds i16, i16* %357, i64 %idx.ext416
  %359 = load i16, i16* %add.ptr417, align 2
  %conv418 = zext i16 %359 to i32
  store i32 %conv418, i32* %ttt, align 4
  %360 = load i32, i32* %range, align 4
  %cmp419 = icmp ult i32 %360, 16777216
  br i1 %cmp419, label %if.then.421, label %if.end.427

if.then.421:                                      ; preds = %do.body.415
  %361 = load i32, i32* %range, align 4
  %shl422 = shl i32 %361, 8
  store i32 %shl422, i32* %range, align 4
  %362 = load i32, i32* %code, align 4
  %shl423 = shl i32 %362, 8
  %363 = load i8*, i8** %buf, align 8
  %incdec.ptr424 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %incdec.ptr424, i8** %buf, align 8
  %364 = load i8, i8* %363, align 1
  %conv425 = zext i8 %364 to i32
  %or426 = or i32 %shl423, %conv425
  store i32 %or426, i32* %code, align 4
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.421, %do.body.415
  %365 = load i32, i32* %range, align 4
  %shr428 = lshr i32 %365, 11
  %366 = load i32, i32* %ttt, align 4
  %mul429 = mul i32 %shr428, %366
  store i32 %mul429, i32* %bound, align 4
  %367 = load i32, i32* %code, align 4
  %368 = load i32, i32* %bound, align 4
  %cmp430 = icmp ult i32 %367, %368
  br i1 %cmp430, label %if.then.432, label %if.else.440

if.then.432:                                      ; preds = %if.end.427
  %369 = load i32, i32* %bound, align 4
  store i32 %369, i32* %range, align 4
  %370 = load i32, i32* %ttt, align 4
  %371 = load i32, i32* %ttt, align 4
  %sub433 = sub i32 2048, %371
  %shr434 = lshr i32 %sub433, 5
  %add435 = add i32 %370, %shr434
  %conv436 = trunc i32 %add435 to i16
  %372 = load i16*, i16** %probLen, align 8
  %373 = load i32, i32* %len, align 4
  %idx.ext437 = zext i32 %373 to i64
  %add.ptr438 = getelementptr inbounds i16, i16* %372, i64 %idx.ext437
  store i16 %conv436, i16* %add.ptr438, align 2
  %374 = load i32, i32* %len, align 4
  %375 = load i32, i32* %len, align 4
  %add439 = add i32 %374, %375
  store i32 %add439, i32* %len, align 4
  br label %if.end.450

if.else.440:                                      ; preds = %if.end.427
  %376 = load i32, i32* %bound, align 4
  %377 = load i32, i32* %range, align 4
  %sub441 = sub i32 %377, %376
  store i32 %sub441, i32* %range, align 4
  %378 = load i32, i32* %bound, align 4
  %379 = load i32, i32* %code, align 4
  %sub442 = sub i32 %379, %378
  store i32 %sub442, i32* %code, align 4
  %380 = load i32, i32* %ttt, align 4
  %381 = load i32, i32* %ttt, align 4
  %shr443 = lshr i32 %381, 5
  %sub444 = sub i32 %380, %shr443
  %conv445 = trunc i32 %sub444 to i16
  %382 = load i16*, i16** %probLen, align 8
  %383 = load i32, i32* %len, align 4
  %idx.ext446 = zext i32 %383 to i64
  %add.ptr447 = getelementptr inbounds i16, i16* %382, i64 %idx.ext446
  store i16 %conv445, i16* %add.ptr447, align 2
  %384 = load i32, i32* %len, align 4
  %385 = load i32, i32* %len, align 4
  %add448 = add i32 %384, %385
  %add449 = add i32 %add448, 1
  store i32 %add449, i32* %len, align 4
  br label %if.end.450

if.end.450:                                       ; preds = %if.else.440, %if.then.432
  br label %do.cond.451

do.cond.451:                                      ; preds = %if.end.450
  %386 = load i32, i32* %len, align 4
  %387 = load i32, i32* %limit351, align 4
  %cmp452 = icmp ult i32 %386, %387
  br i1 %cmp452, label %do.body.415, label %do.end.454

do.end.454:                                       ; preds = %do.cond.451
  %388 = load i32, i32* %limit351, align 4
  %389 = load i32, i32* %len, align 4
  %sub455 = sub i32 %389, %388
  store i32 %sub455, i32* %len, align 4
  %390 = load i32, i32* %offset, align 4
  %391 = load i32, i32* %len, align 4
  %add456 = add i32 %391, %390
  store i32 %add456, i32* %len, align 4
  %392 = load i32, i32* %state, align 4
  %cmp457 = icmp uge i32 %392, 12
  br i1 %cmp457, label %if.then.459, label %if.end.939

if.then.459:                                      ; preds = %do.end.454
  %393 = load i16*, i16** %probs, align 8
  %add.ptr461 = getelementptr inbounds i16, i16* %393, i64 432
  %394 = load i32, i32* %len, align 4
  %cmp462 = icmp ult i32 %394, 4
  br i1 %cmp462, label %cond.true.464, label %cond.false.465

cond.true.464:                                    ; preds = %if.then.459
  %395 = load i32, i32* %len, align 4
  br label %cond.end.466

cond.false.465:                                   ; preds = %if.then.459
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.465, %cond.true.464
  %cond467 = phi i32 [ %395, %cond.true.464 ], [ 3, %cond.false.465 ]
  %shl468 = shl i32 %cond467, 6
  %idx.ext469 = zext i32 %shl468 to i64
  %add.ptr470 = getelementptr inbounds i16, i16* %add.ptr461, i64 %idx.ext469
  store i16* %add.ptr470, i16** %prob, align 8
  store i32 1, i32* %distance460, align 4
  %396 = load i16*, i16** %prob, align 8
  %397 = load i32, i32* %distance460, align 4
  %idx.ext471 = zext i32 %397 to i64
  %add.ptr472 = getelementptr inbounds i16, i16* %396, i64 %idx.ext471
  %398 = load i16, i16* %add.ptr472, align 2
  %conv473 = zext i16 %398 to i32
  store i32 %conv473, i32* %ttt, align 4
  %399 = load i32, i32* %range, align 4
  %cmp474 = icmp ult i32 %399, 16777216
  br i1 %cmp474, label %if.then.476, label %if.end.482

if.then.476:                                      ; preds = %cond.end.466
  %400 = load i32, i32* %range, align 4
  %shl477 = shl i32 %400, 8
  store i32 %shl477, i32* %range, align 4
  %401 = load i32, i32* %code, align 4
  %shl478 = shl i32 %401, 8
  %402 = load i8*, i8** %buf, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %incdec.ptr479, i8** %buf, align 8
  %403 = load i8, i8* %402, align 1
  %conv480 = zext i8 %403 to i32
  %or481 = or i32 %shl478, %conv480
  store i32 %or481, i32* %code, align 4
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.476, %cond.end.466
  %404 = load i32, i32* %range, align 4
  %shr483 = lshr i32 %404, 11
  %405 = load i32, i32* %ttt, align 4
  %mul484 = mul i32 %shr483, %405
  store i32 %mul484, i32* %bound, align 4
  %406 = load i32, i32* %code, align 4
  %407 = load i32, i32* %bound, align 4
  %cmp485 = icmp ult i32 %406, %407
  br i1 %cmp485, label %if.then.487, label %if.else.495

if.then.487:                                      ; preds = %if.end.482
  %408 = load i32, i32* %bound, align 4
  store i32 %408, i32* %range, align 4
  %409 = load i32, i32* %ttt, align 4
  %410 = load i32, i32* %ttt, align 4
  %sub488 = sub i32 2048, %410
  %shr489 = lshr i32 %sub488, 5
  %add490 = add i32 %409, %shr489
  %conv491 = trunc i32 %add490 to i16
  %411 = load i16*, i16** %prob, align 8
  %412 = load i32, i32* %distance460, align 4
  %idx.ext492 = zext i32 %412 to i64
  %add.ptr493 = getelementptr inbounds i16, i16* %411, i64 %idx.ext492
  store i16 %conv491, i16* %add.ptr493, align 2
  %413 = load i32, i32* %distance460, align 4
  %414 = load i32, i32* %distance460, align 4
  %add494 = add i32 %413, %414
  store i32 %add494, i32* %distance460, align 4
  br label %if.end.505

if.else.495:                                      ; preds = %if.end.482
  %415 = load i32, i32* %bound, align 4
  %416 = load i32, i32* %range, align 4
  %sub496 = sub i32 %416, %415
  store i32 %sub496, i32* %range, align 4
  %417 = load i32, i32* %bound, align 4
  %418 = load i32, i32* %code, align 4
  %sub497 = sub i32 %418, %417
  store i32 %sub497, i32* %code, align 4
  %419 = load i32, i32* %ttt, align 4
  %420 = load i32, i32* %ttt, align 4
  %shr498 = lshr i32 %420, 5
  %sub499 = sub i32 %419, %shr498
  %conv500 = trunc i32 %sub499 to i16
  %421 = load i16*, i16** %prob, align 8
  %422 = load i32, i32* %distance460, align 4
  %idx.ext501 = zext i32 %422 to i64
  %add.ptr502 = getelementptr inbounds i16, i16* %421, i64 %idx.ext501
  store i16 %conv500, i16* %add.ptr502, align 2
  %423 = load i32, i32* %distance460, align 4
  %424 = load i32, i32* %distance460, align 4
  %add503 = add i32 %423, %424
  %add504 = add i32 %add503, 1
  store i32 %add504, i32* %distance460, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.495, %if.then.487
  %425 = load i16*, i16** %prob, align 8
  %426 = load i32, i32* %distance460, align 4
  %idx.ext506 = zext i32 %426 to i64
  %add.ptr507 = getelementptr inbounds i16, i16* %425, i64 %idx.ext506
  %427 = load i16, i16* %add.ptr507, align 2
  %conv508 = zext i16 %427 to i32
  store i32 %conv508, i32* %ttt, align 4
  %428 = load i32, i32* %range, align 4
  %cmp509 = icmp ult i32 %428, 16777216
  br i1 %cmp509, label %if.then.511, label %if.end.517

if.then.511:                                      ; preds = %if.end.505
  %429 = load i32, i32* %range, align 4
  %shl512 = shl i32 %429, 8
  store i32 %shl512, i32* %range, align 4
  %430 = load i32, i32* %code, align 4
  %shl513 = shl i32 %430, 8
  %431 = load i8*, i8** %buf, align 8
  %incdec.ptr514 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %incdec.ptr514, i8** %buf, align 8
  %432 = load i8, i8* %431, align 1
  %conv515 = zext i8 %432 to i32
  %or516 = or i32 %shl513, %conv515
  store i32 %or516, i32* %code, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.511, %if.end.505
  %433 = load i32, i32* %range, align 4
  %shr518 = lshr i32 %433, 11
  %434 = load i32, i32* %ttt, align 4
  %mul519 = mul i32 %shr518, %434
  store i32 %mul519, i32* %bound, align 4
  %435 = load i32, i32* %code, align 4
  %436 = load i32, i32* %bound, align 4
  %cmp520 = icmp ult i32 %435, %436
  br i1 %cmp520, label %if.then.522, label %if.else.530

if.then.522:                                      ; preds = %if.end.517
  %437 = load i32, i32* %bound, align 4
  store i32 %437, i32* %range, align 4
  %438 = load i32, i32* %ttt, align 4
  %439 = load i32, i32* %ttt, align 4
  %sub523 = sub i32 2048, %439
  %shr524 = lshr i32 %sub523, 5
  %add525 = add i32 %438, %shr524
  %conv526 = trunc i32 %add525 to i16
  %440 = load i16*, i16** %prob, align 8
  %441 = load i32, i32* %distance460, align 4
  %idx.ext527 = zext i32 %441 to i64
  %add.ptr528 = getelementptr inbounds i16, i16* %440, i64 %idx.ext527
  store i16 %conv526, i16* %add.ptr528, align 2
  %442 = load i32, i32* %distance460, align 4
  %443 = load i32, i32* %distance460, align 4
  %add529 = add i32 %442, %443
  store i32 %add529, i32* %distance460, align 4
  br label %if.end.540

if.else.530:                                      ; preds = %if.end.517
  %444 = load i32, i32* %bound, align 4
  %445 = load i32, i32* %range, align 4
  %sub531 = sub i32 %445, %444
  store i32 %sub531, i32* %range, align 4
  %446 = load i32, i32* %bound, align 4
  %447 = load i32, i32* %code, align 4
  %sub532 = sub i32 %447, %446
  store i32 %sub532, i32* %code, align 4
  %448 = load i32, i32* %ttt, align 4
  %449 = load i32, i32* %ttt, align 4
  %shr533 = lshr i32 %449, 5
  %sub534 = sub i32 %448, %shr533
  %conv535 = trunc i32 %sub534 to i16
  %450 = load i16*, i16** %prob, align 8
  %451 = load i32, i32* %distance460, align 4
  %idx.ext536 = zext i32 %451 to i64
  %add.ptr537 = getelementptr inbounds i16, i16* %450, i64 %idx.ext536
  store i16 %conv535, i16* %add.ptr537, align 2
  %452 = load i32, i32* %distance460, align 4
  %453 = load i32, i32* %distance460, align 4
  %add538 = add i32 %452, %453
  %add539 = add i32 %add538, 1
  store i32 %add539, i32* %distance460, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.else.530, %if.then.522
  %454 = load i16*, i16** %prob, align 8
  %455 = load i32, i32* %distance460, align 4
  %idx.ext541 = zext i32 %455 to i64
  %add.ptr542 = getelementptr inbounds i16, i16* %454, i64 %idx.ext541
  %456 = load i16, i16* %add.ptr542, align 2
  %conv543 = zext i16 %456 to i32
  store i32 %conv543, i32* %ttt, align 4
  %457 = load i32, i32* %range, align 4
  %cmp544 = icmp ult i32 %457, 16777216
  br i1 %cmp544, label %if.then.546, label %if.end.552

if.then.546:                                      ; preds = %if.end.540
  %458 = load i32, i32* %range, align 4
  %shl547 = shl i32 %458, 8
  store i32 %shl547, i32* %range, align 4
  %459 = load i32, i32* %code, align 4
  %shl548 = shl i32 %459, 8
  %460 = load i8*, i8** %buf, align 8
  %incdec.ptr549 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %incdec.ptr549, i8** %buf, align 8
  %461 = load i8, i8* %460, align 1
  %conv550 = zext i8 %461 to i32
  %or551 = or i32 %shl548, %conv550
  store i32 %or551, i32* %code, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.546, %if.end.540
  %462 = load i32, i32* %range, align 4
  %shr553 = lshr i32 %462, 11
  %463 = load i32, i32* %ttt, align 4
  %mul554 = mul i32 %shr553, %463
  store i32 %mul554, i32* %bound, align 4
  %464 = load i32, i32* %code, align 4
  %465 = load i32, i32* %bound, align 4
  %cmp555 = icmp ult i32 %464, %465
  br i1 %cmp555, label %if.then.557, label %if.else.565

if.then.557:                                      ; preds = %if.end.552
  %466 = load i32, i32* %bound, align 4
  store i32 %466, i32* %range, align 4
  %467 = load i32, i32* %ttt, align 4
  %468 = load i32, i32* %ttt, align 4
  %sub558 = sub i32 2048, %468
  %shr559 = lshr i32 %sub558, 5
  %add560 = add i32 %467, %shr559
  %conv561 = trunc i32 %add560 to i16
  %469 = load i16*, i16** %prob, align 8
  %470 = load i32, i32* %distance460, align 4
  %idx.ext562 = zext i32 %470 to i64
  %add.ptr563 = getelementptr inbounds i16, i16* %469, i64 %idx.ext562
  store i16 %conv561, i16* %add.ptr563, align 2
  %471 = load i32, i32* %distance460, align 4
  %472 = load i32, i32* %distance460, align 4
  %add564 = add i32 %471, %472
  store i32 %add564, i32* %distance460, align 4
  br label %if.end.575

if.else.565:                                      ; preds = %if.end.552
  %473 = load i32, i32* %bound, align 4
  %474 = load i32, i32* %range, align 4
  %sub566 = sub i32 %474, %473
  store i32 %sub566, i32* %range, align 4
  %475 = load i32, i32* %bound, align 4
  %476 = load i32, i32* %code, align 4
  %sub567 = sub i32 %476, %475
  store i32 %sub567, i32* %code, align 4
  %477 = load i32, i32* %ttt, align 4
  %478 = load i32, i32* %ttt, align 4
  %shr568 = lshr i32 %478, 5
  %sub569 = sub i32 %477, %shr568
  %conv570 = trunc i32 %sub569 to i16
  %479 = load i16*, i16** %prob, align 8
  %480 = load i32, i32* %distance460, align 4
  %idx.ext571 = zext i32 %480 to i64
  %add.ptr572 = getelementptr inbounds i16, i16* %479, i64 %idx.ext571
  store i16 %conv570, i16* %add.ptr572, align 2
  %481 = load i32, i32* %distance460, align 4
  %482 = load i32, i32* %distance460, align 4
  %add573 = add i32 %481, %482
  %add574 = add i32 %add573, 1
  store i32 %add574, i32* %distance460, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %if.else.565, %if.then.557
  %483 = load i16*, i16** %prob, align 8
  %484 = load i32, i32* %distance460, align 4
  %idx.ext576 = zext i32 %484 to i64
  %add.ptr577 = getelementptr inbounds i16, i16* %483, i64 %idx.ext576
  %485 = load i16, i16* %add.ptr577, align 2
  %conv578 = zext i16 %485 to i32
  store i32 %conv578, i32* %ttt, align 4
  %486 = load i32, i32* %range, align 4
  %cmp579 = icmp ult i32 %486, 16777216
  br i1 %cmp579, label %if.then.581, label %if.end.587

if.then.581:                                      ; preds = %if.end.575
  %487 = load i32, i32* %range, align 4
  %shl582 = shl i32 %487, 8
  store i32 %shl582, i32* %range, align 4
  %488 = load i32, i32* %code, align 4
  %shl583 = shl i32 %488, 8
  %489 = load i8*, i8** %buf, align 8
  %incdec.ptr584 = getelementptr inbounds i8, i8* %489, i32 1
  store i8* %incdec.ptr584, i8** %buf, align 8
  %490 = load i8, i8* %489, align 1
  %conv585 = zext i8 %490 to i32
  %or586 = or i32 %shl583, %conv585
  store i32 %or586, i32* %code, align 4
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.581, %if.end.575
  %491 = load i32, i32* %range, align 4
  %shr588 = lshr i32 %491, 11
  %492 = load i32, i32* %ttt, align 4
  %mul589 = mul i32 %shr588, %492
  store i32 %mul589, i32* %bound, align 4
  %493 = load i32, i32* %code, align 4
  %494 = load i32, i32* %bound, align 4
  %cmp590 = icmp ult i32 %493, %494
  br i1 %cmp590, label %if.then.592, label %if.else.600

if.then.592:                                      ; preds = %if.end.587
  %495 = load i32, i32* %bound, align 4
  store i32 %495, i32* %range, align 4
  %496 = load i32, i32* %ttt, align 4
  %497 = load i32, i32* %ttt, align 4
  %sub593 = sub i32 2048, %497
  %shr594 = lshr i32 %sub593, 5
  %add595 = add i32 %496, %shr594
  %conv596 = trunc i32 %add595 to i16
  %498 = load i16*, i16** %prob, align 8
  %499 = load i32, i32* %distance460, align 4
  %idx.ext597 = zext i32 %499 to i64
  %add.ptr598 = getelementptr inbounds i16, i16* %498, i64 %idx.ext597
  store i16 %conv596, i16* %add.ptr598, align 2
  %500 = load i32, i32* %distance460, align 4
  %501 = load i32, i32* %distance460, align 4
  %add599 = add i32 %500, %501
  store i32 %add599, i32* %distance460, align 4
  br label %if.end.610

if.else.600:                                      ; preds = %if.end.587
  %502 = load i32, i32* %bound, align 4
  %503 = load i32, i32* %range, align 4
  %sub601 = sub i32 %503, %502
  store i32 %sub601, i32* %range, align 4
  %504 = load i32, i32* %bound, align 4
  %505 = load i32, i32* %code, align 4
  %sub602 = sub i32 %505, %504
  store i32 %sub602, i32* %code, align 4
  %506 = load i32, i32* %ttt, align 4
  %507 = load i32, i32* %ttt, align 4
  %shr603 = lshr i32 %507, 5
  %sub604 = sub i32 %506, %shr603
  %conv605 = trunc i32 %sub604 to i16
  %508 = load i16*, i16** %prob, align 8
  %509 = load i32, i32* %distance460, align 4
  %idx.ext606 = zext i32 %509 to i64
  %add.ptr607 = getelementptr inbounds i16, i16* %508, i64 %idx.ext606
  store i16 %conv605, i16* %add.ptr607, align 2
  %510 = load i32, i32* %distance460, align 4
  %511 = load i32, i32* %distance460, align 4
  %add608 = add i32 %510, %511
  %add609 = add i32 %add608, 1
  store i32 %add609, i32* %distance460, align 4
  br label %if.end.610

if.end.610:                                       ; preds = %if.else.600, %if.then.592
  %512 = load i16*, i16** %prob, align 8
  %513 = load i32, i32* %distance460, align 4
  %idx.ext611 = zext i32 %513 to i64
  %add.ptr612 = getelementptr inbounds i16, i16* %512, i64 %idx.ext611
  %514 = load i16, i16* %add.ptr612, align 2
  %conv613 = zext i16 %514 to i32
  store i32 %conv613, i32* %ttt, align 4
  %515 = load i32, i32* %range, align 4
  %cmp614 = icmp ult i32 %515, 16777216
  br i1 %cmp614, label %if.then.616, label %if.end.622

if.then.616:                                      ; preds = %if.end.610
  %516 = load i32, i32* %range, align 4
  %shl617 = shl i32 %516, 8
  store i32 %shl617, i32* %range, align 4
  %517 = load i32, i32* %code, align 4
  %shl618 = shl i32 %517, 8
  %518 = load i8*, i8** %buf, align 8
  %incdec.ptr619 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %incdec.ptr619, i8** %buf, align 8
  %519 = load i8, i8* %518, align 1
  %conv620 = zext i8 %519 to i32
  %or621 = or i32 %shl618, %conv620
  store i32 %or621, i32* %code, align 4
  br label %if.end.622

if.end.622:                                       ; preds = %if.then.616, %if.end.610
  %520 = load i32, i32* %range, align 4
  %shr623 = lshr i32 %520, 11
  %521 = load i32, i32* %ttt, align 4
  %mul624 = mul i32 %shr623, %521
  store i32 %mul624, i32* %bound, align 4
  %522 = load i32, i32* %code, align 4
  %523 = load i32, i32* %bound, align 4
  %cmp625 = icmp ult i32 %522, %523
  br i1 %cmp625, label %if.then.627, label %if.else.635

if.then.627:                                      ; preds = %if.end.622
  %524 = load i32, i32* %bound, align 4
  store i32 %524, i32* %range, align 4
  %525 = load i32, i32* %ttt, align 4
  %526 = load i32, i32* %ttt, align 4
  %sub628 = sub i32 2048, %526
  %shr629 = lshr i32 %sub628, 5
  %add630 = add i32 %525, %shr629
  %conv631 = trunc i32 %add630 to i16
  %527 = load i16*, i16** %prob, align 8
  %528 = load i32, i32* %distance460, align 4
  %idx.ext632 = zext i32 %528 to i64
  %add.ptr633 = getelementptr inbounds i16, i16* %527, i64 %idx.ext632
  store i16 %conv631, i16* %add.ptr633, align 2
  %529 = load i32, i32* %distance460, align 4
  %530 = load i32, i32* %distance460, align 4
  %add634 = add i32 %529, %530
  store i32 %add634, i32* %distance460, align 4
  br label %if.end.645

if.else.635:                                      ; preds = %if.end.622
  %531 = load i32, i32* %bound, align 4
  %532 = load i32, i32* %range, align 4
  %sub636 = sub i32 %532, %531
  store i32 %sub636, i32* %range, align 4
  %533 = load i32, i32* %bound, align 4
  %534 = load i32, i32* %code, align 4
  %sub637 = sub i32 %534, %533
  store i32 %sub637, i32* %code, align 4
  %535 = load i32, i32* %ttt, align 4
  %536 = load i32, i32* %ttt, align 4
  %shr638 = lshr i32 %536, 5
  %sub639 = sub i32 %535, %shr638
  %conv640 = trunc i32 %sub639 to i16
  %537 = load i16*, i16** %prob, align 8
  %538 = load i32, i32* %distance460, align 4
  %idx.ext641 = zext i32 %538 to i64
  %add.ptr642 = getelementptr inbounds i16, i16* %537, i64 %idx.ext641
  store i16 %conv640, i16* %add.ptr642, align 2
  %539 = load i32, i32* %distance460, align 4
  %540 = load i32, i32* %distance460, align 4
  %add643 = add i32 %539, %540
  %add644 = add i32 %add643, 1
  store i32 %add644, i32* %distance460, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.else.635, %if.then.627
  %541 = load i16*, i16** %prob, align 8
  %542 = load i32, i32* %distance460, align 4
  %idx.ext646 = zext i32 %542 to i64
  %add.ptr647 = getelementptr inbounds i16, i16* %541, i64 %idx.ext646
  %543 = load i16, i16* %add.ptr647, align 2
  %conv648 = zext i16 %543 to i32
  store i32 %conv648, i32* %ttt, align 4
  %544 = load i32, i32* %range, align 4
  %cmp649 = icmp ult i32 %544, 16777216
  br i1 %cmp649, label %if.then.651, label %if.end.657

if.then.651:                                      ; preds = %if.end.645
  %545 = load i32, i32* %range, align 4
  %shl652 = shl i32 %545, 8
  store i32 %shl652, i32* %range, align 4
  %546 = load i32, i32* %code, align 4
  %shl653 = shl i32 %546, 8
  %547 = load i8*, i8** %buf, align 8
  %incdec.ptr654 = getelementptr inbounds i8, i8* %547, i32 1
  store i8* %incdec.ptr654, i8** %buf, align 8
  %548 = load i8, i8* %547, align 1
  %conv655 = zext i8 %548 to i32
  %or656 = or i32 %shl653, %conv655
  store i32 %or656, i32* %code, align 4
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.651, %if.end.645
  %549 = load i32, i32* %range, align 4
  %shr658 = lshr i32 %549, 11
  %550 = load i32, i32* %ttt, align 4
  %mul659 = mul i32 %shr658, %550
  store i32 %mul659, i32* %bound, align 4
  %551 = load i32, i32* %code, align 4
  %552 = load i32, i32* %bound, align 4
  %cmp660 = icmp ult i32 %551, %552
  br i1 %cmp660, label %if.then.662, label %if.else.670

if.then.662:                                      ; preds = %if.end.657
  %553 = load i32, i32* %bound, align 4
  store i32 %553, i32* %range, align 4
  %554 = load i32, i32* %ttt, align 4
  %555 = load i32, i32* %ttt, align 4
  %sub663 = sub i32 2048, %555
  %shr664 = lshr i32 %sub663, 5
  %add665 = add i32 %554, %shr664
  %conv666 = trunc i32 %add665 to i16
  %556 = load i16*, i16** %prob, align 8
  %557 = load i32, i32* %distance460, align 4
  %idx.ext667 = zext i32 %557 to i64
  %add.ptr668 = getelementptr inbounds i16, i16* %556, i64 %idx.ext667
  store i16 %conv666, i16* %add.ptr668, align 2
  %558 = load i32, i32* %distance460, align 4
  %559 = load i32, i32* %distance460, align 4
  %add669 = add i32 %558, %559
  store i32 %add669, i32* %distance460, align 4
  br label %if.end.680

if.else.670:                                      ; preds = %if.end.657
  %560 = load i32, i32* %bound, align 4
  %561 = load i32, i32* %range, align 4
  %sub671 = sub i32 %561, %560
  store i32 %sub671, i32* %range, align 4
  %562 = load i32, i32* %bound, align 4
  %563 = load i32, i32* %code, align 4
  %sub672 = sub i32 %563, %562
  store i32 %sub672, i32* %code, align 4
  %564 = load i32, i32* %ttt, align 4
  %565 = load i32, i32* %ttt, align 4
  %shr673 = lshr i32 %565, 5
  %sub674 = sub i32 %564, %shr673
  %conv675 = trunc i32 %sub674 to i16
  %566 = load i16*, i16** %prob, align 8
  %567 = load i32, i32* %distance460, align 4
  %idx.ext676 = zext i32 %567 to i64
  %add.ptr677 = getelementptr inbounds i16, i16* %566, i64 %idx.ext676
  store i16 %conv675, i16* %add.ptr677, align 2
  %568 = load i32, i32* %distance460, align 4
  %569 = load i32, i32* %distance460, align 4
  %add678 = add i32 %568, %569
  %add679 = add i32 %add678, 1
  store i32 %add679, i32* %distance460, align 4
  br label %if.end.680

if.end.680:                                       ; preds = %if.else.670, %if.then.662
  %570 = load i32, i32* %distance460, align 4
  %sub681 = sub i32 %570, 64
  store i32 %sub681, i32* %distance460, align 4
  %571 = load i32, i32* %distance460, align 4
  %cmp682 = icmp uge i32 %571, 4
  br i1 %cmp682, label %if.then.684, label %if.end.921

if.then.684:                                      ; preds = %if.end.680
  %572 = load i32, i32* %distance460, align 4
  store i32 %572, i32* %posSlot, align 4
  %573 = load i32, i32* %distance460, align 4
  %shr685 = lshr i32 %573, 1
  %sub686 = sub i32 %shr685, 1
  store i32 %sub686, i32* %numDirectBits, align 4
  %574 = load i32, i32* %distance460, align 4
  %and687 = and i32 %574, 1
  %or688 = or i32 2, %and687
  store i32 %or688, i32* %distance460, align 4
  %575 = load i32, i32* %posSlot, align 4
  %cmp689 = icmp ult i32 %575, 14
  br i1 %cmp689, label %if.then.691, label %if.else.741

if.then.691:                                      ; preds = %if.then.684
  %576 = load i32, i32* %numDirectBits, align 4
  %577 = load i32, i32* %distance460, align 4
  %shl692 = shl i32 %577, %576
  store i32 %shl692, i32* %distance460, align 4
  %578 = load i16*, i16** %probs, align 8
  %add.ptr693 = getelementptr inbounds i16, i16* %578, i64 688
  %579 = load i32, i32* %distance460, align 4
  %idx.ext694 = zext i32 %579 to i64
  %add.ptr695 = getelementptr inbounds i16, i16* %add.ptr693, i64 %idx.ext694
  %580 = load i32, i32* %posSlot, align 4
  %idx.ext696 = zext i32 %580 to i64
  %idx.neg = sub i64 0, %idx.ext696
  %add.ptr697 = getelementptr inbounds i16, i16* %add.ptr695, i64 %idx.neg
  %add.ptr698 = getelementptr inbounds i16, i16* %add.ptr697, i64 -1
  store i16* %add.ptr698, i16** %prob, align 8
  store i32 1, i32* %mask, align 4
  store i32 1, i32* %i, align 4
  br label %do.body.699

do.body.699:                                      ; preds = %do.cond.737, %if.then.691
  %581 = load i16*, i16** %prob, align 8
  %582 = load i32, i32* %i, align 4
  %idx.ext700 = zext i32 %582 to i64
  %add.ptr701 = getelementptr inbounds i16, i16* %581, i64 %idx.ext700
  %583 = load i16, i16* %add.ptr701, align 2
  %conv702 = zext i16 %583 to i32
  store i32 %conv702, i32* %ttt, align 4
  %584 = load i32, i32* %range, align 4
  %cmp703 = icmp ult i32 %584, 16777216
  br i1 %cmp703, label %if.then.705, label %if.end.711

if.then.705:                                      ; preds = %do.body.699
  %585 = load i32, i32* %range, align 4
  %shl706 = shl i32 %585, 8
  store i32 %shl706, i32* %range, align 4
  %586 = load i32, i32* %code, align 4
  %shl707 = shl i32 %586, 8
  %587 = load i8*, i8** %buf, align 8
  %incdec.ptr708 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %incdec.ptr708, i8** %buf, align 8
  %588 = load i8, i8* %587, align 1
  %conv709 = zext i8 %588 to i32
  %or710 = or i32 %shl707, %conv709
  store i32 %or710, i32* %code, align 4
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.705, %do.body.699
  %589 = load i32, i32* %range, align 4
  %shr712 = lshr i32 %589, 11
  %590 = load i32, i32* %ttt, align 4
  %mul713 = mul i32 %shr712, %590
  store i32 %mul713, i32* %bound, align 4
  %591 = load i32, i32* %code, align 4
  %592 = load i32, i32* %bound, align 4
  %cmp714 = icmp ult i32 %591, %592
  br i1 %cmp714, label %if.then.716, label %if.else.724

if.then.716:                                      ; preds = %if.end.711
  %593 = load i32, i32* %bound, align 4
  store i32 %593, i32* %range, align 4
  %594 = load i32, i32* %ttt, align 4
  %595 = load i32, i32* %ttt, align 4
  %sub717 = sub i32 2048, %595
  %shr718 = lshr i32 %sub717, 5
  %add719 = add i32 %594, %shr718
  %conv720 = trunc i32 %add719 to i16
  %596 = load i16*, i16** %prob, align 8
  %597 = load i32, i32* %i, align 4
  %idx.ext721 = zext i32 %597 to i64
  %add.ptr722 = getelementptr inbounds i16, i16* %596, i64 %idx.ext721
  store i16 %conv720, i16* %add.ptr722, align 2
  %598 = load i32, i32* %i, align 4
  %599 = load i32, i32* %i, align 4
  %add723 = add i32 %598, %599
  store i32 %add723, i32* %i, align 4
  br label %if.end.735

if.else.724:                                      ; preds = %if.end.711
  %600 = load i32, i32* %bound, align 4
  %601 = load i32, i32* %range, align 4
  %sub725 = sub i32 %601, %600
  store i32 %sub725, i32* %range, align 4
  %602 = load i32, i32* %bound, align 4
  %603 = load i32, i32* %code, align 4
  %sub726 = sub i32 %603, %602
  store i32 %sub726, i32* %code, align 4
  %604 = load i32, i32* %ttt, align 4
  %605 = load i32, i32* %ttt, align 4
  %shr727 = lshr i32 %605, 5
  %sub728 = sub i32 %604, %shr727
  %conv729 = trunc i32 %sub728 to i16
  %606 = load i16*, i16** %prob, align 8
  %607 = load i32, i32* %i, align 4
  %idx.ext730 = zext i32 %607 to i64
  %add.ptr731 = getelementptr inbounds i16, i16* %606, i64 %idx.ext730
  store i16 %conv729, i16* %add.ptr731, align 2
  %608 = load i32, i32* %i, align 4
  %609 = load i32, i32* %i, align 4
  %add732 = add i32 %608, %609
  %add733 = add i32 %add732, 1
  store i32 %add733, i32* %i, align 4
  %610 = load i32, i32* %mask, align 4
  %611 = load i32, i32* %distance460, align 4
  %or734 = or i32 %611, %610
  store i32 %or734, i32* %distance460, align 4
  br label %if.end.735

if.end.735:                                       ; preds = %if.else.724, %if.then.716
  %612 = load i32, i32* %mask, align 4
  %shl736 = shl i32 %612, 1
  store i32 %shl736, i32* %mask, align 4
  br label %do.cond.737

do.cond.737:                                      ; preds = %if.end.735
  %613 = load i32, i32* %numDirectBits, align 4
  %dec = add nsw i32 %613, -1
  store i32 %dec, i32* %numDirectBits, align 4
  %cmp738 = icmp ne i32 %dec, 0
  br i1 %cmp738, label %do.body.699, label %do.end.740

do.end.740:                                       ; preds = %do.cond.737
  br label %if.end.920

if.else.741:                                      ; preds = %if.then.684
  %614 = load i32, i32* %numDirectBits, align 4
  %sub742 = sub nsw i32 %614, 4
  store i32 %sub742, i32* %numDirectBits, align 4
  br label %do.body.743

do.body.743:                                      ; preds = %do.cond.762, %if.else.741
  %615 = load i32, i32* %range, align 4
  %cmp744 = icmp ult i32 %615, 16777216
  br i1 %cmp744, label %if.then.746, label %if.end.752

if.then.746:                                      ; preds = %do.body.743
  %616 = load i32, i32* %range, align 4
  %shl747 = shl i32 %616, 8
  store i32 %shl747, i32* %range, align 4
  %617 = load i32, i32* %code, align 4
  %shl748 = shl i32 %617, 8
  %618 = load i8*, i8** %buf, align 8
  %incdec.ptr749 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %incdec.ptr749, i8** %buf, align 8
  %619 = load i8, i8* %618, align 1
  %conv750 = zext i8 %619 to i32
  %or751 = or i32 %shl748, %conv750
  store i32 %or751, i32* %code, align 4
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.746, %do.body.743
  %620 = load i32, i32* %range, align 4
  %shr753 = lshr i32 %620, 1
  store i32 %shr753, i32* %range, align 4
  %621 = load i32, i32* %range, align 4
  %622 = load i32, i32* %code, align 4
  %sub754 = sub i32 %622, %621
  store i32 %sub754, i32* %code, align 4
  %623 = load i32, i32* %code, align 4
  %shr755 = lshr i32 %623, 31
  %sub756 = sub i32 0, %shr755
  store i32 %sub756, i32* %t, align 4
  %624 = load i32, i32* %distance460, align 4
  %shl757 = shl i32 %624, 1
  %625 = load i32, i32* %t, align 4
  %add758 = add i32 %625, 1
  %add759 = add i32 %shl757, %add758
  store i32 %add759, i32* %distance460, align 4
  %626 = load i32, i32* %range, align 4
  %627 = load i32, i32* %t, align 4
  %and760 = and i32 %626, %627
  %628 = load i32, i32* %code, align 4
  %add761 = add i32 %628, %and760
  store i32 %add761, i32* %code, align 4
  br label %do.cond.762

do.cond.762:                                      ; preds = %if.end.752
  %629 = load i32, i32* %numDirectBits, align 4
  %dec763 = add nsw i32 %629, -1
  store i32 %dec763, i32* %numDirectBits, align 4
  %cmp764 = icmp ne i32 %dec763, 0
  br i1 %cmp764, label %do.body.743, label %do.end.766

do.end.766:                                       ; preds = %do.cond.762
  %630 = load i16*, i16** %probs, align 8
  %add.ptr767 = getelementptr inbounds i16, i16* %630, i64 802
  store i16* %add.ptr767, i16** %prob, align 8
  %631 = load i32, i32* %distance460, align 4
  %shl768 = shl i32 %631, 4
  store i32 %shl768, i32* %distance460, align 4
  store i32 1, i32* %i769, align 4
  %632 = load i16*, i16** %prob, align 8
  %633 = load i32, i32* %i769, align 4
  %idx.ext770 = zext i32 %633 to i64
  %add.ptr771 = getelementptr inbounds i16, i16* %632, i64 %idx.ext770
  %634 = load i16, i16* %add.ptr771, align 2
  %conv772 = zext i16 %634 to i32
  store i32 %conv772, i32* %ttt, align 4
  %635 = load i32, i32* %range, align 4
  %cmp773 = icmp ult i32 %635, 16777216
  br i1 %cmp773, label %if.then.775, label %if.end.781

if.then.775:                                      ; preds = %do.end.766
  %636 = load i32, i32* %range, align 4
  %shl776 = shl i32 %636, 8
  store i32 %shl776, i32* %range, align 4
  %637 = load i32, i32* %code, align 4
  %shl777 = shl i32 %637, 8
  %638 = load i8*, i8** %buf, align 8
  %incdec.ptr778 = getelementptr inbounds i8, i8* %638, i32 1
  store i8* %incdec.ptr778, i8** %buf, align 8
  %639 = load i8, i8* %638, align 1
  %conv779 = zext i8 %639 to i32
  %or780 = or i32 %shl777, %conv779
  store i32 %or780, i32* %code, align 4
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.775, %do.end.766
  %640 = load i32, i32* %range, align 4
  %shr782 = lshr i32 %640, 11
  %641 = load i32, i32* %ttt, align 4
  %mul783 = mul i32 %shr782, %641
  store i32 %mul783, i32* %bound, align 4
  %642 = load i32, i32* %code, align 4
  %643 = load i32, i32* %bound, align 4
  %cmp784 = icmp ult i32 %642, %643
  br i1 %cmp784, label %if.then.786, label %if.else.794

if.then.786:                                      ; preds = %if.end.781
  %644 = load i32, i32* %bound, align 4
  store i32 %644, i32* %range, align 4
  %645 = load i32, i32* %ttt, align 4
  %646 = load i32, i32* %ttt, align 4
  %sub787 = sub i32 2048, %646
  %shr788 = lshr i32 %sub787, 5
  %add789 = add i32 %645, %shr788
  %conv790 = trunc i32 %add789 to i16
  %647 = load i16*, i16** %prob, align 8
  %648 = load i32, i32* %i769, align 4
  %idx.ext791 = zext i32 %648 to i64
  %add.ptr792 = getelementptr inbounds i16, i16* %647, i64 %idx.ext791
  store i16 %conv790, i16* %add.ptr792, align 2
  %649 = load i32, i32* %i769, align 4
  %650 = load i32, i32* %i769, align 4
  %add793 = add i32 %649, %650
  store i32 %add793, i32* %i769, align 4
  br label %if.end.805

if.else.794:                                      ; preds = %if.end.781
  %651 = load i32, i32* %bound, align 4
  %652 = load i32, i32* %range, align 4
  %sub795 = sub i32 %652, %651
  store i32 %sub795, i32* %range, align 4
  %653 = load i32, i32* %bound, align 4
  %654 = load i32, i32* %code, align 4
  %sub796 = sub i32 %654, %653
  store i32 %sub796, i32* %code, align 4
  %655 = load i32, i32* %ttt, align 4
  %656 = load i32, i32* %ttt, align 4
  %shr797 = lshr i32 %656, 5
  %sub798 = sub i32 %655, %shr797
  %conv799 = trunc i32 %sub798 to i16
  %657 = load i16*, i16** %prob, align 8
  %658 = load i32, i32* %i769, align 4
  %idx.ext800 = zext i32 %658 to i64
  %add.ptr801 = getelementptr inbounds i16, i16* %657, i64 %idx.ext800
  store i16 %conv799, i16* %add.ptr801, align 2
  %659 = load i32, i32* %i769, align 4
  %660 = load i32, i32* %i769, align 4
  %add802 = add i32 %659, %660
  %add803 = add i32 %add802, 1
  store i32 %add803, i32* %i769, align 4
  %661 = load i32, i32* %distance460, align 4
  %or804 = or i32 %661, 1
  store i32 %or804, i32* %distance460, align 4
  br label %if.end.805

if.end.805:                                       ; preds = %if.else.794, %if.then.786
  %662 = load i16*, i16** %prob, align 8
  %663 = load i32, i32* %i769, align 4
  %idx.ext806 = zext i32 %663 to i64
  %add.ptr807 = getelementptr inbounds i16, i16* %662, i64 %idx.ext806
  %664 = load i16, i16* %add.ptr807, align 2
  %conv808 = zext i16 %664 to i32
  store i32 %conv808, i32* %ttt, align 4
  %665 = load i32, i32* %range, align 4
  %cmp809 = icmp ult i32 %665, 16777216
  br i1 %cmp809, label %if.then.811, label %if.end.817

if.then.811:                                      ; preds = %if.end.805
  %666 = load i32, i32* %range, align 4
  %shl812 = shl i32 %666, 8
  store i32 %shl812, i32* %range, align 4
  %667 = load i32, i32* %code, align 4
  %shl813 = shl i32 %667, 8
  %668 = load i8*, i8** %buf, align 8
  %incdec.ptr814 = getelementptr inbounds i8, i8* %668, i32 1
  store i8* %incdec.ptr814, i8** %buf, align 8
  %669 = load i8, i8* %668, align 1
  %conv815 = zext i8 %669 to i32
  %or816 = or i32 %shl813, %conv815
  store i32 %or816, i32* %code, align 4
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.811, %if.end.805
  %670 = load i32, i32* %range, align 4
  %shr818 = lshr i32 %670, 11
  %671 = load i32, i32* %ttt, align 4
  %mul819 = mul i32 %shr818, %671
  store i32 %mul819, i32* %bound, align 4
  %672 = load i32, i32* %code, align 4
  %673 = load i32, i32* %bound, align 4
  %cmp820 = icmp ult i32 %672, %673
  br i1 %cmp820, label %if.then.822, label %if.else.830

if.then.822:                                      ; preds = %if.end.817
  %674 = load i32, i32* %bound, align 4
  store i32 %674, i32* %range, align 4
  %675 = load i32, i32* %ttt, align 4
  %676 = load i32, i32* %ttt, align 4
  %sub823 = sub i32 2048, %676
  %shr824 = lshr i32 %sub823, 5
  %add825 = add i32 %675, %shr824
  %conv826 = trunc i32 %add825 to i16
  %677 = load i16*, i16** %prob, align 8
  %678 = load i32, i32* %i769, align 4
  %idx.ext827 = zext i32 %678 to i64
  %add.ptr828 = getelementptr inbounds i16, i16* %677, i64 %idx.ext827
  store i16 %conv826, i16* %add.ptr828, align 2
  %679 = load i32, i32* %i769, align 4
  %680 = load i32, i32* %i769, align 4
  %add829 = add i32 %679, %680
  store i32 %add829, i32* %i769, align 4
  br label %if.end.841

if.else.830:                                      ; preds = %if.end.817
  %681 = load i32, i32* %bound, align 4
  %682 = load i32, i32* %range, align 4
  %sub831 = sub i32 %682, %681
  store i32 %sub831, i32* %range, align 4
  %683 = load i32, i32* %bound, align 4
  %684 = load i32, i32* %code, align 4
  %sub832 = sub i32 %684, %683
  store i32 %sub832, i32* %code, align 4
  %685 = load i32, i32* %ttt, align 4
  %686 = load i32, i32* %ttt, align 4
  %shr833 = lshr i32 %686, 5
  %sub834 = sub i32 %685, %shr833
  %conv835 = trunc i32 %sub834 to i16
  %687 = load i16*, i16** %prob, align 8
  %688 = load i32, i32* %i769, align 4
  %idx.ext836 = zext i32 %688 to i64
  %add.ptr837 = getelementptr inbounds i16, i16* %687, i64 %idx.ext836
  store i16 %conv835, i16* %add.ptr837, align 2
  %689 = load i32, i32* %i769, align 4
  %690 = load i32, i32* %i769, align 4
  %add838 = add i32 %689, %690
  %add839 = add i32 %add838, 1
  store i32 %add839, i32* %i769, align 4
  %691 = load i32, i32* %distance460, align 4
  %or840 = or i32 %691, 2
  store i32 %or840, i32* %distance460, align 4
  br label %if.end.841

if.end.841:                                       ; preds = %if.else.830, %if.then.822
  %692 = load i16*, i16** %prob, align 8
  %693 = load i32, i32* %i769, align 4
  %idx.ext842 = zext i32 %693 to i64
  %add.ptr843 = getelementptr inbounds i16, i16* %692, i64 %idx.ext842
  %694 = load i16, i16* %add.ptr843, align 2
  %conv844 = zext i16 %694 to i32
  store i32 %conv844, i32* %ttt, align 4
  %695 = load i32, i32* %range, align 4
  %cmp845 = icmp ult i32 %695, 16777216
  br i1 %cmp845, label %if.then.847, label %if.end.853

if.then.847:                                      ; preds = %if.end.841
  %696 = load i32, i32* %range, align 4
  %shl848 = shl i32 %696, 8
  store i32 %shl848, i32* %range, align 4
  %697 = load i32, i32* %code, align 4
  %shl849 = shl i32 %697, 8
  %698 = load i8*, i8** %buf, align 8
  %incdec.ptr850 = getelementptr inbounds i8, i8* %698, i32 1
  store i8* %incdec.ptr850, i8** %buf, align 8
  %699 = load i8, i8* %698, align 1
  %conv851 = zext i8 %699 to i32
  %or852 = or i32 %shl849, %conv851
  store i32 %or852, i32* %code, align 4
  br label %if.end.853

if.end.853:                                       ; preds = %if.then.847, %if.end.841
  %700 = load i32, i32* %range, align 4
  %shr854 = lshr i32 %700, 11
  %701 = load i32, i32* %ttt, align 4
  %mul855 = mul i32 %shr854, %701
  store i32 %mul855, i32* %bound, align 4
  %702 = load i32, i32* %code, align 4
  %703 = load i32, i32* %bound, align 4
  %cmp856 = icmp ult i32 %702, %703
  br i1 %cmp856, label %if.then.858, label %if.else.866

if.then.858:                                      ; preds = %if.end.853
  %704 = load i32, i32* %bound, align 4
  store i32 %704, i32* %range, align 4
  %705 = load i32, i32* %ttt, align 4
  %706 = load i32, i32* %ttt, align 4
  %sub859 = sub i32 2048, %706
  %shr860 = lshr i32 %sub859, 5
  %add861 = add i32 %705, %shr860
  %conv862 = trunc i32 %add861 to i16
  %707 = load i16*, i16** %prob, align 8
  %708 = load i32, i32* %i769, align 4
  %idx.ext863 = zext i32 %708 to i64
  %add.ptr864 = getelementptr inbounds i16, i16* %707, i64 %idx.ext863
  store i16 %conv862, i16* %add.ptr864, align 2
  %709 = load i32, i32* %i769, align 4
  %710 = load i32, i32* %i769, align 4
  %add865 = add i32 %709, %710
  store i32 %add865, i32* %i769, align 4
  br label %if.end.877

if.else.866:                                      ; preds = %if.end.853
  %711 = load i32, i32* %bound, align 4
  %712 = load i32, i32* %range, align 4
  %sub867 = sub i32 %712, %711
  store i32 %sub867, i32* %range, align 4
  %713 = load i32, i32* %bound, align 4
  %714 = load i32, i32* %code, align 4
  %sub868 = sub i32 %714, %713
  store i32 %sub868, i32* %code, align 4
  %715 = load i32, i32* %ttt, align 4
  %716 = load i32, i32* %ttt, align 4
  %shr869 = lshr i32 %716, 5
  %sub870 = sub i32 %715, %shr869
  %conv871 = trunc i32 %sub870 to i16
  %717 = load i16*, i16** %prob, align 8
  %718 = load i32, i32* %i769, align 4
  %idx.ext872 = zext i32 %718 to i64
  %add.ptr873 = getelementptr inbounds i16, i16* %717, i64 %idx.ext872
  store i16 %conv871, i16* %add.ptr873, align 2
  %719 = load i32, i32* %i769, align 4
  %720 = load i32, i32* %i769, align 4
  %add874 = add i32 %719, %720
  %add875 = add i32 %add874, 1
  store i32 %add875, i32* %i769, align 4
  %721 = load i32, i32* %distance460, align 4
  %or876 = or i32 %721, 4
  store i32 %or876, i32* %distance460, align 4
  br label %if.end.877

if.end.877:                                       ; preds = %if.else.866, %if.then.858
  %722 = load i16*, i16** %prob, align 8
  %723 = load i32, i32* %i769, align 4
  %idx.ext878 = zext i32 %723 to i64
  %add.ptr879 = getelementptr inbounds i16, i16* %722, i64 %idx.ext878
  %724 = load i16, i16* %add.ptr879, align 2
  %conv880 = zext i16 %724 to i32
  store i32 %conv880, i32* %ttt, align 4
  %725 = load i32, i32* %range, align 4
  %cmp881 = icmp ult i32 %725, 16777216
  br i1 %cmp881, label %if.then.883, label %if.end.889

if.then.883:                                      ; preds = %if.end.877
  %726 = load i32, i32* %range, align 4
  %shl884 = shl i32 %726, 8
  store i32 %shl884, i32* %range, align 4
  %727 = load i32, i32* %code, align 4
  %shl885 = shl i32 %727, 8
  %728 = load i8*, i8** %buf, align 8
  %incdec.ptr886 = getelementptr inbounds i8, i8* %728, i32 1
  store i8* %incdec.ptr886, i8** %buf, align 8
  %729 = load i8, i8* %728, align 1
  %conv887 = zext i8 %729 to i32
  %or888 = or i32 %shl885, %conv887
  store i32 %or888, i32* %code, align 4
  br label %if.end.889

if.end.889:                                       ; preds = %if.then.883, %if.end.877
  %730 = load i32, i32* %range, align 4
  %shr890 = lshr i32 %730, 11
  %731 = load i32, i32* %ttt, align 4
  %mul891 = mul i32 %shr890, %731
  store i32 %mul891, i32* %bound, align 4
  %732 = load i32, i32* %code, align 4
  %733 = load i32, i32* %bound, align 4
  %cmp892 = icmp ult i32 %732, %733
  br i1 %cmp892, label %if.then.894, label %if.else.902

if.then.894:                                      ; preds = %if.end.889
  %734 = load i32, i32* %bound, align 4
  store i32 %734, i32* %range, align 4
  %735 = load i32, i32* %ttt, align 4
  %736 = load i32, i32* %ttt, align 4
  %sub895 = sub i32 2048, %736
  %shr896 = lshr i32 %sub895, 5
  %add897 = add i32 %735, %shr896
  %conv898 = trunc i32 %add897 to i16
  %737 = load i16*, i16** %prob, align 8
  %738 = load i32, i32* %i769, align 4
  %idx.ext899 = zext i32 %738 to i64
  %add.ptr900 = getelementptr inbounds i16, i16* %737, i64 %idx.ext899
  store i16 %conv898, i16* %add.ptr900, align 2
  %739 = load i32, i32* %i769, align 4
  %740 = load i32, i32* %i769, align 4
  %add901 = add i32 %739, %740
  store i32 %add901, i32* %i769, align 4
  br label %if.end.913

if.else.902:                                      ; preds = %if.end.889
  %741 = load i32, i32* %bound, align 4
  %742 = load i32, i32* %range, align 4
  %sub903 = sub i32 %742, %741
  store i32 %sub903, i32* %range, align 4
  %743 = load i32, i32* %bound, align 4
  %744 = load i32, i32* %code, align 4
  %sub904 = sub i32 %744, %743
  store i32 %sub904, i32* %code, align 4
  %745 = load i32, i32* %ttt, align 4
  %746 = load i32, i32* %ttt, align 4
  %shr905 = lshr i32 %746, 5
  %sub906 = sub i32 %745, %shr905
  %conv907 = trunc i32 %sub906 to i16
  %747 = load i16*, i16** %prob, align 8
  %748 = load i32, i32* %i769, align 4
  %idx.ext908 = zext i32 %748 to i64
  %add.ptr909 = getelementptr inbounds i16, i16* %747, i64 %idx.ext908
  store i16 %conv907, i16* %add.ptr909, align 2
  %749 = load i32, i32* %i769, align 4
  %750 = load i32, i32* %i769, align 4
  %add910 = add i32 %749, %750
  %add911 = add i32 %add910, 1
  store i32 %add911, i32* %i769, align 4
  %751 = load i32, i32* %distance460, align 4
  %or912 = or i32 %751, 8
  store i32 %or912, i32* %distance460, align 4
  br label %if.end.913

if.end.913:                                       ; preds = %if.else.902, %if.then.894
  %752 = load i32, i32* %distance460, align 4
  %cmp914 = icmp eq i32 %752, -1
  br i1 %cmp914, label %if.then.916, label %if.end.919

if.then.916:                                      ; preds = %if.end.913
  %753 = load i32, i32* %len, align 4
  %add917 = add i32 %753, 274
  store i32 %add917, i32* %len, align 4
  %754 = load i32, i32* %state, align 4
  %sub918 = sub i32 %754, 12
  store i32 %sub918, i32* %state, align 4
  br label %do.end.1006

if.end.919:                                       ; preds = %if.end.913
  br label %if.end.920

if.end.920:                                       ; preds = %if.end.919, %do.end.740
  br label %if.end.921

if.end.921:                                       ; preds = %if.end.920, %if.end.680
  %755 = load i32, i32* %rep2, align 4
  store i32 %755, i32* %rep3, align 4
  %756 = load i32, i32* %rep1, align 4
  store i32 %756, i32* %rep2, align 4
  %757 = load i32, i32* %rep0, align 4
  store i32 %757, i32* %rep1, align 4
  %758 = load i32, i32* %distance460, align 4
  %add922 = add i32 %758, 1
  store i32 %add922, i32* %rep0, align 4
  %759 = load i32, i32* %checkDicSize, align 4
  %cmp923 = icmp eq i32 %759, 0
  br i1 %cmp923, label %if.then.925, label %if.else.930

if.then.925:                                      ; preds = %if.end.921
  %760 = load i32, i32* %distance460, align 4
  %761 = load i32, i32* %processedPos, align 4
  %cmp926 = icmp uge i32 %760, %761
  br i1 %cmp926, label %if.then.928, label %if.end.929

if.then.928:                                      ; preds = %if.then.925
  store i32 1, i32* %retval
  br label %return

if.end.929:                                       ; preds = %if.then.925
  br label %if.end.935

if.else.930:                                      ; preds = %if.end.921
  %762 = load i32, i32* %distance460, align 4
  %763 = load i32, i32* %checkDicSize, align 4
  %cmp931 = icmp uge i32 %762, %763
  br i1 %cmp931, label %if.then.933, label %if.end.934

if.then.933:                                      ; preds = %if.else.930
  store i32 1, i32* %retval
  br label %return

if.end.934:                                       ; preds = %if.else.930
  br label %if.end.935

if.end.935:                                       ; preds = %if.end.934, %if.end.929
  %764 = load i32, i32* %state, align 4
  %cmp936 = icmp ult i32 %764, 19
  %cond938 = select i1 %cmp936, i32 7, i32 10
  store i32 %cond938, i32* %state, align 4
  br label %if.end.939

if.end.939:                                       ; preds = %if.end.935, %do.end.454
  %765 = load i32, i32* %len, align 4
  %add940 = add i32 %765, 2
  store i32 %add940, i32* %len, align 4
  %766 = load i64, i64* %limit.addr, align 8
  %767 = load i64, i64* %dicPos, align 8
  %cmp941 = icmp eq i64 %766, %767
  br i1 %cmp941, label %if.then.943, label %if.end.944

if.then.943:                                      ; preds = %if.end.939
  store i32 1, i32* %retval
  br label %return

if.end.944:                                       ; preds = %if.end.939
  %768 = load i64, i64* %limit.addr, align 8
  %769 = load i64, i64* %dicPos, align 8
  %sub945 = sub i64 %768, %769
  store i64 %sub945, i64* %rem, align 8
  %770 = load i64, i64* %rem, align 8
  %771 = load i32, i32* %len, align 4
  %conv946 = zext i32 %771 to i64
  %cmp947 = icmp ult i64 %770, %conv946
  br i1 %cmp947, label %cond.true.949, label %cond.false.951

cond.true.949:                                    ; preds = %if.end.944
  %772 = load i64, i64* %rem, align 8
  %conv950 = trunc i64 %772 to i32
  br label %cond.end.952

cond.false.951:                                   ; preds = %if.end.944
  %773 = load i32, i32* %len, align 4
  br label %cond.end.952

cond.end.952:                                     ; preds = %cond.false.951, %cond.true.949
  %cond953 = phi i32 [ %conv950, %cond.true.949 ], [ %773, %cond.false.951 ]
  store i32 %cond953, i32* %curLen, align 4
  %774 = load i64, i64* %dicPos, align 8
  %775 = load i32, i32* %rep0, align 4
  %conv954 = zext i32 %775 to i64
  %sub955 = sub i64 %774, %conv954
  %776 = load i64, i64* %dicPos, align 8
  %777 = load i32, i32* %rep0, align 4
  %conv956 = zext i32 %777 to i64
  %cmp957 = icmp ult i64 %776, %conv956
  br i1 %cmp957, label %cond.true.959, label %cond.false.960

cond.true.959:                                    ; preds = %cond.end.952
  %778 = load i64, i64* %dicBufSize, align 8
  br label %cond.end.961

cond.false.960:                                   ; preds = %cond.end.952
  br label %cond.end.961

cond.end.961:                                     ; preds = %cond.false.960, %cond.true.959
  %cond962 = phi i64 [ %778, %cond.true.959 ], [ 0, %cond.false.960 ]
  %add963 = add i64 %sub955, %cond962
  store i64 %add963, i64* %pos, align 8
  %779 = load i32, i32* %curLen, align 4
  %780 = load i32, i32* %processedPos, align 4
  %add964 = add i32 %780, %779
  store i32 %add964, i32* %processedPos, align 4
  %781 = load i32, i32* %curLen, align 4
  %782 = load i32, i32* %len, align 4
  %sub965 = sub i32 %782, %781
  store i32 %sub965, i32* %len, align 4
  %783 = load i64, i64* %pos, align 8
  %784 = load i32, i32* %curLen, align 4
  %conv966 = zext i32 %784 to i64
  %add967 = add i64 %783, %conv966
  %785 = load i64, i64* %dicBufSize, align 8
  %cmp968 = icmp ule i64 %add967, %785
  br i1 %cmp968, label %if.then.970, label %if.else.984

if.then.970:                                      ; preds = %cond.end.961
  %786 = load i8*, i8** %dic, align 8
  %787 = load i64, i64* %dicPos, align 8
  %add.ptr971 = getelementptr inbounds i8, i8* %786, i64 %787
  store i8* %add.ptr971, i8** %dest, align 8
  %788 = load i64, i64* %pos, align 8
  %789 = load i64, i64* %dicPos, align 8
  %sub972 = sub nsw i64 %788, %789
  store i64 %sub972, i64* %src, align 8
  %790 = load i8*, i8** %dest, align 8
  %791 = load i32, i32* %curLen, align 4
  %idx.ext973 = zext i32 %791 to i64
  %add.ptr974 = getelementptr inbounds i8, i8* %790, i64 %idx.ext973
  store i8* %add.ptr974, i8** %lim, align 8
  %792 = load i32, i32* %curLen, align 4
  %conv975 = zext i32 %792 to i64
  %793 = load i64, i64* %dicPos, align 8
  %add976 = add i64 %793, %conv975
  store i64 %add976, i64* %dicPos, align 8
  br label %do.body.977

do.body.977:                                      ; preds = %do.cond.979, %if.then.970
  %794 = load i8*, i8** %dest, align 8
  %795 = load i64, i64* %src, align 8
  %add.ptr978 = getelementptr inbounds i8, i8* %794, i64 %795
  %796 = load i8, i8* %add.ptr978, align 1
  %797 = load i8*, i8** %dest, align 8
  store i8 %796, i8* %797, align 1
  br label %do.cond.979

do.cond.979:                                      ; preds = %do.body.977
  %798 = load i8*, i8** %dest, align 8
  %incdec.ptr980 = getelementptr inbounds i8, i8* %798, i32 1
  store i8* %incdec.ptr980, i8** %dest, align 8
  %799 = load i8*, i8** %lim, align 8
  %cmp981 = icmp ne i8* %incdec.ptr980, %799
  br i1 %cmp981, label %do.body.977, label %do.end.983

do.end.983:                                       ; preds = %do.cond.979
  br label %if.end.999

if.else.984:                                      ; preds = %cond.end.961
  br label %do.body.985

do.body.985:                                      ; preds = %do.cond.994, %if.else.984
  %800 = load i64, i64* %pos, align 8
  %801 = load i8*, i8** %dic, align 8
  %arrayidx986 = getelementptr inbounds i8, i8* %801, i64 %800
  %802 = load i8, i8* %arrayidx986, align 1
  %803 = load i64, i64* %dicPos, align 8
  %inc987 = add i64 %803, 1
  store i64 %inc987, i64* %dicPos, align 8
  %804 = load i8*, i8** %dic, align 8
  %arrayidx988 = getelementptr inbounds i8, i8* %804, i64 %803
  store i8 %802, i8* %arrayidx988, align 1
  %805 = load i64, i64* %pos, align 8
  %inc989 = add i64 %805, 1
  store i64 %inc989, i64* %pos, align 8
  %806 = load i64, i64* %dicBufSize, align 8
  %cmp990 = icmp eq i64 %inc989, %806
  br i1 %cmp990, label %if.then.992, label %if.end.993

if.then.992:                                      ; preds = %do.body.985
  store i64 0, i64* %pos, align 8
  br label %if.end.993

if.end.993:                                       ; preds = %if.then.992, %do.body.985
  br label %do.cond.994

do.cond.994:                                      ; preds = %if.end.993
  %807 = load i32, i32* %curLen, align 4
  %dec995 = add i32 %807, -1
  store i32 %dec995, i32* %curLen, align 4
  %cmp996 = icmp ne i32 %dec995, 0
  br i1 %cmp996, label %do.body.985, label %do.end.998

do.end.998:                                       ; preds = %do.cond.994
  br label %if.end.999

if.end.999:                                       ; preds = %do.end.998, %do.end.983
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.end.999
  br label %do.cond.1001

do.cond.1001:                                     ; preds = %if.end.1000, %cond.end.265, %if.end.165
  %808 = load i64, i64* %dicPos, align 8
  %809 = load i64, i64* %limit.addr, align 8
  %cmp1002 = icmp ult i64 %808, %809
  br i1 %cmp1002, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.1001
  %810 = load i8*, i8** %buf, align 8
  %811 = load i8*, i8** %bufLimit.addr, align 8
  %cmp1004 = icmp ult i8* %810, %811
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.1001
  %812 = phi i1 [ false, %do.cond.1001 ], [ %cmp1004, %land.rhs ]
  br i1 %812, label %do.body, label %do.end.1006

do.end.1006:                                      ; preds = %land.end, %if.then.916
  %813 = load i32, i32* %range, align 4
  %cmp1007 = icmp ult i32 %813, 16777216
  br i1 %cmp1007, label %if.then.1009, label %if.end.1015

if.then.1009:                                     ; preds = %do.end.1006
  %814 = load i32, i32* %range, align 4
  %shl1010 = shl i32 %814, 8
  store i32 %shl1010, i32* %range, align 4
  %815 = load i32, i32* %code, align 4
  %shl1011 = shl i32 %815, 8
  %816 = load i8*, i8** %buf, align 8
  %incdec.ptr1012 = getelementptr inbounds i8, i8* %816, i32 1
  store i8* %incdec.ptr1012, i8** %buf, align 8
  %817 = load i8, i8* %816, align 1
  %conv1013 = zext i8 %817 to i32
  %or1014 = or i32 %shl1011, %conv1013
  store i32 %or1014, i32* %code, align 4
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.then.1009, %do.end.1006
  %818 = load i8*, i8** %buf, align 8
  %819 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %buf1016 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %819, i32 0, i32 3
  store i8* %818, i8** %buf1016, align 8
  %820 = load i32, i32* %range, align 4
  %821 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %range1017 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %821, i32 0, i32 4
  store i32 %820, i32* %range1017, align 4
  %822 = load i32, i32* %code, align 4
  %823 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %code1018 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %823, i32 0, i32 5
  store i32 %822, i32* %code1018, align 4
  %824 = load i32, i32* %len, align 4
  %825 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %remainLen = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %825, i32 0, i32 12
  store i32 %824, i32* %remainLen, align 4
  %826 = load i64, i64* %dicPos, align 8
  %827 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos1019 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %827, i32 0, i32 6
  store i64 %826, i64* %dicPos1019, align 8
  %828 = load i32, i32* %processedPos, align 4
  %829 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos1020 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %829, i32 0, i32 8
  store i32 %828, i32* %processedPos1020, align 4
  %830 = load i32, i32* %rep0, align 4
  %831 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps1021 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %831, i32 0, i32 11
  %arrayidx1022 = getelementptr inbounds [4 x i32], [4 x i32]* %reps1021, i32 0, i64 0
  store i32 %830, i32* %arrayidx1022, align 4
  %832 = load i32, i32* %rep1, align 4
  %833 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps1023 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %833, i32 0, i32 11
  %arrayidx1024 = getelementptr inbounds [4 x i32], [4 x i32]* %reps1023, i32 0, i64 1
  store i32 %832, i32* %arrayidx1024, align 4
  %834 = load i32, i32* %rep2, align 4
  %835 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps1025 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %835, i32 0, i32 11
  %arrayidx1026 = getelementptr inbounds [4 x i32], [4 x i32]* %reps1025, i32 0, i64 2
  store i32 %834, i32* %arrayidx1026, align 4
  %836 = load i32, i32* %rep3, align 4
  %837 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %reps1027 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %837, i32 0, i32 11
  %arrayidx1028 = getelementptr inbounds [4 x i32], [4 x i32]* %reps1027, i32 0, i64 3
  store i32 %836, i32* %arrayidx1028, align 4
  %838 = load i32, i32* %state, align 4
  %839 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %state1029 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %839, i32 0, i32 10
  store i32 %838, i32* %state1029, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1015, %if.then.943, %if.then.933, %if.then.928, %if.then.209
  %840 = load i32, i32* %retval
  ret i32 %840
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
