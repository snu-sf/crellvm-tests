; ModuleID = './MultiSource.Benchmarks.nbench/3.emfloat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InternalFPF = type { i8, i8, i16, [4 x i16] }

@DoEmFloatIteration.jtable = internal global [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\03\03\03", align 16
@.str = private unnamed_addr constant [41 x i8] c"Error:  zero significand in denormalize\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @SetupCPUEmFloatArrays(%struct.InternalFPF* %abase, %struct.InternalFPF* %bbase, %struct.InternalFPF* %cbase, i64 %arraysize) #0 {
entry:
  %abase.addr = alloca %struct.InternalFPF*, align 8
  %bbase.addr = alloca %struct.InternalFPF*, align 8
  %cbase.addr = alloca %struct.InternalFPF*, align 8
  %arraysize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %locFPF1 = alloca %struct.InternalFPF, align 2
  %locFPF2 = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %abase, %struct.InternalFPF** %abase.addr, align 8
  store %struct.InternalFPF* %bbase, %struct.InternalFPF** %bbase.addr, align 8
  store %struct.InternalFPF* %cbase, %struct.InternalFPF** %cbase.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  %call = call i32 @randnum(i32 13)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %arraysize.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @randwc(i32 50000)
  call void @Int32ToInternalFPF(i32 %call1, %struct.InternalFPF* %locFPF1)
  %call2 = call i32 @randwc(i32 50000)
  %add = add nsw i32 %call2, 1
  call void @Int32ToInternalFPF(i32 %add, %struct.InternalFPF* %locFPF2)
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %abase.addr, align 8
  %3 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i64 %3
  call void @DivideInternalFPF(%struct.InternalFPF* %locFPF1, %struct.InternalFPF* %locFPF2, %struct.InternalFPF* %add.ptr)
  %call3 = call i32 @randwc(i32 50000)
  %add4 = add nsw i32 %call3, 1
  call void @Int32ToInternalFPF(i32 %add4, %struct.InternalFPF* %locFPF2)
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase.addr, align 8
  %5 = load i64, i64* %i, align 8
  %add.ptr5 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %4, i64 %5
  call void @DivideInternalFPF(%struct.InternalFPF* %locFPF1, %struct.InternalFPF* %locFPF2, %struct.InternalFPF* %add.ptr5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @randnum(i32) #1

; Function Attrs: nounwind uwtable
define internal void @Int32ToInternalFPF(i32 %mylong, %struct.InternalFPF* %dest) #0 {
entry:
  %mylong.addr = alloca i32, align 4
  %dest.addr = alloca %struct.InternalFPF*, align 8
  %i = alloca i32, align 4
  %myword = alloca i16, align 2
  store i32 %mylong, i32* %mylong.addr, align 4
  store %struct.InternalFPF* %dest, %struct.InternalFPF** %dest.addr, align 8
  %0 = load i32, i32* %mylong.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %1, i32 0, i32 1
  store i8 1, i8* %sign, align 1
  %2 = load i32, i32* %mylong.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %mylong.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %sign1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 1
  store i8 0, i8* %sign1, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %4, i32 0, i32 0
  store i8 2, i8* %type, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %mylong.addr, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %for.end
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %type5 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 0
  store i8 0, i8* %type5, align 1
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 2
  store i16 0, i16* %exp, align 2
  br label %return

if.end.6:                                         ; preds = %for.end
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %exp7 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %12, i32 0, i32 2
  store i16 32, i16* %exp7, align 2
  %13 = load i32, i32* %mylong.addr, align 4
  %shr = ashr i32 %13, 16
  %conv = sext i32 %shr to i64
  %and = and i64 %conv, 65535
  %conv8 = trunc i64 %and to i16
  store i16 %conv8, i16* %myword, align 2
  %14 = load i16, i16* %myword, align 2
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa9 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa9, i32 0, i64 0
  store i16 %14, i16* %arrayidx10, align 2
  %16 = load i32, i32* %mylong.addr, align 4
  %conv11 = sext i32 %16 to i64
  %and12 = and i64 %conv11, 65535
  %conv13 = trunc i64 %and12 to i16
  store i16 %conv13, i16* %myword, align 2
  %17 = load i16, i16* %myword, align 2
  %18 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa14 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %18, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa14, i32 0, i64 1
  store i16 %17, i16* %arrayidx15, align 2
  %19 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  call void @normalize(%struct.InternalFPF* %19)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  ret void
}

declare i32 @randwc(i32) #1

; Function Attrs: nounwind uwtable
define internal void @DivideInternalFPF(%struct.InternalFPF* %x, %struct.InternalFPF* %y, %struct.InternalFPF* %z) #0 {
entry:
  %x.addr = alloca %struct.InternalFPF*, align 8
  %y.addr = alloca %struct.InternalFPF*, align 8
  %z.addr = alloca %struct.InternalFPF*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %carry = alloca i16, align 2
  %extra_bits = alloca [4 x i16], align 2
  %locx = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %x, %struct.InternalFPF** %x.addr, align 8
  store %struct.InternalFPF* %y, %struct.InternalFPF** %y.addr, align 8
  store %struct.InternalFPF* %z, %struct.InternalFPF** %z.addr, align 8
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 5
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %type1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 0
  %3 = load i8, i8* %type1, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %mul, %conv2
  switch i32 %add, label %sw.epilog [
    i32 0, label %sw.bb
    i32 18, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 8, label %sw.bb.4
    i32 13, label %sw.bb.4
    i32 5, label %sw.bb.9
    i32 10, label %sw.bb.9
    i32 15, label %sw.bb.16
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.16
    i32 20, label %sw.bb.24
    i32 21, label %sw.bb.24
    i32 22, label %sw.bb.24
    i32 23, label %sw.bb.24
    i32 4, label %sw.bb.25
    i32 9, label %sw.bb.25
    i32 14, label %sw.bb.25
    i32 19, label %sw.bb.25
    i32 6, label %sw.bb.26
    i32 11, label %sw.bb.26
    i32 7, label %sw.bb.26
    i32 12, label %sw.bb.26
    i32 24, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %4)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry
  %5 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i32 0
  %call = call i32 @IsMantissaZero(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %6)
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.3
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %entry, %entry, %if.end
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 1
  %9 = load i8, i8* %sign, align 1
  %conv5 = zext i8 %9 to i32
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign6 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 1
  %11 = load i8, i8* %sign6, align 1
  %conv7 = zext i8 %11 to i32
  %xor = xor i32 %conv5, %conv7
  %conv8 = trunc i32 %xor to i8
  call void @SetInternalFPFZero(%struct.InternalFPF* %7, i8 zeroext %conv8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %mantissa10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %12, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa10, i32 0, i32 0
  %call12 = call i32 @IsMantissaZero(i16* %arraydecay11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.9
  %13 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %13)
  br label %sw.epilog

if.end.15:                                        ; preds = %sw.bb.9
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %entry, %entry, %entry, %if.end.15
  %14 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %14, i8 zeroext 0)
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign17 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i32 0, i32 1
  %16 = load i8, i8* %sign17, align 1
  %conv18 = zext i8 %16 to i32
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign19 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 1
  %18 = load i8, i8* %sign19, align 1
  %conv20 = zext i8 %18 to i32
  %xor21 = xor i32 %conv18, %conv20
  %conv22 = trunc i32 %xor21 to i8
  %19 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign23 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %19, i32 0, i32 1
  store i8 %conv22, i8* %sign23, align 1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry, %entry, %entry, %entry
  %20 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %21 = bitcast %struct.InternalFPF* %20 to i8*
  %22 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %23 = bitcast %struct.InternalFPF* %22 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %21, i8* %23, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry, %entry, %entry, %entry
  %24 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %25 = bitcast %struct.InternalFPF* %24 to i8*
  %26 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %27 = bitcast %struct.InternalFPF* %26 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %25, i8* %27, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry, %entry, %entry, %entry
  %28 = bitcast %struct.InternalFPF* %locx to i8*
  %29 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %30 = bitcast %struct.InternalFPF* %29 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %28, i8* %30, i64 12, i32 1, i1 false)
  %mantissa27 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 3
  %arraydecay28 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa27, i32 0, i32 0
  %call29 = call i32 @IsMantissaZero(i16* %arraydecay28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %sw.bb.26
  %31 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa32 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %31, i32 0, i32 3
  %arraydecay33 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa32, i32 0, i32 0
  %call34 = call i32 @IsMantissaZero(i16* %arraydecay33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.31
  %32 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %32)
  br label %if.end.37

if.else:                                          ; preds = %if.then.31
  %33 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFZero(%struct.InternalFPF* %33, i8 zeroext 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  br label %sw.epilog

if.end.38:                                        ; preds = %sw.bb.26
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa39 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %34, i32 0, i32 3
  %arraydecay40 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa39, i32 0, i32 0
  %call41 = call i32 @IsMantissaZero(i16* %arraydecay40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %35, i8 zeroext 0)
  br label %sw.epilog

if.end.44:                                        ; preds = %if.end.38
  %36 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %type45 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %36, i32 0, i32 0
  %37 = load i8, i8* %type45, align 1
  %38 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type46 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %38, i32 0, i32 0
  store i8 %37, i8* %type46, align 1
  %39 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign47 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %39, i32 0, i32 1
  %40 = load i8, i8* %sign47, align 1
  %conv48 = zext i8 %40 to i32
  %41 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign49 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %41, i32 0, i32 1
  %42 = load i8, i8* %sign49, align 1
  %conv50 = zext i8 %42 to i32
  %xor51 = xor i32 %conv48, %conv50
  %conv52 = trunc i32 %xor51 to i8
  %43 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign53 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %43, i32 0, i32 1
  store i8 %conv52, i8* %sign53, align 1
  %44 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %44, i32 0, i32 2
  %45 = load i16, i16* %exp, align 2
  %conv54 = sext i16 %45 to i32
  %46 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %exp55 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %46, i32 0, i32 2
  %47 = load i16, i16* %exp55, align 2
  %conv56 = sext i16 %47 to i32
  %sub = sub nsw i32 %conv54, %conv56
  %add57 = add nsw i32 %sub, 128
  %conv58 = trunc i32 %add57 to i16
  %48 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp59 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %48, i32 0, i32 2
  store i16 %conv58, i16* %exp59, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %49 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %49, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa61 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %51, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa61, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  %52 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom62
  store i16 0, i16* %arrayidx63, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %no_subtract, %for.end
  %54 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa64 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %54, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa64, i32 0, i64 0
  %55 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %55 to i32
  %and = and i32 %conv66, 32768
  %cmp67 = icmp eq i32 %and, 0
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i16 0, i16* %carry, align 2
  %mantissa69 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 3
  %arraydecay70 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa69, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay70)
  %arraydecay71 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay71)
  %56 = load i16, i16* %carry, align 2
  %conv72 = zext i16 %56 to i32
  %cmp73 = icmp eq i32 %conv72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.105

if.then.75:                                       ; preds = %while.body
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.102, %if.then.75
  %57 = load i32, i32* %j, align 4
  %cmp77 = icmp slt i32 %57, 4
  br i1 %cmp77, label %for.body.79, label %for.end.104

for.body.79:                                      ; preds = %for.cond.76
  %58 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %58 to i64
  %59 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa81 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %59, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa81, i32 0, i64 %idxprom80
  %60 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %60 to i32
  %61 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %61 to i64
  %arrayidx85 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom84
  %62 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %62 to i32
  %cmp87 = icmp sgt i32 %conv83, %conv86
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body.79
  store i16 0, i16* %carry, align 2
  br label %no_subtract

if.end.90:                                        ; preds = %for.body.79
  %63 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa92 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %64, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa92, i32 0, i64 %idxprom91
  %65 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %65 to i32
  %66 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %66 to i64
  %arrayidx96 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom95
  %67 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %67 to i32
  %cmp98 = icmp slt i32 %conv94, %conv97
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.90
  br label %for.end.104

if.end.101:                                       ; preds = %if.end.90
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %68 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %68, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.76

for.end.104:                                      ; preds = %if.then.100, %for.cond.76
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %while.body
  store i16 0, i16* %carry, align 2
  store i32 3, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.117, %if.end.105
  %69 = load i32, i32* %j, align 4
  %cmp107 = icmp sge i32 %69, 0
  br i1 %cmp107, label %for.body.109, label %for.end.118

for.body.109:                                     ; preds = %for.cond.106
  %70 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %70 to i64
  %arrayidx111 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom110
  %71 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %71 to i64
  %arrayidx113 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom112
  %72 = load i16, i16* %arrayidx113, align 2
  %73 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %73 to i64
  %74 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa115 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %74, i32 0, i32 3
  %arrayidx116 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa115, i32 0, i64 %idxprom114
  %75 = load i16, i16* %arrayidx116, align 2
  call void @Sub16Bits(i16* %carry, i16* %arrayidx111, i16 zeroext %72, i16 zeroext %75)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.109
  %76 = load i32, i32* %j, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.106

for.end.118:                                      ; preds = %for.cond.106
  store i16 1, i16* %carry, align 2
  br label %no_subtract

no_subtract:                                      ; preds = %for.end.118, %if.then.89
  %77 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa119 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %77, i32 0, i32 3
  %arraydecay120 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa119, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay120)
  %78 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp121 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %78, i32 0, i32 2
  %79 = load i16, i16* %exp121, align 2
  %dec122 = add i16 %79, -1
  store i16 %dec122, i16* %exp121, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.123:                                        ; preds = %entry
  %80 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %81 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %82 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @choose_nan(%struct.InternalFPF* %80, %struct.InternalFPF* %81, %struct.InternalFPF* %82, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.123, %while.end, %if.then.43, %if.end.37, %sw.bb.25, %sw.bb.24, %sw.bb.16, %if.then.14, %sw.bb.4, %if.then, %sw.bb
  %83 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %83)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @DoEmFloatIteration(%struct.InternalFPF* %abase, %struct.InternalFPF* %bbase, %struct.InternalFPF* %cbase, i64 %arraysize, i64 %loops) #0 {
entry:
  %abase.addr = alloca %struct.InternalFPF*, align 8
  %bbase.addr = alloca %struct.InternalFPF*, align 8
  %cbase.addr = alloca %struct.InternalFPF*, align 8
  %arraysize.addr = alloca i64, align 8
  %loops.addr = alloca i64, align 8
  %elapsed = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.InternalFPF* %abase, %struct.InternalFPF** %abase.addr, align 8
  store %struct.InternalFPF* %bbase, %struct.InternalFPF** %bbase.addr, align 8
  store %struct.InternalFPF* %cbase, %struct.InternalFPF** %cbase.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  store i64 %loops, i64* %loops.addr, align 8
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, i64* %loops.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %loops.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %arraysize.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %rem = urem i64 %3, 16
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @DoEmFloatIteration.jtable, i32 0, i64 %rem
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.InternalFPF*, %struct.InternalFPF** %abase.addr, align 8
  %6 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %5, i64 %6
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase.addr, align 8
  %8 = load i64, i64* %i, align 8
  %add.ptr1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %7, i64 %8
  %9 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase.addr, align 8
  %10 = load i64, i64* %i, align 8
  %add.ptr2 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %9, i64 %10
  call void @AddSubInternalFPF(i8 zeroext 0, %struct.InternalFPF* %add.ptr, %struct.InternalFPF* %add.ptr1, %struct.InternalFPF* %add.ptr2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %abase.addr, align 8
  %12 = load i64, i64* %i, align 8
  %add.ptr4 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i64 %12
  %13 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr5 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i64 %14
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase.addr, align 8
  %16 = load i64, i64* %i, align 8
  %add.ptr6 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i64 %16
  call void @AddSubInternalFPF(i8 zeroext 1, %struct.InternalFPF* %add.ptr4, %struct.InternalFPF* %add.ptr5, %struct.InternalFPF* %add.ptr6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %abase.addr, align 8
  %18 = load i64, i64* %i, align 8
  %add.ptr8 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i64 %18
  %19 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase.addr, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr9 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %19, i64 %20
  %21 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase.addr, align 8
  %22 = load i64, i64* %i, align 8
  %add.ptr10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %21, i64 %22
  call void @MultiplyInternalFPF(%struct.InternalFPF* %add.ptr8, %struct.InternalFPF* %add.ptr9, %struct.InternalFPF* %add.ptr10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %23 = load %struct.InternalFPF*, %struct.InternalFPF** %abase.addr, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr12 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %23, i64 %24
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase.addr, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr13 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %25, i64 %26
  %27 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase.addr, align 8
  %28 = load i64, i64* %i, align 8
  %add.ptr14 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %27, i64 %28
  call void @DivideInternalFPF(%struct.InternalFPF* %add.ptr12, %struct.InternalFPF* %add.ptr13, %struct.InternalFPF* %add.ptr14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.11, %sw.bb.7, %sw.bb.3, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %29 = load i64, i64* %i, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i64, i64* %elapsed, align 8
  %call15 = call i64 @StopStopwatch(i64 %30)
  ret i64 %call15
}

declare i64 @StartStopwatch(...) #1

; Function Attrs: nounwind uwtable
define internal void @AddSubInternalFPF(i8 zeroext %operation, %struct.InternalFPF* %x, %struct.InternalFPF* %y, %struct.InternalFPF* %z) #0 {
entry:
  %operation.addr = alloca i8, align 1
  %x.addr = alloca %struct.InternalFPF*, align 8
  %y.addr = alloca %struct.InternalFPF*, align 8
  %z.addr = alloca %struct.InternalFPF*, align 8
  %exponent_difference = alloca i32, align 4
  %borrow = alloca i16, align 2
  %carry = alloca i16, align 2
  %i = alloca i32, align 4
  %locx = alloca %struct.InternalFPF, align 2
  %locy = alloca %struct.InternalFPF, align 2
  store i8 %operation, i8* %operation.addr, align 1
  store %struct.InternalFPF* %x, %struct.InternalFPF** %x.addr, align 8
  store %struct.InternalFPF* %y, %struct.InternalFPF** %y.addr, align 8
  store %struct.InternalFPF* %z, %struct.InternalFPF** %z.addr, align 8
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 5
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %type1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 0
  %3 = load i8, i8* %type1, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %mul, %conv2
  switch i32 %add, label %sw.epilog [
    i32 0, label %sw.bb
    i32 20, label %sw.bb.9
    i32 21, label %sw.bb.9
    i32 22, label %sw.bb.9
    i32 23, label %sw.bb.9
    i32 5, label %sw.bb.9
    i32 10, label %sw.bb.9
    i32 15, label %sw.bb.9
    i32 16, label %sw.bb.9
    i32 17, label %sw.bb.9
    i32 4, label %sw.bb.10
    i32 9, label %sw.bb.10
    i32 14, label %sw.bb.10
    i32 19, label %sw.bb.10
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.11
    i32 8, label %sw.bb.11
    i32 13, label %sw.bb.11
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.17
    i32 11, label %sw.bb.17
    i32 12, label %sw.bb.17
    i32 18, label %sw.bb.158
    i32 24, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %5 = bitcast %struct.InternalFPF* %4 to i8*
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %7 = bitcast %struct.InternalFPF* %6 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 12, i32 1, i1 false)
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 1
  %9 = load i8, i8* %sign, align 1
  %conv3 = zext i8 %9 to i32
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign4 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 1
  %11 = load i8, i8* %sign4, align 1
  %conv5 = zext i8 %11 to i32
  %xor = xor i32 %conv3, %conv5
  %12 = load i8, i8* %operation.addr, align 1
  %conv6 = zext i8 %12 to i32
  %xor7 = xor i32 %xor, %conv6
  %tobool = icmp ne i32 %xor7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign8 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 1
  store i8 0, i8* %sign8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %14 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %15 = bitcast %struct.InternalFPF* %14 to i8*
  %16 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %17 = bitcast %struct.InternalFPF* %16 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %15, i8* %17, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry, %entry, %entry, %entry
  %18 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %19 = bitcast %struct.InternalFPF* %18 to i8*
  %20 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %21 = bitcast %struct.InternalFPF* %20 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %19, i8* %21, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %22 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %23 = bitcast %struct.InternalFPF* %22 to i8*
  %24 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %25 = bitcast %struct.InternalFPF* %24 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %23, i8* %25, i64 12, i32 1, i1 false)
  %26 = load i8, i8* %operation.addr, align 1
  %conv12 = zext i8 %26 to i32
  %27 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign13 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %27, i32 0, i32 1
  %28 = load i8, i8* %sign13, align 1
  %conv14 = zext i8 %28 to i32
  %xor15 = xor i32 %conv14, %conv12
  %conv16 = trunc i32 %xor15 to i8
  store i8 %conv16, i8* %sign13, align 1
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry, %entry, %entry
  %29 = bitcast %struct.InternalFPF* %locx to i8*
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %31 = bitcast %struct.InternalFPF* %30 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %31, i64 12, i32 1, i1 false)
  %32 = bitcast %struct.InternalFPF* %locy to i8*
  %33 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %34 = bitcast %struct.InternalFPF* %33 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %32, i8* %34, i64 12, i32 1, i1 false)
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 2
  %35 = load i16, i16* %exp, align 2
  %conv18 = sext i16 %35 to i32
  %exp19 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 2
  %36 = load i16, i16* %exp19, align 2
  %conv20 = sext i16 %36 to i32
  %sub = sub nsw i32 %conv18, %conv20
  store i32 %sub, i32* %exponent_difference, align 4
  %37 = load i32, i32* %exponent_difference, align 4
  %cmp = icmp eq i32 %37, 0
  br i1 %cmp, label %if.then.22, label %if.else.39

if.then.22:                                       ; preds = %sw.bb.17
  %type23 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 0
  %38 = load i8, i8* %type23, align 1
  %conv24 = zext i8 %38 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.22
  %type27 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 0
  %39 = load i8, i8* %type27, align 1
  %conv28 = zext i8 %39 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %lor.lhs.false, %if.then.22
  %40 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type32 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %40, i32 0, i32 0
  store i8 1, i8* %type32, align 1
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false
  %41 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type33 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %41, i32 0, i32 0
  store i8 2, i8* %type33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  %sign35 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 1
  %42 = load i8, i8* %sign35, align 1
  %43 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign36 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %43, i32 0, i32 1
  store i8 %42, i8* %sign36, align 1
  %exp37 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 2
  %44 = load i16, i16* %exp37, align 2
  %45 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp38 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %45, i32 0, i32 2
  store i16 %44, i16* %exp38, align 2
  br label %if.end.62

if.else.39:                                       ; preds = %sw.bb.17
  %46 = load i32, i32* %exponent_difference, align 4
  %cmp40 = icmp sgt i32 %46, 0
  br i1 %cmp40, label %if.then.42, label %if.else.49

if.then.42:                                       ; preds = %if.else.39
  %47 = load i32, i32* %exponent_difference, align 4
  call void @StickyShiftRightMant(%struct.InternalFPF* %locy, i32 %47)
  %type43 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 0
  %48 = load i8, i8* %type43, align 1
  %49 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type44 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %49, i32 0, i32 0
  store i8 %48, i8* %type44, align 1
  %sign45 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 1
  %50 = load i8, i8* %sign45, align 1
  %51 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign46 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %51, i32 0, i32 1
  store i8 %50, i8* %sign46, align 1
  %exp47 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 2
  %52 = load i16, i16* %exp47, align 2
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp48 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %53, i32 0, i32 2
  store i16 %52, i16* %exp48, align 2
  br label %if.end.61

if.else.49:                                       ; preds = %if.else.39
  %54 = load i32, i32* %exponent_difference, align 4
  %sub50 = sub nsw i32 0, %54
  call void @StickyShiftRightMant(%struct.InternalFPF* %locx, i32 %sub50)
  %type51 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 0
  %55 = load i8, i8* %type51, align 1
  %56 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type52 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %56, i32 0, i32 0
  store i8 %55, i8* %type52, align 1
  %sign53 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 1
  %57 = load i8, i8* %sign53, align 1
  %conv54 = zext i8 %57 to i32
  %58 = load i8, i8* %operation.addr, align 1
  %conv55 = zext i8 %58 to i32
  %xor56 = xor i32 %conv54, %conv55
  %conv57 = trunc i32 %xor56 to i8
  %59 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign58 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %59, i32 0, i32 1
  store i8 %conv57, i8* %sign58, align 1
  %exp59 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 2
  %60 = load i16, i16* %exp59, align 2
  %61 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp60 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %61, i32 0, i32 2
  store i16 %60, i16* %exp60, align 2
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.49, %if.then.42
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.34
  %sign63 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 1
  %62 = load i8, i8* %sign63, align 1
  %conv64 = zext i8 %62 to i32
  %sign65 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 1
  %63 = load i8, i8* %sign65, align 1
  %conv66 = zext i8 %63 to i32
  %xor67 = xor i32 %conv64, %conv66
  %64 = load i8, i8* %operation.addr, align 1
  %conv68 = zext i8 %64 to i32
  %xor69 = xor i32 %xor67, %conv68
  %tobool70 = icmp ne i32 %xor69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.121

if.then.71:                                       ; preds = %if.end.62
  store i16 0, i16* %borrow, align 2
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.71
  %65 = load i32, i32* %i, align 4
  %cmp72 = icmp sge i32 %65, 0
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %idxprom = sext i32 %66 to i64
  %67 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %67, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 %idxprom
  %68 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %68 to i64
  %mantissa75 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa75, i32 0, i64 %idxprom74
  %69 = load i16, i16* %arrayidx76, align 2
  %70 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %70 to i64
  %mantissa78 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa78, i32 0, i64 %idxprom77
  %71 = load i16, i16* %arrayidx79, align 2
  call void @Sub16Bits(i16* %borrow, i16* %arrayidx, i16 zeroext %69, i16 zeroext %71)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, i32* %i, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i16, i16* %borrow, align 2
  %tobool80 = icmp ne i16 %73, 0
  br i1 %tobool80, label %if.then.81, label %if.else.101

if.then.81:                                       ; preds = %for.end
  %sign82 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 1
  %74 = load i8, i8* %sign82, align 1
  %conv83 = zext i8 %74 to i32
  %75 = load i8, i8* %operation.addr, align 1
  %conv84 = zext i8 %75 to i32
  %xor85 = xor i32 %conv83, %conv84
  %conv86 = trunc i32 %xor85 to i8
  %76 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign87 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %76, i32 0, i32 1
  store i8 %conv86, i8* %sign87, align 1
  store i16 0, i16* %borrow, align 2
  store i32 3, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.98, %if.then.81
  %77 = load i32, i32* %i, align 4
  %cmp89 = icmp sge i32 %77, 0
  br i1 %cmp89, label %for.body.91, label %for.end.100

for.body.91:                                      ; preds = %for.cond.88
  %78 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %78 to i64
  %79 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa93 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %79, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa93, i32 0, i64 %idxprom92
  %80 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %80 to i64
  %81 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa96 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %81, i32 0, i32 3
  %arrayidx97 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa96, i32 0, i64 %idxprom95
  %82 = load i16, i16* %arrayidx97, align 2
  call void @Sub16Bits(i16* %borrow, i16* %arrayidx94, i16 zeroext 0, i16 zeroext %82)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.91
  %83 = load i32, i32* %i, align 4
  %dec99 = add nsw i32 %83, -1
  store i32 %dec99, i32* %i, align 4
  br label %for.cond.88

for.end.100:                                      ; preds = %for.cond.88
  br label %if.end.102

if.else.101:                                      ; preds = %for.end
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %for.end.100
  %84 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa103 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %84, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa103, i32 0, i32 0
  %call = call i32 @IsMantissaZero(i16* %arraydecay)
  %tobool104 = icmp ne i32 %call, 0
  br i1 %tobool104, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.end.102
  %85 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type106 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %85, i32 0, i32 0
  store i8 0, i8* %type106, align 1
  %86 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign107 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %86, i32 0, i32 1
  store i8 0, i8* %sign107, align 1
  br label %if.end.120

if.else.108:                                      ; preds = %if.end.102
  %type109 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 0
  %87 = load i8, i8* %type109, align 1
  %conv110 = zext i8 %87 to i32
  %cmp111 = icmp eq i32 %conv110, 2
  br i1 %cmp111, label %if.then.118, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.else.108
  %type114 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 0
  %88 = load i8, i8* %type114, align 1
  %conv115 = zext i8 %88 to i32
  %cmp116 = icmp eq i32 %conv115, 2
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %lor.lhs.false.113, %if.else.108
  %89 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @normalize(%struct.InternalFPF* %89)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %lor.lhs.false.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.105
  br label %if.end.157

if.else.121:                                      ; preds = %if.end.62
  store i16 0, i16* %carry, align 2
  store i32 3, i32* %i, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.135, %if.else.121
  %90 = load i32, i32* %i, align 4
  %cmp123 = icmp sge i32 %90, 0
  br i1 %cmp123, label %for.body.125, label %for.end.137

for.body.125:                                     ; preds = %for.cond.122
  %91 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %91 to i64
  %92 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa127 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %92, i32 0, i32 3
  %arrayidx128 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa127, i32 0, i64 %idxprom126
  %93 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %93 to i64
  %mantissa130 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locx, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa130, i32 0, i64 %idxprom129
  %94 = load i16, i16* %arrayidx131, align 2
  %95 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %95 to i64
  %mantissa133 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 3
  %arrayidx134 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa133, i32 0, i64 %idxprom132
  %96 = load i16, i16* %arrayidx134, align 2
  call void @Add16Bits(i16* %carry, i16* %arrayidx128, i16 zeroext %94, i16 zeroext %96)
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.125
  %97 = load i32, i32* %i, align 4
  %dec136 = add nsw i32 %97, -1
  store i32 %dec136, i32* %i, align 4
  br label %for.cond.122

for.end.137:                                      ; preds = %for.cond.122
  %98 = load i16, i16* %carry, align 2
  %tobool138 = icmp ne i16 %98, 0
  br i1 %tobool138, label %if.then.139, label %if.else.148

if.then.139:                                      ; preds = %for.end.137
  %99 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp140 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %99, i32 0, i32 2
  %100 = load i16, i16* %exp140, align 2
  %inc = add i16 %100, 1
  store i16 %inc, i16* %exp140, align 2
  store i16 0, i16* %carry, align 2
  %101 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa141 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %101, i32 0, i32 3
  %arraydecay142 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa141, i32 0, i32 0
  call void @ShiftMantRight1(i16* %carry, i16* %arraydecay142)
  %102 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa143 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %102, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa143, i32 0, i64 0
  %103 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %103 to i32
  %or = or i32 %conv145, 32768
  %conv146 = trunc i32 %or to i16
  store i16 %conv146, i16* %arrayidx144, align 2
  %104 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type147 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %104, i32 0, i32 0
  store i8 2, i8* %type147, align 1
  br label %if.end.156

if.else.148:                                      ; preds = %for.end.137
  %105 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa149 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %105, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa149, i32 0, i64 0
  %106 = load i16, i16* %arrayidx150, align 2
  %conv151 = zext i16 %106 to i32
  %and = and i32 %conv151, 32768
  %tobool152 = icmp ne i32 %and, 0
  br i1 %tobool152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.else.148
  %107 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type154 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %107, i32 0, i32 0
  store i8 2, i8* %type154, align 1
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.else.148
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.139
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.120
  br label %sw.epilog

sw.bb.158:                                        ; preds = %entry
  %108 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %108)
  br label %sw.epilog

sw.bb.159:                                        ; preds = %entry
  %109 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %110 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %111 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @choose_nan(%struct.InternalFPF* %109, %struct.InternalFPF* %110, %struct.InternalFPF* %111, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.159, %sw.bb.158, %if.end.157, %sw.bb.11, %sw.bb.10, %sw.bb.9, %if.end
  %112 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %112)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MultiplyInternalFPF(%struct.InternalFPF* %x, %struct.InternalFPF* %y, %struct.InternalFPF* %z) #0 {
entry:
  %x.addr = alloca %struct.InternalFPF*, align 8
  %y.addr = alloca %struct.InternalFPF*, align 8
  %z.addr = alloca %struct.InternalFPF*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %carry = alloca i16, align 2
  %extra_bits = alloca [4 x i16], align 2
  %locy = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %x, %struct.InternalFPF** %x.addr, align 8
  store %struct.InternalFPF* %y, %struct.InternalFPF** %y.addr, align 8
  store %struct.InternalFPF* %z, %struct.InternalFPF** %z.addr, align 8
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 5
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %type1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 0
  %3 = load i8, i8* %type1, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %mul, %conv2
  switch i32 %add, label %sw.epilog [
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 8, label %sw.bb.7
    i32 13, label %sw.bb.7
    i32 5, label %sw.bb.7
    i32 10, label %sw.bb.7
    i32 3, label %sw.bb.14
    i32 15, label %sw.bb.14
    i32 20, label %sw.bb.15
    i32 21, label %sw.bb.15
    i32 22, label %sw.bb.15
    i32 23, label %sw.bb.15
    i32 4, label %sw.bb.16
    i32 9, label %sw.bb.16
    i32 14, label %sw.bb.16
    i32 19, label %sw.bb.16
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.17
    i32 11, label %sw.bb.17
    i32 12, label %sw.bb.17
    i32 24, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %5 = bitcast %struct.InternalFPF* %4 to i8*
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %7 = bitcast %struct.InternalFPF* %6 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 12, i32 1, i1 false)
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 1
  %9 = load i8, i8* %sign, align 1
  %conv3 = zext i8 %9 to i32
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign4 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 1
  %11 = load i8, i8* %sign4, align 1
  %conv5 = zext i8 %11 to i32
  %xor = xor i32 %conv5, %conv3
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %sign4, align 1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry, %entry, %entry
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %13 = bitcast %struct.InternalFPF* %12 to i8*
  %14 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %15 = bitcast %struct.InternalFPF* %14 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %15, i64 12, i32 1, i1 false)
  %16 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign8 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %16, i32 0, i32 1
  %17 = load i8, i8* %sign8, align 1
  %conv9 = zext i8 %17 to i32
  %18 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %18, i32 0, i32 1
  %19 = load i8, i8* %sign10, align 1
  %conv11 = zext i8 %19 to i32
  %xor12 = xor i32 %conv11, %conv9
  %conv13 = trunc i32 %xor12 to i8
  store i8 %conv13, i8* %sign10, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %20 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %20)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry, %entry, %entry
  %21 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %22 = bitcast %struct.InternalFPF* %21 to i8*
  %23 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %24 = bitcast %struct.InternalFPF* %23 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %22, i8* %24, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry, %entry, %entry, %entry
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %26 = bitcast %struct.InternalFPF* %25 to i8*
  %27 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %28 = bitcast %struct.InternalFPF* %27 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %28, i64 12, i32 1, i1 false)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry, %entry, %entry
  %29 = bitcast %struct.InternalFPF* %locy to i8*
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %31 = bitcast %struct.InternalFPF* %30 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %31, i64 12, i32 1, i1 false)
  %32 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %32, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i32 0
  %call = call i32 @IsMantissaZero(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.17
  %33 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %33, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa18, i32 0, i32 0
  %call20 = call i32 @IsMantissaZero(i16* %arraydecay19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.17
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %34, i8 zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %type22 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %35, i32 0, i32 0
  %36 = load i8, i8* %type22, align 1
  %conv23 = zext i8 %36 to i32
  %cmp = icmp eq i32 %conv23, 1
  br i1 %cmp, label %if.then.30, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end
  %37 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %type26 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %37, i32 0, i32 0
  %38 = load i8, i8* %type26, align 1
  %conv27 = zext i8 %38 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false.25, %if.end
  %39 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type31 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %39, i32 0, i32 0
  store i8 1, i8* %type31, align 1
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false.25
  %40 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %type32 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %40, i32 0, i32 0
  store i8 2, i8* %type32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  %41 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %sign34 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %41, i32 0, i32 1
  %42 = load i8, i8* %sign34, align 1
  %conv35 = zext i8 %42 to i32
  %43 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %sign36 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %43, i32 0, i32 1
  %44 = load i8, i8* %sign36, align 1
  %conv37 = zext i8 %44 to i32
  %xor38 = xor i32 %conv35, %conv37
  %conv39 = trunc i32 %xor38 to i8
  %45 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %sign40 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %45, i32 0, i32 1
  store i8 %conv39, i8* %sign40, align 1
  %46 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %46, i32 0, i32 2
  %47 = load i16, i16* %exp, align 2
  %conv41 = sext i16 %47 to i32
  %48 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %exp42 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %48, i32 0, i32 2
  %49 = load i16, i16* %exp42, align 2
  %conv43 = sext i16 %49 to i32
  %add44 = add nsw i32 %conv41, %conv43
  %conv45 = trunc i32 %add44 to i16
  %50 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp46 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %50, i32 0, i32 2
  store i16 %conv45, i16* %exp46, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %51 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %51, 4
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa49 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %53, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa49, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  %54 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %arrayidx51 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i64 %idxprom50
  store i16 0, i16* %arrayidx51, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.80, %for.end
  %56 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %56, 64
  br i1 %cmp53, label %for.body.55, label %for.end.82

for.body.55:                                      ; preds = %for.cond.52
  store i16 0, i16* %carry, align 2
  %mantissa56 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %locy, i32 0, i32 3
  %arraydecay57 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa56, i32 0, i32 0
  call void @ShiftMantRight1(i16* %carry, i16* %arraydecay57)
  %57 = load i16, i16* %carry, align 2
  %tobool58 = icmp ne i16 %57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.75

if.then.59:                                       ; preds = %for.body.55
  store i16 0, i16* %carry, align 2
  store i32 3, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.73, %if.then.59
  %58 = load i32, i32* %j, align 4
  %cmp61 = icmp sge i32 %58, 0
  br i1 %cmp61, label %for.body.63, label %for.end.74

for.body.63:                                      ; preds = %for.cond.60
  %59 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %59 to i64
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa65 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %60, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa65, i32 0, i64 %idxprom64
  %61 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %61 to i64
  %62 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa68 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %62, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa68, i32 0, i64 %idxprom67
  %63 = load i16, i16* %arrayidx69, align 2
  %64 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %64 to i64
  %65 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %mantissa71 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %65, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa71, i32 0, i64 %idxprom70
  %66 = load i16, i16* %arrayidx72, align 2
  call void @Add16Bits(i16* %carry, i16* %arrayidx66, i16 zeroext %63, i16 zeroext %66)
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.63
  %67 = load i32, i32* %j, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.60

for.end.74:                                       ; preds = %for.cond.60
  br label %if.end.76

if.else.75:                                       ; preds = %for.body.55
  store i16 0, i16* %carry, align 2
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %for.end.74
  %68 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa77 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %68, i32 0, i32 3
  %arraydecay78 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa77, i32 0, i32 0
  call void @ShiftMantRight1(i16* %carry, i16* %arraydecay78)
  %arraydecay79 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i32 0
  call void @ShiftMantRight1(i16* %carry, i16* %arraydecay79)
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.76
  %69 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %69, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.52

for.end.82:                                       ; preds = %for.cond.52
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.82
  %70 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa83 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %70, i32 0, i32 3
  %arrayidx84 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa83, i32 0, i64 0
  %71 = load i16, i16* %arrayidx84, align 2
  %conv85 = zext i16 %71 to i32
  %and = and i32 %conv85, 32768
  %cmp86 = icmp eq i32 %and, 0
  br i1 %cmp86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i16 0, i16* %carry, align 2
  %arraydecay88 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay88)
  %72 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa89 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %72, i32 0, i32 3
  %arraydecay90 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa89, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay90)
  %73 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %exp91 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %73, i32 0, i32 2
  %74 = load i16, i16* %exp91, align 2
  %dec92 = add i16 %74, -1
  store i16 %dec92, i16* %exp91, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay93 = getelementptr inbounds [4 x i16], [4 x i16]* %extra_bits, i32 0, i32 0
  %call94 = call i32 @IsMantissaZero(i16* %arraydecay93)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %while.end
  %75 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %mantissa97 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %75, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa97, i32 0, i64 3
  %76 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %76 to i32
  %or = or i32 %conv99, 1
  %conv100 = trunc i32 %or to i16
  store i16 %conv100, i16* %arrayidx98, align 2
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %while.end
  br label %sw.epilog

sw.bb.102:                                        ; preds = %entry
  %77 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %78 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %79 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @choose_nan(%struct.InternalFPF* %77, %struct.InternalFPF* %78, %struct.InternalFPF* %79, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.102, %if.end.101, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.7, %sw.bb
  %80 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %80)
  ret void
}

declare i64 @StopStopwatch(i64) #1

; Function Attrs: nounwind uwtable
define void @RoundInternalFPF(%struct.InternalFPF* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.InternalFPF*, align 8
  store %struct.InternalFPF* %ptr, %struct.InternalFPF** %ptr.addr, align 8
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %type2 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 0
  %3 = load i8, i8* %type2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  call void @denormalize(%struct.InternalFPF* %4, i32 -32767)
  %5 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %type6 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %5, i32 0, i32 0
  %6 = load i8, i8* %type6, align 1
  %conv7 = zext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 3
  %8 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %8 to i32
  %and = and i32 %conv11, 65528
  %conv12 = trunc i32 %and to i16
  store i16 %conv12, i16* %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @denormalize(%struct.InternalFPF* %ptr, i32 %minimum_exponent) #0 {
entry:
  %ptr.addr = alloca %struct.InternalFPF*, align 8
  %minimum_exponent.addr = alloca i32, align 4
  %exponent_difference = alloca i64, align 8
  store %struct.InternalFPF* %ptr, %struct.InternalFPF** %ptr.addr, align 8
  store i32 %minimum_exponent, i32* %minimum_exponent.addr, align 4
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i32 0
  %call = call i32 @IsMantissaZero(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %1, i32 0, i32 2
  %2 = load i16, i16* %exp, align 2
  %conv = sext i16 %2 to i32
  %3 = load i32, i32* %minimum_exponent.addr, align 4
  %sub = sub nsw i32 %conv, %3
  %conv2 = sext i32 %sub to i64
  store i64 %conv2, i64* %exponent_difference, align 8
  %4 = load i64, i64* %exponent_difference, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* %exponent_difference, align 8
  %sub5 = sub nsw i64 0, %5
  store i64 %sub5, i64* %exponent_difference, align 8
  %6 = load i64, i64* %exponent_difference, align 8
  %cmp6 = icmp sge i64 %6, 64
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 1
  %9 = load i8, i8* %sign, align 1
  call void @SetInternalFPFZero(%struct.InternalFPF* %7, i8 zeroext %9)
  br label %if.end.13

if.else:                                          ; preds = %if.then.4
  %10 = load i64, i64* %exponent_difference, align 8
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %exp9 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 2
  %12 = load i16, i16* %exp9, align 2
  %conv10 = sext i16 %12 to i64
  %add = add nsw i64 %conv10, %10
  %conv11 = trunc i64 %add to i16
  store i16 %conv11, i16* %exp9, align 2
  %13 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %14 = load i64, i64* %exponent_difference, align 8
  %conv12 = trunc i64 %14 to i32
  call void @StickyShiftRightMant(%struct.InternalFPF* %13, i32 %conv12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @IsMantissaZero(i16* %mant) #0 {
entry:
  %mant.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i16* %mant, i16** %mant.addr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %mant.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %4 = load i32, i32* %n, align 4
  %or = or i32 %4, %conv
  store i32 %or, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @SetInternalFPFZero(%struct.InternalFPF* %dest, i8 zeroext %sign) #0 {
entry:
  %dest.addr = alloca %struct.InternalFPF*, align 8
  %sign.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.InternalFPF* %dest, %struct.InternalFPF** %dest.addr, align 8
  store i8 %sign, i8* %sign.addr, align 1
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  store i8 0, i8* %type, align 1
  %1 = load i8, i8* %sign.addr, align 1
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %sign1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 1
  store i8 %1, i8* %sign1, align 1
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 2
  store i16 -32767, i16* %exp, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @StickyShiftRightMant(%struct.InternalFPF* %ptr, i32 %amount) #0 {
entry:
  %ptr.addr = alloca %struct.InternalFPF*, align 8
  %amount.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %carry = alloca i16, align 2
  %mantissa = alloca i16*, align 8
  store %struct.InternalFPF* %ptr, %struct.InternalFPF** %ptr.addr, align 8
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %mantissa1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa1, i32 0, i32 0
  store i16* %arraydecay, i16** %mantissa, align 8
  %1 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %1, i32 0, i32 0
  %2 = load i8, i8* %type, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %amount.addr, align 4
  %cmp3 = icmp sge i32 %3, 64
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %4 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %4, 3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %mantissa, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16*, i16** %mantissa, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %8, i64 3
  store i16 1, i16* %arrayidx8, align 2
  br label %if.end.20

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.17, %if.else
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %amount.addr, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body.12, label %for.end.19

for.body.12:                                      ; preds = %for.cond.9
  store i16 0, i16* %carry, align 2
  %11 = load i16*, i16** %mantissa, align 8
  call void @ShiftMantRight1(i16* %carry, i16* %11)
  %12 = load i16, i16* %carry, align 2
  %tobool = icmp ne i16 %12, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body.12
  %13 = load i16*, i16** %mantissa, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 3
  %14 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %or = or i32 %conv15, 1
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %arrayidx14, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.13, %for.body.12
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.9

for.end.19:                                       ; preds = %for.cond.9
  br label %if.end.20

if.end.20:                                        ; preds = %for.end.19, %for.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShiftMantRight1(i16* %carry, i16* %mantissa) #0 {
entry:
  %carry.addr = alloca i16*, align 8
  %mantissa.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %new_carry = alloca i32, align 4
  %accum = alloca i16, align 2
  store i16* %carry, i16** %carry.addr, align 8
  store i16* %mantissa, i16** %mantissa.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %mantissa.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  store i16 %3, i16* %accum, align 2
  %4 = load i16, i16* %accum, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 1
  store i32 %and, i32* %new_carry, align 4
  %5 = load i16, i16* %accum, align 2
  %conv1 = zext i16 %5 to i32
  %shr = ashr i32 %conv1, 1
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, i16* %accum, align 2
  %6 = load i16*, i16** %carry.addr, align 8
  %7 = load i16, i16* %6, align 2
  %tobool = icmp ne i16 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i16, i16* %accum, align 2
  %conv3 = zext i16 %8 to i32
  %or = or i32 %conv3, 32768
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %accum, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %new_carry, align 4
  %conv5 = trunc i32 %9 to i16
  %10 = load i16*, i16** %carry.addr, align 8
  store i16 %conv5, i16* %10, align 2
  %11 = load i16, i16* %accum, align 2
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i16*, i16** %mantissa.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  store i16 %11, i16* %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @Sub16Bits(i16* %borrow, i16* %a, i16 zeroext %b, i16 zeroext %c) #0 {
entry:
  %borrow.addr = alloca i16*, align 8
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16, align 2
  %c.addr = alloca i16, align 2
  %accum = alloca i32, align 4
  store i16* %borrow, i16** %borrow.addr, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16 %b, i16* %b.addr, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %b.addr, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, i32* %accum, align 4
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %2 = load i32, i32* %accum, align 4
  %sub = sub i32 %2, %conv1
  store i32 %sub, i32* %accum, align 4
  %3 = load i16*, i16** %borrow.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = zext i16 %4 to i32
  %5 = load i32, i32* %accum, align 4
  %sub3 = sub i32 %5, %conv2
  store i32 %sub3, i32* %accum, align 4
  %6 = load i32, i32* %accum, align 4
  %and = and i32 %6, 65536
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv4 = trunc i32 %cond to i16
  %7 = load i16*, i16** %borrow.addr, align 8
  store i16 %conv4, i16* %7, align 2
  %8 = load i32, i32* %accum, align 4
  %and5 = and i32 %8, 65535
  %conv6 = trunc i32 %and5 to i16
  %9 = load i16*, i16** %a.addr, align 8
  store i16 %conv6, i16* %9, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @normalize(%struct.InternalFPF* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.InternalFPF*, align 8
  %carry = alloca i16, align 2
  store %struct.InternalFPF* %ptr, %struct.InternalFPF** %ptr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32768
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i16 0, i16* %carry, align 2
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %mantissa2 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa2, i32 0, i32 0
  call void @ShiftMantLeft1(i16* %carry, i16* %arraydecay)
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %ptr.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 2
  %4 = load i16, i16* %exp, align 2
  %dec = add i16 %4, -1
  store i16 %dec, i16* %exp, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Add16Bits(i16* %carry, i16* %a, i16 zeroext %b, i16 zeroext %c) #0 {
entry:
  %carry.addr = alloca i16*, align 8
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16, align 2
  %c.addr = alloca i16, align 2
  %accum = alloca i32, align 4
  store i16* %carry, i16** %carry.addr, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16 %b, i16* %b.addr, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %b.addr, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, i32* %accum, align 4
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %2 = load i32, i32* %accum, align 4
  %add = add i32 %2, %conv1
  store i32 %add, i32* %accum, align 4
  %3 = load i16*, i16** %carry.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = zext i16 %4 to i32
  %5 = load i32, i32* %accum, align 4
  %add3 = add i32 %5, %conv2
  store i32 %add3, i32* %accum, align 4
  %6 = load i32, i32* %accum, align 4
  %and = and i32 %6, 65536
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv4 = trunc i32 %cond to i16
  %7 = load i16*, i16** %carry.addr, align 8
  store i16 %conv4, i16* %7, align 2
  %8 = load i32, i32* %accum, align 4
  %and5 = and i32 %8, 65535
  %conv6 = trunc i32 %and5 to i16
  %9 = load i16*, i16** %a.addr, align 8
  store i16 %conv6, i16* %9, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SetInternalFPFNaN(%struct.InternalFPF* %dest) #0 {
entry:
  %dest.addr = alloca %struct.InternalFPF*, align 8
  %i = alloca i32, align 4
  store %struct.InternalFPF* %dest, %struct.InternalFPF** %dest.addr, align 8
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  store i8 4, i8* %type, align 1
  %1 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %1, i32 0, i32 2
  store i16 32767, i16* %exp, align 2
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 1
  store i8 1, i8* %sign, align 1
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 0
  store i16 16384, i16* %arrayidx, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa1, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @choose_nan(%struct.InternalFPF* %x, %struct.InternalFPF* %y, %struct.InternalFPF* %z, i32 %intel_flag) #0 {
entry:
  %x.addr = alloca %struct.InternalFPF*, align 8
  %y.addr = alloca %struct.InternalFPF*, align 8
  %z.addr = alloca %struct.InternalFPF*, align 8
  %intel_flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.InternalFPF* %x, %struct.InternalFPF** %x.addr, align 8
  store %struct.InternalFPF* %y, %struct.InternalFPF** %y.addr, align 8
  store %struct.InternalFPF* %z, %struct.InternalFPF** %z.addr, align 8
  store i32 %intel_flag, i32* %intel_flag.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa2 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %5, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa2, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %6 to i32
  %cmp5 = icmp sgt i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %8 = bitcast %struct.InternalFPF* %7 to i8*
  %9 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %10 = bitcast %struct.InternalFPF* %9 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %8, i8* %10, i64 12, i32 1, i1 false)
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %mantissa8 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %12, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa8, i32 0, i64 %idxprom7
  %13 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %13 to i32
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %mantissa12 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa12, i32 0, i64 %idxprom11
  %16 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %16 to i32
  %cmp15 = icmp slt i32 %conv10, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %18 = bitcast %struct.InternalFPF* %17 to i8*
  %19 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %20 = bitcast %struct.InternalFPF* %19 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %18, i8* %20, i64 12, i32 1, i1 false)
  br label %return

if.end.18:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intel_flag.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %for.end
  %23 = load %struct.InternalFPF*, %struct.InternalFPF** %x.addr, align 8
  %24 = bitcast %struct.InternalFPF* %23 to i8*
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %26 = bitcast %struct.InternalFPF* %25 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %24, i8* %26, i64 12, i32 1, i1 false)
  br label %if.end.20

if.else:                                          ; preds = %for.end
  %27 = load %struct.InternalFPF*, %struct.InternalFPF** %y.addr, align 8
  %28 = bitcast %struct.InternalFPF* %27 to i8*
  %29 = load %struct.InternalFPF*, %struct.InternalFPF** %z.addr, align 8
  %30 = bitcast %struct.InternalFPF* %29 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %28, i8* %30, i64 12, i32 1, i1 false)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %return

return:                                           ; preds = %if.end.20, %if.then.17, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShiftMantLeft1(i16* %carry, i16* %mantissa) #0 {
entry:
  %carry.addr = alloca i16*, align 8
  %mantissa.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %new_carry = alloca i32, align 4
  %accum = alloca i16, align 2
  store i16* %carry, i16** %carry.addr, align 8
  store i16* %mantissa, i16** %mantissa.addr, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %mantissa.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  store i16 %3, i16* %accum, align 2
  %4 = load i16, i16* %accum, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 32768
  store i32 %and, i32* %new_carry, align 4
  %5 = load i16, i16* %accum, align 2
  %conv1 = zext i16 %5 to i32
  %shl = shl i32 %conv1, 1
  %conv2 = trunc i32 %shl to i16
  store i16 %conv2, i16* %accum, align 2
  %6 = load i16*, i16** %carry.addr, align 8
  %7 = load i16, i16* %6, align 2
  %tobool = icmp ne i16 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i16, i16* %accum, align 2
  %conv3 = zext i16 %8 to i32
  %or = or i32 %conv3, 1
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %accum, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %new_carry, align 4
  %conv5 = trunc i32 %9 to i16
  %10 = load i16*, i16** %carry.addr, align 8
  store i16 %conv5, i16* %10, align 2
  %11 = load i16, i16* %accum, align 2
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i16*, i16** %mantissa.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  store i16 %11, i16* %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SetInternalFPFInfinity(%struct.InternalFPF* %dest, i8 zeroext %sign) #0 {
entry:
  %dest.addr = alloca %struct.InternalFPF*, align 8
  %sign.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.InternalFPF* %dest, %struct.InternalFPF** %dest.addr, align 8
  store i8 %sign, i8* %sign.addr, align 1
  %0 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %type = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %0, i32 0, i32 0
  store i8 3, i8* %type, align 1
  %1 = load i8, i8* %sign.addr, align 1
  %2 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %sign1 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %2, i32 0, i32 1
  store i8 %1, i8* %sign1, align 1
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %exp = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 2
  store i16 -32767, i16* %exp, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %dest.addr, align 8
  %mantissa = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %mantissa, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
