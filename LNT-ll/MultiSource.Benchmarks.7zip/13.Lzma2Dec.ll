; ModuleID = './MultiSource.Benchmarks.7zip/13.Lzma2Dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzma2Dec = type { %struct.CLzmaDec, i32, i32, i32, i8, i32, i32, i32 }
%struct.CLzmaDec = type { %struct._CLzmaProps, i16*, i8*, i8*, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

; Function Attrs: nounwind uwtable
define i32 @Lzma2Dec_AllocateProbs(%struct.CLzma2Dec* %p, i8 zeroext %prop, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  %prop.addr = alloca i8, align 1
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %props = alloca [5 x i8], align 1
  %__result__ = alloca i32, align 4
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
  store i8 %prop, i8* %prop.addr, align 1
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8, i8* %prop.addr, align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %call = call i32 @Lzma2Dec_GetOldProps(i8 zeroext %0, i8* %arraydecay)
  store i32 %call, i32* %__result__, align 4
  %1 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %__result__, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %3, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call2 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* %decoder, i8* %arraydecay1, i32 5, %struct.ISzAlloc* %4)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2Dec_GetOldProps(i8 zeroext %prop, i8* %props) #0 {
entry:
  %retval = alloca i32, align 4
  %prop.addr = alloca i8, align 1
  %props.addr = alloca i8*, align 8
  %dicSize = alloca i32, align 4
  store i8 %prop, i8* %prop.addr, align 1
  store i8* %props, i8** %props.addr, align 8
  %0 = load i8, i8* %prop.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %prop.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 40
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load i8, i8* %prop.addr, align 1
  %conv5 = zext i8 %2 to i32
  %and = and i32 %conv5, 1
  %or = or i32 2, %and
  %3 = load i8, i8* %prop.addr, align 1
  %conv6 = zext i8 %3 to i32
  %div = sdiv i32 %conv6, 2
  %add = add nsw i32 %div, 11
  %shl = shl i32 %or, %add
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %shl, %cond.false ]
  store i32 %cond, i32* %dicSize, align 4
  %4 = load i8*, i8** %props.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 4, i8* %arrayidx, align 1
  %5 = load i32, i32* %dicSize, align 4
  %conv7 = trunc i32 %5 to i8
  %6 = load i8*, i8** %props.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %conv7, i8* %arrayidx8, align 1
  %7 = load i32, i32* %dicSize, align 4
  %shr = lshr i32 %7, 8
  %conv9 = trunc i32 %shr to i8
  %8 = load i8*, i8** %props.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %conv9, i8* %arrayidx10, align 1
  %9 = load i32, i32* %dicSize, align 4
  %shr11 = lshr i32 %9, 16
  %conv12 = trunc i32 %shr11 to i8
  %10 = load i8*, i8** %props.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 3
  store i8 %conv12, i8* %arrayidx13, align 1
  %11 = load i32, i32* %dicSize, align 4
  %shr14 = lshr i32 %11, 24
  %conv15 = trunc i32 %shr14 to i8
  %12 = load i8*, i8** %props.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 4
  store i8 %conv15, i8* %arrayidx16, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec*, i8*, i32, %struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define i32 @Lzma2Dec_Allocate(%struct.CLzma2Dec* %p, i8 zeroext %prop, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  %prop.addr = alloca i8, align 1
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %props = alloca [5 x i8], align 1
  %__result__ = alloca i32, align 4
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
  store i8 %prop, i8* %prop.addr, align 1
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i8, i8* %prop.addr, align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %call = call i32 @Lzma2Dec_GetOldProps(i8 zeroext %0, i8* %arraydecay)
  store i32 %call, i32* %__result__, align 4
  %1 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %__result__, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %3, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %4 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call2 = call i32 @LzmaDec_Allocate(%struct.CLzmaDec* %decoder, i8* %arraydecay1, i32 5, %struct.ISzAlloc* %4)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @LzmaDec_Allocate(%struct.CLzmaDec*, i8*, i32, %struct.ISzAlloc*) #1

; Function Attrs: nounwind uwtable
define void @Lzma2Dec_Init(%struct.CLzma2Dec* %p) #0 {
entry:
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
  %0 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i32 0, i32 3
  store i32 0, i32* %state, align 4
  %1 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitDic = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %1, i32 0, i32 5
  store i32 1, i32* %needInitDic, align 4
  %2 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %2, i32 0, i32 6
  store i32 1, i32* %needInitState, align 4
  %3 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitProp = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %3, i32 0, i32 7
  store i32 1, i32* %needInitProp, align 4
  %4 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %4, i32 0, i32 0
  call void @LzmaDec_Init(%struct.CLzmaDec* %decoder)
  ret void
}

declare void @LzmaDec_Init(%struct.CLzmaDec*) #1

; Function Attrs: nounwind uwtable
define i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* %p, i64 %dicLimit, i8* %src, i64* %srcLen, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  %dicLimit.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %inSize = alloca i64, align 8
  %dicPos = alloca i64, align 8
  %destSizeCur = alloca i64, align 8
  %srcSizeCur = alloca i64, align 8
  %curFinishMode = alloca i32, align 4
  %initDic = alloca i32, align 4
  %outSizeProcessed = alloca i64, align 8
  %res = alloca i32, align 4
  %mode = alloca i32, align 4
  %initDic74 = alloca i32, align 4
  %initState = alloca i32, align 4
  %__result__ = alloca i32, align 4
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
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
  %3 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %3, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.147, %if.end.16, %entry
  %4 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %4, i32 0, i32 3
  %5 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %5, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %6, i32 0, i32 0
  %dicPos1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder, i32 0, i32 6
  %7 = load i64, i64* %dicPos1, align 8
  store i64 %7, i64* %dicPos, align 8
  %8 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state2 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %8, i32 0, i32 3
  %9 = load i32, i32* %state2, align 4
  %cmp3 = icmp eq i32 %9, 9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i64, i64* %dicPos, align 8
  %11 = load i64, i64* %dicLimit.addr, align 8
  %cmp4 = icmp eq i64 %10, %11
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %finishMode.addr, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %13 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %13, align 4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %14 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state8 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %14, i32 0, i32 3
  %15 = load i32, i32* %state8, align 4
  %cmp9 = icmp ne i32 %15, 6
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.18

land.lhs.true.10:                                 ; preds = %if.end.7
  %16 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state11 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %16, i32 0, i32 3
  %17 = load i32, i32* %state11, align 4
  %cmp12 = icmp ne i32 %17, 7
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true.10
  %18 = load i64*, i64** %srcLen.addr, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %inSize, align 8
  %cmp14 = icmp eq i64 %19, %20
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %21 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %21, align 4
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.13
  %22 = load i64*, i64** %srcLen.addr, align 8
  %23 = load i64, i64* %22, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %22, align 8
  %24 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %25 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %26 = load i8, i8* %25, align 1
  %call = call i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* %24, i8 zeroext %26)
  %27 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state17 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %27, i32 0, i32 3
  store i32 %call, i32* %state17, align 4
  br label %while.cond

if.end.18:                                        ; preds = %land.lhs.true.10, %if.end.7
  %28 = load i64, i64* %dicLimit.addr, align 8
  %29 = load i64, i64* %dicPos, align 8
  %sub = sub i64 %28, %29
  store i64 %sub, i64* %destSizeCur, align 8
  %30 = load i64, i64* %inSize, align 8
  %31 = load i64*, i64** %srcLen.addr, align 8
  %32 = load i64, i64* %31, align 8
  %sub19 = sub i64 %30, %32
  store i64 %sub19, i64* %srcSizeCur, align 8
  store i32 0, i32* %curFinishMode, align 4
  %33 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %33, i32 0, i32 2
  %34 = load i32, i32* %unpackSize, align 4
  %conv = zext i32 %34 to i64
  %35 = load i64, i64* %destSizeCur, align 8
  %cmp20 = icmp ule i64 %conv, %35
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.18
  %36 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize23 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %36, i32 0, i32 2
  %37 = load i32, i32* %unpackSize23, align 4
  %conv24 = zext i32 %37 to i64
  store i64 %conv24, i64* %destSizeCur, align 8
  store i32 1, i32* %curFinishMode, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.18
  %38 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %38, i32 0, i32 4
  %39 = load i8, i8* %control, align 1
  %conv26 = zext i8 %39 to i32
  %and = and i32 %conv26, 128
  %cmp27 = icmp eq i32 %and, 0
  br i1 %cmp27, label %if.then.29, label %if.else.66

if.then.29:                                       ; preds = %if.end.25
  %40 = load i64*, i64** %srcLen.addr, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %inSize, align 8
  %cmp30 = icmp eq i64 %41, %42
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  %43 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %43, align 4
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.29
  %44 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state34 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %44, i32 0, i32 3
  %45 = load i32, i32* %state34, align 4
  %cmp35 = icmp eq i32 %45, 6
  br i1 %cmp35, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %if.end.33
  %46 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control38 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %46, i32 0, i32 4
  %47 = load i8, i8* %control38, align 1
  %conv39 = zext i8 %47 to i32
  %cmp40 = icmp eq i32 %conv39, 1
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* %initDic, align 4
  %48 = load i32, i32* %initDic, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.then.37
  %49 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitState = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %49, i32 0, i32 6
  store i32 1, i32* %needInitState, align 4
  %50 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitProp = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %50, i32 0, i32 7
  store i32 1, i32* %needInitProp, align 4
  br label %if.end.46

if.else:                                          ; preds = %if.then.37
  %51 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitDic = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %51, i32 0, i32 5
  %52 = load i32, i32* %needInitDic, align 4
  %tobool43 = icmp ne i32 %52, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.42
  %53 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitDic47 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %53, i32 0, i32 5
  store i32 0, i32* %needInitDic47, align 4
  %54 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder48 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %54, i32 0, i32 0
  %55 = load i32, i32* %initDic, align 4
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* %decoder48, i32 %55, i32 0)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.46, %if.end.33
  %56 = load i64, i64* %srcSizeCur, align 8
  %57 = load i64, i64* %destSizeCur, align 8
  %cmp50 = icmp ugt i64 %56, %57
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %58 = load i64, i64* %destSizeCur, align 8
  store i64 %58, i64* %srcSizeCur, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.49
  %59 = load i64, i64* %srcSizeCur, align 8
  %cmp54 = icmp eq i64 %59, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.53
  %60 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder58 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %60, i32 0, i32 0
  %61 = load i8*, i8** %src.addr, align 8
  %62 = load i64, i64* %srcSizeCur, align 8
  call void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* %decoder58, i8* %61, i64 %62)
  %63 = load i64, i64* %srcSizeCur, align 8
  %64 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %add.ptr, i8** %src.addr, align 8
  %65 = load i64, i64* %srcSizeCur, align 8
  %66 = load i64*, i64** %srcLen.addr, align 8
  %67 = load i64, i64* %66, align 8
  %add = add i64 %67, %65
  store i64 %add, i64* %66, align 8
  %68 = load i64, i64* %srcSizeCur, align 8
  %conv59 = trunc i64 %68 to i32
  %69 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize60 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %69, i32 0, i32 2
  %70 = load i32, i32* %unpackSize60, align 4
  %sub61 = sub i32 %70, %conv59
  store i32 %sub61, i32* %unpackSize60, align 4
  %71 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize62 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %71, i32 0, i32 2
  %72 = load i32, i32* %unpackSize62, align 4
  %cmp63 = icmp eq i32 %72, 0
  %cond = select i1 %cmp63, i32 0, i32 7
  %73 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state65 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %73, i32 0, i32 3
  store i32 %cond, i32* %state65, align 4
  br label %if.end.147

if.else.66:                                       ; preds = %if.end.25
  %74 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state67 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %74, i32 0, i32 3
  %75 = load i32, i32* %state67, align 4
  %cmp68 = icmp eq i32 %75, 6
  br i1 %cmp68, label %if.then.70, label %if.end.93

if.then.70:                                       ; preds = %if.else.66
  %76 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control71 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %76, i32 0, i32 4
  %77 = load i8, i8* %control71, align 1
  %conv72 = zext i8 %77 to i32
  %shr = ashr i32 %conv72, 5
  %and73 = and i32 %shr, 3
  store i32 %and73, i32* %mode, align 4
  %78 = load i32, i32* %mode, align 4
  %cmp75 = icmp eq i32 %78, 3
  %conv76 = zext i1 %cmp75 to i32
  store i32 %conv76, i32* %initDic74, align 4
  %79 = load i32, i32* %mode, align 4
  %cmp77 = icmp sgt i32 %79, 0
  %conv78 = zext i1 %cmp77 to i32
  store i32 %conv78, i32* %initState, align 4
  %80 = load i32, i32* %initDic74, align 4
  %tobool79 = icmp ne i32 %80, 0
  br i1 %tobool79, label %lor.lhs.false, label %land.lhs.true.80

land.lhs.true.80:                                 ; preds = %if.then.70
  %81 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitDic81 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %81, i32 0, i32 5
  %82 = load i32, i32* %needInitDic81, align 4
  %tobool82 = icmp ne i32 %82, 0
  br i1 %tobool82, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.80, %if.then.70
  %83 = load i32, i32* %initState, align 4
  %tobool83 = icmp ne i32 %83, 0
  br i1 %tobool83, label %if.end.88, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %lor.lhs.false
  %84 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitState85 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %84, i32 0, i32 6
  %85 = load i32, i32* %needInitState85, align 4
  %tobool86 = icmp ne i32 %85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.84, %land.lhs.true.80
  store i32 1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %land.lhs.true.84, %lor.lhs.false
  %86 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder89 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %86, i32 0, i32 0
  %87 = load i32, i32* %initDic74, align 4
  %88 = load i32, i32* %initState, align 4
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* %decoder89, i32 %87, i32 %88)
  %89 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitDic90 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %89, i32 0, i32 5
  store i32 0, i32* %needInitDic90, align 4
  %90 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitState91 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %90, i32 0, i32 6
  store i32 0, i32* %needInitState91, align 4
  %91 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state92 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %91, i32 0, i32 3
  store i32 7, i32* %state92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.88, %if.else.66
  %92 = load i64, i64* %srcSizeCur, align 8
  %93 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %93, i32 0, i32 1
  %94 = load i32, i32* %packSize, align 4
  %conv94 = zext i32 %94 to i64
  %cmp95 = icmp ugt i64 %92, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.end.93
  %95 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize98 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %95, i32 0, i32 1
  %96 = load i32, i32* %packSize98, align 4
  %conv99 = zext i32 %96 to i64
  store i64 %conv99, i64* %srcSizeCur, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.end.93
  %97 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder101 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %97, i32 0, i32 0
  %98 = load i64, i64* %dicPos, align 8
  %99 = load i64, i64* %destSizeCur, align 8
  %add102 = add i64 %98, %99
  %100 = load i8*, i8** %src.addr, align 8
  %101 = load i32, i32* %curFinishMode, align 4
  %102 = load i32*, i32** %status.addr, align 8
  %call103 = call i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* %decoder101, i64 %add102, i8* %100, i64* %srcSizeCur, i32 %101, i32* %102)
  store i32 %call103, i32* %res, align 4
  %103 = load i64, i64* %srcSizeCur, align 8
  %104 = load i8*, i8** %src.addr, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %add.ptr104, i8** %src.addr, align 8
  %105 = load i64, i64* %srcSizeCur, align 8
  %106 = load i64*, i64** %srcLen.addr, align 8
  %107 = load i64, i64* %106, align 8
  %add105 = add i64 %107, %105
  store i64 %add105, i64* %106, align 8
  %108 = load i64, i64* %srcSizeCur, align 8
  %conv106 = trunc i64 %108 to i32
  %109 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize107 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %109, i32 0, i32 1
  %110 = load i32, i32* %packSize107, align 4
  %sub108 = sub i32 %110, %conv106
  store i32 %sub108, i32* %packSize107, align 4
  %111 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder109 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %111, i32 0, i32 0
  %dicPos110 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder109, i32 0, i32 6
  %112 = load i64, i64* %dicPos110, align 8
  %113 = load i64, i64* %dicPos, align 8
  %sub111 = sub i64 %112, %113
  store i64 %sub111, i64* %outSizeProcessed, align 8
  %114 = load i64, i64* %outSizeProcessed, align 8
  %conv112 = trunc i64 %114 to i32
  %115 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize113 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %115, i32 0, i32 2
  %116 = load i32, i32* %unpackSize113, align 4
  %sub114 = sub i32 %116, %conv112
  store i32 %sub114, i32* %unpackSize113, align 4
  %117 = load i32, i32* %res, align 4
  store i32 %117, i32* %__result__, align 4
  %118 = load i32, i32* %__result__, align 4
  %cmp115 = icmp ne i32 %118, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.100
  %119 = load i32, i32* %__result__, align 4
  store i32 %119, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.100
  %120 = load i32*, i32** %status.addr, align 8
  %121 = load i32, i32* %120, align 4
  %cmp119 = icmp eq i32 %121, 3
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.118
  %122 = load i32, i32* %res, align 4
  store i32 %122, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.118
  %123 = load i64, i64* %srcSizeCur, align 8
  %cmp123 = icmp eq i64 %123, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.142

land.lhs.true.125:                                ; preds = %if.end.122
  %124 = load i64, i64* %outSizeProcessed, align 8
  %cmp126 = icmp eq i64 %124, 0
  br i1 %cmp126, label %if.then.128, label %if.end.142

if.then.128:                                      ; preds = %land.lhs.true.125
  %125 = load i32*, i32** %status.addr, align 8
  %126 = load i32, i32* %125, align 4
  %cmp129 = icmp ne i32 %126, 4
  br i1 %cmp129, label %if.then.139, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.then.128
  %127 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize132 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %127, i32 0, i32 2
  %128 = load i32, i32* %unpackSize132, align 4
  %cmp133 = icmp ne i32 %128, 0
  br i1 %cmp133, label %if.then.139, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.131
  %129 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize136 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %129, i32 0, i32 1
  %130 = load i32, i32* %packSize136, align 4
  %cmp137 = icmp ne i32 %130, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %lor.lhs.false.135, %lor.lhs.false.131, %if.then.128
  store i32 1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %lor.lhs.false.135
  %131 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state141 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %131, i32 0, i32 3
  store i32 0, i32* %state141, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.140, %land.lhs.true.125, %if.end.122
  %132 = load i32*, i32** %status.addr, align 8
  %133 = load i32, i32* %132, align 4
  %cmp143 = icmp eq i32 %133, 4
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.142
  %134 = load i32*, i32** %status.addr, align 8
  store i32 2, i32* %134, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.end.142
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.57
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %135 = load i32*, i32** %status.addr, align 8
  store i32 1, i32* %135, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.139, %if.then.121, %if.then.117, %if.then.87, %if.then.56, %if.then.44, %if.then.32, %if.then.15, %if.then.6, %if.then
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* %p, i8 zeroext %b) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  %b.addr = alloca i8, align 1
  %lc = alloca i32, align 4
  %lp = alloca i32, align 4
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
  store i8 %b, i8* %b.addr, align 1
  %0 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %state = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i32 0, i32 3
  %1 = load i32, i32* %state, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.34
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8, i8* %b.addr, align 1
  %3 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %3, i32 0, i32 4
  store i8 %2, i8* %control, align 1
  %4 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control1 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %4, i32 0, i32 4
  %5 = load i8, i8* %control1, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 8, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %6, i32 0, i32 4
  %7 = load i8, i8* %control3, align 1
  %conv4 = zext i8 %7 to i32
  %and = and i32 %conv4, 128
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %8 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control8 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %8, i32 0, i32 4
  %9 = load i8, i8* %control8, align 1
  %conv9 = zext i8 %9 to i32
  %and10 = and i32 %conv9, 127
  %cmp11 = icmp sgt i32 %and10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  store i32 9, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.7
  %10 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %10, i32 0, i32 2
  store i32 0, i32* %unpackSize, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %11 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control15 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %11, i32 0, i32 4
  %12 = load i8, i8* %control15, align 1
  %conv16 = zext i8 %12 to i32
  %and17 = and i32 %conv16, 31
  %shl = shl i32 %and17, 16
  %13 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize18 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %13, i32 0, i32 2
  store i32 %shl, i32* %unpackSize18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.14
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %14 = load i8, i8* %b.addr, align 1
  %conv21 = zext i8 %14 to i32
  %shl22 = shl i32 %conv21, 8
  %15 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize23 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %15, i32 0, i32 2
  %16 = load i32, i32* %unpackSize23, align 4
  %or = or i32 %16, %shl22
  store i32 %or, i32* %unpackSize23, align 4
  store i32 2, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  %17 = load i8, i8* %b.addr, align 1
  %conv25 = zext i8 %17 to i32
  %18 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize26 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 2
  %19 = load i32, i32* %unpackSize26, align 4
  %or27 = or i32 %19, %conv25
  store i32 %or27, i32* %unpackSize26, align 4
  %20 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %unpackSize28 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %20, i32 0, i32 2
  %21 = load i32, i32* %unpackSize28, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %unpackSize28, align 4
  %22 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control29 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %22, i32 0, i32 4
  %23 = load i8, i8* %control29, align 1
  %conv30 = zext i8 %23 to i32
  %and31 = and i32 %conv30, 128
  %cmp32 = icmp eq i32 %and31, 0
  %cond = select i1 %cmp32, i32 6, i32 3
  store i32 %cond, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %24 = load i8, i8* %b.addr, align 1
  %conv35 = zext i8 %24 to i32
  %shl36 = shl i32 %conv35, 8
  %25 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %25, i32 0, i32 1
  store i32 %shl36, i32* %packSize, align 4
  store i32 4, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  %26 = load i8, i8* %b.addr, align 1
  %conv38 = zext i8 %26 to i32
  %27 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize39 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %27, i32 0, i32 1
  %28 = load i32, i32* %packSize39, align 4
  %or40 = or i32 %28, %conv38
  store i32 %or40, i32* %packSize39, align 4
  %29 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %packSize41 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %29, i32 0, i32 1
  %30 = load i32, i32* %packSize41, align 4
  %inc42 = add i32 %30, 1
  store i32 %inc42, i32* %packSize41, align 4
  %31 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %control43 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %31, i32 0, i32 4
  %32 = load i8, i8* %control43, align 1
  %conv44 = zext i8 %32 to i32
  %shr = ashr i32 %conv44, 5
  %and45 = and i32 %shr, 3
  %cmp46 = icmp sge i32 %and45, 2
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.37
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.37
  %33 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitProp = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %33, i32 0, i32 7
  %34 = load i32, i32* %needInitProp, align 4
  %tobool = icmp ne i32 %34, 0
  %cond48 = select i1 %tobool, i32 9, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond49 = phi i32 [ 5, %cond.true ], [ %cond48, %cond.false ]
  store i32 %cond49, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %entry
  %35 = load i8, i8* %b.addr, align 1
  %conv51 = zext i8 %35 to i32
  %cmp52 = icmp sge i32 %conv51, 225
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %sw.bb.50
  store i32 9, i32* %retval
  br label %return

if.end.55:                                        ; preds = %sw.bb.50
  %36 = load i8, i8* %b.addr, align 1
  %conv56 = zext i8 %36 to i32
  %rem = srem i32 %conv56, 9
  store i32 %rem, i32* %lc, align 4
  %37 = load i8, i8* %b.addr, align 1
  %conv57 = zext i8 %37 to i32
  %div = sdiv i32 %conv57, 9
  %conv58 = trunc i32 %div to i8
  store i8 %conv58, i8* %b.addr, align 1
  %38 = load i8, i8* %b.addr, align 1
  %conv59 = zext i8 %38 to i32
  %div60 = sdiv i32 %conv59, 5
  %39 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %39, i32 0, i32 0
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder, i32 0, i32 0
  %pb = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 2
  store i32 %div60, i32* %pb, align 4
  %40 = load i8, i8* %b.addr, align 1
  %conv61 = zext i8 %40 to i32
  %rem62 = srem i32 %conv61, 5
  store i32 %rem62, i32* %lp, align 4
  %41 = load i32, i32* %lc, align 4
  %42 = load i32, i32* %lp, align 4
  %add = add nsw i32 %41, %42
  %cmp63 = icmp sgt i32 %add, 4
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.55
  store i32 9, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.55
  %43 = load i32, i32* %lc, align 4
  %44 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder67 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %44, i32 0, i32 0
  %prop68 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder67, i32 0, i32 0
  %lc69 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop68, i32 0, i32 0
  store i32 %43, i32* %lc69, align 4
  %45 = load i32, i32* %lp, align 4
  %46 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder70 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %46, i32 0, i32 0
  %prop71 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder70, i32 0, i32 0
  %lp72 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop71, i32 0, i32 1
  store i32 %45, i32* %lp72, align 4
  %47 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %needInitProp73 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %47, i32 0, i32 7
  store i32 0, i32* %needInitProp73, align 4
  store i32 6, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 9, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.66, %if.then.65, %if.then.54, %cond.end, %sw.bb.34, %sw.bb.24, %sw.bb.20, %if.end.19, %if.then.13, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare void @LzmaDec_InitDicAndState(%struct.CLzmaDec*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* %p, i8* %src, i64 %size) #0 {
entry:
  %p.addr = alloca %struct.CLzmaDec*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.CLzmaDec* %p, %struct.CLzmaDec** %p.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i32 0, i32 2
  %1 = load i8*, i8** %dic, align 8
  %2 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %2, i32 0, i32 6
  %3 = load i64, i64* %dicPos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i64, i64* %size.addr, align 8
  %7 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %dicPos1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %7, i32 0, i32 6
  %8 = load i64, i64* %dicPos1, align 8
  %add = add i64 %8, %6
  store i64 %add, i64* %dicPos1, align 8
  %9 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %9, i32 0, i32 9
  %10 = load i32, i32* %checkDicSize, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %11, i32 0, i32 0
  %dicSize = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop, i32 0, i32 3
  %12 = load i32, i32* %dicSize, align 4
  %13 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %13, i32 0, i32 8
  %14 = load i32, i32* %processedPos, align 4
  %sub = sub i32 %12, %14
  %conv = zext i32 %sub to i64
  %15 = load i64, i64* %size.addr, align 8
  %cmp2 = icmp ule i64 %conv, %15
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %prop4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %16, i32 0, i32 0
  %dicSize5 = getelementptr inbounds %struct._CLzmaProps, %struct._CLzmaProps* %prop4, i32 0, i32 3
  %17 = load i32, i32* %dicSize5, align 4
  %18 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %checkDicSize6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %18, i32 0, i32 9
  store i32 %17, i32* %checkDicSize6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load i64, i64* %size.addr, align 8
  %conv7 = trunc i64 %19 to i32
  %20 = load %struct.CLzmaDec*, %struct.CLzmaDec** %p.addr, align 8
  %processedPos8 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %20, i32 0, i32 8
  %21 = load i32, i32* %processedPos8, align 4
  %add9 = add i32 %21, %conv7
  store i32 %add9, i32* %processedPos8, align 4
  ret void
}

declare i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec*, i64, i8*, i64*, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @Lzma2Dec_DecodeToBuf(%struct.CLzma2Dec* %p, i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i32 %finishMode, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CLzma2Dec*, align 8
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %outSize = alloca i64, align 8
  %inSize = alloca i64, align 8
  %srcSizeCur = alloca i64, align 8
  %outSizeCur = alloca i64, align 8
  %dicPos = alloca i64, align 8
  %curFinishMode = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.CLzma2Dec* %p, %struct.CLzma2Dec** %p.addr, align 8
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

for.cond:                                         ; preds = %if.end.30, %entry
  %6 = load i64, i64* %inSize, align 8
  store i64 %6, i64* %srcSizeCur, align 8
  %7 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %7, i32 0, i32 0
  %dicPos1 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder, i32 0, i32 6
  %8 = load i64, i64* %dicPos1, align 8
  %9 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder2 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i32 0, i32 0
  %dicBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder2, i32 0, i32 7
  %10 = load i64, i64* %dicBufSize, align 8
  %cmp = icmp eq i64 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %11 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %11, i32 0, i32 0
  %dicPos4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder3, i32 0, i32 6
  store i64 0, i64* %dicPos4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %12 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder5 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %12, i32 0, i32 0
  %dicPos6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder5, i32 0, i32 6
  %13 = load i64, i64* %dicPos6, align 8
  store i64 %13, i64* %dicPos, align 8
  %14 = load i64, i64* %outSize, align 8
  %15 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder7 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %15, i32 0, i32 0
  %dicBufSize8 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder7, i32 0, i32 7
  %16 = load i64, i64* %dicBufSize8, align 8
  %17 = load i64, i64* %dicPos, align 8
  %sub = sub i64 %16, %17
  %cmp9 = icmp ugt i64 %14, %sub
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %18 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder11 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %18, i32 0, i32 0
  %dicBufSize12 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder11, i32 0, i32 7
  %19 = load i64, i64* %dicBufSize12, align 8
  store i64 %19, i64* %outSizeCur, align 8
  store i32 0, i32* %curFinishMode, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %20 = load i64, i64* %dicPos, align 8
  %21 = load i64, i64* %outSize, align 8
  %add = add i64 %20, %21
  store i64 %add, i64* %outSizeCur, align 8
  %22 = load i32, i32* %finishMode.addr, align 4
  store i32 %22, i32* %curFinishMode, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %23 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %24 = load i64, i64* %outSizeCur, align 8
  %25 = load i8*, i8** %src.addr, align 8
  %26 = load i32, i32* %curFinishMode, align 4
  %27 = load i32*, i32** %status.addr, align 8
  %call = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* %23, i64 %24, i8* %25, i64* %srcSizeCur, i32 %26, i32* %27)
  store i32 %call, i32* %res, align 4
  %28 = load i64, i64* %srcSizeCur, align 8
  %29 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %add.ptr, i8** %src.addr, align 8
  %30 = load i64, i64* %srcSizeCur, align 8
  %31 = load i64, i64* %inSize, align 8
  %sub14 = sub i64 %31, %30
  store i64 %sub14, i64* %inSize, align 8
  %32 = load i64, i64* %srcSizeCur, align 8
  %33 = load i64*, i64** %srcLen.addr, align 8
  %34 = load i64, i64* %33, align 8
  %add15 = add i64 %34, %32
  store i64 %add15, i64* %33, align 8
  %35 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder16 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %35, i32 0, i32 0
  %dicPos17 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder16, i32 0, i32 6
  %36 = load i64, i64* %dicPos17, align 8
  %37 = load i64, i64* %dicPos, align 8
  %sub18 = sub i64 %36, %37
  store i64 %sub18, i64* %outSizeCur, align 8
  %38 = load i8*, i8** %dest.addr, align 8
  %39 = load %struct.CLzma2Dec*, %struct.CLzma2Dec** %p.addr, align 8
  %decoder19 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %39, i32 0, i32 0
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder19, i32 0, i32 2
  %40 = load i8*, i8** %dic, align 8
  %41 = load i64, i64* %dicPos, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i64, i64* %outSizeCur, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %add.ptr20, i64 %42, i32 1, i1 false)
  %43 = load i64, i64* %outSizeCur, align 8
  %44 = load i8*, i8** %dest.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %add.ptr21, i8** %dest.addr, align 8
  %45 = load i64, i64* %outSizeCur, align 8
  %46 = load i64, i64* %outSize, align 8
  %sub22 = sub i64 %46, %45
  store i64 %sub22, i64* %outSize, align 8
  %47 = load i64, i64* %outSizeCur, align 8
  %48 = load i64*, i64** %destLen.addr, align 8
  %49 = load i64, i64* %48, align 8
  %add23 = add i64 %49, %47
  store i64 %add23, i64* %48, align 8
  %50 = load i32, i32* %res, align 4
  %cmp24 = icmp ne i32 %50, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.13
  %51 = load i32, i32* %res, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.13
  %52 = load i64, i64* %outSizeCur, align 8
  %cmp27 = icmp eq i64 %52, 0
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %53 = load i64, i64* %outSize, align 8
  %cmp28 = icmp eq i64 %53, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  br label %for.cond

return:                                           ; preds = %if.then.29, %if.then.25
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @Lzma2Decode(i8* %dest, i64* %destLen, i8* %src, i64* %srcLen, i8 zeroext %prop, i32 %finishMode, i32* %status, %struct.ISzAlloc* %alloc) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %srcLen.addr = alloca i64*, align 8
  %prop.addr = alloca i8, align 1
  %finishMode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  %decoder = alloca %struct.CLzma2Dec, align 8
  %res = alloca i32, align 4
  %outSize = alloca i64, align 8
  %inSize = alloca i64, align 8
  %props = alloca [5 x i8], align 1
  %__result__ = alloca i32, align 4
  %__result__6 = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64* %destLen, i64** %destLen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64* %srcLen, i64** %srcLen.addr, align 8
  store i8 %prop, i8* %prop.addr, align 1
  store i32 %finishMode, i32* %finishMode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load i64*, i64** %destLen.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %outSize, align 8
  %2 = load i64*, i64** %srcLen.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %inSize, align 8
  %decoder1 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %dic = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder1, i32 0, i32 2
  store i8* null, i8** %dic, align 8
  %decoder2 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %probs = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder2, i32 0, i32 1
  store i16* null, i16** %probs, align 8
  %4 = load i64*, i64** %srcLen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %destLen.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %dest.addr, align 8
  %decoder3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %dic4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder3, i32 0, i32 2
  store i8* %7, i8** %dic4, align 8
  %8 = load i64, i64* %outSize, align 8
  %decoder5 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %dicBufSize = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder5, i32 0, i32 7
  store i64 %8, i64* %dicBufSize, align 8
  %9 = load i8, i8* %prop.addr, align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %call = call i32 @Lzma2Dec_GetOldProps(i8 zeroext %9, i8* %arraydecay)
  store i32 %call, i32* %__result__, align 4
  %10 = load i32, i32* %__result__, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %__result__, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %decoder7 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %props, i32 0, i32 0
  %12 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %call9 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* %decoder7, i8* %arraydecay8, i32 5, %struct.ISzAlloc* %12)
  store i32 %call9, i32* %__result__6, align 4
  %13 = load i32, i32* %__result__6, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %14 = load i32, i32* %__result__6, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %15 = load i64, i64* %inSize, align 8
  %16 = load i64*, i64** %srcLen.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %outSize, align 8
  %18 = load i8*, i8** %src.addr, align 8
  %19 = load i64*, i64** %srcLen.addr, align 8
  %20 = load i32, i32* %finishMode.addr, align 4
  %21 = load i32*, i32** %status.addr, align 8
  %call13 = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* %decoder, i64 %17, i8* %18, i64* %19, i32 %20, i32* %21)
  store i32 %call13, i32* %res, align 4
  %decoder14 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %dicPos = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %decoder14, i32 0, i32 6
  %22 = load i64, i64* %dicPos, align 8
  %23 = load i64*, i64** %destLen.addr, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* %res, align 4
  %cmp15 = icmp eq i32 %24, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.12
  %25 = load i32*, i32** %status.addr, align 8
  %26 = load i32, i32* %25, align 4
  %cmp16 = icmp eq i32 %26, 3
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 6, i32* %res, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.12
  %decoder19 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %decoder, i32 0, i32 0
  %27 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* %decoder19, %struct.ISzAlloc* %27)
  %28 = load i32, i32* %res, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.11, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @LzmaDec_FreeProbs(%struct.CLzmaDec*, %struct.ISzAlloc*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
