; ModuleID = './MultiSource.Applications.ClamAV/78.shared_sha256.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { [8 x i32], i32, i32, [64 x i8], i32 }

@sha256_init.H0 = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nounwind uwtable
define void @sha256_init(%struct.sha256_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 0
  %1 = bitcast [8 x i32]* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([8 x i32]* @sha256_init.H0 to i8*), i64 32, i32 4, i1 false)
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_high = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 2
  store i32 0, i32* %count_high, align 4
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_low = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 1
  store i32 0, i32* %count_low, align 4
  %4 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i32 0, i32 4
  store i32 0, i32* %index, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @sha256_update(%struct.sha256_ctx* %ctx, i8* %buffer, i32 %length) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %left = alloca i32, align 4
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 4
  %1 = load i32, i32* %index, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index1 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 4
  %3 = load i32, i32* %index1, align 4
  %sub = sub i32 64, %3
  store i32 %sub, i32* %left, align 4
  %4 = load i32, i32* %length.addr, align 4
  %5 = load i32, i32* %left, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %block, i32 0, i32 0
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 4
  %8 = load i32, i32* %index3, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i32, i32* %length.addr, align 4
  %conv = zext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %9, i64 %conv, i32 1, i1 false)
  %11 = load i32, i32* %length.addr, align 4
  %12 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index4 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %12, i32 0, i32 4
  %13 = load i32, i32* %index4, align 4
  %add = add i32 %13, %11
  store i32 %add, i32* %index4, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %block5, i32 0, i32 0
  %15 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %15, i32 0, i32 4
  %16 = load i32, i32* %index7, align 4
  %idx.ext8 = zext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %arraydecay6, i64 %idx.ext8
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load i32, i32* %left, align 4
  %conv10 = zext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr9, i8* %17, i64 %conv10, i32 1, i1 false)
  %19 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %20 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %20, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %block11, i32 0, i32 0
  call void @sha256_block(%struct.sha256_ctx* %19, i8* %arraydecay12)
  %21 = load i32, i32* %left, align 4
  %22 = load i8*, i8** %buffer.addr, align 8
  %idx.ext13 = zext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 %idx.ext13
  store i8* %add.ptr14, i8** %buffer.addr, align 8
  %23 = load i32, i32* %left, align 4
  %24 = load i32, i32* %length.addr, align 4
  %sub15 = sub i32 %24, %23
  store i32 %sub15, i32* %length.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %25 = load i32, i32* %length.addr, align 4
  %cmp17 = icmp uge i32 %25, 64
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %27 = load i8*, i8** %buffer.addr, align 8
  call void @sha256_block(%struct.sha256_ctx* %26, i8* %27)
  %28 = load i8*, i8** %buffer.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %28, i64 64
  store i8* %add.ptr19, i8** %buffer.addr, align 8
  %29 = load i32, i32* %length.addr, align 4
  %sub20 = sub i32 %29, 64
  store i32 %sub20, i32* %length.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block21 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %30, i32 0, i32 3
  %31 = bitcast [64 x i8]* %block21 to i8*
  %32 = load i8*, i8** %buffer.addr, align 8
  %33 = load i32, i32* %length.addr, align 4
  %conv22 = zext i32 %33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %conv22, i32 1, i1 false)
  %34 = load i32, i32* %length.addr, align 4
  %35 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %35, i32 0, i32 4
  store i32 %34, i32* %index23, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha256_block(%struct.sha256_ctx* %ctx, i8* %block) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %block.addr = alloca i8*, align 8
  %data = alloca [16 x i32], align 16
  %i = alloca i16, align 2
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_low = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 1
  %1 = load i32, i32* %count_low, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %count_low, align 4
  %tobool = icmp ne i32 %inc, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_high = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 2
  %3 = load i32, i32* %count_high, align 4
  %inc1 = add i32 %3, 1
  store i32 %inc1, i32* %count_high, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i16, i16* %i, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %block.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  %shl = shl i32 %conv3, 8
  %7 = load i8*, i8** %block.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %add.ptr, align 1
  %conv4 = zext i8 %8 to i32
  %or = or i32 %shl, %conv4
  %shl5 = shl i32 %or, 8
  %9 = load i8*, i8** %block.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %add.ptr6, align 1
  %conv7 = zext i8 %10 to i32
  %or8 = or i32 %shl5, %conv7
  %shl9 = shl i32 %or8, 8
  %11 = load i8*, i8** %block.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %add.ptr10, align 1
  %conv11 = zext i8 %12 to i32
  %or12 = or i32 %shl9, %conv11
  %13 = load i16, i16* %i, align 2
  %idxprom = zext i16 %13 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom
  store i32 %or12, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i16, i16* %i, align 2
  %inc13 = add i16 %14, 1
  store i16 %inc13, i16* %i, align 2
  %15 = load i8*, i8** %block.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr14, i8** %block.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i32 0
  call void @sha256_transform(i32* %arraydecay, i32* %arraydecay15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha256_final(%struct.sha256_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %data = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %words = alloca i32, align 4
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 4
  %1 = load i32, i32* %index, align 4
  store i32 %1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %block, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %and = and i32 %4, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block2 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %6, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* %block2, i32 0, i64 %idxprom1
  store i8 0, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %shr = lshr i32 %8, 2
  store i32 %shr, i32* %words, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.35, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %words, align 4
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %for.body.6, label %for.end.37

for.body.6:                                       ; preds = %for.cond.5
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %block7, i32 0, i32 0
  %12 = load i32, i32* %i, align 4
  %mul = mul i32 4, %12
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %13 = load i8, i8* %add.ptr, align 1
  %conv = zext i8 %13 to i32
  %shl = shl i32 %conv, 8
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 3
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %block8, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %mul10 = mul i32 4, %15
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay9, i64 %idx.ext11
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %16 = load i8, i8* %add.ptr13, align 1
  %conv14 = zext i8 %16 to i32
  %or = or i32 %shl, %conv14
  %shl15 = shl i32 %or, 8
  %17 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %17, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %block16, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %mul18 = mul i32 4, %18
  %idx.ext19 = zext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %arraydecay17, i64 %idx.ext19
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 2
  %19 = load i8, i8* %add.ptr21, align 1
  %conv22 = zext i8 %19 to i32
  %or23 = or i32 %shl15, %conv22
  %shl24 = shl i32 %or23, 8
  %20 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %block25 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %20, i32 0, i32 3
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %block25, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %mul27 = mul i32 4, %21
  %idx.ext28 = zext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %arraydecay26, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr29, i64 3
  %22 = load i8, i8* %add.ptr30, align 1
  %conv31 = zext i8 %22 to i32
  %or32 = or i32 %shl24, %conv31
  %23 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom33
  store i32 %or32, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.6
  %24 = load i32, i32* %i, align 4
  %inc36 = add i32 %24, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.5

for.end.37:                                       ; preds = %for.cond.5
  %25 = load i32, i32* %words, align 4
  %cmp38 = icmp ugt i32 %25, 14
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.37
  %26 = load i32, i32* %words, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.46, %if.then
  %27 = load i32, i32* %i, align 4
  %cmp41 = icmp ult i32 %27, 16
  br i1 %cmp41, label %for.body.43, label %for.end.48

for.body.43:                                      ; preds = %for.cond.40
  %28 = load i32, i32* %i, align 4
  %idxprom44 = zext i32 %28 to i64
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom44
  store i32 0, i32* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.43
  %29 = load i32, i32* %i, align 4
  %inc47 = add i32 %29, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.40

for.end.48:                                       ; preds = %for.cond.40
  %30 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %30, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i32 0
  call void @sha256_transform(i32* %arraydecay49, i32* %arraydecay50)
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.57, %for.end.48
  %31 = load i32, i32* %i, align 4
  %cmp52 = icmp ult i32 %31, 14
  br i1 %cmp52, label %for.body.54, label %for.end.59

for.body.54:                                      ; preds = %for.cond.51
  %32 = load i32, i32* %i, align 4
  %idxprom55 = zext i32 %32 to i64
  %arrayidx56 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom55
  store i32 0, i32* %arrayidx56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.54
  %33 = load i32, i32* %i, align 4
  %inc58 = add i32 %33, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.51

for.end.59:                                       ; preds = %for.cond.51
  br label %if.end

if.else:                                          ; preds = %for.end.37
  %34 = load i32, i32* %words, align 4
  store i32 %34, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.66, %if.else
  %35 = load i32, i32* %i, align 4
  %cmp61 = icmp ult i32 %35, 14
  br i1 %cmp61, label %for.body.63, label %for.end.68

for.body.63:                                      ; preds = %for.cond.60
  %36 = load i32, i32* %i, align 4
  %idxprom64 = zext i32 %36 to i64
  %arrayidx65 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom64
  store i32 0, i32* %arrayidx65, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.63
  %37 = load i32, i32* %i, align 4
  %inc67 = add i32 %37, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.60

for.end.68:                                       ; preds = %for.cond.60
  br label %if.end

if.end:                                           ; preds = %for.end.68, %for.end.59
  %38 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_high = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %38, i32 0, i32 2
  %39 = load i32, i32* %count_high, align 4
  %shl69 = shl i32 %39, 9
  %40 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_low = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %40, i32 0, i32 1
  %41 = load i32, i32* %count_low, align 4
  %shr70 = lshr i32 %41, 23
  %or71 = or i32 %shl69, %shr70
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 14
  store i32 %or71, i32* %arrayidx72, align 4
  %42 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %count_low73 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %42, i32 0, i32 1
  %43 = load i32, i32* %count_low73, align 4
  %shl74 = shl i32 %43, 9
  %44 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %index75 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %44, i32 0, i32 4
  %45 = load i32, i32* %index75, align 4
  %shl76 = shl i32 %45, 3
  %or77 = or i32 %shl74, %shl76
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 15
  store i32 %or77, i32* %arrayidx78, align 4
  %46 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state79 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %46, i32 0, i32 0
  %arraydecay80 = getelementptr inbounds [8 x i32], [8 x i32]* %state79, i32 0, i32 0
  %arraydecay81 = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i32 0
  call void @sha256_transform(i32* %arraydecay80, i32* %arraydecay81)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha256_transform(i32* %state, i32* %data) #0 {
entry:
  %state.addr = alloca i32*, align 8
  %data.addr = alloca i32*, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %E = alloca i32, align 4
  %F = alloca i32, align 4
  %G = alloca i32, align 4
  %H = alloca i32, align 4
  %i = alloca i8, align 1
  %k = alloca i32*, align 8
  %d = alloca i32*, align 8
  %T1 = alloca i32, align 4
  %T2 = alloca i32, align 4
  %T142 = alloca i32, align 4
  %T263 = alloca i32, align 4
  %T184 = alloca i32, align 4
  %T2105 = alloca i32, align 4
  %T1126 = alloca i32, align 4
  %T2147 = alloca i32, align 4
  %T1168 = alloca i32, align 4
  %T2189 = alloca i32, align 4
  %T1210 = alloca i32, align 4
  %T2231 = alloca i32, align 4
  %T1252 = alloca i32, align 4
  %T2273 = alloca i32, align 4
  %T1294 = alloca i32, align 4
  %T2315 = alloca i32, align 4
  %T1345 = alloca i32, align 4
  %T2398 = alloca i32, align 4
  %T1419 = alloca i32, align 4
  %T2472 = alloca i32, align 4
  %T1493 = alloca i32, align 4
  %T2546 = alloca i32, align 4
  %T1567 = alloca i32, align 4
  %T2620 = alloca i32, align 4
  %T1641 = alloca i32, align 4
  %T2694 = alloca i32, align 4
  %T1715 = alloca i32, align 4
  %T2768 = alloca i32, align 4
  %T1789 = alloca i32, align 4
  %T2842 = alloca i32, align 4
  %T1863 = alloca i32, align 4
  %T2916 = alloca i32, align 4
  %T1937 = alloca i32, align 4
  %T2990 = alloca i32, align 4
  %T11011 = alloca i32, align 4
  %T21064 = alloca i32, align 4
  %T11085 = alloca i32, align 4
  %T21138 = alloca i32, align 4
  %T11159 = alloca i32, align 4
  %T21212 = alloca i32, align 4
  %T11233 = alloca i32, align 4
  %T21286 = alloca i32, align 4
  %T11307 = alloca i32, align 4
  %T21360 = alloca i32, align 4
  %T11381 = alloca i32, align 4
  %T21434 = alloca i32, align 4
  %T11455 = alloca i32, align 4
  %T21508 = alloca i32, align 4
  store i32* %state, i32** %state.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  %0 = load i32*, i32** %state.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %A, align 4
  %2 = load i32*, i32** %state.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  store i32 %3, i32* %B, align 4
  %4 = load i32*, i32** %state.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 2
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %C, align 4
  %6 = load i32*, i32** %state.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 3
  %7 = load i32, i32* %arrayidx3, align 4
  store i32 %7, i32* %D, align 4
  %8 = load i32*, i32** %state.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 4
  %9 = load i32, i32* %arrayidx4, align 4
  store i32 %9, i32* %E, align 4
  %10 = load i32*, i32** %state.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 5
  %11 = load i32, i32* %arrayidx5, align 4
  store i32 %11, i32* %F, align 4
  %12 = load i32*, i32** %state.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 6
  %13 = load i32, i32* %arrayidx6, align 4
  store i32 %13, i32* %G, align 4
  %14 = load i32*, i32** %state.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 7
  %15 = load i32, i32* %arrayidx7, align 4
  store i32 %15, i32* %H, align 4
  store i8 0, i8* %i, align 1
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @K, i32 0, i32 0), i32** %k, align 8
  %16 = load i32*, i32** %data.addr, align 8
  store i32* %16, i32** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i8, i8* %i, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %18 = load i32, i32* %H, align 4
  %19 = load i32, i32* %E, align 4
  %shr = lshr i32 %19, 6
  %20 = load i32, i32* %E, align 4
  %shl = shl i32 %20, 26
  %or = or i32 %shr, %shl
  %21 = load i32, i32* %E, align 4
  %shr9 = lshr i32 %21, 11
  %22 = load i32, i32* %E, align 4
  %shl10 = shl i32 %22, 21
  %or11 = or i32 %shr9, %shl10
  %xor = xor i32 %or, %or11
  %23 = load i32, i32* %E, align 4
  %shr12 = lshr i32 %23, 25
  %24 = load i32, i32* %E, align 4
  %shl13 = shl i32 %24, 7
  %or14 = or i32 %shr12, %shl13
  %xor15 = xor i32 %xor, %or14
  %add = add i32 %18, %xor15
  %25 = load i32, i32* %G, align 4
  %26 = load i32, i32* %E, align 4
  %27 = load i32, i32* %F, align 4
  %28 = load i32, i32* %G, align 4
  %xor16 = xor i32 %27, %28
  %and = and i32 %26, %xor16
  %xor17 = xor i32 %25, %and
  %add18 = add i32 %add, %xor17
  %29 = load i32*, i32** %k, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx19, align 4
  %add20 = add i32 %add18, %30
  %31 = load i32*, i32** %d, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx21, align 4
  %add22 = add i32 %add20, %32
  store i32 %add22, i32* %T1, align 4
  %33 = load i32, i32* %A, align 4
  %shr23 = lshr i32 %33, 2
  %34 = load i32, i32* %A, align 4
  %shl24 = shl i32 %34, 30
  %or25 = or i32 %shr23, %shl24
  %35 = load i32, i32* %A, align 4
  %shr26 = lshr i32 %35, 13
  %36 = load i32, i32* %A, align 4
  %shl27 = shl i32 %36, 19
  %or28 = or i32 %shr26, %shl27
  %xor29 = xor i32 %or25, %or28
  %37 = load i32, i32* %A, align 4
  %shr30 = lshr i32 %37, 22
  %38 = load i32, i32* %A, align 4
  %shl31 = shl i32 %38, 10
  %or32 = or i32 %shr30, %shl31
  %xor33 = xor i32 %xor29, %or32
  %39 = load i32, i32* %A, align 4
  %40 = load i32, i32* %B, align 4
  %and34 = and i32 %39, %40
  %41 = load i32, i32* %C, align 4
  %42 = load i32, i32* %A, align 4
  %43 = load i32, i32* %B, align 4
  %xor35 = xor i32 %42, %43
  %and36 = and i32 %41, %xor35
  %xor37 = xor i32 %and34, %and36
  %add38 = add i32 %xor33, %xor37
  store i32 %add38, i32* %T2, align 4
  %44 = load i32, i32* %T1, align 4
  %45 = load i32, i32* %D, align 4
  %add39 = add i32 %45, %44
  store i32 %add39, i32* %D, align 4
  %46 = load i32, i32* %T1, align 4
  %47 = load i32, i32* %T2, align 4
  %add40 = add i32 %46, %47
  store i32 %add40, i32* %H, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.41

do.body.41:                                       ; preds = %do.end
  %48 = load i32, i32* %G, align 4
  %49 = load i32, i32* %D, align 4
  %shr43 = lshr i32 %49, 6
  %50 = load i32, i32* %D, align 4
  %shl44 = shl i32 %50, 26
  %or45 = or i32 %shr43, %shl44
  %51 = load i32, i32* %D, align 4
  %shr46 = lshr i32 %51, 11
  %52 = load i32, i32* %D, align 4
  %shl47 = shl i32 %52, 21
  %or48 = or i32 %shr46, %shl47
  %xor49 = xor i32 %or45, %or48
  %53 = load i32, i32* %D, align 4
  %shr50 = lshr i32 %53, 25
  %54 = load i32, i32* %D, align 4
  %shl51 = shl i32 %54, 7
  %or52 = or i32 %shr50, %shl51
  %xor53 = xor i32 %xor49, %or52
  %add54 = add i32 %48, %xor53
  %55 = load i32, i32* %F, align 4
  %56 = load i32, i32* %D, align 4
  %57 = load i32, i32* %E, align 4
  %58 = load i32, i32* %F, align 4
  %xor55 = xor i32 %57, %58
  %and56 = and i32 %56, %xor55
  %xor57 = xor i32 %55, %and56
  %add58 = add i32 %add54, %xor57
  %59 = load i32*, i32** %k, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %59, i64 1
  %60 = load i32, i32* %arrayidx59, align 4
  %add60 = add i32 %add58, %60
  %61 = load i32*, i32** %d, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %61, i64 1
  %62 = load i32, i32* %arrayidx61, align 4
  %add62 = add i32 %add60, %62
  store i32 %add62, i32* %T142, align 4
  %63 = load i32, i32* %H, align 4
  %shr64 = lshr i32 %63, 2
  %64 = load i32, i32* %H, align 4
  %shl65 = shl i32 %64, 30
  %or66 = or i32 %shr64, %shl65
  %65 = load i32, i32* %H, align 4
  %shr67 = lshr i32 %65, 13
  %66 = load i32, i32* %H, align 4
  %shl68 = shl i32 %66, 19
  %or69 = or i32 %shr67, %shl68
  %xor70 = xor i32 %or66, %or69
  %67 = load i32, i32* %H, align 4
  %shr71 = lshr i32 %67, 22
  %68 = load i32, i32* %H, align 4
  %shl72 = shl i32 %68, 10
  %or73 = or i32 %shr71, %shl72
  %xor74 = xor i32 %xor70, %or73
  %69 = load i32, i32* %H, align 4
  %70 = load i32, i32* %A, align 4
  %and75 = and i32 %69, %70
  %71 = load i32, i32* %B, align 4
  %72 = load i32, i32* %H, align 4
  %73 = load i32, i32* %A, align 4
  %xor76 = xor i32 %72, %73
  %and77 = and i32 %71, %xor76
  %xor78 = xor i32 %and75, %and77
  %add79 = add i32 %xor74, %xor78
  store i32 %add79, i32* %T263, align 4
  %74 = load i32, i32* %T142, align 4
  %75 = load i32, i32* %C, align 4
  %add80 = add i32 %75, %74
  store i32 %add80, i32* %C, align 4
  %76 = load i32, i32* %T142, align 4
  %77 = load i32, i32* %T263, align 4
  %add81 = add i32 %76, %77
  store i32 %add81, i32* %G, align 4
  br label %do.end.82

do.end.82:                                        ; preds = %do.body.41
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %78 = load i32, i32* %F, align 4
  %79 = load i32, i32* %C, align 4
  %shr85 = lshr i32 %79, 6
  %80 = load i32, i32* %C, align 4
  %shl86 = shl i32 %80, 26
  %or87 = or i32 %shr85, %shl86
  %81 = load i32, i32* %C, align 4
  %shr88 = lshr i32 %81, 11
  %82 = load i32, i32* %C, align 4
  %shl89 = shl i32 %82, 21
  %or90 = or i32 %shr88, %shl89
  %xor91 = xor i32 %or87, %or90
  %83 = load i32, i32* %C, align 4
  %shr92 = lshr i32 %83, 25
  %84 = load i32, i32* %C, align 4
  %shl93 = shl i32 %84, 7
  %or94 = or i32 %shr92, %shl93
  %xor95 = xor i32 %xor91, %or94
  %add96 = add i32 %78, %xor95
  %85 = load i32, i32* %E, align 4
  %86 = load i32, i32* %C, align 4
  %87 = load i32, i32* %D, align 4
  %88 = load i32, i32* %E, align 4
  %xor97 = xor i32 %87, %88
  %and98 = and i32 %86, %xor97
  %xor99 = xor i32 %85, %and98
  %add100 = add i32 %add96, %xor99
  %89 = load i32*, i32** %k, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %89, i64 2
  %90 = load i32, i32* %arrayidx101, align 4
  %add102 = add i32 %add100, %90
  %91 = load i32*, i32** %d, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %91, i64 2
  %92 = load i32, i32* %arrayidx103, align 4
  %add104 = add i32 %add102, %92
  store i32 %add104, i32* %T184, align 4
  %93 = load i32, i32* %G, align 4
  %shr106 = lshr i32 %93, 2
  %94 = load i32, i32* %G, align 4
  %shl107 = shl i32 %94, 30
  %or108 = or i32 %shr106, %shl107
  %95 = load i32, i32* %G, align 4
  %shr109 = lshr i32 %95, 13
  %96 = load i32, i32* %G, align 4
  %shl110 = shl i32 %96, 19
  %or111 = or i32 %shr109, %shl110
  %xor112 = xor i32 %or108, %or111
  %97 = load i32, i32* %G, align 4
  %shr113 = lshr i32 %97, 22
  %98 = load i32, i32* %G, align 4
  %shl114 = shl i32 %98, 10
  %or115 = or i32 %shr113, %shl114
  %xor116 = xor i32 %xor112, %or115
  %99 = load i32, i32* %G, align 4
  %100 = load i32, i32* %H, align 4
  %and117 = and i32 %99, %100
  %101 = load i32, i32* %A, align 4
  %102 = load i32, i32* %G, align 4
  %103 = load i32, i32* %H, align 4
  %xor118 = xor i32 %102, %103
  %and119 = and i32 %101, %xor118
  %xor120 = xor i32 %and117, %and119
  %add121 = add i32 %xor116, %xor120
  store i32 %add121, i32* %T2105, align 4
  %104 = load i32, i32* %T184, align 4
  %105 = load i32, i32* %B, align 4
  %add122 = add i32 %105, %104
  store i32 %add122, i32* %B, align 4
  %106 = load i32, i32* %T184, align 4
  %107 = load i32, i32* %T2105, align 4
  %add123 = add i32 %106, %107
  store i32 %add123, i32* %F, align 4
  br label %do.end.124

do.end.124:                                       ; preds = %do.body.83
  br label %do.body.125

do.body.125:                                      ; preds = %do.end.124
  %108 = load i32, i32* %E, align 4
  %109 = load i32, i32* %B, align 4
  %shr127 = lshr i32 %109, 6
  %110 = load i32, i32* %B, align 4
  %shl128 = shl i32 %110, 26
  %or129 = or i32 %shr127, %shl128
  %111 = load i32, i32* %B, align 4
  %shr130 = lshr i32 %111, 11
  %112 = load i32, i32* %B, align 4
  %shl131 = shl i32 %112, 21
  %or132 = or i32 %shr130, %shl131
  %xor133 = xor i32 %or129, %or132
  %113 = load i32, i32* %B, align 4
  %shr134 = lshr i32 %113, 25
  %114 = load i32, i32* %B, align 4
  %shl135 = shl i32 %114, 7
  %or136 = or i32 %shr134, %shl135
  %xor137 = xor i32 %xor133, %or136
  %add138 = add i32 %108, %xor137
  %115 = load i32, i32* %D, align 4
  %116 = load i32, i32* %B, align 4
  %117 = load i32, i32* %C, align 4
  %118 = load i32, i32* %D, align 4
  %xor139 = xor i32 %117, %118
  %and140 = and i32 %116, %xor139
  %xor141 = xor i32 %115, %and140
  %add142 = add i32 %add138, %xor141
  %119 = load i32*, i32** %k, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %119, i64 3
  %120 = load i32, i32* %arrayidx143, align 4
  %add144 = add i32 %add142, %120
  %121 = load i32*, i32** %d, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %121, i64 3
  %122 = load i32, i32* %arrayidx145, align 4
  %add146 = add i32 %add144, %122
  store i32 %add146, i32* %T1126, align 4
  %123 = load i32, i32* %F, align 4
  %shr148 = lshr i32 %123, 2
  %124 = load i32, i32* %F, align 4
  %shl149 = shl i32 %124, 30
  %or150 = or i32 %shr148, %shl149
  %125 = load i32, i32* %F, align 4
  %shr151 = lshr i32 %125, 13
  %126 = load i32, i32* %F, align 4
  %shl152 = shl i32 %126, 19
  %or153 = or i32 %shr151, %shl152
  %xor154 = xor i32 %or150, %or153
  %127 = load i32, i32* %F, align 4
  %shr155 = lshr i32 %127, 22
  %128 = load i32, i32* %F, align 4
  %shl156 = shl i32 %128, 10
  %or157 = or i32 %shr155, %shl156
  %xor158 = xor i32 %xor154, %or157
  %129 = load i32, i32* %F, align 4
  %130 = load i32, i32* %G, align 4
  %and159 = and i32 %129, %130
  %131 = load i32, i32* %H, align 4
  %132 = load i32, i32* %F, align 4
  %133 = load i32, i32* %G, align 4
  %xor160 = xor i32 %132, %133
  %and161 = and i32 %131, %xor160
  %xor162 = xor i32 %and159, %and161
  %add163 = add i32 %xor158, %xor162
  store i32 %add163, i32* %T2147, align 4
  %134 = load i32, i32* %T1126, align 4
  %135 = load i32, i32* %A, align 4
  %add164 = add i32 %135, %134
  store i32 %add164, i32* %A, align 4
  %136 = load i32, i32* %T1126, align 4
  %137 = load i32, i32* %T2147, align 4
  %add165 = add i32 %136, %137
  store i32 %add165, i32* %E, align 4
  br label %do.end.166

do.end.166:                                       ; preds = %do.body.125
  br label %do.body.167

do.body.167:                                      ; preds = %do.end.166
  %138 = load i32, i32* %D, align 4
  %139 = load i32, i32* %A, align 4
  %shr169 = lshr i32 %139, 6
  %140 = load i32, i32* %A, align 4
  %shl170 = shl i32 %140, 26
  %or171 = or i32 %shr169, %shl170
  %141 = load i32, i32* %A, align 4
  %shr172 = lshr i32 %141, 11
  %142 = load i32, i32* %A, align 4
  %shl173 = shl i32 %142, 21
  %or174 = or i32 %shr172, %shl173
  %xor175 = xor i32 %or171, %or174
  %143 = load i32, i32* %A, align 4
  %shr176 = lshr i32 %143, 25
  %144 = load i32, i32* %A, align 4
  %shl177 = shl i32 %144, 7
  %or178 = or i32 %shr176, %shl177
  %xor179 = xor i32 %xor175, %or178
  %add180 = add i32 %138, %xor179
  %145 = load i32, i32* %C, align 4
  %146 = load i32, i32* %A, align 4
  %147 = load i32, i32* %B, align 4
  %148 = load i32, i32* %C, align 4
  %xor181 = xor i32 %147, %148
  %and182 = and i32 %146, %xor181
  %xor183 = xor i32 %145, %and182
  %add184 = add i32 %add180, %xor183
  %149 = load i32*, i32** %k, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %149, i64 4
  %150 = load i32, i32* %arrayidx185, align 4
  %add186 = add i32 %add184, %150
  %151 = load i32*, i32** %d, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %151, i64 4
  %152 = load i32, i32* %arrayidx187, align 4
  %add188 = add i32 %add186, %152
  store i32 %add188, i32* %T1168, align 4
  %153 = load i32, i32* %E, align 4
  %shr190 = lshr i32 %153, 2
  %154 = load i32, i32* %E, align 4
  %shl191 = shl i32 %154, 30
  %or192 = or i32 %shr190, %shl191
  %155 = load i32, i32* %E, align 4
  %shr193 = lshr i32 %155, 13
  %156 = load i32, i32* %E, align 4
  %shl194 = shl i32 %156, 19
  %or195 = or i32 %shr193, %shl194
  %xor196 = xor i32 %or192, %or195
  %157 = load i32, i32* %E, align 4
  %shr197 = lshr i32 %157, 22
  %158 = load i32, i32* %E, align 4
  %shl198 = shl i32 %158, 10
  %or199 = or i32 %shr197, %shl198
  %xor200 = xor i32 %xor196, %or199
  %159 = load i32, i32* %E, align 4
  %160 = load i32, i32* %F, align 4
  %and201 = and i32 %159, %160
  %161 = load i32, i32* %G, align 4
  %162 = load i32, i32* %E, align 4
  %163 = load i32, i32* %F, align 4
  %xor202 = xor i32 %162, %163
  %and203 = and i32 %161, %xor202
  %xor204 = xor i32 %and201, %and203
  %add205 = add i32 %xor200, %xor204
  store i32 %add205, i32* %T2189, align 4
  %164 = load i32, i32* %T1168, align 4
  %165 = load i32, i32* %H, align 4
  %add206 = add i32 %165, %164
  store i32 %add206, i32* %H, align 4
  %166 = load i32, i32* %T1168, align 4
  %167 = load i32, i32* %T2189, align 4
  %add207 = add i32 %166, %167
  store i32 %add207, i32* %D, align 4
  br label %do.end.208

do.end.208:                                       ; preds = %do.body.167
  br label %do.body.209

do.body.209:                                      ; preds = %do.end.208
  %168 = load i32, i32* %C, align 4
  %169 = load i32, i32* %H, align 4
  %shr211 = lshr i32 %169, 6
  %170 = load i32, i32* %H, align 4
  %shl212 = shl i32 %170, 26
  %or213 = or i32 %shr211, %shl212
  %171 = load i32, i32* %H, align 4
  %shr214 = lshr i32 %171, 11
  %172 = load i32, i32* %H, align 4
  %shl215 = shl i32 %172, 21
  %or216 = or i32 %shr214, %shl215
  %xor217 = xor i32 %or213, %or216
  %173 = load i32, i32* %H, align 4
  %shr218 = lshr i32 %173, 25
  %174 = load i32, i32* %H, align 4
  %shl219 = shl i32 %174, 7
  %or220 = or i32 %shr218, %shl219
  %xor221 = xor i32 %xor217, %or220
  %add222 = add i32 %168, %xor221
  %175 = load i32, i32* %B, align 4
  %176 = load i32, i32* %H, align 4
  %177 = load i32, i32* %A, align 4
  %178 = load i32, i32* %B, align 4
  %xor223 = xor i32 %177, %178
  %and224 = and i32 %176, %xor223
  %xor225 = xor i32 %175, %and224
  %add226 = add i32 %add222, %xor225
  %179 = load i32*, i32** %k, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %179, i64 5
  %180 = load i32, i32* %arrayidx227, align 4
  %add228 = add i32 %add226, %180
  %181 = load i32*, i32** %d, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %181, i64 5
  %182 = load i32, i32* %arrayidx229, align 4
  %add230 = add i32 %add228, %182
  store i32 %add230, i32* %T1210, align 4
  %183 = load i32, i32* %D, align 4
  %shr232 = lshr i32 %183, 2
  %184 = load i32, i32* %D, align 4
  %shl233 = shl i32 %184, 30
  %or234 = or i32 %shr232, %shl233
  %185 = load i32, i32* %D, align 4
  %shr235 = lshr i32 %185, 13
  %186 = load i32, i32* %D, align 4
  %shl236 = shl i32 %186, 19
  %or237 = or i32 %shr235, %shl236
  %xor238 = xor i32 %or234, %or237
  %187 = load i32, i32* %D, align 4
  %shr239 = lshr i32 %187, 22
  %188 = load i32, i32* %D, align 4
  %shl240 = shl i32 %188, 10
  %or241 = or i32 %shr239, %shl240
  %xor242 = xor i32 %xor238, %or241
  %189 = load i32, i32* %D, align 4
  %190 = load i32, i32* %E, align 4
  %and243 = and i32 %189, %190
  %191 = load i32, i32* %F, align 4
  %192 = load i32, i32* %D, align 4
  %193 = load i32, i32* %E, align 4
  %xor244 = xor i32 %192, %193
  %and245 = and i32 %191, %xor244
  %xor246 = xor i32 %and243, %and245
  %add247 = add i32 %xor242, %xor246
  store i32 %add247, i32* %T2231, align 4
  %194 = load i32, i32* %T1210, align 4
  %195 = load i32, i32* %G, align 4
  %add248 = add i32 %195, %194
  store i32 %add248, i32* %G, align 4
  %196 = load i32, i32* %T1210, align 4
  %197 = load i32, i32* %T2231, align 4
  %add249 = add i32 %196, %197
  store i32 %add249, i32* %C, align 4
  br label %do.end.250

do.end.250:                                       ; preds = %do.body.209
  br label %do.body.251

do.body.251:                                      ; preds = %do.end.250
  %198 = load i32, i32* %B, align 4
  %199 = load i32, i32* %G, align 4
  %shr253 = lshr i32 %199, 6
  %200 = load i32, i32* %G, align 4
  %shl254 = shl i32 %200, 26
  %or255 = or i32 %shr253, %shl254
  %201 = load i32, i32* %G, align 4
  %shr256 = lshr i32 %201, 11
  %202 = load i32, i32* %G, align 4
  %shl257 = shl i32 %202, 21
  %or258 = or i32 %shr256, %shl257
  %xor259 = xor i32 %or255, %or258
  %203 = load i32, i32* %G, align 4
  %shr260 = lshr i32 %203, 25
  %204 = load i32, i32* %G, align 4
  %shl261 = shl i32 %204, 7
  %or262 = or i32 %shr260, %shl261
  %xor263 = xor i32 %xor259, %or262
  %add264 = add i32 %198, %xor263
  %205 = load i32, i32* %A, align 4
  %206 = load i32, i32* %G, align 4
  %207 = load i32, i32* %H, align 4
  %208 = load i32, i32* %A, align 4
  %xor265 = xor i32 %207, %208
  %and266 = and i32 %206, %xor265
  %xor267 = xor i32 %205, %and266
  %add268 = add i32 %add264, %xor267
  %209 = load i32*, i32** %k, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %209, i64 6
  %210 = load i32, i32* %arrayidx269, align 4
  %add270 = add i32 %add268, %210
  %211 = load i32*, i32** %d, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %211, i64 6
  %212 = load i32, i32* %arrayidx271, align 4
  %add272 = add i32 %add270, %212
  store i32 %add272, i32* %T1252, align 4
  %213 = load i32, i32* %C, align 4
  %shr274 = lshr i32 %213, 2
  %214 = load i32, i32* %C, align 4
  %shl275 = shl i32 %214, 30
  %or276 = or i32 %shr274, %shl275
  %215 = load i32, i32* %C, align 4
  %shr277 = lshr i32 %215, 13
  %216 = load i32, i32* %C, align 4
  %shl278 = shl i32 %216, 19
  %or279 = or i32 %shr277, %shl278
  %xor280 = xor i32 %or276, %or279
  %217 = load i32, i32* %C, align 4
  %shr281 = lshr i32 %217, 22
  %218 = load i32, i32* %C, align 4
  %shl282 = shl i32 %218, 10
  %or283 = or i32 %shr281, %shl282
  %xor284 = xor i32 %xor280, %or283
  %219 = load i32, i32* %C, align 4
  %220 = load i32, i32* %D, align 4
  %and285 = and i32 %219, %220
  %221 = load i32, i32* %E, align 4
  %222 = load i32, i32* %C, align 4
  %223 = load i32, i32* %D, align 4
  %xor286 = xor i32 %222, %223
  %and287 = and i32 %221, %xor286
  %xor288 = xor i32 %and285, %and287
  %add289 = add i32 %xor284, %xor288
  store i32 %add289, i32* %T2273, align 4
  %224 = load i32, i32* %T1252, align 4
  %225 = load i32, i32* %F, align 4
  %add290 = add i32 %225, %224
  store i32 %add290, i32* %F, align 4
  %226 = load i32, i32* %T1252, align 4
  %227 = load i32, i32* %T2273, align 4
  %add291 = add i32 %226, %227
  store i32 %add291, i32* %B, align 4
  br label %do.end.292

do.end.292:                                       ; preds = %do.body.251
  br label %do.body.293

do.body.293:                                      ; preds = %do.end.292
  %228 = load i32, i32* %A, align 4
  %229 = load i32, i32* %F, align 4
  %shr295 = lshr i32 %229, 6
  %230 = load i32, i32* %F, align 4
  %shl296 = shl i32 %230, 26
  %or297 = or i32 %shr295, %shl296
  %231 = load i32, i32* %F, align 4
  %shr298 = lshr i32 %231, 11
  %232 = load i32, i32* %F, align 4
  %shl299 = shl i32 %232, 21
  %or300 = or i32 %shr298, %shl299
  %xor301 = xor i32 %or297, %or300
  %233 = load i32, i32* %F, align 4
  %shr302 = lshr i32 %233, 25
  %234 = load i32, i32* %F, align 4
  %shl303 = shl i32 %234, 7
  %or304 = or i32 %shr302, %shl303
  %xor305 = xor i32 %xor301, %or304
  %add306 = add i32 %228, %xor305
  %235 = load i32, i32* %H, align 4
  %236 = load i32, i32* %F, align 4
  %237 = load i32, i32* %G, align 4
  %238 = load i32, i32* %H, align 4
  %xor307 = xor i32 %237, %238
  %and308 = and i32 %236, %xor307
  %xor309 = xor i32 %235, %and308
  %add310 = add i32 %add306, %xor309
  %239 = load i32*, i32** %k, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %239, i64 7
  %240 = load i32, i32* %arrayidx311, align 4
  %add312 = add i32 %add310, %240
  %241 = load i32*, i32** %d, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %241, i64 7
  %242 = load i32, i32* %arrayidx313, align 4
  %add314 = add i32 %add312, %242
  store i32 %add314, i32* %T1294, align 4
  %243 = load i32, i32* %B, align 4
  %shr316 = lshr i32 %243, 2
  %244 = load i32, i32* %B, align 4
  %shl317 = shl i32 %244, 30
  %or318 = or i32 %shr316, %shl317
  %245 = load i32, i32* %B, align 4
  %shr319 = lshr i32 %245, 13
  %246 = load i32, i32* %B, align 4
  %shl320 = shl i32 %246, 19
  %or321 = or i32 %shr319, %shl320
  %xor322 = xor i32 %or318, %or321
  %247 = load i32, i32* %B, align 4
  %shr323 = lshr i32 %247, 22
  %248 = load i32, i32* %B, align 4
  %shl324 = shl i32 %248, 10
  %or325 = or i32 %shr323, %shl324
  %xor326 = xor i32 %xor322, %or325
  %249 = load i32, i32* %B, align 4
  %250 = load i32, i32* %C, align 4
  %and327 = and i32 %249, %250
  %251 = load i32, i32* %D, align 4
  %252 = load i32, i32* %B, align 4
  %253 = load i32, i32* %C, align 4
  %xor328 = xor i32 %252, %253
  %and329 = and i32 %251, %xor328
  %xor330 = xor i32 %and327, %and329
  %add331 = add i32 %xor326, %xor330
  store i32 %add331, i32* %T2315, align 4
  %254 = load i32, i32* %T1294, align 4
  %255 = load i32, i32* %E, align 4
  %add332 = add i32 %255, %254
  store i32 %add332, i32* %E, align 4
  %256 = load i32, i32* %T1294, align 4
  %257 = load i32, i32* %T2315, align 4
  %add333 = add i32 %256, %257
  store i32 %add333, i32* %A, align 4
  br label %do.end.334

do.end.334:                                       ; preds = %do.body.293
  br label %for.inc

for.inc:                                          ; preds = %do.end.334
  %258 = load i8, i8* %i, align 1
  %conv335 = zext i8 %258 to i32
  %add336 = add nsw i32 %conv335, 8
  %conv337 = trunc i32 %add336 to i8
  store i8 %conv337, i8* %i, align 1
  %259 = load i32*, i32** %k, align 8
  %add.ptr = getelementptr inbounds i32, i32* %259, i64 8
  store i32* %add.ptr, i32** %k, align 8
  %260 = load i32*, i32** %d, align 8
  %add.ptr338 = getelementptr inbounds i32, i32* %260, i64 8
  store i32* %add.ptr338, i32** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.1528, %for.end
  %261 = load i8, i8* %i, align 1
  %conv340 = zext i8 %261 to i32
  %cmp341 = icmp slt i32 %conv340, 64
  br i1 %cmp341, label %for.body.343, label %for.end.1533

for.body.343:                                     ; preds = %for.cond.339
  br label %do.body.344

do.body.344:                                      ; preds = %for.body.343
  %262 = load i32, i32* %H, align 4
  %263 = load i32, i32* %E, align 4
  %shr346 = lshr i32 %263, 6
  %264 = load i32, i32* %E, align 4
  %shl347 = shl i32 %264, 26
  %or348 = or i32 %shr346, %shl347
  %265 = load i32, i32* %E, align 4
  %shr349 = lshr i32 %265, 11
  %266 = load i32, i32* %E, align 4
  %shl350 = shl i32 %266, 21
  %or351 = or i32 %shr349, %shl350
  %xor352 = xor i32 %or348, %or351
  %267 = load i32, i32* %E, align 4
  %shr353 = lshr i32 %267, 25
  %268 = load i32, i32* %E, align 4
  %shl354 = shl i32 %268, 7
  %or355 = or i32 %shr353, %shl354
  %xor356 = xor i32 %xor352, %or355
  %add357 = add i32 %262, %xor356
  %269 = load i32, i32* %G, align 4
  %270 = load i32, i32* %E, align 4
  %271 = load i32, i32* %F, align 4
  %272 = load i32, i32* %G, align 4
  %xor358 = xor i32 %271, %272
  %and359 = and i32 %270, %xor358
  %xor360 = xor i32 %269, %and359
  %add361 = add i32 %add357, %xor360
  %273 = load i32*, i32** %k, align 8
  %arrayidx362 = getelementptr inbounds i32, i32* %273, i64 0
  %274 = load i32, i32* %arrayidx362, align 4
  %add363 = add i32 %add361, %274
  %275 = load i32*, i32** %data.addr, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %275, i64 14
  %276 = load i32, i32* %arrayidx364, align 4
  %shr365 = lshr i32 %276, 17
  %277 = load i32*, i32** %data.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %277, i64 14
  %278 = load i32, i32* %arrayidx366, align 4
  %shl367 = shl i32 %278, 15
  %or368 = or i32 %shr365, %shl367
  %279 = load i32*, i32** %data.addr, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %279, i64 14
  %280 = load i32, i32* %arrayidx369, align 4
  %shr370 = lshr i32 %280, 19
  %281 = load i32*, i32** %data.addr, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %281, i64 14
  %282 = load i32, i32* %arrayidx371, align 4
  %shl372 = shl i32 %282, 13
  %or373 = or i32 %shr370, %shl372
  %xor374 = xor i32 %or368, %or373
  %283 = load i32*, i32** %data.addr, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %283, i64 14
  %284 = load i32, i32* %arrayidx375, align 4
  %shr376 = lshr i32 %284, 10
  %xor377 = xor i32 %xor374, %shr376
  %285 = load i32*, i32** %data.addr, align 8
  %arrayidx378 = getelementptr inbounds i32, i32* %285, i64 9
  %286 = load i32, i32* %arrayidx378, align 4
  %add379 = add i32 %xor377, %286
  %287 = load i32*, i32** %data.addr, align 8
  %arrayidx380 = getelementptr inbounds i32, i32* %287, i64 1
  %288 = load i32, i32* %arrayidx380, align 4
  %shr381 = lshr i32 %288, 7
  %289 = load i32*, i32** %data.addr, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %289, i64 1
  %290 = load i32, i32* %arrayidx382, align 4
  %shl383 = shl i32 %290, 25
  %or384 = or i32 %shr381, %shl383
  %291 = load i32*, i32** %data.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %291, i64 1
  %292 = load i32, i32* %arrayidx385, align 4
  %shr386 = lshr i32 %292, 18
  %293 = load i32*, i32** %data.addr, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %293, i64 1
  %294 = load i32, i32* %arrayidx387, align 4
  %shl388 = shl i32 %294, 14
  %or389 = or i32 %shr386, %shl388
  %xor390 = xor i32 %or384, %or389
  %295 = load i32*, i32** %data.addr, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %295, i64 1
  %296 = load i32, i32* %arrayidx391, align 4
  %shr392 = lshr i32 %296, 3
  %xor393 = xor i32 %xor390, %shr392
  %add394 = add i32 %add379, %xor393
  %297 = load i32*, i32** %data.addr, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %297, i64 0
  %298 = load i32, i32* %arrayidx395, align 4
  %add396 = add i32 %298, %add394
  store i32 %add396, i32* %arrayidx395, align 4
  %add397 = add i32 %add363, %add396
  store i32 %add397, i32* %T1345, align 4
  %299 = load i32, i32* %A, align 4
  %shr399 = lshr i32 %299, 2
  %300 = load i32, i32* %A, align 4
  %shl400 = shl i32 %300, 30
  %or401 = or i32 %shr399, %shl400
  %301 = load i32, i32* %A, align 4
  %shr402 = lshr i32 %301, 13
  %302 = load i32, i32* %A, align 4
  %shl403 = shl i32 %302, 19
  %or404 = or i32 %shr402, %shl403
  %xor405 = xor i32 %or401, %or404
  %303 = load i32, i32* %A, align 4
  %shr406 = lshr i32 %303, 22
  %304 = load i32, i32* %A, align 4
  %shl407 = shl i32 %304, 10
  %or408 = or i32 %shr406, %shl407
  %xor409 = xor i32 %xor405, %or408
  %305 = load i32, i32* %A, align 4
  %306 = load i32, i32* %B, align 4
  %and410 = and i32 %305, %306
  %307 = load i32, i32* %C, align 4
  %308 = load i32, i32* %A, align 4
  %309 = load i32, i32* %B, align 4
  %xor411 = xor i32 %308, %309
  %and412 = and i32 %307, %xor411
  %xor413 = xor i32 %and410, %and412
  %add414 = add i32 %xor409, %xor413
  store i32 %add414, i32* %T2398, align 4
  %310 = load i32, i32* %T1345, align 4
  %311 = load i32, i32* %D, align 4
  %add415 = add i32 %311, %310
  store i32 %add415, i32* %D, align 4
  %312 = load i32, i32* %T1345, align 4
  %313 = load i32, i32* %T2398, align 4
  %add416 = add i32 %312, %313
  store i32 %add416, i32* %H, align 4
  br label %do.end.417

do.end.417:                                       ; preds = %do.body.344
  br label %do.body.418

do.body.418:                                      ; preds = %do.end.417
  %314 = load i32, i32* %G, align 4
  %315 = load i32, i32* %D, align 4
  %shr420 = lshr i32 %315, 6
  %316 = load i32, i32* %D, align 4
  %shl421 = shl i32 %316, 26
  %or422 = or i32 %shr420, %shl421
  %317 = load i32, i32* %D, align 4
  %shr423 = lshr i32 %317, 11
  %318 = load i32, i32* %D, align 4
  %shl424 = shl i32 %318, 21
  %or425 = or i32 %shr423, %shl424
  %xor426 = xor i32 %or422, %or425
  %319 = load i32, i32* %D, align 4
  %shr427 = lshr i32 %319, 25
  %320 = load i32, i32* %D, align 4
  %shl428 = shl i32 %320, 7
  %or429 = or i32 %shr427, %shl428
  %xor430 = xor i32 %xor426, %or429
  %add431 = add i32 %314, %xor430
  %321 = load i32, i32* %F, align 4
  %322 = load i32, i32* %D, align 4
  %323 = load i32, i32* %E, align 4
  %324 = load i32, i32* %F, align 4
  %xor432 = xor i32 %323, %324
  %and433 = and i32 %322, %xor432
  %xor434 = xor i32 %321, %and433
  %add435 = add i32 %add431, %xor434
  %325 = load i32*, i32** %k, align 8
  %arrayidx436 = getelementptr inbounds i32, i32* %325, i64 1
  %326 = load i32, i32* %arrayidx436, align 4
  %add437 = add i32 %add435, %326
  %327 = load i32*, i32** %data.addr, align 8
  %arrayidx438 = getelementptr inbounds i32, i32* %327, i64 15
  %328 = load i32, i32* %arrayidx438, align 4
  %shr439 = lshr i32 %328, 17
  %329 = load i32*, i32** %data.addr, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %329, i64 15
  %330 = load i32, i32* %arrayidx440, align 4
  %shl441 = shl i32 %330, 15
  %or442 = or i32 %shr439, %shl441
  %331 = load i32*, i32** %data.addr, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %331, i64 15
  %332 = load i32, i32* %arrayidx443, align 4
  %shr444 = lshr i32 %332, 19
  %333 = load i32*, i32** %data.addr, align 8
  %arrayidx445 = getelementptr inbounds i32, i32* %333, i64 15
  %334 = load i32, i32* %arrayidx445, align 4
  %shl446 = shl i32 %334, 13
  %or447 = or i32 %shr444, %shl446
  %xor448 = xor i32 %or442, %or447
  %335 = load i32*, i32** %data.addr, align 8
  %arrayidx449 = getelementptr inbounds i32, i32* %335, i64 15
  %336 = load i32, i32* %arrayidx449, align 4
  %shr450 = lshr i32 %336, 10
  %xor451 = xor i32 %xor448, %shr450
  %337 = load i32*, i32** %data.addr, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %337, i64 10
  %338 = load i32, i32* %arrayidx452, align 4
  %add453 = add i32 %xor451, %338
  %339 = load i32*, i32** %data.addr, align 8
  %arrayidx454 = getelementptr inbounds i32, i32* %339, i64 2
  %340 = load i32, i32* %arrayidx454, align 4
  %shr455 = lshr i32 %340, 7
  %341 = load i32*, i32** %data.addr, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %341, i64 2
  %342 = load i32, i32* %arrayidx456, align 4
  %shl457 = shl i32 %342, 25
  %or458 = or i32 %shr455, %shl457
  %343 = load i32*, i32** %data.addr, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %343, i64 2
  %344 = load i32, i32* %arrayidx459, align 4
  %shr460 = lshr i32 %344, 18
  %345 = load i32*, i32** %data.addr, align 8
  %arrayidx461 = getelementptr inbounds i32, i32* %345, i64 2
  %346 = load i32, i32* %arrayidx461, align 4
  %shl462 = shl i32 %346, 14
  %or463 = or i32 %shr460, %shl462
  %xor464 = xor i32 %or458, %or463
  %347 = load i32*, i32** %data.addr, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %347, i64 2
  %348 = load i32, i32* %arrayidx465, align 4
  %shr466 = lshr i32 %348, 3
  %xor467 = xor i32 %xor464, %shr466
  %add468 = add i32 %add453, %xor467
  %349 = load i32*, i32** %data.addr, align 8
  %arrayidx469 = getelementptr inbounds i32, i32* %349, i64 1
  %350 = load i32, i32* %arrayidx469, align 4
  %add470 = add i32 %350, %add468
  store i32 %add470, i32* %arrayidx469, align 4
  %add471 = add i32 %add437, %add470
  store i32 %add471, i32* %T1419, align 4
  %351 = load i32, i32* %H, align 4
  %shr473 = lshr i32 %351, 2
  %352 = load i32, i32* %H, align 4
  %shl474 = shl i32 %352, 30
  %or475 = or i32 %shr473, %shl474
  %353 = load i32, i32* %H, align 4
  %shr476 = lshr i32 %353, 13
  %354 = load i32, i32* %H, align 4
  %shl477 = shl i32 %354, 19
  %or478 = or i32 %shr476, %shl477
  %xor479 = xor i32 %or475, %or478
  %355 = load i32, i32* %H, align 4
  %shr480 = lshr i32 %355, 22
  %356 = load i32, i32* %H, align 4
  %shl481 = shl i32 %356, 10
  %or482 = or i32 %shr480, %shl481
  %xor483 = xor i32 %xor479, %or482
  %357 = load i32, i32* %H, align 4
  %358 = load i32, i32* %A, align 4
  %and484 = and i32 %357, %358
  %359 = load i32, i32* %B, align 4
  %360 = load i32, i32* %H, align 4
  %361 = load i32, i32* %A, align 4
  %xor485 = xor i32 %360, %361
  %and486 = and i32 %359, %xor485
  %xor487 = xor i32 %and484, %and486
  %add488 = add i32 %xor483, %xor487
  store i32 %add488, i32* %T2472, align 4
  %362 = load i32, i32* %T1419, align 4
  %363 = load i32, i32* %C, align 4
  %add489 = add i32 %363, %362
  store i32 %add489, i32* %C, align 4
  %364 = load i32, i32* %T1419, align 4
  %365 = load i32, i32* %T2472, align 4
  %add490 = add i32 %364, %365
  store i32 %add490, i32* %G, align 4
  br label %do.end.491

do.end.491:                                       ; preds = %do.body.418
  br label %do.body.492

do.body.492:                                      ; preds = %do.end.491
  %366 = load i32, i32* %F, align 4
  %367 = load i32, i32* %C, align 4
  %shr494 = lshr i32 %367, 6
  %368 = load i32, i32* %C, align 4
  %shl495 = shl i32 %368, 26
  %or496 = or i32 %shr494, %shl495
  %369 = load i32, i32* %C, align 4
  %shr497 = lshr i32 %369, 11
  %370 = load i32, i32* %C, align 4
  %shl498 = shl i32 %370, 21
  %or499 = or i32 %shr497, %shl498
  %xor500 = xor i32 %or496, %or499
  %371 = load i32, i32* %C, align 4
  %shr501 = lshr i32 %371, 25
  %372 = load i32, i32* %C, align 4
  %shl502 = shl i32 %372, 7
  %or503 = or i32 %shr501, %shl502
  %xor504 = xor i32 %xor500, %or503
  %add505 = add i32 %366, %xor504
  %373 = load i32, i32* %E, align 4
  %374 = load i32, i32* %C, align 4
  %375 = load i32, i32* %D, align 4
  %376 = load i32, i32* %E, align 4
  %xor506 = xor i32 %375, %376
  %and507 = and i32 %374, %xor506
  %xor508 = xor i32 %373, %and507
  %add509 = add i32 %add505, %xor508
  %377 = load i32*, i32** %k, align 8
  %arrayidx510 = getelementptr inbounds i32, i32* %377, i64 2
  %378 = load i32, i32* %arrayidx510, align 4
  %add511 = add i32 %add509, %378
  %379 = load i32*, i32** %data.addr, align 8
  %arrayidx512 = getelementptr inbounds i32, i32* %379, i64 0
  %380 = load i32, i32* %arrayidx512, align 4
  %shr513 = lshr i32 %380, 17
  %381 = load i32*, i32** %data.addr, align 8
  %arrayidx514 = getelementptr inbounds i32, i32* %381, i64 0
  %382 = load i32, i32* %arrayidx514, align 4
  %shl515 = shl i32 %382, 15
  %or516 = or i32 %shr513, %shl515
  %383 = load i32*, i32** %data.addr, align 8
  %arrayidx517 = getelementptr inbounds i32, i32* %383, i64 0
  %384 = load i32, i32* %arrayidx517, align 4
  %shr518 = lshr i32 %384, 19
  %385 = load i32*, i32** %data.addr, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %385, i64 0
  %386 = load i32, i32* %arrayidx519, align 4
  %shl520 = shl i32 %386, 13
  %or521 = or i32 %shr518, %shl520
  %xor522 = xor i32 %or516, %or521
  %387 = load i32*, i32** %data.addr, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %387, i64 0
  %388 = load i32, i32* %arrayidx523, align 4
  %shr524 = lshr i32 %388, 10
  %xor525 = xor i32 %xor522, %shr524
  %389 = load i32*, i32** %data.addr, align 8
  %arrayidx526 = getelementptr inbounds i32, i32* %389, i64 11
  %390 = load i32, i32* %arrayidx526, align 4
  %add527 = add i32 %xor525, %390
  %391 = load i32*, i32** %data.addr, align 8
  %arrayidx528 = getelementptr inbounds i32, i32* %391, i64 3
  %392 = load i32, i32* %arrayidx528, align 4
  %shr529 = lshr i32 %392, 7
  %393 = load i32*, i32** %data.addr, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %393, i64 3
  %394 = load i32, i32* %arrayidx530, align 4
  %shl531 = shl i32 %394, 25
  %or532 = or i32 %shr529, %shl531
  %395 = load i32*, i32** %data.addr, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %395, i64 3
  %396 = load i32, i32* %arrayidx533, align 4
  %shr534 = lshr i32 %396, 18
  %397 = load i32*, i32** %data.addr, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %397, i64 3
  %398 = load i32, i32* %arrayidx535, align 4
  %shl536 = shl i32 %398, 14
  %or537 = or i32 %shr534, %shl536
  %xor538 = xor i32 %or532, %or537
  %399 = load i32*, i32** %data.addr, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %399, i64 3
  %400 = load i32, i32* %arrayidx539, align 4
  %shr540 = lshr i32 %400, 3
  %xor541 = xor i32 %xor538, %shr540
  %add542 = add i32 %add527, %xor541
  %401 = load i32*, i32** %data.addr, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %401, i64 2
  %402 = load i32, i32* %arrayidx543, align 4
  %add544 = add i32 %402, %add542
  store i32 %add544, i32* %arrayidx543, align 4
  %add545 = add i32 %add511, %add544
  store i32 %add545, i32* %T1493, align 4
  %403 = load i32, i32* %G, align 4
  %shr547 = lshr i32 %403, 2
  %404 = load i32, i32* %G, align 4
  %shl548 = shl i32 %404, 30
  %or549 = or i32 %shr547, %shl548
  %405 = load i32, i32* %G, align 4
  %shr550 = lshr i32 %405, 13
  %406 = load i32, i32* %G, align 4
  %shl551 = shl i32 %406, 19
  %or552 = or i32 %shr550, %shl551
  %xor553 = xor i32 %or549, %or552
  %407 = load i32, i32* %G, align 4
  %shr554 = lshr i32 %407, 22
  %408 = load i32, i32* %G, align 4
  %shl555 = shl i32 %408, 10
  %or556 = or i32 %shr554, %shl555
  %xor557 = xor i32 %xor553, %or556
  %409 = load i32, i32* %G, align 4
  %410 = load i32, i32* %H, align 4
  %and558 = and i32 %409, %410
  %411 = load i32, i32* %A, align 4
  %412 = load i32, i32* %G, align 4
  %413 = load i32, i32* %H, align 4
  %xor559 = xor i32 %412, %413
  %and560 = and i32 %411, %xor559
  %xor561 = xor i32 %and558, %and560
  %add562 = add i32 %xor557, %xor561
  store i32 %add562, i32* %T2546, align 4
  %414 = load i32, i32* %T1493, align 4
  %415 = load i32, i32* %B, align 4
  %add563 = add i32 %415, %414
  store i32 %add563, i32* %B, align 4
  %416 = load i32, i32* %T1493, align 4
  %417 = load i32, i32* %T2546, align 4
  %add564 = add i32 %416, %417
  store i32 %add564, i32* %F, align 4
  br label %do.end.565

do.end.565:                                       ; preds = %do.body.492
  br label %do.body.566

do.body.566:                                      ; preds = %do.end.565
  %418 = load i32, i32* %E, align 4
  %419 = load i32, i32* %B, align 4
  %shr568 = lshr i32 %419, 6
  %420 = load i32, i32* %B, align 4
  %shl569 = shl i32 %420, 26
  %or570 = or i32 %shr568, %shl569
  %421 = load i32, i32* %B, align 4
  %shr571 = lshr i32 %421, 11
  %422 = load i32, i32* %B, align 4
  %shl572 = shl i32 %422, 21
  %or573 = or i32 %shr571, %shl572
  %xor574 = xor i32 %or570, %or573
  %423 = load i32, i32* %B, align 4
  %shr575 = lshr i32 %423, 25
  %424 = load i32, i32* %B, align 4
  %shl576 = shl i32 %424, 7
  %or577 = or i32 %shr575, %shl576
  %xor578 = xor i32 %xor574, %or577
  %add579 = add i32 %418, %xor578
  %425 = load i32, i32* %D, align 4
  %426 = load i32, i32* %B, align 4
  %427 = load i32, i32* %C, align 4
  %428 = load i32, i32* %D, align 4
  %xor580 = xor i32 %427, %428
  %and581 = and i32 %426, %xor580
  %xor582 = xor i32 %425, %and581
  %add583 = add i32 %add579, %xor582
  %429 = load i32*, i32** %k, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %429, i64 3
  %430 = load i32, i32* %arrayidx584, align 4
  %add585 = add i32 %add583, %430
  %431 = load i32*, i32** %data.addr, align 8
  %arrayidx586 = getelementptr inbounds i32, i32* %431, i64 1
  %432 = load i32, i32* %arrayidx586, align 4
  %shr587 = lshr i32 %432, 17
  %433 = load i32*, i32** %data.addr, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %433, i64 1
  %434 = load i32, i32* %arrayidx588, align 4
  %shl589 = shl i32 %434, 15
  %or590 = or i32 %shr587, %shl589
  %435 = load i32*, i32** %data.addr, align 8
  %arrayidx591 = getelementptr inbounds i32, i32* %435, i64 1
  %436 = load i32, i32* %arrayidx591, align 4
  %shr592 = lshr i32 %436, 19
  %437 = load i32*, i32** %data.addr, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %437, i64 1
  %438 = load i32, i32* %arrayidx593, align 4
  %shl594 = shl i32 %438, 13
  %or595 = or i32 %shr592, %shl594
  %xor596 = xor i32 %or590, %or595
  %439 = load i32*, i32** %data.addr, align 8
  %arrayidx597 = getelementptr inbounds i32, i32* %439, i64 1
  %440 = load i32, i32* %arrayidx597, align 4
  %shr598 = lshr i32 %440, 10
  %xor599 = xor i32 %xor596, %shr598
  %441 = load i32*, i32** %data.addr, align 8
  %arrayidx600 = getelementptr inbounds i32, i32* %441, i64 12
  %442 = load i32, i32* %arrayidx600, align 4
  %add601 = add i32 %xor599, %442
  %443 = load i32*, i32** %data.addr, align 8
  %arrayidx602 = getelementptr inbounds i32, i32* %443, i64 4
  %444 = load i32, i32* %arrayidx602, align 4
  %shr603 = lshr i32 %444, 7
  %445 = load i32*, i32** %data.addr, align 8
  %arrayidx604 = getelementptr inbounds i32, i32* %445, i64 4
  %446 = load i32, i32* %arrayidx604, align 4
  %shl605 = shl i32 %446, 25
  %or606 = or i32 %shr603, %shl605
  %447 = load i32*, i32** %data.addr, align 8
  %arrayidx607 = getelementptr inbounds i32, i32* %447, i64 4
  %448 = load i32, i32* %arrayidx607, align 4
  %shr608 = lshr i32 %448, 18
  %449 = load i32*, i32** %data.addr, align 8
  %arrayidx609 = getelementptr inbounds i32, i32* %449, i64 4
  %450 = load i32, i32* %arrayidx609, align 4
  %shl610 = shl i32 %450, 14
  %or611 = or i32 %shr608, %shl610
  %xor612 = xor i32 %or606, %or611
  %451 = load i32*, i32** %data.addr, align 8
  %arrayidx613 = getelementptr inbounds i32, i32* %451, i64 4
  %452 = load i32, i32* %arrayidx613, align 4
  %shr614 = lshr i32 %452, 3
  %xor615 = xor i32 %xor612, %shr614
  %add616 = add i32 %add601, %xor615
  %453 = load i32*, i32** %data.addr, align 8
  %arrayidx617 = getelementptr inbounds i32, i32* %453, i64 3
  %454 = load i32, i32* %arrayidx617, align 4
  %add618 = add i32 %454, %add616
  store i32 %add618, i32* %arrayidx617, align 4
  %add619 = add i32 %add585, %add618
  store i32 %add619, i32* %T1567, align 4
  %455 = load i32, i32* %F, align 4
  %shr621 = lshr i32 %455, 2
  %456 = load i32, i32* %F, align 4
  %shl622 = shl i32 %456, 30
  %or623 = or i32 %shr621, %shl622
  %457 = load i32, i32* %F, align 4
  %shr624 = lshr i32 %457, 13
  %458 = load i32, i32* %F, align 4
  %shl625 = shl i32 %458, 19
  %or626 = or i32 %shr624, %shl625
  %xor627 = xor i32 %or623, %or626
  %459 = load i32, i32* %F, align 4
  %shr628 = lshr i32 %459, 22
  %460 = load i32, i32* %F, align 4
  %shl629 = shl i32 %460, 10
  %or630 = or i32 %shr628, %shl629
  %xor631 = xor i32 %xor627, %or630
  %461 = load i32, i32* %F, align 4
  %462 = load i32, i32* %G, align 4
  %and632 = and i32 %461, %462
  %463 = load i32, i32* %H, align 4
  %464 = load i32, i32* %F, align 4
  %465 = load i32, i32* %G, align 4
  %xor633 = xor i32 %464, %465
  %and634 = and i32 %463, %xor633
  %xor635 = xor i32 %and632, %and634
  %add636 = add i32 %xor631, %xor635
  store i32 %add636, i32* %T2620, align 4
  %466 = load i32, i32* %T1567, align 4
  %467 = load i32, i32* %A, align 4
  %add637 = add i32 %467, %466
  store i32 %add637, i32* %A, align 4
  %468 = load i32, i32* %T1567, align 4
  %469 = load i32, i32* %T2620, align 4
  %add638 = add i32 %468, %469
  store i32 %add638, i32* %E, align 4
  br label %do.end.639

do.end.639:                                       ; preds = %do.body.566
  br label %do.body.640

do.body.640:                                      ; preds = %do.end.639
  %470 = load i32, i32* %D, align 4
  %471 = load i32, i32* %A, align 4
  %shr642 = lshr i32 %471, 6
  %472 = load i32, i32* %A, align 4
  %shl643 = shl i32 %472, 26
  %or644 = or i32 %shr642, %shl643
  %473 = load i32, i32* %A, align 4
  %shr645 = lshr i32 %473, 11
  %474 = load i32, i32* %A, align 4
  %shl646 = shl i32 %474, 21
  %or647 = or i32 %shr645, %shl646
  %xor648 = xor i32 %or644, %or647
  %475 = load i32, i32* %A, align 4
  %shr649 = lshr i32 %475, 25
  %476 = load i32, i32* %A, align 4
  %shl650 = shl i32 %476, 7
  %or651 = or i32 %shr649, %shl650
  %xor652 = xor i32 %xor648, %or651
  %add653 = add i32 %470, %xor652
  %477 = load i32, i32* %C, align 4
  %478 = load i32, i32* %A, align 4
  %479 = load i32, i32* %B, align 4
  %480 = load i32, i32* %C, align 4
  %xor654 = xor i32 %479, %480
  %and655 = and i32 %478, %xor654
  %xor656 = xor i32 %477, %and655
  %add657 = add i32 %add653, %xor656
  %481 = load i32*, i32** %k, align 8
  %arrayidx658 = getelementptr inbounds i32, i32* %481, i64 4
  %482 = load i32, i32* %arrayidx658, align 4
  %add659 = add i32 %add657, %482
  %483 = load i32*, i32** %data.addr, align 8
  %arrayidx660 = getelementptr inbounds i32, i32* %483, i64 2
  %484 = load i32, i32* %arrayidx660, align 4
  %shr661 = lshr i32 %484, 17
  %485 = load i32*, i32** %data.addr, align 8
  %arrayidx662 = getelementptr inbounds i32, i32* %485, i64 2
  %486 = load i32, i32* %arrayidx662, align 4
  %shl663 = shl i32 %486, 15
  %or664 = or i32 %shr661, %shl663
  %487 = load i32*, i32** %data.addr, align 8
  %arrayidx665 = getelementptr inbounds i32, i32* %487, i64 2
  %488 = load i32, i32* %arrayidx665, align 4
  %shr666 = lshr i32 %488, 19
  %489 = load i32*, i32** %data.addr, align 8
  %arrayidx667 = getelementptr inbounds i32, i32* %489, i64 2
  %490 = load i32, i32* %arrayidx667, align 4
  %shl668 = shl i32 %490, 13
  %or669 = or i32 %shr666, %shl668
  %xor670 = xor i32 %or664, %or669
  %491 = load i32*, i32** %data.addr, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %491, i64 2
  %492 = load i32, i32* %arrayidx671, align 4
  %shr672 = lshr i32 %492, 10
  %xor673 = xor i32 %xor670, %shr672
  %493 = load i32*, i32** %data.addr, align 8
  %arrayidx674 = getelementptr inbounds i32, i32* %493, i64 13
  %494 = load i32, i32* %arrayidx674, align 4
  %add675 = add i32 %xor673, %494
  %495 = load i32*, i32** %data.addr, align 8
  %arrayidx676 = getelementptr inbounds i32, i32* %495, i64 5
  %496 = load i32, i32* %arrayidx676, align 4
  %shr677 = lshr i32 %496, 7
  %497 = load i32*, i32** %data.addr, align 8
  %arrayidx678 = getelementptr inbounds i32, i32* %497, i64 5
  %498 = load i32, i32* %arrayidx678, align 4
  %shl679 = shl i32 %498, 25
  %or680 = or i32 %shr677, %shl679
  %499 = load i32*, i32** %data.addr, align 8
  %arrayidx681 = getelementptr inbounds i32, i32* %499, i64 5
  %500 = load i32, i32* %arrayidx681, align 4
  %shr682 = lshr i32 %500, 18
  %501 = load i32*, i32** %data.addr, align 8
  %arrayidx683 = getelementptr inbounds i32, i32* %501, i64 5
  %502 = load i32, i32* %arrayidx683, align 4
  %shl684 = shl i32 %502, 14
  %or685 = or i32 %shr682, %shl684
  %xor686 = xor i32 %or680, %or685
  %503 = load i32*, i32** %data.addr, align 8
  %arrayidx687 = getelementptr inbounds i32, i32* %503, i64 5
  %504 = load i32, i32* %arrayidx687, align 4
  %shr688 = lshr i32 %504, 3
  %xor689 = xor i32 %xor686, %shr688
  %add690 = add i32 %add675, %xor689
  %505 = load i32*, i32** %data.addr, align 8
  %arrayidx691 = getelementptr inbounds i32, i32* %505, i64 4
  %506 = load i32, i32* %arrayidx691, align 4
  %add692 = add i32 %506, %add690
  store i32 %add692, i32* %arrayidx691, align 4
  %add693 = add i32 %add659, %add692
  store i32 %add693, i32* %T1641, align 4
  %507 = load i32, i32* %E, align 4
  %shr695 = lshr i32 %507, 2
  %508 = load i32, i32* %E, align 4
  %shl696 = shl i32 %508, 30
  %or697 = or i32 %shr695, %shl696
  %509 = load i32, i32* %E, align 4
  %shr698 = lshr i32 %509, 13
  %510 = load i32, i32* %E, align 4
  %shl699 = shl i32 %510, 19
  %or700 = or i32 %shr698, %shl699
  %xor701 = xor i32 %or697, %or700
  %511 = load i32, i32* %E, align 4
  %shr702 = lshr i32 %511, 22
  %512 = load i32, i32* %E, align 4
  %shl703 = shl i32 %512, 10
  %or704 = or i32 %shr702, %shl703
  %xor705 = xor i32 %xor701, %or704
  %513 = load i32, i32* %E, align 4
  %514 = load i32, i32* %F, align 4
  %and706 = and i32 %513, %514
  %515 = load i32, i32* %G, align 4
  %516 = load i32, i32* %E, align 4
  %517 = load i32, i32* %F, align 4
  %xor707 = xor i32 %516, %517
  %and708 = and i32 %515, %xor707
  %xor709 = xor i32 %and706, %and708
  %add710 = add i32 %xor705, %xor709
  store i32 %add710, i32* %T2694, align 4
  %518 = load i32, i32* %T1641, align 4
  %519 = load i32, i32* %H, align 4
  %add711 = add i32 %519, %518
  store i32 %add711, i32* %H, align 4
  %520 = load i32, i32* %T1641, align 4
  %521 = load i32, i32* %T2694, align 4
  %add712 = add i32 %520, %521
  store i32 %add712, i32* %D, align 4
  br label %do.end.713

do.end.713:                                       ; preds = %do.body.640
  br label %do.body.714

do.body.714:                                      ; preds = %do.end.713
  %522 = load i32, i32* %C, align 4
  %523 = load i32, i32* %H, align 4
  %shr716 = lshr i32 %523, 6
  %524 = load i32, i32* %H, align 4
  %shl717 = shl i32 %524, 26
  %or718 = or i32 %shr716, %shl717
  %525 = load i32, i32* %H, align 4
  %shr719 = lshr i32 %525, 11
  %526 = load i32, i32* %H, align 4
  %shl720 = shl i32 %526, 21
  %or721 = or i32 %shr719, %shl720
  %xor722 = xor i32 %or718, %or721
  %527 = load i32, i32* %H, align 4
  %shr723 = lshr i32 %527, 25
  %528 = load i32, i32* %H, align 4
  %shl724 = shl i32 %528, 7
  %or725 = or i32 %shr723, %shl724
  %xor726 = xor i32 %xor722, %or725
  %add727 = add i32 %522, %xor726
  %529 = load i32, i32* %B, align 4
  %530 = load i32, i32* %H, align 4
  %531 = load i32, i32* %A, align 4
  %532 = load i32, i32* %B, align 4
  %xor728 = xor i32 %531, %532
  %and729 = and i32 %530, %xor728
  %xor730 = xor i32 %529, %and729
  %add731 = add i32 %add727, %xor730
  %533 = load i32*, i32** %k, align 8
  %arrayidx732 = getelementptr inbounds i32, i32* %533, i64 5
  %534 = load i32, i32* %arrayidx732, align 4
  %add733 = add i32 %add731, %534
  %535 = load i32*, i32** %data.addr, align 8
  %arrayidx734 = getelementptr inbounds i32, i32* %535, i64 3
  %536 = load i32, i32* %arrayidx734, align 4
  %shr735 = lshr i32 %536, 17
  %537 = load i32*, i32** %data.addr, align 8
  %arrayidx736 = getelementptr inbounds i32, i32* %537, i64 3
  %538 = load i32, i32* %arrayidx736, align 4
  %shl737 = shl i32 %538, 15
  %or738 = or i32 %shr735, %shl737
  %539 = load i32*, i32** %data.addr, align 8
  %arrayidx739 = getelementptr inbounds i32, i32* %539, i64 3
  %540 = load i32, i32* %arrayidx739, align 4
  %shr740 = lshr i32 %540, 19
  %541 = load i32*, i32** %data.addr, align 8
  %arrayidx741 = getelementptr inbounds i32, i32* %541, i64 3
  %542 = load i32, i32* %arrayidx741, align 4
  %shl742 = shl i32 %542, 13
  %or743 = or i32 %shr740, %shl742
  %xor744 = xor i32 %or738, %or743
  %543 = load i32*, i32** %data.addr, align 8
  %arrayidx745 = getelementptr inbounds i32, i32* %543, i64 3
  %544 = load i32, i32* %arrayidx745, align 4
  %shr746 = lshr i32 %544, 10
  %xor747 = xor i32 %xor744, %shr746
  %545 = load i32*, i32** %data.addr, align 8
  %arrayidx748 = getelementptr inbounds i32, i32* %545, i64 14
  %546 = load i32, i32* %arrayidx748, align 4
  %add749 = add i32 %xor747, %546
  %547 = load i32*, i32** %data.addr, align 8
  %arrayidx750 = getelementptr inbounds i32, i32* %547, i64 6
  %548 = load i32, i32* %arrayidx750, align 4
  %shr751 = lshr i32 %548, 7
  %549 = load i32*, i32** %data.addr, align 8
  %arrayidx752 = getelementptr inbounds i32, i32* %549, i64 6
  %550 = load i32, i32* %arrayidx752, align 4
  %shl753 = shl i32 %550, 25
  %or754 = or i32 %shr751, %shl753
  %551 = load i32*, i32** %data.addr, align 8
  %arrayidx755 = getelementptr inbounds i32, i32* %551, i64 6
  %552 = load i32, i32* %arrayidx755, align 4
  %shr756 = lshr i32 %552, 18
  %553 = load i32*, i32** %data.addr, align 8
  %arrayidx757 = getelementptr inbounds i32, i32* %553, i64 6
  %554 = load i32, i32* %arrayidx757, align 4
  %shl758 = shl i32 %554, 14
  %or759 = or i32 %shr756, %shl758
  %xor760 = xor i32 %or754, %or759
  %555 = load i32*, i32** %data.addr, align 8
  %arrayidx761 = getelementptr inbounds i32, i32* %555, i64 6
  %556 = load i32, i32* %arrayidx761, align 4
  %shr762 = lshr i32 %556, 3
  %xor763 = xor i32 %xor760, %shr762
  %add764 = add i32 %add749, %xor763
  %557 = load i32*, i32** %data.addr, align 8
  %arrayidx765 = getelementptr inbounds i32, i32* %557, i64 5
  %558 = load i32, i32* %arrayidx765, align 4
  %add766 = add i32 %558, %add764
  store i32 %add766, i32* %arrayidx765, align 4
  %add767 = add i32 %add733, %add766
  store i32 %add767, i32* %T1715, align 4
  %559 = load i32, i32* %D, align 4
  %shr769 = lshr i32 %559, 2
  %560 = load i32, i32* %D, align 4
  %shl770 = shl i32 %560, 30
  %or771 = or i32 %shr769, %shl770
  %561 = load i32, i32* %D, align 4
  %shr772 = lshr i32 %561, 13
  %562 = load i32, i32* %D, align 4
  %shl773 = shl i32 %562, 19
  %or774 = or i32 %shr772, %shl773
  %xor775 = xor i32 %or771, %or774
  %563 = load i32, i32* %D, align 4
  %shr776 = lshr i32 %563, 22
  %564 = load i32, i32* %D, align 4
  %shl777 = shl i32 %564, 10
  %or778 = or i32 %shr776, %shl777
  %xor779 = xor i32 %xor775, %or778
  %565 = load i32, i32* %D, align 4
  %566 = load i32, i32* %E, align 4
  %and780 = and i32 %565, %566
  %567 = load i32, i32* %F, align 4
  %568 = load i32, i32* %D, align 4
  %569 = load i32, i32* %E, align 4
  %xor781 = xor i32 %568, %569
  %and782 = and i32 %567, %xor781
  %xor783 = xor i32 %and780, %and782
  %add784 = add i32 %xor779, %xor783
  store i32 %add784, i32* %T2768, align 4
  %570 = load i32, i32* %T1715, align 4
  %571 = load i32, i32* %G, align 4
  %add785 = add i32 %571, %570
  store i32 %add785, i32* %G, align 4
  %572 = load i32, i32* %T1715, align 4
  %573 = load i32, i32* %T2768, align 4
  %add786 = add i32 %572, %573
  store i32 %add786, i32* %C, align 4
  br label %do.end.787

do.end.787:                                       ; preds = %do.body.714
  br label %do.body.788

do.body.788:                                      ; preds = %do.end.787
  %574 = load i32, i32* %B, align 4
  %575 = load i32, i32* %G, align 4
  %shr790 = lshr i32 %575, 6
  %576 = load i32, i32* %G, align 4
  %shl791 = shl i32 %576, 26
  %or792 = or i32 %shr790, %shl791
  %577 = load i32, i32* %G, align 4
  %shr793 = lshr i32 %577, 11
  %578 = load i32, i32* %G, align 4
  %shl794 = shl i32 %578, 21
  %or795 = or i32 %shr793, %shl794
  %xor796 = xor i32 %or792, %or795
  %579 = load i32, i32* %G, align 4
  %shr797 = lshr i32 %579, 25
  %580 = load i32, i32* %G, align 4
  %shl798 = shl i32 %580, 7
  %or799 = or i32 %shr797, %shl798
  %xor800 = xor i32 %xor796, %or799
  %add801 = add i32 %574, %xor800
  %581 = load i32, i32* %A, align 4
  %582 = load i32, i32* %G, align 4
  %583 = load i32, i32* %H, align 4
  %584 = load i32, i32* %A, align 4
  %xor802 = xor i32 %583, %584
  %and803 = and i32 %582, %xor802
  %xor804 = xor i32 %581, %and803
  %add805 = add i32 %add801, %xor804
  %585 = load i32*, i32** %k, align 8
  %arrayidx806 = getelementptr inbounds i32, i32* %585, i64 6
  %586 = load i32, i32* %arrayidx806, align 4
  %add807 = add i32 %add805, %586
  %587 = load i32*, i32** %data.addr, align 8
  %arrayidx808 = getelementptr inbounds i32, i32* %587, i64 4
  %588 = load i32, i32* %arrayidx808, align 4
  %shr809 = lshr i32 %588, 17
  %589 = load i32*, i32** %data.addr, align 8
  %arrayidx810 = getelementptr inbounds i32, i32* %589, i64 4
  %590 = load i32, i32* %arrayidx810, align 4
  %shl811 = shl i32 %590, 15
  %or812 = or i32 %shr809, %shl811
  %591 = load i32*, i32** %data.addr, align 8
  %arrayidx813 = getelementptr inbounds i32, i32* %591, i64 4
  %592 = load i32, i32* %arrayidx813, align 4
  %shr814 = lshr i32 %592, 19
  %593 = load i32*, i32** %data.addr, align 8
  %arrayidx815 = getelementptr inbounds i32, i32* %593, i64 4
  %594 = load i32, i32* %arrayidx815, align 4
  %shl816 = shl i32 %594, 13
  %or817 = or i32 %shr814, %shl816
  %xor818 = xor i32 %or812, %or817
  %595 = load i32*, i32** %data.addr, align 8
  %arrayidx819 = getelementptr inbounds i32, i32* %595, i64 4
  %596 = load i32, i32* %arrayidx819, align 4
  %shr820 = lshr i32 %596, 10
  %xor821 = xor i32 %xor818, %shr820
  %597 = load i32*, i32** %data.addr, align 8
  %arrayidx822 = getelementptr inbounds i32, i32* %597, i64 15
  %598 = load i32, i32* %arrayidx822, align 4
  %add823 = add i32 %xor821, %598
  %599 = load i32*, i32** %data.addr, align 8
  %arrayidx824 = getelementptr inbounds i32, i32* %599, i64 7
  %600 = load i32, i32* %arrayidx824, align 4
  %shr825 = lshr i32 %600, 7
  %601 = load i32*, i32** %data.addr, align 8
  %arrayidx826 = getelementptr inbounds i32, i32* %601, i64 7
  %602 = load i32, i32* %arrayidx826, align 4
  %shl827 = shl i32 %602, 25
  %or828 = or i32 %shr825, %shl827
  %603 = load i32*, i32** %data.addr, align 8
  %arrayidx829 = getelementptr inbounds i32, i32* %603, i64 7
  %604 = load i32, i32* %arrayidx829, align 4
  %shr830 = lshr i32 %604, 18
  %605 = load i32*, i32** %data.addr, align 8
  %arrayidx831 = getelementptr inbounds i32, i32* %605, i64 7
  %606 = load i32, i32* %arrayidx831, align 4
  %shl832 = shl i32 %606, 14
  %or833 = or i32 %shr830, %shl832
  %xor834 = xor i32 %or828, %or833
  %607 = load i32*, i32** %data.addr, align 8
  %arrayidx835 = getelementptr inbounds i32, i32* %607, i64 7
  %608 = load i32, i32* %arrayidx835, align 4
  %shr836 = lshr i32 %608, 3
  %xor837 = xor i32 %xor834, %shr836
  %add838 = add i32 %add823, %xor837
  %609 = load i32*, i32** %data.addr, align 8
  %arrayidx839 = getelementptr inbounds i32, i32* %609, i64 6
  %610 = load i32, i32* %arrayidx839, align 4
  %add840 = add i32 %610, %add838
  store i32 %add840, i32* %arrayidx839, align 4
  %add841 = add i32 %add807, %add840
  store i32 %add841, i32* %T1789, align 4
  %611 = load i32, i32* %C, align 4
  %shr843 = lshr i32 %611, 2
  %612 = load i32, i32* %C, align 4
  %shl844 = shl i32 %612, 30
  %or845 = or i32 %shr843, %shl844
  %613 = load i32, i32* %C, align 4
  %shr846 = lshr i32 %613, 13
  %614 = load i32, i32* %C, align 4
  %shl847 = shl i32 %614, 19
  %or848 = or i32 %shr846, %shl847
  %xor849 = xor i32 %or845, %or848
  %615 = load i32, i32* %C, align 4
  %shr850 = lshr i32 %615, 22
  %616 = load i32, i32* %C, align 4
  %shl851 = shl i32 %616, 10
  %or852 = or i32 %shr850, %shl851
  %xor853 = xor i32 %xor849, %or852
  %617 = load i32, i32* %C, align 4
  %618 = load i32, i32* %D, align 4
  %and854 = and i32 %617, %618
  %619 = load i32, i32* %E, align 4
  %620 = load i32, i32* %C, align 4
  %621 = load i32, i32* %D, align 4
  %xor855 = xor i32 %620, %621
  %and856 = and i32 %619, %xor855
  %xor857 = xor i32 %and854, %and856
  %add858 = add i32 %xor853, %xor857
  store i32 %add858, i32* %T2842, align 4
  %622 = load i32, i32* %T1789, align 4
  %623 = load i32, i32* %F, align 4
  %add859 = add i32 %623, %622
  store i32 %add859, i32* %F, align 4
  %624 = load i32, i32* %T1789, align 4
  %625 = load i32, i32* %T2842, align 4
  %add860 = add i32 %624, %625
  store i32 %add860, i32* %B, align 4
  br label %do.end.861

do.end.861:                                       ; preds = %do.body.788
  br label %do.body.862

do.body.862:                                      ; preds = %do.end.861
  %626 = load i32, i32* %A, align 4
  %627 = load i32, i32* %F, align 4
  %shr864 = lshr i32 %627, 6
  %628 = load i32, i32* %F, align 4
  %shl865 = shl i32 %628, 26
  %or866 = or i32 %shr864, %shl865
  %629 = load i32, i32* %F, align 4
  %shr867 = lshr i32 %629, 11
  %630 = load i32, i32* %F, align 4
  %shl868 = shl i32 %630, 21
  %or869 = or i32 %shr867, %shl868
  %xor870 = xor i32 %or866, %or869
  %631 = load i32, i32* %F, align 4
  %shr871 = lshr i32 %631, 25
  %632 = load i32, i32* %F, align 4
  %shl872 = shl i32 %632, 7
  %or873 = or i32 %shr871, %shl872
  %xor874 = xor i32 %xor870, %or873
  %add875 = add i32 %626, %xor874
  %633 = load i32, i32* %H, align 4
  %634 = load i32, i32* %F, align 4
  %635 = load i32, i32* %G, align 4
  %636 = load i32, i32* %H, align 4
  %xor876 = xor i32 %635, %636
  %and877 = and i32 %634, %xor876
  %xor878 = xor i32 %633, %and877
  %add879 = add i32 %add875, %xor878
  %637 = load i32*, i32** %k, align 8
  %arrayidx880 = getelementptr inbounds i32, i32* %637, i64 7
  %638 = load i32, i32* %arrayidx880, align 4
  %add881 = add i32 %add879, %638
  %639 = load i32*, i32** %data.addr, align 8
  %arrayidx882 = getelementptr inbounds i32, i32* %639, i64 5
  %640 = load i32, i32* %arrayidx882, align 4
  %shr883 = lshr i32 %640, 17
  %641 = load i32*, i32** %data.addr, align 8
  %arrayidx884 = getelementptr inbounds i32, i32* %641, i64 5
  %642 = load i32, i32* %arrayidx884, align 4
  %shl885 = shl i32 %642, 15
  %or886 = or i32 %shr883, %shl885
  %643 = load i32*, i32** %data.addr, align 8
  %arrayidx887 = getelementptr inbounds i32, i32* %643, i64 5
  %644 = load i32, i32* %arrayidx887, align 4
  %shr888 = lshr i32 %644, 19
  %645 = load i32*, i32** %data.addr, align 8
  %arrayidx889 = getelementptr inbounds i32, i32* %645, i64 5
  %646 = load i32, i32* %arrayidx889, align 4
  %shl890 = shl i32 %646, 13
  %or891 = or i32 %shr888, %shl890
  %xor892 = xor i32 %or886, %or891
  %647 = load i32*, i32** %data.addr, align 8
  %arrayidx893 = getelementptr inbounds i32, i32* %647, i64 5
  %648 = load i32, i32* %arrayidx893, align 4
  %shr894 = lshr i32 %648, 10
  %xor895 = xor i32 %xor892, %shr894
  %649 = load i32*, i32** %data.addr, align 8
  %arrayidx896 = getelementptr inbounds i32, i32* %649, i64 0
  %650 = load i32, i32* %arrayidx896, align 4
  %add897 = add i32 %xor895, %650
  %651 = load i32*, i32** %data.addr, align 8
  %arrayidx898 = getelementptr inbounds i32, i32* %651, i64 8
  %652 = load i32, i32* %arrayidx898, align 4
  %shr899 = lshr i32 %652, 7
  %653 = load i32*, i32** %data.addr, align 8
  %arrayidx900 = getelementptr inbounds i32, i32* %653, i64 8
  %654 = load i32, i32* %arrayidx900, align 4
  %shl901 = shl i32 %654, 25
  %or902 = or i32 %shr899, %shl901
  %655 = load i32*, i32** %data.addr, align 8
  %arrayidx903 = getelementptr inbounds i32, i32* %655, i64 8
  %656 = load i32, i32* %arrayidx903, align 4
  %shr904 = lshr i32 %656, 18
  %657 = load i32*, i32** %data.addr, align 8
  %arrayidx905 = getelementptr inbounds i32, i32* %657, i64 8
  %658 = load i32, i32* %arrayidx905, align 4
  %shl906 = shl i32 %658, 14
  %or907 = or i32 %shr904, %shl906
  %xor908 = xor i32 %or902, %or907
  %659 = load i32*, i32** %data.addr, align 8
  %arrayidx909 = getelementptr inbounds i32, i32* %659, i64 8
  %660 = load i32, i32* %arrayidx909, align 4
  %shr910 = lshr i32 %660, 3
  %xor911 = xor i32 %xor908, %shr910
  %add912 = add i32 %add897, %xor911
  %661 = load i32*, i32** %data.addr, align 8
  %arrayidx913 = getelementptr inbounds i32, i32* %661, i64 7
  %662 = load i32, i32* %arrayidx913, align 4
  %add914 = add i32 %662, %add912
  store i32 %add914, i32* %arrayidx913, align 4
  %add915 = add i32 %add881, %add914
  store i32 %add915, i32* %T1863, align 4
  %663 = load i32, i32* %B, align 4
  %shr917 = lshr i32 %663, 2
  %664 = load i32, i32* %B, align 4
  %shl918 = shl i32 %664, 30
  %or919 = or i32 %shr917, %shl918
  %665 = load i32, i32* %B, align 4
  %shr920 = lshr i32 %665, 13
  %666 = load i32, i32* %B, align 4
  %shl921 = shl i32 %666, 19
  %or922 = or i32 %shr920, %shl921
  %xor923 = xor i32 %or919, %or922
  %667 = load i32, i32* %B, align 4
  %shr924 = lshr i32 %667, 22
  %668 = load i32, i32* %B, align 4
  %shl925 = shl i32 %668, 10
  %or926 = or i32 %shr924, %shl925
  %xor927 = xor i32 %xor923, %or926
  %669 = load i32, i32* %B, align 4
  %670 = load i32, i32* %C, align 4
  %and928 = and i32 %669, %670
  %671 = load i32, i32* %D, align 4
  %672 = load i32, i32* %B, align 4
  %673 = load i32, i32* %C, align 4
  %xor929 = xor i32 %672, %673
  %and930 = and i32 %671, %xor929
  %xor931 = xor i32 %and928, %and930
  %add932 = add i32 %xor927, %xor931
  store i32 %add932, i32* %T2916, align 4
  %674 = load i32, i32* %T1863, align 4
  %675 = load i32, i32* %E, align 4
  %add933 = add i32 %675, %674
  store i32 %add933, i32* %E, align 4
  %676 = load i32, i32* %T1863, align 4
  %677 = load i32, i32* %T2916, align 4
  %add934 = add i32 %676, %677
  store i32 %add934, i32* %A, align 4
  br label %do.end.935

do.end.935:                                       ; preds = %do.body.862
  br label %do.body.936

do.body.936:                                      ; preds = %do.end.935
  %678 = load i32, i32* %H, align 4
  %679 = load i32, i32* %E, align 4
  %shr938 = lshr i32 %679, 6
  %680 = load i32, i32* %E, align 4
  %shl939 = shl i32 %680, 26
  %or940 = or i32 %shr938, %shl939
  %681 = load i32, i32* %E, align 4
  %shr941 = lshr i32 %681, 11
  %682 = load i32, i32* %E, align 4
  %shl942 = shl i32 %682, 21
  %or943 = or i32 %shr941, %shl942
  %xor944 = xor i32 %or940, %or943
  %683 = load i32, i32* %E, align 4
  %shr945 = lshr i32 %683, 25
  %684 = load i32, i32* %E, align 4
  %shl946 = shl i32 %684, 7
  %or947 = or i32 %shr945, %shl946
  %xor948 = xor i32 %xor944, %or947
  %add949 = add i32 %678, %xor948
  %685 = load i32, i32* %G, align 4
  %686 = load i32, i32* %E, align 4
  %687 = load i32, i32* %F, align 4
  %688 = load i32, i32* %G, align 4
  %xor950 = xor i32 %687, %688
  %and951 = and i32 %686, %xor950
  %xor952 = xor i32 %685, %and951
  %add953 = add i32 %add949, %xor952
  %689 = load i32*, i32** %k, align 8
  %arrayidx954 = getelementptr inbounds i32, i32* %689, i64 8
  %690 = load i32, i32* %arrayidx954, align 4
  %add955 = add i32 %add953, %690
  %691 = load i32*, i32** %data.addr, align 8
  %arrayidx956 = getelementptr inbounds i32, i32* %691, i64 6
  %692 = load i32, i32* %arrayidx956, align 4
  %shr957 = lshr i32 %692, 17
  %693 = load i32*, i32** %data.addr, align 8
  %arrayidx958 = getelementptr inbounds i32, i32* %693, i64 6
  %694 = load i32, i32* %arrayidx958, align 4
  %shl959 = shl i32 %694, 15
  %or960 = or i32 %shr957, %shl959
  %695 = load i32*, i32** %data.addr, align 8
  %arrayidx961 = getelementptr inbounds i32, i32* %695, i64 6
  %696 = load i32, i32* %arrayidx961, align 4
  %shr962 = lshr i32 %696, 19
  %697 = load i32*, i32** %data.addr, align 8
  %arrayidx963 = getelementptr inbounds i32, i32* %697, i64 6
  %698 = load i32, i32* %arrayidx963, align 4
  %shl964 = shl i32 %698, 13
  %or965 = or i32 %shr962, %shl964
  %xor966 = xor i32 %or960, %or965
  %699 = load i32*, i32** %data.addr, align 8
  %arrayidx967 = getelementptr inbounds i32, i32* %699, i64 6
  %700 = load i32, i32* %arrayidx967, align 4
  %shr968 = lshr i32 %700, 10
  %xor969 = xor i32 %xor966, %shr968
  %701 = load i32*, i32** %data.addr, align 8
  %arrayidx970 = getelementptr inbounds i32, i32* %701, i64 1
  %702 = load i32, i32* %arrayidx970, align 4
  %add971 = add i32 %xor969, %702
  %703 = load i32*, i32** %data.addr, align 8
  %arrayidx972 = getelementptr inbounds i32, i32* %703, i64 9
  %704 = load i32, i32* %arrayidx972, align 4
  %shr973 = lshr i32 %704, 7
  %705 = load i32*, i32** %data.addr, align 8
  %arrayidx974 = getelementptr inbounds i32, i32* %705, i64 9
  %706 = load i32, i32* %arrayidx974, align 4
  %shl975 = shl i32 %706, 25
  %or976 = or i32 %shr973, %shl975
  %707 = load i32*, i32** %data.addr, align 8
  %arrayidx977 = getelementptr inbounds i32, i32* %707, i64 9
  %708 = load i32, i32* %arrayidx977, align 4
  %shr978 = lshr i32 %708, 18
  %709 = load i32*, i32** %data.addr, align 8
  %arrayidx979 = getelementptr inbounds i32, i32* %709, i64 9
  %710 = load i32, i32* %arrayidx979, align 4
  %shl980 = shl i32 %710, 14
  %or981 = or i32 %shr978, %shl980
  %xor982 = xor i32 %or976, %or981
  %711 = load i32*, i32** %data.addr, align 8
  %arrayidx983 = getelementptr inbounds i32, i32* %711, i64 9
  %712 = load i32, i32* %arrayidx983, align 4
  %shr984 = lshr i32 %712, 3
  %xor985 = xor i32 %xor982, %shr984
  %add986 = add i32 %add971, %xor985
  %713 = load i32*, i32** %data.addr, align 8
  %arrayidx987 = getelementptr inbounds i32, i32* %713, i64 8
  %714 = load i32, i32* %arrayidx987, align 4
  %add988 = add i32 %714, %add986
  store i32 %add988, i32* %arrayidx987, align 4
  %add989 = add i32 %add955, %add988
  store i32 %add989, i32* %T1937, align 4
  %715 = load i32, i32* %A, align 4
  %shr991 = lshr i32 %715, 2
  %716 = load i32, i32* %A, align 4
  %shl992 = shl i32 %716, 30
  %or993 = or i32 %shr991, %shl992
  %717 = load i32, i32* %A, align 4
  %shr994 = lshr i32 %717, 13
  %718 = load i32, i32* %A, align 4
  %shl995 = shl i32 %718, 19
  %or996 = or i32 %shr994, %shl995
  %xor997 = xor i32 %or993, %or996
  %719 = load i32, i32* %A, align 4
  %shr998 = lshr i32 %719, 22
  %720 = load i32, i32* %A, align 4
  %shl999 = shl i32 %720, 10
  %or1000 = or i32 %shr998, %shl999
  %xor1001 = xor i32 %xor997, %or1000
  %721 = load i32, i32* %A, align 4
  %722 = load i32, i32* %B, align 4
  %and1002 = and i32 %721, %722
  %723 = load i32, i32* %C, align 4
  %724 = load i32, i32* %A, align 4
  %725 = load i32, i32* %B, align 4
  %xor1003 = xor i32 %724, %725
  %and1004 = and i32 %723, %xor1003
  %xor1005 = xor i32 %and1002, %and1004
  %add1006 = add i32 %xor1001, %xor1005
  store i32 %add1006, i32* %T2990, align 4
  %726 = load i32, i32* %T1937, align 4
  %727 = load i32, i32* %D, align 4
  %add1007 = add i32 %727, %726
  store i32 %add1007, i32* %D, align 4
  %728 = load i32, i32* %T1937, align 4
  %729 = load i32, i32* %T2990, align 4
  %add1008 = add i32 %728, %729
  store i32 %add1008, i32* %H, align 4
  br label %do.end.1009

do.end.1009:                                      ; preds = %do.body.936
  br label %do.body.1010

do.body.1010:                                     ; preds = %do.end.1009
  %730 = load i32, i32* %G, align 4
  %731 = load i32, i32* %D, align 4
  %shr1012 = lshr i32 %731, 6
  %732 = load i32, i32* %D, align 4
  %shl1013 = shl i32 %732, 26
  %or1014 = or i32 %shr1012, %shl1013
  %733 = load i32, i32* %D, align 4
  %shr1015 = lshr i32 %733, 11
  %734 = load i32, i32* %D, align 4
  %shl1016 = shl i32 %734, 21
  %or1017 = or i32 %shr1015, %shl1016
  %xor1018 = xor i32 %or1014, %or1017
  %735 = load i32, i32* %D, align 4
  %shr1019 = lshr i32 %735, 25
  %736 = load i32, i32* %D, align 4
  %shl1020 = shl i32 %736, 7
  %or1021 = or i32 %shr1019, %shl1020
  %xor1022 = xor i32 %xor1018, %or1021
  %add1023 = add i32 %730, %xor1022
  %737 = load i32, i32* %F, align 4
  %738 = load i32, i32* %D, align 4
  %739 = load i32, i32* %E, align 4
  %740 = load i32, i32* %F, align 4
  %xor1024 = xor i32 %739, %740
  %and1025 = and i32 %738, %xor1024
  %xor1026 = xor i32 %737, %and1025
  %add1027 = add i32 %add1023, %xor1026
  %741 = load i32*, i32** %k, align 8
  %arrayidx1028 = getelementptr inbounds i32, i32* %741, i64 9
  %742 = load i32, i32* %arrayidx1028, align 4
  %add1029 = add i32 %add1027, %742
  %743 = load i32*, i32** %data.addr, align 8
  %arrayidx1030 = getelementptr inbounds i32, i32* %743, i64 7
  %744 = load i32, i32* %arrayidx1030, align 4
  %shr1031 = lshr i32 %744, 17
  %745 = load i32*, i32** %data.addr, align 8
  %arrayidx1032 = getelementptr inbounds i32, i32* %745, i64 7
  %746 = load i32, i32* %arrayidx1032, align 4
  %shl1033 = shl i32 %746, 15
  %or1034 = or i32 %shr1031, %shl1033
  %747 = load i32*, i32** %data.addr, align 8
  %arrayidx1035 = getelementptr inbounds i32, i32* %747, i64 7
  %748 = load i32, i32* %arrayidx1035, align 4
  %shr1036 = lshr i32 %748, 19
  %749 = load i32*, i32** %data.addr, align 8
  %arrayidx1037 = getelementptr inbounds i32, i32* %749, i64 7
  %750 = load i32, i32* %arrayidx1037, align 4
  %shl1038 = shl i32 %750, 13
  %or1039 = or i32 %shr1036, %shl1038
  %xor1040 = xor i32 %or1034, %or1039
  %751 = load i32*, i32** %data.addr, align 8
  %arrayidx1041 = getelementptr inbounds i32, i32* %751, i64 7
  %752 = load i32, i32* %arrayidx1041, align 4
  %shr1042 = lshr i32 %752, 10
  %xor1043 = xor i32 %xor1040, %shr1042
  %753 = load i32*, i32** %data.addr, align 8
  %arrayidx1044 = getelementptr inbounds i32, i32* %753, i64 2
  %754 = load i32, i32* %arrayidx1044, align 4
  %add1045 = add i32 %xor1043, %754
  %755 = load i32*, i32** %data.addr, align 8
  %arrayidx1046 = getelementptr inbounds i32, i32* %755, i64 10
  %756 = load i32, i32* %arrayidx1046, align 4
  %shr1047 = lshr i32 %756, 7
  %757 = load i32*, i32** %data.addr, align 8
  %arrayidx1048 = getelementptr inbounds i32, i32* %757, i64 10
  %758 = load i32, i32* %arrayidx1048, align 4
  %shl1049 = shl i32 %758, 25
  %or1050 = or i32 %shr1047, %shl1049
  %759 = load i32*, i32** %data.addr, align 8
  %arrayidx1051 = getelementptr inbounds i32, i32* %759, i64 10
  %760 = load i32, i32* %arrayidx1051, align 4
  %shr1052 = lshr i32 %760, 18
  %761 = load i32*, i32** %data.addr, align 8
  %arrayidx1053 = getelementptr inbounds i32, i32* %761, i64 10
  %762 = load i32, i32* %arrayidx1053, align 4
  %shl1054 = shl i32 %762, 14
  %or1055 = or i32 %shr1052, %shl1054
  %xor1056 = xor i32 %or1050, %or1055
  %763 = load i32*, i32** %data.addr, align 8
  %arrayidx1057 = getelementptr inbounds i32, i32* %763, i64 10
  %764 = load i32, i32* %arrayidx1057, align 4
  %shr1058 = lshr i32 %764, 3
  %xor1059 = xor i32 %xor1056, %shr1058
  %add1060 = add i32 %add1045, %xor1059
  %765 = load i32*, i32** %data.addr, align 8
  %arrayidx1061 = getelementptr inbounds i32, i32* %765, i64 9
  %766 = load i32, i32* %arrayidx1061, align 4
  %add1062 = add i32 %766, %add1060
  store i32 %add1062, i32* %arrayidx1061, align 4
  %add1063 = add i32 %add1029, %add1062
  store i32 %add1063, i32* %T11011, align 4
  %767 = load i32, i32* %H, align 4
  %shr1065 = lshr i32 %767, 2
  %768 = load i32, i32* %H, align 4
  %shl1066 = shl i32 %768, 30
  %or1067 = or i32 %shr1065, %shl1066
  %769 = load i32, i32* %H, align 4
  %shr1068 = lshr i32 %769, 13
  %770 = load i32, i32* %H, align 4
  %shl1069 = shl i32 %770, 19
  %or1070 = or i32 %shr1068, %shl1069
  %xor1071 = xor i32 %or1067, %or1070
  %771 = load i32, i32* %H, align 4
  %shr1072 = lshr i32 %771, 22
  %772 = load i32, i32* %H, align 4
  %shl1073 = shl i32 %772, 10
  %or1074 = or i32 %shr1072, %shl1073
  %xor1075 = xor i32 %xor1071, %or1074
  %773 = load i32, i32* %H, align 4
  %774 = load i32, i32* %A, align 4
  %and1076 = and i32 %773, %774
  %775 = load i32, i32* %B, align 4
  %776 = load i32, i32* %H, align 4
  %777 = load i32, i32* %A, align 4
  %xor1077 = xor i32 %776, %777
  %and1078 = and i32 %775, %xor1077
  %xor1079 = xor i32 %and1076, %and1078
  %add1080 = add i32 %xor1075, %xor1079
  store i32 %add1080, i32* %T21064, align 4
  %778 = load i32, i32* %T11011, align 4
  %779 = load i32, i32* %C, align 4
  %add1081 = add i32 %779, %778
  store i32 %add1081, i32* %C, align 4
  %780 = load i32, i32* %T11011, align 4
  %781 = load i32, i32* %T21064, align 4
  %add1082 = add i32 %780, %781
  store i32 %add1082, i32* %G, align 4
  br label %do.end.1083

do.end.1083:                                      ; preds = %do.body.1010
  br label %do.body.1084

do.body.1084:                                     ; preds = %do.end.1083
  %782 = load i32, i32* %F, align 4
  %783 = load i32, i32* %C, align 4
  %shr1086 = lshr i32 %783, 6
  %784 = load i32, i32* %C, align 4
  %shl1087 = shl i32 %784, 26
  %or1088 = or i32 %shr1086, %shl1087
  %785 = load i32, i32* %C, align 4
  %shr1089 = lshr i32 %785, 11
  %786 = load i32, i32* %C, align 4
  %shl1090 = shl i32 %786, 21
  %or1091 = or i32 %shr1089, %shl1090
  %xor1092 = xor i32 %or1088, %or1091
  %787 = load i32, i32* %C, align 4
  %shr1093 = lshr i32 %787, 25
  %788 = load i32, i32* %C, align 4
  %shl1094 = shl i32 %788, 7
  %or1095 = or i32 %shr1093, %shl1094
  %xor1096 = xor i32 %xor1092, %or1095
  %add1097 = add i32 %782, %xor1096
  %789 = load i32, i32* %E, align 4
  %790 = load i32, i32* %C, align 4
  %791 = load i32, i32* %D, align 4
  %792 = load i32, i32* %E, align 4
  %xor1098 = xor i32 %791, %792
  %and1099 = and i32 %790, %xor1098
  %xor1100 = xor i32 %789, %and1099
  %add1101 = add i32 %add1097, %xor1100
  %793 = load i32*, i32** %k, align 8
  %arrayidx1102 = getelementptr inbounds i32, i32* %793, i64 10
  %794 = load i32, i32* %arrayidx1102, align 4
  %add1103 = add i32 %add1101, %794
  %795 = load i32*, i32** %data.addr, align 8
  %arrayidx1104 = getelementptr inbounds i32, i32* %795, i64 8
  %796 = load i32, i32* %arrayidx1104, align 4
  %shr1105 = lshr i32 %796, 17
  %797 = load i32*, i32** %data.addr, align 8
  %arrayidx1106 = getelementptr inbounds i32, i32* %797, i64 8
  %798 = load i32, i32* %arrayidx1106, align 4
  %shl1107 = shl i32 %798, 15
  %or1108 = or i32 %shr1105, %shl1107
  %799 = load i32*, i32** %data.addr, align 8
  %arrayidx1109 = getelementptr inbounds i32, i32* %799, i64 8
  %800 = load i32, i32* %arrayidx1109, align 4
  %shr1110 = lshr i32 %800, 19
  %801 = load i32*, i32** %data.addr, align 8
  %arrayidx1111 = getelementptr inbounds i32, i32* %801, i64 8
  %802 = load i32, i32* %arrayidx1111, align 4
  %shl1112 = shl i32 %802, 13
  %or1113 = or i32 %shr1110, %shl1112
  %xor1114 = xor i32 %or1108, %or1113
  %803 = load i32*, i32** %data.addr, align 8
  %arrayidx1115 = getelementptr inbounds i32, i32* %803, i64 8
  %804 = load i32, i32* %arrayidx1115, align 4
  %shr1116 = lshr i32 %804, 10
  %xor1117 = xor i32 %xor1114, %shr1116
  %805 = load i32*, i32** %data.addr, align 8
  %arrayidx1118 = getelementptr inbounds i32, i32* %805, i64 3
  %806 = load i32, i32* %arrayidx1118, align 4
  %add1119 = add i32 %xor1117, %806
  %807 = load i32*, i32** %data.addr, align 8
  %arrayidx1120 = getelementptr inbounds i32, i32* %807, i64 11
  %808 = load i32, i32* %arrayidx1120, align 4
  %shr1121 = lshr i32 %808, 7
  %809 = load i32*, i32** %data.addr, align 8
  %arrayidx1122 = getelementptr inbounds i32, i32* %809, i64 11
  %810 = load i32, i32* %arrayidx1122, align 4
  %shl1123 = shl i32 %810, 25
  %or1124 = or i32 %shr1121, %shl1123
  %811 = load i32*, i32** %data.addr, align 8
  %arrayidx1125 = getelementptr inbounds i32, i32* %811, i64 11
  %812 = load i32, i32* %arrayidx1125, align 4
  %shr1126 = lshr i32 %812, 18
  %813 = load i32*, i32** %data.addr, align 8
  %arrayidx1127 = getelementptr inbounds i32, i32* %813, i64 11
  %814 = load i32, i32* %arrayidx1127, align 4
  %shl1128 = shl i32 %814, 14
  %or1129 = or i32 %shr1126, %shl1128
  %xor1130 = xor i32 %or1124, %or1129
  %815 = load i32*, i32** %data.addr, align 8
  %arrayidx1131 = getelementptr inbounds i32, i32* %815, i64 11
  %816 = load i32, i32* %arrayidx1131, align 4
  %shr1132 = lshr i32 %816, 3
  %xor1133 = xor i32 %xor1130, %shr1132
  %add1134 = add i32 %add1119, %xor1133
  %817 = load i32*, i32** %data.addr, align 8
  %arrayidx1135 = getelementptr inbounds i32, i32* %817, i64 10
  %818 = load i32, i32* %arrayidx1135, align 4
  %add1136 = add i32 %818, %add1134
  store i32 %add1136, i32* %arrayidx1135, align 4
  %add1137 = add i32 %add1103, %add1136
  store i32 %add1137, i32* %T11085, align 4
  %819 = load i32, i32* %G, align 4
  %shr1139 = lshr i32 %819, 2
  %820 = load i32, i32* %G, align 4
  %shl1140 = shl i32 %820, 30
  %or1141 = or i32 %shr1139, %shl1140
  %821 = load i32, i32* %G, align 4
  %shr1142 = lshr i32 %821, 13
  %822 = load i32, i32* %G, align 4
  %shl1143 = shl i32 %822, 19
  %or1144 = or i32 %shr1142, %shl1143
  %xor1145 = xor i32 %or1141, %or1144
  %823 = load i32, i32* %G, align 4
  %shr1146 = lshr i32 %823, 22
  %824 = load i32, i32* %G, align 4
  %shl1147 = shl i32 %824, 10
  %or1148 = or i32 %shr1146, %shl1147
  %xor1149 = xor i32 %xor1145, %or1148
  %825 = load i32, i32* %G, align 4
  %826 = load i32, i32* %H, align 4
  %and1150 = and i32 %825, %826
  %827 = load i32, i32* %A, align 4
  %828 = load i32, i32* %G, align 4
  %829 = load i32, i32* %H, align 4
  %xor1151 = xor i32 %828, %829
  %and1152 = and i32 %827, %xor1151
  %xor1153 = xor i32 %and1150, %and1152
  %add1154 = add i32 %xor1149, %xor1153
  store i32 %add1154, i32* %T21138, align 4
  %830 = load i32, i32* %T11085, align 4
  %831 = load i32, i32* %B, align 4
  %add1155 = add i32 %831, %830
  store i32 %add1155, i32* %B, align 4
  %832 = load i32, i32* %T11085, align 4
  %833 = load i32, i32* %T21138, align 4
  %add1156 = add i32 %832, %833
  store i32 %add1156, i32* %F, align 4
  br label %do.end.1157

do.end.1157:                                      ; preds = %do.body.1084
  br label %do.body.1158

do.body.1158:                                     ; preds = %do.end.1157
  %834 = load i32, i32* %E, align 4
  %835 = load i32, i32* %B, align 4
  %shr1160 = lshr i32 %835, 6
  %836 = load i32, i32* %B, align 4
  %shl1161 = shl i32 %836, 26
  %or1162 = or i32 %shr1160, %shl1161
  %837 = load i32, i32* %B, align 4
  %shr1163 = lshr i32 %837, 11
  %838 = load i32, i32* %B, align 4
  %shl1164 = shl i32 %838, 21
  %or1165 = or i32 %shr1163, %shl1164
  %xor1166 = xor i32 %or1162, %or1165
  %839 = load i32, i32* %B, align 4
  %shr1167 = lshr i32 %839, 25
  %840 = load i32, i32* %B, align 4
  %shl1168 = shl i32 %840, 7
  %or1169 = or i32 %shr1167, %shl1168
  %xor1170 = xor i32 %xor1166, %or1169
  %add1171 = add i32 %834, %xor1170
  %841 = load i32, i32* %D, align 4
  %842 = load i32, i32* %B, align 4
  %843 = load i32, i32* %C, align 4
  %844 = load i32, i32* %D, align 4
  %xor1172 = xor i32 %843, %844
  %and1173 = and i32 %842, %xor1172
  %xor1174 = xor i32 %841, %and1173
  %add1175 = add i32 %add1171, %xor1174
  %845 = load i32*, i32** %k, align 8
  %arrayidx1176 = getelementptr inbounds i32, i32* %845, i64 11
  %846 = load i32, i32* %arrayidx1176, align 4
  %add1177 = add i32 %add1175, %846
  %847 = load i32*, i32** %data.addr, align 8
  %arrayidx1178 = getelementptr inbounds i32, i32* %847, i64 9
  %848 = load i32, i32* %arrayidx1178, align 4
  %shr1179 = lshr i32 %848, 17
  %849 = load i32*, i32** %data.addr, align 8
  %arrayidx1180 = getelementptr inbounds i32, i32* %849, i64 9
  %850 = load i32, i32* %arrayidx1180, align 4
  %shl1181 = shl i32 %850, 15
  %or1182 = or i32 %shr1179, %shl1181
  %851 = load i32*, i32** %data.addr, align 8
  %arrayidx1183 = getelementptr inbounds i32, i32* %851, i64 9
  %852 = load i32, i32* %arrayidx1183, align 4
  %shr1184 = lshr i32 %852, 19
  %853 = load i32*, i32** %data.addr, align 8
  %arrayidx1185 = getelementptr inbounds i32, i32* %853, i64 9
  %854 = load i32, i32* %arrayidx1185, align 4
  %shl1186 = shl i32 %854, 13
  %or1187 = or i32 %shr1184, %shl1186
  %xor1188 = xor i32 %or1182, %or1187
  %855 = load i32*, i32** %data.addr, align 8
  %arrayidx1189 = getelementptr inbounds i32, i32* %855, i64 9
  %856 = load i32, i32* %arrayidx1189, align 4
  %shr1190 = lshr i32 %856, 10
  %xor1191 = xor i32 %xor1188, %shr1190
  %857 = load i32*, i32** %data.addr, align 8
  %arrayidx1192 = getelementptr inbounds i32, i32* %857, i64 4
  %858 = load i32, i32* %arrayidx1192, align 4
  %add1193 = add i32 %xor1191, %858
  %859 = load i32*, i32** %data.addr, align 8
  %arrayidx1194 = getelementptr inbounds i32, i32* %859, i64 12
  %860 = load i32, i32* %arrayidx1194, align 4
  %shr1195 = lshr i32 %860, 7
  %861 = load i32*, i32** %data.addr, align 8
  %arrayidx1196 = getelementptr inbounds i32, i32* %861, i64 12
  %862 = load i32, i32* %arrayidx1196, align 4
  %shl1197 = shl i32 %862, 25
  %or1198 = or i32 %shr1195, %shl1197
  %863 = load i32*, i32** %data.addr, align 8
  %arrayidx1199 = getelementptr inbounds i32, i32* %863, i64 12
  %864 = load i32, i32* %arrayidx1199, align 4
  %shr1200 = lshr i32 %864, 18
  %865 = load i32*, i32** %data.addr, align 8
  %arrayidx1201 = getelementptr inbounds i32, i32* %865, i64 12
  %866 = load i32, i32* %arrayidx1201, align 4
  %shl1202 = shl i32 %866, 14
  %or1203 = or i32 %shr1200, %shl1202
  %xor1204 = xor i32 %or1198, %or1203
  %867 = load i32*, i32** %data.addr, align 8
  %arrayidx1205 = getelementptr inbounds i32, i32* %867, i64 12
  %868 = load i32, i32* %arrayidx1205, align 4
  %shr1206 = lshr i32 %868, 3
  %xor1207 = xor i32 %xor1204, %shr1206
  %add1208 = add i32 %add1193, %xor1207
  %869 = load i32*, i32** %data.addr, align 8
  %arrayidx1209 = getelementptr inbounds i32, i32* %869, i64 11
  %870 = load i32, i32* %arrayidx1209, align 4
  %add1210 = add i32 %870, %add1208
  store i32 %add1210, i32* %arrayidx1209, align 4
  %add1211 = add i32 %add1177, %add1210
  store i32 %add1211, i32* %T11159, align 4
  %871 = load i32, i32* %F, align 4
  %shr1213 = lshr i32 %871, 2
  %872 = load i32, i32* %F, align 4
  %shl1214 = shl i32 %872, 30
  %or1215 = or i32 %shr1213, %shl1214
  %873 = load i32, i32* %F, align 4
  %shr1216 = lshr i32 %873, 13
  %874 = load i32, i32* %F, align 4
  %shl1217 = shl i32 %874, 19
  %or1218 = or i32 %shr1216, %shl1217
  %xor1219 = xor i32 %or1215, %or1218
  %875 = load i32, i32* %F, align 4
  %shr1220 = lshr i32 %875, 22
  %876 = load i32, i32* %F, align 4
  %shl1221 = shl i32 %876, 10
  %or1222 = or i32 %shr1220, %shl1221
  %xor1223 = xor i32 %xor1219, %or1222
  %877 = load i32, i32* %F, align 4
  %878 = load i32, i32* %G, align 4
  %and1224 = and i32 %877, %878
  %879 = load i32, i32* %H, align 4
  %880 = load i32, i32* %F, align 4
  %881 = load i32, i32* %G, align 4
  %xor1225 = xor i32 %880, %881
  %and1226 = and i32 %879, %xor1225
  %xor1227 = xor i32 %and1224, %and1226
  %add1228 = add i32 %xor1223, %xor1227
  store i32 %add1228, i32* %T21212, align 4
  %882 = load i32, i32* %T11159, align 4
  %883 = load i32, i32* %A, align 4
  %add1229 = add i32 %883, %882
  store i32 %add1229, i32* %A, align 4
  %884 = load i32, i32* %T11159, align 4
  %885 = load i32, i32* %T21212, align 4
  %add1230 = add i32 %884, %885
  store i32 %add1230, i32* %E, align 4
  br label %do.end.1231

do.end.1231:                                      ; preds = %do.body.1158
  br label %do.body.1232

do.body.1232:                                     ; preds = %do.end.1231
  %886 = load i32, i32* %D, align 4
  %887 = load i32, i32* %A, align 4
  %shr1234 = lshr i32 %887, 6
  %888 = load i32, i32* %A, align 4
  %shl1235 = shl i32 %888, 26
  %or1236 = or i32 %shr1234, %shl1235
  %889 = load i32, i32* %A, align 4
  %shr1237 = lshr i32 %889, 11
  %890 = load i32, i32* %A, align 4
  %shl1238 = shl i32 %890, 21
  %or1239 = or i32 %shr1237, %shl1238
  %xor1240 = xor i32 %or1236, %or1239
  %891 = load i32, i32* %A, align 4
  %shr1241 = lshr i32 %891, 25
  %892 = load i32, i32* %A, align 4
  %shl1242 = shl i32 %892, 7
  %or1243 = or i32 %shr1241, %shl1242
  %xor1244 = xor i32 %xor1240, %or1243
  %add1245 = add i32 %886, %xor1244
  %893 = load i32, i32* %C, align 4
  %894 = load i32, i32* %A, align 4
  %895 = load i32, i32* %B, align 4
  %896 = load i32, i32* %C, align 4
  %xor1246 = xor i32 %895, %896
  %and1247 = and i32 %894, %xor1246
  %xor1248 = xor i32 %893, %and1247
  %add1249 = add i32 %add1245, %xor1248
  %897 = load i32*, i32** %k, align 8
  %arrayidx1250 = getelementptr inbounds i32, i32* %897, i64 12
  %898 = load i32, i32* %arrayidx1250, align 4
  %add1251 = add i32 %add1249, %898
  %899 = load i32*, i32** %data.addr, align 8
  %arrayidx1252 = getelementptr inbounds i32, i32* %899, i64 10
  %900 = load i32, i32* %arrayidx1252, align 4
  %shr1253 = lshr i32 %900, 17
  %901 = load i32*, i32** %data.addr, align 8
  %arrayidx1254 = getelementptr inbounds i32, i32* %901, i64 10
  %902 = load i32, i32* %arrayidx1254, align 4
  %shl1255 = shl i32 %902, 15
  %or1256 = or i32 %shr1253, %shl1255
  %903 = load i32*, i32** %data.addr, align 8
  %arrayidx1257 = getelementptr inbounds i32, i32* %903, i64 10
  %904 = load i32, i32* %arrayidx1257, align 4
  %shr1258 = lshr i32 %904, 19
  %905 = load i32*, i32** %data.addr, align 8
  %arrayidx1259 = getelementptr inbounds i32, i32* %905, i64 10
  %906 = load i32, i32* %arrayidx1259, align 4
  %shl1260 = shl i32 %906, 13
  %or1261 = or i32 %shr1258, %shl1260
  %xor1262 = xor i32 %or1256, %or1261
  %907 = load i32*, i32** %data.addr, align 8
  %arrayidx1263 = getelementptr inbounds i32, i32* %907, i64 10
  %908 = load i32, i32* %arrayidx1263, align 4
  %shr1264 = lshr i32 %908, 10
  %xor1265 = xor i32 %xor1262, %shr1264
  %909 = load i32*, i32** %data.addr, align 8
  %arrayidx1266 = getelementptr inbounds i32, i32* %909, i64 5
  %910 = load i32, i32* %arrayidx1266, align 4
  %add1267 = add i32 %xor1265, %910
  %911 = load i32*, i32** %data.addr, align 8
  %arrayidx1268 = getelementptr inbounds i32, i32* %911, i64 13
  %912 = load i32, i32* %arrayidx1268, align 4
  %shr1269 = lshr i32 %912, 7
  %913 = load i32*, i32** %data.addr, align 8
  %arrayidx1270 = getelementptr inbounds i32, i32* %913, i64 13
  %914 = load i32, i32* %arrayidx1270, align 4
  %shl1271 = shl i32 %914, 25
  %or1272 = or i32 %shr1269, %shl1271
  %915 = load i32*, i32** %data.addr, align 8
  %arrayidx1273 = getelementptr inbounds i32, i32* %915, i64 13
  %916 = load i32, i32* %arrayidx1273, align 4
  %shr1274 = lshr i32 %916, 18
  %917 = load i32*, i32** %data.addr, align 8
  %arrayidx1275 = getelementptr inbounds i32, i32* %917, i64 13
  %918 = load i32, i32* %arrayidx1275, align 4
  %shl1276 = shl i32 %918, 14
  %or1277 = or i32 %shr1274, %shl1276
  %xor1278 = xor i32 %or1272, %or1277
  %919 = load i32*, i32** %data.addr, align 8
  %arrayidx1279 = getelementptr inbounds i32, i32* %919, i64 13
  %920 = load i32, i32* %arrayidx1279, align 4
  %shr1280 = lshr i32 %920, 3
  %xor1281 = xor i32 %xor1278, %shr1280
  %add1282 = add i32 %add1267, %xor1281
  %921 = load i32*, i32** %data.addr, align 8
  %arrayidx1283 = getelementptr inbounds i32, i32* %921, i64 12
  %922 = load i32, i32* %arrayidx1283, align 4
  %add1284 = add i32 %922, %add1282
  store i32 %add1284, i32* %arrayidx1283, align 4
  %add1285 = add i32 %add1251, %add1284
  store i32 %add1285, i32* %T11233, align 4
  %923 = load i32, i32* %E, align 4
  %shr1287 = lshr i32 %923, 2
  %924 = load i32, i32* %E, align 4
  %shl1288 = shl i32 %924, 30
  %or1289 = or i32 %shr1287, %shl1288
  %925 = load i32, i32* %E, align 4
  %shr1290 = lshr i32 %925, 13
  %926 = load i32, i32* %E, align 4
  %shl1291 = shl i32 %926, 19
  %or1292 = or i32 %shr1290, %shl1291
  %xor1293 = xor i32 %or1289, %or1292
  %927 = load i32, i32* %E, align 4
  %shr1294 = lshr i32 %927, 22
  %928 = load i32, i32* %E, align 4
  %shl1295 = shl i32 %928, 10
  %or1296 = or i32 %shr1294, %shl1295
  %xor1297 = xor i32 %xor1293, %or1296
  %929 = load i32, i32* %E, align 4
  %930 = load i32, i32* %F, align 4
  %and1298 = and i32 %929, %930
  %931 = load i32, i32* %G, align 4
  %932 = load i32, i32* %E, align 4
  %933 = load i32, i32* %F, align 4
  %xor1299 = xor i32 %932, %933
  %and1300 = and i32 %931, %xor1299
  %xor1301 = xor i32 %and1298, %and1300
  %add1302 = add i32 %xor1297, %xor1301
  store i32 %add1302, i32* %T21286, align 4
  %934 = load i32, i32* %T11233, align 4
  %935 = load i32, i32* %H, align 4
  %add1303 = add i32 %935, %934
  store i32 %add1303, i32* %H, align 4
  %936 = load i32, i32* %T11233, align 4
  %937 = load i32, i32* %T21286, align 4
  %add1304 = add i32 %936, %937
  store i32 %add1304, i32* %D, align 4
  br label %do.end.1305

do.end.1305:                                      ; preds = %do.body.1232
  br label %do.body.1306

do.body.1306:                                     ; preds = %do.end.1305
  %938 = load i32, i32* %C, align 4
  %939 = load i32, i32* %H, align 4
  %shr1308 = lshr i32 %939, 6
  %940 = load i32, i32* %H, align 4
  %shl1309 = shl i32 %940, 26
  %or1310 = or i32 %shr1308, %shl1309
  %941 = load i32, i32* %H, align 4
  %shr1311 = lshr i32 %941, 11
  %942 = load i32, i32* %H, align 4
  %shl1312 = shl i32 %942, 21
  %or1313 = or i32 %shr1311, %shl1312
  %xor1314 = xor i32 %or1310, %or1313
  %943 = load i32, i32* %H, align 4
  %shr1315 = lshr i32 %943, 25
  %944 = load i32, i32* %H, align 4
  %shl1316 = shl i32 %944, 7
  %or1317 = or i32 %shr1315, %shl1316
  %xor1318 = xor i32 %xor1314, %or1317
  %add1319 = add i32 %938, %xor1318
  %945 = load i32, i32* %B, align 4
  %946 = load i32, i32* %H, align 4
  %947 = load i32, i32* %A, align 4
  %948 = load i32, i32* %B, align 4
  %xor1320 = xor i32 %947, %948
  %and1321 = and i32 %946, %xor1320
  %xor1322 = xor i32 %945, %and1321
  %add1323 = add i32 %add1319, %xor1322
  %949 = load i32*, i32** %k, align 8
  %arrayidx1324 = getelementptr inbounds i32, i32* %949, i64 13
  %950 = load i32, i32* %arrayidx1324, align 4
  %add1325 = add i32 %add1323, %950
  %951 = load i32*, i32** %data.addr, align 8
  %arrayidx1326 = getelementptr inbounds i32, i32* %951, i64 11
  %952 = load i32, i32* %arrayidx1326, align 4
  %shr1327 = lshr i32 %952, 17
  %953 = load i32*, i32** %data.addr, align 8
  %arrayidx1328 = getelementptr inbounds i32, i32* %953, i64 11
  %954 = load i32, i32* %arrayidx1328, align 4
  %shl1329 = shl i32 %954, 15
  %or1330 = or i32 %shr1327, %shl1329
  %955 = load i32*, i32** %data.addr, align 8
  %arrayidx1331 = getelementptr inbounds i32, i32* %955, i64 11
  %956 = load i32, i32* %arrayidx1331, align 4
  %shr1332 = lshr i32 %956, 19
  %957 = load i32*, i32** %data.addr, align 8
  %arrayidx1333 = getelementptr inbounds i32, i32* %957, i64 11
  %958 = load i32, i32* %arrayidx1333, align 4
  %shl1334 = shl i32 %958, 13
  %or1335 = or i32 %shr1332, %shl1334
  %xor1336 = xor i32 %or1330, %or1335
  %959 = load i32*, i32** %data.addr, align 8
  %arrayidx1337 = getelementptr inbounds i32, i32* %959, i64 11
  %960 = load i32, i32* %arrayidx1337, align 4
  %shr1338 = lshr i32 %960, 10
  %xor1339 = xor i32 %xor1336, %shr1338
  %961 = load i32*, i32** %data.addr, align 8
  %arrayidx1340 = getelementptr inbounds i32, i32* %961, i64 6
  %962 = load i32, i32* %arrayidx1340, align 4
  %add1341 = add i32 %xor1339, %962
  %963 = load i32*, i32** %data.addr, align 8
  %arrayidx1342 = getelementptr inbounds i32, i32* %963, i64 14
  %964 = load i32, i32* %arrayidx1342, align 4
  %shr1343 = lshr i32 %964, 7
  %965 = load i32*, i32** %data.addr, align 8
  %arrayidx1344 = getelementptr inbounds i32, i32* %965, i64 14
  %966 = load i32, i32* %arrayidx1344, align 4
  %shl1345 = shl i32 %966, 25
  %or1346 = or i32 %shr1343, %shl1345
  %967 = load i32*, i32** %data.addr, align 8
  %arrayidx1347 = getelementptr inbounds i32, i32* %967, i64 14
  %968 = load i32, i32* %arrayidx1347, align 4
  %shr1348 = lshr i32 %968, 18
  %969 = load i32*, i32** %data.addr, align 8
  %arrayidx1349 = getelementptr inbounds i32, i32* %969, i64 14
  %970 = load i32, i32* %arrayidx1349, align 4
  %shl1350 = shl i32 %970, 14
  %or1351 = or i32 %shr1348, %shl1350
  %xor1352 = xor i32 %or1346, %or1351
  %971 = load i32*, i32** %data.addr, align 8
  %arrayidx1353 = getelementptr inbounds i32, i32* %971, i64 14
  %972 = load i32, i32* %arrayidx1353, align 4
  %shr1354 = lshr i32 %972, 3
  %xor1355 = xor i32 %xor1352, %shr1354
  %add1356 = add i32 %add1341, %xor1355
  %973 = load i32*, i32** %data.addr, align 8
  %arrayidx1357 = getelementptr inbounds i32, i32* %973, i64 13
  %974 = load i32, i32* %arrayidx1357, align 4
  %add1358 = add i32 %974, %add1356
  store i32 %add1358, i32* %arrayidx1357, align 4
  %add1359 = add i32 %add1325, %add1358
  store i32 %add1359, i32* %T11307, align 4
  %975 = load i32, i32* %D, align 4
  %shr1361 = lshr i32 %975, 2
  %976 = load i32, i32* %D, align 4
  %shl1362 = shl i32 %976, 30
  %or1363 = or i32 %shr1361, %shl1362
  %977 = load i32, i32* %D, align 4
  %shr1364 = lshr i32 %977, 13
  %978 = load i32, i32* %D, align 4
  %shl1365 = shl i32 %978, 19
  %or1366 = or i32 %shr1364, %shl1365
  %xor1367 = xor i32 %or1363, %or1366
  %979 = load i32, i32* %D, align 4
  %shr1368 = lshr i32 %979, 22
  %980 = load i32, i32* %D, align 4
  %shl1369 = shl i32 %980, 10
  %or1370 = or i32 %shr1368, %shl1369
  %xor1371 = xor i32 %xor1367, %or1370
  %981 = load i32, i32* %D, align 4
  %982 = load i32, i32* %E, align 4
  %and1372 = and i32 %981, %982
  %983 = load i32, i32* %F, align 4
  %984 = load i32, i32* %D, align 4
  %985 = load i32, i32* %E, align 4
  %xor1373 = xor i32 %984, %985
  %and1374 = and i32 %983, %xor1373
  %xor1375 = xor i32 %and1372, %and1374
  %add1376 = add i32 %xor1371, %xor1375
  store i32 %add1376, i32* %T21360, align 4
  %986 = load i32, i32* %T11307, align 4
  %987 = load i32, i32* %G, align 4
  %add1377 = add i32 %987, %986
  store i32 %add1377, i32* %G, align 4
  %988 = load i32, i32* %T11307, align 4
  %989 = load i32, i32* %T21360, align 4
  %add1378 = add i32 %988, %989
  store i32 %add1378, i32* %C, align 4
  br label %do.end.1379

do.end.1379:                                      ; preds = %do.body.1306
  br label %do.body.1380

do.body.1380:                                     ; preds = %do.end.1379
  %990 = load i32, i32* %B, align 4
  %991 = load i32, i32* %G, align 4
  %shr1382 = lshr i32 %991, 6
  %992 = load i32, i32* %G, align 4
  %shl1383 = shl i32 %992, 26
  %or1384 = or i32 %shr1382, %shl1383
  %993 = load i32, i32* %G, align 4
  %shr1385 = lshr i32 %993, 11
  %994 = load i32, i32* %G, align 4
  %shl1386 = shl i32 %994, 21
  %or1387 = or i32 %shr1385, %shl1386
  %xor1388 = xor i32 %or1384, %or1387
  %995 = load i32, i32* %G, align 4
  %shr1389 = lshr i32 %995, 25
  %996 = load i32, i32* %G, align 4
  %shl1390 = shl i32 %996, 7
  %or1391 = or i32 %shr1389, %shl1390
  %xor1392 = xor i32 %xor1388, %or1391
  %add1393 = add i32 %990, %xor1392
  %997 = load i32, i32* %A, align 4
  %998 = load i32, i32* %G, align 4
  %999 = load i32, i32* %H, align 4
  %1000 = load i32, i32* %A, align 4
  %xor1394 = xor i32 %999, %1000
  %and1395 = and i32 %998, %xor1394
  %xor1396 = xor i32 %997, %and1395
  %add1397 = add i32 %add1393, %xor1396
  %1001 = load i32*, i32** %k, align 8
  %arrayidx1398 = getelementptr inbounds i32, i32* %1001, i64 14
  %1002 = load i32, i32* %arrayidx1398, align 4
  %add1399 = add i32 %add1397, %1002
  %1003 = load i32*, i32** %data.addr, align 8
  %arrayidx1400 = getelementptr inbounds i32, i32* %1003, i64 12
  %1004 = load i32, i32* %arrayidx1400, align 4
  %shr1401 = lshr i32 %1004, 17
  %1005 = load i32*, i32** %data.addr, align 8
  %arrayidx1402 = getelementptr inbounds i32, i32* %1005, i64 12
  %1006 = load i32, i32* %arrayidx1402, align 4
  %shl1403 = shl i32 %1006, 15
  %or1404 = or i32 %shr1401, %shl1403
  %1007 = load i32*, i32** %data.addr, align 8
  %arrayidx1405 = getelementptr inbounds i32, i32* %1007, i64 12
  %1008 = load i32, i32* %arrayidx1405, align 4
  %shr1406 = lshr i32 %1008, 19
  %1009 = load i32*, i32** %data.addr, align 8
  %arrayidx1407 = getelementptr inbounds i32, i32* %1009, i64 12
  %1010 = load i32, i32* %arrayidx1407, align 4
  %shl1408 = shl i32 %1010, 13
  %or1409 = or i32 %shr1406, %shl1408
  %xor1410 = xor i32 %or1404, %or1409
  %1011 = load i32*, i32** %data.addr, align 8
  %arrayidx1411 = getelementptr inbounds i32, i32* %1011, i64 12
  %1012 = load i32, i32* %arrayidx1411, align 4
  %shr1412 = lshr i32 %1012, 10
  %xor1413 = xor i32 %xor1410, %shr1412
  %1013 = load i32*, i32** %data.addr, align 8
  %arrayidx1414 = getelementptr inbounds i32, i32* %1013, i64 7
  %1014 = load i32, i32* %arrayidx1414, align 4
  %add1415 = add i32 %xor1413, %1014
  %1015 = load i32*, i32** %data.addr, align 8
  %arrayidx1416 = getelementptr inbounds i32, i32* %1015, i64 15
  %1016 = load i32, i32* %arrayidx1416, align 4
  %shr1417 = lshr i32 %1016, 7
  %1017 = load i32*, i32** %data.addr, align 8
  %arrayidx1418 = getelementptr inbounds i32, i32* %1017, i64 15
  %1018 = load i32, i32* %arrayidx1418, align 4
  %shl1419 = shl i32 %1018, 25
  %or1420 = or i32 %shr1417, %shl1419
  %1019 = load i32*, i32** %data.addr, align 8
  %arrayidx1421 = getelementptr inbounds i32, i32* %1019, i64 15
  %1020 = load i32, i32* %arrayidx1421, align 4
  %shr1422 = lshr i32 %1020, 18
  %1021 = load i32*, i32** %data.addr, align 8
  %arrayidx1423 = getelementptr inbounds i32, i32* %1021, i64 15
  %1022 = load i32, i32* %arrayidx1423, align 4
  %shl1424 = shl i32 %1022, 14
  %or1425 = or i32 %shr1422, %shl1424
  %xor1426 = xor i32 %or1420, %or1425
  %1023 = load i32*, i32** %data.addr, align 8
  %arrayidx1427 = getelementptr inbounds i32, i32* %1023, i64 15
  %1024 = load i32, i32* %arrayidx1427, align 4
  %shr1428 = lshr i32 %1024, 3
  %xor1429 = xor i32 %xor1426, %shr1428
  %add1430 = add i32 %add1415, %xor1429
  %1025 = load i32*, i32** %data.addr, align 8
  %arrayidx1431 = getelementptr inbounds i32, i32* %1025, i64 14
  %1026 = load i32, i32* %arrayidx1431, align 4
  %add1432 = add i32 %1026, %add1430
  store i32 %add1432, i32* %arrayidx1431, align 4
  %add1433 = add i32 %add1399, %add1432
  store i32 %add1433, i32* %T11381, align 4
  %1027 = load i32, i32* %C, align 4
  %shr1435 = lshr i32 %1027, 2
  %1028 = load i32, i32* %C, align 4
  %shl1436 = shl i32 %1028, 30
  %or1437 = or i32 %shr1435, %shl1436
  %1029 = load i32, i32* %C, align 4
  %shr1438 = lshr i32 %1029, 13
  %1030 = load i32, i32* %C, align 4
  %shl1439 = shl i32 %1030, 19
  %or1440 = or i32 %shr1438, %shl1439
  %xor1441 = xor i32 %or1437, %or1440
  %1031 = load i32, i32* %C, align 4
  %shr1442 = lshr i32 %1031, 22
  %1032 = load i32, i32* %C, align 4
  %shl1443 = shl i32 %1032, 10
  %or1444 = or i32 %shr1442, %shl1443
  %xor1445 = xor i32 %xor1441, %or1444
  %1033 = load i32, i32* %C, align 4
  %1034 = load i32, i32* %D, align 4
  %and1446 = and i32 %1033, %1034
  %1035 = load i32, i32* %E, align 4
  %1036 = load i32, i32* %C, align 4
  %1037 = load i32, i32* %D, align 4
  %xor1447 = xor i32 %1036, %1037
  %and1448 = and i32 %1035, %xor1447
  %xor1449 = xor i32 %and1446, %and1448
  %add1450 = add i32 %xor1445, %xor1449
  store i32 %add1450, i32* %T21434, align 4
  %1038 = load i32, i32* %T11381, align 4
  %1039 = load i32, i32* %F, align 4
  %add1451 = add i32 %1039, %1038
  store i32 %add1451, i32* %F, align 4
  %1040 = load i32, i32* %T11381, align 4
  %1041 = load i32, i32* %T21434, align 4
  %add1452 = add i32 %1040, %1041
  store i32 %add1452, i32* %B, align 4
  br label %do.end.1453

do.end.1453:                                      ; preds = %do.body.1380
  br label %do.body.1454

do.body.1454:                                     ; preds = %do.end.1453
  %1042 = load i32, i32* %A, align 4
  %1043 = load i32, i32* %F, align 4
  %shr1456 = lshr i32 %1043, 6
  %1044 = load i32, i32* %F, align 4
  %shl1457 = shl i32 %1044, 26
  %or1458 = or i32 %shr1456, %shl1457
  %1045 = load i32, i32* %F, align 4
  %shr1459 = lshr i32 %1045, 11
  %1046 = load i32, i32* %F, align 4
  %shl1460 = shl i32 %1046, 21
  %or1461 = or i32 %shr1459, %shl1460
  %xor1462 = xor i32 %or1458, %or1461
  %1047 = load i32, i32* %F, align 4
  %shr1463 = lshr i32 %1047, 25
  %1048 = load i32, i32* %F, align 4
  %shl1464 = shl i32 %1048, 7
  %or1465 = or i32 %shr1463, %shl1464
  %xor1466 = xor i32 %xor1462, %or1465
  %add1467 = add i32 %1042, %xor1466
  %1049 = load i32, i32* %H, align 4
  %1050 = load i32, i32* %F, align 4
  %1051 = load i32, i32* %G, align 4
  %1052 = load i32, i32* %H, align 4
  %xor1468 = xor i32 %1051, %1052
  %and1469 = and i32 %1050, %xor1468
  %xor1470 = xor i32 %1049, %and1469
  %add1471 = add i32 %add1467, %xor1470
  %1053 = load i32*, i32** %k, align 8
  %arrayidx1472 = getelementptr inbounds i32, i32* %1053, i64 15
  %1054 = load i32, i32* %arrayidx1472, align 4
  %add1473 = add i32 %add1471, %1054
  %1055 = load i32*, i32** %data.addr, align 8
  %arrayidx1474 = getelementptr inbounds i32, i32* %1055, i64 13
  %1056 = load i32, i32* %arrayidx1474, align 4
  %shr1475 = lshr i32 %1056, 17
  %1057 = load i32*, i32** %data.addr, align 8
  %arrayidx1476 = getelementptr inbounds i32, i32* %1057, i64 13
  %1058 = load i32, i32* %arrayidx1476, align 4
  %shl1477 = shl i32 %1058, 15
  %or1478 = or i32 %shr1475, %shl1477
  %1059 = load i32*, i32** %data.addr, align 8
  %arrayidx1479 = getelementptr inbounds i32, i32* %1059, i64 13
  %1060 = load i32, i32* %arrayidx1479, align 4
  %shr1480 = lshr i32 %1060, 19
  %1061 = load i32*, i32** %data.addr, align 8
  %arrayidx1481 = getelementptr inbounds i32, i32* %1061, i64 13
  %1062 = load i32, i32* %arrayidx1481, align 4
  %shl1482 = shl i32 %1062, 13
  %or1483 = or i32 %shr1480, %shl1482
  %xor1484 = xor i32 %or1478, %or1483
  %1063 = load i32*, i32** %data.addr, align 8
  %arrayidx1485 = getelementptr inbounds i32, i32* %1063, i64 13
  %1064 = load i32, i32* %arrayidx1485, align 4
  %shr1486 = lshr i32 %1064, 10
  %xor1487 = xor i32 %xor1484, %shr1486
  %1065 = load i32*, i32** %data.addr, align 8
  %arrayidx1488 = getelementptr inbounds i32, i32* %1065, i64 8
  %1066 = load i32, i32* %arrayidx1488, align 4
  %add1489 = add i32 %xor1487, %1066
  %1067 = load i32*, i32** %data.addr, align 8
  %arrayidx1490 = getelementptr inbounds i32, i32* %1067, i64 0
  %1068 = load i32, i32* %arrayidx1490, align 4
  %shr1491 = lshr i32 %1068, 7
  %1069 = load i32*, i32** %data.addr, align 8
  %arrayidx1492 = getelementptr inbounds i32, i32* %1069, i64 0
  %1070 = load i32, i32* %arrayidx1492, align 4
  %shl1493 = shl i32 %1070, 25
  %or1494 = or i32 %shr1491, %shl1493
  %1071 = load i32*, i32** %data.addr, align 8
  %arrayidx1495 = getelementptr inbounds i32, i32* %1071, i64 0
  %1072 = load i32, i32* %arrayidx1495, align 4
  %shr1496 = lshr i32 %1072, 18
  %1073 = load i32*, i32** %data.addr, align 8
  %arrayidx1497 = getelementptr inbounds i32, i32* %1073, i64 0
  %1074 = load i32, i32* %arrayidx1497, align 4
  %shl1498 = shl i32 %1074, 14
  %or1499 = or i32 %shr1496, %shl1498
  %xor1500 = xor i32 %or1494, %or1499
  %1075 = load i32*, i32** %data.addr, align 8
  %arrayidx1501 = getelementptr inbounds i32, i32* %1075, i64 0
  %1076 = load i32, i32* %arrayidx1501, align 4
  %shr1502 = lshr i32 %1076, 3
  %xor1503 = xor i32 %xor1500, %shr1502
  %add1504 = add i32 %add1489, %xor1503
  %1077 = load i32*, i32** %data.addr, align 8
  %arrayidx1505 = getelementptr inbounds i32, i32* %1077, i64 15
  %1078 = load i32, i32* %arrayidx1505, align 4
  %add1506 = add i32 %1078, %add1504
  store i32 %add1506, i32* %arrayidx1505, align 4
  %add1507 = add i32 %add1473, %add1506
  store i32 %add1507, i32* %T11455, align 4
  %1079 = load i32, i32* %B, align 4
  %shr1509 = lshr i32 %1079, 2
  %1080 = load i32, i32* %B, align 4
  %shl1510 = shl i32 %1080, 30
  %or1511 = or i32 %shr1509, %shl1510
  %1081 = load i32, i32* %B, align 4
  %shr1512 = lshr i32 %1081, 13
  %1082 = load i32, i32* %B, align 4
  %shl1513 = shl i32 %1082, 19
  %or1514 = or i32 %shr1512, %shl1513
  %xor1515 = xor i32 %or1511, %or1514
  %1083 = load i32, i32* %B, align 4
  %shr1516 = lshr i32 %1083, 22
  %1084 = load i32, i32* %B, align 4
  %shl1517 = shl i32 %1084, 10
  %or1518 = or i32 %shr1516, %shl1517
  %xor1519 = xor i32 %xor1515, %or1518
  %1085 = load i32, i32* %B, align 4
  %1086 = load i32, i32* %C, align 4
  %and1520 = and i32 %1085, %1086
  %1087 = load i32, i32* %D, align 4
  %1088 = load i32, i32* %B, align 4
  %1089 = load i32, i32* %C, align 4
  %xor1521 = xor i32 %1088, %1089
  %and1522 = and i32 %1087, %xor1521
  %xor1523 = xor i32 %and1520, %and1522
  %add1524 = add i32 %xor1519, %xor1523
  store i32 %add1524, i32* %T21508, align 4
  %1090 = load i32, i32* %T11455, align 4
  %1091 = load i32, i32* %E, align 4
  %add1525 = add i32 %1091, %1090
  store i32 %add1525, i32* %E, align 4
  %1092 = load i32, i32* %T11455, align 4
  %1093 = load i32, i32* %T21508, align 4
  %add1526 = add i32 %1092, %1093
  store i32 %add1526, i32* %A, align 4
  br label %do.end.1527

do.end.1527:                                      ; preds = %do.body.1454
  br label %for.inc.1528

for.inc.1528:                                     ; preds = %do.end.1527
  %1094 = load i8, i8* %i, align 1
  %conv1529 = zext i8 %1094 to i32
  %add1530 = add nsw i32 %conv1529, 16
  %conv1531 = trunc i32 %add1530 to i8
  store i8 %conv1531, i8* %i, align 1
  %1095 = load i32*, i32** %k, align 8
  %add.ptr1532 = getelementptr inbounds i32, i32* %1095, i64 16
  store i32* %add.ptr1532, i32** %k, align 8
  br label %for.cond.339

for.end.1533:                                     ; preds = %for.cond.339
  %1096 = load i32, i32* %A, align 4
  %1097 = load i32*, i32** %state.addr, align 8
  %arrayidx1534 = getelementptr inbounds i32, i32* %1097, i64 0
  %1098 = load i32, i32* %arrayidx1534, align 4
  %add1535 = add i32 %1098, %1096
  store i32 %add1535, i32* %arrayidx1534, align 4
  %1099 = load i32, i32* %B, align 4
  %1100 = load i32*, i32** %state.addr, align 8
  %arrayidx1536 = getelementptr inbounds i32, i32* %1100, i64 1
  %1101 = load i32, i32* %arrayidx1536, align 4
  %add1537 = add i32 %1101, %1099
  store i32 %add1537, i32* %arrayidx1536, align 4
  %1102 = load i32, i32* %C, align 4
  %1103 = load i32*, i32** %state.addr, align 8
  %arrayidx1538 = getelementptr inbounds i32, i32* %1103, i64 2
  %1104 = load i32, i32* %arrayidx1538, align 4
  %add1539 = add i32 %1104, %1102
  store i32 %add1539, i32* %arrayidx1538, align 4
  %1105 = load i32, i32* %D, align 4
  %1106 = load i32*, i32** %state.addr, align 8
  %arrayidx1540 = getelementptr inbounds i32, i32* %1106, i64 3
  %1107 = load i32, i32* %arrayidx1540, align 4
  %add1541 = add i32 %1107, %1105
  store i32 %add1541, i32* %arrayidx1540, align 4
  %1108 = load i32, i32* %E, align 4
  %1109 = load i32*, i32** %state.addr, align 8
  %arrayidx1542 = getelementptr inbounds i32, i32* %1109, i64 4
  %1110 = load i32, i32* %arrayidx1542, align 4
  %add1543 = add i32 %1110, %1108
  store i32 %add1543, i32* %arrayidx1542, align 4
  %1111 = load i32, i32* %F, align 4
  %1112 = load i32*, i32** %state.addr, align 8
  %arrayidx1544 = getelementptr inbounds i32, i32* %1112, i64 5
  %1113 = load i32, i32* %arrayidx1544, align 4
  %add1545 = add i32 %1113, %1111
  store i32 %add1545, i32* %arrayidx1544, align 4
  %1114 = load i32, i32* %G, align 4
  %1115 = load i32*, i32** %state.addr, align 8
  %arrayidx1546 = getelementptr inbounds i32, i32* %1115, i64 6
  %1116 = load i32, i32* %arrayidx1546, align 4
  %add1547 = add i32 %1116, %1114
  store i32 %add1547, i32* %arrayidx1546, align 4
  %1117 = load i32, i32* %H, align 4
  %1118 = load i32*, i32** %state.addr, align 8
  %arrayidx1548 = getelementptr inbounds i32, i32* %1118, i64 7
  %1119 = load i32, i32* %arrayidx1548, align 4
  %add1549 = add i32 %1119, %1117
  store i32 %add1549, i32* %arrayidx1548, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha256_digest(%struct.sha256_ctx* %ctx, i8* %s) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %1, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %4, 24
  %conv = trunc i32 %shr to i8
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %conv, i8* %5, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx4, align 4
  %shr5 = lshr i32 %8, 16
  %and = and i32 255, %shr5
  %conv6 = trunc i32 %and to i8
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 8
  store i8 %conv6, i8* %9, align 1
  %10 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %10 to i64
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx10, align 4
  %shr11 = lshr i32 %12, 8
  %and12 = and i32 255, %shr11
  %conv13 = trunc i32 %and12 to i8
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr14, i8** %s.addr, align 8
  store i8 %conv13, i8* %13, align 1
  %14 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %14 to i64
  %15 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %state16, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx17, align 4
  %and18 = and i32 255, %16
  %conv19 = trunc i32 %and18 to i8
  %17 = load i8*, i8** %s.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr20, i8** %s.addr, align 8
  store i8 %conv19, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
