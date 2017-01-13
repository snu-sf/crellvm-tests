; ModuleID = './MultiSource.Benchmarks.7zip/5.Ppmd7Dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd7z_RangeDec = type { %struct.IPpmd7_RangeDec, i32, i32, %struct.IByteIn* }
%struct.IPpmd7_RangeDec = type { i32 (i8*, i32)*, void (i8*, i32, i32)*, i32 (i8*, i32)* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD7_kExpEscape = external constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define i32 @Ppmd7z_RangeDec_Init(%struct.CPpmd7z_RangeDec* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd7z_RangeDec*, align 8
  %i = alloca i32, align 4
  store %struct.CPpmd7z_RangeDec* %p, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %0 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i32 0, i32 2
  store i32 0, i32* %Code, align 4
  %1 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %1, i32 0, i32 1
  store i32 -1, i32* %Range, align 4
  %2 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %2, i32 0, i32 3
  %3 = load %struct.IByteIn*, %struct.IByteIn** %Stream, align 8
  %Read = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %3, i32 0, i32 0
  %4 = load i8 (i8*)*, i8 (i8*)** %Read, align 8
  %5 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream1 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %5, i32 0, i32 3
  %6 = load %struct.IByteIn*, %struct.IByteIn** %Stream1, align 8
  %7 = bitcast %struct.IByteIn* %6 to i8*
  %call = call zeroext i8 %4(i8* %7)
  %conv = zext i8 %call to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp3 = icmp ult i32 %8, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code5 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %9, i32 0, i32 2
  %10 = load i32, i32* %Code5, align 4
  %shl = shl i32 %10, 8
  %11 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream6 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %11, i32 0, i32 3
  %12 = load %struct.IByteIn*, %struct.IByteIn** %Stream6, align 8
  %Read7 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %12, i32 0, i32 0
  %13 = load i8 (i8*)*, i8 (i8*)** %Read7, align 8
  %14 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream8 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %14, i32 0, i32 3
  %15 = load %struct.IByteIn*, %struct.IByteIn** %Stream8, align 8
  %16 = bitcast %struct.IByteIn* %15 to i8*
  %call9 = call zeroext i8 %13(i8* %16)
  %conv10 = zext i8 %call9 to i32
  %or = or i32 %shl, %conv10
  %17 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code11 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %17, i32 0, i32 2
  store i32 %or, i32* %Code11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code12 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %19, i32 0, i32 2
  %20 = load i32, i32* %Code12, align 4
  %cmp13 = icmp ult i32 %20, -1
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @Ppmd7z_RangeDec_CreateVTable(%struct.CPpmd7z_RangeDec* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeDec*, align 8
  store %struct.CPpmd7z_RangeDec* %p, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %0 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i32 0, i32 0
  %GetThreshold = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %p1, i32 0, i32 0
  store i32 (i8*, i32)* @Range_GetThreshold, i32 (i8*, i32)** %GetThreshold, align 8
  %1 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %1, i32 0, i32 0
  %Decode = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %p2, i32 0, i32 1
  store void (i8*, i32, i32)* @Range_Decode, void (i8*, i32, i32)** %Decode, align 8
  %2 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %p3 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %2, i32 0, i32 0
  %DecodeBit = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %p3, i32 0, i32 2
  store i32 (i8*, i32)* @Range_DecodeBit, i32 (i8*, i32)** %DecodeBit, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Range_GetThreshold(i8* %pp, i32 %total) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %total.addr = alloca i32, align 4
  %p = alloca %struct.CPpmd7z_RangeDec*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i32 %total, i32* %total.addr, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %1, %struct.CPpmd7z_RangeDec** %p, align 8
  %2 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Code = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %2, i32 0, i32 2
  %3 = load i32, i32* %Code, align 4
  %4 = load i32, i32* %total.addr, align 4
  %5 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %5, i32 0, i32 1
  %6 = load i32, i32* %Range, align 4
  %div = udiv i32 %6, %4
  store i32 %div, i32* %Range, align 4
  %div1 = udiv i32 %3, %div
  ret i32 %div1
}

; Function Attrs: nounwind uwtable
define internal void @Range_Decode(i8* %pp, i32 %start, i32 %size) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %p = alloca %struct.CPpmd7z_RangeDec*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %1, %struct.CPpmd7z_RangeDec** %p, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %3, i32 0, i32 1
  %4 = load i32, i32* %Range, align 4
  %mul = mul i32 %2, %4
  %5 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Code = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %5, i32 0, i32 2
  %6 = load i32, i32* %Code, align 4
  %sub = sub i32 %6, %mul
  store i32 %sub, i32* %Code, align 4
  %7 = load i32, i32* %size.addr, align 4
  %8 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %8, i32 0, i32 1
  %9 = load i32, i32* %Range1, align 4
  %mul2 = mul i32 %9, %7
  store i32 %mul2, i32* %Range1, align 4
  %10 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Range_DecodeBit(i8* %pp, i32 %size0) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %size0.addr = alloca i32, align 4
  %p = alloca %struct.CPpmd7z_RangeDec*, align 8
  %newBound = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i8* %pp, i8** %pp.addr, align 8
  store i32 %size0, i32* %size0.addr, align 4
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.CPpmd7z_RangeDec*
  store %struct.CPpmd7z_RangeDec* %1, %struct.CPpmd7z_RangeDec** %p, align 8
  %2 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %2, i32 0, i32 1
  %3 = load i32, i32* %Range, align 4
  %shr = lshr i32 %3, 14
  %4 = load i32, i32* %size0.addr, align 4
  %mul = mul i32 %shr, %4
  store i32 %mul, i32* %newBound, align 4
  %5 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Code = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %5, i32 0, i32 2
  %6 = load i32, i32* %Code, align 4
  %7 = load i32, i32* %newBound, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %symbol, align 4
  %8 = load i32, i32* %newBound, align 4
  %9 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %9, i32 0, i32 1
  store i32 %8, i32* %Range1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %symbol, align 4
  %10 = load i32, i32* %newBound, align 4
  %11 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Code2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %11, i32 0, i32 2
  %12 = load i32, i32* %Code2, align 4
  %sub = sub i32 %12, %10
  store i32 %sub, i32* %Code2, align 4
  %13 = load i32, i32* %newBound, align 4
  %14 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  %Range3 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %14, i32 0, i32 1
  %15 = load i32, i32* %Range3, align 4
  %sub4 = sub i32 %15, %13
  store i32 %sub4, i32* %Range3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p, align 8
  call void @Range_Normalize(%struct.CPpmd7z_RangeDec* %16)
  %17 = load i32, i32* %symbol, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @Ppmd7_DecodeSymbol(%struct.CPpmd7* %p, %struct.IPpmd7_RangeDec* %rc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd7*, align 8
  %rc.addr = alloca %struct.IPpmd7_RangeDec*, align 8
  %charMask = alloca [32 x i64], align 16
  %s = alloca %struct.CPpmd_State*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %hiCnt = alloca i32, align 4
  %symbol = alloca i8, align 1
  %symbol20 = alloca i8, align 1
  %i46 = alloca i32, align 4
  %prob = alloca i16*, align 8
  %symbol135 = alloca i8, align 1
  %i160 = alloca i32, align 4
  %ps = alloca [256 x %struct.CPpmd_State*], align 16
  %s202 = alloca %struct.CPpmd_State*, align 8
  %freqSum = alloca i32, align 4
  %count203 = alloca i32, align 4
  %hiCnt204 = alloca i32, align 4
  %see = alloca %struct.CPpmd_See*, align 8
  %i205 = alloca i32, align 4
  %num = alloca i32, align 4
  %numMasked = alloca i32, align 4
  %k = alloca i32, align 4
  %symbol262 = alloca i8, align 1
  %pps = alloca %struct.CPpmd_State**, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store %struct.IPpmd7_RangeDec* %rc, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %0 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %0, i32 0, i32 0
  %1 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %1, i32 0, i32 0
  %2 = load i16, i16* %NumStats, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %3, i32 0, i32 12
  %4 = load i8*, i8** %Base, align 8
  %5 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext2 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %5, i32 0, i32 0
  %6 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext2, align 8
  %Stats = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %6, i32 0, i32 2
  %7 = load i32, i32* %Stats, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %8 = bitcast i8* %add.ptr to %struct.CPpmd_State*
  store %struct.CPpmd_State* %8, %struct.CPpmd_State** %s, align 8
  %9 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %GetThreshold = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %9, i32 0, i32 0
  %10 = load i32 (i8*, i32)*, i32 (i8*, i32)** %GetThreshold, align 8
  %11 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %12 = bitcast %struct.IPpmd7_RangeDec* %11 to i8*
  %13 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext3 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %13, i32 0, i32 0
  %14 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext3, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %14, i32 0, i32 1
  %15 = load i16, i16* %SummFreq, align 2
  %conv4 = zext i16 %15 to i32
  %call = call i32 %10(i8* %12, i32 %conv4)
  store i32 %call, i32* %count, align 4
  %16 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %16, i32 0, i32 1
  %17 = load i8, i8* %Freq, align 1
  %conv5 = zext i8 %17 to i32
  store i32 %conv5, i32* %hiCnt, align 4
  %cmp6 = icmp ult i32 %call, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %18 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %Decode = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %18, i32 0, i32 1
  %19 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %Decode, align 8
  %20 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %21 = bitcast %struct.IPpmd7_RangeDec* %20 to i8*
  %22 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq9 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %22, i32 0, i32 1
  %23 = load i8, i8* %Freq9, align 1
  %conv10 = zext i8 %23 to i32
  call void %19(i8* %21, i32 0, i32 %conv10)
  %24 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %25 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %25, i32 0, i32 2
  store %struct.CPpmd_State* %24, %struct.CPpmd_State** %FoundState, align 8
  %26 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %26, i32 0, i32 0
  %27 = load i8, i8* %Symbol, align 1
  store i8 %27, i8* %symbol, align 1
  %28 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update1_0(%struct.CPpmd7* %28)
  %29 = load i8, i8* %symbol, align 1
  %conv11 = zext i8 %29 to i32
  store i32 %conv11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %30 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %30, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %31 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext12 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %31, i32 0, i32 0
  %32 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext12, align 8
  %NumStats13 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %32, i32 0, i32 0
  %33 = load i16, i16* %NumStats13, align 2
  %conv14 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv14, 1
  store i32 %sub, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  %Freq15 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr, i32 0, i32 1
  %35 = load i8, i8* %Freq15, align 1
  %conv16 = zext i8 %35 to i32
  %36 = load i32, i32* %hiCnt, align 4
  %add = add i32 %36, %conv16
  store i32 %add, i32* %hiCnt, align 4
  %37 = load i32, i32* %count, align 4
  %cmp17 = icmp ugt i32 %add, %37
  br i1 %cmp17, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %do.body
  %38 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %Decode21 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %38, i32 0, i32 1
  %39 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %Decode21, align 8
  %40 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %41 = bitcast %struct.IPpmd7_RangeDec* %40 to i8*
  %42 = load i32, i32* %hiCnt, align 4
  %43 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq22 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %43, i32 0, i32 1
  %44 = load i8, i8* %Freq22, align 1
  %conv23 = zext i8 %44 to i32
  %sub24 = sub i32 %42, %conv23
  %45 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq25 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %45, i32 0, i32 1
  %46 = load i8, i8* %Freq25, align 1
  %conv26 = zext i8 %46 to i32
  call void %39(i8* %41, i32 %sub24, i32 %conv26)
  %47 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %48 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState27 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %48, i32 0, i32 2
  store %struct.CPpmd_State* %47, %struct.CPpmd_State** %FoundState27, align 8
  %49 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol28 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %49, i32 0, i32 0
  %50 = load i8, i8* %Symbol28, align 1
  store i8 %50, i8* %symbol20, align 1
  %51 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update1(%struct.CPpmd7* %51)
  %52 = load i8, i8* %symbol20, align 1
  %conv29 = zext i8 %52 to i32
  store i32 %conv29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  %53 = load i32, i32* %i, align 4
  %dec = add i32 %53, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %54 = load i32, i32* %count, align 4
  %55 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext31 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %55, i32 0, i32 0
  %56 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext31, align 8
  %SummFreq32 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %56, i32 0, i32 1
  %57 = load i16, i16* %SummFreq32, align 2
  %conv33 = zext i16 %57 to i32
  %cmp34 = icmp uge i32 %54, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end
  store i32 -2, i32* %retval
  br label %return

if.end.37:                                        ; preds = %do.end
  %58 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState38 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %58, i32 0, i32 2
  %59 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState38, align 8
  %Symbol39 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %59, i32 0, i32 0
  %60 = load i8, i8* %Symbol39, align 1
  %idxprom = zext i8 %60 to i64
  %61 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %61, i32 0, i32 23
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag, i32 0, i64 %idxprom
  %62 = load i8, i8* %arrayidx, align 1
  %conv40 = zext i8 %62 to i32
  %63 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiBitsFlag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %63, i32 0, i32 7
  store i32 %conv40, i32* %HiBitsFlag, align 4
  %64 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %Decode41 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %64, i32 0, i32 1
  %65 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %Decode41, align 8
  %66 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %67 = bitcast %struct.IPpmd7_RangeDec* %66 to i8*
  %68 = load i32, i32* %hiCnt, align 4
  %69 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext42 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %69, i32 0, i32 0
  %70 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext42, align 8
  %SummFreq43 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %70, i32 0, i32 1
  %71 = load i16, i16* %SummFreq43, align 2
  %conv44 = zext i16 %71 to i32
  %72 = load i32, i32* %hiCnt, align 4
  %sub45 = sub i32 %conv44, %72
  call void %65(i8* %67, i32 %68, i32 %sub45)
  store i32 0, i32* %i46, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %73 = load i32, i32* %i46, align 4
  %conv47 = zext i32 %73 to i64
  %cmp48 = icmp ult i64 %conv47, 32
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %i46, align 4
  %add50 = add i32 %74, 0
  %idxprom51 = zext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom51
  store i64 -1, i64* %arrayidx52, align 8
  %75 = load i32, i32* %i46, align 4
  %add53 = add i32 %75, 1
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom54
  store i64 -1, i64* %arrayidx55, align 8
  %76 = load i32, i32* %i46, align 4
  %add56 = add i32 %76, 2
  %idxprom57 = zext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom57
  store i64 -1, i64* %arrayidx58, align 8
  %77 = load i32, i32* %i46, align 4
  %add59 = add i32 %77, 3
  %idxprom60 = zext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom60
  store i64 -1, i64* %arrayidx61, align 8
  %78 = load i32, i32* %i46, align 4
  %add62 = add i32 %78, 4
  %idxprom63 = zext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom63
  store i64 -1, i64* %arrayidx64, align 8
  %79 = load i32, i32* %i46, align 4
  %add65 = add i32 %79, 5
  %idxprom66 = zext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom66
  store i64 -1, i64* %arrayidx67, align 8
  %80 = load i32, i32* %i46, align 4
  %add68 = add i32 %80, 6
  %idxprom69 = zext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom69
  store i64 -1, i64* %arrayidx70, align 8
  %81 = load i32, i32* %i46, align 4
  %add71 = add i32 %81, 7
  %idxprom72 = zext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom72
  store i64 -1, i64* %arrayidx73, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %i46, align 4
  %add74 = add i32 %82, 8
  store i32 %add74, i32* %i46, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol75 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %83, i32 0, i32 0
  %84 = load i8, i8* %Symbol75, align 1
  %idxprom76 = zext i8 %84 to i64
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %85 = bitcast i64* %arraydecay to i8*
  %arrayidx77 = getelementptr inbounds i8, i8* %85, i64 %idxprom76
  store i8 0, i8* %arrayidx77, align 1
  %86 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext78 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %86, i32 0, i32 0
  %87 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext78, align 8
  %NumStats79 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %87, i32 0, i32 0
  %88 = load i16, i16* %NumStats79, align 2
  %conv80 = zext i16 %88 to i32
  %sub81 = sub nsw i32 %conv80, 1
  store i32 %sub81, i32* %i, align 4
  br label %do.body.82

do.body.82:                                       ; preds = %do.cond.88, %for.end
  %89 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr83 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %89, i32 -1
  store %struct.CPpmd_State* %incdec.ptr83, %struct.CPpmd_State** %s, align 8
  %Symbol84 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr83, i32 0, i32 0
  %90 = load i8, i8* %Symbol84, align 1
  %idxprom85 = zext i8 %90 to i64
  %arraydecay86 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %91 = bitcast i64* %arraydecay86 to i8*
  %arrayidx87 = getelementptr inbounds i8, i8* %91, i64 %idxprom85
  store i8 0, i8* %arrayidx87, align 1
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.82
  %92 = load i32, i32* %i, align 4
  %dec89 = add i32 %92, -1
  store i32 %dec89, i32* %i, align 4
  %tobool90 = icmp ne i32 %dec89, 0
  br i1 %tobool90, label %do.body.82, label %do.end.91

do.end.91:                                        ; preds = %do.cond.88
  br label %if.end.200

if.else:                                          ; preds = %entry
  %93 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess92 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %93, i32 0, i32 5
  %94 = load i32, i32* %PrevSuccess92, align 4
  %95 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base93 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %95, i32 0, i32 12
  %96 = load i8*, i8** %Base93, align 8
  %97 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext94 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %97, i32 0, i32 0
  %98 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext94, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %98, i32 0, i32 3
  %99 = load i32, i32* %Suffix, align 4
  %idx.ext95 = zext i32 %99 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %96, i64 %idx.ext95
  %100 = bitcast i8* %add.ptr96 to %struct.CPpmd7_Context_*
  %NumStats97 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %100, i32 0, i32 0
  %101 = load i16, i16* %NumStats97, align 2
  %conv98 = zext i16 %101 to i32
  %sub99 = sub nsw i32 %conv98, 1
  %idxprom100 = sext i32 %sub99 to i64
  %102 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %102, i32 0, i32 22
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 %idxprom100
  %103 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %103 to i32
  %add103 = add i32 %94, %conv102
  %104 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState104 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %104, i32 0, i32 2
  %105 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState104, align 8
  %Symbol105 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %105, i32 0, i32 0
  %106 = load i8, i8* %Symbol105, align 1
  %idxprom106 = zext i8 %106 to i64
  %107 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag107 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %107, i32 0, i32 23
  %arrayidx108 = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag107, i32 0, i64 %idxprom106
  %108 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %108 to i32
  %109 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiBitsFlag110 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %109, i32 0, i32 7
  store i32 %conv109, i32* %HiBitsFlag110, align 4
  %add111 = add i32 %add103, %conv109
  %110 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext112 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %110, i32 0, i32 0
  %111 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext112, align 8
  %SummFreq113 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %111, i32 0, i32 1
  %112 = bitcast i16* %SummFreq113 to %struct.CPpmd_State*
  %Symbol114 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %112, i32 0, i32 0
  %113 = load i8, i8* %Symbol114, align 1
  %idxprom115 = zext i8 %113 to i64
  %114 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag116 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %114, i32 0, i32 23
  %arrayidx117 = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag116, i32 0, i64 %idxprom115
  %115 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %115 to i32
  %mul = mul nsw i32 2, %conv118
  %add119 = add i32 %add111, %mul
  %116 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %116, i32 0, i32 8
  %117 = load i32, i32* %RunLength, align 4
  %shr = ashr i32 %117, 26
  %and = and i32 %shr, 32
  %add120 = add i32 %add119, %and
  %idxprom121 = zext i32 %add120 to i64
  %118 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext122 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %118, i32 0, i32 0
  %119 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext122, align 8
  %SummFreq123 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %119, i32 0, i32 1
  %120 = bitcast i16* %SummFreq123 to %struct.CPpmd_State*
  %Freq124 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %120, i32 0, i32 1
  %121 = load i8, i8* %Freq124, align 1
  %conv125 = zext i8 %121 to i32
  %sub126 = sub nsw i32 %conv125, 1
  %idxprom127 = sext i32 %sub126 to i64
  %122 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %122, i32 0, i32 26
  %arrayidx128 = getelementptr inbounds [128 x [64 x i16]], [128 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx128, i32 0, i64 %idxprom121
  store i16* %arrayidx129, i16** %prob, align 8
  %123 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %DecodeBit = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %123, i32 0, i32 2
  %124 = load i32 (i8*, i32)*, i32 (i8*, i32)** %DecodeBit, align 8
  %125 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %126 = bitcast %struct.IPpmd7_RangeDec* %125 to i8*
  %127 = load i16*, i16** %prob, align 8
  %128 = load i16, i16* %127, align 2
  %conv130 = zext i16 %128 to i32
  %call131 = call i32 %124(i8* %126, i32 %conv130)
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.148

if.then.134:                                      ; preds = %if.else
  %129 = load i16*, i16** %prob, align 8
  %130 = load i16, i16* %129, align 2
  %conv136 = zext i16 %130 to i32
  %add137 = add nsw i32 %conv136, 128
  %131 = load i16*, i16** %prob, align 8
  %132 = load i16, i16* %131, align 2
  %conv138 = zext i16 %132 to i32
  %add139 = add nsw i32 %conv138, 32
  %shr140 = ashr i32 %add139, 7
  %sub141 = sub nsw i32 %add137, %shr140
  %conv142 = trunc i32 %sub141 to i16
  %133 = load i16*, i16** %prob, align 8
  store i16 %conv142, i16* %133, align 2
  %134 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext143 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %134, i32 0, i32 0
  %135 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext143, align 8
  %SummFreq144 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %135, i32 0, i32 1
  %136 = bitcast i16* %SummFreq144 to %struct.CPpmd_State*
  %137 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState145 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %137, i32 0, i32 2
  store %struct.CPpmd_State* %136, %struct.CPpmd_State** %FoundState145, align 8
  %Symbol146 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %136, i32 0, i32 0
  %138 = load i8, i8* %Symbol146, align 1
  store i8 %138, i8* %symbol135, align 1
  %139 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* %139)
  %140 = load i8, i8* %symbol135, align 1
  %conv147 = zext i8 %140 to i32
  store i32 %conv147, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.else
  %141 = load i16*, i16** %prob, align 8
  %142 = load i16, i16* %141, align 2
  %conv149 = zext i16 %142 to i32
  %143 = load i16*, i16** %prob, align 8
  %144 = load i16, i16* %143, align 2
  %conv150 = zext i16 %144 to i32
  %add151 = add nsw i32 %conv150, 32
  %shr152 = ashr i32 %add151, 7
  %sub153 = sub nsw i32 %conv149, %shr152
  %conv154 = trunc i32 %sub153 to i16
  %145 = load i16*, i16** %prob, align 8
  store i16 %conv154, i16* %145, align 2
  %146 = load i16*, i16** %prob, align 8
  %147 = load i16, i16* %146, align 2
  %conv155 = zext i16 %147 to i32
  %shr156 = ashr i32 %conv155, 10
  %idxprom157 = sext i32 %shr156 to i64
  %arrayidx158 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i32 0, i64 %idxprom157
  %148 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %148 to i32
  %149 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %149, i32 0, i32 4
  store i32 %conv159, i32* %InitEsc, align 4
  store i32 0, i32* %i160, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.190, %if.end.148
  %150 = load i32, i32* %i160, align 4
  %conv162 = zext i32 %150 to i64
  %cmp163 = icmp ult i64 %conv162, 32
  br i1 %cmp163, label %for.body.165, label %for.end.192

for.body.165:                                     ; preds = %for.cond.161
  %151 = load i32, i32* %i160, align 4
  %add166 = add i32 %151, 0
  %idxprom167 = zext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom167
  store i64 -1, i64* %arrayidx168, align 8
  %152 = load i32, i32* %i160, align 4
  %add169 = add i32 %152, 1
  %idxprom170 = zext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom170
  store i64 -1, i64* %arrayidx171, align 8
  %153 = load i32, i32* %i160, align 4
  %add172 = add i32 %153, 2
  %idxprom173 = zext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom173
  store i64 -1, i64* %arrayidx174, align 8
  %154 = load i32, i32* %i160, align 4
  %add175 = add i32 %154, 3
  %idxprom176 = zext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom176
  store i64 -1, i64* %arrayidx177, align 8
  %155 = load i32, i32* %i160, align 4
  %add178 = add i32 %155, 4
  %idxprom179 = zext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom179
  store i64 -1, i64* %arrayidx180, align 8
  %156 = load i32, i32* %i160, align 4
  %add181 = add i32 %156, 5
  %idxprom182 = zext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom182
  store i64 -1, i64* %arrayidx183, align 8
  %157 = load i32, i32* %i160, align 4
  %add184 = add i32 %157, 6
  %idxprom185 = zext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom185
  store i64 -1, i64* %arrayidx186, align 8
  %158 = load i32, i32* %i160, align 4
  %add187 = add i32 %158, 7
  %idxprom188 = zext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom188
  store i64 -1, i64* %arrayidx189, align 8
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.165
  %159 = load i32, i32* %i160, align 4
  %add191 = add i32 %159, 8
  store i32 %add191, i32* %i160, align 4
  br label %for.cond.161

for.end.192:                                      ; preds = %for.cond.161
  %160 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext193 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %160, i32 0, i32 0
  %161 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext193, align 8
  %SummFreq194 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %161, i32 0, i32 1
  %162 = bitcast i16* %SummFreq194 to %struct.CPpmd_State*
  %Symbol195 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %162, i32 0, i32 0
  %163 = load i8, i8* %Symbol195, align 1
  %idxprom196 = zext i8 %163 to i64
  %arraydecay197 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %164 = bitcast i64* %arraydecay197 to i8*
  %arrayidx198 = getelementptr inbounds i8, i8* %164, i64 %idxprom196
  store i8 0, i8* %arrayidx198, align 1
  %165 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess199 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %165, i32 0, i32 5
  store i32 0, i32* %PrevSuccess199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.192, %do.end.91
  br label %for.cond.201

for.cond.201:                                     ; preds = %do.end.323, %if.end.200
  %166 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext206 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %166, i32 0, i32 0
  %167 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext206, align 8
  %NumStats207 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %167, i32 0, i32 0
  %168 = load i16, i16* %NumStats207, align 2
  %conv208 = zext i16 %168 to i32
  store i32 %conv208, i32* %numMasked, align 4
  br label %do.body.209

do.body.209:                                      ; preds = %do.cond.221, %for.cond.201
  %169 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %169, i32 0, i32 3
  %170 = load i32, i32* %OrderFall, align 4
  %inc = add i32 %170, 1
  store i32 %inc, i32* %OrderFall, align 4
  %171 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext210 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %171, i32 0, i32 0
  %172 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext210, align 8
  %Suffix211 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %172, i32 0, i32 3
  %173 = load i32, i32* %Suffix211, align 4
  %tobool212 = icmp ne i32 %173, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %do.body.209
  store i32 -1, i32* %retval
  br label %return

if.end.214:                                       ; preds = %do.body.209
  %174 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base215 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %174, i32 0, i32 12
  %175 = load i8*, i8** %Base215, align 8
  %176 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext216 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %176, i32 0, i32 0
  %177 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext216, align 8
  %Suffix217 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %177, i32 0, i32 3
  %178 = load i32, i32* %Suffix217, align 4
  %idx.ext218 = zext i32 %178 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %175, i64 %idx.ext218
  %179 = bitcast i8* %add.ptr219 to %struct.CPpmd7_Context_*
  %180 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext220 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %180, i32 0, i32 0
  store %struct.CPpmd7_Context_* %179, %struct.CPpmd7_Context_** %MinContext220, align 8
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.214
  %181 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext222 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %181, i32 0, i32 0
  %182 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext222, align 8
  %NumStats223 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %182, i32 0, i32 0
  %183 = load i16, i16* %NumStats223, align 2
  %conv224 = zext i16 %183 to i32
  %184 = load i32, i32* %numMasked, align 4
  %cmp225 = icmp eq i32 %conv224, %184
  br i1 %cmp225, label %do.body.209, label %do.end.227

do.end.227:                                       ; preds = %do.cond.221
  store i32 0, i32* %hiCnt204, align 4
  %185 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base228 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %185, i32 0, i32 12
  %186 = load i8*, i8** %Base228, align 8
  %187 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext229 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %187, i32 0, i32 0
  %188 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext229, align 8
  %Stats230 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %188, i32 0, i32 2
  %189 = load i32, i32* %Stats230, align 4
  %idx.ext231 = zext i32 %189 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %186, i64 %idx.ext231
  %190 = bitcast i8* %add.ptr232 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %190, %struct.CPpmd_State** %s202, align 8
  store i32 0, i32* %i205, align 4
  %191 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext233 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %191, i32 0, i32 0
  %192 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext233, align 8
  %NumStats234 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %192, i32 0, i32 0
  %193 = load i16, i16* %NumStats234, align 2
  %conv235 = zext i16 %193 to i32
  %194 = load i32, i32* %numMasked, align 4
  %sub236 = sub i32 %conv235, %194
  store i32 %sub236, i32* %num, align 4
  br label %do.body.237

do.body.237:                                      ; preds = %do.cond.251, %do.end.227
  %195 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %Symbol238 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %195, i32 0, i32 0
  %196 = load i8, i8* %Symbol238, align 1
  %idxprom239 = zext i8 %196 to i64
  %arraydecay240 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %197 = bitcast i64* %arraydecay240 to i8*
  %arrayidx241 = getelementptr inbounds i8, i8* %197, i64 %idxprom239
  %198 = load i8, i8* %arrayidx241, align 1
  %conv242 = sext i8 %198 to i32
  store i32 %conv242, i32* %k, align 4
  %199 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %Freq243 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %199, i32 0, i32 1
  %200 = load i8, i8* %Freq243, align 1
  %conv244 = zext i8 %200 to i32
  %201 = load i32, i32* %k, align 4
  %and245 = and i32 %conv244, %201
  %202 = load i32, i32* %hiCnt204, align 4
  %add246 = add i32 %202, %and245
  store i32 %add246, i32* %hiCnt204, align 4
  %203 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %incdec.ptr247 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %203, i32 1
  store %struct.CPpmd_State* %incdec.ptr247, %struct.CPpmd_State** %s202, align 8
  %204 = load i32, i32* %i205, align 4
  %idxprom248 = zext i32 %204 to i64
  %arrayidx249 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom248
  store %struct.CPpmd_State* %203, %struct.CPpmd_State** %arrayidx249, align 8
  %205 = load i32, i32* %k, align 4
  %206 = load i32, i32* %i205, align 4
  %sub250 = sub i32 %206, %205
  store i32 %sub250, i32* %i205, align 4
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.body.237
  %207 = load i32, i32* %i205, align 4
  %208 = load i32, i32* %num, align 4
  %cmp252 = icmp ne i32 %207, %208
  br i1 %cmp252, label %do.body.237, label %do.end.254

do.end.254:                                       ; preds = %do.cond.251
  %209 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %210 = load i32, i32* %numMasked, align 4
  %call255 = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* %209, i32 %210, i32* %freqSum)
  store %struct.CPpmd_See* %call255, %struct.CPpmd_See** %see, align 8
  %211 = load i32, i32* %hiCnt204, align 4
  %212 = load i32, i32* %freqSum, align 4
  %add256 = add i32 %212, %211
  store i32 %add256, i32* %freqSum, align 4
  %213 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %GetThreshold257 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %213, i32 0, i32 0
  %214 = load i32 (i8*, i32)*, i32 (i8*, i32)** %GetThreshold257, align 8
  %215 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %216 = bitcast %struct.IPpmd7_RangeDec* %215 to i8*
  %217 = load i32, i32* %freqSum, align 4
  %call258 = call i32 %214(i8* %216, i32 %217)
  store i32 %call258, i32* %count203, align 4
  %218 = load i32, i32* %count203, align 4
  %219 = load i32, i32* %hiCnt204, align 4
  %cmp259 = icmp ult i32 %218, %219
  br i1 %cmp259, label %if.then.261, label %if.end.300

if.then.261:                                      ; preds = %do.end.254
  %arraydecay263 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i32 0
  store %struct.CPpmd_State** %arraydecay263, %struct.CPpmd_State*** %pps, align 8
  store i32 0, i32* %hiCnt204, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.271, %if.then.261
  %220 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %221 = load %struct.CPpmd_State*, %struct.CPpmd_State** %220, align 8
  %Freq265 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %221, i32 0, i32 1
  %222 = load i8, i8* %Freq265, align 1
  %conv266 = zext i8 %222 to i32
  %223 = load i32, i32* %hiCnt204, align 4
  %add267 = add i32 %223, %conv266
  store i32 %add267, i32* %hiCnt204, align 4
  %224 = load i32, i32* %count203, align 4
  %cmp268 = icmp ule i32 %add267, %224
  br i1 %cmp268, label %for.body.270, label %for.end.273

for.body.270:                                     ; preds = %for.cond.264
  br label %for.inc.271

for.inc.271:                                      ; preds = %for.body.270
  %225 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %incdec.ptr272 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %225, i32 1
  store %struct.CPpmd_State** %incdec.ptr272, %struct.CPpmd_State*** %pps, align 8
  br label %for.cond.264

for.end.273:                                      ; preds = %for.cond.264
  %226 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %227 = load %struct.CPpmd_State*, %struct.CPpmd_State** %226, align 8
  store %struct.CPpmd_State* %227, %struct.CPpmd_State** %s202, align 8
  %228 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %Decode274 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %228, i32 0, i32 1
  %229 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %Decode274, align 8
  %230 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %231 = bitcast %struct.IPpmd7_RangeDec* %230 to i8*
  %232 = load i32, i32* %hiCnt204, align 4
  %233 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %Freq275 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %233, i32 0, i32 1
  %234 = load i8, i8* %Freq275, align 1
  %conv276 = zext i8 %234 to i32
  %sub277 = sub i32 %232, %conv276
  %235 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %Freq278 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %235, i32 0, i32 1
  %236 = load i8, i8* %Freq278, align 1
  %conv279 = zext i8 %236 to i32
  call void %229(i8* %231, i32 %sub277, i32 %conv279)
  %237 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %237, i32 0, i32 1
  %238 = load i8, i8* %Shift, align 1
  %conv280 = zext i8 %238 to i32
  %cmp281 = icmp slt i32 %conv280, 7
  br i1 %cmp281, label %land.lhs.true, label %if.end.296

land.lhs.true:                                    ; preds = %for.end.273
  %239 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %239, i32 0, i32 2
  %240 = load i8, i8* %Count, align 1
  %dec283 = add i8 %240, -1
  store i8 %dec283, i8* %Count, align 1
  %conv284 = zext i8 %dec283 to i32
  %cmp285 = icmp eq i32 %conv284, 0
  br i1 %cmp285, label %if.then.287, label %if.end.296

if.then.287:                                      ; preds = %land.lhs.true
  %241 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %241, i32 0, i32 0
  %242 = load i16, i16* %Summ, align 1
  %conv288 = zext i16 %242 to i32
  %shl = shl i32 %conv288, 1
  %conv289 = trunc i32 %shl to i16
  store i16 %conv289, i16* %Summ, align 1
  %243 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift290 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %243, i32 0, i32 1
  %244 = load i8, i8* %Shift290, align 1
  %inc291 = add i8 %244, 1
  store i8 %inc291, i8* %Shift290, align 1
  %conv292 = zext i8 %244 to i32
  %shl293 = shl i32 3, %conv292
  %conv294 = trunc i32 %shl293 to i8
  %245 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count295 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %245, i32 0, i32 2
  store i8 %conv294, i8* %Count295, align 1
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.287, %land.lhs.true, %for.end.273
  %246 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %247 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState297 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %247, i32 0, i32 2
  store %struct.CPpmd_State* %246, %struct.CPpmd_State** %FoundState297, align 8
  %248 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s202, align 8
  %Symbol298 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %248, i32 0, i32 0
  %249 = load i8, i8* %Symbol298, align 1
  store i8 %249, i8* %symbol262, align 1
  %250 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update2(%struct.CPpmd7* %250)
  %251 = load i8, i8* %symbol262, align 1
  %conv299 = zext i8 %251 to i32
  store i32 %conv299, i32* %retval
  br label %return

if.end.300:                                       ; preds = %do.end.254
  %252 = load i32, i32* %count203, align 4
  %253 = load i32, i32* %freqSum, align 4
  %cmp301 = icmp uge i32 %252, %253
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.end.300
  store i32 -2, i32* %retval
  br label %return

if.end.304:                                       ; preds = %if.end.300
  %254 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %Decode305 = getelementptr inbounds %struct.IPpmd7_RangeDec, %struct.IPpmd7_RangeDec* %254, i32 0, i32 1
  %255 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %Decode305, align 8
  %256 = load %struct.IPpmd7_RangeDec*, %struct.IPpmd7_RangeDec** %rc.addr, align 8
  %257 = bitcast %struct.IPpmd7_RangeDec* %256 to i8*
  %258 = load i32, i32* %hiCnt204, align 4
  %259 = load i32, i32* %freqSum, align 4
  %260 = load i32, i32* %hiCnt204, align 4
  %sub306 = sub i32 %259, %260
  call void %255(i8* %257, i32 %258, i32 %sub306)
  %261 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ307 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %261, i32 0, i32 0
  %262 = load i16, i16* %Summ307, align 1
  %conv308 = zext i16 %262 to i32
  %263 = load i32, i32* %freqSum, align 4
  %add309 = add i32 %conv308, %263
  %conv310 = trunc i32 %add309 to i16
  %264 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ311 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %264, i32 0, i32 0
  store i16 %conv310, i16* %Summ311, align 1
  br label %do.body.312

do.body.312:                                      ; preds = %do.cond.320, %if.end.304
  %265 = load i32, i32* %i205, align 4
  %dec313 = add i32 %265, -1
  store i32 %dec313, i32* %i205, align 4
  %idxprom314 = zext i32 %dec313 to i64
  %arrayidx315 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom314
  %266 = load %struct.CPpmd_State*, %struct.CPpmd_State** %arrayidx315, align 8
  %Symbol316 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %266, i32 0, i32 0
  %267 = load i8, i8* %Symbol316, align 1
  %idxprom317 = zext i8 %267 to i64
  %arraydecay318 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %268 = bitcast i64* %arraydecay318 to i8*
  %arrayidx319 = getelementptr inbounds i8, i8* %268, i64 %idxprom317
  store i8 0, i8* %arrayidx319, align 1
  br label %do.cond.320

do.cond.320:                                      ; preds = %do.body.312
  %269 = load i32, i32* %i205, align 4
  %cmp321 = icmp ne i32 %269, 0
  br i1 %cmp321, label %do.body.312, label %do.end.323

do.end.323:                                       ; preds = %do.cond.320
  br label %for.cond.201

return:                                           ; preds = %if.then.303, %if.end.296, %if.then.213, %if.then.134, %if.then.36, %if.then.19, %if.then.8
  %270 = load i32, i32* %retval
  ret i32 %270
}

declare void @Ppmd7_Update1_0(%struct.CPpmd7*) #1

declare void @Ppmd7_Update1(%struct.CPpmd7*) #1

declare void @Ppmd7_UpdateBin(%struct.CPpmd7*) #1

declare %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7*, i32, i32*) #1

declare void @Ppmd7_Update2(%struct.CPpmd7*) #1

; Function Attrs: nounwind uwtable
define internal void @Range_Normalize(%struct.CPpmd7z_RangeDec* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeDec*, align 8
  store %struct.CPpmd7z_RangeDec* %p, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %0 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %0, i32 0, i32 1
  %1 = load i32, i32* %Range, align 4
  %cmp = icmp ult i32 %1, 16777216
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %2 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %2, i32 0, i32 2
  %3 = load i32, i32* %Code, align 4
  %shl = shl i32 %3, 8
  %4 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %4, i32 0, i32 3
  %5 = load %struct.IByteIn*, %struct.IByteIn** %Stream, align 8
  %Read = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %5, i32 0, i32 0
  %6 = load i8 (i8*)*, i8 (i8*)** %Read, align 8
  %7 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream1 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %7, i32 0, i32 3
  %8 = load %struct.IByteIn*, %struct.IByteIn** %Stream1, align 8
  %9 = bitcast %struct.IByteIn* %8 to i8*
  %call = call zeroext i8 %6(i8* %9)
  %conv = zext i8 %call to i32
  %or = or i32 %shl, %conv
  %10 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code2 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %10, i32 0, i32 2
  store i32 %or, i32* %Code2, align 4
  %11 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Range3 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %11, i32 0, i32 1
  %12 = load i32, i32* %Range3, align 4
  %shl4 = shl i32 %12, 8
  store i32 %shl4, i32* %Range3, align 4
  %13 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Range5 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %13, i32 0, i32 1
  %14 = load i32, i32* %Range5, align 4
  %cmp6 = icmp ult i32 %14, 16777216
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code9 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %15, i32 0, i32 2
  %16 = load i32, i32* %Code9, align 4
  %shl10 = shl i32 %16, 8
  %17 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream11 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %17, i32 0, i32 3
  %18 = load %struct.IByteIn*, %struct.IByteIn** %Stream11, align 8
  %Read12 = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %18, i32 0, i32 0
  %19 = load i8 (i8*)*, i8 (i8*)** %Read12, align 8
  %20 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Stream13 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %20, i32 0, i32 3
  %21 = load %struct.IByteIn*, %struct.IByteIn** %Stream13, align 8
  %22 = bitcast %struct.IByteIn* %21 to i8*
  %call14 = call zeroext i8 %19(i8* %22)
  %conv15 = zext i8 %call14 to i32
  %or16 = or i32 %shl10, %conv15
  %23 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Code17 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %23, i32 0, i32 2
  store i32 %or16, i32* %Code17, align 4
  %24 = load %struct.CPpmd7z_RangeDec*, %struct.CPpmd7z_RangeDec** %p.addr, align 8
  %Range18 = getelementptr inbounds %struct.CPpmd7z_RangeDec, %struct.CPpmd7z_RangeDec* %24, i32 0, i32 1
  %25 = load i32, i32* %Range18, align 4
  %shl19 = shl i32 %25, 8
  store i32 %shl19, i32* %Range18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
