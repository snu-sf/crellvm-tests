; ModuleID = './MultiSource.Benchmarks.7zip/17.Ppmd8Enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmd8 = type { %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_*, %struct.CPpmd_State*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, %union.anon, [38 x i8], [128 x i8], [38 x i32], [38 x i32], [256 x i8], [260 x i8], %struct.CPpmd_See, [24 x [32 x %struct.CPpmd_See]], [25 x [64 x i16]] }
%struct.CPpmd8_Context_ = type { i8, i8, i16, i32, i32 }
%struct.CPpmd_State = type { i8, i8, i16, i16 }
%union.anon = type { %struct.IByteIn* }
%struct.IByteIn = type { i8 (i8*)* }
%struct.CPpmd_See = type { i16, i8, i8 }
%struct.IByteOut = type { void (i8*, i8)* }

@PPMD8_kExpEscape = external constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
define void @Ppmd8_RangeEnc_FlushData(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %i = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 21
  %Out = bitcast %union.anon* %Stream to %struct.IByteOut**
  %2 = load %struct.IByteOut*, %struct.IByteOut** %Out, align 8
  %Write = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %2, i32 0, i32 0
  %3 = load void (i8*, i8)*, void (i8*, i8)** %Write, align 8
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 21
  %Out2 = bitcast %union.anon* %Stream1 to %struct.IByteOut**
  %5 = load %struct.IByteOut*, %struct.IByteOut** %Out2, align 8
  %6 = bitcast %struct.IByteOut* %5 to i8*
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 20
  %8 = load i32, i32* %Low, align 4
  %shr = lshr i32 %8, 24
  %conv = trunc i32 %shr to i8
  call void %3(i8* %6, i8 zeroext %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low3 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 20
  %11 = load i32, i32* %Low3, align 4
  %shl = shl i32 %11, 8
  store i32 %shl, i32* %Low3, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppmd8_EncodeSymbol(%struct.CPpmd8* %p, i32 %symbol) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %symbol.addr = alloca i32, align 4
  %charMask = alloca [32 x i64], align 16
  %s = alloca %struct.CPpmd_State*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %i29 = alloca i32, align 4
  %prob = alloca i16*, align 8
  %s103 = alloca %struct.CPpmd_State*, align 8
  %i133 = alloca i32, align 4
  %escFreq = alloca i32, align 4
  %see = alloca %struct.CPpmd_See*, align 8
  %s174 = alloca %struct.CPpmd_State*, align 8
  %sum175 = alloca i32, align 4
  %i176 = alloca i32, align 4
  %numMasked = alloca i32, align 4
  %cur = alloca i32, align 4
  %low = alloca i32, align 4
  %s1 = alloca %struct.CPpmd_State*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
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
  %9 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %9, i32 0, i32 0
  %10 = load i8, i8* %Symbol, align 1
  %conv3 = zext i8 %10 to i32
  %11 = load i32, i32* %symbol.addr, align 4
  %cmp4 = icmp eq i32 %conv3, %11
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %13 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %13, i32 0, i32 1
  %14 = load i8, i8* %Freq, align 1
  %conv7 = zext i8 %14 to i32
  %15 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %15, i32 0, i32 0
  %16 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext8, align 8
  %SummFreq = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %16, i32 0, i32 2
  %17 = load i16, i16* %SummFreq, align 2
  %conv9 = zext i16 %17 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* %12, i32 0, i32 %conv7, i32 %conv9)
  %18 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 2
  store %struct.CPpmd_State* %18, %struct.CPpmd_State** %FoundState, align 8
  %20 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update1_0(%struct.CPpmd8* %20)
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 5
  store i32 0, i32* %PrevSuccess, align 4
  %22 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq10 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %22, i32 0, i32 1
  %23 = load i8, i8* %Freq10, align 1
  %conv11 = zext i8 %23 to i32
  store i32 %conv11, i32* %sum, align 4
  %24 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext12 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %24, i32 0, i32 0
  %25 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext12, align 8
  %NumStats13 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %25, i32 0, i32 0
  %26 = load i8, i8* %NumStats13, align 1
  %conv14 = zext i8 %26 to i32
  store i32 %conv14, i32* %i, align 4
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
  %30 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %31 = load i32, i32* %sum, align 4
  %32 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Freq20 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %32, i32 0, i32 1
  %33 = load i8, i8* %Freq20, align 1
  %conv21 = zext i8 %33 to i32
  %34 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext22 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %34, i32 0, i32 0
  %35 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext22, align 8
  %SummFreq23 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %35, i32 0, i32 2
  %36 = load i16, i16* %SummFreq23, align 2
  %conv24 = zext i16 %36 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* %30, i32 %31, i32 %conv21, i32 %conv24)
  %37 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %38 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState25 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %38, i32 0, i32 2
  store %struct.CPpmd_State* %37, %struct.CPpmd_State** %FoundState25, align 8
  %39 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update1(%struct.CPpmd8* %39)
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
  store i32 0, i32* %i29, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %44 = load i32, i32* %i29, align 4
  %conv30 = zext i32 %44 to i64
  %cmp31 = icmp ult i64 %conv30, 32
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i29, align 4
  %add33 = add i32 %45, 0
  %idxprom = zext i32 %add33 to i64
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom
  store i64 -1, i64* %arrayidx, align 8
  %46 = load i32, i32* %i29, align 4
  %add34 = add i32 %46, 1
  %idxprom35 = zext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom35
  store i64 -1, i64* %arrayidx36, align 8
  %47 = load i32, i32* %i29, align 4
  %add37 = add i32 %47, 2
  %idxprom38 = zext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom38
  store i64 -1, i64* %arrayidx39, align 8
  %48 = load i32, i32* %i29, align 4
  %add40 = add i32 %48, 3
  %idxprom41 = zext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom41
  store i64 -1, i64* %arrayidx42, align 8
  %49 = load i32, i32* %i29, align 4
  %add43 = add i32 %49, 4
  %idxprom44 = zext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom44
  store i64 -1, i64* %arrayidx45, align 8
  %50 = load i32, i32* %i29, align 4
  %add46 = add i32 %50, 5
  %idxprom47 = zext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom47
  store i64 -1, i64* %arrayidx48, align 8
  %51 = load i32, i32* %i29, align 4
  %add49 = add i32 %51, 6
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom50
  store i64 -1, i64* %arrayidx51, align 8
  %52 = load i32, i32* %i29, align 4
  %add52 = add i32 %52, 7
  %idxprom53 = zext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom53
  store i64 -1, i64* %arrayidx54, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %i29, align 4
  %add55 = add i32 %53, 8
  store i32 %add55, i32* %i29, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %Symbol56 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %54, i32 0, i32 0
  %55 = load i8, i8* %Symbol56, align 1
  %idxprom57 = zext i8 %55 to i64
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %56 = bitcast i64* %arraydecay to i8*
  %arrayidx58 = getelementptr inbounds i8, i8* %56, i64 %idxprom57
  store i8 0, i8* %arrayidx58, align 1
  %57 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext59 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %57, i32 0, i32 0
  %58 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext59, align 8
  %NumStats60 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %58, i32 0, i32 0
  %59 = load i8, i8* %NumStats60, align 1
  %conv61 = zext i8 %59 to i32
  store i32 %conv61, i32* %i, align 4
  br label %do.body.62

do.body.62:                                       ; preds = %do.cond.68, %for.end
  %60 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s, align 8
  %incdec.ptr63 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %60, i32 -1
  store %struct.CPpmd_State* %incdec.ptr63, %struct.CPpmd_State** %s, align 8
  %Symbol64 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %incdec.ptr63, i32 0, i32 0
  %61 = load i8, i8* %Symbol64, align 1
  %idxprom65 = zext i8 %61 to i64
  %arraydecay66 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %62 = bitcast i64* %arraydecay66 to i8*
  %arrayidx67 = getelementptr inbounds i8, i8* %62, i64 %idxprom65
  store i8 0, i8* %arrayidx67, align 1
  br label %do.cond.68

do.cond.68:                                       ; preds = %do.body.62
  %63 = load i32, i32* %i, align 4
  %dec69 = add i32 %63, -1
  store i32 %dec69, i32* %i, align 4
  %tobool70 = icmp ne i32 %dec69, 0
  br i1 %tobool70, label %do.body.62, label %do.end.71

do.end.71:                                        ; preds = %do.cond.68
  %64 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %65 = load i32, i32* %sum, align 4
  %66 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext72 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %66, i32 0, i32 0
  %67 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext72, align 8
  %SummFreq73 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %67, i32 0, i32 2
  %68 = load i16, i16* %SummFreq73, align 2
  %conv74 = zext i16 %68 to i32
  %69 = load i32, i32* %sum, align 4
  %sub = sub i32 %conv74, %69
  %70 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext75 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %70, i32 0, i32 0
  %71 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext75, align 8
  %SummFreq76 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %71, i32 0, i32 2
  %72 = load i16, i16* %SummFreq76, align 2
  %conv77 = zext i16 %72 to i32
  call void @RangeEnc_Encode(%struct.CPpmd8* %64, i32 %65, i32 %sub, i32 %conv77)
  br label %if.end.172

if.else:                                          ; preds = %entry
  %73 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base78 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %73, i32 0, i32 11
  %74 = load i8*, i8** %Base78, align 8
  %75 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext79 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %75, i32 0, i32 0
  %76 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext79, align 8
  %Suffix = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %76, i32 0, i32 4
  %77 = load i32, i32* %Suffix, align 4
  %idx.ext80 = zext i32 %77 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %74, i64 %idx.ext80
  %78 = bitcast i8* %add.ptr81 to %struct.CPpmd8_Context_*
  %NumStats82 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %78, i32 0, i32 0
  %79 = load i8, i8* %NumStats82, align 1
  %idxprom83 = zext i8 %79 to i64
  %80 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2BSIndx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %80, i32 0, i32 26
  %arrayidx84 = getelementptr inbounds [256 x i8], [256 x i8]* %NS2BSIndx, i32 0, i64 %idxprom83
  %81 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %81 to i32
  %82 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess86 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %82, i32 0, i32 5
  %83 = load i32, i32* %PrevSuccess86, align 4
  %add87 = add i32 %conv85, %83
  %84 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext88 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %84, i32 0, i32 0
  %85 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext88, align 8
  %Flags = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %85, i32 0, i32 1
  %86 = load i8, i8* %Flags, align 1
  %conv89 = zext i8 %86 to i32
  %add90 = add i32 %add87, %conv89
  %87 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %RunLength = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %87, i32 0, i32 7
  %88 = load i32, i32* %RunLength, align 4
  %shr = ashr i32 %88, 26
  %and = and i32 %shr, 32
  %add91 = add i32 %add90, %and
  %idxprom92 = zext i32 %add91 to i64
  %89 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext93 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %89, i32 0, i32 0
  %90 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext93, align 8
  %SummFreq94 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %90, i32 0, i32 2
  %91 = bitcast i16* %SummFreq94 to %struct.CPpmd_State*
  %Freq95 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %91, i32 0, i32 1
  %92 = load i8, i8* %Freq95, align 1
  %conv96 = zext i8 %92 to i32
  %sub97 = sub nsw i32 %conv96, 1
  %idxprom98 = sext i32 %sub97 to i64
  %93 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %NS2Indx = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %93, i32 0, i32 27
  %arrayidx99 = getelementptr inbounds [260 x i8], [260 x i8]* %NS2Indx, i32 0, i64 %idxprom98
  %94 = load i8, i8* %arrayidx99, align 1
  %idxprom100 = zext i8 %94 to i64
  %95 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %BinSumm = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %95, i32 0, i32 30
  %arrayidx101 = getelementptr inbounds [25 x [64 x i16]], [25 x [64 x i16]]* %BinSumm, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx101, i32 0, i64 %idxprom92
  store i16* %arrayidx102, i16** %prob, align 8
  %96 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext104 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %96, i32 0, i32 0
  %97 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext104, align 8
  %SummFreq105 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %97, i32 0, i32 2
  %98 = bitcast i16* %SummFreq105 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %98, %struct.CPpmd_State** %s103, align 8
  %99 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s103, align 8
  %Symbol106 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %99, i32 0, i32 0
  %100 = load i8, i8* %Symbol106, align 1
  %conv107 = zext i8 %100 to i32
  %101 = load i32, i32* %symbol.addr, align 4
  %cmp108 = icmp eq i32 %conv107, %101
  br i1 %cmp108, label %if.then.110, label %if.else.120

if.then.110:                                      ; preds = %if.else
  %102 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %103 = load i16*, i16** %prob, align 8
  %104 = load i16, i16* %103, align 2
  %conv111 = zext i16 %104 to i32
  call void @RangeEnc_EncodeBit_0(%struct.CPpmd8* %102, i32 %conv111)
  %105 = load i16*, i16** %prob, align 8
  %106 = load i16, i16* %105, align 2
  %conv112 = zext i16 %106 to i32
  %add113 = add nsw i32 %conv112, 128
  %107 = load i16*, i16** %prob, align 8
  %108 = load i16, i16* %107, align 2
  %conv114 = zext i16 %108 to i32
  %add115 = add nsw i32 %conv114, 32
  %shr116 = ashr i32 %add115, 7
  %sub117 = sub nsw i32 %add113, %shr116
  %conv118 = trunc i32 %sub117 to i16
  %109 = load i16*, i16** %prob, align 8
  store i16 %conv118, i16* %109, align 2
  %110 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s103, align 8
  %111 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState119 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %111, i32 0, i32 2
  store %struct.CPpmd_State* %110, %struct.CPpmd_State** %FoundState119, align 8
  %112 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_UpdateBin(%struct.CPpmd8* %112)
  br label %return

if.else.120:                                      ; preds = %if.else
  %113 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %114 = load i16*, i16** %prob, align 8
  %115 = load i16, i16* %114, align 2
  %conv121 = zext i16 %115 to i32
  call void @RangeEnc_EncodeBit_1(%struct.CPpmd8* %113, i32 %conv121)
  %116 = load i16*, i16** %prob, align 8
  %117 = load i16, i16* %116, align 2
  %conv122 = zext i16 %117 to i32
  %118 = load i16*, i16** %prob, align 8
  %119 = load i16, i16* %118, align 2
  %conv123 = zext i16 %119 to i32
  %add124 = add nsw i32 %conv123, 32
  %shr125 = ashr i32 %add124, 7
  %sub126 = sub nsw i32 %conv122, %shr125
  %conv127 = trunc i32 %sub126 to i16
  %120 = load i16*, i16** %prob, align 8
  store i16 %conv127, i16* %120, align 2
  %121 = load i16*, i16** %prob, align 8
  %122 = load i16, i16* %121, align 2
  %conv128 = zext i16 %122 to i32
  %shr129 = ashr i32 %conv128, 10
  %idxprom130 = sext i32 %shr129 to i64
  %arrayidx131 = getelementptr inbounds [16 x i8], [16 x i8]* @PPMD8_kExpEscape, i32 0, i64 %idxprom130
  %123 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %123 to i32
  %124 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %InitEsc = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %124, i32 0, i32 4
  store i32 %conv132, i32* %InitEsc, align 4
  store i32 0, i32* %i133, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.163, %if.else.120
  %125 = load i32, i32* %i133, align 4
  %conv135 = zext i32 %125 to i64
  %cmp136 = icmp ult i64 %conv135, 32
  br i1 %cmp136, label %for.body.138, label %for.end.165

for.body.138:                                     ; preds = %for.cond.134
  %126 = load i32, i32* %i133, align 4
  %add139 = add i32 %126, 0
  %idxprom140 = zext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom140
  store i64 -1, i64* %arrayidx141, align 8
  %127 = load i32, i32* %i133, align 4
  %add142 = add i32 %127, 1
  %idxprom143 = zext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom143
  store i64 -1, i64* %arrayidx144, align 8
  %128 = load i32, i32* %i133, align 4
  %add145 = add i32 %128, 2
  %idxprom146 = zext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom146
  store i64 -1, i64* %arrayidx147, align 8
  %129 = load i32, i32* %i133, align 4
  %add148 = add i32 %129, 3
  %idxprom149 = zext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom149
  store i64 -1, i64* %arrayidx150, align 8
  %130 = load i32, i32* %i133, align 4
  %add151 = add i32 %130, 4
  %idxprom152 = zext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom152
  store i64 -1, i64* %arrayidx153, align 8
  %131 = load i32, i32* %i133, align 4
  %add154 = add i32 %131, 5
  %idxprom155 = zext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom155
  store i64 -1, i64* %arrayidx156, align 8
  %132 = load i32, i32* %i133, align 4
  %add157 = add i32 %132, 6
  %idxprom158 = zext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom158
  store i64 -1, i64* %arrayidx159, align 8
  %133 = load i32, i32* %i133, align 4
  %add160 = add i32 %133, 7
  %idxprom161 = zext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i64 %idxprom161
  store i64 -1, i64* %arrayidx162, align 8
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.138
  %134 = load i32, i32* %i133, align 4
  %add164 = add i32 %134, 8
  store i32 %add164, i32* %i133, align 4
  br label %for.cond.134

for.end.165:                                      ; preds = %for.cond.134
  %135 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s103, align 8
  %Symbol166 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %135, i32 0, i32 0
  %136 = load i8, i8* %Symbol166, align 1
  %idxprom167 = zext i8 %136 to i64
  %arraydecay168 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %137 = bitcast i64* %arraydecay168 to i8*
  %arrayidx169 = getelementptr inbounds i8, i8* %137, i64 %idxprom167
  store i8 0, i8* %arrayidx169, align 1
  %138 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %PrevSuccess170 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %138, i32 0, i32 5
  store i32 0, i32* %PrevSuccess170, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %do.end.71
  br label %for.cond.173

for.cond.173:                                     ; preds = %do.end.266, %if.end.172
  %139 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext177 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %139, i32 0, i32 0
  %140 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext177, align 8
  %NumStats178 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %140, i32 0, i32 0
  %141 = load i8, i8* %NumStats178, align 1
  %conv179 = zext i8 %141 to i32
  store i32 %conv179, i32* %numMasked, align 4
  br label %do.body.180

do.body.180:                                      ; preds = %do.cond.192, %for.cond.173
  %142 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %OrderFall = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %142, i32 0, i32 3
  %143 = load i32, i32* %OrderFall, align 4
  %inc = add i32 %143, 1
  store i32 %inc, i32* %OrderFall, align 4
  %144 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext181 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %144, i32 0, i32 0
  %145 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext181, align 8
  %Suffix182 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %145, i32 0, i32 4
  %146 = load i32, i32* %Suffix182, align 4
  %tobool183 = icmp ne i32 %146, 0
  br i1 %tobool183, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %do.body.180
  br label %return

if.end.185:                                       ; preds = %do.body.180
  %147 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base186 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %147, i32 0, i32 11
  %148 = load i8*, i8** %Base186, align 8
  %149 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext187 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %149, i32 0, i32 0
  %150 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext187, align 8
  %Suffix188 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %150, i32 0, i32 4
  %151 = load i32, i32* %Suffix188, align 4
  %idx.ext189 = zext i32 %151 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %148, i64 %idx.ext189
  %152 = bitcast i8* %add.ptr190 to %struct.CPpmd8_Context_*
  %153 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext191 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %153, i32 0, i32 0
  store %struct.CPpmd8_Context_* %152, %struct.CPpmd8_Context_** %MinContext191, align 8
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.185
  %154 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext193 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %154, i32 0, i32 0
  %155 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext193, align 8
  %NumStats194 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %155, i32 0, i32 0
  %156 = load i8, i8* %NumStats194, align 1
  %conv195 = zext i8 %156 to i32
  %157 = load i32, i32* %numMasked, align 4
  %cmp196 = icmp eq i32 %conv195, %157
  br i1 %cmp196, label %do.body.180, label %do.end.198

do.end.198:                                       ; preds = %do.cond.192
  %158 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %159 = load i32, i32* %numMasked, align 4
  %call = call %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8* %158, i32 %159, i32* %escFreq)
  store %struct.CPpmd_See* %call, %struct.CPpmd_See** %see, align 8
  %160 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Base199 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %160, i32 0, i32 11
  %161 = load i8*, i8** %Base199, align 8
  %162 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext200 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %162, i32 0, i32 0
  %163 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext200, align 8
  %Stats201 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %163, i32 0, i32 3
  %164 = load i32, i32* %Stats201, align 4
  %idx.ext202 = zext i32 %164 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %161, i64 %idx.ext202
  %165 = bitcast i8* %add.ptr203 to %struct.CPpmd_State*
  store %struct.CPpmd_State* %165, %struct.CPpmd_State** %s174, align 8
  store i32 0, i32* %sum175, align 4
  %166 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %MinContext204 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %166, i32 0, i32 0
  %167 = load %struct.CPpmd8_Context_*, %struct.CPpmd8_Context_** %MinContext204, align 8
  %NumStats205 = getelementptr inbounds %struct.CPpmd8_Context_, %struct.CPpmd8_Context_* %167, i32 0, i32 0
  %168 = load i8, i8* %NumStats205, align 1
  %conv206 = zext i8 %168 to i32
  %add207 = add nsw i32 %conv206, 1
  store i32 %add207, i32* %i176, align 4
  br label %do.body.208

do.body.208:                                      ; preds = %do.cond.263, %do.end.198
  %169 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %Symbol209 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %169, i32 0, i32 0
  %170 = load i8, i8* %Symbol209, align 1
  %conv210 = zext i8 %170 to i32
  store i32 %conv210, i32* %cur, align 4
  %171 = load i32, i32* %cur, align 4
  %172 = load i32, i32* %symbol.addr, align 4
  %cmp211 = icmp eq i32 %171, %172
  br i1 %cmp211, label %if.then.213, label %if.end.250

if.then.213:                                      ; preds = %do.body.208
  %173 = load i32, i32* %sum175, align 4
  store i32 %173, i32* %low, align 4
  %174 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  store %struct.CPpmd_State* %174, %struct.CPpmd_State** %s1, align 8
  br label %do.body.214

do.body.214:                                      ; preds = %do.cond.225, %if.then.213
  %175 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %Freq215 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %175, i32 0, i32 1
  %176 = load i8, i8* %Freq215, align 1
  %conv216 = zext i8 %176 to i32
  %177 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %Symbol217 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %177, i32 0, i32 0
  %178 = load i8, i8* %Symbol217, align 1
  %idxprom218 = zext i8 %178 to i64
  %arraydecay219 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %179 = bitcast i64* %arraydecay219 to i8*
  %arrayidx220 = getelementptr inbounds i8, i8* %179, i64 %idxprom218
  %180 = load i8, i8* %arrayidx220, align 1
  %conv221 = sext i8 %180 to i32
  %and222 = and i32 %conv216, %conv221
  %181 = load i32, i32* %sum175, align 4
  %add223 = add i32 %181, %and222
  store i32 %add223, i32* %sum175, align 4
  %182 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %incdec.ptr224 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %182, i32 1
  store %struct.CPpmd_State* %incdec.ptr224, %struct.CPpmd_State** %s174, align 8
  br label %do.cond.225

do.cond.225:                                      ; preds = %do.body.214
  %183 = load i32, i32* %i176, align 4
  %dec226 = add i32 %183, -1
  store i32 %dec226, i32* %i176, align 4
  %tobool227 = icmp ne i32 %dec226, 0
  br i1 %tobool227, label %do.body.214, label %do.end.228

do.end.228:                                       ; preds = %do.cond.225
  %184 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %185 = load i32, i32* %low, align 4
  %186 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %Freq229 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %186, i32 0, i32 1
  %187 = load i8, i8* %Freq229, align 1
  %conv230 = zext i8 %187 to i32
  %188 = load i32, i32* %sum175, align 4
  %189 = load i32, i32* %escFreq, align 4
  %add231 = add i32 %188, %189
  call void @RangeEnc_Encode(%struct.CPpmd8* %184, i32 %185, i32 %conv230, i32 %add231)
  %190 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %190, i32 0, i32 1
  %191 = load i8, i8* %Shift, align 1
  %conv232 = zext i8 %191 to i32
  %cmp233 = icmp slt i32 %conv232, 7
  br i1 %cmp233, label %land.lhs.true, label %if.end.248

land.lhs.true:                                    ; preds = %do.end.228
  %192 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %192, i32 0, i32 2
  %193 = load i8, i8* %Count, align 1
  %dec235 = add i8 %193, -1
  store i8 %dec235, i8* %Count, align 1
  %conv236 = zext i8 %dec235 to i32
  %cmp237 = icmp eq i32 %conv236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.248

if.then.239:                                      ; preds = %land.lhs.true
  %194 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %194, i32 0, i32 0
  %195 = load i16, i16* %Summ, align 1
  %conv240 = zext i16 %195 to i32
  %shl = shl i32 %conv240, 1
  %conv241 = trunc i32 %shl to i16
  store i16 %conv241, i16* %Summ, align 1
  %196 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Shift242 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %196, i32 0, i32 1
  %197 = load i8, i8* %Shift242, align 1
  %inc243 = add i8 %197, 1
  store i8 %inc243, i8* %Shift242, align 1
  %conv244 = zext i8 %197 to i32
  %shl245 = shl i32 3, %conv244
  %conv246 = trunc i32 %shl245 to i8
  %198 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Count247 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %198, i32 0, i32 2
  store i8 %conv246, i8* %Count247, align 1
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.239, %land.lhs.true, %do.end.228
  %199 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s1, align 8
  %200 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %FoundState249 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %200, i32 0, i32 2
  store %struct.CPpmd_State* %199, %struct.CPpmd_State** %FoundState249, align 8
  %201 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @Ppmd8_Update2(%struct.CPpmd8* %201)
  br label %return

if.end.250:                                       ; preds = %do.body.208
  %202 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %Freq251 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %202, i32 0, i32 1
  %203 = load i8, i8* %Freq251, align 1
  %conv252 = zext i8 %203 to i32
  %204 = load i32, i32* %cur, align 4
  %idxprom253 = sext i32 %204 to i64
  %arraydecay254 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %205 = bitcast i64* %arraydecay254 to i8*
  %arrayidx255 = getelementptr inbounds i8, i8* %205, i64 %idxprom253
  %206 = load i8, i8* %arrayidx255, align 1
  %conv256 = sext i8 %206 to i32
  %and257 = and i32 %conv252, %conv256
  %207 = load i32, i32* %sum175, align 4
  %add258 = add i32 %207, %and257
  store i32 %add258, i32* %sum175, align 4
  %208 = load i32, i32* %cur, align 4
  %idxprom259 = sext i32 %208 to i64
  %arraydecay260 = getelementptr inbounds [32 x i64], [32 x i64]* %charMask, i32 0, i32 0
  %209 = bitcast i64* %arraydecay260 to i8*
  %arrayidx261 = getelementptr inbounds i8, i8* %209, i64 %idxprom259
  store i8 0, i8* %arrayidx261, align 1
  %210 = load %struct.CPpmd_State*, %struct.CPpmd_State** %s174, align 8
  %incdec.ptr262 = getelementptr inbounds %struct.CPpmd_State, %struct.CPpmd_State* %210, i32 1
  store %struct.CPpmd_State* %incdec.ptr262, %struct.CPpmd_State** %s174, align 8
  br label %do.cond.263

do.cond.263:                                      ; preds = %if.end.250
  %211 = load i32, i32* %i176, align 4
  %dec264 = add i32 %211, -1
  store i32 %dec264, i32* %i176, align 4
  %tobool265 = icmp ne i32 %dec264, 0
  br i1 %tobool265, label %do.body.208, label %do.end.266

do.end.266:                                       ; preds = %do.cond.263
  %212 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %213 = load i32, i32* %sum175, align 4
  %214 = load i32, i32* %escFreq, align 4
  %215 = load i32, i32* %sum175, align 4
  %216 = load i32, i32* %escFreq, align 4
  %add267 = add i32 %215, %216
  call void @RangeEnc_Encode(%struct.CPpmd8* %212, i32 %213, i32 %214, i32 %add267)
  %217 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ268 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %217, i32 0, i32 0
  %218 = load i16, i16* %Summ268, align 1
  %conv269 = zext i16 %218 to i32
  %219 = load i32, i32* %sum175, align 4
  %add270 = add i32 %conv269, %219
  %220 = load i32, i32* %escFreq, align 4
  %add271 = add i32 %add270, %220
  %conv272 = trunc i32 %add271 to i16
  %221 = load %struct.CPpmd_See*, %struct.CPpmd_See** %see, align 8
  %Summ273 = getelementptr inbounds %struct.CPpmd_See, %struct.CPpmd_See* %221, i32 0, i32 0
  store i16 %conv272, i16* %Summ273, align 1
  br label %for.cond.173

return:                                           ; preds = %if.end.248, %if.then.184, %if.then.110, %if.then.19, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Encode(%struct.CPpmd8* %p, i32 %start, i32 %size, i32 %total) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %start.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %total.addr, align 4
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 18
  %3 = load i32, i32* %Range, align 4
  %div = udiv i32 %3, %1
  store i32 %div, i32* %Range, align 4
  %mul = mul i32 %0, %div
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 20
  %5 = load i32, i32* %Low, align 4
  %add = add i32 %5, %mul
  store i32 %add, i32* %Low, align 4
  %6 = load i32, i32* %size.addr, align 4
  %7 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %7, i32 0, i32 18
  %8 = load i32, i32* %Range1, align 4
  %mul2 = mul i32 %8, %6
  store i32 %mul2, i32* %Range1, align 4
  %9 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* %9)
  ret void
}

declare void @Ppmd8_Update1_0(%struct.CPpmd8*) #1

declare void @Ppmd8_Update1(%struct.CPpmd8*) #1

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeBit_0(%struct.CPpmd8* %p, i32 %size0) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %size0.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %size0, i32* %size0.addr, align 4
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 18
  %1 = load i32, i32* %Range, align 4
  %shr = lshr i32 %1, 14
  store i32 %shr, i32* %Range, align 4
  %2 = load i32, i32* %size0.addr, align 4
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 18
  %4 = load i32, i32* %Range1, align 4
  %mul = mul i32 %4, %2
  store i32 %mul, i32* %Range1, align 4
  %5 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* %5)
  ret void
}

declare void @Ppmd8_UpdateBin(%struct.CPpmd8*) #1

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_EncodeBit_1(%struct.CPpmd8* %p, i32 %size0) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  %size0.addr = alloca i32, align 4
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  store i32 %size0, i32* %size0.addr, align 4
  %0 = load i32, i32* %size0.addr, align 4
  %1 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %1, i32 0, i32 18
  %2 = load i32, i32* %Range, align 4
  %shr = lshr i32 %2, 14
  store i32 %shr, i32* %Range, align 4
  %mul = mul i32 %0, %shr
  %3 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %3, i32 0, i32 20
  %4 = load i32, i32* %Low, align 4
  %add = add i32 %4, %mul
  store i32 %add, i32* %Low, align 4
  %5 = load i32, i32* %size0.addr, align 4
  %sub = sub i32 16384, %5
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 18
  %7 = load i32, i32* %Range1, align 4
  %mul2 = mul i32 %7, %sub
  store i32 %mul2, i32* %Range1, align 4
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  call void @RangeEnc_Normalize(%struct.CPpmd8* %8)
  ret void
}

declare %struct.CPpmd_See* @Ppmd8_MakeEscFreq(%struct.CPpmd8*, i32, i32*) #1

declare void @Ppmd8_Update2(%struct.CPpmd8*) #1

; Function Attrs: nounwind uwtable
define internal void @RangeEnc_Normalize(%struct.CPpmd8* %p) #0 {
entry:
  %p.addr = alloca %struct.CPpmd8*, align 8
  store %struct.CPpmd8* %p, %struct.CPpmd8** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %0, i32 0, i32 20
  %1 = load i32, i32* %Low, align 4
  %2 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low1 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %2, i32 0, i32 20
  %3 = load i32, i32* %Low1, align 4
  %4 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %4, i32 0, i32 18
  %5 = load i32, i32* %Range, align 4
  %add = add i32 %3, %5
  %xor = xor i32 %1, %add
  %cmp = icmp ult i32 %xor, 16777216
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range2 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %6, i32 0, i32 18
  %7 = load i32, i32* %Range2, align 4
  %cmp3 = icmp ult i32 %7, 32768
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %8 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low4 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %8, i32 0, i32 20
  %9 = load i32, i32* %Low4, align 4
  %sub = sub i32 0, %9
  %and = and i32 %sub, 32767
  %10 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range5 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %10, i32 0, i32 18
  store i32 %and, i32* %Range5, align 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ true, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %12 = phi i1 [ true, %while.cond ], [ %11, %land.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %13 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %13, i32 0, i32 21
  %Out = bitcast %union.anon* %Stream to %struct.IByteOut**
  %14 = load %struct.IByteOut*, %struct.IByteOut** %Out, align 8
  %Write = getelementptr inbounds %struct.IByteOut, %struct.IByteOut* %14, i32 0, i32 0
  %15 = load void (i8*, i8)*, void (i8*, i8)** %Write, align 8
  %16 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Stream6 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %16, i32 0, i32 21
  %Out7 = bitcast %union.anon* %Stream6 to %struct.IByteOut**
  %17 = load %struct.IByteOut*, %struct.IByteOut** %Out7, align 8
  %18 = bitcast %struct.IByteOut* %17 to i8*
  %19 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low8 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %19, i32 0, i32 20
  %20 = load i32, i32* %Low8, align 4
  %shr = lshr i32 %20, 24
  %conv = trunc i32 %shr to i8
  call void %15(i8* %18, i8 zeroext %conv)
  %21 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Range9 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %21, i32 0, i32 18
  %22 = load i32, i32* %Range9, align 4
  %shl = shl i32 %22, 8
  store i32 %shl, i32* %Range9, align 4
  %23 = load %struct.CPpmd8*, %struct.CPpmd8** %p.addr, align 8
  %Low10 = getelementptr inbounds %struct.CPpmd8, %struct.CPpmd8* %23, i32 0, i32 20
  %24 = load i32, i32* %Low10, align 4
  %shl11 = shl i32 %24, 8
  store i32 %shl11, i32* %Low10, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
