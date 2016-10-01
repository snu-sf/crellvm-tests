; ModuleID = './MultiSource.Applications.ALAC/10.decode.ALACBitUtilities.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define void @BitBufferInit(%struct.BitBuffer* %bits, i8* %buffer, i32 %byteSize) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %buffer.addr = alloca i8*, align 8
  %byteSize.addr = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %byteSize, i32* %byteSize.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i32 0, i32 0
  store i8* %0, i8** %cur, align 8
  %2 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur1 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %cur1, align 8
  %4 = load i32, i32* %byteSize.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %end = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 1
  store i8* %add.ptr, i8** %end, align 8
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 2
  store i32 0, i32* %bitIndex, align 4
  %7 = load i32, i32* %byteSize.addr, align 4
  %8 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %byteSize2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %8, i32 0, i32 3
  store i32 %7, i32* %byteSize2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BitBufferRead(%struct.BitBuffer* %bits, i8 zeroext %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %numBits.addr = alloca i8, align 1
  %returnBits = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i8 %numBits, i8* %numBits.addr, align 1
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur1 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %cur1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl i32 %conv3, 8
  %or = or i32 %shl, %shl4
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %cur5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %or, %conv7
  store i32 %or8, i32* %returnBits, align 4
  %9 = load i32, i32* %returnBits, align 4
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 2
  %11 = load i32, i32* %bitIndex, align 4
  %shl9 = shl i32 %9, %11
  store i32 %shl9, i32* %returnBits, align 4
  %12 = load i32, i32* %returnBits, align 4
  %and = and i32 %12, 16777215
  store i32 %and, i32* %returnBits, align 4
  %13 = load i8, i8* %numBits.addr, align 1
  %conv10 = zext i8 %13 to i32
  %14 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex11 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %14, i32 0, i32 2
  %15 = load i32, i32* %bitIndex11, align 4
  %add = add i32 %15, %conv10
  store i32 %add, i32* %bitIndex11, align 4
  %16 = load i32, i32* %returnBits, align 4
  %17 = load i8, i8* %numBits.addr, align 1
  %conv12 = zext i8 %17 to i32
  %sub = sub nsw i32 24, %conv12
  %shr = lshr i32 %16, %sub
  store i32 %shr, i32* %returnBits, align 4
  %18 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %18, i32 0, i32 2
  %19 = load i32, i32* %bitIndex13, align 4
  %shr14 = lshr i32 %19, 3
  %20 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur15 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %20, i32 0, i32 0
  %21 = load i8*, i8** %cur15, align 8
  %idx.ext = zext i32 %shr14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %cur15, align 8
  %22 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %22, i32 0, i32 2
  %23 = load i32, i32* %bitIndex16, align 4
  %and17 = and i32 %23, 7
  store i32 %and17, i32* %bitIndex16, align 4
  %24 = load i32, i32* %returnBits, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* %bits, i8 zeroext %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %numBits.addr = alloca i8, align 1
  %returnBits = alloca i16, align 2
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i8 %numBits, i8* %numBits.addr, align 1
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 8
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur1 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %cur1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %or = or i32 %shl, %conv3
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %returnBits, align 2
  %6 = load i16, i16* %returnBits, align 2
  %conv5 = zext i16 %6 to i32
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 2
  %8 = load i32, i32* %bitIndex, align 4
  %shl6 = shl i32 %conv5, %8
  %conv7 = trunc i32 %shl6 to i16
  store i16 %conv7, i16* %returnBits, align 2
  %9 = load i8, i8* %numBits.addr, align 1
  %conv8 = zext i8 %9 to i32
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex9 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 2
  %11 = load i32, i32* %bitIndex9, align 4
  %add = add i32 %11, %conv8
  store i32 %add, i32* %bitIndex9, align 4
  %12 = load i16, i16* %returnBits, align 2
  %conv10 = zext i16 %12 to i32
  %13 = load i8, i8* %numBits.addr, align 1
  %conv11 = zext i8 %13 to i32
  %sub = sub nsw i32 16, %conv11
  %shr = ashr i32 %conv10, %sub
  %conv12 = trunc i32 %shr to i16
  store i16 %conv12, i16* %returnBits, align 2
  %14 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex13 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %14, i32 0, i32 2
  %15 = load i32, i32* %bitIndex13, align 4
  %shr14 = lshr i32 %15, 3
  %16 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur15 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %16, i32 0, i32 0
  %17 = load i8*, i8** %cur15, align 8
  %idx.ext = zext i32 %shr14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %cur15, align 8
  %18 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex16 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %18, i32 0, i32 2
  %19 = load i32, i32* %bitIndex16, align 4
  %and = and i32 %19, 7
  store i32 %and, i32* %bitIndex16, align 4
  %20 = load i16, i16* %returnBits, align 2
  %conv17 = trunc i16 %20 to i8
  ret i8 %conv17
}

; Function Attrs: nounwind uwtable
define zeroext i8 @BitBufferReadOne(%struct.BitBuffer* %bits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %returnBits = alloca i8, align 1
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 2
  %4 = load i32, i32* %bitIndex, align 4
  %sub = sub i32 7, %4
  %shr = ashr i32 %conv, %sub
  %and = and i32 %shr, 1
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %returnBits, align 1
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 2
  %6 = load i32, i32* %bitIndex2, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %bitIndex2, align 4
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 2
  %8 = load i32, i32* %bitIndex3, align 4
  %shr4 = lshr i32 %8, 3
  %9 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %9, i32 0, i32 0
  %10 = load i8*, i8** %cur5, align 8
  %idx.ext = zext i32 %shr4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %cur5, align 8
  %11 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex6 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %11, i32 0, i32 2
  %12 = load i32, i32* %bitIndex6, align 4
  %and7 = and i32 %12, 7
  store i32 %and7, i32* %bitIndex6, align 4
  %13 = load i8, i8* %returnBits, align 1
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define i32 @BitBufferPeek(%struct.BitBuffer* %bits, i8 zeroext %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %numBits.addr = alloca i8, align 1
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i8 %numBits, i8* %numBits.addr, align 1
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur1 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 0
  %4 = load i8*, i8** %cur1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl i32 %conv3, 8
  %or = or i32 %shl, %shl4
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %cur5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %or, %conv7
  %9 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %9, i32 0, i32 2
  %10 = load i32, i32* %bitIndex, align 4
  %shl9 = shl i32 %or8, %10
  %and = and i32 %shl9, 16777215
  %11 = load i8, i8* %numBits.addr, align 1
  %conv10 = zext i8 %11 to i32
  %sub = sub nsw i32 24, %conv10
  %shr = lshr i32 %and, %sub
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @BitBufferPeekOne(%struct.BitBuffer* %bits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %3, i32 0, i32 2
  %4 = load i32, i32* %bitIndex, align 4
  %sub = sub i32 7, %4
  %shr = ashr i32 %conv, %sub
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @BitBufferUnpackBERSize(%struct.BitBuffer* %bits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %size = alloca i32, align 4
  %tmp = alloca i8, align 1
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i32 0, i32* %size, align 4
  store i8 -128, i8* %tmp, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %tmp, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 128
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %tmp, align 1
  %tobool = icmp ne i8 %conv1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %call = call zeroext i8 @BitBufferReadSmall(%struct.BitBuffer* %1, i8 zeroext 8)
  store i8 %call, i8* %tmp, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %size, align 4
  %shl = shl i32 %2, 7
  %3 = load i8, i8* %tmp, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 127
  %or = or i32 %shl, %and3
  store i32 %or, i32* %size, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %size, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @BitBufferGetPosition(%struct.BitBuffer* %bits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %begin = alloca i8*, align 8
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %end = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 1
  %1 = load i8*, i8** %end, align 8
  %2 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %byteSize = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i32 0, i32 3
  %3 = load i32, i32* %byteSize, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg
  store i8* %add.ptr, i8** %begin, align 8
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %cur, align 8
  %6 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %mul = mul i32 %conv, 8
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 2
  %8 = load i32, i32* %bitIndex, align 4
  %add = add i32 %mul, %8
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @BitBufferByteAlign(%struct.BitBuffer* %bits, i32 %addZeros) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %addZeros.addr = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i32 %addZeros, i32* %addZeros.addr, align 4
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 2
  %1 = load i32, i32* %bitIndex, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %addZeros.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 2
  %5 = load i32, i32* %bitIndex2, align 4
  %sub = sub i32 8, %5
  call void @BitBufferWrite(%struct.BitBuffer* %3, i32 0, i32 %sub)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 2
  %8 = load i32, i32* %bitIndex3, align 4
  %sub4 = sub i32 8, %8
  call void @BitBufferAdvance(%struct.BitBuffer* %6, i32 %sub4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @BitBufferWrite(%struct.BitBuffer* %bits, i32 %bitValues, i32 %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %bitValues.addr = alloca i32, align 4
  %numBits.addr = alloca i32, align 4
  %invBitIndex = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shift = alloca i8, align 1
  %mask = alloca i8, align 1
  %curNum = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i32 %bitValues, i32* %bitValues.addr, align 4
  store i32 %numBits, i32* %numBits.addr, align 4
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cmp = icmp ne %struct.BitBuffer* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %numBits.addr, align 4
  %cmp1 = icmp ugt i32 %1, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i32 0, i32 2
  %3 = load i32, i32* %bitIndex, align 4
  %sub = sub i32 8, %3
  store i32 %sub, i32* %invBitIndex, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %if.end.3
  %4 = load i32, i32* %numBits.addr, align 4
  %cmp4 = icmp ugt i32 %4, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %invBitIndex, align 4
  %6 = load i32, i32* %numBits.addr, align 4
  %cmp8 = icmp ult i32 %5, %6
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load i32, i32* %invBitIndex, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %8 = load i32, i32* %numBits.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %curNum, align 4
  %9 = load i32, i32* %bitValues.addr, align 4
  %10 = load i32, i32* %numBits.addr, align 4
  %11 = load i32, i32* %curNum, align 4
  %sub9 = sub i32 %10, %11
  %shr = lshr i32 %9, %sub9
  store i32 %shr, i32* %tmp, align 4
  %12 = load i32, i32* %invBitIndex, align 4
  %13 = load i32, i32* %curNum, align 4
  %sub10 = sub i32 %12, %13
  %conv = trunc i32 %sub10 to i8
  store i8 %conv, i8* %shift, align 1
  %14 = load i32, i32* %curNum, align 4
  %sub11 = sub i32 8, %14
  %shr12 = lshr i32 255, %sub11
  %conv13 = trunc i32 %shr12 to i8
  store i8 %conv13, i8* %mask, align 1
  %15 = load i8, i8* %shift, align 1
  %conv14 = zext i8 %15 to i32
  %16 = load i8, i8* %mask, align 1
  %conv15 = zext i8 %16 to i32
  %shl = shl i32 %conv15, %conv14
  %conv16 = trunc i32 %shl to i8
  store i8 %conv16, i8* %mask, align 1
  %17 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %17, i32 0, i32 0
  %18 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %19 to i32
  %20 = load i8, i8* %mask, align 1
  %conv18 = zext i8 %20 to i32
  %neg = xor i32 %conv18, -1
  %and = and i32 %conv17, %neg
  %21 = load i32, i32* %tmp, align 4
  %conv19 = trunc i32 %21 to i8
  %conv20 = zext i8 %conv19 to i32
  %22 = load i8, i8* %shift, align 1
  %conv21 = zext i8 %22 to i32
  %shl22 = shl i32 %conv20, %conv21
  %23 = load i8, i8* %mask, align 1
  %conv23 = zext i8 %23 to i32
  %and24 = and i32 %shl22, %conv23
  %or = or i32 %and, %and24
  %conv25 = trunc i32 %or to i8
  %24 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur26 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %24, i32 0, i32 0
  %25 = load i8*, i8** %cur26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv25, i8* %arrayidx27, align 1
  %26 = load i32, i32* %curNum, align 4
  %27 = load i32, i32* %numBits.addr, align 4
  %sub28 = sub i32 %27, %26
  store i32 %sub28, i32* %numBits.addr, align 4
  %28 = load i32, i32* %curNum, align 4
  %29 = load i32, i32* %invBitIndex, align 4
  %sub29 = sub i32 %29, %28
  store i32 %sub29, i32* %invBitIndex, align 4
  %30 = load i32, i32* %invBitIndex, align 4
  %cmp30 = icmp eq i32 %30, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %cond.end
  store i32 8, i32* %invBitIndex, align 4
  %31 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur33 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %31, i32 0, i32 0
  %32 = load i8*, i8** %cur33, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %cur33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %cond.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %invBitIndex, align 4
  %sub35 = sub i32 8, %33
  %34 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex36 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %34, i32 0, i32 2
  store i32 %sub35, i32* %bitIndex36, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @BitBufferAdvance(%struct.BitBuffer* %bits, i32 %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %numBits.addr = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i32 %numBits, i32* %numBits.addr, align 4
  %0 = load i32, i32* %numBits.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %numBits.addr, align 4
  %2 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i32 0, i32 2
  %3 = load i32, i32* %bitIndex, align 4
  %add = add i32 %3, %1
  store i32 %add, i32* %bitIndex, align 4
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex1 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 2
  %5 = load i32, i32* %bitIndex1, align 4
  %shr = lshr i32 %5, 3
  %6 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %cur, align 8
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %cur, align 8
  %8 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex2 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %8, i32 0, i32 2
  %9 = load i32, i32* %bitIndex2, align 4
  %and = and i32 %9, 7
  store i32 %and, i32* %bitIndex2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @BitBufferRewind(%struct.BitBuffer* %bits, i32 %numBits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  %numBits.addr = alloca i32, align 4
  %numBytes = alloca i32, align 4
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  store i32 %numBits, i32* %numBits.addr, align 4
  %0 = load i32, i32* %numBits.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.27

if.end:                                           ; preds = %entry
  %1 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i32 0, i32 2
  %2 = load i32, i32* %bitIndex, align 4
  %3 = load i32, i32* %numBits.addr, align 4
  %cmp1 = icmp uge i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %numBits.addr, align 4
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex3 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 2
  %6 = load i32, i32* %bitIndex3, align 4
  %sub = sub i32 %6, %4
  store i32 %sub, i32* %bitIndex3, align 4
  br label %if.end.27

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex5 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %7, i32 0, i32 2
  %8 = load i32, i32* %bitIndex5, align 4
  %9 = load i32, i32* %numBits.addr, align 4
  %sub6 = sub i32 %9, %8
  store i32 %sub6, i32* %numBits.addr, align 4
  %10 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex7 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %10, i32 0, i32 2
  store i32 0, i32* %bitIndex7, align 4
  %11 = load i32, i32* %numBits.addr, align 4
  %div = udiv i32 %11, 8
  store i32 %div, i32* %numBytes, align 4
  %12 = load i32, i32* %numBits.addr, align 4
  %rem = urem i32 %12, 8
  store i32 %rem, i32* %numBits.addr, align 4
  %13 = load i32, i32* %numBytes, align 4
  %14 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %cur, align 8
  %idx.ext = zext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %cur, align 8
  %16 = load i32, i32* %numBits.addr, align 4
  %cmp8 = icmp ugt i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.4
  %17 = load i32, i32* %numBits.addr, align 4
  %sub10 = sub i32 8, %17
  %18 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex11 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %18, i32 0, i32 2
  store i32 %sub10, i32* %bitIndex11, align 4
  %19 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur12 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %19, i32 0, i32 0
  %20 = load i8*, i8** %cur12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr, i8** %cur12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.4
  %21 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur14 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %21, i32 0, i32 0
  %22 = load i8*, i8** %cur14, align 8
  %23 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %end = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %23, i32 0, i32 1
  %24 = load i8*, i8** %end, align 8
  %25 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %byteSize = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %25, i32 0, i32 3
  %26 = load i32, i32* %byteSize, align 4
  %idx.ext15 = zext i32 %26 to i64
  %idx.neg16 = sub i64 0, %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %24, i64 %idx.neg16
  %cmp18 = icmp ult i8* %22, %add.ptr17
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.13
  %27 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %end20 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %27, i32 0, i32 1
  %28 = load i8*, i8** %end20, align 8
  %29 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %byteSize21 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %29, i32 0, i32 3
  %30 = load i32, i32* %byteSize21, align 4
  %idx.ext22 = zext i32 %30 to i64
  %idx.neg23 = sub i64 0, %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %28, i64 %idx.neg23
  %31 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur25 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %31, i32 0, i32 0
  store i8* %add.ptr24, i8** %cur25, align 8
  %32 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex26 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %32, i32 0, i32 2
  store i32 0, i32* %bitIndex26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then, %if.then.2, %if.then.19, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @BitBufferReset(%struct.BitBuffer* %bits) #0 {
entry:
  %bits.addr = alloca %struct.BitBuffer*, align 8
  store %struct.BitBuffer* %bits, %struct.BitBuffer** %bits.addr, align 8
  %0 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %end = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %0, i32 0, i32 1
  %1 = load i8*, i8** %end, align 8
  %2 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %byteSize = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i32 0, i32 3
  %3 = load i32, i32* %byteSize, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg
  %4 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %4, i32 0, i32 0
  store i8* %add.ptr, i8** %cur, align 8
  %5 = load %struct.BitBuffer*, %struct.BitBuffer** %bits.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %5, i32 0, i32 2
  store i32 0, i32* %bitIndex, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
