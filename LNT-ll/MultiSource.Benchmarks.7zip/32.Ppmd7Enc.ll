; ModuleID = './MultiSource.Benchmarks.7zip/32.Ppmd7Enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd7z_RangeEnc = type { i64, i32, i8, i64, %struct.IByteOut* }
%struct.IByteOut = type { void (i8*, i8)* }
%struct.CPpmd7 = type { %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [38 x i8], [128 x i8], [38 x i32], [256 x i8], [256 x i8], [256 x i8], %struct.CPpmd_See, [25 x [16 x %struct.CPpmd_See]], [128 x [64 x i16]] }
%struct.CPpmd7_Context_ = type { i16, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD7_kExpEscape = external constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define void @Ppmd7z_RangeEnc_Init(%struct.CPpmd7z_RangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %0 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i32 0, i32 0
  store i64 0, i64* %Low, align 8
  %1 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %1, i32 0, i32 1
  store i32 -1, i32* %Range, align 4
  %2 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Cache = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %2, i32 0, i32 2
  store i8 0, i8* %Cache, align 1
  %3 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %CacheSize = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %3, i32 0, i32 3
  store i64 1, i64* %CacheSize, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd7z_RangeEnc_FlushData(%struct.CPpmd7z_RangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %i = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %temp = alloca i8, align 1
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %0 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i32 0, i32 0
  %1 = load i64, i64* %Low, align 8
  %conv = trunc i64 %1 to i32
  %cmp = icmp ult i32 %conv, -16777216
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low2 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %2, i32 0, i32 0
  %3 = load i64, i64* %Low2, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Cache = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %4, i32 0, i32 2
  %5 = load i8, i8* %Cache, align 1
  store i8 %5, i8* %temp, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %6 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %6, i32 0, i32 4
  %7 = load %struct.IByteOut*, %struct.IByteOut** %Stream, align 8
  %Write = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %7, i32 0, i32 0
  %8 = load void (i8*, i8)*, void (i8*, i8)** %Write, align 8
  %9 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Stream6 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %9, i32 0, i32 4
  %10 = load %struct.IByteOut*, %struct.IByteOut** %Stream6, align 8
  %11 = bitcast %struct.IByteOut* %10 to i8*
  %12 = load i8, i8* %temp, align 1
  %conv7 = zext i8 %12 to i32
  %13 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low8 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %13, i32 0, i32 0
  %14 = load i64, i64* %Low8, align 8
  %shr9 = lshr i64 %14, 32
  %conv10 = trunc i64 %shr9 to i8
  %conv11 = zext i8 %conv10 to i32
  %add = add nsw i32 %conv7, %conv11
  %conv12 = trunc i32 %add to i8
  call void %8(i8* %11, i8 zeroext %conv12)
  store i8 -1, i8* %temp, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %CacheSize = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %15, i32 0, i32 3
  %16 = load i64, i64* %CacheSize, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %CacheSize, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low15 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %17, i32 0, i32 0
  %18 = load i64, i64* %Low15, align 8
  %conv16 = trunc i64 %18 to i32
  %shr17 = lshr i32 %conv16, 24
  %conv18 = trunc i32 %shr17 to i8
  %19 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Cache19 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %19, i32 0, i32 2
  store i8 %conv18, i8* %Cache19, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %20 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %CacheSize20 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %20, i32 0, i32 3
  %21 = load i64, i64* %CacheSize20, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %CacheSize20, align 8
  %22 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low21 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %22, i32 0, i32 0
  %23 = load i64, i64* %Low21, align 8
  %conv22 = trunc i64 %23 to i32
  %shl = shl i32 %conv22, 8
  %conv23 = zext i32 %shl to i64
  %24 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low24 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %24, i32 0, i32 0
  store i64 %conv23, i64* %Low24, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd7_EncodeSymbol(%struct.CPpmd7* %p, %struct.CPpmd7z_RangeEnc* %rc, i32 %symbol) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7*, align 8
  %rc.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %symbol.addr = alloca i32, align 4
  %charMask = alloca [32 x i64], align 16
  %s = alloca %struct.CPpmd_State*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %i32 = alloca i32, align 4
  %prob = alloca i16*, align 8
  %s123 = alloca %struct.CPpmd_State*, align 8
  %i153 = alloca i32, align 4
  %escFreq = alloca i32, align 4
  %see = alloca %struct.CPpmd_See*, align 8
  %s194 = alloca %struct.CPpmd_State*, align 8
  %sum195 = alloca i32, align 4
  %i196 = alloca i32, align 4
  %numMasked = alloca i32, align 4
  %cur = alloca i32, align 4
  %low = alloca i32, align 4
  %s1 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd7* %p, %struct.CPpmd7** %p.addr, align 8
  store %struct.CPpmd7z_RangeEnc* %rc, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
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
  %9 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %9, i32 0, i32 0
  %10 = load i8, i8* %Symbol, align 1
  %conv3 = zext i8 %10 to i32
  %11 = load i32, i32* %symbol.addr, align 4
  %cmp4 = icmp eq i32 %conv3, %11
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i32 0, i32 1
  %14 = load i8, i8* %Freq, align 1
  %conv7 = zext i8 %14 to i32
  %15 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext8 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %15, i32 0, i32 0
  %16 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext8, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %16, i32 0, i32 1
  %17 = load i16, i16* %SummFreq, align 2
  %conv9 = zext i16 %17 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %12, i32 0, i32 %conv7, i32 %conv9)
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %19 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %19, i32 0, i32 2
  store %struct.CPpmd_State* %18, %struct.CPpmd_State** %FoundState, align 8
  %20 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update1_0(%struct.CPpmd7* %20)
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %21, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %22 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq10 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %22, i32 0, i32 1
  %23 = load i8, i8* %Freq10, align 1
  %conv11 = zext i8 %23 to i32
  store i32 %conv11, i32* %sum, align 4
  %24 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext12 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %24, i32 0, i32 0
  %25 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext12, align 8
  %NumStats13 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %25, i32 0, i32 0
  %26 = load i16, i16* %NumStats13, align 2
  %conv14 = zext i16 %26 to i32
  %sub = sub nsw i32 %conv14, 1
  store i32 %sub, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %27 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %27, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  %Symbol15 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr, i32 0, i32 0
  %28 = load i8, i8* %Symbol15, align 1
  %conv16 = zext i8 %28 to i32
  %29 = load i32, i32* %symbol.addr, align 4
  %cmp17 = icmp eq i32 %conv16, %29
  br i1 %cmp17, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %do.body
  %30 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %31 = load i32, i32* %sum, align 4
  %32 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq20 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %32, i32 0, i32 1
  %33 = load i8, i8* %Freq20, align 1
  %conv21 = zext i8 %33 to i32
  %34 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext22 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %34, i32 0, i32 0
  %35 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext22, align 8
  %SummFreq23 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %35, i32 0, i32 1
  %36 = load i16, i16* %SummFreq23, align 2
  %conv24 = zext i16 %36 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %30, i32 %31, i32 %conv21, i32 %conv24)
  %37 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %38 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState25 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %38, i32 0, i32 2
  store %struct.CPpmd_State* %37, %struct.CPpmd_State** %FoundState25, align 8
  %39 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update1(%struct.CPpmd7* %39)
  br label %return

if.end.26:                                        ; preds = %do.body
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq27 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 1
  %41 = load i8, i8* %Freq27, align 1
  %conv28 = zext i8 %41 to i32
  %42 = load i32, i32* %sum, align 4
  %add = add i32 %42, %conv28
  store i32 %add, i32* %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %43 = load i32, i32* %i, align 4
  %dec = add i32 %43, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState29 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %44, i32 0, i32 2
  %45 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState29, align 8
  %Symbol30 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %45, i32 0, i32 0
  %46 = load i8, i8* %Symbol30, align 1
  %idxprom = zext i8 %46 to i64
  %47 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %47, i32 0, i32 23
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag, i32 0, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1
  %conv31 = zext i8 %48 to i32
  %49 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiBitsFlag = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %49, i32 0, i32 7
  store i32 %conv31, i32* %HiBitsFlag, align 4
  store i32 0, i32* %i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %50 = load i32, i32* %i32, align 4
  %conv33 = zext i32 %50 to i64
  %cmp34 = icmp ult i64 %conv33, 32
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i32, align 4
  %add36 = add i32 %51, 0
  %idxprom37 = zext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom37
  store i64 -1, i64* %arrayidx38, align 8
  %52 = load i32, i32* %i32, align 4
  %add39 = add i32 %52, 1
  %idxprom40 = zext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom40
  store i64 -1, i64* %arrayidx41, align 8
  %53 = load i32, i32* %i32, align 4
  %add42 = add i32 %53, 2
  %idxprom43 = zext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom43
  store i64 -1, i64* %arrayidx44, align 8
  %54 = load i32, i32* %i32, align 4
  %add45 = add i32 %54, 3
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom46
  store i64 -1, i64* %arrayidx47, align 8
  %55 = load i32, i32* %i32, align 4
  %add48 = add i32 %55, 4
  %idxprom49 = zext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom49
  store i64 -1, i64* %arrayidx50, align 8
  %56 = load i32, i32* %i32, align 4
  %add51 = add i32 %56, 5
  %idxprom52 = zext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom52
  store i64 -1, i64* %arrayidx53, align 8
  %57 = load i32, i32* %i32, align 4
  %add54 = add i32 %57, 6
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom55
  store i64 -1, i64* %arrayidx56, align 8
  %58 = load i32, i32* %i32, align 4
  %add57 = add i32 %58, 7
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom58
  store i64 -1, i64* %arrayidx59, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i32, align 4
  %add60 = add i32 %59, 8
  store i32 %add60, i32* %i32, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol61 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %60, i32 0, i32 0
  %61 = load i8, i8* %Symbol61, align 1
  %idxprom62 = zext i8 %61 to i64
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %62 = bitcast i64* %arraydecay to i8*
  %arrayidx63 = getelementptr inbounds i8, i8* %62, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  %63 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext64 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %63, i32 0, i32 0
  %64 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext64, align 8
  %NumStats65 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %64, i32 0, i32 0
  %65 = load i16, i16* %NumStats65, align 2
  %conv66 = zext i16 %65 to i32
  %sub67 = sub nsw i32 %conv66, 1
  store i32 %sub67, i32* %i, align 4
  br label %do.body.68

do.body.68:                                       ; preds = %do.cond.74, %for.end
  %66 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr69 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %66, i32 -1
  store %struct.CPpmd_State* %incdec.ptr69, %struct.CPpmd_State** %s, align 8
  %Symbol70 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr69, i32 0, i32 0
  %67 = load i8, i8* %Symbol70, align 1
  %idxprom71 = zext i8 %67 to i64
  %arraydecay72 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %68 = bitcast i64* %arraydecay72 to i8*
  %arrayidx73 = getelementptr inbounds i8, i8* %68, i64 %idxprom71
  store i8 0, i8* %arrayidx73, align 1
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.68
  %69 = load i32, i32* %i, align 4
  %dec75 = add i32 %69, -1
  store i32 %dec75, i32* %i, align 4
  %tobool76 = icmp ne i32 %dec75, 0
  br i1 %tobool76, label %do.body.68, label %do.end.77

do.end.77:                                        ; preds = %do.cond.74
  %70 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %71 = load i32, i32* %sum, align 4
  %72 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext78 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %72, i32 0, i32 0
  %73 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext78, align 8
  %SummFreq79 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %73, i32 0, i32 1
  %74 = load i16, i16* %SummFreq79, align 2
  %conv80 = zext i16 %74 to i32
  %75 = load i32, i32* %sum, align 4
  %sub81 = sub i32 %conv80, %75
  %76 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext82 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %76, i32 0, i32 0
  %77 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext82, align 8
  %SummFreq83 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %77, i32 0, i32 1
  %78 = load i16, i16* %SummFreq83, align 2
  %conv84 = zext i16 %78 to i32
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %70, i32 %71, i32 %sub81, i32 %conv84)
  br label %if.end.192

if.else:                                          ; preds = %entry
  %79 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess85 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %79, i32 0, i32 5
  %80 = load i32, i32* %PrevSuccess85, align 4
  %81 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base86 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %81, i32 0, i32 12
  %82 = load i8*, i8** %Base86, align 8
  %83 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext87 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %83, i32 0, i32 0
  %84 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext87, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %84, i32 0, i32 3
  %85 = load i32, i32* %Suffix, align 4
  %idx.ext88 = zext i32 %85 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %82, i64 %idx.ext88
  %86 = bitcast i8* %add.ptr89 to %struct.CPpmd7_Context_*
  %NumStats90 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %86, i32 0, i32 0
  %87 = load i16, i16* %NumStats90, align 2
  %conv91 = zext i16 %87 to i32
  %sub92 = sub nsw i32 %conv91, 1
  %idxprom93 = sext i32 %sub92 to i64
  %88 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %88, i32 0, i32 22
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 %idxprom93
  %89 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %89 to i32
  %add96 = add i32 %80, %conv95
  %90 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState97 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %90, i32 0, i32 2
  %91 = load %struct.CPpmd_State*, %struct.CPpmd_State** %FoundState97, align 8
  %Symbol98 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %91, i32 0, i32 0
  %92 = load i8, i8* %Symbol98, align 1
  %idxprom99 = zext i8 %92 to i64
  %93 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag100 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %93, i32 0, i32 23
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag100, i32 0, i64 %idxprom99
  %94 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %94 to i32
  %95 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HiBitsFlag103 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %95, i32 0, i32 7
  store i32 %conv102, i32* %HiBitsFlag103, align 4
  %add104 = add i32 %add96, %conv102
  %96 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext105 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %96, i32 0, i32 0
  %97 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext105, align 8
  %SummFreq106 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %97, i32 0, i32 1
  %98 = bitcast i16* %SummFreq106 to %struct.CPpmd_State*
  %Symbol107 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %98, i32 0, i32 0
  %99 = load i8, i8* %Symbol107, align 1
  %idxprom108 = zext i8 %99 to i64
  %100 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %HB2Flag109 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %100, i32 0, i32 23
  %arrayidx110 = getelementptr inbounds [256 x i8], [256 x i8]* %HB2Flag109, i32 0, i64 %idxprom108
  %101 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %101 to i32
  %mul = mul nsw i32 2, %conv111
  %add112 = add i32 %add104, %mul
  %102 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %102, i32 0, i32 8
  %103 = load i32, i32* %RunLength, align 4
  %shr = ashr i32 %103, 26
  %and = and i32 %shr, 32
  %add113 = add i32 %add112, %and
  %idxprom114 = zext i32 %add113 to i64
  %104 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext115 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %104, i32 0, i32 0
  %105 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext115, align 8
  %SummFreq116 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %105, i32 0, i32 1
  %106 = bitcast i16* %SummFreq116 to %struct.CPpmd_State*
  %Freq117 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %106, i32 0, i32 1
  %107 = load i8, i8* %Freq117, align 1
  %conv118 = zext i8 %107 to i32
  %sub119 = sub nsw i32 %conv118, 1
  %idxprom120 = sext i32 %sub119 to i64
  %108 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %108, i32 0, i32 26
  %arrayidx121 = getelementptr inbounds [128 x [64 x i16]], [128 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx121, i32 0, i64 %idxprom114
  store i16* %arrayidx122, i16** %prob, align 8
  %109 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext124 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %109, i32 0, i32 0
  %110 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext124, align 8
  %SummFreq125 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %110, i32 0, i32 1
  %111 = bitcast i16* %SummFreq125 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %111, %struct.CPpmd_State** %s123, align 8
  %112 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s123, align 8
  %Symbol126 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %112, i32 0, i32 0
  %113 = load i8, i8* %Symbol126, align 1
  %conv127 = zext i8 %113 to i32
  %114 = load i32, i32* %symbol.addr, align 4
  %cmp128 = icmp eq i32 %conv127, %114
  br i1 %cmp128, label %if.then.130, label %if.else.140

if.then.130:                                      ; preds = %if.else
  %115 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %116 = load i16*, i16** %prob, align 8
  %117 = load i16, i16* %116, align 2
  %conv131 = zext i16 %117 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* %115, i32 %conv131)
  %118 = load i16*, i16** %prob, align 8
  %119 = load i16, i16* %118, align 2
  %conv132 = zext i16 %119 to i32
  %add133 = add nsw i32 %conv132, 128
  %120 = load i16*, i16** %prob, align 8
  %121 = load i16, i16* %120, align 2
  %conv134 = zext i16 %121 to i32
  %add135 = add nsw i32 %conv134, 32
  %shr136 = ashr i32 %add135, 7
  %sub137 = sub nsw i32 %add133, %shr136
  %conv138 = trunc i32 %sub137 to i16
  %122 = load i16*, i16** %prob, align 8
  store i16 %conv138, i16* %122, align 2
  %123 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s123, align 8
  %124 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState139 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %124, i32 0, i32 2
  store %struct.CPpmd_State* %123, %struct.CPpmd_State** %FoundState139, align 8
  %125 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_UpdateBin(%struct.CPpmd7* %125)
  br label %return

if.else.140:                                      ; preds = %if.else
  %126 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %127 = load i16*, i16** %prob, align 8
  %128 = load i16, i16* %127, align 2
  %conv141 = zext i16 %128 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* %126, i32 %conv141)
  %129 = load i16*, i16** %prob, align 8
  %130 = load i16, i16* %129, align 2
  %conv142 = zext i16 %130 to i32
  %131 = load i16*, i16** %prob, align 8
  %132 = load i16, i16* %131, align 2
  %conv143 = zext i16 %132 to i32
  %add144 = add nsw i32 %conv143, 32
  %shr145 = ashr i32 %add144, 7
  %sub146 = sub nsw i32 %conv142, %shr145
  %conv147 = trunc i32 %sub146 to i16
  %133 = load i16*, i16** %prob, align 8
  store i16 %conv147, i16* %133, align 2
  %134 = load i16*, i16** %prob, align 8
  %135 = load i16, i16* %134, align 2
  %conv148 = zext i16 %135 to i32
  %shr149 = ashr i32 %conv148, 10
  %idxprom150 = sext i32 %shr149 to i64
  %arrayidx151 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD7_kExpEscape, i32 0, i64 %idxprom150
  %136 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %136 to i32
  %137 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %137, i32 0, i32 4
  store i32 %conv152, i32* %InitEsc, align 4
  store i32 0, i32* %i153, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.183, %if.else.140
  %138 = load i32, i32* %i153, align 4
  %conv155 = zext i32 %138 to i64
  %cmp156 = icmp ult i64 %conv155, 32
  br i1 %cmp156, label %for.body.158, label %for.end.185

for.body.158:                                     ; preds = %for.cond.154
  %139 = load i32, i32* %i153, align 4
  %add159 = add i32 %139, 0
  %idxprom160 = zext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom160
  store i64 -1, i64* %arrayidx161, align 8
  %140 = load i32, i32* %i153, align 4
  %add162 = add i32 %140, 1
  %idxprom163 = zext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom163
  store i64 -1, i64* %arrayidx164, align 8
  %141 = load i32, i32* %i153, align 4
  %add165 = add i32 %141, 2
  %idxprom166 = zext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom166
  store i64 -1, i64* %arrayidx167, align 8
  %142 = load i32, i32* %i153, align 4
  %add168 = add i32 %142, 3
  %idxprom169 = zext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom169
  store i64 -1, i64* %arrayidx170, align 8
  %143 = load i32, i32* %i153, align 4
  %add171 = add i32 %143, 4
  %idxprom172 = zext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom172
  store i64 -1, i64* %arrayidx173, align 8
  %144 = load i32, i32* %i153, align 4
  %add174 = add i32 %144, 5
  %idxprom175 = zext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom175
  store i64 -1, i64* %arrayidx176, align 8
  %145 = load i32, i32* %i153, align 4
  %add177 = add i32 %145, 6
  %idxprom178 = zext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom178
  store i64 -1, i64* %arrayidx179, align 8
  %146 = load i32, i32* %i153, align 4
  %add180 = add i32 %146, 7
  %idxprom181 = zext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom181
  store i64 -1, i64* %arrayidx182, align 8
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.158
  %147 = load i32, i32* %i153, align 4
  %add184 = add i32 %147, 8
  store i32 %add184, i32* %i153, align 4
  br label %for.cond.154

for.end.185:                                      ; preds = %for.cond.154
  %148 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s123, align 8
  %Symbol186 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %148, i32 0, i32 0
  %149 = load i8, i8* %Symbol186, align 1
  %idxprom187 = zext i8 %149 to i64
  %arraydecay188 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %150 = bitcast i64* %arraydecay188 to i8*
  %arrayidx189 = getelementptr inbounds i8, i8* %150, i64 %idxprom187
  store i8 0, i8* %arrayidx189, align 1
  %151 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %PrevSuccess190 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %151, i32 0, i32 5
  store i32 0, i32* %PrevSuccess190, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.185
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %do.end.77
  br label %for.cond.193

for.cond.193:                                     ; preds = %do.end.285, %if.end.192
  %152 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext197 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %152, i32 0, i32 0
  %153 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext197, align 8
  %NumStats198 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %153, i32 0, i32 0
  %154 = load i16, i16* %NumStats198, align 2
  %conv199 = zext i16 %154 to i32
  store i32 %conv199, i32* %numMasked, align 4
  br label %do.body.200

do.body.200:                                      ; preds = %do.cond.212, %for.cond.193
  %155 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %155, i32 0, i32 3
  %156 = load i32, i32* %OrderFall, align 4
  %inc = add i32 %156, 1
  store i32 %inc, i32* %OrderFall, align 4
  %157 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext201 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %157, i32 0, i32 0
  %158 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext201, align 8
  %Suffix202 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %158, i32 0, i32 3
  %159 = load i32, i32* %Suffix202, align 4
  %tobool203 = icmp ne i32 %159, 0
  br i1 %tobool203, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %do.body.200
  br label %return

if.end.205:                                       ; preds = %do.body.200
  %160 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base206 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %160, i32 0, i32 12
  %161 = load i8*, i8** %Base206, align 8
  %162 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext207 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %162, i32 0, i32 0
  %163 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext207, align 8
  %Suffix208 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %163, i32 0, i32 3
  %164 = load i32, i32* %Suffix208, align 4
  %idx.ext209 = zext i32 %164 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %161, i64 %idx.ext209
  %165 = bitcast i8* %add.ptr210 to %struct.CPpmd7_Context_*
  %166 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext211 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %166, i32 0, i32 0
  store %struct.CPpmd7_Context_* %165, %struct.CPpmd7_Context_** %MinContext211, align 8
  br label %do.cond.212

do.cond.212:                                      ; preds = %if.end.205
  %167 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext213 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %167, i32 0, i32 0
  %168 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext213, align 8
  %NumStats214 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %168, i32 0, i32 0
  %169 = load i16, i16* %NumStats214, align 2
  %conv215 = zext i16 %169 to i32
  %170 = load i32, i32* %numMasked, align 4
  %cmp216 = icmp eq i32 %conv215, %170
  br i1 %cmp216, label %do.body.200, label %do.end.218

do.end.218:                                       ; preds = %do.cond.212
  %171 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %172 = load i32, i32* %numMasked, align 4
  %call = call %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7* %171, i32 %172, i32* %escFreq)
  store %struct.CPpmd_See* %call, %struct.CPpmd_See** %see, align 8
  %173 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %Base219 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %173, i32 0, i32 12
  %174 = load i8*, i8** %Base219, align 8
  %175 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext220 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %175, i32 0, i32 0
  %176 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext220, align 8
  %Stats221 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %176, i32 0, i32 2
  %177 = load i32, i32* %Stats221, align 4
  %idx.ext222 = zext i32 %177 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %174, i64 %idx.ext222
  %178 = bitcast i8* %add.ptr223 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %178, %struct.CPpmd_State** %s194, align 8
  store i32 0, i32* %sum195, align 4
  %179 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %MinContext224 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %179, i32 0, i32 0
  %180 = load %struct.CPpmd7_Context_*, %struct.CPpmd7_Context_** %MinContext224, align 8
  %NumStats225 = getelementptr inbounds %struct.CPpmd7_Context_, %struct.CPpmd7_Context_* %180, i32 0, i32 0
  %181 = load i16, i16* %NumStats225, align 2
  %conv226 = zext i16 %181 to i32
  store i32 %conv226, i32* %i196, align 4
  br label %do.body.227

do.body.227:                                      ; preds = %do.cond.282, %do.end.218
  %182 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %Symbol228 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %182, i32 0, i32 0
  %183 = load i8, i8* %Symbol228, align 1
  %conv229 = zext i8 %183 to i32
  store i32 %conv229, i32* %cur, align 4
  %184 = load i32, i32* %cur, align 4
  %185 = load i32, i32* %symbol.addr, align 4
  %cmp230 = icmp eq i32 %184, %185
  br i1 %cmp230, label %if.then.232, label %if.end.269

if.then.232:                                      ; preds = %do.body.227
  %186 = load i32, i32* %sum195, align 4
  store i32 %186, i32* %low, align 4
  %187 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  store %struct.CPpmd_State* %187, %struct.CPpmd_State** %s1, align 8
  br label %do.body.233

do.body.233:                                      ; preds = %do.cond.244, %if.then.232
  %188 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %Freq234 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %188, i32 0, i32 1
  %189 = load i8, i8* %Freq234, align 1
  %conv235 = zext i8 %189 to i32
  %190 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %Symbol236 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %190, i32 0, i32 0
  %191 = load i8, i8* %Symbol236, align 1
  %idxprom237 = zext i8 %191 to i64
  %arraydecay238 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %192 = bitcast i64* %arraydecay238 to i8*
  %arrayidx239 = getelementptr inbounds i8, i8* %192, i64 %idxprom237
  %193 = load i8, i8* %arrayidx239, align 1
  %conv240 = sext i8 %193 to i32
  %and241 = and i32 %conv235, %conv240
  %194 = load i32, i32* %sum195, align 4
  %add242 = add i32 %194, %and241
  store i32 %add242, i32* %sum195, align 4
  %195 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %incdec.ptr243 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %195, i32 1
  store %struct.CPpmd_State* %incdec.ptr243, %struct.CPpmd_State** %s194, align 8
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.body.233
  %196 = load i32, i32* %i196, align 4
  %dec245 = add i32 %196, -1
  store i32 %dec245, i32* %i196, align 4
  %tobool246 = icmp ne i32 %dec245, 0
  br i1 %tobool246, label %do.body.233, label %do.end.247

do.end.247:                                       ; preds = %do.cond.244
  %197 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %198 = load i32, i32* %low, align 4
  %199 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %Freq248 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %199, i32 0, i32 1
  %200 = load i8, i8* %Freq248, align 1
  %conv249 = zext i8 %200 to i32
  %201 = load i32, i32* %sum195, align 4
  %202 = load i32, i32* %escFreq, align 4
  %add250 = add i32 %201, %202
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %197, i32 %198, i32 %conv249, i32 %add250)
  %203 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %203, i32 0, i32 1
  %204 = load i8, i8* %Shift, align 1
  %conv251 = zext i8 %204 to i32
  %cmp252 = icmp slt i32 %conv251, 7
  br i1 %cmp252, label %land.lhs.true, label %if.end.267

land.lhs.true:                                    ; preds = %do.end.247
  %205 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %205, i32 0, i32 2
  %206 = load i8, i8* %Count, align 1
  %dec254 = add i8 %206, -1
  store i8 %dec254, i8* %Count, align 1
  %conv255 = zext i8 %dec254 to i32
  %cmp256 = icmp eq i32 %conv255, 0
  br i1 %cmp256, label %if.then.258, label %if.end.267

if.then.258:                                      ; preds = %land.lhs.true
  %207 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %207, i32 0, i32 0
  %208 = load i16, i16* %Summ, align 1
  %conv259 = zext i16 %208 to i32
  %shl = shl i32 %conv259, 1
  %conv260 = trunc i32 %shl to i16
  store i16 %conv260, i16* %Summ, align 1
  %209 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift261 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %209, i32 0, i32 1
  %210 = load i8, i8* %Shift261, align 1
  %inc262 = add i8 %210, 1
  store i8 %inc262, i8* %Shift261, align 1
  %conv263 = zext i8 %210 to i32
  %shl264 = shl i32 3, %conv263
  %conv265 = trunc i32 %shl264 to i8
  %211 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count266 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %211, i32 0, i32 2
  store i8 %conv265, i8* %Count266, align 1
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.258, %land.lhs.true, %do.end.247
  %212 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %213 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  %FoundState268 = getelementptr inbounds %struct.CPpmd7, %struct.CPpmd7* %213, i32 0, i32 2
  store %struct.CPpmd_State* %212, %struct.CPpmd_State** %FoundState268, align 8
  %214 = load %struct.CPpmd7*, %struct.CPpmd7** %p.addr, align 8
  call void @Ppmd7_Update2(%struct.CPpmd7* %214)
  br label %return

if.end.269:                                       ; preds = %do.body.227
  %215 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %Freq270 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %215, i32 0, i32 1
  %216 = load i8, i8* %Freq270, align 1
  %conv271 = zext i8 %216 to i32
  %217 = load i32, i32* %cur, align 4
  %idxprom272 = sext i32 %217 to i64
  %arraydecay273 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %218 = bitcast i64* %arraydecay273 to i8*
  %arrayidx274 = getelementptr inbounds i8, i8* %218, i64 %idxprom272
  %219 = load i8, i8* %arrayidx274, align 1
  %conv275 = sext i8 %219 to i32
  %and276 = and i32 %conv271, %conv275
  %220 = load i32, i32* %sum195, align 4
  %add277 = add i32 %220, %and276
  store i32 %add277, i32* %sum195, align 4
  %221 = load i32, i32* %cur, align 4
  %idxprom278 = sext i32 %221 to i64
  %arraydecay279 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %222 = bitcast i64* %arraydecay279 to i8*
  %arrayidx280 = getelementptr inbounds i8, i8* %222, i64 %idxprom278
  store i8 0, i8* %arrayidx280, align 1
  %223 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s194, align 8
  %incdec.ptr281 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %223, i32 1
  store %struct.CPpmd_State* %incdec.ptr281, %struct.CPpmd_State** %s194, align 8
  br label %do.cond.282

do.cond.282:                                      ; preds = %if.end.269
  %224 = load i32, i32* %i196, align 4
  %dec283 = add i32 %224, -1
  store i32 %dec283, i32* %i196, align 4
  %tobool284 = icmp ne i32 %dec283, 0
  br i1 %tobool284, label %do.body.227, label %do.end.285

do.end.285:                                       ; preds = %do.cond.282
  %225 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %rc.addr, align 8
  %226 = load i32, i32* %sum195, align 4
  %227 = load i32, i32* %escFreq, align 4
  %228 = load i32, i32* %sum195, align 4
  %229 = load i32, i32* %escFreq, align 4
  %add286 = add i32 %228, %229
  call void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %225, i32 %226, i32 %227, i32 %add286)
  %230 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ287 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %230, i32 0, i32 0
  %231 = load i16, i16* %Summ287, align 1
  %conv288 = zext i16 %231 to i32
  %232 = load i32, i32* %sum195, align 4
  %add289 = add i32 %conv288, %232
  %233 = load i32, i32* %escFreq, align 4
  %add290 = add i32 %add289, %233
  %conv291 = trunc i32 %add290 to i16
  %234 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ292 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %234, i32 0, i32 0
  store i16 %conv291, i16* %Summ292, align 1
  br label %for.cond.193

return:                                           ; preds = %if.end.267, %if.then.204, %if.then.130, %if.then.19, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd7z_RangeEnc* %p, i32 %start, i32 %size, i32 %total) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %start.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %total.addr, align 4
  %2 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %2, i32 0, i32 1
  %3 = load i32, i32* %Range, align 4
  %div = udiv i32 %3, %1
  store i32 %div, i32* %Range, align 4
  %mul = mul i32 %0, %div
  %conv = zext i32 %mul to i64
  %4 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %4, i32 0, i32 0
  %5 = load i64, i64* %Low, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %Low, align 8
  %6 = load i32, i32* %size.addr, align 4
  %7 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %7, i32 0, i32 1
  %8 = load i32, i32* %Range1, align 4
  %mul2 = mul i32 %8, %6
  store i32 %mul2, i32* %Range1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range3 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %9, i32 0, i32 1
  %10 = load i32, i32* %Range3, align 4
  %cmp = icmp ult i32 %10, 16777216
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range5 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %11, i32 0, i32 1
  %12 = load i32, i32* %Range5, align 4
  %shl = shl i32 %12, 8
  store i32 %shl, i32* %Range5, align 4
  %13 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @Ppmd7_Update1_0(%struct.CPpmd7*) #1

declare void @Ppmd7_Update1(%struct.CPpmd7*) #1

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd7z_RangeEnc* %p, i32 %size0) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %size0.addr = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  store i32 %size0, i32* %size0.addr, align 4
  %0 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i32 0, i32 1
  %1 = load i32, i32* %Range, align 4
  %shr = lshr i32 %1, 14
  %2 = load i32, i32* %size0.addr, align 4
  %mul = mul i32 %shr, %2
  %3 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %3, i32 0, i32 1
  store i32 %mul, i32* %Range1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range2 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %4, i32 0, i32 1
  %5 = load i32, i32* %Range2, align 4
  %cmp = icmp ult i32 %5, 16777216
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range3 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %6, i32 0, i32 1
  %7 = load i32, i32* %Range3, align 4
  %shl = shl i32 %7, 8
  store i32 %shl, i32* %Range3, align 4
  %8 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* %8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @Ppmd7_UpdateBin(%struct.CPpmd7*) #1

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd7z_RangeEnc* %p, i32 %size0) #0 {
entry:
  %p.addr = alloca %struct.CPpmd7z_RangeEnc*, align 8
  %size0.addr = alloca i32, align 4
  %newBound = alloca i32, align 4
  store %struct.CPpmd7z_RangeEnc* %p, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  store i32 %size0, i32* %size0.addr, align 4
  %0 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %0, i32 0, i32 1
  %1 = load i32, i32* %Range, align 4
  %shr = lshr i32 %1, 14
  %2 = load i32, i32* %size0.addr, align 4
  %mul = mul i32 %shr, %2
  store i32 %mul, i32* %newBound, align 4
  %3 = load i32, i32* %newBound, align 4
  %conv = zext i32 %3 to i64
  %4 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %4, i32 0, i32 0
  %5 = load i64, i64* %Low, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %Low, align 8
  %6 = load i32, i32* %newBound, align 4
  %7 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %7, i32 0, i32 1
  %8 = load i32, i32* %Range1, align 4
  %sub = sub i32 %8, %6
  store i32 %sub, i32* %Range1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range2 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %9, i32 0, i32 1
  %10 = load i32, i32* %Range2, align 4
  %cmp = icmp ult i32 %10, 16777216
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  %Range4 = getelementptr inbounds %struct.CPpmd7z_RangeEnc, %struct.CPpmd7z_RangeEnc* %11, i32 0, i32 1
  %12 = load i32, i32* %Range4, align 4
  %shl = shl i32 %12, 8
  store i32 %shl, i32* %Range4, align 4
  %13 = load %struct.CPpmd7z_RangeEnc*, %struct.CPpmd7z_RangeEnc** %p.addr, align 8
  call void @RangeEnc_ShiftLow(%struct.CPpmd7z_RangeEnc* %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.CPpmd_See* @Ppmd7_MakeEscFreq(%struct.CPpmd7*, i32, i32*) #1

declare void @Ppmd7_Update2(%struct.CPpmd7*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
