; ModuleID = './MultiSource.Benchmarks.7zip/31.Sha256.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }

@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nounwind uwtable
define void @Sha256_Init(%struct.CSha256* %p) #0 {
entry:
  %p.addr = alloca %struct.CSha256*, align 8
  store %struct.CSha256* %p, %struct.CSha256** %p.addr, align 8
  %0 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 0
  store i32 1779033703, i32* %arrayidx, align 4
  %1 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state1 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %state1, i32 0, i64 1
  store i32 -1150833019, i32* %arrayidx2, align 4
  %2 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state3 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 2
  store i32 1013904242, i32* %arrayidx4, align 4
  %3 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state5 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %state5, i32 0, i64 3
  store i32 -1521486534, i32* %arrayidx6, align 4
  %4 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state7 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %state7, i32 0, i64 4
  store i32 1359893119, i32* %arrayidx8, align 4
  %5 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state9 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 5
  store i32 -1694144372, i32* %arrayidx10, align 4
  %6 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state11 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %6, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 6
  store i32 528734635, i32* %arrayidx12, align 4
  %7 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state13 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %state13, i32 0, i64 7
  store i32 1541459225, i32* %arrayidx14, align 4
  %8 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %count = getelementptr inbounds %struct.CSha256, %struct.CSha256* %8, i32 0, i32 1
  store i64 0, i64* %count, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Sha256_Update(%struct.CSha256* %p, i8* %data, i64 %size) #0 {
entry:
  %p.addr = alloca %struct.CSha256*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %curBufferPos = alloca i32, align 4
  store %struct.CSha256* %p, %struct.CSha256** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %count = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i32 0, i32 1
  %1 = load i64, i64* %count, align 8
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 63
  store i32 %and, i32* %curBufferPos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i32, i32* %curBufferPos, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %curBufferPos, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer = getelementptr inbounds %struct.CSha256, %struct.CSha256* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %4, i8* %arrayidx, align 1
  %7 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %count2 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %7, i32 0, i32 1
  %8 = load i64, i64* %count2, align 8
  %inc3 = add i64 %8, 1
  store i64 %inc3, i64* %count2, align 8
  %9 = load i64, i64* %size.addr, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %size.addr, align 8
  %10 = load i32, i32* %curBufferPos, align 4
  %cmp4 = icmp eq i32 %10, 64
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %curBufferPos, align 4
  %11 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Sha256_WriteByteBlock(%struct.CSha256* %p) #0 {
entry:
  %p.addr = alloca %struct.CSha256*, align 8
  %data32 = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  store %struct.CSha256* %p, %struct.CSha256** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %mul = mul i32 %1, 4
  %idxprom = zext i32 %mul to i64
  %2 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer = getelementptr inbounds %struct.CSha256, %struct.CSha256* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 24
  %4 = load i32, i32* %i, align 4
  %mul1 = mul i32 %4, 4
  %add = add i32 %mul1, 1
  %idxprom2 = zext i32 %add to i64
  %5 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer3 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %5, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer3, i32 0, i64 %idxprom2
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 16
  %add7 = add i32 %shl, %shl6
  %7 = load i32, i32* %i, align 4
  %mul8 = mul i32 %7, 4
  %add9 = add i32 %mul8, 2
  %idxprom10 = zext i32 %add9 to i64
  %8 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer11 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %8, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer11, i32 0, i64 %idxprom10
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %shl14 = shl i32 %conv13, 8
  %add15 = add i32 %add7, %shl14
  %10 = load i32, i32* %i, align 4
  %mul16 = mul i32 %10, 4
  %add17 = add i32 %mul16, 3
  %idxprom18 = zext i32 %add17 to i64
  %11 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer19 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %11, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer19, i32 0, i64 %idxprom18
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %add22 = add i32 %add15, %conv21
  %13 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* %data32, i32 0, i64 %idxprom23
  store i32 %add22, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state = getelementptr inbounds %struct.CSha256, %struct.CSha256* %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [16 x i32], [16 x i32]* %data32, i32 0, i32 0
  call void @Sha256_Transform(i32* %arraydecay, i32* %arraydecay25)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Sha256_Final(%struct.CSha256* %p, i8* %digest) #0 {
entry:
  %p.addr = alloca %struct.CSha256*, align 8
  %digest.addr = alloca i8*, align 8
  %lenInBits = alloca i64, align 8
  %curBufferPos = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CSha256* %p, %struct.CSha256** %p.addr, align 8
  store i8* %digest, i8** %digest.addr, align 8
  %0 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %count = getelementptr inbounds %struct.CSha256, %struct.CSha256* %0, i32 0, i32 1
  %1 = load i64, i64* %count, align 8
  %shl = shl i64 %1, 3
  store i64 %shl, i64* %lenInBits, align 8
  %2 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %count1 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %2, i32 0, i32 1
  %3 = load i64, i64* %count1, align 8
  %conv = trunc i64 %3 to i32
  %and = and i32 %conv, 63
  store i32 %and, i32* %curBufferPos, align 4
  %4 = load i32, i32* %curBufferPos, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %curBufferPos, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer = getelementptr inbounds %struct.CSha256, %struct.CSha256* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %curBufferPos, align 4
  %cmp = icmp ne i32 %6, 56
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %curBufferPos, align 4
  %and3 = and i32 %7, 63
  store i32 %and3, i32* %curBufferPos, align 4
  %8 = load i32, i32* %curBufferPos, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %curBufferPos, align 4
  %inc6 = add i32 %10, 1
  store i32 %inc6, i32* %curBufferPos, align 4
  %idxprom7 = zext i32 %10 to i64
  %11 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer8 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %11, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer8, i32 0, i64 %idxprom7
  store i8 0, i8* %arrayidx9, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %12 = load i32, i32* %i, align 4
  %cmp10 = icmp ult i32 %12, 8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %lenInBits, align 8
  %shr = lshr i64 %13, 56
  %conv12 = trunc i64 %shr to i8
  %14 = load i32, i32* %curBufferPos, align 4
  %inc13 = add i32 %14, 1
  store i32 %inc13, i32* %curBufferPos, align 4
  %idxprom14 = zext i32 %14 to i64
  %15 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %buffer15 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %15, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer15, i32 0, i64 %idxprom14
  store i8 %conv12, i8* %arrayidx16, align 1
  %16 = load i64, i64* %lenInBits, align 8
  %shl17 = shl i64 %16, 8
  store i64 %shl17, i64* %lenInBits, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc18 = add i32 %17, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  call void @Sha256_WriteByteBlock(%struct.CSha256* %18)
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.44, %for.end
  %19 = load i32, i32* %i, align 4
  %cmp20 = icmp ult i32 %19, 8
  br i1 %cmp20, label %for.body.22, label %for.end.46

for.body.22:                                      ; preds = %for.cond.19
  %20 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %20 to i64
  %21 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state = getelementptr inbounds %struct.CSha256, %struct.CSha256* %21, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %shr25 = lshr i32 %22, 24
  %conv26 = trunc i32 %shr25 to i8
  %23 = load i8*, i8** %digest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %digest.addr, align 8
  store i8 %conv26, i8* %23, align 1
  %24 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %24 to i64
  %25 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state28 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %25, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %state28, i32 0, i64 %idxprom27
  %26 = load i32, i32* %arrayidx29, align 4
  %shr30 = lshr i32 %26, 16
  %conv31 = trunc i32 %shr30 to i8
  %27 = load i8*, i8** %digest.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr32, i8** %digest.addr, align 8
  store i8 %conv31, i8* %27, align 1
  %28 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %28 to i64
  %29 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state34 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %29, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %state34, i32 0, i64 %idxprom33
  %30 = load i32, i32* %arrayidx35, align 4
  %shr36 = lshr i32 %30, 8
  %conv37 = trunc i32 %shr36 to i8
  %31 = load i8*, i8** %digest.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr38, i8** %digest.addr, align 8
  store i8 %conv37, i8* %31, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %32 to i64
  %33 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  %state40 = getelementptr inbounds %struct.CSha256, %struct.CSha256* %33, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %state40, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx41, align 4
  %conv42 = trunc i32 %34 to i8
  %35 = load i8*, i8** %digest.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr43, i8** %digest.addr, align 8
  store i8 %conv42, i8* %35, align 1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.22
  %36 = load i32, i32* %i, align 4
  %inc45 = add i32 %36, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.19

for.end.46:                                       ; preds = %for.cond.19
  %37 = load %struct.CSha256*, %struct.CSha256** %p.addr, align 8
  call void @Sha256_Init(%struct.CSha256* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Sha256_Transform(i32* %state, i32* %data) #0 {
entry:
  %state.addr = alloca i32*, align 8
  %data.addr = alloca i32*, align 8
  %W = alloca [16 x i32], align 16
  %j = alloca i32, align 4
  %T = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  store i32* %state, i32** %state.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %state.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %j, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.216, %for.end
  %6 = load i32, i32* %j, align 4
  %cmp4 = icmp ult i32 %6, 64
  br i1 %cmp4, label %for.body.5, label %for.end.218

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.213, %for.body.5
  %7 = load i32, i32* %i, align 4
  %cmp7 = icmp ult i32 %7, 16
  br i1 %cmp7, label %for.body.8, label %for.end.215

for.body.8:                                       ; preds = %for.cond.6
  %8 = load i32, i32* %i, align 4
  %sub = sub i32 4, %8
  %and = and i32 %sub, 7
  %idxprom9 = zext i32 %and to i64
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %shr = lshr i32 %9, 6
  %10 = load i32, i32* %i, align 4
  %sub11 = sub i32 4, %10
  %and12 = and i32 %sub11, 7
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %shl = shl i32 %11, 26
  %or = or i32 %shr, %shl
  %12 = load i32, i32* %i, align 4
  %sub15 = sub i32 4, %12
  %and16 = and i32 %sub15, 7
  %idxprom17 = zext i32 %and16 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom17
  %13 = load i32, i32* %arrayidx18, align 4
  %shr19 = lshr i32 %13, 11
  %14 = load i32, i32* %i, align 4
  %sub20 = sub i32 4, %14
  %and21 = and i32 %sub20, 7
  %idxprom22 = zext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom22
  %15 = load i32, i32* %arrayidx23, align 4
  %shl24 = shl i32 %15, 21
  %or25 = or i32 %shr19, %shl24
  %xor = xor i32 %or, %or25
  %16 = load i32, i32* %i, align 4
  %sub26 = sub i32 4, %16
  %and27 = and i32 %sub26, 7
  %idxprom28 = zext i32 %and27 to i64
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom28
  %17 = load i32, i32* %arrayidx29, align 4
  %shr30 = lshr i32 %17, 25
  %18 = load i32, i32* %i, align 4
  %sub31 = sub i32 4, %18
  %and32 = and i32 %sub31, 7
  %idxprom33 = zext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom33
  %19 = load i32, i32* %arrayidx34, align 4
  %shl35 = shl i32 %19, 7
  %or36 = or i32 %shr30, %shl35
  %xor37 = xor i32 %xor, %or36
  %20 = load i32, i32* %i, align 4
  %sub38 = sub i32 6, %20
  %and39 = and i32 %sub38, 7
  %idxprom40 = zext i32 %and39 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom40
  %21 = load i32, i32* %arrayidx41, align 4
  %22 = load i32, i32* %i, align 4
  %sub42 = sub i32 4, %22
  %and43 = and i32 %sub42, 7
  %idxprom44 = zext i32 %and43 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom44
  %23 = load i32, i32* %arrayidx45, align 4
  %24 = load i32, i32* %i, align 4
  %sub46 = sub i32 5, %24
  %and47 = and i32 %sub46, 7
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom48
  %25 = load i32, i32* %arrayidx49, align 4
  %26 = load i32, i32* %i, align 4
  %sub50 = sub i32 6, %26
  %and51 = and i32 %sub50, 7
  %idxprom52 = zext i32 %and51 to i64
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom52
  %27 = load i32, i32* %arrayidx53, align 4
  %xor54 = xor i32 %25, %27
  %and55 = and i32 %23, %xor54
  %xor56 = xor i32 %21, %and55
  %add = add i32 %xor37, %xor56
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %j, align 4
  %add57 = add i32 %28, %29
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i32 0, i64 %idxprom58
  %30 = load i32, i32* %arrayidx59, align 4
  %add60 = add i32 %add, %30
  %31 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %32 = load i32, i32* %i, align 4
  %sub61 = sub i32 %32, 2
  %and62 = and i32 %sub61, 15
  %idxprom63 = zext i32 %and62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom63
  %33 = load i32, i32* %arrayidx64, align 4
  %shr65 = lshr i32 %33, 17
  %34 = load i32, i32* %i, align 4
  %sub66 = sub i32 %34, 2
  %and67 = and i32 %sub66, 15
  %idxprom68 = zext i32 %and67 to i64
  %arrayidx69 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom68
  %35 = load i32, i32* %arrayidx69, align 4
  %shl70 = shl i32 %35, 15
  %or71 = or i32 %shr65, %shl70
  %36 = load i32, i32* %i, align 4
  %sub72 = sub i32 %36, 2
  %and73 = and i32 %sub72, 15
  %idxprom74 = zext i32 %and73 to i64
  %arrayidx75 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom74
  %37 = load i32, i32* %arrayidx75, align 4
  %shr76 = lshr i32 %37, 19
  %38 = load i32, i32* %i, align 4
  %sub77 = sub i32 %38, 2
  %and78 = and i32 %sub77, 15
  %idxprom79 = zext i32 %and78 to i64
  %arrayidx80 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom79
  %39 = load i32, i32* %arrayidx80, align 4
  %shl81 = shl i32 %39, 13
  %or82 = or i32 %shr76, %shl81
  %xor83 = xor i32 %or71, %or82
  %40 = load i32, i32* %i, align 4
  %sub84 = sub i32 %40, 2
  %and85 = and i32 %sub84, 15
  %idxprom86 = zext i32 %and85 to i64
  %arrayidx87 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom86
  %41 = load i32, i32* %arrayidx87, align 4
  %shr88 = lshr i32 %41, 10
  %xor89 = xor i32 %xor83, %shr88
  %42 = load i32, i32* %i, align 4
  %sub90 = sub i32 %42, 7
  %and91 = and i32 %sub90, 15
  %idxprom92 = zext i32 %and91 to i64
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom92
  %43 = load i32, i32* %arrayidx93, align 4
  %add94 = add i32 %xor89, %43
  %44 = load i32, i32* %i, align 4
  %sub95 = sub i32 %44, 15
  %and96 = and i32 %sub95, 15
  %idxprom97 = zext i32 %and96 to i64
  %arrayidx98 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom97
  %45 = load i32, i32* %arrayidx98, align 4
  %shr99 = lshr i32 %45, 7
  %46 = load i32, i32* %i, align 4
  %sub100 = sub i32 %46, 15
  %and101 = and i32 %sub100, 15
  %idxprom102 = zext i32 %and101 to i64
  %arrayidx103 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom102
  %47 = load i32, i32* %arrayidx103, align 4
  %shl104 = shl i32 %47, 25
  %or105 = or i32 %shr99, %shl104
  %48 = load i32, i32* %i, align 4
  %sub106 = sub i32 %48, 15
  %and107 = and i32 %sub106, 15
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom108
  %49 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %49, 18
  %50 = load i32, i32* %i, align 4
  %sub111 = sub i32 %50, 15
  %and112 = and i32 %sub111, 15
  %idxprom113 = zext i32 %and112 to i64
  %arrayidx114 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom113
  %51 = load i32, i32* %arrayidx114, align 4
  %shl115 = shl i32 %51, 14
  %or116 = or i32 %shr110, %shl115
  %xor117 = xor i32 %or105, %or116
  %52 = load i32, i32* %i, align 4
  %sub118 = sub i32 %52, 15
  %and119 = and i32 %sub118, 15
  %idxprom120 = zext i32 %and119 to i64
  %arrayidx121 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom120
  %53 = load i32, i32* %arrayidx121, align 4
  %shr122 = lshr i32 %53, 3
  %xor123 = xor i32 %xor117, %shr122
  %add124 = add i32 %add94, %xor123
  %54 = load i32, i32* %i, align 4
  %and125 = and i32 %54, 15
  %idxprom126 = zext i32 %and125 to i64
  %arrayidx127 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom126
  %55 = load i32, i32* %arrayidx127, align 4
  %add128 = add i32 %55, %add124
  store i32 %add128, i32* %arrayidx127, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %56 = load i32, i32* %i, align 4
  %idxprom129 = zext i32 %56 to i64
  %57 = load i32*, i32** %data.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %57, i64 %idxprom129
  %58 = load i32, i32* %arrayidx130, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom131 = zext i32 %59 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i32 0, i64 %idxprom131
  store i32 %58, i32* %arrayidx132, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add128, %cond.true ], [ %58, %cond.false ]
  %add133 = add i32 %add60, %cond
  %60 = load i32, i32* %i, align 4
  %sub134 = sub i32 7, %60
  %and135 = and i32 %sub134, 7
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom136
  %61 = load i32, i32* %arrayidx137, align 4
  %add138 = add i32 %61, %add133
  store i32 %add138, i32* %arrayidx137, align 4
  %62 = load i32, i32* %i, align 4
  %sub139 = sub i32 7, %62
  %and140 = and i32 %sub139, 7
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom141
  %63 = load i32, i32* %arrayidx142, align 4
  %64 = load i32, i32* %i, align 4
  %sub143 = sub i32 3, %64
  %and144 = and i32 %sub143, 7
  %idxprom145 = zext i32 %and144 to i64
  %arrayidx146 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom145
  %65 = load i32, i32* %arrayidx146, align 4
  %add147 = add i32 %65, %63
  store i32 %add147, i32* %arrayidx146, align 4
  %66 = load i32, i32* %i, align 4
  %sub148 = sub i32 0, %66
  %and149 = and i32 %sub148, 7
  %idxprom150 = zext i32 %and149 to i64
  %arrayidx151 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom150
  %67 = load i32, i32* %arrayidx151, align 4
  %shr152 = lshr i32 %67, 2
  %68 = load i32, i32* %i, align 4
  %sub153 = sub i32 0, %68
  %and154 = and i32 %sub153, 7
  %idxprom155 = zext i32 %and154 to i64
  %arrayidx156 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom155
  %69 = load i32, i32* %arrayidx156, align 4
  %shl157 = shl i32 %69, 30
  %or158 = or i32 %shr152, %shl157
  %70 = load i32, i32* %i, align 4
  %sub159 = sub i32 0, %70
  %and160 = and i32 %sub159, 7
  %idxprom161 = zext i32 %and160 to i64
  %arrayidx162 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom161
  %71 = load i32, i32* %arrayidx162, align 4
  %shr163 = lshr i32 %71, 13
  %72 = load i32, i32* %i, align 4
  %sub164 = sub i32 0, %72
  %and165 = and i32 %sub164, 7
  %idxprom166 = zext i32 %and165 to i64
  %arrayidx167 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom166
  %73 = load i32, i32* %arrayidx167, align 4
  %shl168 = shl i32 %73, 19
  %or169 = or i32 %shr163, %shl168
  %xor170 = xor i32 %or158, %or169
  %74 = load i32, i32* %i, align 4
  %sub171 = sub i32 0, %74
  %and172 = and i32 %sub171, 7
  %idxprom173 = zext i32 %and172 to i64
  %arrayidx174 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom173
  %75 = load i32, i32* %arrayidx174, align 4
  %shr175 = lshr i32 %75, 22
  %76 = load i32, i32* %i, align 4
  %sub176 = sub i32 0, %76
  %and177 = and i32 %sub176, 7
  %idxprom178 = zext i32 %and177 to i64
  %arrayidx179 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom178
  %77 = load i32, i32* %arrayidx179, align 4
  %shl180 = shl i32 %77, 10
  %or181 = or i32 %shr175, %shl180
  %xor182 = xor i32 %xor170, %or181
  %78 = load i32, i32* %i, align 4
  %sub183 = sub i32 0, %78
  %and184 = and i32 %sub183, 7
  %idxprom185 = zext i32 %and184 to i64
  %arrayidx186 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom185
  %79 = load i32, i32* %arrayidx186, align 4
  %80 = load i32, i32* %i, align 4
  %sub187 = sub i32 1, %80
  %and188 = and i32 %sub187, 7
  %idxprom189 = zext i32 %and188 to i64
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom189
  %81 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %79, %81
  %82 = load i32, i32* %i, align 4
  %sub192 = sub i32 2, %82
  %and193 = and i32 %sub192, 7
  %idxprom194 = zext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom194
  %83 = load i32, i32* %arrayidx195, align 4
  %84 = load i32, i32* %i, align 4
  %sub196 = sub i32 0, %84
  %and197 = and i32 %sub196, 7
  %idxprom198 = zext i32 %and197 to i64
  %arrayidx199 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom198
  %85 = load i32, i32* %arrayidx199, align 4
  %86 = load i32, i32* %i, align 4
  %sub200 = sub i32 1, %86
  %and201 = and i32 %sub200, 7
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom202
  %87 = load i32, i32* %arrayidx203, align 4
  %or204 = or i32 %85, %87
  %and205 = and i32 %83, %or204
  %or206 = or i32 %and191, %and205
  %add207 = add i32 %xor182, %or206
  %88 = load i32, i32* %i, align 4
  %sub208 = sub i32 7, %88
  %and209 = and i32 %sub208, 7
  %idxprom210 = zext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom210
  %89 = load i32, i32* %arrayidx211, align 4
  %add212 = add i32 %89, %add207
  store i32 %add212, i32* %arrayidx211, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %cond.end
  %90 = load i32, i32* %i, align 4
  %inc214 = add i32 %90, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.6

for.end.215:                                      ; preds = %for.cond.6
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %91 = load i32, i32* %j, align 4
  %add217 = add i32 %91, 16
  store i32 %add217, i32* %j, align 4
  br label %for.cond.3

for.end.218:                                      ; preds = %for.cond.3
  store i32 0, i32* %j, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.227, %for.end.218
  %92 = load i32, i32* %j, align 4
  %cmp220 = icmp ult i32 %92, 8
  br i1 %cmp220, label %for.body.221, label %for.end.229

for.body.221:                                     ; preds = %for.cond.219
  %93 = load i32, i32* %j, align 4
  %idxprom222 = zext i32 %93 to i64
  %arrayidx223 = getelementptr inbounds [8 x i32], [8 x i32]* %T, i32 0, i64 %idxprom222
  %94 = load i32, i32* %arrayidx223, align 4
  %95 = load i32, i32* %j, align 4
  %idxprom224 = zext i32 %95 to i64
  %96 = load i32*, i32** %state.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %96, i64 %idxprom224
  %97 = load i32, i32* %arrayidx225, align 4
  %add226 = add i32 %97, %94
  store i32 %add226, i32* %arrayidx225, align 4
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.221
  %98 = load i32, i32* %j, align 4
  %inc228 = add i32 %98, 1
  store i32 %inc228, i32* %j, align 4
  br label %for.cond.219

for.end.229:                                      ; preds = %for.cond.219
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
