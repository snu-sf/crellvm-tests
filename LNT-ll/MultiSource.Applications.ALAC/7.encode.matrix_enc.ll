; ModuleID = './MultiSource.Applications.ALAC/7.encode.matrix_enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @mix16(i16* %in, i32 %stride, i32* %u, i32* %v, i32 %numSamples, i32 %mixbits, i32 %mixres) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %stride.addr = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %ip = alloca i16*, align 8
  %j = alloca i32, align 4
  %mod = alloca i32, align 4
  %m2 = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  store i16* %in, i16** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  %0 = load i16*, i16** %in.addr, align 8
  store i16* %0, i16** %ip, align 8
  %1 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %mixbits.addr, align 4
  %shl = shl i32 1, %2
  store i32 %shl, i32* %mod, align 4
  %3 = load i32, i32* %mod, align 4
  %4 = load i32, i32* %mixres.addr, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %m2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %numSamples.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16*, i16** %ip, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %8 to i32
  store i32 %conv, i32* %l, align 4
  %9 = load i16*, i16** %ip, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 1
  %10 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %10 to i32
  store i32 %conv3, i32* %r, align 4
  %11 = load i32, i32* %stride.addr, align 4
  %12 = load i16*, i16** %ip, align 8
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i16, i16* %12, i64 %idx.ext
  store i16* %add.ptr, i16** %ip, align 8
  %13 = load i32, i32* %mixres.addr, align 4
  %14 = load i32, i32* %l, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %m2, align 4
  %16 = load i32, i32* %r, align 4
  %mul4 = mul nsw i32 %15, %16
  %add = add nsw i32 %mul, %mul4
  %17 = load i32, i32* %mixbits.addr, align 4
  %shr = ashr i32 %add, %17
  %18 = load i32, i32* %j, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %u.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %shr, i32* %arrayidx5, align 4
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %r, align 4
  %sub6 = sub nsw i32 %20, %21
  %22 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load i32*, i32** %v.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %23, i64 %idxprom7
  store i32 %sub6, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.23, %if.else
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %numSamples.addr, align 4
  %cmp10 = icmp slt i32 %25, %26
  br i1 %cmp10, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.9
  %27 = load i16*, i16** %ip, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %27, i64 0
  %28 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %28 to i32
  %29 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load i32*, i32** %u.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %30, i64 %idxprom15
  store i32 %conv14, i32* %arrayidx16, align 4
  %31 = load i16*, i16** %ip, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %31, i64 1
  %32 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %32 to i32
  %33 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %33 to i64
  %34 = load i32*, i32** %v.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %34, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx20, align 4
  %35 = load i32, i32* %stride.addr, align 4
  %36 = load i16*, i16** %ip, align 8
  %idx.ext21 = zext i32 %35 to i64
  %add.ptr22 = getelementptr inbounds i16, i16* %36, i64 %idx.ext21
  store i16* %add.ptr22, i16** %ip, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.12
  %37 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %37, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.9

for.end.25:                                       ; preds = %for.cond.9
  br label %if.end

if.end:                                           ; preds = %for.end.25, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @mix20(i8* %in, i32 %stride, i32* %u, i32* %v, i32 %numSamples, i32 %mixbits, i32 %mixres) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %ip = alloca i8*, align 8
  %j = alloca i32, align 4
  %mod = alloca i32, align 4
  %m2 = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  store i8* %0, i8** %ip, align 8
  %1 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %mixbits.addr, align 4
  %shl = shl i32 1, %2
  store i32 %shl, i32* %mod, align 4
  %3 = load i32, i32* %mod, align 4
  %4 = load i32, i32* %mixres.addr, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %m2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %numSamples.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %ip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl2 = shl i32 %conv, 16
  %9 = load i8*, i8** %ip, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %10 to i32
  %shl5 = shl i32 %conv4, 8
  %or = or i32 %shl2, %shl5
  %11 = load i8*, i8** %ip, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %or8 = or i32 %or, %conv7
  store i32 %or8, i32* %l, align 4
  %13 = load i32, i32* %l, align 4
  %shl9 = shl i32 %13, 8
  %shr = ashr i32 %shl9, 12
  store i32 %shr, i32* %l, align 4
  %14 = load i8*, i8** %ip, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 3
  store i8* %add.ptr, i8** %ip, align 8
  %15 = load i8*, i8** %ip, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %shl12 = shl i32 %conv11, 16
  %17 = load i8*, i8** %ip, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %shl15 = shl i32 %conv14, 8
  %or16 = or i32 %shl12, %shl15
  %19 = load i8*, i8** %ip, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %or19 = or i32 %or16, %conv18
  store i32 %or19, i32* %r, align 4
  %21 = load i32, i32* %r, align 4
  %shl20 = shl i32 %21, 8
  %shr21 = ashr i32 %shl20, 12
  store i32 %shr21, i32* %r, align 4
  %22 = load i32, i32* %stride.addr, align 4
  %sub22 = sub i32 %22, 1
  %mul = mul i32 %sub22, 3
  %23 = load i8*, i8** %ip, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr23, i8** %ip, align 8
  %24 = load i32, i32* %mixres.addr, align 4
  %25 = load i32, i32* %l, align 4
  %mul24 = mul nsw i32 %24, %25
  %26 = load i32, i32* %m2, align 4
  %27 = load i32, i32* %r, align 4
  %mul25 = mul nsw i32 %26, %27
  %add = add nsw i32 %mul24, %mul25
  %28 = load i32, i32* %mixbits.addr, align 4
  %shr26 = ashr i32 %add, %28
  %29 = load i32, i32* %j, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i32*, i32** %u.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom
  store i32 %shr26, i32* %arrayidx27, align 4
  %31 = load i32, i32* %l, align 4
  %32 = load i32, i32* %r, align 4
  %sub28 = sub nsw i32 %31, %32
  %33 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i32*, i32** %v.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  store i32 %sub28, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.68, %if.else
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %numSamples.addr, align 4
  %cmp32 = icmp slt i32 %36, %37
  br i1 %cmp32, label %for.body.34, label %for.end.70

for.body.34:                                      ; preds = %for.cond.31
  %38 = load i8*, i8** %ip, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %39 to i32
  %shl37 = shl i32 %conv36, 16
  %40 = load i8*, i8** %ip, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %41 to i32
  %shl40 = shl i32 %conv39, 8
  %or41 = or i32 %shl37, %shl40
  %42 = load i8*, i8** %ip, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %43 to i32
  %or44 = or i32 %or41, %conv43
  store i32 %or44, i32* %l, align 4
  %44 = load i32, i32* %l, align 4
  %shl45 = shl i32 %44, 8
  %shr46 = ashr i32 %shl45, 12
  %45 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load i32*, i32** %u.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %46, i64 %idxprom47
  store i32 %shr46, i32* %arrayidx48, align 4
  %47 = load i8*, i8** %ip, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %add.ptr49, i8** %ip, align 8
  %48 = load i8*, i8** %ip, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %49 to i32
  %shl52 = shl i32 %conv51, 16
  %50 = load i8*, i8** %ip, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %51 to i32
  %shl55 = shl i32 %conv54, 8
  %or56 = or i32 %shl52, %shl55
  %52 = load i8*, i8** %ip, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %53 to i32
  %or59 = or i32 %or56, %conv58
  store i32 %or59, i32* %r, align 4
  %54 = load i32, i32* %r, align 4
  %shl60 = shl i32 %54, 8
  %shr61 = ashr i32 %shl60, 12
  %55 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %55 to i64
  %56 = load i32*, i32** %v.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %56, i64 %idxprom62
  store i32 %shr61, i32* %arrayidx63, align 4
  %57 = load i32, i32* %stride.addr, align 4
  %sub64 = sub i32 %57, 1
  %mul65 = mul i32 %sub64, 3
  %58 = load i8*, i8** %ip, align 8
  %idx.ext66 = zext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %58, i64 %idx.ext66
  store i8* %add.ptr67, i8** %ip, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.34
  %59 = load i32, i32* %j, align 4
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, i32* %j, align 4
  br label %for.cond.31

for.end.70:                                       ; preds = %for.cond.31
  br label %if.end

if.end:                                           ; preds = %for.end.70, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @mix24(i8* %in, i32 %stride, i32* %u, i32* %v, i32 %numSamples, i32 %mixbits, i32 %mixres, i16* %shiftUV, i32 %bytesShifted) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %shiftUV.addr = alloca i16*, align 8
  %bytesShifted.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %ip = alloca i8*, align 8
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mod = alloca i32, align 4
  %m2 = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  store i16* %shiftUV, i16** %shiftUV.addr, align 8
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  store i8* %0, i8** %ip, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shift, align 4
  %2 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %mask, align 4
  %3 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else.97

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mixbits.addr, align 4
  %shl2 = shl i32 1, %4
  store i32 %shl2, i32* %mod, align 4
  %5 = load i32, i32* %mod, align 4
  %6 = load i32, i32* %mixres.addr, align 4
  %sub3 = sub nsw i32 %5, %6
  store i32 %sub3, i32* %m2, align 4
  %7 = load i32, i32* %bytesShifted.addr, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %numSamples.addr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %ip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl i32 %conv9, 16
  %12 = load i8*, i8** %ip, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %shl13 = shl i32 %conv12, 8
  %or = or i32 %shl10, %shl13
  %14 = load i8*, i8** %ip, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %or, %conv15
  store i32 %or16, i32* %l, align 4
  %16 = load i32, i32* %l, align 4
  %shl17 = shl i32 %16, 8
  %shr = ashr i32 %shl17, 8
  store i32 %shr, i32* %l, align 4
  %17 = load i8*, i8** %ip, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %add.ptr, i8** %ip, align 8
  %18 = load i8*, i8** %ip, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %shl20 = shl i32 %conv19, 16
  %20 = load i8*, i8** %ip, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %21 to i32
  %shl23 = shl i32 %conv22, 8
  %or24 = or i32 %shl20, %shl23
  %22 = load i8*, i8** %ip, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %23 to i32
  %or27 = or i32 %or24, %conv26
  store i32 %or27, i32* %r, align 4
  %24 = load i32, i32* %r, align 4
  %shl28 = shl i32 %24, 8
  %shr29 = ashr i32 %shl28, 8
  store i32 %shr29, i32* %r, align 4
  %25 = load i32, i32* %stride.addr, align 4
  %sub30 = sub i32 %25, 1
  %mul31 = mul i32 %sub30, 3
  %26 = load i8*, i8** %ip, align 8
  %idx.ext = zext i32 %mul31 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr32, i8** %ip, align 8
  %27 = load i32, i32* %l, align 4
  %28 = load i32, i32* %mask, align 4
  %and = and i32 %27, %28
  %conv33 = trunc i32 %and to i16
  %29 = load i32, i32* %k, align 4
  %add = add nsw i32 %29, 0
  %idxprom = sext i32 %add to i64
  %30 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %30, i64 %idxprom
  store i16 %conv33, i16* %arrayidx34, align 2
  %31 = load i32, i32* %r, align 4
  %32 = load i32, i32* %mask, align 4
  %and35 = and i32 %31, %32
  %conv36 = trunc i32 %and35 to i16
  %33 = load i32, i32* %k, align 4
  %add37 = add nsw i32 %33, 1
  %idxprom38 = sext i32 %add37 to i64
  %34 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %34, i64 %idxprom38
  store i16 %conv36, i16* %arrayidx39, align 2
  %35 = load i32, i32* %shift, align 4
  %36 = load i32, i32* %l, align 4
  %shr40 = ashr i32 %36, %35
  store i32 %shr40, i32* %l, align 4
  %37 = load i32, i32* %shift, align 4
  %38 = load i32, i32* %r, align 4
  %shr41 = ashr i32 %38, %37
  store i32 %shr41, i32* %r, align 4
  %39 = load i32, i32* %mixres.addr, align 4
  %40 = load i32, i32* %l, align 4
  %mul42 = mul nsw i32 %39, %40
  %41 = load i32, i32* %m2, align 4
  %42 = load i32, i32* %r, align 4
  %mul43 = mul nsw i32 %41, %42
  %add44 = add nsw i32 %mul42, %mul43
  %43 = load i32, i32* %mixbits.addr, align 4
  %shr45 = ashr i32 %add44, %43
  %44 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %44 to i64
  %45 = load i32*, i32** %u.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %45, i64 %idxprom46
  store i32 %shr45, i32* %arrayidx47, align 4
  %46 = load i32, i32* %l, align 4
  %47 = load i32, i32* %r, align 4
  %sub48 = sub nsw i32 %46, %47
  %48 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load i32*, i32** %v.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %49, i64 %idxprom49
  store i32 %sub48, i32* %arrayidx50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %j, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %j, align 4
  %51 = load i32, i32* %k, align 4
  %add51 = add nsw i32 %51, 2
  store i32 %add51, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.94, %if.else
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %numSamples.addr, align 4
  %cmp53 = icmp slt i32 %52, %53
  br i1 %cmp53, label %for.body.55, label %for.end.96

for.body.55:                                      ; preds = %for.cond.52
  %54 = load i8*, i8** %ip, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %55 to i32
  %shl58 = shl i32 %conv57, 16
  %56 = load i8*, i8** %ip, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %57 to i32
  %shl61 = shl i32 %conv60, 8
  %or62 = or i32 %shl58, %shl61
  %58 = load i8*, i8** %ip, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %59 to i32
  %or65 = or i32 %or62, %conv64
  store i32 %or65, i32* %l, align 4
  %60 = load i32, i32* %l, align 4
  %shl66 = shl i32 %60, 8
  %shr67 = ashr i32 %shl66, 8
  store i32 %shr67, i32* %l, align 4
  %61 = load i8*, i8** %ip, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %61, i64 3
  store i8* %add.ptr68, i8** %ip, align 8
  %62 = load i8*, i8** %ip, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %63 to i32
  %shl71 = shl i32 %conv70, 16
  %64 = load i8*, i8** %ip, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %65 to i32
  %shl74 = shl i32 %conv73, 8
  %or75 = or i32 %shl71, %shl74
  %66 = load i8*, i8** %ip, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %67 to i32
  %or78 = or i32 %or75, %conv77
  store i32 %or78, i32* %r, align 4
  %68 = load i32, i32* %r, align 4
  %shl79 = shl i32 %68, 8
  %shr80 = ashr i32 %shl79, 8
  store i32 %shr80, i32* %r, align 4
  %69 = load i32, i32* %stride.addr, align 4
  %sub81 = sub i32 %69, 1
  %mul82 = mul i32 %sub81, 3
  %70 = load i8*, i8** %ip, align 8
  %idx.ext83 = zext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %70, i64 %idx.ext83
  store i8* %add.ptr84, i8** %ip, align 8
  %71 = load i32, i32* %mixres.addr, align 4
  %72 = load i32, i32* %l, align 4
  %mul85 = mul nsw i32 %71, %72
  %73 = load i32, i32* %m2, align 4
  %74 = load i32, i32* %r, align 4
  %mul86 = mul nsw i32 %73, %74
  %add87 = add nsw i32 %mul85, %mul86
  %75 = load i32, i32* %mixbits.addr, align 4
  %shr88 = ashr i32 %add87, %75
  %76 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %76 to i64
  %77 = load i32*, i32** %u.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %77, i64 %idxprom89
  store i32 %shr88, i32* %arrayidx90, align 4
  %78 = load i32, i32* %l, align 4
  %79 = load i32, i32* %r, align 4
  %sub91 = sub nsw i32 %78, %79
  %80 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %80 to i64
  %81 = load i32*, i32** %v.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %81, i64 %idxprom92
  store i32 %sub91, i32* %arrayidx93, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.55
  %82 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %82, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.52

for.end.96:                                       ; preds = %for.cond.52
  br label %if.end

if.end:                                           ; preds = %for.end.96, %for.end
  br label %if.end.196

if.else.97:                                       ; preds = %entry
  %83 = load i32, i32* %bytesShifted.addr, align 4
  %cmp98 = icmp ne i32 %83, 0
  br i1 %cmp98, label %if.then.100, label %if.else.154

if.then.100:                                      ; preds = %if.else.97
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.150, %if.then.100
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %numSamples.addr, align 4
  %cmp102 = icmp slt i32 %84, %85
  br i1 %cmp102, label %for.body.104, label %for.end.153

for.body.104:                                     ; preds = %for.cond.101
  %86 = load i8*, i8** %ip, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %87 to i32
  %shl107 = shl i32 %conv106, 16
  %88 = load i8*, i8** %ip, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %89 to i32
  %shl110 = shl i32 %conv109, 8
  %or111 = or i32 %shl107, %shl110
  %90 = load i8*, i8** %ip, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %91 to i32
  %or114 = or i32 %or111, %conv113
  store i32 %or114, i32* %l, align 4
  %92 = load i32, i32* %l, align 4
  %shl115 = shl i32 %92, 8
  %shr116 = ashr i32 %shl115, 8
  store i32 %shr116, i32* %l, align 4
  %93 = load i8*, i8** %ip, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %93, i64 3
  store i8* %add.ptr117, i8** %ip, align 8
  %94 = load i8*, i8** %ip, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %95 to i32
  %shl120 = shl i32 %conv119, 16
  %96 = load i8*, i8** %ip, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %97 to i32
  %shl123 = shl i32 %conv122, 8
  %or124 = or i32 %shl120, %shl123
  %98 = load i8*, i8** %ip, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %99 to i32
  %or127 = or i32 %or124, %conv126
  store i32 %or127, i32* %r, align 4
  %100 = load i32, i32* %r, align 4
  %shl128 = shl i32 %100, 8
  %shr129 = ashr i32 %shl128, 8
  store i32 %shr129, i32* %r, align 4
  %101 = load i32, i32* %stride.addr, align 4
  %sub130 = sub i32 %101, 1
  %mul131 = mul i32 %sub130, 3
  %102 = load i8*, i8** %ip, align 8
  %idx.ext132 = zext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %102, i64 %idx.ext132
  store i8* %add.ptr133, i8** %ip, align 8
  %103 = load i32, i32* %l, align 4
  %104 = load i32, i32* %mask, align 4
  %and134 = and i32 %103, %104
  %conv135 = trunc i32 %and134 to i16
  %105 = load i32, i32* %k, align 4
  %add136 = add nsw i32 %105, 0
  %idxprom137 = sext i32 %add136 to i64
  %106 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %106, i64 %idxprom137
  store i16 %conv135, i16* %arrayidx138, align 2
  %107 = load i32, i32* %r, align 4
  %108 = load i32, i32* %mask, align 4
  %and139 = and i32 %107, %108
  %conv140 = trunc i32 %and139 to i16
  %109 = load i32, i32* %k, align 4
  %add141 = add nsw i32 %109, 1
  %idxprom142 = sext i32 %add141 to i64
  %110 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %110, i64 %idxprom142
  store i16 %conv140, i16* %arrayidx143, align 2
  %111 = load i32, i32* %shift, align 4
  %112 = load i32, i32* %l, align 4
  %shr144 = ashr i32 %112, %111
  store i32 %shr144, i32* %l, align 4
  %113 = load i32, i32* %shift, align 4
  %114 = load i32, i32* %r, align 4
  %shr145 = ashr i32 %114, %113
  store i32 %shr145, i32* %r, align 4
  %115 = load i32, i32* %l, align 4
  %116 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %116 to i64
  %117 = load i32*, i32** %u.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %117, i64 %idxprom146
  store i32 %115, i32* %arrayidx147, align 4
  %118 = load i32, i32* %r, align 4
  %119 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %119 to i64
  %120 = load i32*, i32** %v.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %120, i64 %idxprom148
  store i32 %118, i32* %arrayidx149, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.104
  %121 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %121, 1
  store i32 %inc151, i32* %j, align 4
  %122 = load i32, i32* %k, align 4
  %add152 = add nsw i32 %122, 2
  store i32 %add152, i32* %k, align 4
  br label %for.cond.101

for.end.153:                                      ; preds = %for.cond.101
  br label %if.end.195

if.else.154:                                      ; preds = %if.else.97
  store i32 0, i32* %j, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.192, %if.else.154
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %numSamples.addr, align 4
  %cmp156 = icmp slt i32 %123, %124
  br i1 %cmp156, label %for.body.158, label %for.end.194

for.body.158:                                     ; preds = %for.cond.155
  %125 = load i8*, i8** %ip, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %125, i64 2
  %126 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %126 to i32
  %shl161 = shl i32 %conv160, 16
  %127 = load i8*, i8** %ip, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %128 to i32
  %shl164 = shl i32 %conv163, 8
  %or165 = or i32 %shl161, %shl164
  %129 = load i8*, i8** %ip, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %130 to i32
  %or168 = or i32 %or165, %conv167
  store i32 %or168, i32* %l, align 4
  %131 = load i32, i32* %l, align 4
  %shl169 = shl i32 %131, 8
  %shr170 = ashr i32 %shl169, 8
  %132 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %132 to i64
  %133 = load i32*, i32** %u.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %133, i64 %idxprom171
  store i32 %shr170, i32* %arrayidx172, align 4
  %134 = load i8*, i8** %ip, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %134, i64 3
  store i8* %add.ptr173, i8** %ip, align 8
  %135 = load i8*, i8** %ip, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %135, i64 2
  %136 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %136 to i32
  %shl176 = shl i32 %conv175, 16
  %137 = load i8*, i8** %ip, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %138 to i32
  %shl179 = shl i32 %conv178, 8
  %or180 = or i32 %shl176, %shl179
  %139 = load i8*, i8** %ip, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %140 to i32
  %or183 = or i32 %or180, %conv182
  store i32 %or183, i32* %r, align 4
  %141 = load i32, i32* %r, align 4
  %shl184 = shl i32 %141, 8
  %shr185 = ashr i32 %shl184, 8
  %142 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %142 to i64
  %143 = load i32*, i32** %v.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %143, i64 %idxprom186
  store i32 %shr185, i32* %arrayidx187, align 4
  %144 = load i32, i32* %stride.addr, align 4
  %sub188 = sub i32 %144, 1
  %mul189 = mul i32 %sub188, 3
  %145 = load i8*, i8** %ip, align 8
  %idx.ext190 = zext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %145, i64 %idx.ext190
  store i8* %add.ptr191, i8** %ip, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.158
  %146 = load i32, i32* %j, align 4
  %inc193 = add nsw i32 %146, 1
  store i32 %inc193, i32* %j, align 4
  br label %for.cond.155

for.end.194:                                      ; preds = %for.cond.155
  br label %if.end.195

if.end.195:                                       ; preds = %for.end.194, %for.end.153
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @mix32(i32* %in, i32 %stride, i32* %u, i32* %v, i32 %numSamples, i32 %mixbits, i32 %mixres, i16* %shiftUV, i32 %bytesShifted) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %stride.addr = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %shiftUV.addr = alloca i16*, align 8
  %bytesShifted.addr = alloca i32, align 4
  %ip = alloca i32*, align 8
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mod = alloca i32, align 4
  %m2 = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  store i16* %shiftUV, i16** %shiftUV.addr, align 8
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i32*, i32** %in.addr, align 8
  store i32* %0, i32** %ip, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shift, align 4
  %2 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %mask, align 4
  %3 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mixbits.addr, align 4
  %shl2 = shl i32 1, %4
  store i32 %shl2, i32* %mod, align 4
  %5 = load i32, i32* %mod, align 4
  %6 = load i32, i32* %mixres.addr, align 4
  %sub3 = sub nsw i32 %5, %6
  store i32 %sub3, i32* %m2, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %numSamples.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %ip, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  store i32 %10, i32* %l, align 4
  %11 = load i32*, i32** %ip, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32, i32* %arrayidx6, align 4
  store i32 %12, i32* %r, align 4
  %13 = load i32, i32* %stride.addr, align 4
  %14 = load i32*, i32** %ip, align 8
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, i32* %14, i64 %idx.ext
  store i32* %add.ptr, i32** %ip, align 8
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %mask, align 4
  %and = and i32 %15, %16
  %conv7 = trunc i32 %and to i16
  %17 = load i32, i32* %k, align 4
  %add = add nsw i32 %17, 0
  %idxprom = sext i32 %add to i64
  %18 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  store i16 %conv7, i16* %arrayidx8, align 2
  %19 = load i32, i32* %r, align 4
  %20 = load i32, i32* %mask, align 4
  %and9 = and i32 %19, %20
  %conv10 = trunc i32 %and9 to i16
  %21 = load i32, i32* %k, align 4
  %add11 = add nsw i32 %21, 1
  %idxprom12 = sext i32 %add11 to i64
  %22 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %22, i64 %idxprom12
  store i16 %conv10, i16* %arrayidx13, align 2
  %23 = load i32, i32* %shift, align 4
  %24 = load i32, i32* %l, align 4
  %shr = ashr i32 %24, %23
  store i32 %shr, i32* %l, align 4
  %25 = load i32, i32* %shift, align 4
  %26 = load i32, i32* %r, align 4
  %shr14 = ashr i32 %26, %25
  store i32 %shr14, i32* %r, align 4
  %27 = load i32, i32* %mixres.addr, align 4
  %28 = load i32, i32* %l, align 4
  %mul15 = mul nsw i32 %27, %28
  %29 = load i32, i32* %m2, align 4
  %30 = load i32, i32* %r, align 4
  %mul16 = mul nsw i32 %29, %30
  %add17 = add nsw i32 %mul15, %mul16
  %31 = load i32, i32* %mixbits.addr, align 4
  %shr18 = ashr i32 %add17, %31
  %32 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load i32*, i32** %u.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %33, i64 %idxprom19
  store i32 %shr18, i32* %arrayidx20, align 4
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* %r, align 4
  %sub21 = sub nsw i32 %34, %35
  %36 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load i32*, i32** %v.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %37, i64 %idxprom22
  store i32 %sub21, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  %39 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %39, 2
  store i32 %add24, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.else:                                          ; preds = %entry
  %40 = load i32, i32* %bytesShifted.addr, align 4
  %cmp25 = icmp eq i32 %40, 0
  br i1 %cmp25, label %if.then.27, label %if.else.43

if.then.27:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.40, %if.then.27
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %numSamples.addr, align 4
  %cmp29 = icmp slt i32 %41, %42
  br i1 %cmp29, label %for.body.31, label %for.end.42

for.body.31:                                      ; preds = %for.cond.28
  %43 = load i32*, i32** %ip, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %43, i64 0
  %44 = load i32, i32* %arrayidx32, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %45 to i64
  %46 = load i32*, i32** %u.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %46, i64 %idxprom33
  store i32 %44, i32* %arrayidx34, align 4
  %47 = load i32*, i32** %ip, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %47, i64 1
  %48 = load i32, i32* %arrayidx35, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load i32*, i32** %v.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %50, i64 %idxprom36
  store i32 %48, i32* %arrayidx37, align 4
  %51 = load i32, i32* %stride.addr, align 4
  %52 = load i32*, i32** %ip, align 8
  %idx.ext38 = zext i32 %51 to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %52, i64 %idx.ext38
  store i32* %add.ptr39, i32** %ip, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.31
  %53 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond.28

for.end.42:                                       ; preds = %for.cond.28
  br label %if.end

if.else.43:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.68, %if.else.43
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %numSamples.addr, align 4
  %cmp45 = icmp slt i32 %54, %55
  br i1 %cmp45, label %for.body.47, label %for.end.71

for.body.47:                                      ; preds = %for.cond.44
  %56 = load i32*, i32** %ip, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx48, align 4
  store i32 %57, i32* %l, align 4
  %58 = load i32*, i32** %ip, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %58, i64 1
  %59 = load i32, i32* %arrayidx49, align 4
  store i32 %59, i32* %r, align 4
  %60 = load i32, i32* %stride.addr, align 4
  %61 = load i32*, i32** %ip, align 8
  %idx.ext50 = zext i32 %60 to i64
  %add.ptr51 = getelementptr inbounds i32, i32* %61, i64 %idx.ext50
  store i32* %add.ptr51, i32** %ip, align 8
  %62 = load i32, i32* %l, align 4
  %63 = load i32, i32* %mask, align 4
  %and52 = and i32 %62, %63
  %conv53 = trunc i32 %and52 to i16
  %64 = load i32, i32* %k, align 4
  %add54 = add nsw i32 %64, 0
  %idxprom55 = sext i32 %add54 to i64
  %65 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %65, i64 %idxprom55
  store i16 %conv53, i16* %arrayidx56, align 2
  %66 = load i32, i32* %r, align 4
  %67 = load i32, i32* %mask, align 4
  %and57 = and i32 %66, %67
  %conv58 = trunc i32 %and57 to i16
  %68 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %68, 1
  %idxprom60 = sext i32 %add59 to i64
  %69 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %69, i64 %idxprom60
  store i16 %conv58, i16* %arrayidx61, align 2
  %70 = load i32, i32* %shift, align 4
  %71 = load i32, i32* %l, align 4
  %shr62 = ashr i32 %71, %70
  store i32 %shr62, i32* %l, align 4
  %72 = load i32, i32* %shift, align 4
  %73 = load i32, i32* %r, align 4
  %shr63 = ashr i32 %73, %72
  store i32 %shr63, i32* %r, align 4
  %74 = load i32, i32* %l, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %75 to i64
  %76 = load i32*, i32** %u.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %76, i64 %idxprom64
  store i32 %74, i32* %arrayidx65, align 4
  %77 = load i32, i32* %r, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %78 to i64
  %79 = load i32*, i32** %v.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %79, i64 %idxprom66
  store i32 %77, i32* %arrayidx67, align 4
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.47
  %80 = load i32, i32* %j, align 4
  %inc69 = add nsw i32 %80, 1
  store i32 %inc69, i32* %j, align 4
  %81 = load i32, i32* %k, align 4
  %add70 = add nsw i32 %81, 2
  store i32 %add70, i32* %k, align 4
  br label %for.cond.44

for.end.71:                                       ; preds = %for.cond.44
  br label %if.end

if.end:                                           ; preds = %for.end.71, %for.end.42
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @copy20ToPredictor(i8* %in, i32 %stride, i32* %out, i32 %numSamples) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %ip = alloca i8*, align 8
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  store i8* %0, i8** %ip, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %ip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 16
  %5 = load i8*, i8** %ip, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %shl3 = shl i32 %conv2, 8
  %or = or i32 %shl, %shl3
  %7 = load i8*, i8** %ip, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %or6 = or i32 %or, %conv5
  store i32 %or6, i32* %val, align 4
  %9 = load i32, i32* %val, align 4
  %shl7 = shl i32 %9, 8
  %shr = ashr i32 %shl7, 12
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %out.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %shr, i32* %arrayidx8, align 4
  %12 = load i32, i32* %stride.addr, align 4
  %mul = mul i32 %12, 3
  %13 = load i8*, i8** %ip, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %ip, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @copy24ToPredictor(i8* %in, i32 %stride, i32* %out, i32 %numSamples) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %ip = alloca i8*, align 8
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  store i8* %0, i8** %ip, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %ip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 16
  %5 = load i8*, i8** %ip, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %shl3 = shl i32 %conv2, 8
  %or = or i32 %shl, %shl3
  %7 = load i8*, i8** %ip, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %or6 = or i32 %or, %conv5
  store i32 %or6, i32* %val, align 4
  %9 = load i32, i32* %val, align 4
  %shl7 = shl i32 %9, 8
  %shr = ashr i32 %shl7, 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %out.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %shr, i32* %arrayidx8, align 4
  %12 = load i32, i32* %stride.addr, align 4
  %mul = mul i32 %12, 3
  %13 = load i8*, i8** %ip, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %ip, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
