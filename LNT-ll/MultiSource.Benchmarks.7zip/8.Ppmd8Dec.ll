; ModuleID = './MultiSource.Benchmarks.7zip/8.Ppmd8Dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd8 = type { %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, %union.anon, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%struct.CPpmd8_Context_ = type { i8, i8, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%union.anon = type { %struct.IByteIn* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd_See = type { i16, i8, i8 }

@PPMD8_kExpEscape = external constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define i32 @Ppmd8_RangeDec_Init(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %i = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 20
  store i32 0, i32* %Low, align 4
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 18
  store i32 -1, i32* %Range, align 4
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 19
  store i32 0, i32* %Code, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 19
  %5 = load i32, i32* %Code1, align 4
  %shl = shl i32 %5, 8
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 21
  %In = bitcast %union.anon* %Stream to %struct.IByteIn**
  %7 = load %struct.IByteIn*, %struct.IByteIn** %In, align 8
  %Read = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %7, i32 0, i32 0
  %8 = load i8 (i8*)*, i8 (i8*)** %Read, align 8
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %9, i32 0, i32 21
  %In3 = bitcast %union.anon* %Stream2 to %struct.IByteIn**
  %10 = load %struct.IByteIn*, %struct.IByteIn** %In3, align 8
  %11 = bitcast %struct.IByteIn* %10 to i8*
  %call = call zeroext i8 %8(i8* %11)
  %conv = zext i8 %call to i32
  %or = or i32 %shl, %conv
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 19
  store i32 %or, i32* %Code4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 19
  %15 = load i32, i32* %Code5, align 4
  %cmp6 = icmp ult i32 %15, -1
  %conv7 = zext i1 %cmp6 to i32
  ret i32 %conv7
}

; Function Attrs: nounwind uwtable
define i32 @Ppmd8_DecodeSymbol(%struct.CPpmd8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CPpmd8*, align 8
  %charMask = alloca [32 x i64], align 16
  %s = alloca %struct.CPpmd_State*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %hiCnt = alloca i32, align 4
  %symbol = alloca i8, align 1
  %symbol20 = alloca i8, align 1
  %i40 = alloca i32, align 4
  %prob = alloca i16*, align 8
  %symbol113 = alloca i8, align 1
  %i142 = alloca i32, align 4
  %ps = alloca [256 x %struct.CPpmd_State*], align 16
  %s184 = alloca %struct.CPpmd_State*, align 8
  %freqSum = alloca i32, align 4
  %count185 = alloca i32, align 4
  %hiCnt186 = alloca i32, align 4
  %see = alloca %struct.CPpmd_See*, align 8
  %i187 = alloca i32, align 4
  %num = alloca i32, align 4
  %numMasked = alloca i32, align 4
  %k = alloca i32, align 4
  %symbol243 = alloca i8, align 1
  %pps = alloca %struct.CPpmd_State**, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 0
  %1 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext, align 8
  %NumStats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %1, i32 0, i32 0
  %2 = load i8, i8* %NumStats, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 11
  %4 = load i8*, i8** %Base, align 8
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %5, i32 0, i32 0
  %6 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext2, align 8
  %Stats = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %6, i32 0, i32 3
  %7 = load i32, i32* %Stats, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %8 = bitcast i8* %add.ptr to %struct.CPpmd_State*
  store %struct.CPpmd_State* %8, %struct.CPpmd_State** %s, align 8
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 0
  %11 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext3, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %11, i32 0, i32 2
  %12 = load i16, i16* %SummFreq, align 2
  %conv4 = zext i16 %12 to i32
  %call = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* %9, i32 %conv4)
  store i32 %call, i32* %count, align 4
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i32 0, i32 1
  %14 = load i8, i8* %Freq, align 1
  %conv5 = zext i8 %14 to i32
  store i32 %conv5, i32* %hiCnt, align 4
  %cmp6 = icmp ult i32 %call, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %16 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq9 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %16, i32 0, i32 1
  %17 = load i8, i8* %Freq9, align 1
  %conv10 = zext i8 %17 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* %15, i32 0, i32 %conv10)
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 2
  store %struct.CPpmd_State* %18, %struct.CPpmd_State** %FoundState, align 8
  %20 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %20, i32 0, i32 0
  %21 = load i8, i8* %Symbol, align 1
  store i8 %21, i8* %symbol, align 1
  %22 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update1_0(%struct.CPpmd8* %22)
  %23 = load i8, i8* %symbol, align 1
  %conv11 = zext i8 %23 to i32
  store i32 %conv11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %25 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %25, i32 0, i32 0
  %26 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext12, align 8
  %NumStats13 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %26, i32 0, i32 0
  %27 = load i8, i8* %NumStats13, align 1
  %conv14 = zext i8 %27 to i32
  store i32 %conv14, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %28 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %28, i32 1
  store %struct.CPpmd_State* %incdec.ptr, %struct.CPpmd_State** %s, align 8
  %Freq15 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr, i32 0, i32 1
  %29 = load i8, i8* %Freq15, align 1
  %conv16 = zext i8 %29 to i32
  %30 = load i32, i32* %hiCnt, align 4
  %add = add i32 %30, %conv16
  store i32 %add, i32* %hiCnt, align 4
  %31 = load i32, i32* %count, align 4
  %cmp17 = icmp ugt i32 %add, %31
  br i1 %cmp17, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %do.body
  %32 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %33 = load i32, i32* %hiCnt, align 4
  %34 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq21 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %34, i32 0, i32 1
  %35 = load i8, i8* %Freq21, align 1
  %conv22 = zext i8 %35 to i32
  %sub = sub i32 %33, %conv22
  %36 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq23 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %36, i32 0, i32 1
  %37 = load i8, i8* %Freq23, align 1
  %conv24 = zext i8 %37 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* %32, i32 %sub, i32 %conv24)
  %38 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %39, i32 0, i32 2
  store %struct.CPpmd_State* %38, %struct.CPpmd_State** %FoundState25, align 8
  %40 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol26 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %40, i32 0, i32 0
  %41 = load i8, i8* %Symbol26, align 1
  store i8 %41, i8* %symbol20, align 1
  %42 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update1(%struct.CPpmd8* %42)
  %43 = load i8, i8* %symbol20, align 1
  %conv27 = zext i8 %43 to i32
  store i32 %conv27, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %44 = load i32, i32* %i, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load i32, i32* %count, align 4
  %46 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext29 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %46, i32 0, i32 0
  %47 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext29, align 8
  %SummFreq30 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %47, i32 0, i32 2
  %48 = load i16, i16* %SummFreq30, align 2
  %conv31 = zext i16 %48 to i32
  %cmp32 = icmp uge i32 %45, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.end
  store i32 -2, i32* %retval
  br label %return

if.end.35:                                        ; preds = %do.end
  %49 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %50 = load i32, i32* %hiCnt, align 4
  %51 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext36 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %51, i32 0, i32 0
  %52 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext36, align 8
  %SummFreq37 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %52, i32 0, i32 2
  %53 = load i16, i16* %SummFreq37, align 2
  %conv38 = zext i16 %53 to i32
  %54 = load i32, i32* %hiCnt, align 4
  %sub39 = sub i32 %conv38, %54
  call void @RangeDec_Decode(%struct.CPpmd8* %49, i32 %50, i32 %sub39)
  store i32 0, i32* %i40, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %55 = load i32, i32* %i40, align 4
  %conv41 = zext i32 %55 to i64
  %cmp42 = icmp ult i64 %conv41, 32
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %i40, align 4
  %add44 = add i32 %56, 0
  %idxprom = zext i32 %add44 to i64
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom
  store i64 -1, i64* %arrayidx, align 8
  %57 = load i32, i32* %i40, align 4
  %add45 = add i32 %57, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom46
  store i64 -1, i64* %arrayidx47, align 8
  %58 = load i32, i32* %i40, align 4
  %add48 = add i32 %58, 2
  %idxprom49 = zext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom49
  store i64 -1, i64* %arrayidx50, align 8
  %59 = load i32, i32* %i40, align 4
  %add51 = add i32 %59, 3
  %idxprom52 = zext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom52
  store i64 -1, i64* %arrayidx53, align 8
  %60 = load i32, i32* %i40, align 4
  %add54 = add i32 %60, 4
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom55
  store i64 -1, i64* %arrayidx56, align 8
  %61 = load i32, i32* %i40, align 4
  %add57 = add i32 %61, 5
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom58
  store i64 -1, i64* %arrayidx59, align 8
  %62 = load i32, i32* %i40, align 4
  %add60 = add i32 %62, 6
  %idxprom61 = zext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom61
  store i64 -1, i64* %arrayidx62, align 8
  %63 = load i32, i32* %i40, align 4
  %add63 = add i32 %63, 7
  %idxprom64 = zext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom64
  store i64 -1, i64* %arrayidx65, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i40, align 4
  %add66 = add i32 %64, 8
  store i32 %add66, i32* %i40, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol67 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %65, i32 0, i32 0
  %66 = load i8, i8* %Symbol67, align 1
  %idxprom68 = zext i8 %66 to i64
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %67 = bitcast i64* %arraydecay to i8*
  %arrayidx69 = getelementptr inbounds i8, i8* %67, i64 %idxprom68
  store i8 0, i8* %arrayidx69, align 1
  %68 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext70 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %68, i32 0, i32 0
  %69 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext70, align 8
  %NumStats71 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %69, i32 0, i32 0
  %70 = load i8, i8* %NumStats71, align 1
  %conv72 = zext i8 %70 to i32
  store i32 %conv72, i32* %i, align 4
  br label %do.body.73

do.body.73:                                       ; preds = %do.cond.79, %for.end
  %71 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %71, i32 -1
  store %struct.CPpmd_State* %incdec.ptr74, %struct.CPpmd_State** %s, align 8
  %Symbol75 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr74, i32 0, i32 0
  %72 = load i8, i8* %Symbol75, align 1
  %idxprom76 = zext i8 %72 to i64
  %arraydecay77 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %73 = bitcast i64* %arraydecay77 to i8*
  %arrayidx78 = getelementptr inbounds i8, i8* %73, i64 %idxprom76
  store i8 0, i8* %arrayidx78, align 1
  br label %do.cond.79

do.cond.79:                                       ; preds = %do.body.73
  %74 = load i32, i32* %i, align 4
  %dec80 = add i32 %74, -1
  store i32 %dec80, i32* %i, align 4
  %tobool81 = icmp ne i32 %dec80, 0
  br i1 %tobool81, label %do.body.73, label %do.end.82

do.end.82:                                        ; preds = %do.cond.79
  br label %if.end.182

if.else:                                          ; preds = %entry
  %75 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base83 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %75, i32 0, i32 11
  %76 = load i8*, i8** %Base83, align 8
  %77 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext84 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %77, i32 0, i32 0
  %78 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext84, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %78, i32 0, i32 4
  %79 = load i32, i32* %Suffix, align 4
  %idx.ext85 = zext i32 %79 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %76, i64 %idx.ext85
  %80 = bitcast i8* %add.ptr86 to %struct.CPpmd8_Context_*
  %NumStats87 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %80, i32 0, i32 0
  %81 = load i8, i8* %NumStats87, align 1
  %idxprom88 = zext i8 %81 to i64
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 26
  %arrayidx89 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 %idxprom88
  %83 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %83 to i32
  %84 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess91 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %84, i32 0, i32 5
  %85 = load i32, i32* %PrevSuccess91, align 4
  %add92 = add i32 %conv90, %85
  %86 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext93 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %86, i32 0, i32 0
  %87 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext93, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %87, i32 0, i32 1
  %88 = load i8, i8* %Flags, align 1
  %conv94 = zext i8 %88 to i32
  %add95 = add i32 %add92, %conv94
  %89 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %89, i32 0, i32 7
  %90 = load i32, i32* %RunLength, align 4
  %shr = ashr i32 %90, 26
  %and = and i32 %shr, 32
  %add96 = add i32 %add95, %and
  %idxprom97 = zext i32 %add96 to i64
  %91 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext98 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %91, i32 0, i32 0
  %92 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext98, align 8
  %SummFreq99 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %92, i32 0, i32 2
  %93 = bitcast i16* %SummFreq99 to %struct.CPpmd_State*
  %Freq100 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %93, i32 0, i32 1
  %94 = load i8, i8* %Freq100, align 1
  %conv101 = zext i8 %94 to i32
  %sub102 = sub nsw i32 %conv101, 1
  %idxprom103 = sext i32 %sub102 to i64
  %95 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %95, i32 0, i32 27
  %arrayidx104 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx, i32 0, i64 %idxprom103
  %96 = load i8, i8* %arrayidx104, align 1
  %idxprom105 = zext i8 %96 to i64
  %97 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %97, i32 0, i32 30
  %arrayidx106 = getelementptr inbounds [25 x [64 x i16]], [25 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx106, i32 0, i64 %idxprom97
  store i16* %arrayidx107, i16** %prob, align 8
  %98 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %98, i32 0, i32 19
  %99 = load i32, i32* %Code, align 4
  %100 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %100, i32 0, i32 18
  %101 = load i32, i32* %Range, align 4
  %shr108 = lshr i32 %101, 14
  store i32 %shr108, i32* %Range, align 4
  %div = udiv i32 %99, %shr108
  %102 = load i16*, i16** %prob, align 8
  %103 = load i16, i16* %102, align 2
  %conv109 = zext i16 %103 to i32
  %cmp110 = icmp ult i32 %div, %conv109
  br i1 %cmp110, label %if.then.112, label %if.end.127

if.then.112:                                      ; preds = %if.else
  %104 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %105 = load i16*, i16** %prob, align 8
  %106 = load i16, i16* %105, align 2
  %conv114 = zext i16 %106 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* %104, i32 0, i32 %conv114)
  %107 = load i16*, i16** %prob, align 8
  %108 = load i16, i16* %107, align 2
  %conv115 = zext i16 %108 to i32
  %add116 = add nsw i32 %conv115, 128
  %109 = load i16*, i16** %prob, align 8
  %110 = load i16, i16* %109, align 2
  %conv117 = zext i16 %110 to i32
  %add118 = add nsw i32 %conv117, 32
  %shr119 = ashr i32 %add118, 7
  %sub120 = sub nsw i32 %add116, %shr119
  %conv121 = trunc i32 %sub120 to i16
  %111 = load i16*, i16** %prob, align 8
  store i16 %conv121, i16* %111, align 2
  %112 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext122 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %112, i32 0, i32 0
  %113 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext122, align 8
  %SummFreq123 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %113, i32 0, i32 2
  %114 = bitcast i16* %SummFreq123 to %struct.CPpmd_State*
  %115 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState124 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %115, i32 0, i32 2
  store %struct.CPpmd_State* %114, %struct.CPpmd_State** %FoundState124, align 8
  %Symbol125 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %114, i32 0, i32 0
  %116 = load i8, i8* %Symbol125, align 1
  store i8 %116, i8* %symbol113, align 1
  %117 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* %117)
  %118 = load i8, i8* %symbol113, align 1
  %conv126 = zext i8 %118 to i32
  store i32 %conv126, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.else
  %119 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %120 = load i16*, i16** %prob, align 8
  %121 = load i16, i16* %120, align 2
  %conv128 = zext i16 %121 to i32
  %122 = load i16*, i16** %prob, align 8
  %123 = load i16, i16* %122, align 2
  %conv129 = zext i16 %123 to i32
  %sub130 = sub nsw i32 16384, %conv129
  call void @RangeDec_Decode(%struct.CPpmd8* %119, i32 %conv128, i32 %sub130)
  %124 = load i16*, i16** %prob, align 8
  %125 = load i16, i16* %124, align 2
  %conv131 = zext i16 %125 to i32
  %126 = load i16*, i16** %prob, align 8
  %127 = load i16, i16* %126, align 2
  %conv132 = zext i16 %127 to i32
  %add133 = add nsw i32 %conv132, 32
  %shr134 = ashr i32 %add133, 7
  %sub135 = sub nsw i32 %conv131, %shr134
  %conv136 = trunc i32 %sub135 to i16
  %128 = load i16*, i16** %prob, align 8
  store i16 %conv136, i16* %128, align 2
  %129 = load i16*, i16** %prob, align 8
  %130 = load i16, i16* %129, align 2
  %conv137 = zext i16 %130 to i32
  %shr138 = ashr i32 %conv137, 10
  %idxprom139 = sext i32 %shr138 to i64
  %arrayidx140 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i32 0, i64 %idxprom139
  %131 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %131 to i32
  %132 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %132, i32 0, i32 4
  store i32 %conv141, i32* %InitEsc, align 4
  store i32 0, i32* %i142, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.172, %if.end.127
  %133 = load i32, i32* %i142, align 4
  %conv144 = zext i32 %133 to i64
  %cmp145 = icmp ult i64 %conv144, 32
  br i1 %cmp145, label %for.body.147, label %for.end.174

for.body.147:                                     ; preds = %for.cond.143
  %134 = load i32, i32* %i142, align 4
  %add148 = add i32 %134, 0
  %idxprom149 = zext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom149
  store i64 -1, i64* %arrayidx150, align 8
  %135 = load i32, i32* %i142, align 4
  %add151 = add i32 %135, 1
  %idxprom152 = zext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom152
  store i64 -1, i64* %arrayidx153, align 8
  %136 = load i32, i32* %i142, align 4
  %add154 = add i32 %136, 2
  %idxprom155 = zext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom155
  store i64 -1, i64* %arrayidx156, align 8
  %137 = load i32, i32* %i142, align 4
  %add157 = add i32 %137, 3
  %idxprom158 = zext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom158
  store i64 -1, i64* %arrayidx159, align 8
  %138 = load i32, i32* %i142, align 4
  %add160 = add i32 %138, 4
  %idxprom161 = zext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom161
  store i64 -1, i64* %arrayidx162, align 8
  %139 = load i32, i32* %i142, align 4
  %add163 = add i32 %139, 5
  %idxprom164 = zext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom164
  store i64 -1, i64* %arrayidx165, align 8
  %140 = load i32, i32* %i142, align 4
  %add166 = add i32 %140, 6
  %idxprom167 = zext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom167
  store i64 -1, i64* %arrayidx168, align 8
  %141 = load i32, i32* %i142, align 4
  %add169 = add i32 %141, 7
  %idxprom170 = zext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom170
  store i64 -1, i64* %arrayidx171, align 8
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.147
  %142 = load i32, i32* %i142, align 4
  %add173 = add i32 %142, 8
  store i32 %add173, i32* %i142, align 4
  br label %for.cond.143

for.end.174:                                      ; preds = %for.cond.143
  %143 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext175 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %143, i32 0, i32 0
  %144 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext175, align 8
  %SummFreq176 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %144, i32 0, i32 2
  %145 = bitcast i16* %SummFreq176 to %struct.CPpmd_State*
  %Symbol177 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %145, i32 0, i32 0
  %146 = load i8, i8* %Symbol177, align 1
  %idxprom178 = zext i8 %146 to i64
  %arraydecay179 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %147 = bitcast i64* %arraydecay179 to i8*
  %arrayidx180 = getelementptr inbounds i8, i8* %147, i64 %idxprom178
  store i8 0, i8* %arrayidx180, align 1
  %148 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess181 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %148, i32 0, i32 5
  store i32 0, i32* %PrevSuccess181, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %for.end.174, %do.end.82
  br label %for.cond.183

for.cond.183:                                     ; preds = %do.end.302, %if.end.182
  %149 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext188 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %149, i32 0, i32 0
  %150 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext188, align 8
  %NumStats189 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %150, i32 0, i32 0
  %151 = load i8, i8* %NumStats189, align 1
  %conv190 = zext i8 %151 to i32
  store i32 %conv190, i32* %numMasked, align 4
  br label %do.body.191

do.body.191:                                      ; preds = %do.cond.203, %for.cond.183
  %152 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %152, i32 0, i32 3
  %153 = load i32, i32* %OrderFall, align 4
  %inc = add i32 %153, 1
  store i32 %inc, i32* %OrderFall, align 4
  %154 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext192 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %154, i32 0, i32 0
  %155 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext192, align 8
  %Suffix193 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %155, i32 0, i32 4
  %156 = load i32, i32* %Suffix193, align 4
  %tobool194 = icmp ne i32 %156, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %do.body.191
  store i32 -1, i32* %retval
  br label %return

if.end.196:                                       ; preds = %do.body.191
  %157 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base197 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %157, i32 0, i32 11
  %158 = load i8*, i8** %Base197, align 8
  %159 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext198 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %159, i32 0, i32 0
  %160 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext198, align 8
  %Suffix199 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %160, i32 0, i32 4
  %161 = load i32, i32* %Suffix199, align 4
  %idx.ext200 = zext i32 %161 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %158, i64 %idx.ext200
  %162 = bitcast i8* %add.ptr201 to %struct.CPpmd8_Context_*
  %163 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext202 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %163, i32 0, i32 0
  store %struct.CPpmd8_Context_* %162, %struct.CPpmd8_Context_** %MinContext202, align 8
  br label %do.cond.203

do.cond.203:                                      ; preds = %if.end.196
  %164 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext204 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %164, i32 0, i32 0
  %165 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext204, align 8
  %NumStats205 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %165, i32 0, i32 0
  %166 = load i8, i8* %NumStats205, align 1
  %conv206 = zext i8 %166 to i32
  %167 = load i32, i32* %numMasked, align 4
  %cmp207 = icmp eq i32 %conv206, %167
  br i1 %cmp207, label %do.body.191, label %do.end.209

do.end.209:                                       ; preds = %do.cond.203
  store i32 0, i32* %hiCnt186, align 4
  %168 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base210 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %168, i32 0, i32 11
  %169 = load i8*, i8** %Base210, align 8
  %170 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext211 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %170, i32 0, i32 0
  %171 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext211, align 8
  %Stats212 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %171, i32 0, i32 3
  %172 = load i32, i32* %Stats212, align 4
  %idx.ext213 = zext i32 %172 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %169, i64 %idx.ext213
  %173 = bitcast i8* %add.ptr214 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %173, %struct.CPpmd_State** %s184, align 8
  store i32 0, i32* %i187, align 4
  %174 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext215 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %174, i32 0, i32 0
  %175 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext215, align 8
  %NumStats216 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %175, i32 0, i32 0
  %176 = load i8, i8* %NumStats216, align 1
  %conv217 = zext i8 %176 to i32
  %177 = load i32, i32* %numMasked, align 4
  %sub218 = sub i32 %conv217, %177
  store i32 %sub218, i32* %num, align 4
  br label %do.body.219

do.body.219:                                      ; preds = %do.cond.233, %do.end.209
  %178 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %Symbol220 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %178, i32 0, i32 0
  %179 = load i8, i8* %Symbol220, align 1
  %idxprom221 = zext i8 %179 to i64
  %arraydecay222 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %180 = bitcast i64* %arraydecay222 to i8*
  %arrayidx223 = getelementptr inbounds i8, i8* %180, i64 %idxprom221
  %181 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %181 to i32
  store i32 %conv224, i32* %k, align 4
  %182 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %Freq225 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %182, i32 0, i32 1
  %183 = load i8, i8* %Freq225, align 1
  %conv226 = zext i8 %183 to i32
  %184 = load i32, i32* %k, align 4
  %and227 = and i32 %conv226, %184
  %185 = load i32, i32* %hiCnt186, align 4
  %add228 = add i32 %185, %and227
  store i32 %add228, i32* %hiCnt186, align 4
  %186 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %incdec.ptr229 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %186, i32 1
  store %struct.CPpmd_State* %incdec.ptr229, %struct.CPpmd_State** %s184, align 8
  %187 = load i32, i32* %i187, align 4
  %idxprom230 = zext i32 %187 to i64
  %arrayidx231 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom230
  store %struct.CPpmd_State* %186, %struct.CPpmd_State** %arrayidx231, align 8
  %188 = load i32, i32* %k, align 4
  %189 = load i32, i32* %i187, align 4
  %sub232 = sub i32 %189, %188
  store i32 %sub232, i32* %i187, align 4
  br label %do.cond.233

do.cond.233:                                      ; preds = %do.body.219
  %190 = load i32, i32* %i187, align 4
  %191 = load i32, i32* %num, align 4
  %cmp234 = icmp ne i32 %190, %191
  br i1 %cmp234, label %do.body.219, label %do.end.236

do.end.236:                                       ; preds = %do.cond.233
  %192 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %193 = load i32, i32* %numMasked, align 4
  %call237 = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* %192, i32 %193, i32* %freqSum)
  store %struct.CPpmd_See* %call237, %struct.CPpmd_See** %see, align 8
  %194 = load i32, i32* %hiCnt186, align 4
  %195 = load i32, i32* %freqSum, align 4
  %add238 = add i32 %195, %194
  store i32 %add238, i32* %freqSum, align 4
  %196 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %197 = load i32, i32* %freqSum, align 4
  %call239 = call i32 @RangeDec_GetThreshold(%struct.CPpmd8* %196, i32 %197)
  store i32 %call239, i32* %count185, align 4
  %198 = load i32, i32* %count185, align 4
  %199 = load i32, i32* %hiCnt186, align 4
  %cmp240 = icmp ult i32 %198, %199
  br i1 %cmp240, label %if.then.242, label %if.end.280

if.then.242:                                      ; preds = %do.end.236
  %arraydecay244 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i32 0
  store %struct.CPpmd_State** %arraydecay244, %struct.CPpmd_State*** %pps, align 8
  store i32 0, i32* %hiCnt186, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.252, %if.then.242
  %200 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %201 = load %struct.CPpmd_State*, %struct.CPpmd_State** %200, align 8
  %Freq246 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %201, i32 0, i32 1
  %202 = load i8, i8* %Freq246, align 1
  %conv247 = zext i8 %202 to i32
  %203 = load i32, i32* %hiCnt186, align 4
  %add248 = add i32 %203, %conv247
  store i32 %add248, i32* %hiCnt186, align 4
  %204 = load i32, i32* %count185, align 4
  %cmp249 = icmp ule i32 %add248, %204
  br i1 %cmp249, label %for.body.251, label %for.end.254

for.body.251:                                     ; preds = %for.cond.245
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.body.251
  %205 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %incdec.ptr253 = getelementptr inbounds %struct.CPpmd_State*, %struct.CPpmd_State** %205, i32 1
  store %struct.CPpmd_State** %incdec.ptr253, %struct.CPpmd_State*** %pps, align 8
  br label %for.cond.245

for.end.254:                                      ; preds = %for.cond.245
  %206 = load %struct.CPpmd_State**, %struct.CPpmd_State*** %pps, align 8
  %207 = load %struct.CPpmd_State*, %struct.CPpmd_State** %206, align 8
  store %struct.CPpmd_State* %207, %struct.CPpmd_State** %s184, align 8
  %208 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %209 = load i32, i32* %hiCnt186, align 4
  %210 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %Freq255 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %210, i32 0, i32 1
  %211 = load i8, i8* %Freq255, align 1
  %conv256 = zext i8 %211 to i32
  %sub257 = sub i32 %209, %conv256
  %212 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %Freq258 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %212, i32 0, i32 1
  %213 = load i8, i8* %Freq258, align 1
  %conv259 = zext i8 %213 to i32
  call void @RangeDec_Decode(%struct.CPpmd8* %208, i32 %sub257, i32 %conv259)
  %214 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %214, i32 0, i32 1
  %215 = load i8, i8* %Shift, align 1
  %conv260 = zext i8 %215 to i32
  %cmp261 = icmp slt i32 %conv260, 7
  br i1 %cmp261, label %land.lhs.true, label %if.end.276

land.lhs.true:                                    ; preds = %for.end.254
  %216 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %216, i32 0, i32 2
  %217 = load i8, i8* %Count, align 1
  %dec263 = add i8 %217, -1
  store i8 %dec263, i8* %Count, align 1
  %conv264 = zext i8 %dec263 to i32
  %cmp265 = icmp eq i32 %conv264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.276

if.then.267:                                      ; preds = %land.lhs.true
  %218 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %218, i32 0, i32 0
  %219 = load i16, i16* %Summ, align 1
  %conv268 = zext i16 %219 to i32
  %shl = shl i32 %conv268, 1
  %conv269 = trunc i32 %shl to i16
  store i16 %conv269, i16* %Summ, align 1
  %220 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift270 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %220, i32 0, i32 1
  %221 = load i8, i8* %Shift270, align 1
  %inc271 = add i8 %221, 1
  store i8 %inc271, i8* %Shift270, align 1
  %conv272 = zext i8 %221 to i32
  %shl273 = shl i32 3, %conv272
  %conv274 = trunc i32 %shl273 to i8
  %222 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count275 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %222, i32 0, i32 2
  store i8 %conv274, i8* %Count275, align 1
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.267, %land.lhs.true, %for.end.254
  %223 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %224 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState277 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %224, i32 0, i32 2
  store %struct.CPpmd_State* %223, %struct.CPpmd_State** %FoundState277, align 8
  %225 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s184, align 8
  %Symbol278 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %225, i32 0, i32 0
  %226 = load i8, i8* %Symbol278, align 1
  store i8 %226, i8* %symbol243, align 1
  %227 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update2(%struct.CPpmd8* %227)
  %228 = load i8, i8* %symbol243, align 1
  %conv279 = zext i8 %228 to i32
  store i32 %conv279, i32* %retval
  br label %return

if.end.280:                                       ; preds = %do.end.236
  %229 = load i32, i32* %count185, align 4
  %230 = load i32, i32* %freqSum, align 4
  %cmp281 = icmp uge i32 %229, %230
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.280
  store i32 -2, i32* %retval
  br label %return

if.end.284:                                       ; preds = %if.end.280
  %231 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %232 = load i32, i32* %hiCnt186, align 4
  %233 = load i32, i32* %freqSum, align 4
  %234 = load i32, i32* %hiCnt186, align 4
  %sub285 = sub i32 %233, %234
  call void @RangeDec_Decode(%struct.CPpmd8* %231, i32 %232, i32 %sub285)
  %235 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ286 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %235, i32 0, i32 0
  %236 = load i16, i16* %Summ286, align 1
  %conv287 = zext i16 %236 to i32
  %237 = load i32, i32* %freqSum, align 4
  %add288 = add i32 %conv287, %237
  %conv289 = trunc i32 %add288 to i16
  %238 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ290 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %238, i32 0, i32 0
  store i16 %conv289, i16* %Summ290, align 1
  br label %do.body.291

do.body.291:                                      ; preds = %do.cond.299, %if.end.284
  %239 = load i32, i32* %i187, align 4
  %dec292 = add i32 %239, -1
  store i32 %dec292, i32* %i187, align 4
  %idxprom293 = zext i32 %dec292 to i64
  %arrayidx294 = getelementptr inbounds [256 x %struct.CPpmd_State*], [256 x %struct.CPpmd_State*]* %ps, i32 0, i64 %idxprom293
  %240 = load %struct.CPpmd_State*, %struct.CPpmd_State** %arrayidx294, align 8
  %Symbol295 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %240, i32 0, i32 0
  %241 = load i8, i8* %Symbol295, align 1
  %idxprom296 = zext i8 %241 to i64
  %arraydecay297 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %242 = bitcast i64* %arraydecay297 to i8*
  %arrayidx298 = getelementptr inbounds i8, i8* %242, i64 %idxprom296
  store i8 0, i8* %arrayidx298, align 1
  br label %do.cond.299

do.cond.299:                                      ; preds = %do.body.291
  %243 = load i32, i32* %i187, align 4
  %cmp300 = icmp ne i32 %243, 0
  br i1 %cmp300, label %do.body.291, label %do.end.302

do.end.302:                                       ; preds = %do.cond.299
  br label %for.cond.183

return:                                           ; preds = %if.then.283, %if.end.276, %if.then.195, %if.then.112, %if.then.34, %if.then.19, %if.then.8
  %244 = load i32, i32* %retval
  ret i32 %244
}

; Function Attrs: nounwind uwtable
define internal i32 @RangeDec_GetThreshold(%struct.CPpmd8* %p, i32 %total) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %total.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %total, i32* %total.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 19
  %1 = load i32, i32* %Code, align 4
  %2 = load i32, i32* %total.addr, align 4
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 18
  %4 = load i32, i32* %Range, align 4
  %div = udiv i32 %4, %2
  store i32 %div, i32* %Range, align 4
  %div1 = udiv i32 %1, %div
  ret i32 %div1
}

; Function Attrs: nounwind uwtable
define internal void @RangeDec_Decode(%struct.CPpmd8* %p, i32 %start, i32 %size) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %start.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 18
  %1 = load i32, i32* %Range, align 4
  %2 = load i32, i32* %start.addr, align 4
  %mul = mul i32 %2, %1
  store i32 %mul, i32* %start.addr, align 4
  %3 = load i32, i32* %start.addr, align 4
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 20
  %5 = load i32, i32* %Low, align 4
  %add = add i32 %5, %3
  store i32 %add, i32* %Low, align 4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 19
  %8 = load i32, i32* %Code, align 4
  %sub = sub i32 %8, %6
  store i32 %sub, i32* %Code, align 4
  %9 = load i32, i32* %size.addr, align 4
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 18
  %11 = load i32, i32* %Range1, align 4
  %mul2 = mul i32 %11, %9
  store i32 %mul2, i32* %Range1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %12, i32 0, i32 20
  %13 = load i32, i32* %Low3, align 4
  %14 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %14, i32 0, i32 20
  %15 = load i32, i32* %Low4, align 4
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 18
  %17 = load i32, i32* %Range5, align 4
  %add6 = add i32 %15, %17
  %xor = xor i32 %13, %add6
  %cmp = icmp ult i32 %xor, 16777216
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %18 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range7 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %18, i32 0, i32 18
  %19 = load i32, i32* %Range7, align 4
  %cmp8 = icmp ult i32 %19, 32768
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %20, i32 0, i32 20
  %21 = load i32, i32* %Low9, align 4
  %sub10 = sub i32 0, %21
  %and = and i32 %sub10, 32767
  %22 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range11 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %22, i32 0, i32 18
  store i32 %and, i32* %Range11, align 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %23 = phi i1 [ false, %lor.rhs ], [ true, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %24 = phi i1 [ true, %while.cond ], [ %23, %land.end ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %25 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %25, i32 0, i32 19
  %26 = load i32, i32* %Code12, align 4
  %shl = shl i32 %26, 8
  %27 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %27, i32 0, i32 21
  %In = bitcast %union.anon* %Stream to %struct.IByteIn**
  %28 = load %struct.IByteIn*, %struct.IByteIn** %In, align 8
  %Read = getelementptr inbounds %struct.IByteIn, %struct.IByteIn* %28, i32 0, i32 0
  %29 = load i8 (i8*)*, i8 (i8*)** %Read, align 8
  %30 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream13 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %30, i32 0, i32 21
  %In14 = bitcast %union.anon* %Stream13 to %struct.IByteIn**
  %31 = load %struct.IByteIn*, %struct.IByteIn** %In14, align 8
  %32 = bitcast %struct.IByteIn* %31 to i8*
  %call = call zeroext i8 %29(i8* %32)
  %conv = zext i8 %call to i32
  %or = or i32 %shl, %conv
  %33 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Code15 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %33, i32 0, i32 19
  store i32 %or, i32* %Code15, align 4
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range16 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %34, i32 0, i32 18
  %35 = load i32, i32* %Range16, align 4
  %shl17 = shl i32 %35, 8
  store i32 %shl17, i32* %Range16, align 4
  %36 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low18 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %36, i32 0, i32 20
  %37 = load i32, i32* %Low18, align 4
  %shl19 = shl i32 %37, 8
  store i32 %shl19, i32* %Low18, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

declare void @Ppmd8_Update1_0(%struct.CPpmd8*) #1

declare void @Ppmd8_Update1(%struct.CPpmd8*) #1

declare void @Ppmd8_UpdateBin(%struct.CPpmd8*) #1

declare %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8*, i32, i32*) #1

declare void @Ppmd8_Update2(%struct.CPpmd8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
