; ModuleID = './MultiSource.Applications.ClamAV/3.libclamav_nsis_LZMADecode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream = type { i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8, i8, i16*, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define void @lzmaInit(%struct.lzma_stream* %s) #0 {
entry:
  %s.addr = alloca %struct.lzma_stream*, align 8
  %i = alloca i64, align 8
  store %struct.lzma_stream* %s, %struct.lzma_stream** %s.addr, align 8
  store i64 152, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %i, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %i, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %3 = bitcast %struct.lzma_stream* %2 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %1
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %rep3 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %4, i32 0, i32 27
  store i32 1, i32* %rep3, align 4
  %5 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %rep2 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %5, i32 0, i32 26
  store i32 1, i32* %rep2, align 4
  %6 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %rep1 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %6, i32 0, i32 25
  store i32 1, i32* %rep1, align 4
  %7 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %rep0 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %7, i32 0, i32 24
  store i32 1, i32* %rep0, align 4
  %8 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %range = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %8, i32 0, i32 31
  store i32 -1, i32* %range, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lzmaDecode(%struct.lzma_stream* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.lzma_stream*, align 8
  %_s = alloca %struct.lzma_stream, align 8
  %firstByte = alloca i8, align 1
  %newDynamicDataSize = alloca i32, align 4
  %numProbs = alloca i32, align 4
  %lp = alloca i32, align 4
  %pb = alloca i32, align 4
  %pos = alloca i32, align 4
  %bound = alloca i32, align 4
  %bound258 = alloca i32, align 4
  %bound336 = alloca i32, align 4
  %pos470 = alloca i32, align 4
  %distance = alloca i32, align 4
  %numDirectBits = alloca i32, align 4
  %numTotalBits = alloca i32, align 4
  %bound695 = alloca i32, align 4
  %pos792 = alloca i32, align 4
  %bound839 = alloca i32, align 4
  %bound955 = alloca i32, align 4
  store %struct.lzma_stream* %s, %struct.lzma_stream** %s.addr, align 8
  %0 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %1 = bitcast %struct.lzma_stream* %_s to i8*
  %2 = bitcast %struct.lzma_stream* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 168, i32 8, i1 false)
  %len = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %3 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %mode = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  %4 = load i32, i32* %mode, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.46
    i32 3, label %sw.bb.92
    i32 2, label %sw.bb.107
    i32 6, label %sw.bb.115
    i32 13, label %sw.bb.225
    i32 14, label %sw.bb.301
    i32 15, label %sw.bb.379
    i32 26, label %sw.bb.406
    i32 7, label %sw.bb.437
    i32 8, label %sw.bb.449
    i32 9, label %sw.bb.465
    i32 27, label %sw.bb.480
    i32 10, label %sw.bb.528
    i32 11, label %sw.bb.541
    i32 21, label %sw.bb.560
    i32 22, label %sw.bb.582
    i32 25, label %sw.bb.595
    i32 12, label %sw.bb.651
    i32 16, label %sw.bb.742
    i32 28, label %sw.bb.793
    i32 4, label %sw.bb.838
    i32 5, label %sw.bb.877
    i32 17, label %sw.bb.897
    i32 18, label %sw.bb.902
    i32 19, label %sw.bb.920
    i32 23, label %sw.bb.941
    i32 24, label %sw.bb.998
    i32 20, label %sw.bb.1027
  ]

sw.bb:                                            ; preds = %for.cond
  %avail_in = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %5 = load i32, i32* %avail_in, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %sw.bb
  br label %saveStateAndReturn

if.end.2:                                         ; preds = %sw.bb
  %avail_in3 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %6 = load i32, i32* %avail_in3, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %avail_in3, align 4
  %next_in = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %7 = load i8*, i8** %next_in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %next_in, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %firstByte, align 1
  %9 = load i8, i8* %firstByte, align 1
  %conv = zext i8 %9 to i32
  %cmp4 = icmp sgt i32 %conv, 225
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %10 = load i8, i8* %firstByte, align 1
  %conv8 = zext i8 %10 to i32
  %div = sdiv i32 %conv8, 45
  store i32 %div, i32* %pb, align 4
  %11 = load i8, i8* %firstByte, align 1
  %conv9 = zext i8 %11 to i32
  %rem = srem i32 %conv9, 45
  %conv10 = trunc i32 %rem to i8
  store i8 %conv10, i8* %firstByte, align 1
  %12 = load i8, i8* %firstByte, align 1
  %conv11 = zext i8 %12 to i32
  %div12 = sdiv i32 %conv11, 9
  store i32 %div12, i32* %lp, align 4
  %13 = load i8, i8* %firstByte, align 1
  %conv13 = zext i8 %13 to i32
  %rem14 = srem i32 %conv13, 9
  %conv15 = trunc i32 %rem14 to i8
  store i8 %conv15, i8* %firstByte, align 1
  %14 = load i8, i8* %firstByte, align 1
  %conv16 = zext i8 %14 to i32
  %lc = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 20
  store i32 %conv16, i32* %lc, align 4
  %15 = load i32, i32* %pb, align 4
  %shl = shl i32 1, %15
  %sub = sub nsw i32 %shl, 1
  %posStateMask = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 28
  store i32 %sub, i32* %posStateMask, align 4
  %16 = load i32, i32* %lp, align 4
  %shl17 = shl i32 1, %16
  %sub18 = sub nsw i32 %shl17, 1
  %literalPosMask = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 29
  store i32 %sub18, i32* %literalPosMask, align 4
  %lc19 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 20
  %17 = load i32, i32* %lc19, align 4
  %18 = load i32, i32* %pb, align 4
  %add = add nsw i32 %17, %18
  %shl20 = shl i32 768, %add
  %add21 = add nsw i32 1846, %shl20
  store i32 %add21, i32* %numProbs, align 4
  %19 = load i32, i32* %numProbs, align 4
  %conv22 = zext i32 %19 to i64
  %mul = mul i64 %conv22, 2
  %conv23 = trunc i64 %mul to i32
  store i32 %conv23, i32* %newDynamicDataSize, align 4
  %20 = load i32, i32* %newDynamicDataSize, align 4
  %dynamicDataSize = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 4
  %21 = load i32, i32* %dynamicDataSize, align 4
  %cmp24 = icmp ne i32 %20, %21
  br i1 %cmp24, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.7
  %dynamicData = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %22 = bitcast i8** %dynamicData to i16**
  %23 = load i16*, i16** %22, align 8
  %tobool27 = icmp ne i16* %23, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.26
  %dynamicData29 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %24 = bitcast i8** %dynamicData29 to i16**
  %25 = load i16*, i16** %24, align 8
  %26 = bitcast i16* %25 to i8*
  call void @free(i8* %26) #1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  %27 = load i32, i32* %newDynamicDataSize, align 4
  %conv31 = zext i32 %27 to i64
  %call = call i8* @cli_malloc(i64 %conv31)
  %28 = bitcast i8* %call to i16*
  %dynamicData32 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %29 = bitcast i8** %dynamicData32 to i16**
  store i16* %28, i16** %29, align 8
  %dynamicData33 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %30 = bitcast i8** %dynamicData33 to i16**
  %31 = load i16*, i16** %30, align 8
  %tobool34 = icmp ne i16* %31, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.30
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.30
  %32 = load i32, i32* %newDynamicDataSize, align 4
  %dynamicDataSize37 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 4
  store i32 %32, i32* %dynamicDataSize37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.38
  %33 = load i32, i32* %numProbs, align 4
  %dec39 = add i32 %33, -1
  store i32 %dec39, i32* %numProbs, align 4
  %tobool40 = icmp ne i32 %33, 0
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %numProbs, align 4
  %idxprom = zext i32 %34 to i64
  %dynamicData41 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %35 = bitcast i8** %dynamicData41 to i16**
  %36 = load i16*, i16** %35, align 8
  %arrayidx = getelementptr inbounds i16, i16* %36, i64 %idxprom
  store i16 1024, i16* %arrayidx, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %temp1 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 0, i32* %temp1, align 4
  %temp3 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 0, i32* %temp3, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %while.end
  %temp143 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %37 = load i32, i32* %temp143, align 4
  %cmp44 = icmp slt i32 %37, 4
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.42
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %for.cond, %for.body
  %avail_in47 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %38 = load i32, i32* %avail_in47, align 4
  %tobool48 = icmp ne i32 %38, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %sw.bb.46
  %mode50 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 1, i32* %mode50, align 4
  br label %saveStateAndReturn

if.end.51:                                        ; preds = %sw.bb.46
  %avail_in52 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %39 = load i32, i32* %avail_in52, align 4
  %dec53 = add i32 %39, -1
  store i32 %dec53, i32* %avail_in52, align 4
  %next_in54 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %40 = load i8*, i8** %next_in54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr55, i8** %next_in54, align 8
  %41 = load i8, i8* %40, align 1
  %conv56 = zext i8 %41 to i32
  %temp157 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %42 = load i32, i32* %temp157, align 4
  %mul58 = mul nsw i32 %42, 8
  %shl59 = shl i32 %conv56, %mul58
  %temp360 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %43 = load i32, i32* %temp360, align 4
  %or = or i32 %43, %shl59
  store i32 %or, i32* %temp360, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %temp161 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %44 = load i32, i32* %temp161, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %temp161, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  %temp362 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %45 = load i32, i32* %temp362, align 4
  %dictionarySize = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %46 = load i32, i32* %dictionarySize, align 4
  %cmp63 = icmp ne i32 %45, %46
  br i1 %cmp63, label %if.then.65, label %if.end.80

if.then.65:                                       ; preds = %for.end
  %temp366 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %47 = load i32, i32* %temp366, align 4
  %dictionarySize67 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  store i32 %47, i32* %dictionarySize67, align 4
  %dictionary = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %48 = load i8*, i8** %dictionary, align 8
  %tobool68 = icmp ne i8* %48, null
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.65
  %dictionary70 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %49 = load i8*, i8** %dictionary70, align 8
  call void @free(i8* %49) #1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.65
  %dictionarySize72 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %50 = load i32, i32* %dictionarySize72, align 4
  %conv73 = zext i32 %50 to i64
  %call74 = call i8* @cli_malloc(i64 %conv73)
  %dictionary75 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  store i8* %call74, i8** %dictionary75, align 8
  %dictionary76 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %51 = load i8*, i8** %dictionary76, align 8
  %tobool77 = icmp ne i8* %51, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.71
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.71
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.end
  %dictionarySize81 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %52 = load i32, i32* %dictionarySize81, align 4
  %sub82 = sub i32 %52, 1
  %idxprom83 = zext i32 %sub82 to i64
  %dictionary84 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %53 = load i8*, i8** %dictionary84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %53, i64 %idxprom83
  store i8 0, i8* %arrayidx85, align 1
  %temp186 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 5, i32* %temp186, align 4
  br label %while.cond.87

while.cond.87:                                    ; preds = %if.end.97, %if.end.80
  %temp188 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %54 = load i32, i32* %temp188, align 4
  %dec89 = add nsw i32 %54, -1
  store i32 %dec89, i32* %temp188, align 4
  %tobool90 = icmp ne i32 %54, 0
  br i1 %tobool90, label %while.body.91, label %while.end.106

while.body.91:                                    ; preds = %while.cond.87
  br label %sw.bb.92

sw.bb.92:                                         ; preds = %for.cond, %while.body.91
  %avail_in93 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %55 = load i32, i32* %avail_in93, align 4
  %tobool94 = icmp ne i32 %55, 0
  br i1 %tobool94, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %sw.bb.92
  %mode96 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 3, i32* %mode96, align 4
  br label %saveStateAndReturn

if.end.97:                                        ; preds = %sw.bb.92
  %code = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %56 = load i32, i32* %code, align 4
  %shl98 = shl i32 %56, 8
  %avail_in99 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %57 = load i32, i32* %avail_in99, align 4
  %dec100 = add i32 %57, -1
  store i32 %dec100, i32* %avail_in99, align 4
  %next_in101 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %58 = load i8*, i8** %next_in101, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr102, i8** %next_in101, align 8
  %59 = load i8, i8* %58, align 1
  %conv103 = zext i8 %59 to i32
  %or104 = or i32 %shl98, %conv103
  %code105 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or104, i32* %code105, align 4
  br label %while.cond.87

while.end.106:                                    ; preds = %while.cond.87
  br label %sw.bb.107

sw.bb.107:                                        ; preds = %for.cond, %while.end.106
  %totalOut = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %60 = load i32, i32* %totalOut, align 4
  %posStateMask108 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 28
  %61 = load i32, i32* %posStateMask108, align 4
  %and = and i32 %60, %61
  %posState = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 16
  store i32 %and, i32* %posState, align 4
  %dynamicData109 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %62 = bitcast i8** %dynamicData109 to i16**
  %63 = load i16*, i16** %62, align 8
  %add.ptr = getelementptr inbounds i16, i16* %63, i64 0
  %state = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %64 = load i32, i32* %state, align 4
  %shl110 = shl i32 %64, 4
  %idx.ext = sext i32 %shl110 to i64
  %add.ptr111 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext
  %posState112 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 16
  %65 = load i32, i32* %posState112, align 4
  %idx.ext113 = sext i32 %65 to i64
  %add.ptr114 = getelementptr inbounds i16, i16* %add.ptr111, i64 %idx.ext113
  %prob = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr114, i16** %prob, align 8
  %last = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 6, i32* %last, align 4
  br label %_LZMA_C_RDBD

sw.bb.115:                                        ; preds = %for.cond
  %temp3116 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %66 = load i32, i32* %temp3116, align 4
  %cmp117 = icmp eq i32 %66, 0
  br i1 %cmp117, label %if.then.119, label %if.else.428

if.then.119:                                      ; preds = %sw.bb.115
  %dynamicData120 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %67 = bitcast i8** %dynamicData120 to i16**
  %68 = load i16*, i16** %67, align 8
  %add.ptr121 = getelementptr inbounds i16, i16* %68, i64 1846
  %totalOut122 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %69 = load i32, i32* %totalOut122, align 4
  %literalPosMask123 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 29
  %70 = load i32, i32* %literalPosMask123, align 4
  %and124 = and i32 %69, %70
  %lc125 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 20
  %71 = load i32, i32* %lc125, align 4
  %shl126 = shl i32 %and124, %71
  %previousByte = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %72 = load i8, i8* %previousByte, align 1
  %conv127 = zext i8 %72 to i32
  %lc128 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 20
  %73 = load i32, i32* %lc128, align 4
  %sub129 = sub nsw i32 8, %73
  %shr = ashr i32 %conv127, %sub129
  %add130 = add i32 %shl126, %shr
  %mul131 = mul i32 768, %add130
  %idx.ext132 = zext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds i16, i16* %add.ptr121, i64 %idx.ext132
  %probs = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr133, i16** %probs, align 8
  %state134 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %74 = load i32, i32* %state134, align 4
  %cmp135 = icmp slt i32 %74, 4
  br i1 %cmp135, label %if.then.137, label %if.else

if.then.137:                                      ; preds = %if.then.119
  %state138 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  store i32 0, i32* %state138, align 4
  br label %if.end.149

if.else:                                          ; preds = %if.then.119
  %state139 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %75 = load i32, i32* %state139, align 4
  %cmp140 = icmp slt i32 %75, 10
  br i1 %cmp140, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %if.else
  %state143 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %76 = load i32, i32* %state143, align 4
  %sub144 = sub nsw i32 %76, 3
  store i32 %sub144, i32* %state143, align 4
  br label %if.end.148

if.else.145:                                      ; preds = %if.else
  %state146 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %77 = load i32, i32* %state146, align 4
  %sub147 = sub nsw i32 %77, 6
  store i32 %sub147, i32* %state146, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.142
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.137
  %isPreviousMatch = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 22
  %78 = load i32, i32* %isPreviousMatch, align 4
  %tobool150 = icmp ne i32 %78, 0
  br i1 %tobool150, label %if.then.151, label %if.else.328

if.then.151:                                      ; preds = %if.end.149
  %dictionaryPos = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %79 = load i32, i32* %dictionaryPos, align 4
  %rep0 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %80 = load i32, i32* %rep0, align 4
  %sub152 = sub i32 %79, %80
  store i32 %sub152, i32* %pos, align 4
  %81 = load i32, i32* %pos, align 4
  %dictionarySize153 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %82 = load i32, i32* %dictionarySize153, align 4
  %cmp154 = icmp uge i32 %81, %82
  br i1 %cmp154, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %if.then.151
  %dictionarySize157 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %83 = load i32, i32* %dictionarySize157, align 4
  %84 = load i32, i32* %pos, align 4
  %add158 = add i32 %84, %83
  store i32 %add158, i32* %pos, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %if.then.151
  %85 = load i32, i32* %pos, align 4
  %idxprom160 = zext i32 %85 to i64
  %dictionary161 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %86 = load i8*, i8** %dictionary161, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %86, i64 %idxprom160
  %87 = load i8, i8* %arrayidx162, align 1
  %matchByte = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 12
  store i8 %87, i8* %matchByte, align 1
  %temp2 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 1, i32* %temp2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.159
  %matchByte163 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 12
  %88 = load i8, i8* %matchByte163, align 1
  %conv164 = zext i8 %88 to i32
  %shr165 = ashr i32 %conv164, 7
  %and166 = and i32 %shr165, 1
  %temp1167 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 %and166, i32* %temp1167, align 4
  %matchByte168 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 12
  %89 = load i8, i8* %matchByte168, align 1
  %conv169 = zext i8 %89 to i32
  %shl170 = shl i32 %conv169, 1
  %conv171 = trunc i32 %shl170 to i8
  store i8 %conv171, i8* %matchByte168, align 1
  %probs172 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %90 = load i16*, i16** %probs172, align 8
  %temp1173 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %91 = load i32, i32* %temp1173, align 4
  %add174 = add nsw i32 1, %91
  %shl175 = shl i32 %add174, 8
  %idx.ext176 = sext i32 %shl175 to i64
  %add.ptr177 = getelementptr inbounds i16, i16* %90, i64 %idx.ext176
  %temp2178 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %92 = load i32, i32* %temp2178, align 4
  %idx.ext179 = sext i32 %92 to i64
  %add.ptr180 = getelementptr inbounds i16, i16* %add.ptr177, i64 %idx.ext179
  %prob181 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr180, i16** %prob181, align 8
  %range = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %93 = load i32, i32* %range, align 4
  %shr182 = lshr i32 %93, 11
  %prob183 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %94 = load i16*, i16** %prob183, align 8
  %95 = load i16, i16* %94, align 2
  %conv184 = zext i16 %95 to i32
  %mul185 = mul i32 %shr182, %conv184
  store i32 %mul185, i32* %bound, align 4
  %code186 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %96 = load i32, i32* %code186, align 4
  %97 = load i32, i32* %bound, align 4
  %cmp187 = icmp ult i32 %96, %97
  br i1 %cmp187, label %if.then.189, label %if.else.202

if.then.189:                                      ; preds = %do.body
  %temp3190 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 0, i32* %temp3190, align 4
  %98 = load i32, i32* %bound, align 4
  %range191 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %98, i32* %range191, align 4
  %prob192 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %99 = load i16*, i16** %prob192, align 8
  %100 = load i16, i16* %99, align 2
  %conv193 = zext i16 %100 to i32
  %sub194 = sub nsw i32 2048, %conv193
  %shr195 = ashr i32 %sub194, 5
  %prob196 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %101 = load i16*, i16** %prob196, align 8
  %102 = load i16, i16* %101, align 2
  %conv197 = zext i16 %102 to i32
  %add198 = add nsw i32 %conv197, %shr195
  %conv199 = trunc i32 %add198 to i16
  store i16 %conv199, i16* %101, align 2
  %temp2200 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %103 = load i32, i32* %temp2200, align 4
  %shl201 = shl i32 %103, 1
  store i32 %shl201, i32* %temp2200, align 4
  br label %if.end.220

if.else.202:                                      ; preds = %do.body
  %temp3203 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 1, i32* %temp3203, align 4
  %104 = load i32, i32* %bound, align 4
  %range204 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %105 = load i32, i32* %range204, align 4
  %sub205 = sub i32 %105, %104
  store i32 %sub205, i32* %range204, align 4
  %106 = load i32, i32* %bound, align 4
  %code206 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %107 = load i32, i32* %code206, align 4
  %sub207 = sub i32 %107, %106
  store i32 %sub207, i32* %code206, align 4
  %prob208 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %108 = load i16*, i16** %prob208, align 8
  %109 = load i16, i16* %108, align 2
  %conv209 = zext i16 %109 to i32
  %shr210 = ashr i32 %conv209, 5
  %prob211 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %110 = load i16*, i16** %prob211, align 8
  %111 = load i16, i16* %110, align 2
  %conv212 = zext i16 %111 to i32
  %sub213 = sub nsw i32 %conv212, %shr210
  %conv214 = trunc i32 %sub213 to i16
  store i16 %conv214, i16* %110, align 2
  %temp2215 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %112 = load i32, i32* %temp2215, align 4
  %temp2216 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %113 = load i32, i32* %temp2216, align 4
  %add217 = add nsw i32 %112, %113
  %add218 = add nsw i32 %add217, 1
  %temp2219 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 %add218, i32* %temp2219, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.202, %if.then.189
  %range221 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %114 = load i32, i32* %range221, align 4
  %cmp222 = icmp ult i32 %114, 16777216
  br i1 %cmp222, label %if.then.224, label %if.end.242

if.then.224:                                      ; preds = %if.end.220
  br label %sw.bb.225

sw.bb.225:                                        ; preds = %for.cond, %if.then.224
  %avail_in226 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %115 = load i32, i32* %avail_in226, align 4
  %tobool227 = icmp ne i32 %115, 0
  br i1 %tobool227, label %if.end.230, label %if.then.228

if.then.228:                                      ; preds = %sw.bb.225
  %mode229 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 13, i32* %mode229, align 4
  br label %saveStateAndReturn

if.end.230:                                       ; preds = %sw.bb.225
  %range231 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %116 = load i32, i32* %range231, align 4
  %shl232 = shl i32 %116, 8
  store i32 %shl232, i32* %range231, align 4
  %code233 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %117 = load i32, i32* %code233, align 4
  %shl234 = shl i32 %117, 8
  %avail_in235 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %118 = load i32, i32* %avail_in235, align 4
  %dec236 = add i32 %118, -1
  store i32 %dec236, i32* %avail_in235, align 4
  %next_in237 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %119 = load i8*, i8** %next_in237, align 8
  %incdec.ptr238 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr238, i8** %next_in237, align 8
  %120 = load i8, i8* %119, align 1
  %conv239 = zext i8 %120 to i32
  %or240 = or i32 %shl234, %conv239
  %code241 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or240, i32* %code241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.230, %if.end.220
  %temp1243 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %121 = load i32, i32* %temp1243, align 4
  %temp3244 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %122 = load i32, i32* %temp3244, align 4
  %cmp245 = icmp ne i32 %121, %122
  br i1 %cmp245, label %if.then.247, label %if.end.320

if.then.247:                                      ; preds = %if.end.242
  br label %while.cond.248

while.cond.248:                                   ; preds = %if.end.318, %if.then.247
  %temp2249 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %123 = load i32, i32* %temp2249, align 4
  %cmp250 = icmp slt i32 %123, 256
  br i1 %cmp250, label %while.body.252, label %while.end.319

while.body.252:                                   ; preds = %while.cond.248
  %probs253 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %124 = load i16*, i16** %probs253, align 8
  %temp2254 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %125 = load i32, i32* %temp2254, align 4
  %idx.ext255 = sext i32 %125 to i64
  %add.ptr256 = getelementptr inbounds i16, i16* %124, i64 %idx.ext255
  %prob257 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr256, i16** %prob257, align 8
  %range259 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %126 = load i32, i32* %range259, align 4
  %shr260 = lshr i32 %126, 11
  %prob261 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %127 = load i16*, i16** %prob261, align 8
  %128 = load i16, i16* %127, align 2
  %conv262 = zext i16 %128 to i32
  %mul263 = mul i32 %shr260, %conv262
  store i32 %mul263, i32* %bound258, align 4
  %code264 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %129 = load i32, i32* %code264, align 4
  %130 = load i32, i32* %bound258, align 4
  %cmp265 = icmp ult i32 %129, %130
  br i1 %cmp265, label %if.then.267, label %if.else.279

if.then.267:                                      ; preds = %while.body.252
  %131 = load i32, i32* %bound258, align 4
  %range268 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %131, i32* %range268, align 4
  %prob269 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %132 = load i16*, i16** %prob269, align 8
  %133 = load i16, i16* %132, align 2
  %conv270 = zext i16 %133 to i32
  %sub271 = sub nsw i32 2048, %conv270
  %shr272 = ashr i32 %sub271, 5
  %prob273 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %134 = load i16*, i16** %prob273, align 8
  %135 = load i16, i16* %134, align 2
  %conv274 = zext i16 %135 to i32
  %add275 = add nsw i32 %conv274, %shr272
  %conv276 = trunc i32 %add275 to i16
  store i16 %conv276, i16* %134, align 2
  %temp2277 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %136 = load i32, i32* %temp2277, align 4
  %shl278 = shl i32 %136, 1
  store i32 %shl278, i32* %temp2277, align 4
  br label %if.end.296

if.else.279:                                      ; preds = %while.body.252
  %137 = load i32, i32* %bound258, align 4
  %range280 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %138 = load i32, i32* %range280, align 4
  %sub281 = sub i32 %138, %137
  store i32 %sub281, i32* %range280, align 4
  %139 = load i32, i32* %bound258, align 4
  %code282 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %140 = load i32, i32* %code282, align 4
  %sub283 = sub i32 %140, %139
  store i32 %sub283, i32* %code282, align 4
  %prob284 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %141 = load i16*, i16** %prob284, align 8
  %142 = load i16, i16* %141, align 2
  %conv285 = zext i16 %142 to i32
  %shr286 = ashr i32 %conv285, 5
  %prob287 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %143 = load i16*, i16** %prob287, align 8
  %144 = load i16, i16* %143, align 2
  %conv288 = zext i16 %144 to i32
  %sub289 = sub nsw i32 %conv288, %shr286
  %conv290 = trunc i32 %sub289 to i16
  store i16 %conv290, i16* %143, align 2
  %temp2291 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %145 = load i32, i32* %temp2291, align 4
  %temp2292 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %146 = load i32, i32* %temp2292, align 4
  %add293 = add nsw i32 %145, %146
  %add294 = add nsw i32 %add293, 1
  %temp2295 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 %add294, i32* %temp2295, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.279, %if.then.267
  %range297 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %147 = load i32, i32* %range297, align 4
  %cmp298 = icmp ult i32 %147, 16777216
  br i1 %cmp298, label %if.then.300, label %if.end.318

if.then.300:                                      ; preds = %if.end.296
  br label %sw.bb.301

sw.bb.301:                                        ; preds = %for.cond, %if.then.300
  %avail_in302 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %148 = load i32, i32* %avail_in302, align 4
  %tobool303 = icmp ne i32 %148, 0
  br i1 %tobool303, label %if.end.306, label %if.then.304

if.then.304:                                      ; preds = %sw.bb.301
  %mode305 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 14, i32* %mode305, align 4
  br label %saveStateAndReturn

if.end.306:                                       ; preds = %sw.bb.301
  %range307 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %149 = load i32, i32* %range307, align 4
  %shl308 = shl i32 %149, 8
  store i32 %shl308, i32* %range307, align 4
  %code309 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %150 = load i32, i32* %code309, align 4
  %shl310 = shl i32 %150, 8
  %avail_in311 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %151 = load i32, i32* %avail_in311, align 4
  %dec312 = add i32 %151, -1
  store i32 %dec312, i32* %avail_in311, align 4
  %next_in313 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %152 = load i8*, i8** %next_in313, align 8
  %incdec.ptr314 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr314, i8** %next_in313, align 8
  %153 = load i8, i8* %152, align 1
  %conv315 = zext i8 %153 to i32
  %or316 = or i32 %shl310, %conv315
  %code317 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or316, i32* %code317, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.306, %if.end.296
  br label %while.cond.248

while.end.319:                                    ; preds = %while.cond.248
  br label %do.end

if.end.320:                                       ; preds = %if.end.242
  br label %do.cond

do.cond:                                          ; preds = %if.end.320
  %temp2321 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %154 = load i32, i32* %temp2321, align 4
  %cmp322 = icmp slt i32 %154, 256
  br i1 %cmp322, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %while.end.319
  %temp2324 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %155 = load i32, i32* %temp2324, align 4
  %conv325 = trunc i32 %155 to i8
  %previousByte326 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  store i8 %conv325, i8* %previousByte326, align 1
  %isPreviousMatch327 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 22
  store i32 0, i32* %isPreviousMatch327, align 4
  br label %if.end.405

if.else.328:                                      ; preds = %if.end.149
  %temp2329 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 1, i32* %temp2329, align 4
  br label %do.body.330

do.body.330:                                      ; preds = %do.cond.397, %if.else.328
  %probs331 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %156 = load i16*, i16** %probs331, align 8
  %temp2332 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %157 = load i32, i32* %temp2332, align 4
  %idx.ext333 = sext i32 %157 to i64
  %add.ptr334 = getelementptr inbounds i16, i16* %156, i64 %idx.ext333
  %prob335 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr334, i16** %prob335, align 8
  %range337 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %158 = load i32, i32* %range337, align 4
  %shr338 = lshr i32 %158, 11
  %prob339 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %159 = load i16*, i16** %prob339, align 8
  %160 = load i16, i16* %159, align 2
  %conv340 = zext i16 %160 to i32
  %mul341 = mul i32 %shr338, %conv340
  store i32 %mul341, i32* %bound336, align 4
  %code342 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %161 = load i32, i32* %code342, align 4
  %162 = load i32, i32* %bound336, align 4
  %cmp343 = icmp ult i32 %161, %162
  br i1 %cmp343, label %if.then.345, label %if.else.357

if.then.345:                                      ; preds = %do.body.330
  %163 = load i32, i32* %bound336, align 4
  %range346 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %163, i32* %range346, align 4
  %prob347 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %164 = load i16*, i16** %prob347, align 8
  %165 = load i16, i16* %164, align 2
  %conv348 = zext i16 %165 to i32
  %sub349 = sub nsw i32 2048, %conv348
  %shr350 = ashr i32 %sub349, 5
  %prob351 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %166 = load i16*, i16** %prob351, align 8
  %167 = load i16, i16* %166, align 2
  %conv352 = zext i16 %167 to i32
  %add353 = add nsw i32 %conv352, %shr350
  %conv354 = trunc i32 %add353 to i16
  store i16 %conv354, i16* %166, align 2
  %temp2355 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %168 = load i32, i32* %temp2355, align 4
  %shl356 = shl i32 %168, 1
  store i32 %shl356, i32* %temp2355, align 4
  br label %if.end.374

if.else.357:                                      ; preds = %do.body.330
  %169 = load i32, i32* %bound336, align 4
  %range358 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %170 = load i32, i32* %range358, align 4
  %sub359 = sub i32 %170, %169
  store i32 %sub359, i32* %range358, align 4
  %171 = load i32, i32* %bound336, align 4
  %code360 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %172 = load i32, i32* %code360, align 4
  %sub361 = sub i32 %172, %171
  store i32 %sub361, i32* %code360, align 4
  %prob362 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %173 = load i16*, i16** %prob362, align 8
  %174 = load i16, i16* %173, align 2
  %conv363 = zext i16 %174 to i32
  %shr364 = ashr i32 %conv363, 5
  %prob365 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %175 = load i16*, i16** %prob365, align 8
  %176 = load i16, i16* %175, align 2
  %conv366 = zext i16 %176 to i32
  %sub367 = sub nsw i32 %conv366, %shr364
  %conv368 = trunc i32 %sub367 to i16
  store i16 %conv368, i16* %175, align 2
  %temp2369 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %177 = load i32, i32* %temp2369, align 4
  %temp2370 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %178 = load i32, i32* %temp2370, align 4
  %add371 = add nsw i32 %177, %178
  %add372 = add nsw i32 %add371, 1
  %temp2373 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 %add372, i32* %temp2373, align 4
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.357, %if.then.345
  %range375 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %179 = load i32, i32* %range375, align 4
  %cmp376 = icmp ult i32 %179, 16777216
  br i1 %cmp376, label %if.then.378, label %if.end.396

if.then.378:                                      ; preds = %if.end.374
  br label %sw.bb.379

sw.bb.379:                                        ; preds = %for.cond, %if.then.378
  %avail_in380 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %180 = load i32, i32* %avail_in380, align 4
  %tobool381 = icmp ne i32 %180, 0
  br i1 %tobool381, label %if.end.384, label %if.then.382

if.then.382:                                      ; preds = %sw.bb.379
  %mode383 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 15, i32* %mode383, align 4
  br label %saveStateAndReturn

if.end.384:                                       ; preds = %sw.bb.379
  %range385 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %181 = load i32, i32* %range385, align 4
  %shl386 = shl i32 %181, 8
  store i32 %shl386, i32* %range385, align 4
  %code387 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %182 = load i32, i32* %code387, align 4
  %shl388 = shl i32 %182, 8
  %avail_in389 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %183 = load i32, i32* %avail_in389, align 4
  %dec390 = add i32 %183, -1
  store i32 %dec390, i32* %avail_in389, align 4
  %next_in391 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %184 = load i8*, i8** %next_in391, align 8
  %incdec.ptr392 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr392, i8** %next_in391, align 8
  %185 = load i8, i8* %184, align 1
  %conv393 = zext i8 %185 to i32
  %or394 = or i32 %shl388, %conv393
  %code395 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or394, i32* %code395, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.384, %if.end.374
  br label %do.cond.397

do.cond.397:                                      ; preds = %if.end.396
  %temp2398 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %186 = load i32, i32* %temp2398, align 4
  %cmp399 = icmp slt i32 %186, 256
  br i1 %cmp399, label %do.body.330, label %do.end.401

do.end.401:                                       ; preds = %do.cond.397
  %temp2402 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %187 = load i32, i32* %temp2402, align 4
  %conv403 = trunc i32 %187 to i8
  %previousByte404 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  store i8 %conv403, i8* %previousByte404, align 1
  br label %if.end.405

if.end.405:                                       ; preds = %do.end.401, %do.end
  br label %sw.bb.406

sw.bb.406:                                        ; preds = %for.cond, %if.end.405
  %avail_out = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %188 = load i32, i32* %avail_out, align 4
  %tobool407 = icmp ne i32 %188, 0
  br i1 %tobool407, label %if.end.410, label %if.then.408

if.then.408:                                      ; preds = %sw.bb.406
  %mode409 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 26, i32* %mode409, align 4
  br label %saveStateAndReturn

if.end.410:                                       ; preds = %sw.bb.406
  %totalOut411 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %189 = load i32, i32* %totalOut411, align 4
  %inc412 = add i32 %189, 1
  store i32 %inc412, i32* %totalOut411, align 4
  %previousByte413 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %190 = load i8, i8* %previousByte413, align 1
  %next_out = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %191 = load i8*, i8** %next_out, align 8
  store i8 %190, i8* %191, align 1
  %next_out414 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %192 = load i8*, i8** %next_out414, align 8
  %incdec.ptr415 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr415, i8** %next_out414, align 8
  %avail_out416 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %193 = load i32, i32* %avail_out416, align 4
  %dec417 = add i32 %193, -1
  store i32 %dec417, i32* %avail_out416, align 4
  %previousByte418 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %194 = load i8, i8* %previousByte418, align 1
  %dictionaryPos419 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %195 = load i32, i32* %dictionaryPos419, align 4
  %idxprom420 = zext i32 %195 to i64
  %dictionary421 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %196 = load i8*, i8** %dictionary421, align 8
  %arrayidx422 = getelementptr inbounds i8, i8* %196, i64 %idxprom420
  store i8 %194, i8* %arrayidx422, align 1
  %dictionaryPos423 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %197 = load i32, i32* %dictionaryPos423, align 4
  %add424 = add i32 %197, 1
  %dictionarySize425 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %198 = load i32, i32* %dictionarySize425, align 4
  %rem426 = urem i32 %add424, %198
  %dictionaryPos427 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  store i32 %rem426, i32* %dictionaryPos427, align 4
  br label %if.end.836

if.else.428:                                      ; preds = %sw.bb.115
  %isPreviousMatch429 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 22
  store i32 1, i32* %isPreviousMatch429, align 4
  %dynamicData430 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %199 = bitcast i8** %dynamicData430 to i16**
  %200 = load i16*, i16** %199, align 8
  %add.ptr431 = getelementptr inbounds i16, i16* %200, i64 192
  %state432 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %201 = load i32, i32* %state432, align 4
  %idx.ext433 = sext i32 %201 to i64
  %add.ptr434 = getelementptr inbounds i16, i16* %add.ptr431, i64 %idx.ext433
  %prob435 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr434, i16** %prob435, align 8
  %last436 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 7, i32* %last436, align 4
  br label %_LZMA_C_RDBD

sw.bb.437:                                        ; preds = %for.cond
  %temp3438 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %202 = load i32, i32* %temp3438, align 4
  %cmp439 = icmp eq i32 %202, 1
  br i1 %cmp439, label %if.then.441, label %if.else.566

if.then.441:                                      ; preds = %sw.bb.437
  %dynamicData442 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %203 = bitcast i8** %dynamicData442 to i16**
  %204 = load i16*, i16** %203, align 8
  %add.ptr443 = getelementptr inbounds i16, i16* %204, i64 204
  %state444 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %205 = load i32, i32* %state444, align 4
  %idx.ext445 = sext i32 %205 to i64
  %add.ptr446 = getelementptr inbounds i16, i16* %add.ptr443, i64 %idx.ext445
  %prob447 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr446, i16** %prob447, align 8
  %last448 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 8, i32* %last448, align 4
  br label %_LZMA_C_RDBD

sw.bb.449:                                        ; preds = %for.cond
  %temp3450 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %206 = load i32, i32* %temp3450, align 4
  %cmp451 = icmp eq i32 %206, 0
  br i1 %cmp451, label %if.then.453, label %if.else.520

if.then.453:                                      ; preds = %sw.bb.449
  %dynamicData454 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %207 = bitcast i8** %dynamicData454 to i16**
  %208 = load i16*, i16** %207, align 8
  %add.ptr455 = getelementptr inbounds i16, i16* %208, i64 240
  %state456 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %209 = load i32, i32* %state456, align 4
  %shl457 = shl i32 %209, 4
  %idx.ext458 = sext i32 %shl457 to i64
  %add.ptr459 = getelementptr inbounds i16, i16* %add.ptr455, i64 %idx.ext458
  %posState460 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 16
  %210 = load i32, i32* %posState460, align 4
  %idx.ext461 = sext i32 %210 to i64
  %add.ptr462 = getelementptr inbounds i16, i16* %add.ptr459, i64 %idx.ext461
  %prob463 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr462, i16** %prob463, align 8
  %last464 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 9, i32* %last464, align 4
  br label %_LZMA_C_RDBD

sw.bb.465:                                        ; preds = %for.cond
  %temp3466 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %211 = load i32, i32* %temp3466, align 4
  %cmp467 = icmp eq i32 %211, 0
  br i1 %cmp467, label %if.then.469, label %if.end.519

if.then.469:                                      ; preds = %sw.bb.465
  %totalOut471 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %212 = load i32, i32* %totalOut471, align 4
  %cmp472 = icmp eq i32 %212, 0
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %if.then.469
  store i32 -1, i32* %retval
  br label %return

if.end.475:                                       ; preds = %if.then.469
  %state476 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %213 = load i32, i32* %state476, align 4
  %cmp477 = icmp slt i32 %213, 7
  %cond = select i1 %cmp477, i32 9, i32 11
  %state479 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  store i32 %cond, i32* %state479, align 4
  br label %sw.bb.480

sw.bb.480:                                        ; preds = %for.cond, %if.end.475
  %avail_out481 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %214 = load i32, i32* %avail_out481, align 4
  %tobool482 = icmp ne i32 %214, 0
  br i1 %tobool482, label %if.end.485, label %if.then.483

if.then.483:                                      ; preds = %sw.bb.480
  %mode484 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 27, i32* %mode484, align 4
  br label %saveStateAndReturn

if.end.485:                                       ; preds = %sw.bb.480
  %dictionaryPos486 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %215 = load i32, i32* %dictionaryPos486, align 4
  %rep0487 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %216 = load i32, i32* %rep0487, align 4
  %sub488 = sub i32 %215, %216
  store i32 %sub488, i32* %pos470, align 4
  %217 = load i32, i32* %pos470, align 4
  %dictionarySize489 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %218 = load i32, i32* %dictionarySize489, align 4
  %cmp490 = icmp uge i32 %217, %218
  br i1 %cmp490, label %if.then.492, label %if.end.495

if.then.492:                                      ; preds = %if.end.485
  %dictionarySize493 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %219 = load i32, i32* %dictionarySize493, align 4
  %220 = load i32, i32* %pos470, align 4
  %add494 = add i32 %220, %219
  store i32 %add494, i32* %pos470, align 4
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.492, %if.end.485
  %221 = load i32, i32* %pos470, align 4
  %idxprom496 = zext i32 %221 to i64
  %dictionary497 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %222 = load i8*, i8** %dictionary497, align 8
  %arrayidx498 = getelementptr inbounds i8, i8* %222, i64 %idxprom496
  %223 = load i8, i8* %arrayidx498, align 1
  %previousByte499 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  store i8 %223, i8* %previousByte499, align 1
  %previousByte500 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %224 = load i8, i8* %previousByte500, align 1
  %dictionaryPos501 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %225 = load i32, i32* %dictionaryPos501, align 4
  %idxprom502 = zext i32 %225 to i64
  %dictionary503 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %226 = load i8*, i8** %dictionary503, align 8
  %arrayidx504 = getelementptr inbounds i8, i8* %226, i64 %idxprom502
  store i8 %224, i8* %arrayidx504, align 1
  %dictionaryPos505 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %227 = load i32, i32* %dictionaryPos505, align 4
  %add506 = add i32 %227, 1
  %dictionarySize507 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %228 = load i32, i32* %dictionarySize507, align 4
  %rem508 = urem i32 %add506, %228
  %dictionaryPos509 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  store i32 %rem508, i32* %dictionaryPos509, align 4
  %totalOut510 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %229 = load i32, i32* %totalOut510, align 4
  %inc511 = add i32 %229, 1
  store i32 %inc511, i32* %totalOut510, align 4
  %previousByte512 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %230 = load i8, i8* %previousByte512, align 1
  %next_out513 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %231 = load i8*, i8** %next_out513, align 8
  store i8 %230, i8* %231, align 1
  %next_out514 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %232 = load i8*, i8** %next_out514, align 8
  %incdec.ptr515 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr515, i8** %next_out514, align 8
  %avail_out516 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %233 = load i32, i32* %avail_out516, align 4
  %dec517 = add i32 %233, -1
  store i32 %dec517, i32* %avail_out516, align 4
  %mode518 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 2, i32* %mode518, align 4
  br label %sw.epilog

if.end.519:                                       ; preds = %sw.bb.465
  br label %if.end.556

if.else.520:                                      ; preds = %sw.bb.449
  %dynamicData521 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %234 = bitcast i8** %dynamicData521 to i16**
  %235 = load i16*, i16** %234, align 8
  %add.ptr522 = getelementptr inbounds i16, i16* %235, i64 216
  %state523 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %236 = load i32, i32* %state523, align 4
  %idx.ext524 = sext i32 %236 to i64
  %add.ptr525 = getelementptr inbounds i16, i16* %add.ptr522, i64 %idx.ext524
  %prob526 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr525, i16** %prob526, align 8
  %last527 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 10, i32* %last527, align 4
  br label %_LZMA_C_RDBD

sw.bb.528:                                        ; preds = %for.cond
  %temp3529 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %237 = load i32, i32* %temp3529, align 4
  %cmp530 = icmp eq i32 %237, 0
  br i1 %cmp530, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %sw.bb.528
  %rep1 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 25
  %238 = load i32, i32* %rep1, align 4
  store i32 %238, i32* %distance, align 4
  br label %if.end.552

if.else.533:                                      ; preds = %sw.bb.528
  %dynamicData534 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %239 = bitcast i8** %dynamicData534 to i16**
  %240 = load i16*, i16** %239, align 8
  %add.ptr535 = getelementptr inbounds i16, i16* %240, i64 228
  %state536 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %241 = load i32, i32* %state536, align 4
  %idx.ext537 = sext i32 %241 to i64
  %add.ptr538 = getelementptr inbounds i16, i16* %add.ptr535, i64 %idx.ext537
  %prob539 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr538, i16** %prob539, align 8
  %last540 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 11, i32* %last540, align 4
  br label %_LZMA_C_RDBD

sw.bb.541:                                        ; preds = %for.cond
  %temp3542 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %242 = load i32, i32* %temp3542, align 4
  %cmp543 = icmp eq i32 %242, 0
  br i1 %cmp543, label %if.then.545, label %if.else.546

if.then.545:                                      ; preds = %sw.bb.541
  %rep2 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 26
  %243 = load i32, i32* %rep2, align 4
  store i32 %243, i32* %distance, align 4
  br label %if.end.549

if.else.546:                                      ; preds = %sw.bb.541
  %rep3 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 27
  %244 = load i32, i32* %rep3, align 4
  store i32 %244, i32* %distance, align 4
  %rep2547 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 26
  %245 = load i32, i32* %rep2547, align 4
  %rep3548 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 27
  store i32 %245, i32* %rep3548, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.else.546, %if.then.545
  %rep1550 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 25
  %246 = load i32, i32* %rep1550, align 4
  %rep2551 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 26
  store i32 %246, i32* %rep2551, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.549, %if.then.532
  %rep0553 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %247 = load i32, i32* %rep0553, align 4
  %rep1554 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 25
  store i32 %247, i32* %rep1554, align 4
  %248 = load i32, i32* %distance, align 4
  %rep0555 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  store i32 %248, i32* %rep0555, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.552, %if.end.519
  %dynamicData557 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %249 = bitcast i8** %dynamicData557 to i16**
  %250 = load i16*, i16** %249, align 8
  %add.ptr558 = getelementptr inbounds i16, i16* %250, i64 1332
  %probs559 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr558, i16** %probs559, align 8
  %last2 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 2
  store i32 21, i32* %last2, align 4
  br label %_LZMA_C_LEND

sw.bb.560:                                        ; preds = %for.cond
  %state561 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %251 = load i32, i32* %state561, align 4
  %cmp562 = icmp slt i32 %251, 7
  %cond564 = select i1 %cmp562, i32 8, i32 11
  %state565 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  store i32 %cond564, i32* %state565, align 4
  br label %if.end.773

if.else.566:                                      ; preds = %sw.bb.437
  %rep2567 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 26
  %252 = load i32, i32* %rep2567, align 4
  %rep3568 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 27
  store i32 %252, i32* %rep3568, align 4
  %rep1569 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 25
  %253 = load i32, i32* %rep1569, align 4
  %rep2570 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 26
  store i32 %253, i32* %rep2570, align 4
  %rep0571 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %254 = load i32, i32* %rep0571, align 4
  %rep1572 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 25
  store i32 %254, i32* %rep1572, align 4
  %state573 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  %255 = load i32, i32* %state573, align 4
  %cmp574 = icmp slt i32 %255, 7
  %cond576 = select i1 %cmp574, i32 7, i32 10
  %state577 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 21
  store i32 %cond576, i32* %state577, align 4
  %dynamicData578 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %256 = bitcast i8** %dynamicData578 to i16**
  %257 = load i16*, i16** %256, align 8
  %add.ptr579 = getelementptr inbounds i16, i16* %257, i64 818
  %probs580 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr579, i16** %probs580, align 8
  %last2581 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 2
  store i32 22, i32* %last2581, align 4
  br label %_LZMA_C_LEND

sw.bb.582:                                        ; preds = %for.cond
  %dynamicData583 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %258 = bitcast i8** %dynamicData583 to i16**
  %259 = load i16*, i16** %258, align 8
  %add.ptr584 = getelementptr inbounds i16, i16* %259, i64 432
  %len585 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %260 = load i32, i32* %len585, align 4
  %cmp586 = icmp slt i32 %260, 4
  br i1 %cmp586, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.582
  %len588 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %261 = load i32, i32* %len588, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.582
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond589 = phi i32 [ %261, %cond.true ], [ 3, %cond.false ]
  %shl590 = shl i32 %cond589, 6
  %idx.ext591 = sext i32 %shl590 to i64
  %add.ptr592 = getelementptr inbounds i16, i16* %add.ptr584, i64 %idx.ext591
  %probs593 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr592, i16** %probs593, align 8
  %temp3594 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 6, i32* %temp3594, align 4
  %last3 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 3
  store i32 25, i32* %last3, align 4
  br label %_LZMA_C_BTD

sw.bb.595:                                        ; preds = %for.cond
  %temp2596 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %262 = load i32, i32* %temp2596, align 4
  %cmp597 = icmp sge i32 %262, 4
  br i1 %cmp597, label %if.then.599, label %if.else.767

if.then.599:                                      ; preds = %sw.bb.595
  %temp2600 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %263 = load i32, i32* %temp2600, align 4
  %shr601 = ashr i32 %263, 1
  %sub602 = sub nsw i32 %shr601, 1
  store i32 %sub602, i32* %numDirectBits, align 4
  %temp2603 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %264 = load i32, i32* %temp2603, align 4
  %and604 = and i32 %264, 1
  %or605 = or i32 2, %and604
  %265 = load i32, i32* %numDirectBits, align 4
  %shl606 = shl i32 %or605, %265
  %rep0607 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  store i32 %shl606, i32* %rep0607, align 4
  %temp2608 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %266 = load i32, i32* %temp2608, align 4
  %cmp609 = icmp slt i32 %266, 14
  br i1 %cmp609, label %if.then.611, label %if.else.623

if.then.611:                                      ; preds = %if.then.599
  %dynamicData612 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %267 = bitcast i8** %dynamicData612 to i16**
  %268 = load i16*, i16** %267, align 8
  %add.ptr613 = getelementptr inbounds i16, i16* %268, i64 688
  %rep0614 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %269 = load i32, i32* %rep0614, align 4
  %idx.ext615 = zext i32 %269 to i64
  %add.ptr616 = getelementptr inbounds i16, i16* %add.ptr613, i64 %idx.ext615
  %temp2617 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %270 = load i32, i32* %temp2617, align 4
  %idx.ext618 = sext i32 %270 to i64
  %idx.neg = sub i64 0, %idx.ext618
  %add.ptr619 = getelementptr inbounds i16, i16* %add.ptr616, i64 %idx.neg
  %add.ptr620 = getelementptr inbounds i16, i16* %add.ptr619, i64 -1
  %probs621 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr620, i16** %probs621, align 8
  %271 = load i32, i32* %numDirectBits, align 4
  %temp3622 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 %271, i32* %temp3622, align 4
  br label %if.end.681

if.else.623:                                      ; preds = %if.then.599
  %272 = load i32, i32* %numDirectBits, align 4
  %sub624 = sub nsw i32 %272, 4
  store i32 %sub624, i32* %numTotalBits, align 4
  %temp2625 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 0, i32* %temp2625, align 4
  %273 = load i32, i32* %numTotalBits, align 4
  %temp1626 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 %273, i32* %temp1626, align 4
  br label %for.cond.627

for.cond.627:                                     ; preds = %for.inc.669, %if.else.623
  %temp1628 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %274 = load i32, i32* %temp1628, align 4
  %cmp629 = icmp sgt i32 %274, 0
  br i1 %cmp629, label %for.body.631, label %for.end.672

for.body.631:                                     ; preds = %for.cond.627
  %range632 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %275 = load i32, i32* %range632, align 4
  %shr633 = lshr i32 %275, 1
  store i32 %shr633, i32* %range632, align 4
  %temp2634 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %276 = load i32, i32* %temp2634, align 4
  %shl635 = shl i32 %276, 1
  store i32 %shl635, i32* %temp2634, align 4
  %code636 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %277 = load i32, i32* %code636, align 4
  %range637 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %278 = load i32, i32* %range637, align 4
  %cmp638 = icmp uge i32 %277, %278
  br i1 %cmp638, label %if.then.640, label %if.end.646

if.then.640:                                      ; preds = %for.body.631
  %range641 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %279 = load i32, i32* %range641, align 4
  %code642 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %280 = load i32, i32* %code642, align 4
  %sub643 = sub i32 %280, %279
  store i32 %sub643, i32* %code642, align 4
  %temp2644 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %281 = load i32, i32* %temp2644, align 4
  %or645 = or i32 %281, 1
  store i32 %or645, i32* %temp2644, align 4
  br label %if.end.646

if.end.646:                                       ; preds = %if.then.640, %for.body.631
  %range647 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %282 = load i32, i32* %range647, align 4
  %cmp648 = icmp ult i32 %282, 16777216
  br i1 %cmp648, label %if.then.650, label %if.end.668

if.then.650:                                      ; preds = %if.end.646
  br label %sw.bb.651

sw.bb.651:                                        ; preds = %for.cond, %if.then.650
  %avail_in652 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %283 = load i32, i32* %avail_in652, align 4
  %tobool653 = icmp ne i32 %283, 0
  br i1 %tobool653, label %if.end.656, label %if.then.654

if.then.654:                                      ; preds = %sw.bb.651
  %mode655 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 12, i32* %mode655, align 4
  br label %saveStateAndReturn

if.end.656:                                       ; preds = %sw.bb.651
  %range657 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %284 = load i32, i32* %range657, align 4
  %shl658 = shl i32 %284, 8
  store i32 %shl658, i32* %range657, align 4
  %code659 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %285 = load i32, i32* %code659, align 4
  %shl660 = shl i32 %285, 8
  %avail_in661 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %286 = load i32, i32* %avail_in661, align 4
  %dec662 = add i32 %286, -1
  store i32 %dec662, i32* %avail_in661, align 4
  %next_in663 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %287 = load i8*, i8** %next_in663, align 8
  %incdec.ptr664 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %incdec.ptr664, i8** %next_in663, align 8
  %288 = load i8, i8* %287, align 1
  %conv665 = zext i8 %288 to i32
  %or666 = or i32 %shl660, %conv665
  %code667 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or666, i32* %code667, align 4
  br label %if.end.668

if.end.668:                                       ; preds = %if.end.656, %if.end.646
  br label %for.inc.669

for.inc.669:                                      ; preds = %if.end.668
  %temp1670 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %289 = load i32, i32* %temp1670, align 4
  %dec671 = add nsw i32 %289, -1
  store i32 %dec671, i32* %temp1670, align 4
  br label %for.cond.627

for.end.672:                                      ; preds = %for.cond.627
  %temp2673 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %290 = load i32, i32* %temp2673, align 4
  %shl674 = shl i32 %290, 4
  %rep0675 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %291 = load i32, i32* %rep0675, align 4
  %add676 = add i32 %291, %shl674
  store i32 %add676, i32* %rep0675, align 4
  %dynamicData677 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %292 = bitcast i8** %dynamicData677 to i16**
  %293 = load i16*, i16** %292, align 8
  %add.ptr678 = getelementptr inbounds i16, i16* %293, i64 802
  %probs679 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  store i16* %add.ptr678, i16** %probs679, align 8
  %temp3680 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 4, i32* %temp3680, align 4
  br label %if.end.681

if.end.681:                                       ; preds = %for.end.672, %if.then.611
  %mi = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  store i32 1, i32* %mi, align 4
  %temp2682 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 0, i32* %temp2682, align 4
  %temp1683 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 0, i32* %temp1683, align 4
  br label %for.cond.684

for.cond.684:                                     ; preds = %for.inc.760, %if.end.681
  %temp1685 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %294 = load i32, i32* %temp1685, align 4
  %temp3686 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %295 = load i32, i32* %temp3686, align 4
  %cmp687 = icmp slt i32 %294, %295
  br i1 %cmp687, label %for.body.689, label %for.end.763

for.body.689:                                     ; preds = %for.cond.684
  %probs690 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %296 = load i16*, i16** %probs690, align 8
  %mi691 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %297 = load i32, i32* %mi691, align 4
  %idx.ext692 = sext i32 %297 to i64
  %add.ptr693 = getelementptr inbounds i16, i16* %296, i64 %idx.ext692
  %prob694 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr693, i16** %prob694, align 8
  %range696 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %298 = load i32, i32* %range696, align 4
  %shr697 = lshr i32 %298, 11
  %prob698 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %299 = load i16*, i16** %prob698, align 8
  %300 = load i16, i16* %299, align 2
  %conv699 = zext i16 %300 to i32
  %mul700 = mul i32 %shr697, %conv699
  store i32 %mul700, i32* %bound695, align 4
  %code701 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %301 = load i32, i32* %code701, align 4
  %302 = load i32, i32* %bound695, align 4
  %cmp702 = icmp ult i32 %301, %302
  br i1 %cmp702, label %if.then.704, label %if.else.716

if.then.704:                                      ; preds = %for.body.689
  %303 = load i32, i32* %bound695, align 4
  %range705 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %303, i32* %range705, align 4
  %prob706 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %304 = load i16*, i16** %prob706, align 8
  %305 = load i16, i16* %304, align 2
  %conv707 = zext i16 %305 to i32
  %sub708 = sub nsw i32 2048, %conv707
  %shr709 = ashr i32 %sub708, 5
  %prob710 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %306 = load i16*, i16** %prob710, align 8
  %307 = load i16, i16* %306, align 2
  %conv711 = zext i16 %307 to i32
  %add712 = add nsw i32 %conv711, %shr709
  %conv713 = trunc i32 %add712 to i16
  store i16 %conv713, i16* %306, align 2
  %mi714 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %308 = load i32, i32* %mi714, align 4
  %shl715 = shl i32 %308, 1
  store i32 %shl715, i32* %mi714, align 4
  br label %if.end.737

if.else.716:                                      ; preds = %for.body.689
  %temp1717 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %309 = load i32, i32* %temp1717, align 4
  %shl718 = shl i32 1, %309
  %temp2719 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %310 = load i32, i32* %temp2719, align 4
  %or720 = or i32 %310, %shl718
  store i32 %or720, i32* %temp2719, align 4
  %311 = load i32, i32* %bound695, align 4
  %range721 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %312 = load i32, i32* %range721, align 4
  %sub722 = sub i32 %312, %311
  store i32 %sub722, i32* %range721, align 4
  %313 = load i32, i32* %bound695, align 4
  %code723 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %314 = load i32, i32* %code723, align 4
  %sub724 = sub i32 %314, %313
  store i32 %sub724, i32* %code723, align 4
  %prob725 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %315 = load i16*, i16** %prob725, align 8
  %316 = load i16, i16* %315, align 2
  %conv726 = zext i16 %316 to i32
  %shr727 = ashr i32 %conv726, 5
  %prob728 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %317 = load i16*, i16** %prob728, align 8
  %318 = load i16, i16* %317, align 2
  %conv729 = zext i16 %318 to i32
  %sub730 = sub nsw i32 %conv729, %shr727
  %conv731 = trunc i32 %sub730 to i16
  store i16 %conv731, i16* %317, align 2
  %mi732 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %319 = load i32, i32* %mi732, align 4
  %mi733 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %320 = load i32, i32* %mi733, align 4
  %add734 = add nsw i32 %319, %320
  %add735 = add nsw i32 %add734, 1
  %mi736 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  store i32 %add735, i32* %mi736, align 4
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.716, %if.then.704
  %range738 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %321 = load i32, i32* %range738, align 4
  %cmp739 = icmp ult i32 %321, 16777216
  br i1 %cmp739, label %if.then.741, label %if.end.759

if.then.741:                                      ; preds = %if.end.737
  br label %sw.bb.742

sw.bb.742:                                        ; preds = %for.cond, %if.then.741
  %avail_in743 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %322 = load i32, i32* %avail_in743, align 4
  %tobool744 = icmp ne i32 %322, 0
  br i1 %tobool744, label %if.end.747, label %if.then.745

if.then.745:                                      ; preds = %sw.bb.742
  %mode746 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 16, i32* %mode746, align 4
  br label %saveStateAndReturn

if.end.747:                                       ; preds = %sw.bb.742
  %range748 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %323 = load i32, i32* %range748, align 4
  %shl749 = shl i32 %323, 8
  store i32 %shl749, i32* %range748, align 4
  %code750 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %324 = load i32, i32* %code750, align 4
  %shl751 = shl i32 %324, 8
  %avail_in752 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %325 = load i32, i32* %avail_in752, align 4
  %dec753 = add i32 %325, -1
  store i32 %dec753, i32* %avail_in752, align 4
  %next_in754 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %326 = load i8*, i8** %next_in754, align 8
  %incdec.ptr755 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr755, i8** %next_in754, align 8
  %327 = load i8, i8* %326, align 1
  %conv756 = zext i8 %327 to i32
  %or757 = or i32 %shl751, %conv756
  %code758 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or757, i32* %code758, align 4
  br label %if.end.759

if.end.759:                                       ; preds = %if.end.747, %if.end.737
  br label %for.inc.760

for.inc.760:                                      ; preds = %if.end.759
  %temp1761 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %328 = load i32, i32* %temp1761, align 4
  %inc762 = add nsw i32 %328, 1
  store i32 %inc762, i32* %temp1761, align 4
  br label %for.cond.684

for.end.763:                                      ; preds = %for.cond.684
  %temp2764 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %329 = load i32, i32* %temp2764, align 4
  %rep0765 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %330 = load i32, i32* %rep0765, align 4
  %add766 = add i32 %330, %329
  store i32 %add766, i32* %rep0765, align 4
  br label %if.end.770

if.else.767:                                      ; preds = %sw.bb.595
  %temp2768 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %331 = load i32, i32* %temp2768, align 4
  %rep0769 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  store i32 %331, i32* %rep0769, align 4
  br label %if.end.770

if.end.770:                                       ; preds = %if.else.767, %for.end.763
  %rep0771 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %332 = load i32, i32* %rep0771, align 4
  %inc772 = add i32 %332, 1
  store i32 %inc772, i32* %rep0771, align 4
  br label %if.end.773

if.end.773:                                       ; preds = %if.end.770, %sw.bb.560
  %rep0774 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %333 = load i32, i32* %rep0774, align 4
  %cmp775 = icmp eq i32 %333, 0
  br i1 %cmp775, label %if.then.777, label %if.end.779

if.then.777:                                      ; preds = %if.end.773
  %len778 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  store i32 -1, i32* %len778, align 4
  br label %saveStateAndReturn

if.end.779:                                       ; preds = %if.end.773
  %rep0780 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %334 = load i32, i32* %rep0780, align 4
  %totalOut781 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %335 = load i32, i32* %totalOut781, align 4
  %cmp782 = icmp ugt i32 %334, %335
  br i1 %cmp782, label %if.then.784, label %if.end.785

if.then.784:                                      ; preds = %if.end.779
  store i32 -1, i32* %retval
  br label %return

if.end.785:                                       ; preds = %if.end.779
  %len786 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %336 = load i32, i32* %len786, align 4
  %add787 = add nsw i32 %336, 2
  store i32 %add787, i32* %len786, align 4
  %len788 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %337 = load i32, i32* %len788, align 4
  %totalOut789 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 10
  %338 = load i32, i32* %totalOut789, align 4
  %add790 = add i32 %338, %337
  store i32 %add790, i32* %totalOut789, align 4
  br label %do.body.791

do.body.791:                                      ; preds = %do.cond.831, %if.end.785
  br label %sw.bb.793

sw.bb.793:                                        ; preds = %for.cond, %do.body.791
  %avail_out794 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %339 = load i32, i32* %avail_out794, align 4
  %tobool795 = icmp ne i32 %339, 0
  br i1 %tobool795, label %if.end.798, label %if.then.796

if.then.796:                                      ; preds = %sw.bb.793
  %mode797 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 28, i32* %mode797, align 4
  br label %saveStateAndReturn

if.end.798:                                       ; preds = %sw.bb.793
  %dictionaryPos799 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %340 = load i32, i32* %dictionaryPos799, align 4
  %rep0800 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 24
  %341 = load i32, i32* %rep0800, align 4
  %sub801 = sub i32 %340, %341
  store i32 %sub801, i32* %pos792, align 4
  %342 = load i32, i32* %pos792, align 4
  %dictionarySize802 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %343 = load i32, i32* %dictionarySize802, align 4
  %cmp803 = icmp uge i32 %342, %343
  br i1 %cmp803, label %if.then.805, label %if.end.808

if.then.805:                                      ; preds = %if.end.798
  %dictionarySize806 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %344 = load i32, i32* %dictionarySize806, align 4
  %345 = load i32, i32* %pos792, align 4
  %add807 = add i32 %345, %344
  store i32 %add807, i32* %pos792, align 4
  br label %if.end.808

if.end.808:                                       ; preds = %if.then.805, %if.end.798
  %346 = load i32, i32* %pos792, align 4
  %idxprom809 = zext i32 %346 to i64
  %dictionary810 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %347 = load i8*, i8** %dictionary810, align 8
  %arrayidx811 = getelementptr inbounds i8, i8* %347, i64 %idxprom809
  %348 = load i8, i8* %arrayidx811, align 1
  %previousByte812 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  store i8 %348, i8* %previousByte812, align 1
  %previousByte813 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %349 = load i8, i8* %previousByte813, align 1
  %dictionaryPos814 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %350 = load i32, i32* %dictionaryPos814, align 4
  %idxprom815 = zext i32 %350 to i64
  %dictionary816 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %351 = load i8*, i8** %dictionary816, align 8
  %arrayidx817 = getelementptr inbounds i8, i8* %351, i64 %idxprom815
  store i8 %349, i8* %arrayidx817, align 1
  %dictionaryPos818 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  %352 = load i32, i32* %dictionaryPos818, align 4
  %add819 = add i32 %352, 1
  %dictionarySize820 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 5
  %353 = load i32, i32* %dictionarySize820, align 4
  %rem821 = urem i32 %add819, %353
  %dictionaryPos822 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 30
  store i32 %rem821, i32* %dictionaryPos822, align 4
  %previousByte823 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 11
  %354 = load i8, i8* %previousByte823, align 1
  %next_out824 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %355 = load i8*, i8** %next_out824, align 8
  store i8 %354, i8* %355, align 1
  %next_out825 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 8
  %356 = load i8*, i8** %next_out825, align 8
  %incdec.ptr826 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %incdec.ptr826, i8** %next_out825, align 8
  %avail_out827 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 9
  %357 = load i32, i32* %avail_out827, align 4
  %dec828 = add i32 %357, -1
  store i32 %dec828, i32* %avail_out827, align 4
  %len829 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %358 = load i32, i32* %len829, align 4
  %dec830 = add nsw i32 %358, -1
  store i32 %dec830, i32* %len829, align 4
  br label %do.cond.831

do.cond.831:                                      ; preds = %if.end.808
  %len832 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %359 = load i32, i32* %len832, align 4
  %cmp833 = icmp sgt i32 %359, 0
  br i1 %cmp833, label %do.body.791, label %do.end.835

do.end.835:                                       ; preds = %do.cond.831
  br label %if.end.836

if.end.836:                                       ; preds = %do.end.835, %if.end.410
  %mode837 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 2, i32* %mode837, align 4
  br label %sw.epilog

sw.bb.838:                                        ; preds = %for.cond
  br label %_LZMA_C_RDBD

_LZMA_C_RDBD:                                     ; preds = %if.else.915, %_LZMA_C_LEND, %sw.bb.838, %if.else.533, %if.else.520, %if.then.453, %if.then.441, %if.else.428, %sw.bb.107
  %range840 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %360 = load i32, i32* %range840, align 4
  %shr841 = lshr i32 %360, 11
  %prob842 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %361 = load i16*, i16** %prob842, align 8
  %362 = load i16, i16* %361, align 2
  %conv843 = zext i16 %362 to i32
  %mul844 = mul i32 %shr841, %conv843
  store i32 %mul844, i32* %bound839, align 4
  %code845 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %363 = load i32, i32* %code845, align 4
  %364 = load i32, i32* %bound839, align 4
  %cmp846 = icmp ult i32 %363, %364
  br i1 %cmp846, label %if.then.848, label %if.else.859

if.then.848:                                      ; preds = %_LZMA_C_RDBD
  %365 = load i32, i32* %bound839, align 4
  %range849 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %365, i32* %range849, align 4
  %prob850 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %366 = load i16*, i16** %prob850, align 8
  %367 = load i16, i16* %366, align 2
  %conv851 = zext i16 %367 to i32
  %sub852 = sub nsw i32 2048, %conv851
  %shr853 = ashr i32 %sub852, 5
  %prob854 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %368 = load i16*, i16** %prob854, align 8
  %369 = load i16, i16* %368, align 2
  %conv855 = zext i16 %369 to i32
  %add856 = add nsw i32 %conv855, %shr853
  %conv857 = trunc i32 %add856 to i16
  store i16 %conv857, i16* %368, align 2
  %temp3858 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 0, i32* %temp3858, align 4
  br label %if.end.872

if.else.859:                                      ; preds = %_LZMA_C_RDBD
  %370 = load i32, i32* %bound839, align 4
  %range860 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %371 = load i32, i32* %range860, align 4
  %sub861 = sub i32 %371, %370
  store i32 %sub861, i32* %range860, align 4
  %372 = load i32, i32* %bound839, align 4
  %code862 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %373 = load i32, i32* %code862, align 4
  %sub863 = sub i32 %373, %372
  store i32 %sub863, i32* %code862, align 4
  %prob864 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %374 = load i16*, i16** %prob864, align 8
  %375 = load i16, i16* %374, align 2
  %conv865 = zext i16 %375 to i32
  %shr866 = ashr i32 %conv865, 5
  %prob867 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %376 = load i16*, i16** %prob867, align 8
  %377 = load i16, i16* %376, align 2
  %conv868 = zext i16 %377 to i32
  %sub869 = sub nsw i32 %conv868, %shr866
  %conv870 = trunc i32 %sub869 to i16
  store i16 %conv870, i16* %376, align 2
  %temp3871 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 1, i32* %temp3871, align 4
  br label %if.end.872

if.end.872:                                       ; preds = %if.else.859, %if.then.848
  %range873 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %378 = load i32, i32* %range873, align 4
  %cmp874 = icmp ult i32 %378, 16777216
  br i1 %cmp874, label %if.then.876, label %if.end.894

if.then.876:                                      ; preds = %if.end.872
  br label %sw.bb.877

sw.bb.877:                                        ; preds = %for.cond, %if.then.876
  %avail_in878 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %379 = load i32, i32* %avail_in878, align 4
  %tobool879 = icmp ne i32 %379, 0
  br i1 %tobool879, label %if.end.882, label %if.then.880

if.then.880:                                      ; preds = %sw.bb.877
  %mode881 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 5, i32* %mode881, align 4
  br label %saveStateAndReturn

if.end.882:                                       ; preds = %sw.bb.877
  %range883 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %380 = load i32, i32* %range883, align 4
  %shl884 = shl i32 %380, 8
  store i32 %shl884, i32* %range883, align 4
  %code885 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %381 = load i32, i32* %code885, align 4
  %shl886 = shl i32 %381, 8
  %avail_in887 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %382 = load i32, i32* %avail_in887, align 4
  %dec888 = add i32 %382, -1
  store i32 %dec888, i32* %avail_in887, align 4
  %next_in889 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %383 = load i8*, i8** %next_in889, align 8
  %incdec.ptr890 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %incdec.ptr890, i8** %next_in889, align 8
  %384 = load i8, i8* %383, align 1
  %conv891 = zext i8 %384 to i32
  %or892 = or i32 %shl886, %conv891
  %code893 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or892, i32* %code893, align 4
  br label %if.end.894

if.end.894:                                       ; preds = %if.end.882, %if.end.872
  %last895 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  %385 = load i32, i32* %last895, align 4
  %mode896 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 %385, i32* %mode896, align 4
  br label %sw.epilog

sw.bb.897:                                        ; preds = %for.cond
  br label %_LZMA_C_LEND

_LZMA_C_LEND:                                     ; preds = %sw.bb.897, %if.else.566, %if.end.556
  %probs898 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %386 = load i16*, i16** %probs898, align 8
  %add.ptr899 = getelementptr inbounds i16, i16* %386, i64 0
  %prob900 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr899, i16** %prob900, align 8
  %last901 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 18, i32* %last901, align 4
  br label %_LZMA_C_RDBD

sw.bb.902:                                        ; preds = %for.cond
  %temp3903 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %387 = load i32, i32* %temp3903, align 4
  %cmp904 = icmp eq i32 %387, 0
  br i1 %cmp904, label %if.then.906, label %if.else.915

if.then.906:                                      ; preds = %sw.bb.902
  %len907 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  store i32 0, i32* %len907, align 4
  %posState908 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 16
  %388 = load i32, i32* %posState908, align 4
  %shl909 = shl i32 %388, 3
  %add910 = add nsw i32 2, %shl909
  %probs911 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %389 = load i16*, i16** %probs911, align 8
  %idx.ext912 = sext i32 %add910 to i64
  %add.ptr913 = getelementptr inbounds i16, i16* %389, i64 %idx.ext912
  store i16* %add.ptr913, i16** %probs911, align 8
  %temp3914 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 3, i32* %temp3914, align 4
  br label %if.end.939

if.else.915:                                      ; preds = %sw.bb.902
  %probs916 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %390 = load i16*, i16** %probs916, align 8
  %add.ptr917 = getelementptr inbounds i16, i16* %390, i64 1
  %prob918 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr917, i16** %prob918, align 8
  %last919 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 1
  store i32 19, i32* %last919, align 4
  br label %_LZMA_C_RDBD

sw.bb.920:                                        ; preds = %for.cond
  %temp3921 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %391 = load i32, i32* %temp3921, align 4
  %cmp922 = icmp eq i32 %391, 0
  br i1 %cmp922, label %if.then.924, label %if.else.933

if.then.924:                                      ; preds = %sw.bb.920
  %len925 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  store i32 8, i32* %len925, align 4
  %posState926 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 16
  %392 = load i32, i32* %posState926, align 4
  %shl927 = shl i32 %392, 3
  %add928 = add nsw i32 130, %shl927
  %probs929 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %393 = load i16*, i16** %probs929, align 8
  %idx.ext930 = sext i32 %add928 to i64
  %add.ptr931 = getelementptr inbounds i16, i16* %393, i64 %idx.ext930
  store i16* %add.ptr931, i16** %probs929, align 8
  %temp3932 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 3, i32* %temp3932, align 4
  br label %if.end.938

if.else.933:                                      ; preds = %sw.bb.920
  %len934 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  store i32 16, i32* %len934, align 4
  %probs935 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %394 = load i16*, i16** %probs935, align 8
  %add.ptr936 = getelementptr inbounds i16, i16* %394, i64 258
  store i16* %add.ptr936, i16** %probs935, align 8
  %temp3937 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  store i32 8, i32* %temp3937, align 4
  br label %if.end.938

if.end.938:                                       ; preds = %if.else.933, %if.then.924
  br label %if.end.939

if.end.939:                                       ; preds = %if.end.938, %if.then.906
  %last3940 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 3
  store i32 20, i32* %last3940, align 4
  br label %sw.bb.941

sw.bb.941:                                        ; preds = %for.cond, %if.end.939
  br label %_LZMA_C_BTD

_LZMA_C_BTD:                                      ; preds = %sw.bb.941, %cond.end
  %mi942 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  store i32 1, i32* %mi942, align 4
  %temp3943 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %395 = load i32, i32* %temp3943, align 4
  %temp1944 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  store i32 %395, i32* %temp1944, align 4
  br label %for.cond.945

for.cond.945:                                     ; preds = %for.inc.1016, %_LZMA_C_BTD
  %temp1946 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %396 = load i32, i32* %temp1946, align 4
  %cmp947 = icmp sgt i32 %396, 0
  br i1 %cmp947, label %for.body.949, label %for.end.1019

for.body.949:                                     ; preds = %for.cond.945
  %probs950 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 13
  %397 = load i16*, i16** %probs950, align 8
  %mi951 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %398 = load i32, i32* %mi951, align 4
  %idx.ext952 = sext i32 %398 to i64
  %add.ptr953 = getelementptr inbounds i16, i16* %397, i64 %idx.ext952
  %prob954 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  store i16* %add.ptr953, i16** %prob954, align 8
  %range956 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %399 = load i32, i32* %range956, align 4
  %shr957 = lshr i32 %399, 11
  %prob958 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %400 = load i16*, i16** %prob958, align 8
  %401 = load i16, i16* %400, align 2
  %conv959 = zext i16 %401 to i32
  %mul960 = mul i32 %shr957, %conv959
  store i32 %mul960, i32* %bound955, align 4
  %code961 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %402 = load i32, i32* %code961, align 4
  %403 = load i32, i32* %bound955, align 4
  %cmp962 = icmp ult i32 %402, %403
  br i1 %cmp962, label %if.then.964, label %if.else.976

if.then.964:                                      ; preds = %for.body.949
  %404 = load i32, i32* %bound955, align 4
  %range965 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  store i32 %404, i32* %range965, align 4
  %prob966 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %405 = load i16*, i16** %prob966, align 8
  %406 = load i16, i16* %405, align 2
  %conv967 = zext i16 %406 to i32
  %sub968 = sub nsw i32 2048, %conv967
  %shr969 = ashr i32 %sub968, 5
  %prob970 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %407 = load i16*, i16** %prob970, align 8
  %408 = load i16, i16* %407, align 2
  %conv971 = zext i16 %408 to i32
  %add972 = add nsw i32 %conv971, %shr969
  %conv973 = trunc i32 %add972 to i16
  store i16 %conv973, i16* %407, align 2
  %mi974 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %409 = load i32, i32* %mi974, align 4
  %shl975 = shl i32 %409, 1
  store i32 %shl975, i32* %mi974, align 4
  br label %if.end.993

if.else.976:                                      ; preds = %for.body.949
  %410 = load i32, i32* %bound955, align 4
  %range977 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %411 = load i32, i32* %range977, align 4
  %sub978 = sub i32 %411, %410
  store i32 %sub978, i32* %range977, align 4
  %412 = load i32, i32* %bound955, align 4
  %code979 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %413 = load i32, i32* %code979, align 4
  %sub980 = sub i32 %413, %412
  store i32 %sub980, i32* %code979, align 4
  %prob981 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %414 = load i16*, i16** %prob981, align 8
  %415 = load i16, i16* %414, align 2
  %conv982 = zext i16 %415 to i32
  %shr983 = ashr i32 %conv982, 5
  %prob984 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 14
  %416 = load i16*, i16** %prob984, align 8
  %417 = load i16, i16* %416, align 2
  %conv985 = zext i16 %417 to i32
  %sub986 = sub nsw i32 %conv985, %shr983
  %conv987 = trunc i32 %sub986 to i16
  store i16 %conv987, i16* %416, align 2
  %mi988 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %418 = load i32, i32* %mi988, align 4
  %mi989 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %419 = load i32, i32* %mi989, align 4
  %add990 = add nsw i32 %418, %419
  %add991 = add nsw i32 %add990, 1
  %mi992 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  store i32 %add991, i32* %mi992, align 4
  br label %if.end.993

if.end.993:                                       ; preds = %if.else.976, %if.then.964
  %range994 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %420 = load i32, i32* %range994, align 4
  %cmp995 = icmp ult i32 %420, 16777216
  br i1 %cmp995, label %if.then.997, label %if.end.1015

if.then.997:                                      ; preds = %if.end.993
  br label %sw.bb.998

sw.bb.998:                                        ; preds = %for.cond, %if.then.997
  %avail_in999 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %421 = load i32, i32* %avail_in999, align 4
  %tobool1000 = icmp ne i32 %421, 0
  br i1 %tobool1000, label %if.end.1003, label %if.then.1001

if.then.1001:                                     ; preds = %sw.bb.998
  %mode1002 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 24, i32* %mode1002, align 4
  br label %saveStateAndReturn

if.end.1003:                                      ; preds = %sw.bb.998
  %range1004 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 31
  %422 = load i32, i32* %range1004, align 4
  %shl1005 = shl i32 %422, 8
  store i32 %shl1005, i32* %range1004, align 4
  %code1006 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  %423 = load i32, i32* %code1006, align 4
  %shl1007 = shl i32 %423, 8
  %avail_in1008 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 7
  %424 = load i32, i32* %avail_in1008, align 4
  %dec1009 = add i32 %424, -1
  store i32 %dec1009, i32* %avail_in1008, align 4
  %next_in1010 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 6
  %425 = load i8*, i8** %next_in1010, align 8
  %incdec.ptr1011 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %incdec.ptr1011, i8** %next_in1010, align 8
  %426 = load i8, i8* %425, align 1
  %conv1012 = zext i8 %426 to i32
  %or1013 = or i32 %shl1007, %conv1012
  %code1014 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 32
  store i32 %or1013, i32* %code1014, align 4
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.end.1003, %if.end.993
  br label %for.inc.1016

for.inc.1016:                                     ; preds = %if.end.1015
  %temp11017 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 17
  %427 = load i32, i32* %temp11017, align 4
  %dec1018 = add nsw i32 %427, -1
  store i32 %dec1018, i32* %temp11017, align 4
  br label %for.cond.945

for.end.1019:                                     ; preds = %for.cond.945
  %mi1020 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 15
  %428 = load i32, i32* %mi1020, align 4
  %temp31021 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 19
  %429 = load i32, i32* %temp31021, align 4
  %shl1022 = shl i32 1, %429
  %sub1023 = sub nsw i32 %428, %shl1022
  %temp21024 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  store i32 %sub1023, i32* %temp21024, align 4
  %last31025 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 3
  %430 = load i32, i32* %last31025, align 4
  %mode1026 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 %430, i32* %mode1026, align 4
  br label %sw.epilog

sw.bb.1027:                                       ; preds = %for.cond
  %temp21028 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 18
  %431 = load i32, i32* %temp21028, align 4
  %len1029 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 23
  %432 = load i32, i32* %len1029, align 4
  %add1030 = add nsw i32 %432, %431
  store i32 %add1030, i32* %len1029, align 4
  %last21031 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 2
  %433 = load i32, i32* %last21031, align 4
  %mode1032 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 0
  store i32 %433, i32* %mode1032, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1027, %for.end.1019, %if.end.894, %if.end.836, %if.end.495
  br label %for.cond

saveStateAndReturn:                               ; preds = %if.then.1001, %if.then.880, %if.then.796, %if.then.777, %if.then.745, %if.then.654, %if.then.483, %if.then.408, %if.then.382, %if.then.304, %if.then.228, %if.then.95, %if.then.49, %if.then.1
  %434 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %435 = bitcast %struct.lzma_stream* %434 to i8*
  %436 = bitcast %struct.lzma_stream* %_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %435, i8* %436, i64 168, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %saveStateAndReturn, %sw.default, %if.then.784, %if.then.474, %if.then.78, %if.then.35, %if.then.6, %if.then
  %437 = load i32, i32* %retval
  ret i32 %437
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @cli_malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @lzmaShutdown(%struct.lzma_stream* %s) #0 {
entry:
  %s.addr = alloca %struct.lzma_stream*, align 8
  %_s = alloca %struct.lzma_stream, align 8
  store %struct.lzma_stream* %s, %struct.lzma_stream** %s.addr, align 8
  %0 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %1 = bitcast %struct.lzma_stream* %_s to i8*
  %2 = bitcast %struct.lzma_stream* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 168, i32 8, i1 false)
  %dynamicData = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %3 = bitcast i8** %dynamicData to i16**
  %4 = load i16*, i16** %3, align 8
  %tobool = icmp ne i16* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dynamicData1 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %5 = bitcast i8** %dynamicData1 to i16**
  %6 = load i16*, i16** %5, align 8
  %7 = bitcast i16* %6 to i8*
  call void @free(i8* %7) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dictionary = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %8 = load i8*, i8** %dictionary, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %dictionary4 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  %9 = load i8*, i8** %dictionary4, align 8
  call void @free(i8* %9) #1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %dynamicData6 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 34
  %10 = bitcast i8** %dynamicData6 to i16**
  store i16* null, i16** %10, align 8
  %dictionary7 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %_s, i32 0, i32 33
  store i8* null, i8** %dictionary7, align 8
  %11 = load %struct.lzma_stream*, %struct.lzma_stream** %s.addr, align 8
  %12 = bitcast %struct.lzma_stream* %11 to i8*
  %13 = bitcast %struct.lzma_stream* %_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 168, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
