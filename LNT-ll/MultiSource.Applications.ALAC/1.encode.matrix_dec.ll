; ModuleID = './MultiSource.Applications.ALAC/1.encode.matrix_dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @unmix16(i32* %u, i32* %v, i16* %out, i32 %stride, i32 %numSamples, i32 %mixbits, i32 %mixres) #0 {
entry:
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %out.addr = alloca i16*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %op = alloca i16*, align 8
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i16* %out, i16** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  %0 = load i16*, i16** %out.addr, align 8
  store i16* %0, i16** %op, align 8
  %1 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %numSamples.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %u.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i32*, i32** %v.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %6, %9
  %10 = load i32, i32* %mixres.addr, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load i32*, i32** %v.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %mul = mul nsw i32 %10, %13
  %14 = load i32, i32* %mixbits.addr, align 4
  %shr = ashr i32 %mul, %14
  %sub = sub nsw i32 %add, %shr
  store i32 %sub, i32* %l, align 4
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load i32*, i32** %v.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  %18 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %15, %18
  store i32 %sub8, i32* %r, align 4
  %19 = load i32, i32* %l, align 4
  %conv = trunc i32 %19 to i16
  %20 = load i16*, i16** %op, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %20, i64 0
  store i16 %conv, i16* %arrayidx9, align 2
  %21 = load i32, i32* %r, align 4
  %conv10 = trunc i32 %21 to i16
  %22 = load i16*, i16** %op, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2
  %23 = load i32, i32* %stride.addr, align 4
  %24 = load i16*, i16** %op, align 8
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i16, i16* %24, i64 %idx.ext
  store i16* %add.ptr, i16** %op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.26, %if.else
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %numSamples.addr, align 4
  %cmp13 = icmp slt i32 %26, %27
  br i1 %cmp13, label %for.body.15, label %for.end.28

for.body.15:                                      ; preds = %for.cond.12
  %28 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %28 to i64
  %29 = load i32*, i32** %u.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 %idxprom16
  %30 = load i32, i32* %arrayidx17, align 4
  %conv18 = trunc i32 %30 to i16
  %31 = load i16*, i16** %op, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %31, i64 0
  store i16 %conv18, i16* %arrayidx19, align 2
  %32 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load i32*, i32** %v.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 %idxprom20
  %34 = load i32, i32* %arrayidx21, align 4
  %conv22 = trunc i32 %34 to i16
  %35 = load i16*, i16** %op, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %35, i64 1
  store i16 %conv22, i16* %arrayidx23, align 2
  %36 = load i32, i32* %stride.addr, align 4
  %37 = load i16*, i16** %op, align 8
  %idx.ext24 = zext i32 %36 to i64
  %add.ptr25 = getelementptr inbounds i16, i16* %37, i64 %idx.ext24
  store i16* %add.ptr25, i16** %op, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.15
  %38 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond.12

for.end.28:                                       ; preds = %for.cond.12
  br label %if.end

if.end:                                           ; preds = %for.end.28, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @unmix20(i32* %u, i32* %v, i8* %out, i32 %stride, i32 %numSamples, i32 %mixbits, i32 %mixres) #0 {
entry:
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %out.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %op, align 8
  %1 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %numSamples.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %u.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i32*, i32** %v.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %6, %9
  %10 = load i32, i32* %mixres.addr, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load i32*, i32** %v.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %mul = mul nsw i32 %10, %13
  %14 = load i32, i32* %mixbits.addr, align 4
  %shr = ashr i32 %mul, %14
  %sub = sub nsw i32 %add, %shr
  store i32 %sub, i32* %l, align 4
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load i32*, i32** %v.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  %18 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %15, %18
  store i32 %sub8, i32* %r, align 4
  %19 = load i32, i32* %l, align 4
  %shl = shl i32 %19, 4
  store i32 %shl, i32* %l, align 4
  %20 = load i32, i32* %r, align 4
  %shl9 = shl i32 %20, 4
  store i32 %shl9, i32* %r, align 4
  %21 = load i32, i32* %l, align 4
  %shr10 = ashr i32 %21, 16
  %and = and i32 %shr10, 255
  %conv = trunc i32 %and to i8
  %22 = load i8*, i8** %op, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %conv, i8* %arrayidx11, align 1
  %23 = load i32, i32* %l, align 4
  %shr12 = ashr i32 %23, 8
  %and13 = and i32 %shr12, 255
  %conv14 = trunc i32 %and13 to i8
  %24 = load i8*, i8** %op, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %conv14, i8* %arrayidx15, align 1
  %25 = load i32, i32* %l, align 4
  %shr16 = ashr i32 %25, 0
  %and17 = and i32 %shr16, 255
  %conv18 = trunc i32 %and17 to i8
  %26 = load i8*, i8** %op, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %conv18, i8* %arrayidx19, align 1
  %27 = load i8*, i8** %op, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr, i8** %op, align 8
  %28 = load i32, i32* %r, align 4
  %shr20 = ashr i32 %28, 16
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %29 = load i8*, i8** %op, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %conv22, i8* %arrayidx23, align 1
  %30 = load i32, i32* %r, align 4
  %shr24 = ashr i32 %30, 8
  %and25 = and i32 %shr24, 255
  %conv26 = trunc i32 %and25 to i8
  %31 = load i8*, i8** %op, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1
  %32 = load i32, i32* %r, align 4
  %shr28 = ashr i32 %32, 0
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %33 = load i8*, i8** %op, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %conv30, i8* %arrayidx31, align 1
  %34 = load i32, i32* %stride.addr, align 4
  %sub32 = sub i32 %34, 1
  %mul33 = mul i32 %sub32, 3
  %35 = load i8*, i8** %op, align 8
  %idx.ext = zext i32 %mul33 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr34, i8** %op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.74, %if.else
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %numSamples.addr, align 4
  %cmp36 = icmp slt i32 %37, %38
  br i1 %cmp36, label %for.body.38, label %for.end.76

for.body.38:                                      ; preds = %for.cond.35
  %39 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %39 to i64
  %40 = load i32*, i32** %u.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %40, i64 %idxprom39
  %41 = load i32, i32* %arrayidx40, align 4
  %shl41 = shl i32 %41, 4
  store i32 %shl41, i32* %val, align 4
  %42 = load i32, i32* %val, align 4
  %shr42 = ashr i32 %42, 16
  %and43 = and i32 %shr42, 255
  %conv44 = trunc i32 %and43 to i8
  %43 = load i8*, i8** %op, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %43, i64 2
  store i8 %conv44, i8* %arrayidx45, align 1
  %44 = load i32, i32* %val, align 4
  %shr46 = ashr i32 %44, 8
  %and47 = and i32 %shr46, 255
  %conv48 = trunc i32 %and47 to i8
  %45 = load i8*, i8** %op, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv48, i8* %arrayidx49, align 1
  %46 = load i32, i32* %val, align 4
  %shr50 = ashr i32 %46, 0
  %and51 = and i32 %shr50, 255
  %conv52 = trunc i32 %and51 to i8
  %47 = load i8*, i8** %op, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %conv52, i8* %arrayidx53, align 1
  %48 = load i8*, i8** %op, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %48, i64 3
  store i8* %add.ptr54, i8** %op, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load i32*, i32** %v.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %50, i64 %idxprom55
  %51 = load i32, i32* %arrayidx56, align 4
  %shl57 = shl i32 %51, 4
  store i32 %shl57, i32* %val, align 4
  %52 = load i32, i32* %val, align 4
  %shr58 = ashr i32 %52, 16
  %and59 = and i32 %shr58, 255
  %conv60 = trunc i32 %and59 to i8
  %53 = load i8*, i8** %op, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %conv60, i8* %arrayidx61, align 1
  %54 = load i32, i32* %val, align 4
  %shr62 = ashr i32 %54, 8
  %and63 = and i32 %shr62, 255
  %conv64 = trunc i32 %and63 to i8
  %55 = load i8*, i8** %op, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %conv64, i8* %arrayidx65, align 1
  %56 = load i32, i32* %val, align 4
  %shr66 = ashr i32 %56, 0
  %and67 = and i32 %shr66, 255
  %conv68 = trunc i32 %and67 to i8
  %57 = load i8*, i8** %op, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %conv68, i8* %arrayidx69, align 1
  %58 = load i32, i32* %stride.addr, align 4
  %sub70 = sub i32 %58, 1
  %mul71 = mul i32 %sub70, 3
  %59 = load i8*, i8** %op, align 8
  %idx.ext72 = zext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %59, i64 %idx.ext72
  store i8* %add.ptr73, i8** %op, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.38
  %60 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %60, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.35

for.end.76:                                       ; preds = %for.cond.35
  br label %if.end

if.end:                                           ; preds = %for.end.76, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @unmix24(i32* %u, i32* %v, i8* %out, i32 %stride, i32 %numSamples, i32 %mixbits, i32 %mixres, i16* %shiftUV, i32 %bytesShifted) #0 {
entry:
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %out.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %shiftUV.addr = alloca i16*, align 8
  %bytesShifted.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  %shift = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  store i16* %shiftUV, i16** %shiftUV.addr, align 8
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %op, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shift, align 4
  %2 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else.97

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bytesShifted.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %numSamples.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %u.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %v.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %add = add nsw i32 %8, %11
  %12 = load i32, i32* %mixres.addr, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32*, i32** %v.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %mul8 = mul nsw i32 %12, %15
  %16 = load i32, i32* %mixbits.addr, align 4
  %shr = ashr i32 %mul8, %16
  %sub = sub nsw i32 %add, %shr
  store i32 %sub, i32* %l, align 4
  %17 = load i32, i32* %l, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32*, i32** %v.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  %20 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 %17, %20
  store i32 %sub11, i32* %r, align 4
  %21 = load i32, i32* %l, align 4
  %22 = load i32, i32* %shift, align 4
  %shl = shl i32 %21, %22
  %23 = load i32, i32* %k, align 4
  %add12 = add nsw i32 %23, 0
  %idxprom13 = sext i32 %add12 to i64
  %24 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %24, i64 %idxprom13
  %25 = load i16, i16* %arrayidx14, align 2
  %conv = zext i16 %25 to i32
  %or = or i32 %shl, %conv
  store i32 %or, i32* %l, align 4
  %26 = load i32, i32* %r, align 4
  %27 = load i32, i32* %shift, align 4
  %shl15 = shl i32 %26, %27
  %28 = load i32, i32* %k, align 4
  %add16 = add nsw i32 %28, 1
  %idxprom17 = sext i32 %add16 to i64
  %29 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %29, i64 %idxprom17
  %30 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %30 to i32
  %or20 = or i32 %shl15, %conv19
  store i32 %or20, i32* %r, align 4
  %31 = load i32, i32* %l, align 4
  %shr21 = ashr i32 %31, 16
  %and = and i32 %shr21, 255
  %conv22 = trunc i32 %and to i8
  %32 = load i8*, i8** %op, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %conv22, i8* %arrayidx23, align 1
  %33 = load i32, i32* %l, align 4
  %shr24 = ashr i32 %33, 8
  %and25 = and i32 %shr24, 255
  %conv26 = trunc i32 %and25 to i8
  %34 = load i8*, i8** %op, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1
  %35 = load i32, i32* %l, align 4
  %shr28 = ashr i32 %35, 0
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %36 = load i8*, i8** %op, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %conv30, i8* %arrayidx31, align 1
  %37 = load i8*, i8** %op, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr, i8** %op, align 8
  %38 = load i32, i32* %r, align 4
  %shr32 = ashr i32 %38, 16
  %and33 = and i32 %shr32, 255
  %conv34 = trunc i32 %and33 to i8
  %39 = load i8*, i8** %op, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  %40 = load i32, i32* %r, align 4
  %shr36 = ashr i32 %40, 8
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i8
  %41 = load i8*, i8** %op, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %conv38, i8* %arrayidx39, align 1
  %42 = load i32, i32* %r, align 4
  %shr40 = ashr i32 %42, 0
  %and41 = and i32 %shr40, 255
  %conv42 = trunc i32 %and41 to i8
  %43 = load i8*, i8** %op, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %conv42, i8* %arrayidx43, align 1
  %44 = load i32, i32* %stride.addr, align 4
  %sub44 = sub i32 %44, 1
  %mul45 = mul i32 %sub44, 3
  %45 = load i8*, i8** %op, align 8
  %idx.ext = zext i32 %mul45 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr46, i8** %op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  %47 = load i32, i32* %k, align 4
  %add47 = add nsw i32 %47, 2
  store i32 %add47, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.94, %if.else
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %numSamples.addr, align 4
  %cmp49 = icmp slt i32 %48, %49
  br i1 %cmp49, label %for.body.51, label %for.end.96

for.body.51:                                      ; preds = %for.cond.48
  %50 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load i32*, i32** %u.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %51, i64 %idxprom52
  %52 = load i32, i32* %arrayidx53, align 4
  %53 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load i32*, i32** %v.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %54, i64 %idxprom54
  %55 = load i32, i32* %arrayidx55, align 4
  %add56 = add nsw i32 %52, %55
  %56 = load i32, i32* %mixres.addr, align 4
  %57 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = load i32*, i32** %v.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %58, i64 %idxprom57
  %59 = load i32, i32* %arrayidx58, align 4
  %mul59 = mul nsw i32 %56, %59
  %60 = load i32, i32* %mixbits.addr, align 4
  %shr60 = ashr i32 %mul59, %60
  %sub61 = sub nsw i32 %add56, %shr60
  store i32 %sub61, i32* %l, align 4
  %61 = load i32, i32* %l, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %62 to i64
  %63 = load i32*, i32** %v.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %63, i64 %idxprom62
  %64 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %61, %64
  store i32 %sub64, i32* %r, align 4
  %65 = load i32, i32* %l, align 4
  %shr65 = ashr i32 %65, 16
  %and66 = and i32 %shr65, 255
  %conv67 = trunc i32 %and66 to i8
  %66 = load i8*, i8** %op, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 %conv67, i8* %arrayidx68, align 1
  %67 = load i32, i32* %l, align 4
  %shr69 = ashr i32 %67, 8
  %and70 = and i32 %shr69, 255
  %conv71 = trunc i32 %and70 to i8
  %68 = load i8*, i8** %op, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 %conv71, i8* %arrayidx72, align 1
  %69 = load i32, i32* %l, align 4
  %shr73 = ashr i32 %69, 0
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %70 = load i8*, i8** %op, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %conv75, i8* %arrayidx76, align 1
  %71 = load i8*, i8** %op, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %71, i64 3
  store i8* %add.ptr77, i8** %op, align 8
  %72 = load i32, i32* %r, align 4
  %shr78 = ashr i32 %72, 16
  %and79 = and i32 %shr78, 255
  %conv80 = trunc i32 %and79 to i8
  %73 = load i8*, i8** %op, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %conv80, i8* %arrayidx81, align 1
  %74 = load i32, i32* %r, align 4
  %shr82 = ashr i32 %74, 8
  %and83 = and i32 %shr82, 255
  %conv84 = trunc i32 %and83 to i8
  %75 = load i8*, i8** %op, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %conv84, i8* %arrayidx85, align 1
  %76 = load i32, i32* %r, align 4
  %shr86 = ashr i32 %76, 0
  %and87 = and i32 %shr86, 255
  %conv88 = trunc i32 %and87 to i8
  %77 = load i8*, i8** %op, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %conv88, i8* %arrayidx89, align 1
  %78 = load i32, i32* %stride.addr, align 4
  %sub90 = sub i32 %78, 1
  %mul91 = mul i32 %sub90, 3
  %79 = load i8*, i8** %op, align 8
  %idx.ext92 = zext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %79, i64 %idx.ext92
  store i8* %add.ptr93, i8** %op, align 8
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.51
  %80 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %80, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.48

for.end.96:                                       ; preds = %for.cond.48
  br label %if.end

if.end:                                           ; preds = %for.end.96, %for.end
  br label %if.end.196

if.else.97:                                       ; preds = %entry
  %81 = load i32, i32* %bytesShifted.addr, align 4
  %cmp98 = icmp ne i32 %81, 0
  br i1 %cmp98, label %if.then.100, label %if.else.154

if.then.100:                                      ; preds = %if.else.97
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.150, %if.then.100
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %numSamples.addr, align 4
  %cmp102 = icmp slt i32 %82, %83
  br i1 %cmp102, label %for.body.104, label %for.end.153

for.body.104:                                     ; preds = %for.cond.101
  %84 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %84 to i64
  %85 = load i32*, i32** %u.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %85, i64 %idxprom105
  %86 = load i32, i32* %arrayidx106, align 4
  store i32 %86, i32* %l, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %87 to i64
  %88 = load i32*, i32** %v.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %88, i64 %idxprom107
  %89 = load i32, i32* %arrayidx108, align 4
  store i32 %89, i32* %r, align 4
  %90 = load i32, i32* %l, align 4
  %91 = load i32, i32* %shift, align 4
  %shl109 = shl i32 %90, %91
  %92 = load i32, i32* %k, align 4
  %add110 = add nsw i32 %92, 0
  %idxprom111 = sext i32 %add110 to i64
  %93 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %93, i64 %idxprom111
  %94 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %94 to i32
  %or114 = or i32 %shl109, %conv113
  store i32 %or114, i32* %l, align 4
  %95 = load i32, i32* %r, align 4
  %96 = load i32, i32* %shift, align 4
  %shl115 = shl i32 %95, %96
  %97 = load i32, i32* %k, align 4
  %add116 = add nsw i32 %97, 1
  %idxprom117 = sext i32 %add116 to i64
  %98 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %98, i64 %idxprom117
  %99 = load i16, i16* %arrayidx118, align 2
  %conv119 = zext i16 %99 to i32
  %or120 = or i32 %shl115, %conv119
  store i32 %or120, i32* %r, align 4
  %100 = load i32, i32* %l, align 4
  %shr121 = ashr i32 %100, 16
  %and122 = and i32 %shr121, 255
  %conv123 = trunc i32 %and122 to i8
  %101 = load i8*, i8** %op, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 %conv123, i8* %arrayidx124, align 1
  %102 = load i32, i32* %l, align 4
  %shr125 = ashr i32 %102, 8
  %and126 = and i32 %shr125, 255
  %conv127 = trunc i32 %and126 to i8
  %103 = load i8*, i8** %op, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 %conv127, i8* %arrayidx128, align 1
  %104 = load i32, i32* %l, align 4
  %shr129 = ashr i32 %104, 0
  %and130 = and i32 %shr129, 255
  %conv131 = trunc i32 %and130 to i8
  %105 = load i8*, i8** %op, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %conv131, i8* %arrayidx132, align 1
  %106 = load i8*, i8** %op, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %106, i64 3
  store i8* %add.ptr133, i8** %op, align 8
  %107 = load i32, i32* %r, align 4
  %shr134 = ashr i32 %107, 16
  %and135 = and i32 %shr134, 255
  %conv136 = trunc i32 %and135 to i8
  %108 = load i8*, i8** %op, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %108, i64 2
  store i8 %conv136, i8* %arrayidx137, align 1
  %109 = load i32, i32* %r, align 4
  %shr138 = ashr i32 %109, 8
  %and139 = and i32 %shr138, 255
  %conv140 = trunc i32 %and139 to i8
  %110 = load i8*, i8** %op, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 %conv140, i8* %arrayidx141, align 1
  %111 = load i32, i32* %r, align 4
  %shr142 = ashr i32 %111, 0
  %and143 = and i32 %shr142, 255
  %conv144 = trunc i32 %and143 to i8
  %112 = load i8*, i8** %op, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 %conv144, i8* %arrayidx145, align 1
  %113 = load i32, i32* %stride.addr, align 4
  %sub146 = sub i32 %113, 1
  %mul147 = mul i32 %sub146, 3
  %114 = load i8*, i8** %op, align 8
  %idx.ext148 = zext i32 %mul147 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %114, i64 %idx.ext148
  store i8* %add.ptr149, i8** %op, align 8
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.104
  %115 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %115, 1
  store i32 %inc151, i32* %j, align 4
  %116 = load i32, i32* %k, align 4
  %add152 = add nsw i32 %116, 2
  store i32 %add152, i32* %k, align 4
  br label %for.cond.101

for.end.153:                                      ; preds = %for.cond.101
  br label %if.end.195

if.else.154:                                      ; preds = %if.else.97
  store i32 0, i32* %j, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.192, %if.else.154
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %numSamples.addr, align 4
  %cmp156 = icmp slt i32 %117, %118
  br i1 %cmp156, label %for.body.158, label %for.end.194

for.body.158:                                     ; preds = %for.cond.155
  %119 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %119 to i64
  %120 = load i32*, i32** %u.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %120, i64 %idxprom159
  %121 = load i32, i32* %arrayidx160, align 4
  store i32 %121, i32* %val, align 4
  %122 = load i32, i32* %val, align 4
  %shr161 = ashr i32 %122, 16
  %and162 = and i32 %shr161, 255
  %conv163 = trunc i32 %and162 to i8
  %123 = load i8*, i8** %op, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %123, i64 2
  store i8 %conv163, i8* %arrayidx164, align 1
  %124 = load i32, i32* %val, align 4
  %shr165 = ashr i32 %124, 8
  %and166 = and i32 %shr165, 255
  %conv167 = trunc i32 %and166 to i8
  %125 = load i8*, i8** %op, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %conv167, i8* %arrayidx168, align 1
  %126 = load i32, i32* %val, align 4
  %shr169 = ashr i32 %126, 0
  %and170 = and i32 %shr169, 255
  %conv171 = trunc i32 %and170 to i8
  %127 = load i8*, i8** %op, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 %conv171, i8* %arrayidx172, align 1
  %128 = load i8*, i8** %op, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %128, i64 3
  store i8* %add.ptr173, i8** %op, align 8
  %129 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %129 to i64
  %130 = load i32*, i32** %v.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %130, i64 %idxprom174
  %131 = load i32, i32* %arrayidx175, align 4
  store i32 %131, i32* %val, align 4
  %132 = load i32, i32* %val, align 4
  %shr176 = ashr i32 %132, 16
  %and177 = and i32 %shr176, 255
  %conv178 = trunc i32 %and177 to i8
  %133 = load i8*, i8** %op, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %133, i64 2
  store i8 %conv178, i8* %arrayidx179, align 1
  %134 = load i32, i32* %val, align 4
  %shr180 = ashr i32 %134, 8
  %and181 = and i32 %shr180, 255
  %conv182 = trunc i32 %and181 to i8
  %135 = load i8*, i8** %op, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %conv182, i8* %arrayidx183, align 1
  %136 = load i32, i32* %val, align 4
  %shr184 = ashr i32 %136, 0
  %and185 = and i32 %shr184, 255
  %conv186 = trunc i32 %and185 to i8
  %137 = load i8*, i8** %op, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %conv186, i8* %arrayidx187, align 1
  %138 = load i32, i32* %stride.addr, align 4
  %sub188 = sub i32 %138, 1
  %mul189 = mul i32 %sub188, 3
  %139 = load i8*, i8** %op, align 8
  %idx.ext190 = zext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %139, i64 %idx.ext190
  store i8* %add.ptr191, i8** %op, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.158
  %140 = load i32, i32* %j, align 4
  %inc193 = add nsw i32 %140, 1
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
define void @unmix32(i32* %u, i32* %v, i32* %out, i32 %stride, i32 %numSamples, i32 %mixbits, i32 %mixres, i16* %shiftUV, i32 %bytesShifted) #0 {
entry:
  %u.addr = alloca i32*, align 8
  %v.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %mixbits.addr = alloca i32, align 4
  %mixres.addr = alloca i32, align 4
  %shiftUV.addr = alloca i16*, align 8
  %bytesShifted.addr = alloca i32, align 4
  %op = alloca i32*, align 8
  %shift = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lt = alloca i32, align 4
  %rt = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %mixbits, i32* %mixbits.addr, align 4
  store i32 %mixres, i32* %mixres.addr, align 4
  store i16* %shiftUV, i16** %shiftUV.addr, align 8
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i32*, i32** %out.addr, align 8
  store i32* %0, i32** %op, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shift, align 4
  %2 = load i32, i32* %mixres.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %numSamples.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %u.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %lt, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %v.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  store i32 %10, i32* %rt, align 4
  %11 = load i32, i32* %lt, align 4
  %12 = load i32, i32* %rt, align 4
  %add = add nsw i32 %11, %12
  %13 = load i32, i32* %mixres.addr, align 4
  %14 = load i32, i32* %rt, align 4
  %mul4 = mul nsw i32 %13, %14
  %15 = load i32, i32* %mixbits.addr, align 4
  %shr = ashr i32 %mul4, %15
  %sub = sub nsw i32 %add, %shr
  store i32 %sub, i32* %l, align 4
  %16 = load i32, i32* %l, align 4
  %17 = load i32, i32* %rt, align 4
  %sub5 = sub nsw i32 %16, %17
  store i32 %sub5, i32* %r, align 4
  %18 = load i32, i32* %l, align 4
  %19 = load i32, i32* %shift, align 4
  %shl = shl i32 %18, %19
  %20 = load i32, i32* %k, align 4
  %add6 = add nsw i32 %20, 0
  %idxprom7 = sext i32 %add6 to i64
  %21 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %21, i64 %idxprom7
  %22 = load i16, i16* %arrayidx8, align 2
  %conv = zext i16 %22 to i32
  %or = or i32 %shl, %conv
  %23 = load i32*, i32** %op, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %or, i32* %arrayidx9, align 4
  %24 = load i32, i32* %r, align 4
  %25 = load i32, i32* %shift, align 4
  %shl10 = shl i32 %24, %25
  %26 = load i32, i32* %k, align 4
  %add11 = add nsw i32 %26, 1
  %idxprom12 = sext i32 %add11 to i64
  %27 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %27, i64 %idxprom12
  %28 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %28 to i32
  %or15 = or i32 %shl10, %conv14
  %29 = load i32*, i32** %op, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %or15, i32* %arrayidx16, align 4
  %30 = load i32, i32* %stride.addr, align 4
  %31 = load i32*, i32** %op, align 8
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds i32, i32* %31, i64 %idx.ext
  store i32* %add.ptr, i32** %op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  %33 = load i32, i32* %k, align 4
  %add17 = add nsw i32 %33, 2
  store i32 %add17, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.65

if.else:                                          ; preds = %entry
  %34 = load i32, i32* %bytesShifted.addr, align 4
  %cmp18 = icmp eq i32 %34, 0
  br i1 %cmp18, label %if.then.20, label %if.else.36

if.then.20:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.33, %if.then.20
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %numSamples.addr, align 4
  %cmp22 = icmp slt i32 %35, %36
  br i1 %cmp22, label %for.body.24, label %for.end.35

for.body.24:                                      ; preds = %for.cond.21
  %37 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %37 to i64
  %38 = load i32*, i32** %u.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %38, i64 %idxprom25
  %39 = load i32, i32* %arrayidx26, align 4
  %40 = load i32*, i32** %op, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %arrayidx27, align 4
  %41 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %41 to i64
  %42 = load i32*, i32** %v.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %42, i64 %idxprom28
  %43 = load i32, i32* %arrayidx29, align 4
  %44 = load i32*, i32** %op, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %43, i32* %arrayidx30, align 4
  %45 = load i32, i32* %stride.addr, align 4
  %46 = load i32*, i32** %op, align 8
  %idx.ext31 = zext i32 %45 to i64
  %add.ptr32 = getelementptr inbounds i32, i32* %46, i64 %idx.ext31
  store i32* %add.ptr32, i32** %op, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.24
  %47 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %47, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.21

for.end.35:                                       ; preds = %for.cond.21
  br label %if.end

if.else.36:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.61, %if.else.36
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %numSamples.addr, align 4
  %cmp38 = icmp slt i32 %48, %49
  br i1 %cmp38, label %for.body.40, label %for.end.64

for.body.40:                                      ; preds = %for.cond.37
  %50 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32*, i32** %u.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %51, i64 %idxprom41
  %52 = load i32, i32* %arrayidx42, align 4
  %53 = load i32, i32* %shift, align 4
  %shl43 = shl i32 %52, %53
  %54 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %54, 0
  %idxprom45 = sext i32 %add44 to i64
  %55 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %55, i64 %idxprom45
  %56 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %56 to i32
  %or48 = or i32 %shl43, %conv47
  %57 = load i32*, i32** %op, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %or48, i32* %arrayidx49, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %58 to i64
  %59 = load i32*, i32** %v.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %59, i64 %idxprom50
  %60 = load i32, i32* %arrayidx51, align 4
  %61 = load i32, i32* %shift, align 4
  %shl52 = shl i32 %60, %61
  %62 = load i32, i32* %k, align 4
  %add53 = add nsw i32 %62, 1
  %idxprom54 = sext i32 %add53 to i64
  %63 = load i16*, i16** %shiftUV.addr, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %63, i64 %idxprom54
  %64 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %64 to i32
  %or57 = or i32 %shl52, %conv56
  %65 = load i32*, i32** %op, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %or57, i32* %arrayidx58, align 4
  %66 = load i32, i32* %stride.addr, align 4
  %67 = load i32*, i32** %op, align 8
  %idx.ext59 = zext i32 %66 to i64
  %add.ptr60 = getelementptr inbounds i32, i32* %67, i64 %idx.ext59
  store i32* %add.ptr60, i32** %op, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.40
  %68 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %68, 1
  store i32 %inc62, i32* %j, align 4
  %69 = load i32, i32* %k, align 4
  %add63 = add nsw i32 %69, 2
  store i32 %add63, i32* %k, align 4
  br label %for.cond.37

for.end.64:                                       ; preds = %for.cond.37
  br label %if.end

if.end:                                           ; preds = %for.end.64, %for.end.35
  br label %if.end.65

if.end.65:                                        ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @copyPredictorTo24(i32* %in, i8* %out, i32 %stride, i32 %numSamples) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %op, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %val, align 4
  %6 = load i32, i32* %val, align 4
  %shr = ashr i32 %6, 16
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %7 = load i8*, i8** %op, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 2
  store i8 %conv, i8* %arrayidx1, align 1
  %8 = load i32, i32* %val, align 4
  %shr2 = ashr i32 %8, 8
  %and3 = and i32 %shr2, 255
  %conv4 = trunc i32 %and3 to i8
  %9 = load i8*, i8** %op, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %10 = load i32, i32* %val, align 4
  %shr6 = ashr i32 %10, 0
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %11 = load i8*, i8** %op, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %conv8, i8* %arrayidx9, align 1
  %12 = load i32, i32* %stride.addr, align 4
  %mul = mul i32 %12, 3
  %13 = load i8*, i8** %op, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %op, align 8
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
define void @copyPredictorTo24Shift(i32* %in, i16* %shift, i8* %out, i32 %stride, i32 %numSamples, i32 %bytesShifted) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %shift.addr = alloca i16*, align 8
  %out.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %bytesShifted.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  %shiftVal = alloca i32, align 4
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i16* %shift, i16** %shift.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %op, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shiftVal, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %val, align 4
  %7 = load i32, i32* %val, align 4
  %8 = load i32, i32* %shiftVal, align 4
  %shl = shl i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i16*, i16** %shift.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 %idxprom1
  %11 = load i16, i16* %arrayidx2, align 2
  %conv = zext i16 %11 to i32
  %or = or i32 %shl, %conv
  store i32 %or, i32* %val, align 4
  %12 = load i32, i32* %val, align 4
  %shr = ashr i32 %12, 16
  %and = and i32 %shr, 255
  %conv3 = trunc i32 %and to i8
  %13 = load i8*, i8** %op, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %conv3, i8* %arrayidx4, align 1
  %14 = load i32, i32* %val, align 4
  %shr5 = ashr i32 %14, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %15 = load i8*, i8** %op, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv7, i8* %arrayidx8, align 1
  %16 = load i32, i32* %val, align 4
  %shr9 = ashr i32 %16, 0
  %and10 = and i32 %shr9, 255
  %conv11 = trunc i32 %and10 to i8
  %17 = load i8*, i8** %op, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %conv11, i8* %arrayidx12, align 1
  %18 = load i32, i32* %stride.addr, align 4
  %mul13 = mul i32 %18, 3
  %19 = load i8*, i8** %op, align 8
  %idx.ext = zext i32 %mul13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @copyPredictorTo20(i32* %in, i8* %out, i32 %stride, i32 %numSamples) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %op, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %val, align 4
  %6 = load i32, i32* %val, align 4
  %shr = ashr i32 %6, 12
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %7 = load i8*, i8** %op, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 2
  store i8 %conv, i8* %arrayidx1, align 1
  %8 = load i32, i32* %val, align 4
  %shr2 = ashr i32 %8, 4
  %and3 = and i32 %shr2, 255
  %conv4 = trunc i32 %and3 to i8
  %9 = load i8*, i8** %op, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %10 = load i32, i32* %val, align 4
  %shl = shl i32 %10, 4
  %and6 = and i32 %shl, 255
  %conv7 = trunc i32 %and6 to i8
  %11 = load i8*, i8** %op, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %conv7, i8* %arrayidx8, align 1
  %12 = load i32, i32* %stride.addr, align 4
  %mul = mul i32 %12, 3
  %13 = load i8*, i8** %op, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %op, align 8
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
define void @copyPredictorTo32(i32* %in, i32* %out, i32 %stride, i32 %numSamples) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %out.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  store i32 %4, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32, i32* %stride.addr, align 4
  %9 = load i32, i32* %j, align 4
  %add = add i32 %9, %8
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @copyPredictorTo32Shift(i32* %in, i16* %shift, i32* %out, i32 %stride, i32 %numSamples, i32 %bytesShifted) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %shift.addr = alloca i16*, align 8
  %out.addr = alloca i32*, align 8
  %stride.addr = alloca i32, align 4
  %numSamples.addr = alloca i32, align 4
  %bytesShifted.addr = alloca i32, align 4
  %op = alloca i32*, align 8
  %shiftVal = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i16* %shift, i16** %shift.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %bytesShifted, i32* %bytesShifted.addr, align 4
  %0 = load i32*, i32** %out.addr, align 8
  store i32* %0, i32** %op, align 8
  %1 = load i32, i32* %bytesShifted.addr, align 4
  %mul = mul nsw i32 %1, 8
  store i32 %mul, i32* %shiftVal, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %numSamples.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %shiftVal, align 4
  %shl = shl i32 %6, %7
  %8 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i16*, i16** %shift.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 %idxprom1
  %10 = load i16, i16* %arrayidx2, align 2
  %conv = zext i16 %10 to i32
  %or = or i32 %shl, %conv
  %11 = load i32*, i32** %op, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %or, i32* %arrayidx3, align 4
  %12 = load i32, i32* %stride.addr, align 4
  %13 = load i32*, i32** %op, align 8
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  store i32* %add.ptr, i32** %op, align 8
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
