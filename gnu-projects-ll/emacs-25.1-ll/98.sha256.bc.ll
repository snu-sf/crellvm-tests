; ModuleID = './lib/sha256.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { [8 x i32], [2 x i32], i64, [32 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@sha256_round_constants = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@fillbuf = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @sha256_init_ctx(%struct.sha256_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 0
  store i32 1779033703, i32* %arrayidx, align 4
  %1 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %state1, i32 0, i64 1
  store i32 -1150833019, i32* %arrayidx2, align 4
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 2
  store i32 1013904242, i32* %arrayidx4, align 4
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %state5, i32 0, i64 3
  store i32 -1521486534, i32* %arrayidx6, align 4
  %4 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %state7, i32 0, i64 4
  store i32 1359893119, i32* %arrayidx8, align 4
  %5 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 5
  store i32 -1694144372, i32* %arrayidx10, align 4
  %6 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %6, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 6
  store i32 528734635, i32* %arrayidx12, align 4
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %state13, i32 0, i64 7
  store i32 1541459225, i32* %arrayidx14, align 4
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 1
  store i32 0, i32* %arrayidx15, align 4
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %total16, i32 0, i64 0
  store i32 0, i32* %arrayidx17, align 4
  %10 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %10, i32 0, i32 2
  store i64 0, i64* %buflen, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha224_init_ctx(%struct.sha256_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 0
  store i32 -1056596264, i32* %arrayidx, align 4
  %1 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %state1, i32 0, i64 1
  store i32 914150663, i32* %arrayidx2, align 4
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 2
  store i32 812702999, i32* %arrayidx4, align 4
  %3 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %state5, i32 0, i64 3
  store i32 -150054599, i32* %arrayidx6, align 4
  %4 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %state7, i32 0, i64 4
  store i32 -4191439, i32* %arrayidx8, align 4
  %5 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 5
  store i32 1750603025, i32* %arrayidx10, align 4
  %6 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %6, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 6
  store i32 1694076839, i32* %arrayidx12, align 4
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %state13, i32 0, i64 7
  store i32 -1090891868, i32* %arrayidx14, align 4
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 1
  store i32 0, i32* %arrayidx15, align 4
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %total16, i32 0, i64 0
  store i32 0, i32* %arrayidx17, align 4
  %10 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %10, i32 0, i32 2
  store i64 0, i64* %buflen, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha256_read_ctx(%struct.sha256_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %r, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %mul
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %6, 24
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %state2, i32 0, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %9, 65280
  %shl4 = shl i32 %and, 8
  %or = or i32 %shl, %shl4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %state6, i32 0, i64 %idxprom5
  %12 = load i32, i32* %arrayidx7, align 4
  %shr = lshr i32 %12, 8
  %and8 = and i32 %shr, 65280
  %or9 = or i32 %or, %and8
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  %shr13 = lshr i32 %15, 24
  %or14 = or i32 %or9, %shr13
  call void @set_uint32(i8* %add.ptr, i32 %or14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal void @set_uint32(i8* %cp, i32 %v) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %v.addr = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = bitcast i32* %v.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha224_read_ctx(%struct.sha256_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i8*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %r, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %mul
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %6, 24
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %state2, i32 0, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %9, 65280
  %shl4 = shl i32 %and, 8
  %or = or i32 %shl, %shl4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %state6, i32 0, i64 %idxprom5
  %12 = load i32, i32* %arrayidx7, align 4
  %shr = lshr i32 %12, 8
  %and8 = and i32 %shr, 65280
  %or9 = or i32 %or, %and8
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  %shr13 = lshr i32 %15, 24
  %or14 = or i32 %or9, %shr13
  call void @set_uint32(i8* %add.ptr, i32 %or14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i8* @sha256_finish_ctx(%struct.sha256_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_conclude_ctx(%struct.sha256_ctx* %0)
  %1 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %2 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @sha256_read_ctx(%struct.sha256_ctx* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @sha256_conclude_ctx(%struct.sha256_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %bytes = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 2
  %1 = load i64, i64* %buflen, align 8
  store i64 %1, i64* %bytes, align 8
  %2 = load i64, i64* %bytes, align 8
  %cmp = icmp ult i64 %2, 56
  %cond = select i1 %cmp, i32 16, i32 32
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %size, align 8
  %3 = load i64, i64* %bytes, align 8
  %4 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %conv1 = zext i32 %5 to i64
  %add = add i64 %conv1, %3
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %arrayidx, align 4
  %6 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %total3, i32 0, i64 0
  %7 = load i32, i32* %arrayidx4, align 4
  %conv5 = zext i32 %7 to i64
  %8 = load i64, i64* %bytes, align 8
  %cmp6 = icmp ult i64 %conv5, %8
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %total8, i32 0, i64 1
  %10 = load i32, i32* %arrayidx9, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %size, align 8
  %sub = sub i64 %11, 2
  %12 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %12, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer, i32 0, i64 %sub
  %13 = bitcast i32* %arrayidx10 to i8*
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %total11, i32 0, i64 1
  %15 = load i32, i32* %arrayidx12, align 4
  %shl = shl i32 %15, 3
  %16 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %total13, i32 0, i64 0
  %17 = load i32, i32* %arrayidx14, align 4
  %shr = lshr i32 %17, 29
  %or = or i32 %shl, %shr
  %shl15 = shl i32 %or, 24
  %18 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %total16, i32 0, i64 1
  %19 = load i32, i32* %arrayidx17, align 4
  %shl18 = shl i32 %19, 3
  %20 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total19 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %20, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %total19, i32 0, i64 0
  %21 = load i32, i32* %arrayidx20, align 4
  %shr21 = lshr i32 %21, 29
  %or22 = or i32 %shl18, %shr21
  %and = and i32 %or22, 65280
  %shl23 = shl i32 %and, 8
  %or24 = or i32 %shl15, %shl23
  %22 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total25 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %total25, i32 0, i64 1
  %23 = load i32, i32* %arrayidx26, align 4
  %shl27 = shl i32 %23, 3
  %24 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %total28, i32 0, i64 0
  %25 = load i32, i32* %arrayidx29, align 4
  %shr30 = lshr i32 %25, 29
  %or31 = or i32 %shl27, %shr30
  %shr32 = lshr i32 %or31, 8
  %and33 = and i32 %shr32, 65280
  %or34 = or i32 %or24, %and33
  %26 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total35 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %26, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %total35, i32 0, i64 1
  %27 = load i32, i32* %arrayidx36, align 4
  %shl37 = shl i32 %27, 3
  %28 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total38 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %28, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %total38, i32 0, i64 0
  %29 = load i32, i32* %arrayidx39, align 4
  %shr40 = lshr i32 %29, 29
  %or41 = or i32 %shl37, %shr40
  %shr42 = lshr i32 %or41, 24
  %or43 = or i32 %or34, %shr42
  call void @set_uint32(i8* %13, i32 %or43)
  %30 = load i64, i64* %size, align 8
  %sub44 = sub i64 %30, 1
  %31 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer45 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %31, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer45, i32 0, i64 %sub44
  %32 = bitcast i32* %arrayidx46 to i8*
  %33 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total47 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %33, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* %total47, i32 0, i64 0
  %34 = load i32, i32* %arrayidx48, align 4
  %shl49 = shl i32 %34, 3
  %shl50 = shl i32 %shl49, 24
  %35 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total51 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %35, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %total51, i32 0, i64 0
  %36 = load i32, i32* %arrayidx52, align 4
  %shl53 = shl i32 %36, 3
  %and54 = and i32 %shl53, 65280
  %shl55 = shl i32 %and54, 8
  %or56 = or i32 %shl50, %shl55
  %37 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total57 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %37, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %total57, i32 0, i64 0
  %38 = load i32, i32* %arrayidx58, align 4
  %shl59 = shl i32 %38, 3
  %shr60 = lshr i32 %shl59, 8
  %and61 = and i32 %shr60, 65280
  %or62 = or i32 %or56, %and61
  %39 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total63 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %39, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %total63, i32 0, i64 0
  %40 = load i32, i32* %arrayidx64, align 4
  %shl65 = shl i32 %40, 3
  %shr66 = lshr i32 %shl65, 24
  %or67 = or i32 %or62, %shr66
  call void @set_uint32(i8* %32, i32 %or67)
  %41 = load i64, i64* %bytes, align 8
  %42 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer68 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %42, i32 0, i32 3
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer68, i32 0, i32 0
  %43 = bitcast i32* %arraydecay to i8*
  %arrayidx69 = getelementptr inbounds i8, i8* %43, i64 %41
  %44 = load i64, i64* %size, align 8
  %sub70 = sub i64 %44, 2
  %mul = mul i64 %sub70, 4
  %45 = load i64, i64* %bytes, align 8
  %sub71 = sub i64 %mul, %45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx69, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i32 0, i32 0), i64 %sub71, i32 1, i1 false)
  %46 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer72 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %46, i32 0, i32 3
  %arraydecay73 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer72, i32 0, i32 0
  %47 = bitcast i32* %arraydecay73 to i8*
  %48 = load i64, i64* %size, align 8
  %mul74 = mul i64 %48, 4
  %49 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_process_block(i8* %47, i64 %mul74, %struct.sha256_ctx* %49)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha224_finish_ctx(%struct.sha256_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_conclude_ctx(%struct.sha256_ctx* %0)
  %1 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %2 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @sha224_read_ctx(%struct.sha256_ctx* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @sha256_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha256_ctx, align 8
  %sum = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  %call = call noalias i8* @malloc(i64 32840) #3
  store i8* %call, i8** %buffer, align 8
  %0 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sha256_init_ctx(%struct.sha256_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %if.end, %while.end
  store i64 0, i64* %sum, align 8
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.16
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i64, i64* %sum, align 8
  %sub = sub i64 32768, %3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %4)
  store i64 %call3, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %sum, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %sum, align 8
  %7 = load i64, i64* %sum, align 8
  %cmp = icmp eq i64 %7, 32768
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body.2
  br label %while.end

if.end.5:                                         ; preds = %while.body.2
  %8 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @ferror(%struct._IO_FILE* %9) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %buffer, align 8
  call void @free(i8* %10) #3
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %process_partial_block

if.end.12:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @feof(%struct._IO_FILE* %11) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %process_partial_block

if.end.16:                                        ; preds = %if.end.12
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buffer, align 8
  call void @sha256_process_block(i8* %12, i64 32768, %struct.sha256_ctx* %ctx)
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @sha256_process_bytes(i8* %14, i64 %15, %struct.sha256_ctx* %ctx)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @sha256_finish_ctx(%struct.sha256_ctx* %ctx, i8* %16)
  %17 = load i8*, i8** %buffer, align 8
  call void @free(i8* %17) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @sha256_process_block(i8* %buffer, i64 %len, %struct.sha256_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %words = alloca i32*, align 8
  %nwords = alloca i64, align 8
  %endp = alloca i32*, align 8
  %x = alloca [16 x i32], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %lolen = alloca i32, align 4
  %tm = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %words, align 8
  %2 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %2, 4
  store i64 %div, i64* %nwords, align 8
  %3 = load i32*, i32** %words, align 8
  %4 = load i64, i64* %nwords, align 8
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %4
  store i32* %add.ptr, i32** %endp, align 8
  %5 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %a, align 4
  %7 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %7, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %state1, i32 0, i64 1
  %8 = load i32, i32* %arrayidx2, align 4
  store i32 %8, i32* %b, align 4
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 2
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %c, align 4
  %11 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %11, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %state5, i32 0, i64 3
  %12 = load i32, i32* %arrayidx6, align 4
  store i32 %12, i32* %d, align 4
  %13 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %13, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %state7, i32 0, i64 4
  %14 = load i32, i32* %arrayidx8, align 4
  store i32 %14, i32* %e, align 4
  %15 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %15, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 5
  %16 = load i32, i32* %arrayidx10, align 4
  store i32 %16, i32* %f, align 4
  %17 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %17, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 6
  %18 = load i32, i32* %arrayidx12, align 4
  store i32 %18, i32* %g, align 4
  %19 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %19, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %state13, i32 0, i64 7
  %20 = load i32, i32* %arrayidx14, align 4
  store i32 %20, i32* %h, align 4
  %21 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %21 to i32
  store i32 %conv, i32* %lolen, align 4
  %22 = load i32, i32* %lolen, align 4
  %23 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %23, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %24 = load i32, i32* %arrayidx15, align 4
  %add = add i32 %24, %22
  store i32 %add, i32* %arrayidx15, align 4
  %25 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %25, 31
  %shr16 = lshr i64 %shr, 1
  %26 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total17 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %26, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %total17, i32 0, i64 0
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load i32, i32* %lolen, align 4
  %cmp = icmp ult i32 %27, %28
  %conv19 = zext i1 %cmp to i32
  %conv20 = sext i32 %conv19 to i64
  %add21 = add i64 %shr16, %conv20
  %29 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %total22 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %29, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %total22, i32 0, i64 1
  %30 = load i32, i32* %arrayidx23, align 4
  %conv24 = zext i32 %30 to i64
  %add25 = add i64 %conv24, %add21
  %conv26 = trunc i64 %add25 to i32
  store i32 %conv26, i32* %arrayidx23, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.4114, %entry
  %31 = load i32*, i32** %words, align 8
  %32 = load i32*, i32** %endp, align 8
  %cmp27 = icmp ult i32* %31, %32
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %33 = load i32, i32* %t, align 4
  %cmp29 = icmp slt i32 %33, 16
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32*, i32** %words, align 8
  %35 = load i32, i32* %34, align 4
  %shl = shl i32 %35, 24
  %36 = load i32*, i32** %words, align 8
  %37 = load i32, i32* %36, align 4
  %and = and i32 %37, 65280
  %shl31 = shl i32 %and, 8
  %or = or i32 %shl, %shl31
  %38 = load i32*, i32** %words, align 8
  %39 = load i32, i32* %38, align 4
  %shr32 = lshr i32 %39, 8
  %and33 = and i32 %shr32, 65280
  %or34 = or i32 %or, %and33
  %40 = load i32*, i32** %words, align 8
  %41 = load i32, i32* %40, align 4
  %shr35 = lshr i32 %41, 24
  %or36 = or i32 %or34, %shr35
  %42 = load i32, i32* %t, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom
  store i32 %or36, i32* %arrayidx37, align 4
  %43 = load i32*, i32** %words, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr, i32** %words, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %t, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %45 = load i32, i32* %a, align 4
  %shl38 = shl i32 %45, 30
  %46 = load i32, i32* %a, align 4
  %shr39 = lshr i32 %46, 2
  %or40 = or i32 %shl38, %shr39
  %47 = load i32, i32* %a, align 4
  %shl41 = shl i32 %47, 19
  %48 = load i32, i32* %a, align 4
  %shr42 = lshr i32 %48, 13
  %or43 = or i32 %shl41, %shr42
  %xor = xor i32 %or40, %or43
  %49 = load i32, i32* %a, align 4
  %shl44 = shl i32 %49, 10
  %50 = load i32, i32* %a, align 4
  %shr45 = lshr i32 %50, 22
  %or46 = or i32 %shl44, %shr45
  %xor47 = xor i32 %xor, %or46
  %51 = load i32, i32* %a, align 4
  %52 = load i32, i32* %b, align 4
  %and48 = and i32 %51, %52
  %53 = load i32, i32* %c, align 4
  %54 = load i32, i32* %a, align 4
  %55 = load i32, i32* %b, align 4
  %or49 = or i32 %54, %55
  %and50 = and i32 %53, %or49
  %or51 = or i32 %and48, %and50
  %add52 = add i32 %xor47, %or51
  store i32 %add52, i32* %t0, align 4
  %56 = load i32, i32* %h, align 4
  %57 = load i32, i32* %e, align 4
  %shl53 = shl i32 %57, 26
  %58 = load i32, i32* %e, align 4
  %shr54 = lshr i32 %58, 6
  %or55 = or i32 %shl53, %shr54
  %59 = load i32, i32* %e, align 4
  %shl56 = shl i32 %59, 21
  %60 = load i32, i32* %e, align 4
  %shr57 = lshr i32 %60, 11
  %or58 = or i32 %shl56, %shr57
  %xor59 = xor i32 %or55, %or58
  %61 = load i32, i32* %e, align 4
  %shl60 = shl i32 %61, 7
  %62 = load i32, i32* %e, align 4
  %shr61 = lshr i32 %62, 25
  %or62 = or i32 %shl60, %shr61
  %xor63 = xor i32 %xor59, %or62
  %add64 = add i32 %56, %xor63
  %63 = load i32, i32* %g, align 4
  %64 = load i32, i32* %e, align 4
  %65 = load i32, i32* %f, align 4
  %66 = load i32, i32* %g, align 4
  %xor65 = xor i32 %65, %66
  %and66 = and i32 %64, %xor65
  %xor67 = xor i32 %63, %and66
  %add68 = add i32 %add64, %xor67
  %67 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 0), align 4
  %add69 = add i32 %add68, %67
  %arrayidx70 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %68 = load i32, i32* %arrayidx70, align 4
  %add71 = add i32 %add69, %68
  store i32 %add71, i32* %t1, align 4
  %69 = load i32, i32* %t1, align 4
  %70 = load i32, i32* %d, align 4
  %add72 = add i32 %70, %69
  store i32 %add72, i32* %d, align 4
  %71 = load i32, i32* %t0, align 4
  %72 = load i32, i32* %t1, align 4
  %add73 = add i32 %71, %72
  store i32 %add73, i32* %h, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.74

do.body.74:                                       ; preds = %do.end
  %73 = load i32, i32* %h, align 4
  %shl75 = shl i32 %73, 30
  %74 = load i32, i32* %h, align 4
  %shr76 = lshr i32 %74, 2
  %or77 = or i32 %shl75, %shr76
  %75 = load i32, i32* %h, align 4
  %shl78 = shl i32 %75, 19
  %76 = load i32, i32* %h, align 4
  %shr79 = lshr i32 %76, 13
  %or80 = or i32 %shl78, %shr79
  %xor81 = xor i32 %or77, %or80
  %77 = load i32, i32* %h, align 4
  %shl82 = shl i32 %77, 10
  %78 = load i32, i32* %h, align 4
  %shr83 = lshr i32 %78, 22
  %or84 = or i32 %shl82, %shr83
  %xor85 = xor i32 %xor81, %or84
  %79 = load i32, i32* %h, align 4
  %80 = load i32, i32* %a, align 4
  %and86 = and i32 %79, %80
  %81 = load i32, i32* %b, align 4
  %82 = load i32, i32* %h, align 4
  %83 = load i32, i32* %a, align 4
  %or87 = or i32 %82, %83
  %and88 = and i32 %81, %or87
  %or89 = or i32 %and86, %and88
  %add90 = add i32 %xor85, %or89
  store i32 %add90, i32* %t0, align 4
  %84 = load i32, i32* %g, align 4
  %85 = load i32, i32* %d, align 4
  %shl91 = shl i32 %85, 26
  %86 = load i32, i32* %d, align 4
  %shr92 = lshr i32 %86, 6
  %or93 = or i32 %shl91, %shr92
  %87 = load i32, i32* %d, align 4
  %shl94 = shl i32 %87, 21
  %88 = load i32, i32* %d, align 4
  %shr95 = lshr i32 %88, 11
  %or96 = or i32 %shl94, %shr95
  %xor97 = xor i32 %or93, %or96
  %89 = load i32, i32* %d, align 4
  %shl98 = shl i32 %89, 7
  %90 = load i32, i32* %d, align 4
  %shr99 = lshr i32 %90, 25
  %or100 = or i32 %shl98, %shr99
  %xor101 = xor i32 %xor97, %or100
  %add102 = add i32 %84, %xor101
  %91 = load i32, i32* %f, align 4
  %92 = load i32, i32* %d, align 4
  %93 = load i32, i32* %e, align 4
  %94 = load i32, i32* %f, align 4
  %xor103 = xor i32 %93, %94
  %and104 = and i32 %92, %xor103
  %xor105 = xor i32 %91, %and104
  %add106 = add i32 %add102, %xor105
  %95 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 1), align 4
  %add107 = add i32 %add106, %95
  %arrayidx108 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %96 = load i32, i32* %arrayidx108, align 4
  %add109 = add i32 %add107, %96
  store i32 %add109, i32* %t1, align 4
  %97 = load i32, i32* %t1, align 4
  %98 = load i32, i32* %c, align 4
  %add110 = add i32 %98, %97
  store i32 %add110, i32* %c, align 4
  %99 = load i32, i32* %t0, align 4
  %100 = load i32, i32* %t1, align 4
  %add111 = add i32 %99, %100
  store i32 %add111, i32* %g, align 4
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.74
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.112
  %101 = load i32, i32* %g, align 4
  %shl114 = shl i32 %101, 30
  %102 = load i32, i32* %g, align 4
  %shr115 = lshr i32 %102, 2
  %or116 = or i32 %shl114, %shr115
  %103 = load i32, i32* %g, align 4
  %shl117 = shl i32 %103, 19
  %104 = load i32, i32* %g, align 4
  %shr118 = lshr i32 %104, 13
  %or119 = or i32 %shl117, %shr118
  %xor120 = xor i32 %or116, %or119
  %105 = load i32, i32* %g, align 4
  %shl121 = shl i32 %105, 10
  %106 = load i32, i32* %g, align 4
  %shr122 = lshr i32 %106, 22
  %or123 = or i32 %shl121, %shr122
  %xor124 = xor i32 %xor120, %or123
  %107 = load i32, i32* %g, align 4
  %108 = load i32, i32* %h, align 4
  %and125 = and i32 %107, %108
  %109 = load i32, i32* %a, align 4
  %110 = load i32, i32* %g, align 4
  %111 = load i32, i32* %h, align 4
  %or126 = or i32 %110, %111
  %and127 = and i32 %109, %or126
  %or128 = or i32 %and125, %and127
  %add129 = add i32 %xor124, %or128
  store i32 %add129, i32* %t0, align 4
  %112 = load i32, i32* %f, align 4
  %113 = load i32, i32* %c, align 4
  %shl130 = shl i32 %113, 26
  %114 = load i32, i32* %c, align 4
  %shr131 = lshr i32 %114, 6
  %or132 = or i32 %shl130, %shr131
  %115 = load i32, i32* %c, align 4
  %shl133 = shl i32 %115, 21
  %116 = load i32, i32* %c, align 4
  %shr134 = lshr i32 %116, 11
  %or135 = or i32 %shl133, %shr134
  %xor136 = xor i32 %or132, %or135
  %117 = load i32, i32* %c, align 4
  %shl137 = shl i32 %117, 7
  %118 = load i32, i32* %c, align 4
  %shr138 = lshr i32 %118, 25
  %or139 = or i32 %shl137, %shr138
  %xor140 = xor i32 %xor136, %or139
  %add141 = add i32 %112, %xor140
  %119 = load i32, i32* %e, align 4
  %120 = load i32, i32* %c, align 4
  %121 = load i32, i32* %d, align 4
  %122 = load i32, i32* %e, align 4
  %xor142 = xor i32 %121, %122
  %and143 = and i32 %120, %xor142
  %xor144 = xor i32 %119, %and143
  %add145 = add i32 %add141, %xor144
  %123 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 2), align 4
  %add146 = add i32 %add145, %123
  %arrayidx147 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %124 = load i32, i32* %arrayidx147, align 4
  %add148 = add i32 %add146, %124
  store i32 %add148, i32* %t1, align 4
  %125 = load i32, i32* %t1, align 4
  %126 = load i32, i32* %b, align 4
  %add149 = add i32 %126, %125
  store i32 %add149, i32* %b, align 4
  %127 = load i32, i32* %t0, align 4
  %128 = load i32, i32* %t1, align 4
  %add150 = add i32 %127, %128
  store i32 %add150, i32* %f, align 4
  br label %do.end.151

do.end.151:                                       ; preds = %do.body.113
  br label %do.body.152

do.body.152:                                      ; preds = %do.end.151
  %129 = load i32, i32* %f, align 4
  %shl153 = shl i32 %129, 30
  %130 = load i32, i32* %f, align 4
  %shr154 = lshr i32 %130, 2
  %or155 = or i32 %shl153, %shr154
  %131 = load i32, i32* %f, align 4
  %shl156 = shl i32 %131, 19
  %132 = load i32, i32* %f, align 4
  %shr157 = lshr i32 %132, 13
  %or158 = or i32 %shl156, %shr157
  %xor159 = xor i32 %or155, %or158
  %133 = load i32, i32* %f, align 4
  %shl160 = shl i32 %133, 10
  %134 = load i32, i32* %f, align 4
  %shr161 = lshr i32 %134, 22
  %or162 = or i32 %shl160, %shr161
  %xor163 = xor i32 %xor159, %or162
  %135 = load i32, i32* %f, align 4
  %136 = load i32, i32* %g, align 4
  %and164 = and i32 %135, %136
  %137 = load i32, i32* %h, align 4
  %138 = load i32, i32* %f, align 4
  %139 = load i32, i32* %g, align 4
  %or165 = or i32 %138, %139
  %and166 = and i32 %137, %or165
  %or167 = or i32 %and164, %and166
  %add168 = add i32 %xor163, %or167
  store i32 %add168, i32* %t0, align 4
  %140 = load i32, i32* %e, align 4
  %141 = load i32, i32* %b, align 4
  %shl169 = shl i32 %141, 26
  %142 = load i32, i32* %b, align 4
  %shr170 = lshr i32 %142, 6
  %or171 = or i32 %shl169, %shr170
  %143 = load i32, i32* %b, align 4
  %shl172 = shl i32 %143, 21
  %144 = load i32, i32* %b, align 4
  %shr173 = lshr i32 %144, 11
  %or174 = or i32 %shl172, %shr173
  %xor175 = xor i32 %or171, %or174
  %145 = load i32, i32* %b, align 4
  %shl176 = shl i32 %145, 7
  %146 = load i32, i32* %b, align 4
  %shr177 = lshr i32 %146, 25
  %or178 = or i32 %shl176, %shr177
  %xor179 = xor i32 %xor175, %or178
  %add180 = add i32 %140, %xor179
  %147 = load i32, i32* %d, align 4
  %148 = load i32, i32* %b, align 4
  %149 = load i32, i32* %c, align 4
  %150 = load i32, i32* %d, align 4
  %xor181 = xor i32 %149, %150
  %and182 = and i32 %148, %xor181
  %xor183 = xor i32 %147, %and182
  %add184 = add i32 %add180, %xor183
  %151 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 3), align 4
  %add185 = add i32 %add184, %151
  %arrayidx186 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %152 = load i32, i32* %arrayidx186, align 4
  %add187 = add i32 %add185, %152
  store i32 %add187, i32* %t1, align 4
  %153 = load i32, i32* %t1, align 4
  %154 = load i32, i32* %a, align 4
  %add188 = add i32 %154, %153
  store i32 %add188, i32* %a, align 4
  %155 = load i32, i32* %t0, align 4
  %156 = load i32, i32* %t1, align 4
  %add189 = add i32 %155, %156
  store i32 %add189, i32* %e, align 4
  br label %do.end.190

do.end.190:                                       ; preds = %do.body.152
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %157 = load i32, i32* %e, align 4
  %shl192 = shl i32 %157, 30
  %158 = load i32, i32* %e, align 4
  %shr193 = lshr i32 %158, 2
  %or194 = or i32 %shl192, %shr193
  %159 = load i32, i32* %e, align 4
  %shl195 = shl i32 %159, 19
  %160 = load i32, i32* %e, align 4
  %shr196 = lshr i32 %160, 13
  %or197 = or i32 %shl195, %shr196
  %xor198 = xor i32 %or194, %or197
  %161 = load i32, i32* %e, align 4
  %shl199 = shl i32 %161, 10
  %162 = load i32, i32* %e, align 4
  %shr200 = lshr i32 %162, 22
  %or201 = or i32 %shl199, %shr200
  %xor202 = xor i32 %xor198, %or201
  %163 = load i32, i32* %e, align 4
  %164 = load i32, i32* %f, align 4
  %and203 = and i32 %163, %164
  %165 = load i32, i32* %g, align 4
  %166 = load i32, i32* %e, align 4
  %167 = load i32, i32* %f, align 4
  %or204 = or i32 %166, %167
  %and205 = and i32 %165, %or204
  %or206 = or i32 %and203, %and205
  %add207 = add i32 %xor202, %or206
  store i32 %add207, i32* %t0, align 4
  %168 = load i32, i32* %d, align 4
  %169 = load i32, i32* %a, align 4
  %shl208 = shl i32 %169, 26
  %170 = load i32, i32* %a, align 4
  %shr209 = lshr i32 %170, 6
  %or210 = or i32 %shl208, %shr209
  %171 = load i32, i32* %a, align 4
  %shl211 = shl i32 %171, 21
  %172 = load i32, i32* %a, align 4
  %shr212 = lshr i32 %172, 11
  %or213 = or i32 %shl211, %shr212
  %xor214 = xor i32 %or210, %or213
  %173 = load i32, i32* %a, align 4
  %shl215 = shl i32 %173, 7
  %174 = load i32, i32* %a, align 4
  %shr216 = lshr i32 %174, 25
  %or217 = or i32 %shl215, %shr216
  %xor218 = xor i32 %xor214, %or217
  %add219 = add i32 %168, %xor218
  %175 = load i32, i32* %c, align 4
  %176 = load i32, i32* %a, align 4
  %177 = load i32, i32* %b, align 4
  %178 = load i32, i32* %c, align 4
  %xor220 = xor i32 %177, %178
  %and221 = and i32 %176, %xor220
  %xor222 = xor i32 %175, %and221
  %add223 = add i32 %add219, %xor222
  %179 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 4), align 4
  %add224 = add i32 %add223, %179
  %arrayidx225 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %180 = load i32, i32* %arrayidx225, align 4
  %add226 = add i32 %add224, %180
  store i32 %add226, i32* %t1, align 4
  %181 = load i32, i32* %t1, align 4
  %182 = load i32, i32* %h, align 4
  %add227 = add i32 %182, %181
  store i32 %add227, i32* %h, align 4
  %183 = load i32, i32* %t0, align 4
  %184 = load i32, i32* %t1, align 4
  %add228 = add i32 %183, %184
  store i32 %add228, i32* %d, align 4
  br label %do.end.229

do.end.229:                                       ; preds = %do.body.191
  br label %do.body.230

do.body.230:                                      ; preds = %do.end.229
  %185 = load i32, i32* %d, align 4
  %shl231 = shl i32 %185, 30
  %186 = load i32, i32* %d, align 4
  %shr232 = lshr i32 %186, 2
  %or233 = or i32 %shl231, %shr232
  %187 = load i32, i32* %d, align 4
  %shl234 = shl i32 %187, 19
  %188 = load i32, i32* %d, align 4
  %shr235 = lshr i32 %188, 13
  %or236 = or i32 %shl234, %shr235
  %xor237 = xor i32 %or233, %or236
  %189 = load i32, i32* %d, align 4
  %shl238 = shl i32 %189, 10
  %190 = load i32, i32* %d, align 4
  %shr239 = lshr i32 %190, 22
  %or240 = or i32 %shl238, %shr239
  %xor241 = xor i32 %xor237, %or240
  %191 = load i32, i32* %d, align 4
  %192 = load i32, i32* %e, align 4
  %and242 = and i32 %191, %192
  %193 = load i32, i32* %f, align 4
  %194 = load i32, i32* %d, align 4
  %195 = load i32, i32* %e, align 4
  %or243 = or i32 %194, %195
  %and244 = and i32 %193, %or243
  %or245 = or i32 %and242, %and244
  %add246 = add i32 %xor241, %or245
  store i32 %add246, i32* %t0, align 4
  %196 = load i32, i32* %c, align 4
  %197 = load i32, i32* %h, align 4
  %shl247 = shl i32 %197, 26
  %198 = load i32, i32* %h, align 4
  %shr248 = lshr i32 %198, 6
  %or249 = or i32 %shl247, %shr248
  %199 = load i32, i32* %h, align 4
  %shl250 = shl i32 %199, 21
  %200 = load i32, i32* %h, align 4
  %shr251 = lshr i32 %200, 11
  %or252 = or i32 %shl250, %shr251
  %xor253 = xor i32 %or249, %or252
  %201 = load i32, i32* %h, align 4
  %shl254 = shl i32 %201, 7
  %202 = load i32, i32* %h, align 4
  %shr255 = lshr i32 %202, 25
  %or256 = or i32 %shl254, %shr255
  %xor257 = xor i32 %xor253, %or256
  %add258 = add i32 %196, %xor257
  %203 = load i32, i32* %b, align 4
  %204 = load i32, i32* %h, align 4
  %205 = load i32, i32* %a, align 4
  %206 = load i32, i32* %b, align 4
  %xor259 = xor i32 %205, %206
  %and260 = and i32 %204, %xor259
  %xor261 = xor i32 %203, %and260
  %add262 = add i32 %add258, %xor261
  %207 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 5), align 4
  %add263 = add i32 %add262, %207
  %arrayidx264 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %208 = load i32, i32* %arrayidx264, align 4
  %add265 = add i32 %add263, %208
  store i32 %add265, i32* %t1, align 4
  %209 = load i32, i32* %t1, align 4
  %210 = load i32, i32* %g, align 4
  %add266 = add i32 %210, %209
  store i32 %add266, i32* %g, align 4
  %211 = load i32, i32* %t0, align 4
  %212 = load i32, i32* %t1, align 4
  %add267 = add i32 %211, %212
  store i32 %add267, i32* %c, align 4
  br label %do.end.268

do.end.268:                                       ; preds = %do.body.230
  br label %do.body.269

do.body.269:                                      ; preds = %do.end.268
  %213 = load i32, i32* %c, align 4
  %shl270 = shl i32 %213, 30
  %214 = load i32, i32* %c, align 4
  %shr271 = lshr i32 %214, 2
  %or272 = or i32 %shl270, %shr271
  %215 = load i32, i32* %c, align 4
  %shl273 = shl i32 %215, 19
  %216 = load i32, i32* %c, align 4
  %shr274 = lshr i32 %216, 13
  %or275 = or i32 %shl273, %shr274
  %xor276 = xor i32 %or272, %or275
  %217 = load i32, i32* %c, align 4
  %shl277 = shl i32 %217, 10
  %218 = load i32, i32* %c, align 4
  %shr278 = lshr i32 %218, 22
  %or279 = or i32 %shl277, %shr278
  %xor280 = xor i32 %xor276, %or279
  %219 = load i32, i32* %c, align 4
  %220 = load i32, i32* %d, align 4
  %and281 = and i32 %219, %220
  %221 = load i32, i32* %e, align 4
  %222 = load i32, i32* %c, align 4
  %223 = load i32, i32* %d, align 4
  %or282 = or i32 %222, %223
  %and283 = and i32 %221, %or282
  %or284 = or i32 %and281, %and283
  %add285 = add i32 %xor280, %or284
  store i32 %add285, i32* %t0, align 4
  %224 = load i32, i32* %b, align 4
  %225 = load i32, i32* %g, align 4
  %shl286 = shl i32 %225, 26
  %226 = load i32, i32* %g, align 4
  %shr287 = lshr i32 %226, 6
  %or288 = or i32 %shl286, %shr287
  %227 = load i32, i32* %g, align 4
  %shl289 = shl i32 %227, 21
  %228 = load i32, i32* %g, align 4
  %shr290 = lshr i32 %228, 11
  %or291 = or i32 %shl289, %shr290
  %xor292 = xor i32 %or288, %or291
  %229 = load i32, i32* %g, align 4
  %shl293 = shl i32 %229, 7
  %230 = load i32, i32* %g, align 4
  %shr294 = lshr i32 %230, 25
  %or295 = or i32 %shl293, %shr294
  %xor296 = xor i32 %xor292, %or295
  %add297 = add i32 %224, %xor296
  %231 = load i32, i32* %a, align 4
  %232 = load i32, i32* %g, align 4
  %233 = load i32, i32* %h, align 4
  %234 = load i32, i32* %a, align 4
  %xor298 = xor i32 %233, %234
  %and299 = and i32 %232, %xor298
  %xor300 = xor i32 %231, %and299
  %add301 = add i32 %add297, %xor300
  %235 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 6), align 4
  %add302 = add i32 %add301, %235
  %arrayidx303 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %236 = load i32, i32* %arrayidx303, align 4
  %add304 = add i32 %add302, %236
  store i32 %add304, i32* %t1, align 4
  %237 = load i32, i32* %t1, align 4
  %238 = load i32, i32* %f, align 4
  %add305 = add i32 %238, %237
  store i32 %add305, i32* %f, align 4
  %239 = load i32, i32* %t0, align 4
  %240 = load i32, i32* %t1, align 4
  %add306 = add i32 %239, %240
  store i32 %add306, i32* %b, align 4
  br label %do.end.307

do.end.307:                                       ; preds = %do.body.269
  br label %do.body.308

do.body.308:                                      ; preds = %do.end.307
  %241 = load i32, i32* %b, align 4
  %shl309 = shl i32 %241, 30
  %242 = load i32, i32* %b, align 4
  %shr310 = lshr i32 %242, 2
  %or311 = or i32 %shl309, %shr310
  %243 = load i32, i32* %b, align 4
  %shl312 = shl i32 %243, 19
  %244 = load i32, i32* %b, align 4
  %shr313 = lshr i32 %244, 13
  %or314 = or i32 %shl312, %shr313
  %xor315 = xor i32 %or311, %or314
  %245 = load i32, i32* %b, align 4
  %shl316 = shl i32 %245, 10
  %246 = load i32, i32* %b, align 4
  %shr317 = lshr i32 %246, 22
  %or318 = or i32 %shl316, %shr317
  %xor319 = xor i32 %xor315, %or318
  %247 = load i32, i32* %b, align 4
  %248 = load i32, i32* %c, align 4
  %and320 = and i32 %247, %248
  %249 = load i32, i32* %d, align 4
  %250 = load i32, i32* %b, align 4
  %251 = load i32, i32* %c, align 4
  %or321 = or i32 %250, %251
  %and322 = and i32 %249, %or321
  %or323 = or i32 %and320, %and322
  %add324 = add i32 %xor319, %or323
  store i32 %add324, i32* %t0, align 4
  %252 = load i32, i32* %a, align 4
  %253 = load i32, i32* %f, align 4
  %shl325 = shl i32 %253, 26
  %254 = load i32, i32* %f, align 4
  %shr326 = lshr i32 %254, 6
  %or327 = or i32 %shl325, %shr326
  %255 = load i32, i32* %f, align 4
  %shl328 = shl i32 %255, 21
  %256 = load i32, i32* %f, align 4
  %shr329 = lshr i32 %256, 11
  %or330 = or i32 %shl328, %shr329
  %xor331 = xor i32 %or327, %or330
  %257 = load i32, i32* %f, align 4
  %shl332 = shl i32 %257, 7
  %258 = load i32, i32* %f, align 4
  %shr333 = lshr i32 %258, 25
  %or334 = or i32 %shl332, %shr333
  %xor335 = xor i32 %xor331, %or334
  %add336 = add i32 %252, %xor335
  %259 = load i32, i32* %h, align 4
  %260 = load i32, i32* %f, align 4
  %261 = load i32, i32* %g, align 4
  %262 = load i32, i32* %h, align 4
  %xor337 = xor i32 %261, %262
  %and338 = and i32 %260, %xor337
  %xor339 = xor i32 %259, %and338
  %add340 = add i32 %add336, %xor339
  %263 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 7), align 4
  %add341 = add i32 %add340, %263
  %arrayidx342 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %264 = load i32, i32* %arrayidx342, align 4
  %add343 = add i32 %add341, %264
  store i32 %add343, i32* %t1, align 4
  %265 = load i32, i32* %t1, align 4
  %266 = load i32, i32* %e, align 4
  %add344 = add i32 %266, %265
  store i32 %add344, i32* %e, align 4
  %267 = load i32, i32* %t0, align 4
  %268 = load i32, i32* %t1, align 4
  %add345 = add i32 %267, %268
  store i32 %add345, i32* %a, align 4
  br label %do.end.346

do.end.346:                                       ; preds = %do.body.308
  br label %do.body.347

do.body.347:                                      ; preds = %do.end.346
  %269 = load i32, i32* %a, align 4
  %shl348 = shl i32 %269, 30
  %270 = load i32, i32* %a, align 4
  %shr349 = lshr i32 %270, 2
  %or350 = or i32 %shl348, %shr349
  %271 = load i32, i32* %a, align 4
  %shl351 = shl i32 %271, 19
  %272 = load i32, i32* %a, align 4
  %shr352 = lshr i32 %272, 13
  %or353 = or i32 %shl351, %shr352
  %xor354 = xor i32 %or350, %or353
  %273 = load i32, i32* %a, align 4
  %shl355 = shl i32 %273, 10
  %274 = load i32, i32* %a, align 4
  %shr356 = lshr i32 %274, 22
  %or357 = or i32 %shl355, %shr356
  %xor358 = xor i32 %xor354, %or357
  %275 = load i32, i32* %a, align 4
  %276 = load i32, i32* %b, align 4
  %and359 = and i32 %275, %276
  %277 = load i32, i32* %c, align 4
  %278 = load i32, i32* %a, align 4
  %279 = load i32, i32* %b, align 4
  %or360 = or i32 %278, %279
  %and361 = and i32 %277, %or360
  %or362 = or i32 %and359, %and361
  %add363 = add i32 %xor358, %or362
  store i32 %add363, i32* %t0, align 4
  %280 = load i32, i32* %h, align 4
  %281 = load i32, i32* %e, align 4
  %shl364 = shl i32 %281, 26
  %282 = load i32, i32* %e, align 4
  %shr365 = lshr i32 %282, 6
  %or366 = or i32 %shl364, %shr365
  %283 = load i32, i32* %e, align 4
  %shl367 = shl i32 %283, 21
  %284 = load i32, i32* %e, align 4
  %shr368 = lshr i32 %284, 11
  %or369 = or i32 %shl367, %shr368
  %xor370 = xor i32 %or366, %or369
  %285 = load i32, i32* %e, align 4
  %shl371 = shl i32 %285, 7
  %286 = load i32, i32* %e, align 4
  %shr372 = lshr i32 %286, 25
  %or373 = or i32 %shl371, %shr372
  %xor374 = xor i32 %xor370, %or373
  %add375 = add i32 %280, %xor374
  %287 = load i32, i32* %g, align 4
  %288 = load i32, i32* %e, align 4
  %289 = load i32, i32* %f, align 4
  %290 = load i32, i32* %g, align 4
  %xor376 = xor i32 %289, %290
  %and377 = and i32 %288, %xor376
  %xor378 = xor i32 %287, %and377
  %add379 = add i32 %add375, %xor378
  %291 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 8), align 4
  %add380 = add i32 %add379, %291
  %arrayidx381 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %292 = load i32, i32* %arrayidx381, align 4
  %add382 = add i32 %add380, %292
  store i32 %add382, i32* %t1, align 4
  %293 = load i32, i32* %t1, align 4
  %294 = load i32, i32* %d, align 4
  %add383 = add i32 %294, %293
  store i32 %add383, i32* %d, align 4
  %295 = load i32, i32* %t0, align 4
  %296 = load i32, i32* %t1, align 4
  %add384 = add i32 %295, %296
  store i32 %add384, i32* %h, align 4
  br label %do.end.385

do.end.385:                                       ; preds = %do.body.347
  br label %do.body.386

do.body.386:                                      ; preds = %do.end.385
  %297 = load i32, i32* %h, align 4
  %shl387 = shl i32 %297, 30
  %298 = load i32, i32* %h, align 4
  %shr388 = lshr i32 %298, 2
  %or389 = or i32 %shl387, %shr388
  %299 = load i32, i32* %h, align 4
  %shl390 = shl i32 %299, 19
  %300 = load i32, i32* %h, align 4
  %shr391 = lshr i32 %300, 13
  %or392 = or i32 %shl390, %shr391
  %xor393 = xor i32 %or389, %or392
  %301 = load i32, i32* %h, align 4
  %shl394 = shl i32 %301, 10
  %302 = load i32, i32* %h, align 4
  %shr395 = lshr i32 %302, 22
  %or396 = or i32 %shl394, %shr395
  %xor397 = xor i32 %xor393, %or396
  %303 = load i32, i32* %h, align 4
  %304 = load i32, i32* %a, align 4
  %and398 = and i32 %303, %304
  %305 = load i32, i32* %b, align 4
  %306 = load i32, i32* %h, align 4
  %307 = load i32, i32* %a, align 4
  %or399 = or i32 %306, %307
  %and400 = and i32 %305, %or399
  %or401 = or i32 %and398, %and400
  %add402 = add i32 %xor397, %or401
  store i32 %add402, i32* %t0, align 4
  %308 = load i32, i32* %g, align 4
  %309 = load i32, i32* %d, align 4
  %shl403 = shl i32 %309, 26
  %310 = load i32, i32* %d, align 4
  %shr404 = lshr i32 %310, 6
  %or405 = or i32 %shl403, %shr404
  %311 = load i32, i32* %d, align 4
  %shl406 = shl i32 %311, 21
  %312 = load i32, i32* %d, align 4
  %shr407 = lshr i32 %312, 11
  %or408 = or i32 %shl406, %shr407
  %xor409 = xor i32 %or405, %or408
  %313 = load i32, i32* %d, align 4
  %shl410 = shl i32 %313, 7
  %314 = load i32, i32* %d, align 4
  %shr411 = lshr i32 %314, 25
  %or412 = or i32 %shl410, %shr411
  %xor413 = xor i32 %xor409, %or412
  %add414 = add i32 %308, %xor413
  %315 = load i32, i32* %f, align 4
  %316 = load i32, i32* %d, align 4
  %317 = load i32, i32* %e, align 4
  %318 = load i32, i32* %f, align 4
  %xor415 = xor i32 %317, %318
  %and416 = and i32 %316, %xor415
  %xor417 = xor i32 %315, %and416
  %add418 = add i32 %add414, %xor417
  %319 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 9), align 4
  %add419 = add i32 %add418, %319
  %arrayidx420 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %320 = load i32, i32* %arrayidx420, align 4
  %add421 = add i32 %add419, %320
  store i32 %add421, i32* %t1, align 4
  %321 = load i32, i32* %t1, align 4
  %322 = load i32, i32* %c, align 4
  %add422 = add i32 %322, %321
  store i32 %add422, i32* %c, align 4
  %323 = load i32, i32* %t0, align 4
  %324 = load i32, i32* %t1, align 4
  %add423 = add i32 %323, %324
  store i32 %add423, i32* %g, align 4
  br label %do.end.424

do.end.424:                                       ; preds = %do.body.386
  br label %do.body.425

do.body.425:                                      ; preds = %do.end.424
  %325 = load i32, i32* %g, align 4
  %shl426 = shl i32 %325, 30
  %326 = load i32, i32* %g, align 4
  %shr427 = lshr i32 %326, 2
  %or428 = or i32 %shl426, %shr427
  %327 = load i32, i32* %g, align 4
  %shl429 = shl i32 %327, 19
  %328 = load i32, i32* %g, align 4
  %shr430 = lshr i32 %328, 13
  %or431 = or i32 %shl429, %shr430
  %xor432 = xor i32 %or428, %or431
  %329 = load i32, i32* %g, align 4
  %shl433 = shl i32 %329, 10
  %330 = load i32, i32* %g, align 4
  %shr434 = lshr i32 %330, 22
  %or435 = or i32 %shl433, %shr434
  %xor436 = xor i32 %xor432, %or435
  %331 = load i32, i32* %g, align 4
  %332 = load i32, i32* %h, align 4
  %and437 = and i32 %331, %332
  %333 = load i32, i32* %a, align 4
  %334 = load i32, i32* %g, align 4
  %335 = load i32, i32* %h, align 4
  %or438 = or i32 %334, %335
  %and439 = and i32 %333, %or438
  %or440 = or i32 %and437, %and439
  %add441 = add i32 %xor436, %or440
  store i32 %add441, i32* %t0, align 4
  %336 = load i32, i32* %f, align 4
  %337 = load i32, i32* %c, align 4
  %shl442 = shl i32 %337, 26
  %338 = load i32, i32* %c, align 4
  %shr443 = lshr i32 %338, 6
  %or444 = or i32 %shl442, %shr443
  %339 = load i32, i32* %c, align 4
  %shl445 = shl i32 %339, 21
  %340 = load i32, i32* %c, align 4
  %shr446 = lshr i32 %340, 11
  %or447 = or i32 %shl445, %shr446
  %xor448 = xor i32 %or444, %or447
  %341 = load i32, i32* %c, align 4
  %shl449 = shl i32 %341, 7
  %342 = load i32, i32* %c, align 4
  %shr450 = lshr i32 %342, 25
  %or451 = or i32 %shl449, %shr450
  %xor452 = xor i32 %xor448, %or451
  %add453 = add i32 %336, %xor452
  %343 = load i32, i32* %e, align 4
  %344 = load i32, i32* %c, align 4
  %345 = load i32, i32* %d, align 4
  %346 = load i32, i32* %e, align 4
  %xor454 = xor i32 %345, %346
  %and455 = and i32 %344, %xor454
  %xor456 = xor i32 %343, %and455
  %add457 = add i32 %add453, %xor456
  %347 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 10), align 4
  %add458 = add i32 %add457, %347
  %arrayidx459 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %348 = load i32, i32* %arrayidx459, align 4
  %add460 = add i32 %add458, %348
  store i32 %add460, i32* %t1, align 4
  %349 = load i32, i32* %t1, align 4
  %350 = load i32, i32* %b, align 4
  %add461 = add i32 %350, %349
  store i32 %add461, i32* %b, align 4
  %351 = load i32, i32* %t0, align 4
  %352 = load i32, i32* %t1, align 4
  %add462 = add i32 %351, %352
  store i32 %add462, i32* %f, align 4
  br label %do.end.463

do.end.463:                                       ; preds = %do.body.425
  br label %do.body.464

do.body.464:                                      ; preds = %do.end.463
  %353 = load i32, i32* %f, align 4
  %shl465 = shl i32 %353, 30
  %354 = load i32, i32* %f, align 4
  %shr466 = lshr i32 %354, 2
  %or467 = or i32 %shl465, %shr466
  %355 = load i32, i32* %f, align 4
  %shl468 = shl i32 %355, 19
  %356 = load i32, i32* %f, align 4
  %shr469 = lshr i32 %356, 13
  %or470 = or i32 %shl468, %shr469
  %xor471 = xor i32 %or467, %or470
  %357 = load i32, i32* %f, align 4
  %shl472 = shl i32 %357, 10
  %358 = load i32, i32* %f, align 4
  %shr473 = lshr i32 %358, 22
  %or474 = or i32 %shl472, %shr473
  %xor475 = xor i32 %xor471, %or474
  %359 = load i32, i32* %f, align 4
  %360 = load i32, i32* %g, align 4
  %and476 = and i32 %359, %360
  %361 = load i32, i32* %h, align 4
  %362 = load i32, i32* %f, align 4
  %363 = load i32, i32* %g, align 4
  %or477 = or i32 %362, %363
  %and478 = and i32 %361, %or477
  %or479 = or i32 %and476, %and478
  %add480 = add i32 %xor475, %or479
  store i32 %add480, i32* %t0, align 4
  %364 = load i32, i32* %e, align 4
  %365 = load i32, i32* %b, align 4
  %shl481 = shl i32 %365, 26
  %366 = load i32, i32* %b, align 4
  %shr482 = lshr i32 %366, 6
  %or483 = or i32 %shl481, %shr482
  %367 = load i32, i32* %b, align 4
  %shl484 = shl i32 %367, 21
  %368 = load i32, i32* %b, align 4
  %shr485 = lshr i32 %368, 11
  %or486 = or i32 %shl484, %shr485
  %xor487 = xor i32 %or483, %or486
  %369 = load i32, i32* %b, align 4
  %shl488 = shl i32 %369, 7
  %370 = load i32, i32* %b, align 4
  %shr489 = lshr i32 %370, 25
  %or490 = or i32 %shl488, %shr489
  %xor491 = xor i32 %xor487, %or490
  %add492 = add i32 %364, %xor491
  %371 = load i32, i32* %d, align 4
  %372 = load i32, i32* %b, align 4
  %373 = load i32, i32* %c, align 4
  %374 = load i32, i32* %d, align 4
  %xor493 = xor i32 %373, %374
  %and494 = and i32 %372, %xor493
  %xor495 = xor i32 %371, %and494
  %add496 = add i32 %add492, %xor495
  %375 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 11), align 4
  %add497 = add i32 %add496, %375
  %arrayidx498 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %376 = load i32, i32* %arrayidx498, align 4
  %add499 = add i32 %add497, %376
  store i32 %add499, i32* %t1, align 4
  %377 = load i32, i32* %t1, align 4
  %378 = load i32, i32* %a, align 4
  %add500 = add i32 %378, %377
  store i32 %add500, i32* %a, align 4
  %379 = load i32, i32* %t0, align 4
  %380 = load i32, i32* %t1, align 4
  %add501 = add i32 %379, %380
  store i32 %add501, i32* %e, align 4
  br label %do.end.502

do.end.502:                                       ; preds = %do.body.464
  br label %do.body.503

do.body.503:                                      ; preds = %do.end.502
  %381 = load i32, i32* %e, align 4
  %shl504 = shl i32 %381, 30
  %382 = load i32, i32* %e, align 4
  %shr505 = lshr i32 %382, 2
  %or506 = or i32 %shl504, %shr505
  %383 = load i32, i32* %e, align 4
  %shl507 = shl i32 %383, 19
  %384 = load i32, i32* %e, align 4
  %shr508 = lshr i32 %384, 13
  %or509 = or i32 %shl507, %shr508
  %xor510 = xor i32 %or506, %or509
  %385 = load i32, i32* %e, align 4
  %shl511 = shl i32 %385, 10
  %386 = load i32, i32* %e, align 4
  %shr512 = lshr i32 %386, 22
  %or513 = or i32 %shl511, %shr512
  %xor514 = xor i32 %xor510, %or513
  %387 = load i32, i32* %e, align 4
  %388 = load i32, i32* %f, align 4
  %and515 = and i32 %387, %388
  %389 = load i32, i32* %g, align 4
  %390 = load i32, i32* %e, align 4
  %391 = load i32, i32* %f, align 4
  %or516 = or i32 %390, %391
  %and517 = and i32 %389, %or516
  %or518 = or i32 %and515, %and517
  %add519 = add i32 %xor514, %or518
  store i32 %add519, i32* %t0, align 4
  %392 = load i32, i32* %d, align 4
  %393 = load i32, i32* %a, align 4
  %shl520 = shl i32 %393, 26
  %394 = load i32, i32* %a, align 4
  %shr521 = lshr i32 %394, 6
  %or522 = or i32 %shl520, %shr521
  %395 = load i32, i32* %a, align 4
  %shl523 = shl i32 %395, 21
  %396 = load i32, i32* %a, align 4
  %shr524 = lshr i32 %396, 11
  %or525 = or i32 %shl523, %shr524
  %xor526 = xor i32 %or522, %or525
  %397 = load i32, i32* %a, align 4
  %shl527 = shl i32 %397, 7
  %398 = load i32, i32* %a, align 4
  %shr528 = lshr i32 %398, 25
  %or529 = or i32 %shl527, %shr528
  %xor530 = xor i32 %xor526, %or529
  %add531 = add i32 %392, %xor530
  %399 = load i32, i32* %c, align 4
  %400 = load i32, i32* %a, align 4
  %401 = load i32, i32* %b, align 4
  %402 = load i32, i32* %c, align 4
  %xor532 = xor i32 %401, %402
  %and533 = and i32 %400, %xor532
  %xor534 = xor i32 %399, %and533
  %add535 = add i32 %add531, %xor534
  %403 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 12), align 4
  %add536 = add i32 %add535, %403
  %arrayidx537 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %404 = load i32, i32* %arrayidx537, align 4
  %add538 = add i32 %add536, %404
  store i32 %add538, i32* %t1, align 4
  %405 = load i32, i32* %t1, align 4
  %406 = load i32, i32* %h, align 4
  %add539 = add i32 %406, %405
  store i32 %add539, i32* %h, align 4
  %407 = load i32, i32* %t0, align 4
  %408 = load i32, i32* %t1, align 4
  %add540 = add i32 %407, %408
  store i32 %add540, i32* %d, align 4
  br label %do.end.541

do.end.541:                                       ; preds = %do.body.503
  br label %do.body.542

do.body.542:                                      ; preds = %do.end.541
  %409 = load i32, i32* %d, align 4
  %shl543 = shl i32 %409, 30
  %410 = load i32, i32* %d, align 4
  %shr544 = lshr i32 %410, 2
  %or545 = or i32 %shl543, %shr544
  %411 = load i32, i32* %d, align 4
  %shl546 = shl i32 %411, 19
  %412 = load i32, i32* %d, align 4
  %shr547 = lshr i32 %412, 13
  %or548 = or i32 %shl546, %shr547
  %xor549 = xor i32 %or545, %or548
  %413 = load i32, i32* %d, align 4
  %shl550 = shl i32 %413, 10
  %414 = load i32, i32* %d, align 4
  %shr551 = lshr i32 %414, 22
  %or552 = or i32 %shl550, %shr551
  %xor553 = xor i32 %xor549, %or552
  %415 = load i32, i32* %d, align 4
  %416 = load i32, i32* %e, align 4
  %and554 = and i32 %415, %416
  %417 = load i32, i32* %f, align 4
  %418 = load i32, i32* %d, align 4
  %419 = load i32, i32* %e, align 4
  %or555 = or i32 %418, %419
  %and556 = and i32 %417, %or555
  %or557 = or i32 %and554, %and556
  %add558 = add i32 %xor553, %or557
  store i32 %add558, i32* %t0, align 4
  %420 = load i32, i32* %c, align 4
  %421 = load i32, i32* %h, align 4
  %shl559 = shl i32 %421, 26
  %422 = load i32, i32* %h, align 4
  %shr560 = lshr i32 %422, 6
  %or561 = or i32 %shl559, %shr560
  %423 = load i32, i32* %h, align 4
  %shl562 = shl i32 %423, 21
  %424 = load i32, i32* %h, align 4
  %shr563 = lshr i32 %424, 11
  %or564 = or i32 %shl562, %shr563
  %xor565 = xor i32 %or561, %or564
  %425 = load i32, i32* %h, align 4
  %shl566 = shl i32 %425, 7
  %426 = load i32, i32* %h, align 4
  %shr567 = lshr i32 %426, 25
  %or568 = or i32 %shl566, %shr567
  %xor569 = xor i32 %xor565, %or568
  %add570 = add i32 %420, %xor569
  %427 = load i32, i32* %b, align 4
  %428 = load i32, i32* %h, align 4
  %429 = load i32, i32* %a, align 4
  %430 = load i32, i32* %b, align 4
  %xor571 = xor i32 %429, %430
  %and572 = and i32 %428, %xor571
  %xor573 = xor i32 %427, %and572
  %add574 = add i32 %add570, %xor573
  %431 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 13), align 4
  %add575 = add i32 %add574, %431
  %arrayidx576 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %432 = load i32, i32* %arrayidx576, align 4
  %add577 = add i32 %add575, %432
  store i32 %add577, i32* %t1, align 4
  %433 = load i32, i32* %t1, align 4
  %434 = load i32, i32* %g, align 4
  %add578 = add i32 %434, %433
  store i32 %add578, i32* %g, align 4
  %435 = load i32, i32* %t0, align 4
  %436 = load i32, i32* %t1, align 4
  %add579 = add i32 %435, %436
  store i32 %add579, i32* %c, align 4
  br label %do.end.580

do.end.580:                                       ; preds = %do.body.542
  br label %do.body.581

do.body.581:                                      ; preds = %do.end.580
  %437 = load i32, i32* %c, align 4
  %shl582 = shl i32 %437, 30
  %438 = load i32, i32* %c, align 4
  %shr583 = lshr i32 %438, 2
  %or584 = or i32 %shl582, %shr583
  %439 = load i32, i32* %c, align 4
  %shl585 = shl i32 %439, 19
  %440 = load i32, i32* %c, align 4
  %shr586 = lshr i32 %440, 13
  %or587 = or i32 %shl585, %shr586
  %xor588 = xor i32 %or584, %or587
  %441 = load i32, i32* %c, align 4
  %shl589 = shl i32 %441, 10
  %442 = load i32, i32* %c, align 4
  %shr590 = lshr i32 %442, 22
  %or591 = or i32 %shl589, %shr590
  %xor592 = xor i32 %xor588, %or591
  %443 = load i32, i32* %c, align 4
  %444 = load i32, i32* %d, align 4
  %and593 = and i32 %443, %444
  %445 = load i32, i32* %e, align 4
  %446 = load i32, i32* %c, align 4
  %447 = load i32, i32* %d, align 4
  %or594 = or i32 %446, %447
  %and595 = and i32 %445, %or594
  %or596 = or i32 %and593, %and595
  %add597 = add i32 %xor592, %or596
  store i32 %add597, i32* %t0, align 4
  %448 = load i32, i32* %b, align 4
  %449 = load i32, i32* %g, align 4
  %shl598 = shl i32 %449, 26
  %450 = load i32, i32* %g, align 4
  %shr599 = lshr i32 %450, 6
  %or600 = or i32 %shl598, %shr599
  %451 = load i32, i32* %g, align 4
  %shl601 = shl i32 %451, 21
  %452 = load i32, i32* %g, align 4
  %shr602 = lshr i32 %452, 11
  %or603 = or i32 %shl601, %shr602
  %xor604 = xor i32 %or600, %or603
  %453 = load i32, i32* %g, align 4
  %shl605 = shl i32 %453, 7
  %454 = load i32, i32* %g, align 4
  %shr606 = lshr i32 %454, 25
  %or607 = or i32 %shl605, %shr606
  %xor608 = xor i32 %xor604, %or607
  %add609 = add i32 %448, %xor608
  %455 = load i32, i32* %a, align 4
  %456 = load i32, i32* %g, align 4
  %457 = load i32, i32* %h, align 4
  %458 = load i32, i32* %a, align 4
  %xor610 = xor i32 %457, %458
  %and611 = and i32 %456, %xor610
  %xor612 = xor i32 %455, %and611
  %add613 = add i32 %add609, %xor612
  %459 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 14), align 4
  %add614 = add i32 %add613, %459
  %arrayidx615 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %460 = load i32, i32* %arrayidx615, align 4
  %add616 = add i32 %add614, %460
  store i32 %add616, i32* %t1, align 4
  %461 = load i32, i32* %t1, align 4
  %462 = load i32, i32* %f, align 4
  %add617 = add i32 %462, %461
  store i32 %add617, i32* %f, align 4
  %463 = load i32, i32* %t0, align 4
  %464 = load i32, i32* %t1, align 4
  %add618 = add i32 %463, %464
  store i32 %add618, i32* %b, align 4
  br label %do.end.619

do.end.619:                                       ; preds = %do.body.581
  br label %do.body.620

do.body.620:                                      ; preds = %do.end.619
  %465 = load i32, i32* %b, align 4
  %shl621 = shl i32 %465, 30
  %466 = load i32, i32* %b, align 4
  %shr622 = lshr i32 %466, 2
  %or623 = or i32 %shl621, %shr622
  %467 = load i32, i32* %b, align 4
  %shl624 = shl i32 %467, 19
  %468 = load i32, i32* %b, align 4
  %shr625 = lshr i32 %468, 13
  %or626 = or i32 %shl624, %shr625
  %xor627 = xor i32 %or623, %or626
  %469 = load i32, i32* %b, align 4
  %shl628 = shl i32 %469, 10
  %470 = load i32, i32* %b, align 4
  %shr629 = lshr i32 %470, 22
  %or630 = or i32 %shl628, %shr629
  %xor631 = xor i32 %xor627, %or630
  %471 = load i32, i32* %b, align 4
  %472 = load i32, i32* %c, align 4
  %and632 = and i32 %471, %472
  %473 = load i32, i32* %d, align 4
  %474 = load i32, i32* %b, align 4
  %475 = load i32, i32* %c, align 4
  %or633 = or i32 %474, %475
  %and634 = and i32 %473, %or633
  %or635 = or i32 %and632, %and634
  %add636 = add i32 %xor631, %or635
  store i32 %add636, i32* %t0, align 4
  %476 = load i32, i32* %a, align 4
  %477 = load i32, i32* %f, align 4
  %shl637 = shl i32 %477, 26
  %478 = load i32, i32* %f, align 4
  %shr638 = lshr i32 %478, 6
  %or639 = or i32 %shl637, %shr638
  %479 = load i32, i32* %f, align 4
  %shl640 = shl i32 %479, 21
  %480 = load i32, i32* %f, align 4
  %shr641 = lshr i32 %480, 11
  %or642 = or i32 %shl640, %shr641
  %xor643 = xor i32 %or639, %or642
  %481 = load i32, i32* %f, align 4
  %shl644 = shl i32 %481, 7
  %482 = load i32, i32* %f, align 4
  %shr645 = lshr i32 %482, 25
  %or646 = or i32 %shl644, %shr645
  %xor647 = xor i32 %xor643, %or646
  %add648 = add i32 %476, %xor647
  %483 = load i32, i32* %h, align 4
  %484 = load i32, i32* %f, align 4
  %485 = load i32, i32* %g, align 4
  %486 = load i32, i32* %h, align 4
  %xor649 = xor i32 %485, %486
  %and650 = and i32 %484, %xor649
  %xor651 = xor i32 %483, %and650
  %add652 = add i32 %add648, %xor651
  %487 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 15), align 4
  %add653 = add i32 %add652, %487
  %arrayidx654 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %488 = load i32, i32* %arrayidx654, align 4
  %add655 = add i32 %add653, %488
  store i32 %add655, i32* %t1, align 4
  %489 = load i32, i32* %t1, align 4
  %490 = load i32, i32* %e, align 4
  %add656 = add i32 %490, %489
  store i32 %add656, i32* %e, align 4
  %491 = load i32, i32* %t0, align 4
  %492 = load i32, i32* %t1, align 4
  %add657 = add i32 %491, %492
  store i32 %add657, i32* %a, align 4
  br label %do.end.658

do.end.658:                                       ; preds = %do.body.620
  br label %do.body.659

do.body.659:                                      ; preds = %do.end.658
  %493 = load i32, i32* %a, align 4
  %shl660 = shl i32 %493, 30
  %494 = load i32, i32* %a, align 4
  %shr661 = lshr i32 %494, 2
  %or662 = or i32 %shl660, %shr661
  %495 = load i32, i32* %a, align 4
  %shl663 = shl i32 %495, 19
  %496 = load i32, i32* %a, align 4
  %shr664 = lshr i32 %496, 13
  %or665 = or i32 %shl663, %shr664
  %xor666 = xor i32 %or662, %or665
  %497 = load i32, i32* %a, align 4
  %shl667 = shl i32 %497, 10
  %498 = load i32, i32* %a, align 4
  %shr668 = lshr i32 %498, 22
  %or669 = or i32 %shl667, %shr668
  %xor670 = xor i32 %xor666, %or669
  %499 = load i32, i32* %a, align 4
  %500 = load i32, i32* %b, align 4
  %and671 = and i32 %499, %500
  %501 = load i32, i32* %c, align 4
  %502 = load i32, i32* %a, align 4
  %503 = load i32, i32* %b, align 4
  %or672 = or i32 %502, %503
  %and673 = and i32 %501, %or672
  %or674 = or i32 %and671, %and673
  %add675 = add i32 %xor670, %or674
  store i32 %add675, i32* %t0, align 4
  %504 = load i32, i32* %h, align 4
  %505 = load i32, i32* %e, align 4
  %shl676 = shl i32 %505, 26
  %506 = load i32, i32* %e, align 4
  %shr677 = lshr i32 %506, 6
  %or678 = or i32 %shl676, %shr677
  %507 = load i32, i32* %e, align 4
  %shl679 = shl i32 %507, 21
  %508 = load i32, i32* %e, align 4
  %shr680 = lshr i32 %508, 11
  %or681 = or i32 %shl679, %shr680
  %xor682 = xor i32 %or678, %or681
  %509 = load i32, i32* %e, align 4
  %shl683 = shl i32 %509, 7
  %510 = load i32, i32* %e, align 4
  %shr684 = lshr i32 %510, 25
  %or685 = or i32 %shl683, %shr684
  %xor686 = xor i32 %xor682, %or685
  %add687 = add i32 %504, %xor686
  %511 = load i32, i32* %g, align 4
  %512 = load i32, i32* %e, align 4
  %513 = load i32, i32* %f, align 4
  %514 = load i32, i32* %g, align 4
  %xor688 = xor i32 %513, %514
  %and689 = and i32 %512, %xor688
  %xor690 = xor i32 %511, %and689
  %add691 = add i32 %add687, %xor690
  %515 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 16), align 4
  %add692 = add i32 %add691, %515
  %arrayidx693 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %516 = load i32, i32* %arrayidx693, align 4
  %shl694 = shl i32 %516, 15
  %arrayidx695 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %517 = load i32, i32* %arrayidx695, align 4
  %shr696 = lshr i32 %517, 17
  %or697 = or i32 %shl694, %shr696
  %arrayidx698 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %518 = load i32, i32* %arrayidx698, align 4
  %shl699 = shl i32 %518, 13
  %arrayidx700 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %519 = load i32, i32* %arrayidx700, align 4
  %shr701 = lshr i32 %519, 19
  %or702 = or i32 %shl699, %shr701
  %xor703 = xor i32 %or697, %or702
  %arrayidx704 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %520 = load i32, i32* %arrayidx704, align 4
  %shr705 = lshr i32 %520, 10
  %xor706 = xor i32 %xor703, %shr705
  %arrayidx707 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %521 = load i32, i32* %arrayidx707, align 4
  %add708 = add i32 %xor706, %521
  %arrayidx709 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %522 = load i32, i32* %arrayidx709, align 4
  %shl710 = shl i32 %522, 25
  %arrayidx711 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %523 = load i32, i32* %arrayidx711, align 4
  %shr712 = lshr i32 %523, 7
  %or713 = or i32 %shl710, %shr712
  %arrayidx714 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %524 = load i32, i32* %arrayidx714, align 4
  %shl715 = shl i32 %524, 14
  %arrayidx716 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %525 = load i32, i32* %arrayidx716, align 4
  %shr717 = lshr i32 %525, 18
  %or718 = or i32 %shl715, %shr717
  %xor719 = xor i32 %or713, %or718
  %arrayidx720 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %526 = load i32, i32* %arrayidx720, align 4
  %shr721 = lshr i32 %526, 3
  %xor722 = xor i32 %xor719, %shr721
  %add723 = add i32 %add708, %xor722
  %arrayidx724 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %527 = load i32, i32* %arrayidx724, align 4
  %add725 = add i32 %add723, %527
  store i32 %add725, i32* %tm, align 4
  %528 = load i32, i32* %tm, align 4
  %arrayidx726 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %528, i32* %arrayidx726, align 4
  %add727 = add i32 %add692, %528
  store i32 %add727, i32* %t1, align 4
  %529 = load i32, i32* %t1, align 4
  %530 = load i32, i32* %d, align 4
  %add728 = add i32 %530, %529
  store i32 %add728, i32* %d, align 4
  %531 = load i32, i32* %t0, align 4
  %532 = load i32, i32* %t1, align 4
  %add729 = add i32 %531, %532
  store i32 %add729, i32* %h, align 4
  br label %do.end.730

do.end.730:                                       ; preds = %do.body.659
  br label %do.body.731

do.body.731:                                      ; preds = %do.end.730
  %533 = load i32, i32* %h, align 4
  %shl732 = shl i32 %533, 30
  %534 = load i32, i32* %h, align 4
  %shr733 = lshr i32 %534, 2
  %or734 = or i32 %shl732, %shr733
  %535 = load i32, i32* %h, align 4
  %shl735 = shl i32 %535, 19
  %536 = load i32, i32* %h, align 4
  %shr736 = lshr i32 %536, 13
  %or737 = or i32 %shl735, %shr736
  %xor738 = xor i32 %or734, %or737
  %537 = load i32, i32* %h, align 4
  %shl739 = shl i32 %537, 10
  %538 = load i32, i32* %h, align 4
  %shr740 = lshr i32 %538, 22
  %or741 = or i32 %shl739, %shr740
  %xor742 = xor i32 %xor738, %or741
  %539 = load i32, i32* %h, align 4
  %540 = load i32, i32* %a, align 4
  %and743 = and i32 %539, %540
  %541 = load i32, i32* %b, align 4
  %542 = load i32, i32* %h, align 4
  %543 = load i32, i32* %a, align 4
  %or744 = or i32 %542, %543
  %and745 = and i32 %541, %or744
  %or746 = or i32 %and743, %and745
  %add747 = add i32 %xor742, %or746
  store i32 %add747, i32* %t0, align 4
  %544 = load i32, i32* %g, align 4
  %545 = load i32, i32* %d, align 4
  %shl748 = shl i32 %545, 26
  %546 = load i32, i32* %d, align 4
  %shr749 = lshr i32 %546, 6
  %or750 = or i32 %shl748, %shr749
  %547 = load i32, i32* %d, align 4
  %shl751 = shl i32 %547, 21
  %548 = load i32, i32* %d, align 4
  %shr752 = lshr i32 %548, 11
  %or753 = or i32 %shl751, %shr752
  %xor754 = xor i32 %or750, %or753
  %549 = load i32, i32* %d, align 4
  %shl755 = shl i32 %549, 7
  %550 = load i32, i32* %d, align 4
  %shr756 = lshr i32 %550, 25
  %or757 = or i32 %shl755, %shr756
  %xor758 = xor i32 %xor754, %or757
  %add759 = add i32 %544, %xor758
  %551 = load i32, i32* %f, align 4
  %552 = load i32, i32* %d, align 4
  %553 = load i32, i32* %e, align 4
  %554 = load i32, i32* %f, align 4
  %xor760 = xor i32 %553, %554
  %and761 = and i32 %552, %xor760
  %xor762 = xor i32 %551, %and761
  %add763 = add i32 %add759, %xor762
  %555 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 17), align 4
  %add764 = add i32 %add763, %555
  %arrayidx765 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %556 = load i32, i32* %arrayidx765, align 4
  %shl766 = shl i32 %556, 15
  %arrayidx767 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %557 = load i32, i32* %arrayidx767, align 4
  %shr768 = lshr i32 %557, 17
  %or769 = or i32 %shl766, %shr768
  %arrayidx770 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %558 = load i32, i32* %arrayidx770, align 4
  %shl771 = shl i32 %558, 13
  %arrayidx772 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %559 = load i32, i32* %arrayidx772, align 4
  %shr773 = lshr i32 %559, 19
  %or774 = or i32 %shl771, %shr773
  %xor775 = xor i32 %or769, %or774
  %arrayidx776 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %560 = load i32, i32* %arrayidx776, align 4
  %shr777 = lshr i32 %560, 10
  %xor778 = xor i32 %xor775, %shr777
  %arrayidx779 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %561 = load i32, i32* %arrayidx779, align 4
  %add780 = add i32 %xor778, %561
  %arrayidx781 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %562 = load i32, i32* %arrayidx781, align 4
  %shl782 = shl i32 %562, 25
  %arrayidx783 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %563 = load i32, i32* %arrayidx783, align 4
  %shr784 = lshr i32 %563, 7
  %or785 = or i32 %shl782, %shr784
  %arrayidx786 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %564 = load i32, i32* %arrayidx786, align 4
  %shl787 = shl i32 %564, 14
  %arrayidx788 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %565 = load i32, i32* %arrayidx788, align 4
  %shr789 = lshr i32 %565, 18
  %or790 = or i32 %shl787, %shr789
  %xor791 = xor i32 %or785, %or790
  %arrayidx792 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %566 = load i32, i32* %arrayidx792, align 4
  %shr793 = lshr i32 %566, 3
  %xor794 = xor i32 %xor791, %shr793
  %add795 = add i32 %add780, %xor794
  %arrayidx796 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %567 = load i32, i32* %arrayidx796, align 4
  %add797 = add i32 %add795, %567
  store i32 %add797, i32* %tm, align 4
  %568 = load i32, i32* %tm, align 4
  %arrayidx798 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %568, i32* %arrayidx798, align 4
  %add799 = add i32 %add764, %568
  store i32 %add799, i32* %t1, align 4
  %569 = load i32, i32* %t1, align 4
  %570 = load i32, i32* %c, align 4
  %add800 = add i32 %570, %569
  store i32 %add800, i32* %c, align 4
  %571 = load i32, i32* %t0, align 4
  %572 = load i32, i32* %t1, align 4
  %add801 = add i32 %571, %572
  store i32 %add801, i32* %g, align 4
  br label %do.end.802

do.end.802:                                       ; preds = %do.body.731
  br label %do.body.803

do.body.803:                                      ; preds = %do.end.802
  %573 = load i32, i32* %g, align 4
  %shl804 = shl i32 %573, 30
  %574 = load i32, i32* %g, align 4
  %shr805 = lshr i32 %574, 2
  %or806 = or i32 %shl804, %shr805
  %575 = load i32, i32* %g, align 4
  %shl807 = shl i32 %575, 19
  %576 = load i32, i32* %g, align 4
  %shr808 = lshr i32 %576, 13
  %or809 = or i32 %shl807, %shr808
  %xor810 = xor i32 %or806, %or809
  %577 = load i32, i32* %g, align 4
  %shl811 = shl i32 %577, 10
  %578 = load i32, i32* %g, align 4
  %shr812 = lshr i32 %578, 22
  %or813 = or i32 %shl811, %shr812
  %xor814 = xor i32 %xor810, %or813
  %579 = load i32, i32* %g, align 4
  %580 = load i32, i32* %h, align 4
  %and815 = and i32 %579, %580
  %581 = load i32, i32* %a, align 4
  %582 = load i32, i32* %g, align 4
  %583 = load i32, i32* %h, align 4
  %or816 = or i32 %582, %583
  %and817 = and i32 %581, %or816
  %or818 = or i32 %and815, %and817
  %add819 = add i32 %xor814, %or818
  store i32 %add819, i32* %t0, align 4
  %584 = load i32, i32* %f, align 4
  %585 = load i32, i32* %c, align 4
  %shl820 = shl i32 %585, 26
  %586 = load i32, i32* %c, align 4
  %shr821 = lshr i32 %586, 6
  %or822 = or i32 %shl820, %shr821
  %587 = load i32, i32* %c, align 4
  %shl823 = shl i32 %587, 21
  %588 = load i32, i32* %c, align 4
  %shr824 = lshr i32 %588, 11
  %or825 = or i32 %shl823, %shr824
  %xor826 = xor i32 %or822, %or825
  %589 = load i32, i32* %c, align 4
  %shl827 = shl i32 %589, 7
  %590 = load i32, i32* %c, align 4
  %shr828 = lshr i32 %590, 25
  %or829 = or i32 %shl827, %shr828
  %xor830 = xor i32 %xor826, %or829
  %add831 = add i32 %584, %xor830
  %591 = load i32, i32* %e, align 4
  %592 = load i32, i32* %c, align 4
  %593 = load i32, i32* %d, align 4
  %594 = load i32, i32* %e, align 4
  %xor832 = xor i32 %593, %594
  %and833 = and i32 %592, %xor832
  %xor834 = xor i32 %591, %and833
  %add835 = add i32 %add831, %xor834
  %595 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 18), align 4
  %add836 = add i32 %add835, %595
  %arrayidx837 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %596 = load i32, i32* %arrayidx837, align 4
  %shl838 = shl i32 %596, 15
  %arrayidx839 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %597 = load i32, i32* %arrayidx839, align 4
  %shr840 = lshr i32 %597, 17
  %or841 = or i32 %shl838, %shr840
  %arrayidx842 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %598 = load i32, i32* %arrayidx842, align 4
  %shl843 = shl i32 %598, 13
  %arrayidx844 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %599 = load i32, i32* %arrayidx844, align 4
  %shr845 = lshr i32 %599, 19
  %or846 = or i32 %shl843, %shr845
  %xor847 = xor i32 %or841, %or846
  %arrayidx848 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %600 = load i32, i32* %arrayidx848, align 4
  %shr849 = lshr i32 %600, 10
  %xor850 = xor i32 %xor847, %shr849
  %arrayidx851 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %601 = load i32, i32* %arrayidx851, align 4
  %add852 = add i32 %xor850, %601
  %arrayidx853 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %602 = load i32, i32* %arrayidx853, align 4
  %shl854 = shl i32 %602, 25
  %arrayidx855 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %603 = load i32, i32* %arrayidx855, align 4
  %shr856 = lshr i32 %603, 7
  %or857 = or i32 %shl854, %shr856
  %arrayidx858 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %604 = load i32, i32* %arrayidx858, align 4
  %shl859 = shl i32 %604, 14
  %arrayidx860 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %605 = load i32, i32* %arrayidx860, align 4
  %shr861 = lshr i32 %605, 18
  %or862 = or i32 %shl859, %shr861
  %xor863 = xor i32 %or857, %or862
  %arrayidx864 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %606 = load i32, i32* %arrayidx864, align 4
  %shr865 = lshr i32 %606, 3
  %xor866 = xor i32 %xor863, %shr865
  %add867 = add i32 %add852, %xor866
  %arrayidx868 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %607 = load i32, i32* %arrayidx868, align 4
  %add869 = add i32 %add867, %607
  store i32 %add869, i32* %tm, align 4
  %608 = load i32, i32* %tm, align 4
  %arrayidx870 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %608, i32* %arrayidx870, align 4
  %add871 = add i32 %add836, %608
  store i32 %add871, i32* %t1, align 4
  %609 = load i32, i32* %t1, align 4
  %610 = load i32, i32* %b, align 4
  %add872 = add i32 %610, %609
  store i32 %add872, i32* %b, align 4
  %611 = load i32, i32* %t0, align 4
  %612 = load i32, i32* %t1, align 4
  %add873 = add i32 %611, %612
  store i32 %add873, i32* %f, align 4
  br label %do.end.874

do.end.874:                                       ; preds = %do.body.803
  br label %do.body.875

do.body.875:                                      ; preds = %do.end.874
  %613 = load i32, i32* %f, align 4
  %shl876 = shl i32 %613, 30
  %614 = load i32, i32* %f, align 4
  %shr877 = lshr i32 %614, 2
  %or878 = or i32 %shl876, %shr877
  %615 = load i32, i32* %f, align 4
  %shl879 = shl i32 %615, 19
  %616 = load i32, i32* %f, align 4
  %shr880 = lshr i32 %616, 13
  %or881 = or i32 %shl879, %shr880
  %xor882 = xor i32 %or878, %or881
  %617 = load i32, i32* %f, align 4
  %shl883 = shl i32 %617, 10
  %618 = load i32, i32* %f, align 4
  %shr884 = lshr i32 %618, 22
  %or885 = or i32 %shl883, %shr884
  %xor886 = xor i32 %xor882, %or885
  %619 = load i32, i32* %f, align 4
  %620 = load i32, i32* %g, align 4
  %and887 = and i32 %619, %620
  %621 = load i32, i32* %h, align 4
  %622 = load i32, i32* %f, align 4
  %623 = load i32, i32* %g, align 4
  %or888 = or i32 %622, %623
  %and889 = and i32 %621, %or888
  %or890 = or i32 %and887, %and889
  %add891 = add i32 %xor886, %or890
  store i32 %add891, i32* %t0, align 4
  %624 = load i32, i32* %e, align 4
  %625 = load i32, i32* %b, align 4
  %shl892 = shl i32 %625, 26
  %626 = load i32, i32* %b, align 4
  %shr893 = lshr i32 %626, 6
  %or894 = or i32 %shl892, %shr893
  %627 = load i32, i32* %b, align 4
  %shl895 = shl i32 %627, 21
  %628 = load i32, i32* %b, align 4
  %shr896 = lshr i32 %628, 11
  %or897 = or i32 %shl895, %shr896
  %xor898 = xor i32 %or894, %or897
  %629 = load i32, i32* %b, align 4
  %shl899 = shl i32 %629, 7
  %630 = load i32, i32* %b, align 4
  %shr900 = lshr i32 %630, 25
  %or901 = or i32 %shl899, %shr900
  %xor902 = xor i32 %xor898, %or901
  %add903 = add i32 %624, %xor902
  %631 = load i32, i32* %d, align 4
  %632 = load i32, i32* %b, align 4
  %633 = load i32, i32* %c, align 4
  %634 = load i32, i32* %d, align 4
  %xor904 = xor i32 %633, %634
  %and905 = and i32 %632, %xor904
  %xor906 = xor i32 %631, %and905
  %add907 = add i32 %add903, %xor906
  %635 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 19), align 4
  %add908 = add i32 %add907, %635
  %arrayidx909 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %636 = load i32, i32* %arrayidx909, align 4
  %shl910 = shl i32 %636, 15
  %arrayidx911 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %637 = load i32, i32* %arrayidx911, align 4
  %shr912 = lshr i32 %637, 17
  %or913 = or i32 %shl910, %shr912
  %arrayidx914 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %638 = load i32, i32* %arrayidx914, align 4
  %shl915 = shl i32 %638, 13
  %arrayidx916 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %639 = load i32, i32* %arrayidx916, align 4
  %shr917 = lshr i32 %639, 19
  %or918 = or i32 %shl915, %shr917
  %xor919 = xor i32 %or913, %or918
  %arrayidx920 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %640 = load i32, i32* %arrayidx920, align 4
  %shr921 = lshr i32 %640, 10
  %xor922 = xor i32 %xor919, %shr921
  %arrayidx923 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %641 = load i32, i32* %arrayidx923, align 4
  %add924 = add i32 %xor922, %641
  %arrayidx925 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %642 = load i32, i32* %arrayidx925, align 4
  %shl926 = shl i32 %642, 25
  %arrayidx927 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %643 = load i32, i32* %arrayidx927, align 4
  %shr928 = lshr i32 %643, 7
  %or929 = or i32 %shl926, %shr928
  %arrayidx930 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %644 = load i32, i32* %arrayidx930, align 4
  %shl931 = shl i32 %644, 14
  %arrayidx932 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %645 = load i32, i32* %arrayidx932, align 4
  %shr933 = lshr i32 %645, 18
  %or934 = or i32 %shl931, %shr933
  %xor935 = xor i32 %or929, %or934
  %arrayidx936 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %646 = load i32, i32* %arrayidx936, align 4
  %shr937 = lshr i32 %646, 3
  %xor938 = xor i32 %xor935, %shr937
  %add939 = add i32 %add924, %xor938
  %arrayidx940 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %647 = load i32, i32* %arrayidx940, align 4
  %add941 = add i32 %add939, %647
  store i32 %add941, i32* %tm, align 4
  %648 = load i32, i32* %tm, align 4
  %arrayidx942 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %648, i32* %arrayidx942, align 4
  %add943 = add i32 %add908, %648
  store i32 %add943, i32* %t1, align 4
  %649 = load i32, i32* %t1, align 4
  %650 = load i32, i32* %a, align 4
  %add944 = add i32 %650, %649
  store i32 %add944, i32* %a, align 4
  %651 = load i32, i32* %t0, align 4
  %652 = load i32, i32* %t1, align 4
  %add945 = add i32 %651, %652
  store i32 %add945, i32* %e, align 4
  br label %do.end.946

do.end.946:                                       ; preds = %do.body.875
  br label %do.body.947

do.body.947:                                      ; preds = %do.end.946
  %653 = load i32, i32* %e, align 4
  %shl948 = shl i32 %653, 30
  %654 = load i32, i32* %e, align 4
  %shr949 = lshr i32 %654, 2
  %or950 = or i32 %shl948, %shr949
  %655 = load i32, i32* %e, align 4
  %shl951 = shl i32 %655, 19
  %656 = load i32, i32* %e, align 4
  %shr952 = lshr i32 %656, 13
  %or953 = or i32 %shl951, %shr952
  %xor954 = xor i32 %or950, %or953
  %657 = load i32, i32* %e, align 4
  %shl955 = shl i32 %657, 10
  %658 = load i32, i32* %e, align 4
  %shr956 = lshr i32 %658, 22
  %or957 = or i32 %shl955, %shr956
  %xor958 = xor i32 %xor954, %or957
  %659 = load i32, i32* %e, align 4
  %660 = load i32, i32* %f, align 4
  %and959 = and i32 %659, %660
  %661 = load i32, i32* %g, align 4
  %662 = load i32, i32* %e, align 4
  %663 = load i32, i32* %f, align 4
  %or960 = or i32 %662, %663
  %and961 = and i32 %661, %or960
  %or962 = or i32 %and959, %and961
  %add963 = add i32 %xor958, %or962
  store i32 %add963, i32* %t0, align 4
  %664 = load i32, i32* %d, align 4
  %665 = load i32, i32* %a, align 4
  %shl964 = shl i32 %665, 26
  %666 = load i32, i32* %a, align 4
  %shr965 = lshr i32 %666, 6
  %or966 = or i32 %shl964, %shr965
  %667 = load i32, i32* %a, align 4
  %shl967 = shl i32 %667, 21
  %668 = load i32, i32* %a, align 4
  %shr968 = lshr i32 %668, 11
  %or969 = or i32 %shl967, %shr968
  %xor970 = xor i32 %or966, %or969
  %669 = load i32, i32* %a, align 4
  %shl971 = shl i32 %669, 7
  %670 = load i32, i32* %a, align 4
  %shr972 = lshr i32 %670, 25
  %or973 = or i32 %shl971, %shr972
  %xor974 = xor i32 %xor970, %or973
  %add975 = add i32 %664, %xor974
  %671 = load i32, i32* %c, align 4
  %672 = load i32, i32* %a, align 4
  %673 = load i32, i32* %b, align 4
  %674 = load i32, i32* %c, align 4
  %xor976 = xor i32 %673, %674
  %and977 = and i32 %672, %xor976
  %xor978 = xor i32 %671, %and977
  %add979 = add i32 %add975, %xor978
  %675 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 20), align 4
  %add980 = add i32 %add979, %675
  %arrayidx981 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %676 = load i32, i32* %arrayidx981, align 4
  %shl982 = shl i32 %676, 15
  %arrayidx983 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %677 = load i32, i32* %arrayidx983, align 4
  %shr984 = lshr i32 %677, 17
  %or985 = or i32 %shl982, %shr984
  %arrayidx986 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %678 = load i32, i32* %arrayidx986, align 4
  %shl987 = shl i32 %678, 13
  %arrayidx988 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %679 = load i32, i32* %arrayidx988, align 4
  %shr989 = lshr i32 %679, 19
  %or990 = or i32 %shl987, %shr989
  %xor991 = xor i32 %or985, %or990
  %arrayidx992 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %680 = load i32, i32* %arrayidx992, align 4
  %shr993 = lshr i32 %680, 10
  %xor994 = xor i32 %xor991, %shr993
  %arrayidx995 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %681 = load i32, i32* %arrayidx995, align 4
  %add996 = add i32 %xor994, %681
  %arrayidx997 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %682 = load i32, i32* %arrayidx997, align 4
  %shl998 = shl i32 %682, 25
  %arrayidx999 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %683 = load i32, i32* %arrayidx999, align 4
  %shr1000 = lshr i32 %683, 7
  %or1001 = or i32 %shl998, %shr1000
  %arrayidx1002 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %684 = load i32, i32* %arrayidx1002, align 4
  %shl1003 = shl i32 %684, 14
  %arrayidx1004 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %685 = load i32, i32* %arrayidx1004, align 4
  %shr1005 = lshr i32 %685, 18
  %or1006 = or i32 %shl1003, %shr1005
  %xor1007 = xor i32 %or1001, %or1006
  %arrayidx1008 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %686 = load i32, i32* %arrayidx1008, align 4
  %shr1009 = lshr i32 %686, 3
  %xor1010 = xor i32 %xor1007, %shr1009
  %add1011 = add i32 %add996, %xor1010
  %arrayidx1012 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %687 = load i32, i32* %arrayidx1012, align 4
  %add1013 = add i32 %add1011, %687
  store i32 %add1013, i32* %tm, align 4
  %688 = load i32, i32* %tm, align 4
  %arrayidx1014 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %688, i32* %arrayidx1014, align 4
  %add1015 = add i32 %add980, %688
  store i32 %add1015, i32* %t1, align 4
  %689 = load i32, i32* %t1, align 4
  %690 = load i32, i32* %h, align 4
  %add1016 = add i32 %690, %689
  store i32 %add1016, i32* %h, align 4
  %691 = load i32, i32* %t0, align 4
  %692 = load i32, i32* %t1, align 4
  %add1017 = add i32 %691, %692
  store i32 %add1017, i32* %d, align 4
  br label %do.end.1018

do.end.1018:                                      ; preds = %do.body.947
  br label %do.body.1019

do.body.1019:                                     ; preds = %do.end.1018
  %693 = load i32, i32* %d, align 4
  %shl1020 = shl i32 %693, 30
  %694 = load i32, i32* %d, align 4
  %shr1021 = lshr i32 %694, 2
  %or1022 = or i32 %shl1020, %shr1021
  %695 = load i32, i32* %d, align 4
  %shl1023 = shl i32 %695, 19
  %696 = load i32, i32* %d, align 4
  %shr1024 = lshr i32 %696, 13
  %or1025 = or i32 %shl1023, %shr1024
  %xor1026 = xor i32 %or1022, %or1025
  %697 = load i32, i32* %d, align 4
  %shl1027 = shl i32 %697, 10
  %698 = load i32, i32* %d, align 4
  %shr1028 = lshr i32 %698, 22
  %or1029 = or i32 %shl1027, %shr1028
  %xor1030 = xor i32 %xor1026, %or1029
  %699 = load i32, i32* %d, align 4
  %700 = load i32, i32* %e, align 4
  %and1031 = and i32 %699, %700
  %701 = load i32, i32* %f, align 4
  %702 = load i32, i32* %d, align 4
  %703 = load i32, i32* %e, align 4
  %or1032 = or i32 %702, %703
  %and1033 = and i32 %701, %or1032
  %or1034 = or i32 %and1031, %and1033
  %add1035 = add i32 %xor1030, %or1034
  store i32 %add1035, i32* %t0, align 4
  %704 = load i32, i32* %c, align 4
  %705 = load i32, i32* %h, align 4
  %shl1036 = shl i32 %705, 26
  %706 = load i32, i32* %h, align 4
  %shr1037 = lshr i32 %706, 6
  %or1038 = or i32 %shl1036, %shr1037
  %707 = load i32, i32* %h, align 4
  %shl1039 = shl i32 %707, 21
  %708 = load i32, i32* %h, align 4
  %shr1040 = lshr i32 %708, 11
  %or1041 = or i32 %shl1039, %shr1040
  %xor1042 = xor i32 %or1038, %or1041
  %709 = load i32, i32* %h, align 4
  %shl1043 = shl i32 %709, 7
  %710 = load i32, i32* %h, align 4
  %shr1044 = lshr i32 %710, 25
  %or1045 = or i32 %shl1043, %shr1044
  %xor1046 = xor i32 %xor1042, %or1045
  %add1047 = add i32 %704, %xor1046
  %711 = load i32, i32* %b, align 4
  %712 = load i32, i32* %h, align 4
  %713 = load i32, i32* %a, align 4
  %714 = load i32, i32* %b, align 4
  %xor1048 = xor i32 %713, %714
  %and1049 = and i32 %712, %xor1048
  %xor1050 = xor i32 %711, %and1049
  %add1051 = add i32 %add1047, %xor1050
  %715 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 21), align 4
  %add1052 = add i32 %add1051, %715
  %arrayidx1053 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %716 = load i32, i32* %arrayidx1053, align 4
  %shl1054 = shl i32 %716, 15
  %arrayidx1055 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %717 = load i32, i32* %arrayidx1055, align 4
  %shr1056 = lshr i32 %717, 17
  %or1057 = or i32 %shl1054, %shr1056
  %arrayidx1058 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %718 = load i32, i32* %arrayidx1058, align 4
  %shl1059 = shl i32 %718, 13
  %arrayidx1060 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %719 = load i32, i32* %arrayidx1060, align 4
  %shr1061 = lshr i32 %719, 19
  %or1062 = or i32 %shl1059, %shr1061
  %xor1063 = xor i32 %or1057, %or1062
  %arrayidx1064 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %720 = load i32, i32* %arrayidx1064, align 4
  %shr1065 = lshr i32 %720, 10
  %xor1066 = xor i32 %xor1063, %shr1065
  %arrayidx1067 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %721 = load i32, i32* %arrayidx1067, align 4
  %add1068 = add i32 %xor1066, %721
  %arrayidx1069 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %722 = load i32, i32* %arrayidx1069, align 4
  %shl1070 = shl i32 %722, 25
  %arrayidx1071 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %723 = load i32, i32* %arrayidx1071, align 4
  %shr1072 = lshr i32 %723, 7
  %or1073 = or i32 %shl1070, %shr1072
  %arrayidx1074 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %724 = load i32, i32* %arrayidx1074, align 4
  %shl1075 = shl i32 %724, 14
  %arrayidx1076 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %725 = load i32, i32* %arrayidx1076, align 4
  %shr1077 = lshr i32 %725, 18
  %or1078 = or i32 %shl1075, %shr1077
  %xor1079 = xor i32 %or1073, %or1078
  %arrayidx1080 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %726 = load i32, i32* %arrayidx1080, align 4
  %shr1081 = lshr i32 %726, 3
  %xor1082 = xor i32 %xor1079, %shr1081
  %add1083 = add i32 %add1068, %xor1082
  %arrayidx1084 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %727 = load i32, i32* %arrayidx1084, align 4
  %add1085 = add i32 %add1083, %727
  store i32 %add1085, i32* %tm, align 4
  %728 = load i32, i32* %tm, align 4
  %arrayidx1086 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %728, i32* %arrayidx1086, align 4
  %add1087 = add i32 %add1052, %728
  store i32 %add1087, i32* %t1, align 4
  %729 = load i32, i32* %t1, align 4
  %730 = load i32, i32* %g, align 4
  %add1088 = add i32 %730, %729
  store i32 %add1088, i32* %g, align 4
  %731 = load i32, i32* %t0, align 4
  %732 = load i32, i32* %t1, align 4
  %add1089 = add i32 %731, %732
  store i32 %add1089, i32* %c, align 4
  br label %do.end.1090

do.end.1090:                                      ; preds = %do.body.1019
  br label %do.body.1091

do.body.1091:                                     ; preds = %do.end.1090
  %733 = load i32, i32* %c, align 4
  %shl1092 = shl i32 %733, 30
  %734 = load i32, i32* %c, align 4
  %shr1093 = lshr i32 %734, 2
  %or1094 = or i32 %shl1092, %shr1093
  %735 = load i32, i32* %c, align 4
  %shl1095 = shl i32 %735, 19
  %736 = load i32, i32* %c, align 4
  %shr1096 = lshr i32 %736, 13
  %or1097 = or i32 %shl1095, %shr1096
  %xor1098 = xor i32 %or1094, %or1097
  %737 = load i32, i32* %c, align 4
  %shl1099 = shl i32 %737, 10
  %738 = load i32, i32* %c, align 4
  %shr1100 = lshr i32 %738, 22
  %or1101 = or i32 %shl1099, %shr1100
  %xor1102 = xor i32 %xor1098, %or1101
  %739 = load i32, i32* %c, align 4
  %740 = load i32, i32* %d, align 4
  %and1103 = and i32 %739, %740
  %741 = load i32, i32* %e, align 4
  %742 = load i32, i32* %c, align 4
  %743 = load i32, i32* %d, align 4
  %or1104 = or i32 %742, %743
  %and1105 = and i32 %741, %or1104
  %or1106 = or i32 %and1103, %and1105
  %add1107 = add i32 %xor1102, %or1106
  store i32 %add1107, i32* %t0, align 4
  %744 = load i32, i32* %b, align 4
  %745 = load i32, i32* %g, align 4
  %shl1108 = shl i32 %745, 26
  %746 = load i32, i32* %g, align 4
  %shr1109 = lshr i32 %746, 6
  %or1110 = or i32 %shl1108, %shr1109
  %747 = load i32, i32* %g, align 4
  %shl1111 = shl i32 %747, 21
  %748 = load i32, i32* %g, align 4
  %shr1112 = lshr i32 %748, 11
  %or1113 = or i32 %shl1111, %shr1112
  %xor1114 = xor i32 %or1110, %or1113
  %749 = load i32, i32* %g, align 4
  %shl1115 = shl i32 %749, 7
  %750 = load i32, i32* %g, align 4
  %shr1116 = lshr i32 %750, 25
  %or1117 = or i32 %shl1115, %shr1116
  %xor1118 = xor i32 %xor1114, %or1117
  %add1119 = add i32 %744, %xor1118
  %751 = load i32, i32* %a, align 4
  %752 = load i32, i32* %g, align 4
  %753 = load i32, i32* %h, align 4
  %754 = load i32, i32* %a, align 4
  %xor1120 = xor i32 %753, %754
  %and1121 = and i32 %752, %xor1120
  %xor1122 = xor i32 %751, %and1121
  %add1123 = add i32 %add1119, %xor1122
  %755 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 22), align 4
  %add1124 = add i32 %add1123, %755
  %arrayidx1125 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %756 = load i32, i32* %arrayidx1125, align 4
  %shl1126 = shl i32 %756, 15
  %arrayidx1127 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %757 = load i32, i32* %arrayidx1127, align 4
  %shr1128 = lshr i32 %757, 17
  %or1129 = or i32 %shl1126, %shr1128
  %arrayidx1130 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %758 = load i32, i32* %arrayidx1130, align 4
  %shl1131 = shl i32 %758, 13
  %arrayidx1132 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %759 = load i32, i32* %arrayidx1132, align 4
  %shr1133 = lshr i32 %759, 19
  %or1134 = or i32 %shl1131, %shr1133
  %xor1135 = xor i32 %or1129, %or1134
  %arrayidx1136 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %760 = load i32, i32* %arrayidx1136, align 4
  %shr1137 = lshr i32 %760, 10
  %xor1138 = xor i32 %xor1135, %shr1137
  %arrayidx1139 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %761 = load i32, i32* %arrayidx1139, align 4
  %add1140 = add i32 %xor1138, %761
  %arrayidx1141 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %762 = load i32, i32* %arrayidx1141, align 4
  %shl1142 = shl i32 %762, 25
  %arrayidx1143 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %763 = load i32, i32* %arrayidx1143, align 4
  %shr1144 = lshr i32 %763, 7
  %or1145 = or i32 %shl1142, %shr1144
  %arrayidx1146 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %764 = load i32, i32* %arrayidx1146, align 4
  %shl1147 = shl i32 %764, 14
  %arrayidx1148 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %765 = load i32, i32* %arrayidx1148, align 4
  %shr1149 = lshr i32 %765, 18
  %or1150 = or i32 %shl1147, %shr1149
  %xor1151 = xor i32 %or1145, %or1150
  %arrayidx1152 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %766 = load i32, i32* %arrayidx1152, align 4
  %shr1153 = lshr i32 %766, 3
  %xor1154 = xor i32 %xor1151, %shr1153
  %add1155 = add i32 %add1140, %xor1154
  %arrayidx1156 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %767 = load i32, i32* %arrayidx1156, align 4
  %add1157 = add i32 %add1155, %767
  store i32 %add1157, i32* %tm, align 4
  %768 = load i32, i32* %tm, align 4
  %arrayidx1158 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %768, i32* %arrayidx1158, align 4
  %add1159 = add i32 %add1124, %768
  store i32 %add1159, i32* %t1, align 4
  %769 = load i32, i32* %t1, align 4
  %770 = load i32, i32* %f, align 4
  %add1160 = add i32 %770, %769
  store i32 %add1160, i32* %f, align 4
  %771 = load i32, i32* %t0, align 4
  %772 = load i32, i32* %t1, align 4
  %add1161 = add i32 %771, %772
  store i32 %add1161, i32* %b, align 4
  br label %do.end.1162

do.end.1162:                                      ; preds = %do.body.1091
  br label %do.body.1163

do.body.1163:                                     ; preds = %do.end.1162
  %773 = load i32, i32* %b, align 4
  %shl1164 = shl i32 %773, 30
  %774 = load i32, i32* %b, align 4
  %shr1165 = lshr i32 %774, 2
  %or1166 = or i32 %shl1164, %shr1165
  %775 = load i32, i32* %b, align 4
  %shl1167 = shl i32 %775, 19
  %776 = load i32, i32* %b, align 4
  %shr1168 = lshr i32 %776, 13
  %or1169 = or i32 %shl1167, %shr1168
  %xor1170 = xor i32 %or1166, %or1169
  %777 = load i32, i32* %b, align 4
  %shl1171 = shl i32 %777, 10
  %778 = load i32, i32* %b, align 4
  %shr1172 = lshr i32 %778, 22
  %or1173 = or i32 %shl1171, %shr1172
  %xor1174 = xor i32 %xor1170, %or1173
  %779 = load i32, i32* %b, align 4
  %780 = load i32, i32* %c, align 4
  %and1175 = and i32 %779, %780
  %781 = load i32, i32* %d, align 4
  %782 = load i32, i32* %b, align 4
  %783 = load i32, i32* %c, align 4
  %or1176 = or i32 %782, %783
  %and1177 = and i32 %781, %or1176
  %or1178 = or i32 %and1175, %and1177
  %add1179 = add i32 %xor1174, %or1178
  store i32 %add1179, i32* %t0, align 4
  %784 = load i32, i32* %a, align 4
  %785 = load i32, i32* %f, align 4
  %shl1180 = shl i32 %785, 26
  %786 = load i32, i32* %f, align 4
  %shr1181 = lshr i32 %786, 6
  %or1182 = or i32 %shl1180, %shr1181
  %787 = load i32, i32* %f, align 4
  %shl1183 = shl i32 %787, 21
  %788 = load i32, i32* %f, align 4
  %shr1184 = lshr i32 %788, 11
  %or1185 = or i32 %shl1183, %shr1184
  %xor1186 = xor i32 %or1182, %or1185
  %789 = load i32, i32* %f, align 4
  %shl1187 = shl i32 %789, 7
  %790 = load i32, i32* %f, align 4
  %shr1188 = lshr i32 %790, 25
  %or1189 = or i32 %shl1187, %shr1188
  %xor1190 = xor i32 %xor1186, %or1189
  %add1191 = add i32 %784, %xor1190
  %791 = load i32, i32* %h, align 4
  %792 = load i32, i32* %f, align 4
  %793 = load i32, i32* %g, align 4
  %794 = load i32, i32* %h, align 4
  %xor1192 = xor i32 %793, %794
  %and1193 = and i32 %792, %xor1192
  %xor1194 = xor i32 %791, %and1193
  %add1195 = add i32 %add1191, %xor1194
  %795 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 23), align 4
  %add1196 = add i32 %add1195, %795
  %arrayidx1197 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %796 = load i32, i32* %arrayidx1197, align 4
  %shl1198 = shl i32 %796, 15
  %arrayidx1199 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %797 = load i32, i32* %arrayidx1199, align 4
  %shr1200 = lshr i32 %797, 17
  %or1201 = or i32 %shl1198, %shr1200
  %arrayidx1202 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %798 = load i32, i32* %arrayidx1202, align 4
  %shl1203 = shl i32 %798, 13
  %arrayidx1204 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %799 = load i32, i32* %arrayidx1204, align 4
  %shr1205 = lshr i32 %799, 19
  %or1206 = or i32 %shl1203, %shr1205
  %xor1207 = xor i32 %or1201, %or1206
  %arrayidx1208 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %800 = load i32, i32* %arrayidx1208, align 4
  %shr1209 = lshr i32 %800, 10
  %xor1210 = xor i32 %xor1207, %shr1209
  %arrayidx1211 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %801 = load i32, i32* %arrayidx1211, align 4
  %add1212 = add i32 %xor1210, %801
  %arrayidx1213 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %802 = load i32, i32* %arrayidx1213, align 4
  %shl1214 = shl i32 %802, 25
  %arrayidx1215 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %803 = load i32, i32* %arrayidx1215, align 4
  %shr1216 = lshr i32 %803, 7
  %or1217 = or i32 %shl1214, %shr1216
  %arrayidx1218 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %804 = load i32, i32* %arrayidx1218, align 4
  %shl1219 = shl i32 %804, 14
  %arrayidx1220 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %805 = load i32, i32* %arrayidx1220, align 4
  %shr1221 = lshr i32 %805, 18
  %or1222 = or i32 %shl1219, %shr1221
  %xor1223 = xor i32 %or1217, %or1222
  %arrayidx1224 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %806 = load i32, i32* %arrayidx1224, align 4
  %shr1225 = lshr i32 %806, 3
  %xor1226 = xor i32 %xor1223, %shr1225
  %add1227 = add i32 %add1212, %xor1226
  %arrayidx1228 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %807 = load i32, i32* %arrayidx1228, align 4
  %add1229 = add i32 %add1227, %807
  store i32 %add1229, i32* %tm, align 4
  %808 = load i32, i32* %tm, align 4
  %arrayidx1230 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %808, i32* %arrayidx1230, align 4
  %add1231 = add i32 %add1196, %808
  store i32 %add1231, i32* %t1, align 4
  %809 = load i32, i32* %t1, align 4
  %810 = load i32, i32* %e, align 4
  %add1232 = add i32 %810, %809
  store i32 %add1232, i32* %e, align 4
  %811 = load i32, i32* %t0, align 4
  %812 = load i32, i32* %t1, align 4
  %add1233 = add i32 %811, %812
  store i32 %add1233, i32* %a, align 4
  br label %do.end.1234

do.end.1234:                                      ; preds = %do.body.1163
  br label %do.body.1235

do.body.1235:                                     ; preds = %do.end.1234
  %813 = load i32, i32* %a, align 4
  %shl1236 = shl i32 %813, 30
  %814 = load i32, i32* %a, align 4
  %shr1237 = lshr i32 %814, 2
  %or1238 = or i32 %shl1236, %shr1237
  %815 = load i32, i32* %a, align 4
  %shl1239 = shl i32 %815, 19
  %816 = load i32, i32* %a, align 4
  %shr1240 = lshr i32 %816, 13
  %or1241 = or i32 %shl1239, %shr1240
  %xor1242 = xor i32 %or1238, %or1241
  %817 = load i32, i32* %a, align 4
  %shl1243 = shl i32 %817, 10
  %818 = load i32, i32* %a, align 4
  %shr1244 = lshr i32 %818, 22
  %or1245 = or i32 %shl1243, %shr1244
  %xor1246 = xor i32 %xor1242, %or1245
  %819 = load i32, i32* %a, align 4
  %820 = load i32, i32* %b, align 4
  %and1247 = and i32 %819, %820
  %821 = load i32, i32* %c, align 4
  %822 = load i32, i32* %a, align 4
  %823 = load i32, i32* %b, align 4
  %or1248 = or i32 %822, %823
  %and1249 = and i32 %821, %or1248
  %or1250 = or i32 %and1247, %and1249
  %add1251 = add i32 %xor1246, %or1250
  store i32 %add1251, i32* %t0, align 4
  %824 = load i32, i32* %h, align 4
  %825 = load i32, i32* %e, align 4
  %shl1252 = shl i32 %825, 26
  %826 = load i32, i32* %e, align 4
  %shr1253 = lshr i32 %826, 6
  %or1254 = or i32 %shl1252, %shr1253
  %827 = load i32, i32* %e, align 4
  %shl1255 = shl i32 %827, 21
  %828 = load i32, i32* %e, align 4
  %shr1256 = lshr i32 %828, 11
  %or1257 = or i32 %shl1255, %shr1256
  %xor1258 = xor i32 %or1254, %or1257
  %829 = load i32, i32* %e, align 4
  %shl1259 = shl i32 %829, 7
  %830 = load i32, i32* %e, align 4
  %shr1260 = lshr i32 %830, 25
  %or1261 = or i32 %shl1259, %shr1260
  %xor1262 = xor i32 %xor1258, %or1261
  %add1263 = add i32 %824, %xor1262
  %831 = load i32, i32* %g, align 4
  %832 = load i32, i32* %e, align 4
  %833 = load i32, i32* %f, align 4
  %834 = load i32, i32* %g, align 4
  %xor1264 = xor i32 %833, %834
  %and1265 = and i32 %832, %xor1264
  %xor1266 = xor i32 %831, %and1265
  %add1267 = add i32 %add1263, %xor1266
  %835 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 24), align 4
  %add1268 = add i32 %add1267, %835
  %arrayidx1269 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %836 = load i32, i32* %arrayidx1269, align 4
  %shl1270 = shl i32 %836, 15
  %arrayidx1271 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %837 = load i32, i32* %arrayidx1271, align 4
  %shr1272 = lshr i32 %837, 17
  %or1273 = or i32 %shl1270, %shr1272
  %arrayidx1274 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %838 = load i32, i32* %arrayidx1274, align 4
  %shl1275 = shl i32 %838, 13
  %arrayidx1276 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %839 = load i32, i32* %arrayidx1276, align 4
  %shr1277 = lshr i32 %839, 19
  %or1278 = or i32 %shl1275, %shr1277
  %xor1279 = xor i32 %or1273, %or1278
  %arrayidx1280 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %840 = load i32, i32* %arrayidx1280, align 4
  %shr1281 = lshr i32 %840, 10
  %xor1282 = xor i32 %xor1279, %shr1281
  %arrayidx1283 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %841 = load i32, i32* %arrayidx1283, align 4
  %add1284 = add i32 %xor1282, %841
  %arrayidx1285 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %842 = load i32, i32* %arrayidx1285, align 4
  %shl1286 = shl i32 %842, 25
  %arrayidx1287 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %843 = load i32, i32* %arrayidx1287, align 4
  %shr1288 = lshr i32 %843, 7
  %or1289 = or i32 %shl1286, %shr1288
  %arrayidx1290 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %844 = load i32, i32* %arrayidx1290, align 4
  %shl1291 = shl i32 %844, 14
  %arrayidx1292 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %845 = load i32, i32* %arrayidx1292, align 4
  %shr1293 = lshr i32 %845, 18
  %or1294 = or i32 %shl1291, %shr1293
  %xor1295 = xor i32 %or1289, %or1294
  %arrayidx1296 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %846 = load i32, i32* %arrayidx1296, align 4
  %shr1297 = lshr i32 %846, 3
  %xor1298 = xor i32 %xor1295, %shr1297
  %add1299 = add i32 %add1284, %xor1298
  %arrayidx1300 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %847 = load i32, i32* %arrayidx1300, align 4
  %add1301 = add i32 %add1299, %847
  store i32 %add1301, i32* %tm, align 4
  %848 = load i32, i32* %tm, align 4
  %arrayidx1302 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %848, i32* %arrayidx1302, align 4
  %add1303 = add i32 %add1268, %848
  store i32 %add1303, i32* %t1, align 4
  %849 = load i32, i32* %t1, align 4
  %850 = load i32, i32* %d, align 4
  %add1304 = add i32 %850, %849
  store i32 %add1304, i32* %d, align 4
  %851 = load i32, i32* %t0, align 4
  %852 = load i32, i32* %t1, align 4
  %add1305 = add i32 %851, %852
  store i32 %add1305, i32* %h, align 4
  br label %do.end.1306

do.end.1306:                                      ; preds = %do.body.1235
  br label %do.body.1307

do.body.1307:                                     ; preds = %do.end.1306
  %853 = load i32, i32* %h, align 4
  %shl1308 = shl i32 %853, 30
  %854 = load i32, i32* %h, align 4
  %shr1309 = lshr i32 %854, 2
  %or1310 = or i32 %shl1308, %shr1309
  %855 = load i32, i32* %h, align 4
  %shl1311 = shl i32 %855, 19
  %856 = load i32, i32* %h, align 4
  %shr1312 = lshr i32 %856, 13
  %or1313 = or i32 %shl1311, %shr1312
  %xor1314 = xor i32 %or1310, %or1313
  %857 = load i32, i32* %h, align 4
  %shl1315 = shl i32 %857, 10
  %858 = load i32, i32* %h, align 4
  %shr1316 = lshr i32 %858, 22
  %or1317 = or i32 %shl1315, %shr1316
  %xor1318 = xor i32 %xor1314, %or1317
  %859 = load i32, i32* %h, align 4
  %860 = load i32, i32* %a, align 4
  %and1319 = and i32 %859, %860
  %861 = load i32, i32* %b, align 4
  %862 = load i32, i32* %h, align 4
  %863 = load i32, i32* %a, align 4
  %or1320 = or i32 %862, %863
  %and1321 = and i32 %861, %or1320
  %or1322 = or i32 %and1319, %and1321
  %add1323 = add i32 %xor1318, %or1322
  store i32 %add1323, i32* %t0, align 4
  %864 = load i32, i32* %g, align 4
  %865 = load i32, i32* %d, align 4
  %shl1324 = shl i32 %865, 26
  %866 = load i32, i32* %d, align 4
  %shr1325 = lshr i32 %866, 6
  %or1326 = or i32 %shl1324, %shr1325
  %867 = load i32, i32* %d, align 4
  %shl1327 = shl i32 %867, 21
  %868 = load i32, i32* %d, align 4
  %shr1328 = lshr i32 %868, 11
  %or1329 = or i32 %shl1327, %shr1328
  %xor1330 = xor i32 %or1326, %or1329
  %869 = load i32, i32* %d, align 4
  %shl1331 = shl i32 %869, 7
  %870 = load i32, i32* %d, align 4
  %shr1332 = lshr i32 %870, 25
  %or1333 = or i32 %shl1331, %shr1332
  %xor1334 = xor i32 %xor1330, %or1333
  %add1335 = add i32 %864, %xor1334
  %871 = load i32, i32* %f, align 4
  %872 = load i32, i32* %d, align 4
  %873 = load i32, i32* %e, align 4
  %874 = load i32, i32* %f, align 4
  %xor1336 = xor i32 %873, %874
  %and1337 = and i32 %872, %xor1336
  %xor1338 = xor i32 %871, %and1337
  %add1339 = add i32 %add1335, %xor1338
  %875 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 25), align 4
  %add1340 = add i32 %add1339, %875
  %arrayidx1341 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %876 = load i32, i32* %arrayidx1341, align 4
  %shl1342 = shl i32 %876, 15
  %arrayidx1343 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %877 = load i32, i32* %arrayidx1343, align 4
  %shr1344 = lshr i32 %877, 17
  %or1345 = or i32 %shl1342, %shr1344
  %arrayidx1346 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %878 = load i32, i32* %arrayidx1346, align 4
  %shl1347 = shl i32 %878, 13
  %arrayidx1348 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %879 = load i32, i32* %arrayidx1348, align 4
  %shr1349 = lshr i32 %879, 19
  %or1350 = or i32 %shl1347, %shr1349
  %xor1351 = xor i32 %or1345, %or1350
  %arrayidx1352 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %880 = load i32, i32* %arrayidx1352, align 4
  %shr1353 = lshr i32 %880, 10
  %xor1354 = xor i32 %xor1351, %shr1353
  %arrayidx1355 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %881 = load i32, i32* %arrayidx1355, align 4
  %add1356 = add i32 %xor1354, %881
  %arrayidx1357 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %882 = load i32, i32* %arrayidx1357, align 4
  %shl1358 = shl i32 %882, 25
  %arrayidx1359 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %883 = load i32, i32* %arrayidx1359, align 4
  %shr1360 = lshr i32 %883, 7
  %or1361 = or i32 %shl1358, %shr1360
  %arrayidx1362 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %884 = load i32, i32* %arrayidx1362, align 4
  %shl1363 = shl i32 %884, 14
  %arrayidx1364 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %885 = load i32, i32* %arrayidx1364, align 4
  %shr1365 = lshr i32 %885, 18
  %or1366 = or i32 %shl1363, %shr1365
  %xor1367 = xor i32 %or1361, %or1366
  %arrayidx1368 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %886 = load i32, i32* %arrayidx1368, align 4
  %shr1369 = lshr i32 %886, 3
  %xor1370 = xor i32 %xor1367, %shr1369
  %add1371 = add i32 %add1356, %xor1370
  %arrayidx1372 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %887 = load i32, i32* %arrayidx1372, align 4
  %add1373 = add i32 %add1371, %887
  store i32 %add1373, i32* %tm, align 4
  %888 = load i32, i32* %tm, align 4
  %arrayidx1374 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %888, i32* %arrayidx1374, align 4
  %add1375 = add i32 %add1340, %888
  store i32 %add1375, i32* %t1, align 4
  %889 = load i32, i32* %t1, align 4
  %890 = load i32, i32* %c, align 4
  %add1376 = add i32 %890, %889
  store i32 %add1376, i32* %c, align 4
  %891 = load i32, i32* %t0, align 4
  %892 = load i32, i32* %t1, align 4
  %add1377 = add i32 %891, %892
  store i32 %add1377, i32* %g, align 4
  br label %do.end.1378

do.end.1378:                                      ; preds = %do.body.1307
  br label %do.body.1379

do.body.1379:                                     ; preds = %do.end.1378
  %893 = load i32, i32* %g, align 4
  %shl1380 = shl i32 %893, 30
  %894 = load i32, i32* %g, align 4
  %shr1381 = lshr i32 %894, 2
  %or1382 = or i32 %shl1380, %shr1381
  %895 = load i32, i32* %g, align 4
  %shl1383 = shl i32 %895, 19
  %896 = load i32, i32* %g, align 4
  %shr1384 = lshr i32 %896, 13
  %or1385 = or i32 %shl1383, %shr1384
  %xor1386 = xor i32 %or1382, %or1385
  %897 = load i32, i32* %g, align 4
  %shl1387 = shl i32 %897, 10
  %898 = load i32, i32* %g, align 4
  %shr1388 = lshr i32 %898, 22
  %or1389 = or i32 %shl1387, %shr1388
  %xor1390 = xor i32 %xor1386, %or1389
  %899 = load i32, i32* %g, align 4
  %900 = load i32, i32* %h, align 4
  %and1391 = and i32 %899, %900
  %901 = load i32, i32* %a, align 4
  %902 = load i32, i32* %g, align 4
  %903 = load i32, i32* %h, align 4
  %or1392 = or i32 %902, %903
  %and1393 = and i32 %901, %or1392
  %or1394 = or i32 %and1391, %and1393
  %add1395 = add i32 %xor1390, %or1394
  store i32 %add1395, i32* %t0, align 4
  %904 = load i32, i32* %f, align 4
  %905 = load i32, i32* %c, align 4
  %shl1396 = shl i32 %905, 26
  %906 = load i32, i32* %c, align 4
  %shr1397 = lshr i32 %906, 6
  %or1398 = or i32 %shl1396, %shr1397
  %907 = load i32, i32* %c, align 4
  %shl1399 = shl i32 %907, 21
  %908 = load i32, i32* %c, align 4
  %shr1400 = lshr i32 %908, 11
  %or1401 = or i32 %shl1399, %shr1400
  %xor1402 = xor i32 %or1398, %or1401
  %909 = load i32, i32* %c, align 4
  %shl1403 = shl i32 %909, 7
  %910 = load i32, i32* %c, align 4
  %shr1404 = lshr i32 %910, 25
  %or1405 = or i32 %shl1403, %shr1404
  %xor1406 = xor i32 %xor1402, %or1405
  %add1407 = add i32 %904, %xor1406
  %911 = load i32, i32* %e, align 4
  %912 = load i32, i32* %c, align 4
  %913 = load i32, i32* %d, align 4
  %914 = load i32, i32* %e, align 4
  %xor1408 = xor i32 %913, %914
  %and1409 = and i32 %912, %xor1408
  %xor1410 = xor i32 %911, %and1409
  %add1411 = add i32 %add1407, %xor1410
  %915 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 26), align 4
  %add1412 = add i32 %add1411, %915
  %arrayidx1413 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %916 = load i32, i32* %arrayidx1413, align 4
  %shl1414 = shl i32 %916, 15
  %arrayidx1415 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %917 = load i32, i32* %arrayidx1415, align 4
  %shr1416 = lshr i32 %917, 17
  %or1417 = or i32 %shl1414, %shr1416
  %arrayidx1418 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %918 = load i32, i32* %arrayidx1418, align 4
  %shl1419 = shl i32 %918, 13
  %arrayidx1420 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %919 = load i32, i32* %arrayidx1420, align 4
  %shr1421 = lshr i32 %919, 19
  %or1422 = or i32 %shl1419, %shr1421
  %xor1423 = xor i32 %or1417, %or1422
  %arrayidx1424 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %920 = load i32, i32* %arrayidx1424, align 4
  %shr1425 = lshr i32 %920, 10
  %xor1426 = xor i32 %xor1423, %shr1425
  %arrayidx1427 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %921 = load i32, i32* %arrayidx1427, align 4
  %add1428 = add i32 %xor1426, %921
  %arrayidx1429 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %922 = load i32, i32* %arrayidx1429, align 4
  %shl1430 = shl i32 %922, 25
  %arrayidx1431 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %923 = load i32, i32* %arrayidx1431, align 4
  %shr1432 = lshr i32 %923, 7
  %or1433 = or i32 %shl1430, %shr1432
  %arrayidx1434 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %924 = load i32, i32* %arrayidx1434, align 4
  %shl1435 = shl i32 %924, 14
  %arrayidx1436 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %925 = load i32, i32* %arrayidx1436, align 4
  %shr1437 = lshr i32 %925, 18
  %or1438 = or i32 %shl1435, %shr1437
  %xor1439 = xor i32 %or1433, %or1438
  %arrayidx1440 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %926 = load i32, i32* %arrayidx1440, align 4
  %shr1441 = lshr i32 %926, 3
  %xor1442 = xor i32 %xor1439, %shr1441
  %add1443 = add i32 %add1428, %xor1442
  %arrayidx1444 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %927 = load i32, i32* %arrayidx1444, align 4
  %add1445 = add i32 %add1443, %927
  store i32 %add1445, i32* %tm, align 4
  %928 = load i32, i32* %tm, align 4
  %arrayidx1446 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %928, i32* %arrayidx1446, align 4
  %add1447 = add i32 %add1412, %928
  store i32 %add1447, i32* %t1, align 4
  %929 = load i32, i32* %t1, align 4
  %930 = load i32, i32* %b, align 4
  %add1448 = add i32 %930, %929
  store i32 %add1448, i32* %b, align 4
  %931 = load i32, i32* %t0, align 4
  %932 = load i32, i32* %t1, align 4
  %add1449 = add i32 %931, %932
  store i32 %add1449, i32* %f, align 4
  br label %do.end.1450

do.end.1450:                                      ; preds = %do.body.1379
  br label %do.body.1451

do.body.1451:                                     ; preds = %do.end.1450
  %933 = load i32, i32* %f, align 4
  %shl1452 = shl i32 %933, 30
  %934 = load i32, i32* %f, align 4
  %shr1453 = lshr i32 %934, 2
  %or1454 = or i32 %shl1452, %shr1453
  %935 = load i32, i32* %f, align 4
  %shl1455 = shl i32 %935, 19
  %936 = load i32, i32* %f, align 4
  %shr1456 = lshr i32 %936, 13
  %or1457 = or i32 %shl1455, %shr1456
  %xor1458 = xor i32 %or1454, %or1457
  %937 = load i32, i32* %f, align 4
  %shl1459 = shl i32 %937, 10
  %938 = load i32, i32* %f, align 4
  %shr1460 = lshr i32 %938, 22
  %or1461 = or i32 %shl1459, %shr1460
  %xor1462 = xor i32 %xor1458, %or1461
  %939 = load i32, i32* %f, align 4
  %940 = load i32, i32* %g, align 4
  %and1463 = and i32 %939, %940
  %941 = load i32, i32* %h, align 4
  %942 = load i32, i32* %f, align 4
  %943 = load i32, i32* %g, align 4
  %or1464 = or i32 %942, %943
  %and1465 = and i32 %941, %or1464
  %or1466 = or i32 %and1463, %and1465
  %add1467 = add i32 %xor1462, %or1466
  store i32 %add1467, i32* %t0, align 4
  %944 = load i32, i32* %e, align 4
  %945 = load i32, i32* %b, align 4
  %shl1468 = shl i32 %945, 26
  %946 = load i32, i32* %b, align 4
  %shr1469 = lshr i32 %946, 6
  %or1470 = or i32 %shl1468, %shr1469
  %947 = load i32, i32* %b, align 4
  %shl1471 = shl i32 %947, 21
  %948 = load i32, i32* %b, align 4
  %shr1472 = lshr i32 %948, 11
  %or1473 = or i32 %shl1471, %shr1472
  %xor1474 = xor i32 %or1470, %or1473
  %949 = load i32, i32* %b, align 4
  %shl1475 = shl i32 %949, 7
  %950 = load i32, i32* %b, align 4
  %shr1476 = lshr i32 %950, 25
  %or1477 = or i32 %shl1475, %shr1476
  %xor1478 = xor i32 %xor1474, %or1477
  %add1479 = add i32 %944, %xor1478
  %951 = load i32, i32* %d, align 4
  %952 = load i32, i32* %b, align 4
  %953 = load i32, i32* %c, align 4
  %954 = load i32, i32* %d, align 4
  %xor1480 = xor i32 %953, %954
  %and1481 = and i32 %952, %xor1480
  %xor1482 = xor i32 %951, %and1481
  %add1483 = add i32 %add1479, %xor1482
  %955 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 27), align 4
  %add1484 = add i32 %add1483, %955
  %arrayidx1485 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %956 = load i32, i32* %arrayidx1485, align 4
  %shl1486 = shl i32 %956, 15
  %arrayidx1487 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %957 = load i32, i32* %arrayidx1487, align 4
  %shr1488 = lshr i32 %957, 17
  %or1489 = or i32 %shl1486, %shr1488
  %arrayidx1490 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %958 = load i32, i32* %arrayidx1490, align 4
  %shl1491 = shl i32 %958, 13
  %arrayidx1492 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %959 = load i32, i32* %arrayidx1492, align 4
  %shr1493 = lshr i32 %959, 19
  %or1494 = or i32 %shl1491, %shr1493
  %xor1495 = xor i32 %or1489, %or1494
  %arrayidx1496 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %960 = load i32, i32* %arrayidx1496, align 4
  %shr1497 = lshr i32 %960, 10
  %xor1498 = xor i32 %xor1495, %shr1497
  %arrayidx1499 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %961 = load i32, i32* %arrayidx1499, align 4
  %add1500 = add i32 %xor1498, %961
  %arrayidx1501 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %962 = load i32, i32* %arrayidx1501, align 4
  %shl1502 = shl i32 %962, 25
  %arrayidx1503 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %963 = load i32, i32* %arrayidx1503, align 4
  %shr1504 = lshr i32 %963, 7
  %or1505 = or i32 %shl1502, %shr1504
  %arrayidx1506 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %964 = load i32, i32* %arrayidx1506, align 4
  %shl1507 = shl i32 %964, 14
  %arrayidx1508 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %965 = load i32, i32* %arrayidx1508, align 4
  %shr1509 = lshr i32 %965, 18
  %or1510 = or i32 %shl1507, %shr1509
  %xor1511 = xor i32 %or1505, %or1510
  %arrayidx1512 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %966 = load i32, i32* %arrayidx1512, align 4
  %shr1513 = lshr i32 %966, 3
  %xor1514 = xor i32 %xor1511, %shr1513
  %add1515 = add i32 %add1500, %xor1514
  %arrayidx1516 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %967 = load i32, i32* %arrayidx1516, align 4
  %add1517 = add i32 %add1515, %967
  store i32 %add1517, i32* %tm, align 4
  %968 = load i32, i32* %tm, align 4
  %arrayidx1518 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %968, i32* %arrayidx1518, align 4
  %add1519 = add i32 %add1484, %968
  store i32 %add1519, i32* %t1, align 4
  %969 = load i32, i32* %t1, align 4
  %970 = load i32, i32* %a, align 4
  %add1520 = add i32 %970, %969
  store i32 %add1520, i32* %a, align 4
  %971 = load i32, i32* %t0, align 4
  %972 = load i32, i32* %t1, align 4
  %add1521 = add i32 %971, %972
  store i32 %add1521, i32* %e, align 4
  br label %do.end.1522

do.end.1522:                                      ; preds = %do.body.1451
  br label %do.body.1523

do.body.1523:                                     ; preds = %do.end.1522
  %973 = load i32, i32* %e, align 4
  %shl1524 = shl i32 %973, 30
  %974 = load i32, i32* %e, align 4
  %shr1525 = lshr i32 %974, 2
  %or1526 = or i32 %shl1524, %shr1525
  %975 = load i32, i32* %e, align 4
  %shl1527 = shl i32 %975, 19
  %976 = load i32, i32* %e, align 4
  %shr1528 = lshr i32 %976, 13
  %or1529 = or i32 %shl1527, %shr1528
  %xor1530 = xor i32 %or1526, %or1529
  %977 = load i32, i32* %e, align 4
  %shl1531 = shl i32 %977, 10
  %978 = load i32, i32* %e, align 4
  %shr1532 = lshr i32 %978, 22
  %or1533 = or i32 %shl1531, %shr1532
  %xor1534 = xor i32 %xor1530, %or1533
  %979 = load i32, i32* %e, align 4
  %980 = load i32, i32* %f, align 4
  %and1535 = and i32 %979, %980
  %981 = load i32, i32* %g, align 4
  %982 = load i32, i32* %e, align 4
  %983 = load i32, i32* %f, align 4
  %or1536 = or i32 %982, %983
  %and1537 = and i32 %981, %or1536
  %or1538 = or i32 %and1535, %and1537
  %add1539 = add i32 %xor1534, %or1538
  store i32 %add1539, i32* %t0, align 4
  %984 = load i32, i32* %d, align 4
  %985 = load i32, i32* %a, align 4
  %shl1540 = shl i32 %985, 26
  %986 = load i32, i32* %a, align 4
  %shr1541 = lshr i32 %986, 6
  %or1542 = or i32 %shl1540, %shr1541
  %987 = load i32, i32* %a, align 4
  %shl1543 = shl i32 %987, 21
  %988 = load i32, i32* %a, align 4
  %shr1544 = lshr i32 %988, 11
  %or1545 = or i32 %shl1543, %shr1544
  %xor1546 = xor i32 %or1542, %or1545
  %989 = load i32, i32* %a, align 4
  %shl1547 = shl i32 %989, 7
  %990 = load i32, i32* %a, align 4
  %shr1548 = lshr i32 %990, 25
  %or1549 = or i32 %shl1547, %shr1548
  %xor1550 = xor i32 %xor1546, %or1549
  %add1551 = add i32 %984, %xor1550
  %991 = load i32, i32* %c, align 4
  %992 = load i32, i32* %a, align 4
  %993 = load i32, i32* %b, align 4
  %994 = load i32, i32* %c, align 4
  %xor1552 = xor i32 %993, %994
  %and1553 = and i32 %992, %xor1552
  %xor1554 = xor i32 %991, %and1553
  %add1555 = add i32 %add1551, %xor1554
  %995 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 28), align 4
  %add1556 = add i32 %add1555, %995
  %arrayidx1557 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %996 = load i32, i32* %arrayidx1557, align 4
  %shl1558 = shl i32 %996, 15
  %arrayidx1559 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %997 = load i32, i32* %arrayidx1559, align 4
  %shr1560 = lshr i32 %997, 17
  %or1561 = or i32 %shl1558, %shr1560
  %arrayidx1562 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %998 = load i32, i32* %arrayidx1562, align 4
  %shl1563 = shl i32 %998, 13
  %arrayidx1564 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %999 = load i32, i32* %arrayidx1564, align 4
  %shr1565 = lshr i32 %999, 19
  %or1566 = or i32 %shl1563, %shr1565
  %xor1567 = xor i32 %or1561, %or1566
  %arrayidx1568 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1000 = load i32, i32* %arrayidx1568, align 4
  %shr1569 = lshr i32 %1000, 10
  %xor1570 = xor i32 %xor1567, %shr1569
  %arrayidx1571 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1001 = load i32, i32* %arrayidx1571, align 4
  %add1572 = add i32 %xor1570, %1001
  %arrayidx1573 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1002 = load i32, i32* %arrayidx1573, align 4
  %shl1574 = shl i32 %1002, 25
  %arrayidx1575 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1003 = load i32, i32* %arrayidx1575, align 4
  %shr1576 = lshr i32 %1003, 7
  %or1577 = or i32 %shl1574, %shr1576
  %arrayidx1578 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1004 = load i32, i32* %arrayidx1578, align 4
  %shl1579 = shl i32 %1004, 14
  %arrayidx1580 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1005 = load i32, i32* %arrayidx1580, align 4
  %shr1581 = lshr i32 %1005, 18
  %or1582 = or i32 %shl1579, %shr1581
  %xor1583 = xor i32 %or1577, %or1582
  %arrayidx1584 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1006 = load i32, i32* %arrayidx1584, align 4
  %shr1585 = lshr i32 %1006, 3
  %xor1586 = xor i32 %xor1583, %shr1585
  %add1587 = add i32 %add1572, %xor1586
  %arrayidx1588 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1007 = load i32, i32* %arrayidx1588, align 4
  %add1589 = add i32 %add1587, %1007
  store i32 %add1589, i32* %tm, align 4
  %1008 = load i32, i32* %tm, align 4
  %arrayidx1590 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %1008, i32* %arrayidx1590, align 4
  %add1591 = add i32 %add1556, %1008
  store i32 %add1591, i32* %t1, align 4
  %1009 = load i32, i32* %t1, align 4
  %1010 = load i32, i32* %h, align 4
  %add1592 = add i32 %1010, %1009
  store i32 %add1592, i32* %h, align 4
  %1011 = load i32, i32* %t0, align 4
  %1012 = load i32, i32* %t1, align 4
  %add1593 = add i32 %1011, %1012
  store i32 %add1593, i32* %d, align 4
  br label %do.end.1594

do.end.1594:                                      ; preds = %do.body.1523
  br label %do.body.1595

do.body.1595:                                     ; preds = %do.end.1594
  %1013 = load i32, i32* %d, align 4
  %shl1596 = shl i32 %1013, 30
  %1014 = load i32, i32* %d, align 4
  %shr1597 = lshr i32 %1014, 2
  %or1598 = or i32 %shl1596, %shr1597
  %1015 = load i32, i32* %d, align 4
  %shl1599 = shl i32 %1015, 19
  %1016 = load i32, i32* %d, align 4
  %shr1600 = lshr i32 %1016, 13
  %or1601 = or i32 %shl1599, %shr1600
  %xor1602 = xor i32 %or1598, %or1601
  %1017 = load i32, i32* %d, align 4
  %shl1603 = shl i32 %1017, 10
  %1018 = load i32, i32* %d, align 4
  %shr1604 = lshr i32 %1018, 22
  %or1605 = or i32 %shl1603, %shr1604
  %xor1606 = xor i32 %xor1602, %or1605
  %1019 = load i32, i32* %d, align 4
  %1020 = load i32, i32* %e, align 4
  %and1607 = and i32 %1019, %1020
  %1021 = load i32, i32* %f, align 4
  %1022 = load i32, i32* %d, align 4
  %1023 = load i32, i32* %e, align 4
  %or1608 = or i32 %1022, %1023
  %and1609 = and i32 %1021, %or1608
  %or1610 = or i32 %and1607, %and1609
  %add1611 = add i32 %xor1606, %or1610
  store i32 %add1611, i32* %t0, align 4
  %1024 = load i32, i32* %c, align 4
  %1025 = load i32, i32* %h, align 4
  %shl1612 = shl i32 %1025, 26
  %1026 = load i32, i32* %h, align 4
  %shr1613 = lshr i32 %1026, 6
  %or1614 = or i32 %shl1612, %shr1613
  %1027 = load i32, i32* %h, align 4
  %shl1615 = shl i32 %1027, 21
  %1028 = load i32, i32* %h, align 4
  %shr1616 = lshr i32 %1028, 11
  %or1617 = or i32 %shl1615, %shr1616
  %xor1618 = xor i32 %or1614, %or1617
  %1029 = load i32, i32* %h, align 4
  %shl1619 = shl i32 %1029, 7
  %1030 = load i32, i32* %h, align 4
  %shr1620 = lshr i32 %1030, 25
  %or1621 = or i32 %shl1619, %shr1620
  %xor1622 = xor i32 %xor1618, %or1621
  %add1623 = add i32 %1024, %xor1622
  %1031 = load i32, i32* %b, align 4
  %1032 = load i32, i32* %h, align 4
  %1033 = load i32, i32* %a, align 4
  %1034 = load i32, i32* %b, align 4
  %xor1624 = xor i32 %1033, %1034
  %and1625 = and i32 %1032, %xor1624
  %xor1626 = xor i32 %1031, %and1625
  %add1627 = add i32 %add1623, %xor1626
  %1035 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 29), align 4
  %add1628 = add i32 %add1627, %1035
  %arrayidx1629 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1036 = load i32, i32* %arrayidx1629, align 4
  %shl1630 = shl i32 %1036, 15
  %arrayidx1631 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1037 = load i32, i32* %arrayidx1631, align 4
  %shr1632 = lshr i32 %1037, 17
  %or1633 = or i32 %shl1630, %shr1632
  %arrayidx1634 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1038 = load i32, i32* %arrayidx1634, align 4
  %shl1635 = shl i32 %1038, 13
  %arrayidx1636 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1039 = load i32, i32* %arrayidx1636, align 4
  %shr1637 = lshr i32 %1039, 19
  %or1638 = or i32 %shl1635, %shr1637
  %xor1639 = xor i32 %or1633, %or1638
  %arrayidx1640 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1040 = load i32, i32* %arrayidx1640, align 4
  %shr1641 = lshr i32 %1040, 10
  %xor1642 = xor i32 %xor1639, %shr1641
  %arrayidx1643 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1041 = load i32, i32* %arrayidx1643, align 4
  %add1644 = add i32 %xor1642, %1041
  %arrayidx1645 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1042 = load i32, i32* %arrayidx1645, align 4
  %shl1646 = shl i32 %1042, 25
  %arrayidx1647 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1043 = load i32, i32* %arrayidx1647, align 4
  %shr1648 = lshr i32 %1043, 7
  %or1649 = or i32 %shl1646, %shr1648
  %arrayidx1650 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1044 = load i32, i32* %arrayidx1650, align 4
  %shl1651 = shl i32 %1044, 14
  %arrayidx1652 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1045 = load i32, i32* %arrayidx1652, align 4
  %shr1653 = lshr i32 %1045, 18
  %or1654 = or i32 %shl1651, %shr1653
  %xor1655 = xor i32 %or1649, %or1654
  %arrayidx1656 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1046 = load i32, i32* %arrayidx1656, align 4
  %shr1657 = lshr i32 %1046, 3
  %xor1658 = xor i32 %xor1655, %shr1657
  %add1659 = add i32 %add1644, %xor1658
  %arrayidx1660 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1047 = load i32, i32* %arrayidx1660, align 4
  %add1661 = add i32 %add1659, %1047
  store i32 %add1661, i32* %tm, align 4
  %1048 = load i32, i32* %tm, align 4
  %arrayidx1662 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %1048, i32* %arrayidx1662, align 4
  %add1663 = add i32 %add1628, %1048
  store i32 %add1663, i32* %t1, align 4
  %1049 = load i32, i32* %t1, align 4
  %1050 = load i32, i32* %g, align 4
  %add1664 = add i32 %1050, %1049
  store i32 %add1664, i32* %g, align 4
  %1051 = load i32, i32* %t0, align 4
  %1052 = load i32, i32* %t1, align 4
  %add1665 = add i32 %1051, %1052
  store i32 %add1665, i32* %c, align 4
  br label %do.end.1666

do.end.1666:                                      ; preds = %do.body.1595
  br label %do.body.1667

do.body.1667:                                     ; preds = %do.end.1666
  %1053 = load i32, i32* %c, align 4
  %shl1668 = shl i32 %1053, 30
  %1054 = load i32, i32* %c, align 4
  %shr1669 = lshr i32 %1054, 2
  %or1670 = or i32 %shl1668, %shr1669
  %1055 = load i32, i32* %c, align 4
  %shl1671 = shl i32 %1055, 19
  %1056 = load i32, i32* %c, align 4
  %shr1672 = lshr i32 %1056, 13
  %or1673 = or i32 %shl1671, %shr1672
  %xor1674 = xor i32 %or1670, %or1673
  %1057 = load i32, i32* %c, align 4
  %shl1675 = shl i32 %1057, 10
  %1058 = load i32, i32* %c, align 4
  %shr1676 = lshr i32 %1058, 22
  %or1677 = or i32 %shl1675, %shr1676
  %xor1678 = xor i32 %xor1674, %or1677
  %1059 = load i32, i32* %c, align 4
  %1060 = load i32, i32* %d, align 4
  %and1679 = and i32 %1059, %1060
  %1061 = load i32, i32* %e, align 4
  %1062 = load i32, i32* %c, align 4
  %1063 = load i32, i32* %d, align 4
  %or1680 = or i32 %1062, %1063
  %and1681 = and i32 %1061, %or1680
  %or1682 = or i32 %and1679, %and1681
  %add1683 = add i32 %xor1678, %or1682
  store i32 %add1683, i32* %t0, align 4
  %1064 = load i32, i32* %b, align 4
  %1065 = load i32, i32* %g, align 4
  %shl1684 = shl i32 %1065, 26
  %1066 = load i32, i32* %g, align 4
  %shr1685 = lshr i32 %1066, 6
  %or1686 = or i32 %shl1684, %shr1685
  %1067 = load i32, i32* %g, align 4
  %shl1687 = shl i32 %1067, 21
  %1068 = load i32, i32* %g, align 4
  %shr1688 = lshr i32 %1068, 11
  %or1689 = or i32 %shl1687, %shr1688
  %xor1690 = xor i32 %or1686, %or1689
  %1069 = load i32, i32* %g, align 4
  %shl1691 = shl i32 %1069, 7
  %1070 = load i32, i32* %g, align 4
  %shr1692 = lshr i32 %1070, 25
  %or1693 = or i32 %shl1691, %shr1692
  %xor1694 = xor i32 %xor1690, %or1693
  %add1695 = add i32 %1064, %xor1694
  %1071 = load i32, i32* %a, align 4
  %1072 = load i32, i32* %g, align 4
  %1073 = load i32, i32* %h, align 4
  %1074 = load i32, i32* %a, align 4
  %xor1696 = xor i32 %1073, %1074
  %and1697 = and i32 %1072, %xor1696
  %xor1698 = xor i32 %1071, %and1697
  %add1699 = add i32 %add1695, %xor1698
  %1075 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 30), align 4
  %add1700 = add i32 %add1699, %1075
  %arrayidx1701 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1076 = load i32, i32* %arrayidx1701, align 4
  %shl1702 = shl i32 %1076, 15
  %arrayidx1703 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1077 = load i32, i32* %arrayidx1703, align 4
  %shr1704 = lshr i32 %1077, 17
  %or1705 = or i32 %shl1702, %shr1704
  %arrayidx1706 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1078 = load i32, i32* %arrayidx1706, align 4
  %shl1707 = shl i32 %1078, 13
  %arrayidx1708 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1079 = load i32, i32* %arrayidx1708, align 4
  %shr1709 = lshr i32 %1079, 19
  %or1710 = or i32 %shl1707, %shr1709
  %xor1711 = xor i32 %or1705, %or1710
  %arrayidx1712 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1080 = load i32, i32* %arrayidx1712, align 4
  %shr1713 = lshr i32 %1080, 10
  %xor1714 = xor i32 %xor1711, %shr1713
  %arrayidx1715 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1081 = load i32, i32* %arrayidx1715, align 4
  %add1716 = add i32 %xor1714, %1081
  %arrayidx1717 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1082 = load i32, i32* %arrayidx1717, align 4
  %shl1718 = shl i32 %1082, 25
  %arrayidx1719 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1083 = load i32, i32* %arrayidx1719, align 4
  %shr1720 = lshr i32 %1083, 7
  %or1721 = or i32 %shl1718, %shr1720
  %arrayidx1722 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1084 = load i32, i32* %arrayidx1722, align 4
  %shl1723 = shl i32 %1084, 14
  %arrayidx1724 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1085 = load i32, i32* %arrayidx1724, align 4
  %shr1725 = lshr i32 %1085, 18
  %or1726 = or i32 %shl1723, %shr1725
  %xor1727 = xor i32 %or1721, %or1726
  %arrayidx1728 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1086 = load i32, i32* %arrayidx1728, align 4
  %shr1729 = lshr i32 %1086, 3
  %xor1730 = xor i32 %xor1727, %shr1729
  %add1731 = add i32 %add1716, %xor1730
  %arrayidx1732 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1087 = load i32, i32* %arrayidx1732, align 4
  %add1733 = add i32 %add1731, %1087
  store i32 %add1733, i32* %tm, align 4
  %1088 = load i32, i32* %tm, align 4
  %arrayidx1734 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %1088, i32* %arrayidx1734, align 4
  %add1735 = add i32 %add1700, %1088
  store i32 %add1735, i32* %t1, align 4
  %1089 = load i32, i32* %t1, align 4
  %1090 = load i32, i32* %f, align 4
  %add1736 = add i32 %1090, %1089
  store i32 %add1736, i32* %f, align 4
  %1091 = load i32, i32* %t0, align 4
  %1092 = load i32, i32* %t1, align 4
  %add1737 = add i32 %1091, %1092
  store i32 %add1737, i32* %b, align 4
  br label %do.end.1738

do.end.1738:                                      ; preds = %do.body.1667
  br label %do.body.1739

do.body.1739:                                     ; preds = %do.end.1738
  %1093 = load i32, i32* %b, align 4
  %shl1740 = shl i32 %1093, 30
  %1094 = load i32, i32* %b, align 4
  %shr1741 = lshr i32 %1094, 2
  %or1742 = or i32 %shl1740, %shr1741
  %1095 = load i32, i32* %b, align 4
  %shl1743 = shl i32 %1095, 19
  %1096 = load i32, i32* %b, align 4
  %shr1744 = lshr i32 %1096, 13
  %or1745 = or i32 %shl1743, %shr1744
  %xor1746 = xor i32 %or1742, %or1745
  %1097 = load i32, i32* %b, align 4
  %shl1747 = shl i32 %1097, 10
  %1098 = load i32, i32* %b, align 4
  %shr1748 = lshr i32 %1098, 22
  %or1749 = or i32 %shl1747, %shr1748
  %xor1750 = xor i32 %xor1746, %or1749
  %1099 = load i32, i32* %b, align 4
  %1100 = load i32, i32* %c, align 4
  %and1751 = and i32 %1099, %1100
  %1101 = load i32, i32* %d, align 4
  %1102 = load i32, i32* %b, align 4
  %1103 = load i32, i32* %c, align 4
  %or1752 = or i32 %1102, %1103
  %and1753 = and i32 %1101, %or1752
  %or1754 = or i32 %and1751, %and1753
  %add1755 = add i32 %xor1750, %or1754
  store i32 %add1755, i32* %t0, align 4
  %1104 = load i32, i32* %a, align 4
  %1105 = load i32, i32* %f, align 4
  %shl1756 = shl i32 %1105, 26
  %1106 = load i32, i32* %f, align 4
  %shr1757 = lshr i32 %1106, 6
  %or1758 = or i32 %shl1756, %shr1757
  %1107 = load i32, i32* %f, align 4
  %shl1759 = shl i32 %1107, 21
  %1108 = load i32, i32* %f, align 4
  %shr1760 = lshr i32 %1108, 11
  %or1761 = or i32 %shl1759, %shr1760
  %xor1762 = xor i32 %or1758, %or1761
  %1109 = load i32, i32* %f, align 4
  %shl1763 = shl i32 %1109, 7
  %1110 = load i32, i32* %f, align 4
  %shr1764 = lshr i32 %1110, 25
  %or1765 = or i32 %shl1763, %shr1764
  %xor1766 = xor i32 %xor1762, %or1765
  %add1767 = add i32 %1104, %xor1766
  %1111 = load i32, i32* %h, align 4
  %1112 = load i32, i32* %f, align 4
  %1113 = load i32, i32* %g, align 4
  %1114 = load i32, i32* %h, align 4
  %xor1768 = xor i32 %1113, %1114
  %and1769 = and i32 %1112, %xor1768
  %xor1770 = xor i32 %1111, %and1769
  %add1771 = add i32 %add1767, %xor1770
  %1115 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 31), align 4
  %add1772 = add i32 %add1771, %1115
  %arrayidx1773 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1116 = load i32, i32* %arrayidx1773, align 4
  %shl1774 = shl i32 %1116, 15
  %arrayidx1775 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1117 = load i32, i32* %arrayidx1775, align 4
  %shr1776 = lshr i32 %1117, 17
  %or1777 = or i32 %shl1774, %shr1776
  %arrayidx1778 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1118 = load i32, i32* %arrayidx1778, align 4
  %shl1779 = shl i32 %1118, 13
  %arrayidx1780 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1119 = load i32, i32* %arrayidx1780, align 4
  %shr1781 = lshr i32 %1119, 19
  %or1782 = or i32 %shl1779, %shr1781
  %xor1783 = xor i32 %or1777, %or1782
  %arrayidx1784 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1120 = load i32, i32* %arrayidx1784, align 4
  %shr1785 = lshr i32 %1120, 10
  %xor1786 = xor i32 %xor1783, %shr1785
  %arrayidx1787 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1121 = load i32, i32* %arrayidx1787, align 4
  %add1788 = add i32 %xor1786, %1121
  %arrayidx1789 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1122 = load i32, i32* %arrayidx1789, align 4
  %shl1790 = shl i32 %1122, 25
  %arrayidx1791 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1123 = load i32, i32* %arrayidx1791, align 4
  %shr1792 = lshr i32 %1123, 7
  %or1793 = or i32 %shl1790, %shr1792
  %arrayidx1794 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1124 = load i32, i32* %arrayidx1794, align 4
  %shl1795 = shl i32 %1124, 14
  %arrayidx1796 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1125 = load i32, i32* %arrayidx1796, align 4
  %shr1797 = lshr i32 %1125, 18
  %or1798 = or i32 %shl1795, %shr1797
  %xor1799 = xor i32 %or1793, %or1798
  %arrayidx1800 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1126 = load i32, i32* %arrayidx1800, align 4
  %shr1801 = lshr i32 %1126, 3
  %xor1802 = xor i32 %xor1799, %shr1801
  %add1803 = add i32 %add1788, %xor1802
  %arrayidx1804 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1127 = load i32, i32* %arrayidx1804, align 4
  %add1805 = add i32 %add1803, %1127
  store i32 %add1805, i32* %tm, align 4
  %1128 = load i32, i32* %tm, align 4
  %arrayidx1806 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %1128, i32* %arrayidx1806, align 4
  %add1807 = add i32 %add1772, %1128
  store i32 %add1807, i32* %t1, align 4
  %1129 = load i32, i32* %t1, align 4
  %1130 = load i32, i32* %e, align 4
  %add1808 = add i32 %1130, %1129
  store i32 %add1808, i32* %e, align 4
  %1131 = load i32, i32* %t0, align 4
  %1132 = load i32, i32* %t1, align 4
  %add1809 = add i32 %1131, %1132
  store i32 %add1809, i32* %a, align 4
  br label %do.end.1810

do.end.1810:                                      ; preds = %do.body.1739
  br label %do.body.1811

do.body.1811:                                     ; preds = %do.end.1810
  %1133 = load i32, i32* %a, align 4
  %shl1812 = shl i32 %1133, 30
  %1134 = load i32, i32* %a, align 4
  %shr1813 = lshr i32 %1134, 2
  %or1814 = or i32 %shl1812, %shr1813
  %1135 = load i32, i32* %a, align 4
  %shl1815 = shl i32 %1135, 19
  %1136 = load i32, i32* %a, align 4
  %shr1816 = lshr i32 %1136, 13
  %or1817 = or i32 %shl1815, %shr1816
  %xor1818 = xor i32 %or1814, %or1817
  %1137 = load i32, i32* %a, align 4
  %shl1819 = shl i32 %1137, 10
  %1138 = load i32, i32* %a, align 4
  %shr1820 = lshr i32 %1138, 22
  %or1821 = or i32 %shl1819, %shr1820
  %xor1822 = xor i32 %xor1818, %or1821
  %1139 = load i32, i32* %a, align 4
  %1140 = load i32, i32* %b, align 4
  %and1823 = and i32 %1139, %1140
  %1141 = load i32, i32* %c, align 4
  %1142 = load i32, i32* %a, align 4
  %1143 = load i32, i32* %b, align 4
  %or1824 = or i32 %1142, %1143
  %and1825 = and i32 %1141, %or1824
  %or1826 = or i32 %and1823, %and1825
  %add1827 = add i32 %xor1822, %or1826
  store i32 %add1827, i32* %t0, align 4
  %1144 = load i32, i32* %h, align 4
  %1145 = load i32, i32* %e, align 4
  %shl1828 = shl i32 %1145, 26
  %1146 = load i32, i32* %e, align 4
  %shr1829 = lshr i32 %1146, 6
  %or1830 = or i32 %shl1828, %shr1829
  %1147 = load i32, i32* %e, align 4
  %shl1831 = shl i32 %1147, 21
  %1148 = load i32, i32* %e, align 4
  %shr1832 = lshr i32 %1148, 11
  %or1833 = or i32 %shl1831, %shr1832
  %xor1834 = xor i32 %or1830, %or1833
  %1149 = load i32, i32* %e, align 4
  %shl1835 = shl i32 %1149, 7
  %1150 = load i32, i32* %e, align 4
  %shr1836 = lshr i32 %1150, 25
  %or1837 = or i32 %shl1835, %shr1836
  %xor1838 = xor i32 %xor1834, %or1837
  %add1839 = add i32 %1144, %xor1838
  %1151 = load i32, i32* %g, align 4
  %1152 = load i32, i32* %e, align 4
  %1153 = load i32, i32* %f, align 4
  %1154 = load i32, i32* %g, align 4
  %xor1840 = xor i32 %1153, %1154
  %and1841 = and i32 %1152, %xor1840
  %xor1842 = xor i32 %1151, %and1841
  %add1843 = add i32 %add1839, %xor1842
  %1155 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 32), align 4
  %add1844 = add i32 %add1843, %1155
  %arrayidx1845 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1156 = load i32, i32* %arrayidx1845, align 4
  %shl1846 = shl i32 %1156, 15
  %arrayidx1847 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1157 = load i32, i32* %arrayidx1847, align 4
  %shr1848 = lshr i32 %1157, 17
  %or1849 = or i32 %shl1846, %shr1848
  %arrayidx1850 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1158 = load i32, i32* %arrayidx1850, align 4
  %shl1851 = shl i32 %1158, 13
  %arrayidx1852 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1159 = load i32, i32* %arrayidx1852, align 4
  %shr1853 = lshr i32 %1159, 19
  %or1854 = or i32 %shl1851, %shr1853
  %xor1855 = xor i32 %or1849, %or1854
  %arrayidx1856 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1160 = load i32, i32* %arrayidx1856, align 4
  %shr1857 = lshr i32 %1160, 10
  %xor1858 = xor i32 %xor1855, %shr1857
  %arrayidx1859 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1161 = load i32, i32* %arrayidx1859, align 4
  %add1860 = add i32 %xor1858, %1161
  %arrayidx1861 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1162 = load i32, i32* %arrayidx1861, align 4
  %shl1862 = shl i32 %1162, 25
  %arrayidx1863 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1163 = load i32, i32* %arrayidx1863, align 4
  %shr1864 = lshr i32 %1163, 7
  %or1865 = or i32 %shl1862, %shr1864
  %arrayidx1866 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1164 = load i32, i32* %arrayidx1866, align 4
  %shl1867 = shl i32 %1164, 14
  %arrayidx1868 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1165 = load i32, i32* %arrayidx1868, align 4
  %shr1869 = lshr i32 %1165, 18
  %or1870 = or i32 %shl1867, %shr1869
  %xor1871 = xor i32 %or1865, %or1870
  %arrayidx1872 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1166 = load i32, i32* %arrayidx1872, align 4
  %shr1873 = lshr i32 %1166, 3
  %xor1874 = xor i32 %xor1871, %shr1873
  %add1875 = add i32 %add1860, %xor1874
  %arrayidx1876 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1167 = load i32, i32* %arrayidx1876, align 4
  %add1877 = add i32 %add1875, %1167
  store i32 %add1877, i32* %tm, align 4
  %1168 = load i32, i32* %tm, align 4
  %arrayidx1878 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %1168, i32* %arrayidx1878, align 4
  %add1879 = add i32 %add1844, %1168
  store i32 %add1879, i32* %t1, align 4
  %1169 = load i32, i32* %t1, align 4
  %1170 = load i32, i32* %d, align 4
  %add1880 = add i32 %1170, %1169
  store i32 %add1880, i32* %d, align 4
  %1171 = load i32, i32* %t0, align 4
  %1172 = load i32, i32* %t1, align 4
  %add1881 = add i32 %1171, %1172
  store i32 %add1881, i32* %h, align 4
  br label %do.end.1882

do.end.1882:                                      ; preds = %do.body.1811
  br label %do.body.1883

do.body.1883:                                     ; preds = %do.end.1882
  %1173 = load i32, i32* %h, align 4
  %shl1884 = shl i32 %1173, 30
  %1174 = load i32, i32* %h, align 4
  %shr1885 = lshr i32 %1174, 2
  %or1886 = or i32 %shl1884, %shr1885
  %1175 = load i32, i32* %h, align 4
  %shl1887 = shl i32 %1175, 19
  %1176 = load i32, i32* %h, align 4
  %shr1888 = lshr i32 %1176, 13
  %or1889 = or i32 %shl1887, %shr1888
  %xor1890 = xor i32 %or1886, %or1889
  %1177 = load i32, i32* %h, align 4
  %shl1891 = shl i32 %1177, 10
  %1178 = load i32, i32* %h, align 4
  %shr1892 = lshr i32 %1178, 22
  %or1893 = or i32 %shl1891, %shr1892
  %xor1894 = xor i32 %xor1890, %or1893
  %1179 = load i32, i32* %h, align 4
  %1180 = load i32, i32* %a, align 4
  %and1895 = and i32 %1179, %1180
  %1181 = load i32, i32* %b, align 4
  %1182 = load i32, i32* %h, align 4
  %1183 = load i32, i32* %a, align 4
  %or1896 = or i32 %1182, %1183
  %and1897 = and i32 %1181, %or1896
  %or1898 = or i32 %and1895, %and1897
  %add1899 = add i32 %xor1894, %or1898
  store i32 %add1899, i32* %t0, align 4
  %1184 = load i32, i32* %g, align 4
  %1185 = load i32, i32* %d, align 4
  %shl1900 = shl i32 %1185, 26
  %1186 = load i32, i32* %d, align 4
  %shr1901 = lshr i32 %1186, 6
  %or1902 = or i32 %shl1900, %shr1901
  %1187 = load i32, i32* %d, align 4
  %shl1903 = shl i32 %1187, 21
  %1188 = load i32, i32* %d, align 4
  %shr1904 = lshr i32 %1188, 11
  %or1905 = or i32 %shl1903, %shr1904
  %xor1906 = xor i32 %or1902, %or1905
  %1189 = load i32, i32* %d, align 4
  %shl1907 = shl i32 %1189, 7
  %1190 = load i32, i32* %d, align 4
  %shr1908 = lshr i32 %1190, 25
  %or1909 = or i32 %shl1907, %shr1908
  %xor1910 = xor i32 %xor1906, %or1909
  %add1911 = add i32 %1184, %xor1910
  %1191 = load i32, i32* %f, align 4
  %1192 = load i32, i32* %d, align 4
  %1193 = load i32, i32* %e, align 4
  %1194 = load i32, i32* %f, align 4
  %xor1912 = xor i32 %1193, %1194
  %and1913 = and i32 %1192, %xor1912
  %xor1914 = xor i32 %1191, %and1913
  %add1915 = add i32 %add1911, %xor1914
  %1195 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 33), align 4
  %add1916 = add i32 %add1915, %1195
  %arrayidx1917 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1196 = load i32, i32* %arrayidx1917, align 4
  %shl1918 = shl i32 %1196, 15
  %arrayidx1919 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1197 = load i32, i32* %arrayidx1919, align 4
  %shr1920 = lshr i32 %1197, 17
  %or1921 = or i32 %shl1918, %shr1920
  %arrayidx1922 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1198 = load i32, i32* %arrayidx1922, align 4
  %shl1923 = shl i32 %1198, 13
  %arrayidx1924 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1199 = load i32, i32* %arrayidx1924, align 4
  %shr1925 = lshr i32 %1199, 19
  %or1926 = or i32 %shl1923, %shr1925
  %xor1927 = xor i32 %or1921, %or1926
  %arrayidx1928 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1200 = load i32, i32* %arrayidx1928, align 4
  %shr1929 = lshr i32 %1200, 10
  %xor1930 = xor i32 %xor1927, %shr1929
  %arrayidx1931 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1201 = load i32, i32* %arrayidx1931, align 4
  %add1932 = add i32 %xor1930, %1201
  %arrayidx1933 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1202 = load i32, i32* %arrayidx1933, align 4
  %shl1934 = shl i32 %1202, 25
  %arrayidx1935 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1203 = load i32, i32* %arrayidx1935, align 4
  %shr1936 = lshr i32 %1203, 7
  %or1937 = or i32 %shl1934, %shr1936
  %arrayidx1938 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1204 = load i32, i32* %arrayidx1938, align 4
  %shl1939 = shl i32 %1204, 14
  %arrayidx1940 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1205 = load i32, i32* %arrayidx1940, align 4
  %shr1941 = lshr i32 %1205, 18
  %or1942 = or i32 %shl1939, %shr1941
  %xor1943 = xor i32 %or1937, %or1942
  %arrayidx1944 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1206 = load i32, i32* %arrayidx1944, align 4
  %shr1945 = lshr i32 %1206, 3
  %xor1946 = xor i32 %xor1943, %shr1945
  %add1947 = add i32 %add1932, %xor1946
  %arrayidx1948 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1207 = load i32, i32* %arrayidx1948, align 4
  %add1949 = add i32 %add1947, %1207
  store i32 %add1949, i32* %tm, align 4
  %1208 = load i32, i32* %tm, align 4
  %arrayidx1950 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %1208, i32* %arrayidx1950, align 4
  %add1951 = add i32 %add1916, %1208
  store i32 %add1951, i32* %t1, align 4
  %1209 = load i32, i32* %t1, align 4
  %1210 = load i32, i32* %c, align 4
  %add1952 = add i32 %1210, %1209
  store i32 %add1952, i32* %c, align 4
  %1211 = load i32, i32* %t0, align 4
  %1212 = load i32, i32* %t1, align 4
  %add1953 = add i32 %1211, %1212
  store i32 %add1953, i32* %g, align 4
  br label %do.end.1954

do.end.1954:                                      ; preds = %do.body.1883
  br label %do.body.1955

do.body.1955:                                     ; preds = %do.end.1954
  %1213 = load i32, i32* %g, align 4
  %shl1956 = shl i32 %1213, 30
  %1214 = load i32, i32* %g, align 4
  %shr1957 = lshr i32 %1214, 2
  %or1958 = or i32 %shl1956, %shr1957
  %1215 = load i32, i32* %g, align 4
  %shl1959 = shl i32 %1215, 19
  %1216 = load i32, i32* %g, align 4
  %shr1960 = lshr i32 %1216, 13
  %or1961 = or i32 %shl1959, %shr1960
  %xor1962 = xor i32 %or1958, %or1961
  %1217 = load i32, i32* %g, align 4
  %shl1963 = shl i32 %1217, 10
  %1218 = load i32, i32* %g, align 4
  %shr1964 = lshr i32 %1218, 22
  %or1965 = or i32 %shl1963, %shr1964
  %xor1966 = xor i32 %xor1962, %or1965
  %1219 = load i32, i32* %g, align 4
  %1220 = load i32, i32* %h, align 4
  %and1967 = and i32 %1219, %1220
  %1221 = load i32, i32* %a, align 4
  %1222 = load i32, i32* %g, align 4
  %1223 = load i32, i32* %h, align 4
  %or1968 = or i32 %1222, %1223
  %and1969 = and i32 %1221, %or1968
  %or1970 = or i32 %and1967, %and1969
  %add1971 = add i32 %xor1966, %or1970
  store i32 %add1971, i32* %t0, align 4
  %1224 = load i32, i32* %f, align 4
  %1225 = load i32, i32* %c, align 4
  %shl1972 = shl i32 %1225, 26
  %1226 = load i32, i32* %c, align 4
  %shr1973 = lshr i32 %1226, 6
  %or1974 = or i32 %shl1972, %shr1973
  %1227 = load i32, i32* %c, align 4
  %shl1975 = shl i32 %1227, 21
  %1228 = load i32, i32* %c, align 4
  %shr1976 = lshr i32 %1228, 11
  %or1977 = or i32 %shl1975, %shr1976
  %xor1978 = xor i32 %or1974, %or1977
  %1229 = load i32, i32* %c, align 4
  %shl1979 = shl i32 %1229, 7
  %1230 = load i32, i32* %c, align 4
  %shr1980 = lshr i32 %1230, 25
  %or1981 = or i32 %shl1979, %shr1980
  %xor1982 = xor i32 %xor1978, %or1981
  %add1983 = add i32 %1224, %xor1982
  %1231 = load i32, i32* %e, align 4
  %1232 = load i32, i32* %c, align 4
  %1233 = load i32, i32* %d, align 4
  %1234 = load i32, i32* %e, align 4
  %xor1984 = xor i32 %1233, %1234
  %and1985 = and i32 %1232, %xor1984
  %xor1986 = xor i32 %1231, %and1985
  %add1987 = add i32 %add1983, %xor1986
  %1235 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 34), align 4
  %add1988 = add i32 %add1987, %1235
  %arrayidx1989 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1236 = load i32, i32* %arrayidx1989, align 4
  %shl1990 = shl i32 %1236, 15
  %arrayidx1991 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1237 = load i32, i32* %arrayidx1991, align 4
  %shr1992 = lshr i32 %1237, 17
  %or1993 = or i32 %shl1990, %shr1992
  %arrayidx1994 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1238 = load i32, i32* %arrayidx1994, align 4
  %shl1995 = shl i32 %1238, 13
  %arrayidx1996 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1239 = load i32, i32* %arrayidx1996, align 4
  %shr1997 = lshr i32 %1239, 19
  %or1998 = or i32 %shl1995, %shr1997
  %xor1999 = xor i32 %or1993, %or1998
  %arrayidx2000 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1240 = load i32, i32* %arrayidx2000, align 4
  %shr2001 = lshr i32 %1240, 10
  %xor2002 = xor i32 %xor1999, %shr2001
  %arrayidx2003 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1241 = load i32, i32* %arrayidx2003, align 4
  %add2004 = add i32 %xor2002, %1241
  %arrayidx2005 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1242 = load i32, i32* %arrayidx2005, align 4
  %shl2006 = shl i32 %1242, 25
  %arrayidx2007 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1243 = load i32, i32* %arrayidx2007, align 4
  %shr2008 = lshr i32 %1243, 7
  %or2009 = or i32 %shl2006, %shr2008
  %arrayidx2010 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1244 = load i32, i32* %arrayidx2010, align 4
  %shl2011 = shl i32 %1244, 14
  %arrayidx2012 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1245 = load i32, i32* %arrayidx2012, align 4
  %shr2013 = lshr i32 %1245, 18
  %or2014 = or i32 %shl2011, %shr2013
  %xor2015 = xor i32 %or2009, %or2014
  %arrayidx2016 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1246 = load i32, i32* %arrayidx2016, align 4
  %shr2017 = lshr i32 %1246, 3
  %xor2018 = xor i32 %xor2015, %shr2017
  %add2019 = add i32 %add2004, %xor2018
  %arrayidx2020 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1247 = load i32, i32* %arrayidx2020, align 4
  %add2021 = add i32 %add2019, %1247
  store i32 %add2021, i32* %tm, align 4
  %1248 = load i32, i32* %tm, align 4
  %arrayidx2022 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %1248, i32* %arrayidx2022, align 4
  %add2023 = add i32 %add1988, %1248
  store i32 %add2023, i32* %t1, align 4
  %1249 = load i32, i32* %t1, align 4
  %1250 = load i32, i32* %b, align 4
  %add2024 = add i32 %1250, %1249
  store i32 %add2024, i32* %b, align 4
  %1251 = load i32, i32* %t0, align 4
  %1252 = load i32, i32* %t1, align 4
  %add2025 = add i32 %1251, %1252
  store i32 %add2025, i32* %f, align 4
  br label %do.end.2026

do.end.2026:                                      ; preds = %do.body.1955
  br label %do.body.2027

do.body.2027:                                     ; preds = %do.end.2026
  %1253 = load i32, i32* %f, align 4
  %shl2028 = shl i32 %1253, 30
  %1254 = load i32, i32* %f, align 4
  %shr2029 = lshr i32 %1254, 2
  %or2030 = or i32 %shl2028, %shr2029
  %1255 = load i32, i32* %f, align 4
  %shl2031 = shl i32 %1255, 19
  %1256 = load i32, i32* %f, align 4
  %shr2032 = lshr i32 %1256, 13
  %or2033 = or i32 %shl2031, %shr2032
  %xor2034 = xor i32 %or2030, %or2033
  %1257 = load i32, i32* %f, align 4
  %shl2035 = shl i32 %1257, 10
  %1258 = load i32, i32* %f, align 4
  %shr2036 = lshr i32 %1258, 22
  %or2037 = or i32 %shl2035, %shr2036
  %xor2038 = xor i32 %xor2034, %or2037
  %1259 = load i32, i32* %f, align 4
  %1260 = load i32, i32* %g, align 4
  %and2039 = and i32 %1259, %1260
  %1261 = load i32, i32* %h, align 4
  %1262 = load i32, i32* %f, align 4
  %1263 = load i32, i32* %g, align 4
  %or2040 = or i32 %1262, %1263
  %and2041 = and i32 %1261, %or2040
  %or2042 = or i32 %and2039, %and2041
  %add2043 = add i32 %xor2038, %or2042
  store i32 %add2043, i32* %t0, align 4
  %1264 = load i32, i32* %e, align 4
  %1265 = load i32, i32* %b, align 4
  %shl2044 = shl i32 %1265, 26
  %1266 = load i32, i32* %b, align 4
  %shr2045 = lshr i32 %1266, 6
  %or2046 = or i32 %shl2044, %shr2045
  %1267 = load i32, i32* %b, align 4
  %shl2047 = shl i32 %1267, 21
  %1268 = load i32, i32* %b, align 4
  %shr2048 = lshr i32 %1268, 11
  %or2049 = or i32 %shl2047, %shr2048
  %xor2050 = xor i32 %or2046, %or2049
  %1269 = load i32, i32* %b, align 4
  %shl2051 = shl i32 %1269, 7
  %1270 = load i32, i32* %b, align 4
  %shr2052 = lshr i32 %1270, 25
  %or2053 = or i32 %shl2051, %shr2052
  %xor2054 = xor i32 %xor2050, %or2053
  %add2055 = add i32 %1264, %xor2054
  %1271 = load i32, i32* %d, align 4
  %1272 = load i32, i32* %b, align 4
  %1273 = load i32, i32* %c, align 4
  %1274 = load i32, i32* %d, align 4
  %xor2056 = xor i32 %1273, %1274
  %and2057 = and i32 %1272, %xor2056
  %xor2058 = xor i32 %1271, %and2057
  %add2059 = add i32 %add2055, %xor2058
  %1275 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 35), align 4
  %add2060 = add i32 %add2059, %1275
  %arrayidx2061 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1276 = load i32, i32* %arrayidx2061, align 4
  %shl2062 = shl i32 %1276, 15
  %arrayidx2063 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1277 = load i32, i32* %arrayidx2063, align 4
  %shr2064 = lshr i32 %1277, 17
  %or2065 = or i32 %shl2062, %shr2064
  %arrayidx2066 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1278 = load i32, i32* %arrayidx2066, align 4
  %shl2067 = shl i32 %1278, 13
  %arrayidx2068 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1279 = load i32, i32* %arrayidx2068, align 4
  %shr2069 = lshr i32 %1279, 19
  %or2070 = or i32 %shl2067, %shr2069
  %xor2071 = xor i32 %or2065, %or2070
  %arrayidx2072 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1280 = load i32, i32* %arrayidx2072, align 4
  %shr2073 = lshr i32 %1280, 10
  %xor2074 = xor i32 %xor2071, %shr2073
  %arrayidx2075 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1281 = load i32, i32* %arrayidx2075, align 4
  %add2076 = add i32 %xor2074, %1281
  %arrayidx2077 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1282 = load i32, i32* %arrayidx2077, align 4
  %shl2078 = shl i32 %1282, 25
  %arrayidx2079 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1283 = load i32, i32* %arrayidx2079, align 4
  %shr2080 = lshr i32 %1283, 7
  %or2081 = or i32 %shl2078, %shr2080
  %arrayidx2082 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1284 = load i32, i32* %arrayidx2082, align 4
  %shl2083 = shl i32 %1284, 14
  %arrayidx2084 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1285 = load i32, i32* %arrayidx2084, align 4
  %shr2085 = lshr i32 %1285, 18
  %or2086 = or i32 %shl2083, %shr2085
  %xor2087 = xor i32 %or2081, %or2086
  %arrayidx2088 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1286 = load i32, i32* %arrayidx2088, align 4
  %shr2089 = lshr i32 %1286, 3
  %xor2090 = xor i32 %xor2087, %shr2089
  %add2091 = add i32 %add2076, %xor2090
  %arrayidx2092 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1287 = load i32, i32* %arrayidx2092, align 4
  %add2093 = add i32 %add2091, %1287
  store i32 %add2093, i32* %tm, align 4
  %1288 = load i32, i32* %tm, align 4
  %arrayidx2094 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %1288, i32* %arrayidx2094, align 4
  %add2095 = add i32 %add2060, %1288
  store i32 %add2095, i32* %t1, align 4
  %1289 = load i32, i32* %t1, align 4
  %1290 = load i32, i32* %a, align 4
  %add2096 = add i32 %1290, %1289
  store i32 %add2096, i32* %a, align 4
  %1291 = load i32, i32* %t0, align 4
  %1292 = load i32, i32* %t1, align 4
  %add2097 = add i32 %1291, %1292
  store i32 %add2097, i32* %e, align 4
  br label %do.end.2098

do.end.2098:                                      ; preds = %do.body.2027
  br label %do.body.2099

do.body.2099:                                     ; preds = %do.end.2098
  %1293 = load i32, i32* %e, align 4
  %shl2100 = shl i32 %1293, 30
  %1294 = load i32, i32* %e, align 4
  %shr2101 = lshr i32 %1294, 2
  %or2102 = or i32 %shl2100, %shr2101
  %1295 = load i32, i32* %e, align 4
  %shl2103 = shl i32 %1295, 19
  %1296 = load i32, i32* %e, align 4
  %shr2104 = lshr i32 %1296, 13
  %or2105 = or i32 %shl2103, %shr2104
  %xor2106 = xor i32 %or2102, %or2105
  %1297 = load i32, i32* %e, align 4
  %shl2107 = shl i32 %1297, 10
  %1298 = load i32, i32* %e, align 4
  %shr2108 = lshr i32 %1298, 22
  %or2109 = or i32 %shl2107, %shr2108
  %xor2110 = xor i32 %xor2106, %or2109
  %1299 = load i32, i32* %e, align 4
  %1300 = load i32, i32* %f, align 4
  %and2111 = and i32 %1299, %1300
  %1301 = load i32, i32* %g, align 4
  %1302 = load i32, i32* %e, align 4
  %1303 = load i32, i32* %f, align 4
  %or2112 = or i32 %1302, %1303
  %and2113 = and i32 %1301, %or2112
  %or2114 = or i32 %and2111, %and2113
  %add2115 = add i32 %xor2110, %or2114
  store i32 %add2115, i32* %t0, align 4
  %1304 = load i32, i32* %d, align 4
  %1305 = load i32, i32* %a, align 4
  %shl2116 = shl i32 %1305, 26
  %1306 = load i32, i32* %a, align 4
  %shr2117 = lshr i32 %1306, 6
  %or2118 = or i32 %shl2116, %shr2117
  %1307 = load i32, i32* %a, align 4
  %shl2119 = shl i32 %1307, 21
  %1308 = load i32, i32* %a, align 4
  %shr2120 = lshr i32 %1308, 11
  %or2121 = or i32 %shl2119, %shr2120
  %xor2122 = xor i32 %or2118, %or2121
  %1309 = load i32, i32* %a, align 4
  %shl2123 = shl i32 %1309, 7
  %1310 = load i32, i32* %a, align 4
  %shr2124 = lshr i32 %1310, 25
  %or2125 = or i32 %shl2123, %shr2124
  %xor2126 = xor i32 %xor2122, %or2125
  %add2127 = add i32 %1304, %xor2126
  %1311 = load i32, i32* %c, align 4
  %1312 = load i32, i32* %a, align 4
  %1313 = load i32, i32* %b, align 4
  %1314 = load i32, i32* %c, align 4
  %xor2128 = xor i32 %1313, %1314
  %and2129 = and i32 %1312, %xor2128
  %xor2130 = xor i32 %1311, %and2129
  %add2131 = add i32 %add2127, %xor2130
  %1315 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 36), align 4
  %add2132 = add i32 %add2131, %1315
  %arrayidx2133 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1316 = load i32, i32* %arrayidx2133, align 4
  %shl2134 = shl i32 %1316, 15
  %arrayidx2135 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1317 = load i32, i32* %arrayidx2135, align 4
  %shr2136 = lshr i32 %1317, 17
  %or2137 = or i32 %shl2134, %shr2136
  %arrayidx2138 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1318 = load i32, i32* %arrayidx2138, align 4
  %shl2139 = shl i32 %1318, 13
  %arrayidx2140 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1319 = load i32, i32* %arrayidx2140, align 4
  %shr2141 = lshr i32 %1319, 19
  %or2142 = or i32 %shl2139, %shr2141
  %xor2143 = xor i32 %or2137, %or2142
  %arrayidx2144 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1320 = load i32, i32* %arrayidx2144, align 4
  %shr2145 = lshr i32 %1320, 10
  %xor2146 = xor i32 %xor2143, %shr2145
  %arrayidx2147 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1321 = load i32, i32* %arrayidx2147, align 4
  %add2148 = add i32 %xor2146, %1321
  %arrayidx2149 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1322 = load i32, i32* %arrayidx2149, align 4
  %shl2150 = shl i32 %1322, 25
  %arrayidx2151 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1323 = load i32, i32* %arrayidx2151, align 4
  %shr2152 = lshr i32 %1323, 7
  %or2153 = or i32 %shl2150, %shr2152
  %arrayidx2154 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1324 = load i32, i32* %arrayidx2154, align 4
  %shl2155 = shl i32 %1324, 14
  %arrayidx2156 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1325 = load i32, i32* %arrayidx2156, align 4
  %shr2157 = lshr i32 %1325, 18
  %or2158 = or i32 %shl2155, %shr2157
  %xor2159 = xor i32 %or2153, %or2158
  %arrayidx2160 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1326 = load i32, i32* %arrayidx2160, align 4
  %shr2161 = lshr i32 %1326, 3
  %xor2162 = xor i32 %xor2159, %shr2161
  %add2163 = add i32 %add2148, %xor2162
  %arrayidx2164 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1327 = load i32, i32* %arrayidx2164, align 4
  %add2165 = add i32 %add2163, %1327
  store i32 %add2165, i32* %tm, align 4
  %1328 = load i32, i32* %tm, align 4
  %arrayidx2166 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %1328, i32* %arrayidx2166, align 4
  %add2167 = add i32 %add2132, %1328
  store i32 %add2167, i32* %t1, align 4
  %1329 = load i32, i32* %t1, align 4
  %1330 = load i32, i32* %h, align 4
  %add2168 = add i32 %1330, %1329
  store i32 %add2168, i32* %h, align 4
  %1331 = load i32, i32* %t0, align 4
  %1332 = load i32, i32* %t1, align 4
  %add2169 = add i32 %1331, %1332
  store i32 %add2169, i32* %d, align 4
  br label %do.end.2170

do.end.2170:                                      ; preds = %do.body.2099
  br label %do.body.2171

do.body.2171:                                     ; preds = %do.end.2170
  %1333 = load i32, i32* %d, align 4
  %shl2172 = shl i32 %1333, 30
  %1334 = load i32, i32* %d, align 4
  %shr2173 = lshr i32 %1334, 2
  %or2174 = or i32 %shl2172, %shr2173
  %1335 = load i32, i32* %d, align 4
  %shl2175 = shl i32 %1335, 19
  %1336 = load i32, i32* %d, align 4
  %shr2176 = lshr i32 %1336, 13
  %or2177 = or i32 %shl2175, %shr2176
  %xor2178 = xor i32 %or2174, %or2177
  %1337 = load i32, i32* %d, align 4
  %shl2179 = shl i32 %1337, 10
  %1338 = load i32, i32* %d, align 4
  %shr2180 = lshr i32 %1338, 22
  %or2181 = or i32 %shl2179, %shr2180
  %xor2182 = xor i32 %xor2178, %or2181
  %1339 = load i32, i32* %d, align 4
  %1340 = load i32, i32* %e, align 4
  %and2183 = and i32 %1339, %1340
  %1341 = load i32, i32* %f, align 4
  %1342 = load i32, i32* %d, align 4
  %1343 = load i32, i32* %e, align 4
  %or2184 = or i32 %1342, %1343
  %and2185 = and i32 %1341, %or2184
  %or2186 = or i32 %and2183, %and2185
  %add2187 = add i32 %xor2182, %or2186
  store i32 %add2187, i32* %t0, align 4
  %1344 = load i32, i32* %c, align 4
  %1345 = load i32, i32* %h, align 4
  %shl2188 = shl i32 %1345, 26
  %1346 = load i32, i32* %h, align 4
  %shr2189 = lshr i32 %1346, 6
  %or2190 = or i32 %shl2188, %shr2189
  %1347 = load i32, i32* %h, align 4
  %shl2191 = shl i32 %1347, 21
  %1348 = load i32, i32* %h, align 4
  %shr2192 = lshr i32 %1348, 11
  %or2193 = or i32 %shl2191, %shr2192
  %xor2194 = xor i32 %or2190, %or2193
  %1349 = load i32, i32* %h, align 4
  %shl2195 = shl i32 %1349, 7
  %1350 = load i32, i32* %h, align 4
  %shr2196 = lshr i32 %1350, 25
  %or2197 = or i32 %shl2195, %shr2196
  %xor2198 = xor i32 %xor2194, %or2197
  %add2199 = add i32 %1344, %xor2198
  %1351 = load i32, i32* %b, align 4
  %1352 = load i32, i32* %h, align 4
  %1353 = load i32, i32* %a, align 4
  %1354 = load i32, i32* %b, align 4
  %xor2200 = xor i32 %1353, %1354
  %and2201 = and i32 %1352, %xor2200
  %xor2202 = xor i32 %1351, %and2201
  %add2203 = add i32 %add2199, %xor2202
  %1355 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 37), align 4
  %add2204 = add i32 %add2203, %1355
  %arrayidx2205 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1356 = load i32, i32* %arrayidx2205, align 4
  %shl2206 = shl i32 %1356, 15
  %arrayidx2207 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1357 = load i32, i32* %arrayidx2207, align 4
  %shr2208 = lshr i32 %1357, 17
  %or2209 = or i32 %shl2206, %shr2208
  %arrayidx2210 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1358 = load i32, i32* %arrayidx2210, align 4
  %shl2211 = shl i32 %1358, 13
  %arrayidx2212 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1359 = load i32, i32* %arrayidx2212, align 4
  %shr2213 = lshr i32 %1359, 19
  %or2214 = or i32 %shl2211, %shr2213
  %xor2215 = xor i32 %or2209, %or2214
  %arrayidx2216 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1360 = load i32, i32* %arrayidx2216, align 4
  %shr2217 = lshr i32 %1360, 10
  %xor2218 = xor i32 %xor2215, %shr2217
  %arrayidx2219 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1361 = load i32, i32* %arrayidx2219, align 4
  %add2220 = add i32 %xor2218, %1361
  %arrayidx2221 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1362 = load i32, i32* %arrayidx2221, align 4
  %shl2222 = shl i32 %1362, 25
  %arrayidx2223 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1363 = load i32, i32* %arrayidx2223, align 4
  %shr2224 = lshr i32 %1363, 7
  %or2225 = or i32 %shl2222, %shr2224
  %arrayidx2226 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1364 = load i32, i32* %arrayidx2226, align 4
  %shl2227 = shl i32 %1364, 14
  %arrayidx2228 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1365 = load i32, i32* %arrayidx2228, align 4
  %shr2229 = lshr i32 %1365, 18
  %or2230 = or i32 %shl2227, %shr2229
  %xor2231 = xor i32 %or2225, %or2230
  %arrayidx2232 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1366 = load i32, i32* %arrayidx2232, align 4
  %shr2233 = lshr i32 %1366, 3
  %xor2234 = xor i32 %xor2231, %shr2233
  %add2235 = add i32 %add2220, %xor2234
  %arrayidx2236 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1367 = load i32, i32* %arrayidx2236, align 4
  %add2237 = add i32 %add2235, %1367
  store i32 %add2237, i32* %tm, align 4
  %1368 = load i32, i32* %tm, align 4
  %arrayidx2238 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %1368, i32* %arrayidx2238, align 4
  %add2239 = add i32 %add2204, %1368
  store i32 %add2239, i32* %t1, align 4
  %1369 = load i32, i32* %t1, align 4
  %1370 = load i32, i32* %g, align 4
  %add2240 = add i32 %1370, %1369
  store i32 %add2240, i32* %g, align 4
  %1371 = load i32, i32* %t0, align 4
  %1372 = load i32, i32* %t1, align 4
  %add2241 = add i32 %1371, %1372
  store i32 %add2241, i32* %c, align 4
  br label %do.end.2242

do.end.2242:                                      ; preds = %do.body.2171
  br label %do.body.2243

do.body.2243:                                     ; preds = %do.end.2242
  %1373 = load i32, i32* %c, align 4
  %shl2244 = shl i32 %1373, 30
  %1374 = load i32, i32* %c, align 4
  %shr2245 = lshr i32 %1374, 2
  %or2246 = or i32 %shl2244, %shr2245
  %1375 = load i32, i32* %c, align 4
  %shl2247 = shl i32 %1375, 19
  %1376 = load i32, i32* %c, align 4
  %shr2248 = lshr i32 %1376, 13
  %or2249 = or i32 %shl2247, %shr2248
  %xor2250 = xor i32 %or2246, %or2249
  %1377 = load i32, i32* %c, align 4
  %shl2251 = shl i32 %1377, 10
  %1378 = load i32, i32* %c, align 4
  %shr2252 = lshr i32 %1378, 22
  %or2253 = or i32 %shl2251, %shr2252
  %xor2254 = xor i32 %xor2250, %or2253
  %1379 = load i32, i32* %c, align 4
  %1380 = load i32, i32* %d, align 4
  %and2255 = and i32 %1379, %1380
  %1381 = load i32, i32* %e, align 4
  %1382 = load i32, i32* %c, align 4
  %1383 = load i32, i32* %d, align 4
  %or2256 = or i32 %1382, %1383
  %and2257 = and i32 %1381, %or2256
  %or2258 = or i32 %and2255, %and2257
  %add2259 = add i32 %xor2254, %or2258
  store i32 %add2259, i32* %t0, align 4
  %1384 = load i32, i32* %b, align 4
  %1385 = load i32, i32* %g, align 4
  %shl2260 = shl i32 %1385, 26
  %1386 = load i32, i32* %g, align 4
  %shr2261 = lshr i32 %1386, 6
  %or2262 = or i32 %shl2260, %shr2261
  %1387 = load i32, i32* %g, align 4
  %shl2263 = shl i32 %1387, 21
  %1388 = load i32, i32* %g, align 4
  %shr2264 = lshr i32 %1388, 11
  %or2265 = or i32 %shl2263, %shr2264
  %xor2266 = xor i32 %or2262, %or2265
  %1389 = load i32, i32* %g, align 4
  %shl2267 = shl i32 %1389, 7
  %1390 = load i32, i32* %g, align 4
  %shr2268 = lshr i32 %1390, 25
  %or2269 = or i32 %shl2267, %shr2268
  %xor2270 = xor i32 %xor2266, %or2269
  %add2271 = add i32 %1384, %xor2270
  %1391 = load i32, i32* %a, align 4
  %1392 = load i32, i32* %g, align 4
  %1393 = load i32, i32* %h, align 4
  %1394 = load i32, i32* %a, align 4
  %xor2272 = xor i32 %1393, %1394
  %and2273 = and i32 %1392, %xor2272
  %xor2274 = xor i32 %1391, %and2273
  %add2275 = add i32 %add2271, %xor2274
  %1395 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 38), align 4
  %add2276 = add i32 %add2275, %1395
  %arrayidx2277 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1396 = load i32, i32* %arrayidx2277, align 4
  %shl2278 = shl i32 %1396, 15
  %arrayidx2279 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1397 = load i32, i32* %arrayidx2279, align 4
  %shr2280 = lshr i32 %1397, 17
  %or2281 = or i32 %shl2278, %shr2280
  %arrayidx2282 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1398 = load i32, i32* %arrayidx2282, align 4
  %shl2283 = shl i32 %1398, 13
  %arrayidx2284 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1399 = load i32, i32* %arrayidx2284, align 4
  %shr2285 = lshr i32 %1399, 19
  %or2286 = or i32 %shl2283, %shr2285
  %xor2287 = xor i32 %or2281, %or2286
  %arrayidx2288 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1400 = load i32, i32* %arrayidx2288, align 4
  %shr2289 = lshr i32 %1400, 10
  %xor2290 = xor i32 %xor2287, %shr2289
  %arrayidx2291 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1401 = load i32, i32* %arrayidx2291, align 4
  %add2292 = add i32 %xor2290, %1401
  %arrayidx2293 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1402 = load i32, i32* %arrayidx2293, align 4
  %shl2294 = shl i32 %1402, 25
  %arrayidx2295 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1403 = load i32, i32* %arrayidx2295, align 4
  %shr2296 = lshr i32 %1403, 7
  %or2297 = or i32 %shl2294, %shr2296
  %arrayidx2298 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1404 = load i32, i32* %arrayidx2298, align 4
  %shl2299 = shl i32 %1404, 14
  %arrayidx2300 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1405 = load i32, i32* %arrayidx2300, align 4
  %shr2301 = lshr i32 %1405, 18
  %or2302 = or i32 %shl2299, %shr2301
  %xor2303 = xor i32 %or2297, %or2302
  %arrayidx2304 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1406 = load i32, i32* %arrayidx2304, align 4
  %shr2305 = lshr i32 %1406, 3
  %xor2306 = xor i32 %xor2303, %shr2305
  %add2307 = add i32 %add2292, %xor2306
  %arrayidx2308 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1407 = load i32, i32* %arrayidx2308, align 4
  %add2309 = add i32 %add2307, %1407
  store i32 %add2309, i32* %tm, align 4
  %1408 = load i32, i32* %tm, align 4
  %arrayidx2310 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %1408, i32* %arrayidx2310, align 4
  %add2311 = add i32 %add2276, %1408
  store i32 %add2311, i32* %t1, align 4
  %1409 = load i32, i32* %t1, align 4
  %1410 = load i32, i32* %f, align 4
  %add2312 = add i32 %1410, %1409
  store i32 %add2312, i32* %f, align 4
  %1411 = load i32, i32* %t0, align 4
  %1412 = load i32, i32* %t1, align 4
  %add2313 = add i32 %1411, %1412
  store i32 %add2313, i32* %b, align 4
  br label %do.end.2314

do.end.2314:                                      ; preds = %do.body.2243
  br label %do.body.2315

do.body.2315:                                     ; preds = %do.end.2314
  %1413 = load i32, i32* %b, align 4
  %shl2316 = shl i32 %1413, 30
  %1414 = load i32, i32* %b, align 4
  %shr2317 = lshr i32 %1414, 2
  %or2318 = or i32 %shl2316, %shr2317
  %1415 = load i32, i32* %b, align 4
  %shl2319 = shl i32 %1415, 19
  %1416 = load i32, i32* %b, align 4
  %shr2320 = lshr i32 %1416, 13
  %or2321 = or i32 %shl2319, %shr2320
  %xor2322 = xor i32 %or2318, %or2321
  %1417 = load i32, i32* %b, align 4
  %shl2323 = shl i32 %1417, 10
  %1418 = load i32, i32* %b, align 4
  %shr2324 = lshr i32 %1418, 22
  %or2325 = or i32 %shl2323, %shr2324
  %xor2326 = xor i32 %xor2322, %or2325
  %1419 = load i32, i32* %b, align 4
  %1420 = load i32, i32* %c, align 4
  %and2327 = and i32 %1419, %1420
  %1421 = load i32, i32* %d, align 4
  %1422 = load i32, i32* %b, align 4
  %1423 = load i32, i32* %c, align 4
  %or2328 = or i32 %1422, %1423
  %and2329 = and i32 %1421, %or2328
  %or2330 = or i32 %and2327, %and2329
  %add2331 = add i32 %xor2326, %or2330
  store i32 %add2331, i32* %t0, align 4
  %1424 = load i32, i32* %a, align 4
  %1425 = load i32, i32* %f, align 4
  %shl2332 = shl i32 %1425, 26
  %1426 = load i32, i32* %f, align 4
  %shr2333 = lshr i32 %1426, 6
  %or2334 = or i32 %shl2332, %shr2333
  %1427 = load i32, i32* %f, align 4
  %shl2335 = shl i32 %1427, 21
  %1428 = load i32, i32* %f, align 4
  %shr2336 = lshr i32 %1428, 11
  %or2337 = or i32 %shl2335, %shr2336
  %xor2338 = xor i32 %or2334, %or2337
  %1429 = load i32, i32* %f, align 4
  %shl2339 = shl i32 %1429, 7
  %1430 = load i32, i32* %f, align 4
  %shr2340 = lshr i32 %1430, 25
  %or2341 = or i32 %shl2339, %shr2340
  %xor2342 = xor i32 %xor2338, %or2341
  %add2343 = add i32 %1424, %xor2342
  %1431 = load i32, i32* %h, align 4
  %1432 = load i32, i32* %f, align 4
  %1433 = load i32, i32* %g, align 4
  %1434 = load i32, i32* %h, align 4
  %xor2344 = xor i32 %1433, %1434
  %and2345 = and i32 %1432, %xor2344
  %xor2346 = xor i32 %1431, %and2345
  %add2347 = add i32 %add2343, %xor2346
  %1435 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 39), align 4
  %add2348 = add i32 %add2347, %1435
  %arrayidx2349 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1436 = load i32, i32* %arrayidx2349, align 4
  %shl2350 = shl i32 %1436, 15
  %arrayidx2351 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1437 = load i32, i32* %arrayidx2351, align 4
  %shr2352 = lshr i32 %1437, 17
  %or2353 = or i32 %shl2350, %shr2352
  %arrayidx2354 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1438 = load i32, i32* %arrayidx2354, align 4
  %shl2355 = shl i32 %1438, 13
  %arrayidx2356 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1439 = load i32, i32* %arrayidx2356, align 4
  %shr2357 = lshr i32 %1439, 19
  %or2358 = or i32 %shl2355, %shr2357
  %xor2359 = xor i32 %or2353, %or2358
  %arrayidx2360 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1440 = load i32, i32* %arrayidx2360, align 4
  %shr2361 = lshr i32 %1440, 10
  %xor2362 = xor i32 %xor2359, %shr2361
  %arrayidx2363 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1441 = load i32, i32* %arrayidx2363, align 4
  %add2364 = add i32 %xor2362, %1441
  %arrayidx2365 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1442 = load i32, i32* %arrayidx2365, align 4
  %shl2366 = shl i32 %1442, 25
  %arrayidx2367 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1443 = load i32, i32* %arrayidx2367, align 4
  %shr2368 = lshr i32 %1443, 7
  %or2369 = or i32 %shl2366, %shr2368
  %arrayidx2370 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1444 = load i32, i32* %arrayidx2370, align 4
  %shl2371 = shl i32 %1444, 14
  %arrayidx2372 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1445 = load i32, i32* %arrayidx2372, align 4
  %shr2373 = lshr i32 %1445, 18
  %or2374 = or i32 %shl2371, %shr2373
  %xor2375 = xor i32 %or2369, %or2374
  %arrayidx2376 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1446 = load i32, i32* %arrayidx2376, align 4
  %shr2377 = lshr i32 %1446, 3
  %xor2378 = xor i32 %xor2375, %shr2377
  %add2379 = add i32 %add2364, %xor2378
  %arrayidx2380 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1447 = load i32, i32* %arrayidx2380, align 4
  %add2381 = add i32 %add2379, %1447
  store i32 %add2381, i32* %tm, align 4
  %1448 = load i32, i32* %tm, align 4
  %arrayidx2382 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %1448, i32* %arrayidx2382, align 4
  %add2383 = add i32 %add2348, %1448
  store i32 %add2383, i32* %t1, align 4
  %1449 = load i32, i32* %t1, align 4
  %1450 = load i32, i32* %e, align 4
  %add2384 = add i32 %1450, %1449
  store i32 %add2384, i32* %e, align 4
  %1451 = load i32, i32* %t0, align 4
  %1452 = load i32, i32* %t1, align 4
  %add2385 = add i32 %1451, %1452
  store i32 %add2385, i32* %a, align 4
  br label %do.end.2386

do.end.2386:                                      ; preds = %do.body.2315
  br label %do.body.2387

do.body.2387:                                     ; preds = %do.end.2386
  %1453 = load i32, i32* %a, align 4
  %shl2388 = shl i32 %1453, 30
  %1454 = load i32, i32* %a, align 4
  %shr2389 = lshr i32 %1454, 2
  %or2390 = or i32 %shl2388, %shr2389
  %1455 = load i32, i32* %a, align 4
  %shl2391 = shl i32 %1455, 19
  %1456 = load i32, i32* %a, align 4
  %shr2392 = lshr i32 %1456, 13
  %or2393 = or i32 %shl2391, %shr2392
  %xor2394 = xor i32 %or2390, %or2393
  %1457 = load i32, i32* %a, align 4
  %shl2395 = shl i32 %1457, 10
  %1458 = load i32, i32* %a, align 4
  %shr2396 = lshr i32 %1458, 22
  %or2397 = or i32 %shl2395, %shr2396
  %xor2398 = xor i32 %xor2394, %or2397
  %1459 = load i32, i32* %a, align 4
  %1460 = load i32, i32* %b, align 4
  %and2399 = and i32 %1459, %1460
  %1461 = load i32, i32* %c, align 4
  %1462 = load i32, i32* %a, align 4
  %1463 = load i32, i32* %b, align 4
  %or2400 = or i32 %1462, %1463
  %and2401 = and i32 %1461, %or2400
  %or2402 = or i32 %and2399, %and2401
  %add2403 = add i32 %xor2398, %or2402
  store i32 %add2403, i32* %t0, align 4
  %1464 = load i32, i32* %h, align 4
  %1465 = load i32, i32* %e, align 4
  %shl2404 = shl i32 %1465, 26
  %1466 = load i32, i32* %e, align 4
  %shr2405 = lshr i32 %1466, 6
  %or2406 = or i32 %shl2404, %shr2405
  %1467 = load i32, i32* %e, align 4
  %shl2407 = shl i32 %1467, 21
  %1468 = load i32, i32* %e, align 4
  %shr2408 = lshr i32 %1468, 11
  %or2409 = or i32 %shl2407, %shr2408
  %xor2410 = xor i32 %or2406, %or2409
  %1469 = load i32, i32* %e, align 4
  %shl2411 = shl i32 %1469, 7
  %1470 = load i32, i32* %e, align 4
  %shr2412 = lshr i32 %1470, 25
  %or2413 = or i32 %shl2411, %shr2412
  %xor2414 = xor i32 %xor2410, %or2413
  %add2415 = add i32 %1464, %xor2414
  %1471 = load i32, i32* %g, align 4
  %1472 = load i32, i32* %e, align 4
  %1473 = load i32, i32* %f, align 4
  %1474 = load i32, i32* %g, align 4
  %xor2416 = xor i32 %1473, %1474
  %and2417 = and i32 %1472, %xor2416
  %xor2418 = xor i32 %1471, %and2417
  %add2419 = add i32 %add2415, %xor2418
  %1475 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 40), align 4
  %add2420 = add i32 %add2419, %1475
  %arrayidx2421 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1476 = load i32, i32* %arrayidx2421, align 4
  %shl2422 = shl i32 %1476, 15
  %arrayidx2423 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1477 = load i32, i32* %arrayidx2423, align 4
  %shr2424 = lshr i32 %1477, 17
  %or2425 = or i32 %shl2422, %shr2424
  %arrayidx2426 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1478 = load i32, i32* %arrayidx2426, align 4
  %shl2427 = shl i32 %1478, 13
  %arrayidx2428 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1479 = load i32, i32* %arrayidx2428, align 4
  %shr2429 = lshr i32 %1479, 19
  %or2430 = or i32 %shl2427, %shr2429
  %xor2431 = xor i32 %or2425, %or2430
  %arrayidx2432 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1480 = load i32, i32* %arrayidx2432, align 4
  %shr2433 = lshr i32 %1480, 10
  %xor2434 = xor i32 %xor2431, %shr2433
  %arrayidx2435 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1481 = load i32, i32* %arrayidx2435, align 4
  %add2436 = add i32 %xor2434, %1481
  %arrayidx2437 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1482 = load i32, i32* %arrayidx2437, align 4
  %shl2438 = shl i32 %1482, 25
  %arrayidx2439 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1483 = load i32, i32* %arrayidx2439, align 4
  %shr2440 = lshr i32 %1483, 7
  %or2441 = or i32 %shl2438, %shr2440
  %arrayidx2442 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1484 = load i32, i32* %arrayidx2442, align 4
  %shl2443 = shl i32 %1484, 14
  %arrayidx2444 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1485 = load i32, i32* %arrayidx2444, align 4
  %shr2445 = lshr i32 %1485, 18
  %or2446 = or i32 %shl2443, %shr2445
  %xor2447 = xor i32 %or2441, %or2446
  %arrayidx2448 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1486 = load i32, i32* %arrayidx2448, align 4
  %shr2449 = lshr i32 %1486, 3
  %xor2450 = xor i32 %xor2447, %shr2449
  %add2451 = add i32 %add2436, %xor2450
  %arrayidx2452 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1487 = load i32, i32* %arrayidx2452, align 4
  %add2453 = add i32 %add2451, %1487
  store i32 %add2453, i32* %tm, align 4
  %1488 = load i32, i32* %tm, align 4
  %arrayidx2454 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %1488, i32* %arrayidx2454, align 4
  %add2455 = add i32 %add2420, %1488
  store i32 %add2455, i32* %t1, align 4
  %1489 = load i32, i32* %t1, align 4
  %1490 = load i32, i32* %d, align 4
  %add2456 = add i32 %1490, %1489
  store i32 %add2456, i32* %d, align 4
  %1491 = load i32, i32* %t0, align 4
  %1492 = load i32, i32* %t1, align 4
  %add2457 = add i32 %1491, %1492
  store i32 %add2457, i32* %h, align 4
  br label %do.end.2458

do.end.2458:                                      ; preds = %do.body.2387
  br label %do.body.2459

do.body.2459:                                     ; preds = %do.end.2458
  %1493 = load i32, i32* %h, align 4
  %shl2460 = shl i32 %1493, 30
  %1494 = load i32, i32* %h, align 4
  %shr2461 = lshr i32 %1494, 2
  %or2462 = or i32 %shl2460, %shr2461
  %1495 = load i32, i32* %h, align 4
  %shl2463 = shl i32 %1495, 19
  %1496 = load i32, i32* %h, align 4
  %shr2464 = lshr i32 %1496, 13
  %or2465 = or i32 %shl2463, %shr2464
  %xor2466 = xor i32 %or2462, %or2465
  %1497 = load i32, i32* %h, align 4
  %shl2467 = shl i32 %1497, 10
  %1498 = load i32, i32* %h, align 4
  %shr2468 = lshr i32 %1498, 22
  %or2469 = or i32 %shl2467, %shr2468
  %xor2470 = xor i32 %xor2466, %or2469
  %1499 = load i32, i32* %h, align 4
  %1500 = load i32, i32* %a, align 4
  %and2471 = and i32 %1499, %1500
  %1501 = load i32, i32* %b, align 4
  %1502 = load i32, i32* %h, align 4
  %1503 = load i32, i32* %a, align 4
  %or2472 = or i32 %1502, %1503
  %and2473 = and i32 %1501, %or2472
  %or2474 = or i32 %and2471, %and2473
  %add2475 = add i32 %xor2470, %or2474
  store i32 %add2475, i32* %t0, align 4
  %1504 = load i32, i32* %g, align 4
  %1505 = load i32, i32* %d, align 4
  %shl2476 = shl i32 %1505, 26
  %1506 = load i32, i32* %d, align 4
  %shr2477 = lshr i32 %1506, 6
  %or2478 = or i32 %shl2476, %shr2477
  %1507 = load i32, i32* %d, align 4
  %shl2479 = shl i32 %1507, 21
  %1508 = load i32, i32* %d, align 4
  %shr2480 = lshr i32 %1508, 11
  %or2481 = or i32 %shl2479, %shr2480
  %xor2482 = xor i32 %or2478, %or2481
  %1509 = load i32, i32* %d, align 4
  %shl2483 = shl i32 %1509, 7
  %1510 = load i32, i32* %d, align 4
  %shr2484 = lshr i32 %1510, 25
  %or2485 = or i32 %shl2483, %shr2484
  %xor2486 = xor i32 %xor2482, %or2485
  %add2487 = add i32 %1504, %xor2486
  %1511 = load i32, i32* %f, align 4
  %1512 = load i32, i32* %d, align 4
  %1513 = load i32, i32* %e, align 4
  %1514 = load i32, i32* %f, align 4
  %xor2488 = xor i32 %1513, %1514
  %and2489 = and i32 %1512, %xor2488
  %xor2490 = xor i32 %1511, %and2489
  %add2491 = add i32 %add2487, %xor2490
  %1515 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 41), align 4
  %add2492 = add i32 %add2491, %1515
  %arrayidx2493 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1516 = load i32, i32* %arrayidx2493, align 4
  %shl2494 = shl i32 %1516, 15
  %arrayidx2495 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1517 = load i32, i32* %arrayidx2495, align 4
  %shr2496 = lshr i32 %1517, 17
  %or2497 = or i32 %shl2494, %shr2496
  %arrayidx2498 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1518 = load i32, i32* %arrayidx2498, align 4
  %shl2499 = shl i32 %1518, 13
  %arrayidx2500 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1519 = load i32, i32* %arrayidx2500, align 4
  %shr2501 = lshr i32 %1519, 19
  %or2502 = or i32 %shl2499, %shr2501
  %xor2503 = xor i32 %or2497, %or2502
  %arrayidx2504 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1520 = load i32, i32* %arrayidx2504, align 4
  %shr2505 = lshr i32 %1520, 10
  %xor2506 = xor i32 %xor2503, %shr2505
  %arrayidx2507 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1521 = load i32, i32* %arrayidx2507, align 4
  %add2508 = add i32 %xor2506, %1521
  %arrayidx2509 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1522 = load i32, i32* %arrayidx2509, align 4
  %shl2510 = shl i32 %1522, 25
  %arrayidx2511 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1523 = load i32, i32* %arrayidx2511, align 4
  %shr2512 = lshr i32 %1523, 7
  %or2513 = or i32 %shl2510, %shr2512
  %arrayidx2514 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1524 = load i32, i32* %arrayidx2514, align 4
  %shl2515 = shl i32 %1524, 14
  %arrayidx2516 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1525 = load i32, i32* %arrayidx2516, align 4
  %shr2517 = lshr i32 %1525, 18
  %or2518 = or i32 %shl2515, %shr2517
  %xor2519 = xor i32 %or2513, %or2518
  %arrayidx2520 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1526 = load i32, i32* %arrayidx2520, align 4
  %shr2521 = lshr i32 %1526, 3
  %xor2522 = xor i32 %xor2519, %shr2521
  %add2523 = add i32 %add2508, %xor2522
  %arrayidx2524 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1527 = load i32, i32* %arrayidx2524, align 4
  %add2525 = add i32 %add2523, %1527
  store i32 %add2525, i32* %tm, align 4
  %1528 = load i32, i32* %tm, align 4
  %arrayidx2526 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %1528, i32* %arrayidx2526, align 4
  %add2527 = add i32 %add2492, %1528
  store i32 %add2527, i32* %t1, align 4
  %1529 = load i32, i32* %t1, align 4
  %1530 = load i32, i32* %c, align 4
  %add2528 = add i32 %1530, %1529
  store i32 %add2528, i32* %c, align 4
  %1531 = load i32, i32* %t0, align 4
  %1532 = load i32, i32* %t1, align 4
  %add2529 = add i32 %1531, %1532
  store i32 %add2529, i32* %g, align 4
  br label %do.end.2530

do.end.2530:                                      ; preds = %do.body.2459
  br label %do.body.2531

do.body.2531:                                     ; preds = %do.end.2530
  %1533 = load i32, i32* %g, align 4
  %shl2532 = shl i32 %1533, 30
  %1534 = load i32, i32* %g, align 4
  %shr2533 = lshr i32 %1534, 2
  %or2534 = or i32 %shl2532, %shr2533
  %1535 = load i32, i32* %g, align 4
  %shl2535 = shl i32 %1535, 19
  %1536 = load i32, i32* %g, align 4
  %shr2536 = lshr i32 %1536, 13
  %or2537 = or i32 %shl2535, %shr2536
  %xor2538 = xor i32 %or2534, %or2537
  %1537 = load i32, i32* %g, align 4
  %shl2539 = shl i32 %1537, 10
  %1538 = load i32, i32* %g, align 4
  %shr2540 = lshr i32 %1538, 22
  %or2541 = or i32 %shl2539, %shr2540
  %xor2542 = xor i32 %xor2538, %or2541
  %1539 = load i32, i32* %g, align 4
  %1540 = load i32, i32* %h, align 4
  %and2543 = and i32 %1539, %1540
  %1541 = load i32, i32* %a, align 4
  %1542 = load i32, i32* %g, align 4
  %1543 = load i32, i32* %h, align 4
  %or2544 = or i32 %1542, %1543
  %and2545 = and i32 %1541, %or2544
  %or2546 = or i32 %and2543, %and2545
  %add2547 = add i32 %xor2542, %or2546
  store i32 %add2547, i32* %t0, align 4
  %1544 = load i32, i32* %f, align 4
  %1545 = load i32, i32* %c, align 4
  %shl2548 = shl i32 %1545, 26
  %1546 = load i32, i32* %c, align 4
  %shr2549 = lshr i32 %1546, 6
  %or2550 = or i32 %shl2548, %shr2549
  %1547 = load i32, i32* %c, align 4
  %shl2551 = shl i32 %1547, 21
  %1548 = load i32, i32* %c, align 4
  %shr2552 = lshr i32 %1548, 11
  %or2553 = or i32 %shl2551, %shr2552
  %xor2554 = xor i32 %or2550, %or2553
  %1549 = load i32, i32* %c, align 4
  %shl2555 = shl i32 %1549, 7
  %1550 = load i32, i32* %c, align 4
  %shr2556 = lshr i32 %1550, 25
  %or2557 = or i32 %shl2555, %shr2556
  %xor2558 = xor i32 %xor2554, %or2557
  %add2559 = add i32 %1544, %xor2558
  %1551 = load i32, i32* %e, align 4
  %1552 = load i32, i32* %c, align 4
  %1553 = load i32, i32* %d, align 4
  %1554 = load i32, i32* %e, align 4
  %xor2560 = xor i32 %1553, %1554
  %and2561 = and i32 %1552, %xor2560
  %xor2562 = xor i32 %1551, %and2561
  %add2563 = add i32 %add2559, %xor2562
  %1555 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 42), align 4
  %add2564 = add i32 %add2563, %1555
  %arrayidx2565 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1556 = load i32, i32* %arrayidx2565, align 4
  %shl2566 = shl i32 %1556, 15
  %arrayidx2567 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1557 = load i32, i32* %arrayidx2567, align 4
  %shr2568 = lshr i32 %1557, 17
  %or2569 = or i32 %shl2566, %shr2568
  %arrayidx2570 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1558 = load i32, i32* %arrayidx2570, align 4
  %shl2571 = shl i32 %1558, 13
  %arrayidx2572 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1559 = load i32, i32* %arrayidx2572, align 4
  %shr2573 = lshr i32 %1559, 19
  %or2574 = or i32 %shl2571, %shr2573
  %xor2575 = xor i32 %or2569, %or2574
  %arrayidx2576 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1560 = load i32, i32* %arrayidx2576, align 4
  %shr2577 = lshr i32 %1560, 10
  %xor2578 = xor i32 %xor2575, %shr2577
  %arrayidx2579 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1561 = load i32, i32* %arrayidx2579, align 4
  %add2580 = add i32 %xor2578, %1561
  %arrayidx2581 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1562 = load i32, i32* %arrayidx2581, align 4
  %shl2582 = shl i32 %1562, 25
  %arrayidx2583 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1563 = load i32, i32* %arrayidx2583, align 4
  %shr2584 = lshr i32 %1563, 7
  %or2585 = or i32 %shl2582, %shr2584
  %arrayidx2586 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1564 = load i32, i32* %arrayidx2586, align 4
  %shl2587 = shl i32 %1564, 14
  %arrayidx2588 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1565 = load i32, i32* %arrayidx2588, align 4
  %shr2589 = lshr i32 %1565, 18
  %or2590 = or i32 %shl2587, %shr2589
  %xor2591 = xor i32 %or2585, %or2590
  %arrayidx2592 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1566 = load i32, i32* %arrayidx2592, align 4
  %shr2593 = lshr i32 %1566, 3
  %xor2594 = xor i32 %xor2591, %shr2593
  %add2595 = add i32 %add2580, %xor2594
  %arrayidx2596 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1567 = load i32, i32* %arrayidx2596, align 4
  %add2597 = add i32 %add2595, %1567
  store i32 %add2597, i32* %tm, align 4
  %1568 = load i32, i32* %tm, align 4
  %arrayidx2598 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %1568, i32* %arrayidx2598, align 4
  %add2599 = add i32 %add2564, %1568
  store i32 %add2599, i32* %t1, align 4
  %1569 = load i32, i32* %t1, align 4
  %1570 = load i32, i32* %b, align 4
  %add2600 = add i32 %1570, %1569
  store i32 %add2600, i32* %b, align 4
  %1571 = load i32, i32* %t0, align 4
  %1572 = load i32, i32* %t1, align 4
  %add2601 = add i32 %1571, %1572
  store i32 %add2601, i32* %f, align 4
  br label %do.end.2602

do.end.2602:                                      ; preds = %do.body.2531
  br label %do.body.2603

do.body.2603:                                     ; preds = %do.end.2602
  %1573 = load i32, i32* %f, align 4
  %shl2604 = shl i32 %1573, 30
  %1574 = load i32, i32* %f, align 4
  %shr2605 = lshr i32 %1574, 2
  %or2606 = or i32 %shl2604, %shr2605
  %1575 = load i32, i32* %f, align 4
  %shl2607 = shl i32 %1575, 19
  %1576 = load i32, i32* %f, align 4
  %shr2608 = lshr i32 %1576, 13
  %or2609 = or i32 %shl2607, %shr2608
  %xor2610 = xor i32 %or2606, %or2609
  %1577 = load i32, i32* %f, align 4
  %shl2611 = shl i32 %1577, 10
  %1578 = load i32, i32* %f, align 4
  %shr2612 = lshr i32 %1578, 22
  %or2613 = or i32 %shl2611, %shr2612
  %xor2614 = xor i32 %xor2610, %or2613
  %1579 = load i32, i32* %f, align 4
  %1580 = load i32, i32* %g, align 4
  %and2615 = and i32 %1579, %1580
  %1581 = load i32, i32* %h, align 4
  %1582 = load i32, i32* %f, align 4
  %1583 = load i32, i32* %g, align 4
  %or2616 = or i32 %1582, %1583
  %and2617 = and i32 %1581, %or2616
  %or2618 = or i32 %and2615, %and2617
  %add2619 = add i32 %xor2614, %or2618
  store i32 %add2619, i32* %t0, align 4
  %1584 = load i32, i32* %e, align 4
  %1585 = load i32, i32* %b, align 4
  %shl2620 = shl i32 %1585, 26
  %1586 = load i32, i32* %b, align 4
  %shr2621 = lshr i32 %1586, 6
  %or2622 = or i32 %shl2620, %shr2621
  %1587 = load i32, i32* %b, align 4
  %shl2623 = shl i32 %1587, 21
  %1588 = load i32, i32* %b, align 4
  %shr2624 = lshr i32 %1588, 11
  %or2625 = or i32 %shl2623, %shr2624
  %xor2626 = xor i32 %or2622, %or2625
  %1589 = load i32, i32* %b, align 4
  %shl2627 = shl i32 %1589, 7
  %1590 = load i32, i32* %b, align 4
  %shr2628 = lshr i32 %1590, 25
  %or2629 = or i32 %shl2627, %shr2628
  %xor2630 = xor i32 %xor2626, %or2629
  %add2631 = add i32 %1584, %xor2630
  %1591 = load i32, i32* %d, align 4
  %1592 = load i32, i32* %b, align 4
  %1593 = load i32, i32* %c, align 4
  %1594 = load i32, i32* %d, align 4
  %xor2632 = xor i32 %1593, %1594
  %and2633 = and i32 %1592, %xor2632
  %xor2634 = xor i32 %1591, %and2633
  %add2635 = add i32 %add2631, %xor2634
  %1595 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 43), align 4
  %add2636 = add i32 %add2635, %1595
  %arrayidx2637 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1596 = load i32, i32* %arrayidx2637, align 4
  %shl2638 = shl i32 %1596, 15
  %arrayidx2639 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1597 = load i32, i32* %arrayidx2639, align 4
  %shr2640 = lshr i32 %1597, 17
  %or2641 = or i32 %shl2638, %shr2640
  %arrayidx2642 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1598 = load i32, i32* %arrayidx2642, align 4
  %shl2643 = shl i32 %1598, 13
  %arrayidx2644 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1599 = load i32, i32* %arrayidx2644, align 4
  %shr2645 = lshr i32 %1599, 19
  %or2646 = or i32 %shl2643, %shr2645
  %xor2647 = xor i32 %or2641, %or2646
  %arrayidx2648 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1600 = load i32, i32* %arrayidx2648, align 4
  %shr2649 = lshr i32 %1600, 10
  %xor2650 = xor i32 %xor2647, %shr2649
  %arrayidx2651 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1601 = load i32, i32* %arrayidx2651, align 4
  %add2652 = add i32 %xor2650, %1601
  %arrayidx2653 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1602 = load i32, i32* %arrayidx2653, align 4
  %shl2654 = shl i32 %1602, 25
  %arrayidx2655 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1603 = load i32, i32* %arrayidx2655, align 4
  %shr2656 = lshr i32 %1603, 7
  %or2657 = or i32 %shl2654, %shr2656
  %arrayidx2658 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1604 = load i32, i32* %arrayidx2658, align 4
  %shl2659 = shl i32 %1604, 14
  %arrayidx2660 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1605 = load i32, i32* %arrayidx2660, align 4
  %shr2661 = lshr i32 %1605, 18
  %or2662 = or i32 %shl2659, %shr2661
  %xor2663 = xor i32 %or2657, %or2662
  %arrayidx2664 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1606 = load i32, i32* %arrayidx2664, align 4
  %shr2665 = lshr i32 %1606, 3
  %xor2666 = xor i32 %xor2663, %shr2665
  %add2667 = add i32 %add2652, %xor2666
  %arrayidx2668 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1607 = load i32, i32* %arrayidx2668, align 4
  %add2669 = add i32 %add2667, %1607
  store i32 %add2669, i32* %tm, align 4
  %1608 = load i32, i32* %tm, align 4
  %arrayidx2670 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %1608, i32* %arrayidx2670, align 4
  %add2671 = add i32 %add2636, %1608
  store i32 %add2671, i32* %t1, align 4
  %1609 = load i32, i32* %t1, align 4
  %1610 = load i32, i32* %a, align 4
  %add2672 = add i32 %1610, %1609
  store i32 %add2672, i32* %a, align 4
  %1611 = load i32, i32* %t0, align 4
  %1612 = load i32, i32* %t1, align 4
  %add2673 = add i32 %1611, %1612
  store i32 %add2673, i32* %e, align 4
  br label %do.end.2674

do.end.2674:                                      ; preds = %do.body.2603
  br label %do.body.2675

do.body.2675:                                     ; preds = %do.end.2674
  %1613 = load i32, i32* %e, align 4
  %shl2676 = shl i32 %1613, 30
  %1614 = load i32, i32* %e, align 4
  %shr2677 = lshr i32 %1614, 2
  %or2678 = or i32 %shl2676, %shr2677
  %1615 = load i32, i32* %e, align 4
  %shl2679 = shl i32 %1615, 19
  %1616 = load i32, i32* %e, align 4
  %shr2680 = lshr i32 %1616, 13
  %or2681 = or i32 %shl2679, %shr2680
  %xor2682 = xor i32 %or2678, %or2681
  %1617 = load i32, i32* %e, align 4
  %shl2683 = shl i32 %1617, 10
  %1618 = load i32, i32* %e, align 4
  %shr2684 = lshr i32 %1618, 22
  %or2685 = or i32 %shl2683, %shr2684
  %xor2686 = xor i32 %xor2682, %or2685
  %1619 = load i32, i32* %e, align 4
  %1620 = load i32, i32* %f, align 4
  %and2687 = and i32 %1619, %1620
  %1621 = load i32, i32* %g, align 4
  %1622 = load i32, i32* %e, align 4
  %1623 = load i32, i32* %f, align 4
  %or2688 = or i32 %1622, %1623
  %and2689 = and i32 %1621, %or2688
  %or2690 = or i32 %and2687, %and2689
  %add2691 = add i32 %xor2686, %or2690
  store i32 %add2691, i32* %t0, align 4
  %1624 = load i32, i32* %d, align 4
  %1625 = load i32, i32* %a, align 4
  %shl2692 = shl i32 %1625, 26
  %1626 = load i32, i32* %a, align 4
  %shr2693 = lshr i32 %1626, 6
  %or2694 = or i32 %shl2692, %shr2693
  %1627 = load i32, i32* %a, align 4
  %shl2695 = shl i32 %1627, 21
  %1628 = load i32, i32* %a, align 4
  %shr2696 = lshr i32 %1628, 11
  %or2697 = or i32 %shl2695, %shr2696
  %xor2698 = xor i32 %or2694, %or2697
  %1629 = load i32, i32* %a, align 4
  %shl2699 = shl i32 %1629, 7
  %1630 = load i32, i32* %a, align 4
  %shr2700 = lshr i32 %1630, 25
  %or2701 = or i32 %shl2699, %shr2700
  %xor2702 = xor i32 %xor2698, %or2701
  %add2703 = add i32 %1624, %xor2702
  %1631 = load i32, i32* %c, align 4
  %1632 = load i32, i32* %a, align 4
  %1633 = load i32, i32* %b, align 4
  %1634 = load i32, i32* %c, align 4
  %xor2704 = xor i32 %1633, %1634
  %and2705 = and i32 %1632, %xor2704
  %xor2706 = xor i32 %1631, %and2705
  %add2707 = add i32 %add2703, %xor2706
  %1635 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 44), align 4
  %add2708 = add i32 %add2707, %1635
  %arrayidx2709 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1636 = load i32, i32* %arrayidx2709, align 4
  %shl2710 = shl i32 %1636, 15
  %arrayidx2711 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1637 = load i32, i32* %arrayidx2711, align 4
  %shr2712 = lshr i32 %1637, 17
  %or2713 = or i32 %shl2710, %shr2712
  %arrayidx2714 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1638 = load i32, i32* %arrayidx2714, align 4
  %shl2715 = shl i32 %1638, 13
  %arrayidx2716 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1639 = load i32, i32* %arrayidx2716, align 4
  %shr2717 = lshr i32 %1639, 19
  %or2718 = or i32 %shl2715, %shr2717
  %xor2719 = xor i32 %or2713, %or2718
  %arrayidx2720 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1640 = load i32, i32* %arrayidx2720, align 4
  %shr2721 = lshr i32 %1640, 10
  %xor2722 = xor i32 %xor2719, %shr2721
  %arrayidx2723 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1641 = load i32, i32* %arrayidx2723, align 4
  %add2724 = add i32 %xor2722, %1641
  %arrayidx2725 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1642 = load i32, i32* %arrayidx2725, align 4
  %shl2726 = shl i32 %1642, 25
  %arrayidx2727 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1643 = load i32, i32* %arrayidx2727, align 4
  %shr2728 = lshr i32 %1643, 7
  %or2729 = or i32 %shl2726, %shr2728
  %arrayidx2730 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1644 = load i32, i32* %arrayidx2730, align 4
  %shl2731 = shl i32 %1644, 14
  %arrayidx2732 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1645 = load i32, i32* %arrayidx2732, align 4
  %shr2733 = lshr i32 %1645, 18
  %or2734 = or i32 %shl2731, %shr2733
  %xor2735 = xor i32 %or2729, %or2734
  %arrayidx2736 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1646 = load i32, i32* %arrayidx2736, align 4
  %shr2737 = lshr i32 %1646, 3
  %xor2738 = xor i32 %xor2735, %shr2737
  %add2739 = add i32 %add2724, %xor2738
  %arrayidx2740 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1647 = load i32, i32* %arrayidx2740, align 4
  %add2741 = add i32 %add2739, %1647
  store i32 %add2741, i32* %tm, align 4
  %1648 = load i32, i32* %tm, align 4
  %arrayidx2742 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %1648, i32* %arrayidx2742, align 4
  %add2743 = add i32 %add2708, %1648
  store i32 %add2743, i32* %t1, align 4
  %1649 = load i32, i32* %t1, align 4
  %1650 = load i32, i32* %h, align 4
  %add2744 = add i32 %1650, %1649
  store i32 %add2744, i32* %h, align 4
  %1651 = load i32, i32* %t0, align 4
  %1652 = load i32, i32* %t1, align 4
  %add2745 = add i32 %1651, %1652
  store i32 %add2745, i32* %d, align 4
  br label %do.end.2746

do.end.2746:                                      ; preds = %do.body.2675
  br label %do.body.2747

do.body.2747:                                     ; preds = %do.end.2746
  %1653 = load i32, i32* %d, align 4
  %shl2748 = shl i32 %1653, 30
  %1654 = load i32, i32* %d, align 4
  %shr2749 = lshr i32 %1654, 2
  %or2750 = or i32 %shl2748, %shr2749
  %1655 = load i32, i32* %d, align 4
  %shl2751 = shl i32 %1655, 19
  %1656 = load i32, i32* %d, align 4
  %shr2752 = lshr i32 %1656, 13
  %or2753 = or i32 %shl2751, %shr2752
  %xor2754 = xor i32 %or2750, %or2753
  %1657 = load i32, i32* %d, align 4
  %shl2755 = shl i32 %1657, 10
  %1658 = load i32, i32* %d, align 4
  %shr2756 = lshr i32 %1658, 22
  %or2757 = or i32 %shl2755, %shr2756
  %xor2758 = xor i32 %xor2754, %or2757
  %1659 = load i32, i32* %d, align 4
  %1660 = load i32, i32* %e, align 4
  %and2759 = and i32 %1659, %1660
  %1661 = load i32, i32* %f, align 4
  %1662 = load i32, i32* %d, align 4
  %1663 = load i32, i32* %e, align 4
  %or2760 = or i32 %1662, %1663
  %and2761 = and i32 %1661, %or2760
  %or2762 = or i32 %and2759, %and2761
  %add2763 = add i32 %xor2758, %or2762
  store i32 %add2763, i32* %t0, align 4
  %1664 = load i32, i32* %c, align 4
  %1665 = load i32, i32* %h, align 4
  %shl2764 = shl i32 %1665, 26
  %1666 = load i32, i32* %h, align 4
  %shr2765 = lshr i32 %1666, 6
  %or2766 = or i32 %shl2764, %shr2765
  %1667 = load i32, i32* %h, align 4
  %shl2767 = shl i32 %1667, 21
  %1668 = load i32, i32* %h, align 4
  %shr2768 = lshr i32 %1668, 11
  %or2769 = or i32 %shl2767, %shr2768
  %xor2770 = xor i32 %or2766, %or2769
  %1669 = load i32, i32* %h, align 4
  %shl2771 = shl i32 %1669, 7
  %1670 = load i32, i32* %h, align 4
  %shr2772 = lshr i32 %1670, 25
  %or2773 = or i32 %shl2771, %shr2772
  %xor2774 = xor i32 %xor2770, %or2773
  %add2775 = add i32 %1664, %xor2774
  %1671 = load i32, i32* %b, align 4
  %1672 = load i32, i32* %h, align 4
  %1673 = load i32, i32* %a, align 4
  %1674 = load i32, i32* %b, align 4
  %xor2776 = xor i32 %1673, %1674
  %and2777 = and i32 %1672, %xor2776
  %xor2778 = xor i32 %1671, %and2777
  %add2779 = add i32 %add2775, %xor2778
  %1675 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 45), align 4
  %add2780 = add i32 %add2779, %1675
  %arrayidx2781 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1676 = load i32, i32* %arrayidx2781, align 4
  %shl2782 = shl i32 %1676, 15
  %arrayidx2783 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1677 = load i32, i32* %arrayidx2783, align 4
  %shr2784 = lshr i32 %1677, 17
  %or2785 = or i32 %shl2782, %shr2784
  %arrayidx2786 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1678 = load i32, i32* %arrayidx2786, align 4
  %shl2787 = shl i32 %1678, 13
  %arrayidx2788 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1679 = load i32, i32* %arrayidx2788, align 4
  %shr2789 = lshr i32 %1679, 19
  %or2790 = or i32 %shl2787, %shr2789
  %xor2791 = xor i32 %or2785, %or2790
  %arrayidx2792 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1680 = load i32, i32* %arrayidx2792, align 4
  %shr2793 = lshr i32 %1680, 10
  %xor2794 = xor i32 %xor2791, %shr2793
  %arrayidx2795 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1681 = load i32, i32* %arrayidx2795, align 4
  %add2796 = add i32 %xor2794, %1681
  %arrayidx2797 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1682 = load i32, i32* %arrayidx2797, align 4
  %shl2798 = shl i32 %1682, 25
  %arrayidx2799 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1683 = load i32, i32* %arrayidx2799, align 4
  %shr2800 = lshr i32 %1683, 7
  %or2801 = or i32 %shl2798, %shr2800
  %arrayidx2802 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1684 = load i32, i32* %arrayidx2802, align 4
  %shl2803 = shl i32 %1684, 14
  %arrayidx2804 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1685 = load i32, i32* %arrayidx2804, align 4
  %shr2805 = lshr i32 %1685, 18
  %or2806 = or i32 %shl2803, %shr2805
  %xor2807 = xor i32 %or2801, %or2806
  %arrayidx2808 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1686 = load i32, i32* %arrayidx2808, align 4
  %shr2809 = lshr i32 %1686, 3
  %xor2810 = xor i32 %xor2807, %shr2809
  %add2811 = add i32 %add2796, %xor2810
  %arrayidx2812 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1687 = load i32, i32* %arrayidx2812, align 4
  %add2813 = add i32 %add2811, %1687
  store i32 %add2813, i32* %tm, align 4
  %1688 = load i32, i32* %tm, align 4
  %arrayidx2814 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %1688, i32* %arrayidx2814, align 4
  %add2815 = add i32 %add2780, %1688
  store i32 %add2815, i32* %t1, align 4
  %1689 = load i32, i32* %t1, align 4
  %1690 = load i32, i32* %g, align 4
  %add2816 = add i32 %1690, %1689
  store i32 %add2816, i32* %g, align 4
  %1691 = load i32, i32* %t0, align 4
  %1692 = load i32, i32* %t1, align 4
  %add2817 = add i32 %1691, %1692
  store i32 %add2817, i32* %c, align 4
  br label %do.end.2818

do.end.2818:                                      ; preds = %do.body.2747
  br label %do.body.2819

do.body.2819:                                     ; preds = %do.end.2818
  %1693 = load i32, i32* %c, align 4
  %shl2820 = shl i32 %1693, 30
  %1694 = load i32, i32* %c, align 4
  %shr2821 = lshr i32 %1694, 2
  %or2822 = or i32 %shl2820, %shr2821
  %1695 = load i32, i32* %c, align 4
  %shl2823 = shl i32 %1695, 19
  %1696 = load i32, i32* %c, align 4
  %shr2824 = lshr i32 %1696, 13
  %or2825 = or i32 %shl2823, %shr2824
  %xor2826 = xor i32 %or2822, %or2825
  %1697 = load i32, i32* %c, align 4
  %shl2827 = shl i32 %1697, 10
  %1698 = load i32, i32* %c, align 4
  %shr2828 = lshr i32 %1698, 22
  %or2829 = or i32 %shl2827, %shr2828
  %xor2830 = xor i32 %xor2826, %or2829
  %1699 = load i32, i32* %c, align 4
  %1700 = load i32, i32* %d, align 4
  %and2831 = and i32 %1699, %1700
  %1701 = load i32, i32* %e, align 4
  %1702 = load i32, i32* %c, align 4
  %1703 = load i32, i32* %d, align 4
  %or2832 = or i32 %1702, %1703
  %and2833 = and i32 %1701, %or2832
  %or2834 = or i32 %and2831, %and2833
  %add2835 = add i32 %xor2830, %or2834
  store i32 %add2835, i32* %t0, align 4
  %1704 = load i32, i32* %b, align 4
  %1705 = load i32, i32* %g, align 4
  %shl2836 = shl i32 %1705, 26
  %1706 = load i32, i32* %g, align 4
  %shr2837 = lshr i32 %1706, 6
  %or2838 = or i32 %shl2836, %shr2837
  %1707 = load i32, i32* %g, align 4
  %shl2839 = shl i32 %1707, 21
  %1708 = load i32, i32* %g, align 4
  %shr2840 = lshr i32 %1708, 11
  %or2841 = or i32 %shl2839, %shr2840
  %xor2842 = xor i32 %or2838, %or2841
  %1709 = load i32, i32* %g, align 4
  %shl2843 = shl i32 %1709, 7
  %1710 = load i32, i32* %g, align 4
  %shr2844 = lshr i32 %1710, 25
  %or2845 = or i32 %shl2843, %shr2844
  %xor2846 = xor i32 %xor2842, %or2845
  %add2847 = add i32 %1704, %xor2846
  %1711 = load i32, i32* %a, align 4
  %1712 = load i32, i32* %g, align 4
  %1713 = load i32, i32* %h, align 4
  %1714 = load i32, i32* %a, align 4
  %xor2848 = xor i32 %1713, %1714
  %and2849 = and i32 %1712, %xor2848
  %xor2850 = xor i32 %1711, %and2849
  %add2851 = add i32 %add2847, %xor2850
  %1715 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 46), align 4
  %add2852 = add i32 %add2851, %1715
  %arrayidx2853 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1716 = load i32, i32* %arrayidx2853, align 4
  %shl2854 = shl i32 %1716, 15
  %arrayidx2855 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1717 = load i32, i32* %arrayidx2855, align 4
  %shr2856 = lshr i32 %1717, 17
  %or2857 = or i32 %shl2854, %shr2856
  %arrayidx2858 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1718 = load i32, i32* %arrayidx2858, align 4
  %shl2859 = shl i32 %1718, 13
  %arrayidx2860 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1719 = load i32, i32* %arrayidx2860, align 4
  %shr2861 = lshr i32 %1719, 19
  %or2862 = or i32 %shl2859, %shr2861
  %xor2863 = xor i32 %or2857, %or2862
  %arrayidx2864 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1720 = load i32, i32* %arrayidx2864, align 4
  %shr2865 = lshr i32 %1720, 10
  %xor2866 = xor i32 %xor2863, %shr2865
  %arrayidx2867 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1721 = load i32, i32* %arrayidx2867, align 4
  %add2868 = add i32 %xor2866, %1721
  %arrayidx2869 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1722 = load i32, i32* %arrayidx2869, align 4
  %shl2870 = shl i32 %1722, 25
  %arrayidx2871 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1723 = load i32, i32* %arrayidx2871, align 4
  %shr2872 = lshr i32 %1723, 7
  %or2873 = or i32 %shl2870, %shr2872
  %arrayidx2874 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1724 = load i32, i32* %arrayidx2874, align 4
  %shl2875 = shl i32 %1724, 14
  %arrayidx2876 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1725 = load i32, i32* %arrayidx2876, align 4
  %shr2877 = lshr i32 %1725, 18
  %or2878 = or i32 %shl2875, %shr2877
  %xor2879 = xor i32 %or2873, %or2878
  %arrayidx2880 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1726 = load i32, i32* %arrayidx2880, align 4
  %shr2881 = lshr i32 %1726, 3
  %xor2882 = xor i32 %xor2879, %shr2881
  %add2883 = add i32 %add2868, %xor2882
  %arrayidx2884 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1727 = load i32, i32* %arrayidx2884, align 4
  %add2885 = add i32 %add2883, %1727
  store i32 %add2885, i32* %tm, align 4
  %1728 = load i32, i32* %tm, align 4
  %arrayidx2886 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %1728, i32* %arrayidx2886, align 4
  %add2887 = add i32 %add2852, %1728
  store i32 %add2887, i32* %t1, align 4
  %1729 = load i32, i32* %t1, align 4
  %1730 = load i32, i32* %f, align 4
  %add2888 = add i32 %1730, %1729
  store i32 %add2888, i32* %f, align 4
  %1731 = load i32, i32* %t0, align 4
  %1732 = load i32, i32* %t1, align 4
  %add2889 = add i32 %1731, %1732
  store i32 %add2889, i32* %b, align 4
  br label %do.end.2890

do.end.2890:                                      ; preds = %do.body.2819
  br label %do.body.2891

do.body.2891:                                     ; preds = %do.end.2890
  %1733 = load i32, i32* %b, align 4
  %shl2892 = shl i32 %1733, 30
  %1734 = load i32, i32* %b, align 4
  %shr2893 = lshr i32 %1734, 2
  %or2894 = or i32 %shl2892, %shr2893
  %1735 = load i32, i32* %b, align 4
  %shl2895 = shl i32 %1735, 19
  %1736 = load i32, i32* %b, align 4
  %shr2896 = lshr i32 %1736, 13
  %or2897 = or i32 %shl2895, %shr2896
  %xor2898 = xor i32 %or2894, %or2897
  %1737 = load i32, i32* %b, align 4
  %shl2899 = shl i32 %1737, 10
  %1738 = load i32, i32* %b, align 4
  %shr2900 = lshr i32 %1738, 22
  %or2901 = or i32 %shl2899, %shr2900
  %xor2902 = xor i32 %xor2898, %or2901
  %1739 = load i32, i32* %b, align 4
  %1740 = load i32, i32* %c, align 4
  %and2903 = and i32 %1739, %1740
  %1741 = load i32, i32* %d, align 4
  %1742 = load i32, i32* %b, align 4
  %1743 = load i32, i32* %c, align 4
  %or2904 = or i32 %1742, %1743
  %and2905 = and i32 %1741, %or2904
  %or2906 = or i32 %and2903, %and2905
  %add2907 = add i32 %xor2902, %or2906
  store i32 %add2907, i32* %t0, align 4
  %1744 = load i32, i32* %a, align 4
  %1745 = load i32, i32* %f, align 4
  %shl2908 = shl i32 %1745, 26
  %1746 = load i32, i32* %f, align 4
  %shr2909 = lshr i32 %1746, 6
  %or2910 = or i32 %shl2908, %shr2909
  %1747 = load i32, i32* %f, align 4
  %shl2911 = shl i32 %1747, 21
  %1748 = load i32, i32* %f, align 4
  %shr2912 = lshr i32 %1748, 11
  %or2913 = or i32 %shl2911, %shr2912
  %xor2914 = xor i32 %or2910, %or2913
  %1749 = load i32, i32* %f, align 4
  %shl2915 = shl i32 %1749, 7
  %1750 = load i32, i32* %f, align 4
  %shr2916 = lshr i32 %1750, 25
  %or2917 = or i32 %shl2915, %shr2916
  %xor2918 = xor i32 %xor2914, %or2917
  %add2919 = add i32 %1744, %xor2918
  %1751 = load i32, i32* %h, align 4
  %1752 = load i32, i32* %f, align 4
  %1753 = load i32, i32* %g, align 4
  %1754 = load i32, i32* %h, align 4
  %xor2920 = xor i32 %1753, %1754
  %and2921 = and i32 %1752, %xor2920
  %xor2922 = xor i32 %1751, %and2921
  %add2923 = add i32 %add2919, %xor2922
  %1755 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 47), align 4
  %add2924 = add i32 %add2923, %1755
  %arrayidx2925 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1756 = load i32, i32* %arrayidx2925, align 4
  %shl2926 = shl i32 %1756, 15
  %arrayidx2927 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1757 = load i32, i32* %arrayidx2927, align 4
  %shr2928 = lshr i32 %1757, 17
  %or2929 = or i32 %shl2926, %shr2928
  %arrayidx2930 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1758 = load i32, i32* %arrayidx2930, align 4
  %shl2931 = shl i32 %1758, 13
  %arrayidx2932 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1759 = load i32, i32* %arrayidx2932, align 4
  %shr2933 = lshr i32 %1759, 19
  %or2934 = or i32 %shl2931, %shr2933
  %xor2935 = xor i32 %or2929, %or2934
  %arrayidx2936 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1760 = load i32, i32* %arrayidx2936, align 4
  %shr2937 = lshr i32 %1760, 10
  %xor2938 = xor i32 %xor2935, %shr2937
  %arrayidx2939 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1761 = load i32, i32* %arrayidx2939, align 4
  %add2940 = add i32 %xor2938, %1761
  %arrayidx2941 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1762 = load i32, i32* %arrayidx2941, align 4
  %shl2942 = shl i32 %1762, 25
  %arrayidx2943 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1763 = load i32, i32* %arrayidx2943, align 4
  %shr2944 = lshr i32 %1763, 7
  %or2945 = or i32 %shl2942, %shr2944
  %arrayidx2946 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1764 = load i32, i32* %arrayidx2946, align 4
  %shl2947 = shl i32 %1764, 14
  %arrayidx2948 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1765 = load i32, i32* %arrayidx2948, align 4
  %shr2949 = lshr i32 %1765, 18
  %or2950 = or i32 %shl2947, %shr2949
  %xor2951 = xor i32 %or2945, %or2950
  %arrayidx2952 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1766 = load i32, i32* %arrayidx2952, align 4
  %shr2953 = lshr i32 %1766, 3
  %xor2954 = xor i32 %xor2951, %shr2953
  %add2955 = add i32 %add2940, %xor2954
  %arrayidx2956 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1767 = load i32, i32* %arrayidx2956, align 4
  %add2957 = add i32 %add2955, %1767
  store i32 %add2957, i32* %tm, align 4
  %1768 = load i32, i32* %tm, align 4
  %arrayidx2958 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %1768, i32* %arrayidx2958, align 4
  %add2959 = add i32 %add2924, %1768
  store i32 %add2959, i32* %t1, align 4
  %1769 = load i32, i32* %t1, align 4
  %1770 = load i32, i32* %e, align 4
  %add2960 = add i32 %1770, %1769
  store i32 %add2960, i32* %e, align 4
  %1771 = load i32, i32* %t0, align 4
  %1772 = load i32, i32* %t1, align 4
  %add2961 = add i32 %1771, %1772
  store i32 %add2961, i32* %a, align 4
  br label %do.end.2962

do.end.2962:                                      ; preds = %do.body.2891
  br label %do.body.2963

do.body.2963:                                     ; preds = %do.end.2962
  %1773 = load i32, i32* %a, align 4
  %shl2964 = shl i32 %1773, 30
  %1774 = load i32, i32* %a, align 4
  %shr2965 = lshr i32 %1774, 2
  %or2966 = or i32 %shl2964, %shr2965
  %1775 = load i32, i32* %a, align 4
  %shl2967 = shl i32 %1775, 19
  %1776 = load i32, i32* %a, align 4
  %shr2968 = lshr i32 %1776, 13
  %or2969 = or i32 %shl2967, %shr2968
  %xor2970 = xor i32 %or2966, %or2969
  %1777 = load i32, i32* %a, align 4
  %shl2971 = shl i32 %1777, 10
  %1778 = load i32, i32* %a, align 4
  %shr2972 = lshr i32 %1778, 22
  %or2973 = or i32 %shl2971, %shr2972
  %xor2974 = xor i32 %xor2970, %or2973
  %1779 = load i32, i32* %a, align 4
  %1780 = load i32, i32* %b, align 4
  %and2975 = and i32 %1779, %1780
  %1781 = load i32, i32* %c, align 4
  %1782 = load i32, i32* %a, align 4
  %1783 = load i32, i32* %b, align 4
  %or2976 = or i32 %1782, %1783
  %and2977 = and i32 %1781, %or2976
  %or2978 = or i32 %and2975, %and2977
  %add2979 = add i32 %xor2974, %or2978
  store i32 %add2979, i32* %t0, align 4
  %1784 = load i32, i32* %h, align 4
  %1785 = load i32, i32* %e, align 4
  %shl2980 = shl i32 %1785, 26
  %1786 = load i32, i32* %e, align 4
  %shr2981 = lshr i32 %1786, 6
  %or2982 = or i32 %shl2980, %shr2981
  %1787 = load i32, i32* %e, align 4
  %shl2983 = shl i32 %1787, 21
  %1788 = load i32, i32* %e, align 4
  %shr2984 = lshr i32 %1788, 11
  %or2985 = or i32 %shl2983, %shr2984
  %xor2986 = xor i32 %or2982, %or2985
  %1789 = load i32, i32* %e, align 4
  %shl2987 = shl i32 %1789, 7
  %1790 = load i32, i32* %e, align 4
  %shr2988 = lshr i32 %1790, 25
  %or2989 = or i32 %shl2987, %shr2988
  %xor2990 = xor i32 %xor2986, %or2989
  %add2991 = add i32 %1784, %xor2990
  %1791 = load i32, i32* %g, align 4
  %1792 = load i32, i32* %e, align 4
  %1793 = load i32, i32* %f, align 4
  %1794 = load i32, i32* %g, align 4
  %xor2992 = xor i32 %1793, %1794
  %and2993 = and i32 %1792, %xor2992
  %xor2994 = xor i32 %1791, %and2993
  %add2995 = add i32 %add2991, %xor2994
  %1795 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 48), align 4
  %add2996 = add i32 %add2995, %1795
  %arrayidx2997 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1796 = load i32, i32* %arrayidx2997, align 4
  %shl2998 = shl i32 %1796, 15
  %arrayidx2999 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1797 = load i32, i32* %arrayidx2999, align 4
  %shr3000 = lshr i32 %1797, 17
  %or3001 = or i32 %shl2998, %shr3000
  %arrayidx3002 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1798 = load i32, i32* %arrayidx3002, align 4
  %shl3003 = shl i32 %1798, 13
  %arrayidx3004 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1799 = load i32, i32* %arrayidx3004, align 4
  %shr3005 = lshr i32 %1799, 19
  %or3006 = or i32 %shl3003, %shr3005
  %xor3007 = xor i32 %or3001, %or3006
  %arrayidx3008 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1800 = load i32, i32* %arrayidx3008, align 4
  %shr3009 = lshr i32 %1800, 10
  %xor3010 = xor i32 %xor3007, %shr3009
  %arrayidx3011 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1801 = load i32, i32* %arrayidx3011, align 4
  %add3012 = add i32 %xor3010, %1801
  %arrayidx3013 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1802 = load i32, i32* %arrayidx3013, align 4
  %shl3014 = shl i32 %1802, 25
  %arrayidx3015 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1803 = load i32, i32* %arrayidx3015, align 4
  %shr3016 = lshr i32 %1803, 7
  %or3017 = or i32 %shl3014, %shr3016
  %arrayidx3018 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1804 = load i32, i32* %arrayidx3018, align 4
  %shl3019 = shl i32 %1804, 14
  %arrayidx3020 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1805 = load i32, i32* %arrayidx3020, align 4
  %shr3021 = lshr i32 %1805, 18
  %or3022 = or i32 %shl3019, %shr3021
  %xor3023 = xor i32 %or3017, %or3022
  %arrayidx3024 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1806 = load i32, i32* %arrayidx3024, align 4
  %shr3025 = lshr i32 %1806, 3
  %xor3026 = xor i32 %xor3023, %shr3025
  %add3027 = add i32 %add3012, %xor3026
  %arrayidx3028 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1807 = load i32, i32* %arrayidx3028, align 4
  %add3029 = add i32 %add3027, %1807
  store i32 %add3029, i32* %tm, align 4
  %1808 = load i32, i32* %tm, align 4
  %arrayidx3030 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %1808, i32* %arrayidx3030, align 4
  %add3031 = add i32 %add2996, %1808
  store i32 %add3031, i32* %t1, align 4
  %1809 = load i32, i32* %t1, align 4
  %1810 = load i32, i32* %d, align 4
  %add3032 = add i32 %1810, %1809
  store i32 %add3032, i32* %d, align 4
  %1811 = load i32, i32* %t0, align 4
  %1812 = load i32, i32* %t1, align 4
  %add3033 = add i32 %1811, %1812
  store i32 %add3033, i32* %h, align 4
  br label %do.end.3034

do.end.3034:                                      ; preds = %do.body.2963
  br label %do.body.3035

do.body.3035:                                     ; preds = %do.end.3034
  %1813 = load i32, i32* %h, align 4
  %shl3036 = shl i32 %1813, 30
  %1814 = load i32, i32* %h, align 4
  %shr3037 = lshr i32 %1814, 2
  %or3038 = or i32 %shl3036, %shr3037
  %1815 = load i32, i32* %h, align 4
  %shl3039 = shl i32 %1815, 19
  %1816 = load i32, i32* %h, align 4
  %shr3040 = lshr i32 %1816, 13
  %or3041 = or i32 %shl3039, %shr3040
  %xor3042 = xor i32 %or3038, %or3041
  %1817 = load i32, i32* %h, align 4
  %shl3043 = shl i32 %1817, 10
  %1818 = load i32, i32* %h, align 4
  %shr3044 = lshr i32 %1818, 22
  %or3045 = or i32 %shl3043, %shr3044
  %xor3046 = xor i32 %xor3042, %or3045
  %1819 = load i32, i32* %h, align 4
  %1820 = load i32, i32* %a, align 4
  %and3047 = and i32 %1819, %1820
  %1821 = load i32, i32* %b, align 4
  %1822 = load i32, i32* %h, align 4
  %1823 = load i32, i32* %a, align 4
  %or3048 = or i32 %1822, %1823
  %and3049 = and i32 %1821, %or3048
  %or3050 = or i32 %and3047, %and3049
  %add3051 = add i32 %xor3046, %or3050
  store i32 %add3051, i32* %t0, align 4
  %1824 = load i32, i32* %g, align 4
  %1825 = load i32, i32* %d, align 4
  %shl3052 = shl i32 %1825, 26
  %1826 = load i32, i32* %d, align 4
  %shr3053 = lshr i32 %1826, 6
  %or3054 = or i32 %shl3052, %shr3053
  %1827 = load i32, i32* %d, align 4
  %shl3055 = shl i32 %1827, 21
  %1828 = load i32, i32* %d, align 4
  %shr3056 = lshr i32 %1828, 11
  %or3057 = or i32 %shl3055, %shr3056
  %xor3058 = xor i32 %or3054, %or3057
  %1829 = load i32, i32* %d, align 4
  %shl3059 = shl i32 %1829, 7
  %1830 = load i32, i32* %d, align 4
  %shr3060 = lshr i32 %1830, 25
  %or3061 = or i32 %shl3059, %shr3060
  %xor3062 = xor i32 %xor3058, %or3061
  %add3063 = add i32 %1824, %xor3062
  %1831 = load i32, i32* %f, align 4
  %1832 = load i32, i32* %d, align 4
  %1833 = load i32, i32* %e, align 4
  %1834 = load i32, i32* %f, align 4
  %xor3064 = xor i32 %1833, %1834
  %and3065 = and i32 %1832, %xor3064
  %xor3066 = xor i32 %1831, %and3065
  %add3067 = add i32 %add3063, %xor3066
  %1835 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 49), align 4
  %add3068 = add i32 %add3067, %1835
  %arrayidx3069 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1836 = load i32, i32* %arrayidx3069, align 4
  %shl3070 = shl i32 %1836, 15
  %arrayidx3071 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1837 = load i32, i32* %arrayidx3071, align 4
  %shr3072 = lshr i32 %1837, 17
  %or3073 = or i32 %shl3070, %shr3072
  %arrayidx3074 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1838 = load i32, i32* %arrayidx3074, align 4
  %shl3075 = shl i32 %1838, 13
  %arrayidx3076 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1839 = load i32, i32* %arrayidx3076, align 4
  %shr3077 = lshr i32 %1839, 19
  %or3078 = or i32 %shl3075, %shr3077
  %xor3079 = xor i32 %or3073, %or3078
  %arrayidx3080 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1840 = load i32, i32* %arrayidx3080, align 4
  %shr3081 = lshr i32 %1840, 10
  %xor3082 = xor i32 %xor3079, %shr3081
  %arrayidx3083 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1841 = load i32, i32* %arrayidx3083, align 4
  %add3084 = add i32 %xor3082, %1841
  %arrayidx3085 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1842 = load i32, i32* %arrayidx3085, align 4
  %shl3086 = shl i32 %1842, 25
  %arrayidx3087 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1843 = load i32, i32* %arrayidx3087, align 4
  %shr3088 = lshr i32 %1843, 7
  %or3089 = or i32 %shl3086, %shr3088
  %arrayidx3090 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1844 = load i32, i32* %arrayidx3090, align 4
  %shl3091 = shl i32 %1844, 14
  %arrayidx3092 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1845 = load i32, i32* %arrayidx3092, align 4
  %shr3093 = lshr i32 %1845, 18
  %or3094 = or i32 %shl3091, %shr3093
  %xor3095 = xor i32 %or3089, %or3094
  %arrayidx3096 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1846 = load i32, i32* %arrayidx3096, align 4
  %shr3097 = lshr i32 %1846, 3
  %xor3098 = xor i32 %xor3095, %shr3097
  %add3099 = add i32 %add3084, %xor3098
  %arrayidx3100 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1847 = load i32, i32* %arrayidx3100, align 4
  %add3101 = add i32 %add3099, %1847
  store i32 %add3101, i32* %tm, align 4
  %1848 = load i32, i32* %tm, align 4
  %arrayidx3102 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %1848, i32* %arrayidx3102, align 4
  %add3103 = add i32 %add3068, %1848
  store i32 %add3103, i32* %t1, align 4
  %1849 = load i32, i32* %t1, align 4
  %1850 = load i32, i32* %c, align 4
  %add3104 = add i32 %1850, %1849
  store i32 %add3104, i32* %c, align 4
  %1851 = load i32, i32* %t0, align 4
  %1852 = load i32, i32* %t1, align 4
  %add3105 = add i32 %1851, %1852
  store i32 %add3105, i32* %g, align 4
  br label %do.end.3106

do.end.3106:                                      ; preds = %do.body.3035
  br label %do.body.3107

do.body.3107:                                     ; preds = %do.end.3106
  %1853 = load i32, i32* %g, align 4
  %shl3108 = shl i32 %1853, 30
  %1854 = load i32, i32* %g, align 4
  %shr3109 = lshr i32 %1854, 2
  %or3110 = or i32 %shl3108, %shr3109
  %1855 = load i32, i32* %g, align 4
  %shl3111 = shl i32 %1855, 19
  %1856 = load i32, i32* %g, align 4
  %shr3112 = lshr i32 %1856, 13
  %or3113 = or i32 %shl3111, %shr3112
  %xor3114 = xor i32 %or3110, %or3113
  %1857 = load i32, i32* %g, align 4
  %shl3115 = shl i32 %1857, 10
  %1858 = load i32, i32* %g, align 4
  %shr3116 = lshr i32 %1858, 22
  %or3117 = or i32 %shl3115, %shr3116
  %xor3118 = xor i32 %xor3114, %or3117
  %1859 = load i32, i32* %g, align 4
  %1860 = load i32, i32* %h, align 4
  %and3119 = and i32 %1859, %1860
  %1861 = load i32, i32* %a, align 4
  %1862 = load i32, i32* %g, align 4
  %1863 = load i32, i32* %h, align 4
  %or3120 = or i32 %1862, %1863
  %and3121 = and i32 %1861, %or3120
  %or3122 = or i32 %and3119, %and3121
  %add3123 = add i32 %xor3118, %or3122
  store i32 %add3123, i32* %t0, align 4
  %1864 = load i32, i32* %f, align 4
  %1865 = load i32, i32* %c, align 4
  %shl3124 = shl i32 %1865, 26
  %1866 = load i32, i32* %c, align 4
  %shr3125 = lshr i32 %1866, 6
  %or3126 = or i32 %shl3124, %shr3125
  %1867 = load i32, i32* %c, align 4
  %shl3127 = shl i32 %1867, 21
  %1868 = load i32, i32* %c, align 4
  %shr3128 = lshr i32 %1868, 11
  %or3129 = or i32 %shl3127, %shr3128
  %xor3130 = xor i32 %or3126, %or3129
  %1869 = load i32, i32* %c, align 4
  %shl3131 = shl i32 %1869, 7
  %1870 = load i32, i32* %c, align 4
  %shr3132 = lshr i32 %1870, 25
  %or3133 = or i32 %shl3131, %shr3132
  %xor3134 = xor i32 %xor3130, %or3133
  %add3135 = add i32 %1864, %xor3134
  %1871 = load i32, i32* %e, align 4
  %1872 = load i32, i32* %c, align 4
  %1873 = load i32, i32* %d, align 4
  %1874 = load i32, i32* %e, align 4
  %xor3136 = xor i32 %1873, %1874
  %and3137 = and i32 %1872, %xor3136
  %xor3138 = xor i32 %1871, %and3137
  %add3139 = add i32 %add3135, %xor3138
  %1875 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 50), align 4
  %add3140 = add i32 %add3139, %1875
  %arrayidx3141 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1876 = load i32, i32* %arrayidx3141, align 4
  %shl3142 = shl i32 %1876, 15
  %arrayidx3143 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1877 = load i32, i32* %arrayidx3143, align 4
  %shr3144 = lshr i32 %1877, 17
  %or3145 = or i32 %shl3142, %shr3144
  %arrayidx3146 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1878 = load i32, i32* %arrayidx3146, align 4
  %shl3147 = shl i32 %1878, 13
  %arrayidx3148 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1879 = load i32, i32* %arrayidx3148, align 4
  %shr3149 = lshr i32 %1879, 19
  %or3150 = or i32 %shl3147, %shr3149
  %xor3151 = xor i32 %or3145, %or3150
  %arrayidx3152 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1880 = load i32, i32* %arrayidx3152, align 4
  %shr3153 = lshr i32 %1880, 10
  %xor3154 = xor i32 %xor3151, %shr3153
  %arrayidx3155 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1881 = load i32, i32* %arrayidx3155, align 4
  %add3156 = add i32 %xor3154, %1881
  %arrayidx3157 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1882 = load i32, i32* %arrayidx3157, align 4
  %shl3158 = shl i32 %1882, 25
  %arrayidx3159 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1883 = load i32, i32* %arrayidx3159, align 4
  %shr3160 = lshr i32 %1883, 7
  %or3161 = or i32 %shl3158, %shr3160
  %arrayidx3162 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1884 = load i32, i32* %arrayidx3162, align 4
  %shl3163 = shl i32 %1884, 14
  %arrayidx3164 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1885 = load i32, i32* %arrayidx3164, align 4
  %shr3165 = lshr i32 %1885, 18
  %or3166 = or i32 %shl3163, %shr3165
  %xor3167 = xor i32 %or3161, %or3166
  %arrayidx3168 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1886 = load i32, i32* %arrayidx3168, align 4
  %shr3169 = lshr i32 %1886, 3
  %xor3170 = xor i32 %xor3167, %shr3169
  %add3171 = add i32 %add3156, %xor3170
  %arrayidx3172 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1887 = load i32, i32* %arrayidx3172, align 4
  %add3173 = add i32 %add3171, %1887
  store i32 %add3173, i32* %tm, align 4
  %1888 = load i32, i32* %tm, align 4
  %arrayidx3174 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %1888, i32* %arrayidx3174, align 4
  %add3175 = add i32 %add3140, %1888
  store i32 %add3175, i32* %t1, align 4
  %1889 = load i32, i32* %t1, align 4
  %1890 = load i32, i32* %b, align 4
  %add3176 = add i32 %1890, %1889
  store i32 %add3176, i32* %b, align 4
  %1891 = load i32, i32* %t0, align 4
  %1892 = load i32, i32* %t1, align 4
  %add3177 = add i32 %1891, %1892
  store i32 %add3177, i32* %f, align 4
  br label %do.end.3178

do.end.3178:                                      ; preds = %do.body.3107
  br label %do.body.3179

do.body.3179:                                     ; preds = %do.end.3178
  %1893 = load i32, i32* %f, align 4
  %shl3180 = shl i32 %1893, 30
  %1894 = load i32, i32* %f, align 4
  %shr3181 = lshr i32 %1894, 2
  %or3182 = or i32 %shl3180, %shr3181
  %1895 = load i32, i32* %f, align 4
  %shl3183 = shl i32 %1895, 19
  %1896 = load i32, i32* %f, align 4
  %shr3184 = lshr i32 %1896, 13
  %or3185 = or i32 %shl3183, %shr3184
  %xor3186 = xor i32 %or3182, %or3185
  %1897 = load i32, i32* %f, align 4
  %shl3187 = shl i32 %1897, 10
  %1898 = load i32, i32* %f, align 4
  %shr3188 = lshr i32 %1898, 22
  %or3189 = or i32 %shl3187, %shr3188
  %xor3190 = xor i32 %xor3186, %or3189
  %1899 = load i32, i32* %f, align 4
  %1900 = load i32, i32* %g, align 4
  %and3191 = and i32 %1899, %1900
  %1901 = load i32, i32* %h, align 4
  %1902 = load i32, i32* %f, align 4
  %1903 = load i32, i32* %g, align 4
  %or3192 = or i32 %1902, %1903
  %and3193 = and i32 %1901, %or3192
  %or3194 = or i32 %and3191, %and3193
  %add3195 = add i32 %xor3190, %or3194
  store i32 %add3195, i32* %t0, align 4
  %1904 = load i32, i32* %e, align 4
  %1905 = load i32, i32* %b, align 4
  %shl3196 = shl i32 %1905, 26
  %1906 = load i32, i32* %b, align 4
  %shr3197 = lshr i32 %1906, 6
  %or3198 = or i32 %shl3196, %shr3197
  %1907 = load i32, i32* %b, align 4
  %shl3199 = shl i32 %1907, 21
  %1908 = load i32, i32* %b, align 4
  %shr3200 = lshr i32 %1908, 11
  %or3201 = or i32 %shl3199, %shr3200
  %xor3202 = xor i32 %or3198, %or3201
  %1909 = load i32, i32* %b, align 4
  %shl3203 = shl i32 %1909, 7
  %1910 = load i32, i32* %b, align 4
  %shr3204 = lshr i32 %1910, 25
  %or3205 = or i32 %shl3203, %shr3204
  %xor3206 = xor i32 %xor3202, %or3205
  %add3207 = add i32 %1904, %xor3206
  %1911 = load i32, i32* %d, align 4
  %1912 = load i32, i32* %b, align 4
  %1913 = load i32, i32* %c, align 4
  %1914 = load i32, i32* %d, align 4
  %xor3208 = xor i32 %1913, %1914
  %and3209 = and i32 %1912, %xor3208
  %xor3210 = xor i32 %1911, %and3209
  %add3211 = add i32 %add3207, %xor3210
  %1915 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 51), align 4
  %add3212 = add i32 %add3211, %1915
  %arrayidx3213 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1916 = load i32, i32* %arrayidx3213, align 4
  %shl3214 = shl i32 %1916, 15
  %arrayidx3215 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1917 = load i32, i32* %arrayidx3215, align 4
  %shr3216 = lshr i32 %1917, 17
  %or3217 = or i32 %shl3214, %shr3216
  %arrayidx3218 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1918 = load i32, i32* %arrayidx3218, align 4
  %shl3219 = shl i32 %1918, 13
  %arrayidx3220 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1919 = load i32, i32* %arrayidx3220, align 4
  %shr3221 = lshr i32 %1919, 19
  %or3222 = or i32 %shl3219, %shr3221
  %xor3223 = xor i32 %or3217, %or3222
  %arrayidx3224 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1920 = load i32, i32* %arrayidx3224, align 4
  %shr3225 = lshr i32 %1920, 10
  %xor3226 = xor i32 %xor3223, %shr3225
  %arrayidx3227 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1921 = load i32, i32* %arrayidx3227, align 4
  %add3228 = add i32 %xor3226, %1921
  %arrayidx3229 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1922 = load i32, i32* %arrayidx3229, align 4
  %shl3230 = shl i32 %1922, 25
  %arrayidx3231 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1923 = load i32, i32* %arrayidx3231, align 4
  %shr3232 = lshr i32 %1923, 7
  %or3233 = or i32 %shl3230, %shr3232
  %arrayidx3234 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1924 = load i32, i32* %arrayidx3234, align 4
  %shl3235 = shl i32 %1924, 14
  %arrayidx3236 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1925 = load i32, i32* %arrayidx3236, align 4
  %shr3237 = lshr i32 %1925, 18
  %or3238 = or i32 %shl3235, %shr3237
  %xor3239 = xor i32 %or3233, %or3238
  %arrayidx3240 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1926 = load i32, i32* %arrayidx3240, align 4
  %shr3241 = lshr i32 %1926, 3
  %xor3242 = xor i32 %xor3239, %shr3241
  %add3243 = add i32 %add3228, %xor3242
  %arrayidx3244 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1927 = load i32, i32* %arrayidx3244, align 4
  %add3245 = add i32 %add3243, %1927
  store i32 %add3245, i32* %tm, align 4
  %1928 = load i32, i32* %tm, align 4
  %arrayidx3246 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %1928, i32* %arrayidx3246, align 4
  %add3247 = add i32 %add3212, %1928
  store i32 %add3247, i32* %t1, align 4
  %1929 = load i32, i32* %t1, align 4
  %1930 = load i32, i32* %a, align 4
  %add3248 = add i32 %1930, %1929
  store i32 %add3248, i32* %a, align 4
  %1931 = load i32, i32* %t0, align 4
  %1932 = load i32, i32* %t1, align 4
  %add3249 = add i32 %1931, %1932
  store i32 %add3249, i32* %e, align 4
  br label %do.end.3250

do.end.3250:                                      ; preds = %do.body.3179
  br label %do.body.3251

do.body.3251:                                     ; preds = %do.end.3250
  %1933 = load i32, i32* %e, align 4
  %shl3252 = shl i32 %1933, 30
  %1934 = load i32, i32* %e, align 4
  %shr3253 = lshr i32 %1934, 2
  %or3254 = or i32 %shl3252, %shr3253
  %1935 = load i32, i32* %e, align 4
  %shl3255 = shl i32 %1935, 19
  %1936 = load i32, i32* %e, align 4
  %shr3256 = lshr i32 %1936, 13
  %or3257 = or i32 %shl3255, %shr3256
  %xor3258 = xor i32 %or3254, %or3257
  %1937 = load i32, i32* %e, align 4
  %shl3259 = shl i32 %1937, 10
  %1938 = load i32, i32* %e, align 4
  %shr3260 = lshr i32 %1938, 22
  %or3261 = or i32 %shl3259, %shr3260
  %xor3262 = xor i32 %xor3258, %or3261
  %1939 = load i32, i32* %e, align 4
  %1940 = load i32, i32* %f, align 4
  %and3263 = and i32 %1939, %1940
  %1941 = load i32, i32* %g, align 4
  %1942 = load i32, i32* %e, align 4
  %1943 = load i32, i32* %f, align 4
  %or3264 = or i32 %1942, %1943
  %and3265 = and i32 %1941, %or3264
  %or3266 = or i32 %and3263, %and3265
  %add3267 = add i32 %xor3262, %or3266
  store i32 %add3267, i32* %t0, align 4
  %1944 = load i32, i32* %d, align 4
  %1945 = load i32, i32* %a, align 4
  %shl3268 = shl i32 %1945, 26
  %1946 = load i32, i32* %a, align 4
  %shr3269 = lshr i32 %1946, 6
  %or3270 = or i32 %shl3268, %shr3269
  %1947 = load i32, i32* %a, align 4
  %shl3271 = shl i32 %1947, 21
  %1948 = load i32, i32* %a, align 4
  %shr3272 = lshr i32 %1948, 11
  %or3273 = or i32 %shl3271, %shr3272
  %xor3274 = xor i32 %or3270, %or3273
  %1949 = load i32, i32* %a, align 4
  %shl3275 = shl i32 %1949, 7
  %1950 = load i32, i32* %a, align 4
  %shr3276 = lshr i32 %1950, 25
  %or3277 = or i32 %shl3275, %shr3276
  %xor3278 = xor i32 %xor3274, %or3277
  %add3279 = add i32 %1944, %xor3278
  %1951 = load i32, i32* %c, align 4
  %1952 = load i32, i32* %a, align 4
  %1953 = load i32, i32* %b, align 4
  %1954 = load i32, i32* %c, align 4
  %xor3280 = xor i32 %1953, %1954
  %and3281 = and i32 %1952, %xor3280
  %xor3282 = xor i32 %1951, %and3281
  %add3283 = add i32 %add3279, %xor3282
  %1955 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 52), align 4
  %add3284 = add i32 %add3283, %1955
  %arrayidx3285 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1956 = load i32, i32* %arrayidx3285, align 4
  %shl3286 = shl i32 %1956, 15
  %arrayidx3287 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1957 = load i32, i32* %arrayidx3287, align 4
  %shr3288 = lshr i32 %1957, 17
  %or3289 = or i32 %shl3286, %shr3288
  %arrayidx3290 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1958 = load i32, i32* %arrayidx3290, align 4
  %shl3291 = shl i32 %1958, 13
  %arrayidx3292 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1959 = load i32, i32* %arrayidx3292, align 4
  %shr3293 = lshr i32 %1959, 19
  %or3294 = or i32 %shl3291, %shr3293
  %xor3295 = xor i32 %or3289, %or3294
  %arrayidx3296 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1960 = load i32, i32* %arrayidx3296, align 4
  %shr3297 = lshr i32 %1960, 10
  %xor3298 = xor i32 %xor3295, %shr3297
  %arrayidx3299 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1961 = load i32, i32* %arrayidx3299, align 4
  %add3300 = add i32 %xor3298, %1961
  %arrayidx3301 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1962 = load i32, i32* %arrayidx3301, align 4
  %shl3302 = shl i32 %1962, 25
  %arrayidx3303 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1963 = load i32, i32* %arrayidx3303, align 4
  %shr3304 = lshr i32 %1963, 7
  %or3305 = or i32 %shl3302, %shr3304
  %arrayidx3306 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1964 = load i32, i32* %arrayidx3306, align 4
  %shl3307 = shl i32 %1964, 14
  %arrayidx3308 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1965 = load i32, i32* %arrayidx3308, align 4
  %shr3309 = lshr i32 %1965, 18
  %or3310 = or i32 %shl3307, %shr3309
  %xor3311 = xor i32 %or3305, %or3310
  %arrayidx3312 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1966 = load i32, i32* %arrayidx3312, align 4
  %shr3313 = lshr i32 %1966, 3
  %xor3314 = xor i32 %xor3311, %shr3313
  %add3315 = add i32 %add3300, %xor3314
  %arrayidx3316 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1967 = load i32, i32* %arrayidx3316, align 4
  %add3317 = add i32 %add3315, %1967
  store i32 %add3317, i32* %tm, align 4
  %1968 = load i32, i32* %tm, align 4
  %arrayidx3318 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %1968, i32* %arrayidx3318, align 4
  %add3319 = add i32 %add3284, %1968
  store i32 %add3319, i32* %t1, align 4
  %1969 = load i32, i32* %t1, align 4
  %1970 = load i32, i32* %h, align 4
  %add3320 = add i32 %1970, %1969
  store i32 %add3320, i32* %h, align 4
  %1971 = load i32, i32* %t0, align 4
  %1972 = load i32, i32* %t1, align 4
  %add3321 = add i32 %1971, %1972
  store i32 %add3321, i32* %d, align 4
  br label %do.end.3322

do.end.3322:                                      ; preds = %do.body.3251
  br label %do.body.3323

do.body.3323:                                     ; preds = %do.end.3322
  %1973 = load i32, i32* %d, align 4
  %shl3324 = shl i32 %1973, 30
  %1974 = load i32, i32* %d, align 4
  %shr3325 = lshr i32 %1974, 2
  %or3326 = or i32 %shl3324, %shr3325
  %1975 = load i32, i32* %d, align 4
  %shl3327 = shl i32 %1975, 19
  %1976 = load i32, i32* %d, align 4
  %shr3328 = lshr i32 %1976, 13
  %or3329 = or i32 %shl3327, %shr3328
  %xor3330 = xor i32 %or3326, %or3329
  %1977 = load i32, i32* %d, align 4
  %shl3331 = shl i32 %1977, 10
  %1978 = load i32, i32* %d, align 4
  %shr3332 = lshr i32 %1978, 22
  %or3333 = or i32 %shl3331, %shr3332
  %xor3334 = xor i32 %xor3330, %or3333
  %1979 = load i32, i32* %d, align 4
  %1980 = load i32, i32* %e, align 4
  %and3335 = and i32 %1979, %1980
  %1981 = load i32, i32* %f, align 4
  %1982 = load i32, i32* %d, align 4
  %1983 = load i32, i32* %e, align 4
  %or3336 = or i32 %1982, %1983
  %and3337 = and i32 %1981, %or3336
  %or3338 = or i32 %and3335, %and3337
  %add3339 = add i32 %xor3334, %or3338
  store i32 %add3339, i32* %t0, align 4
  %1984 = load i32, i32* %c, align 4
  %1985 = load i32, i32* %h, align 4
  %shl3340 = shl i32 %1985, 26
  %1986 = load i32, i32* %h, align 4
  %shr3341 = lshr i32 %1986, 6
  %or3342 = or i32 %shl3340, %shr3341
  %1987 = load i32, i32* %h, align 4
  %shl3343 = shl i32 %1987, 21
  %1988 = load i32, i32* %h, align 4
  %shr3344 = lshr i32 %1988, 11
  %or3345 = or i32 %shl3343, %shr3344
  %xor3346 = xor i32 %or3342, %or3345
  %1989 = load i32, i32* %h, align 4
  %shl3347 = shl i32 %1989, 7
  %1990 = load i32, i32* %h, align 4
  %shr3348 = lshr i32 %1990, 25
  %or3349 = or i32 %shl3347, %shr3348
  %xor3350 = xor i32 %xor3346, %or3349
  %add3351 = add i32 %1984, %xor3350
  %1991 = load i32, i32* %b, align 4
  %1992 = load i32, i32* %h, align 4
  %1993 = load i32, i32* %a, align 4
  %1994 = load i32, i32* %b, align 4
  %xor3352 = xor i32 %1993, %1994
  %and3353 = and i32 %1992, %xor3352
  %xor3354 = xor i32 %1991, %and3353
  %add3355 = add i32 %add3351, %xor3354
  %1995 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 53), align 4
  %add3356 = add i32 %add3355, %1995
  %arrayidx3357 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1996 = load i32, i32* %arrayidx3357, align 4
  %shl3358 = shl i32 %1996, 15
  %arrayidx3359 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1997 = load i32, i32* %arrayidx3359, align 4
  %shr3360 = lshr i32 %1997, 17
  %or3361 = or i32 %shl3358, %shr3360
  %arrayidx3362 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1998 = load i32, i32* %arrayidx3362, align 4
  %shl3363 = shl i32 %1998, 13
  %arrayidx3364 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1999 = load i32, i32* %arrayidx3364, align 4
  %shr3365 = lshr i32 %1999, 19
  %or3366 = or i32 %shl3363, %shr3365
  %xor3367 = xor i32 %or3361, %or3366
  %arrayidx3368 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %2000 = load i32, i32* %arrayidx3368, align 4
  %shr3369 = lshr i32 %2000, 10
  %xor3370 = xor i32 %xor3367, %shr3369
  %arrayidx3371 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2001 = load i32, i32* %arrayidx3371, align 4
  %add3372 = add i32 %xor3370, %2001
  %arrayidx3373 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2002 = load i32, i32* %arrayidx3373, align 4
  %shl3374 = shl i32 %2002, 25
  %arrayidx3375 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2003 = load i32, i32* %arrayidx3375, align 4
  %shr3376 = lshr i32 %2003, 7
  %or3377 = or i32 %shl3374, %shr3376
  %arrayidx3378 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2004 = load i32, i32* %arrayidx3378, align 4
  %shl3379 = shl i32 %2004, 14
  %arrayidx3380 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2005 = load i32, i32* %arrayidx3380, align 4
  %shr3381 = lshr i32 %2005, 18
  %or3382 = or i32 %shl3379, %shr3381
  %xor3383 = xor i32 %or3377, %or3382
  %arrayidx3384 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2006 = load i32, i32* %arrayidx3384, align 4
  %shr3385 = lshr i32 %2006, 3
  %xor3386 = xor i32 %xor3383, %shr3385
  %add3387 = add i32 %add3372, %xor3386
  %arrayidx3388 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2007 = load i32, i32* %arrayidx3388, align 4
  %add3389 = add i32 %add3387, %2007
  store i32 %add3389, i32* %tm, align 4
  %2008 = load i32, i32* %tm, align 4
  %arrayidx3390 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %2008, i32* %arrayidx3390, align 4
  %add3391 = add i32 %add3356, %2008
  store i32 %add3391, i32* %t1, align 4
  %2009 = load i32, i32* %t1, align 4
  %2010 = load i32, i32* %g, align 4
  %add3392 = add i32 %2010, %2009
  store i32 %add3392, i32* %g, align 4
  %2011 = load i32, i32* %t0, align 4
  %2012 = load i32, i32* %t1, align 4
  %add3393 = add i32 %2011, %2012
  store i32 %add3393, i32* %c, align 4
  br label %do.end.3394

do.end.3394:                                      ; preds = %do.body.3323
  br label %do.body.3395

do.body.3395:                                     ; preds = %do.end.3394
  %2013 = load i32, i32* %c, align 4
  %shl3396 = shl i32 %2013, 30
  %2014 = load i32, i32* %c, align 4
  %shr3397 = lshr i32 %2014, 2
  %or3398 = or i32 %shl3396, %shr3397
  %2015 = load i32, i32* %c, align 4
  %shl3399 = shl i32 %2015, 19
  %2016 = load i32, i32* %c, align 4
  %shr3400 = lshr i32 %2016, 13
  %or3401 = or i32 %shl3399, %shr3400
  %xor3402 = xor i32 %or3398, %or3401
  %2017 = load i32, i32* %c, align 4
  %shl3403 = shl i32 %2017, 10
  %2018 = load i32, i32* %c, align 4
  %shr3404 = lshr i32 %2018, 22
  %or3405 = or i32 %shl3403, %shr3404
  %xor3406 = xor i32 %xor3402, %or3405
  %2019 = load i32, i32* %c, align 4
  %2020 = load i32, i32* %d, align 4
  %and3407 = and i32 %2019, %2020
  %2021 = load i32, i32* %e, align 4
  %2022 = load i32, i32* %c, align 4
  %2023 = load i32, i32* %d, align 4
  %or3408 = or i32 %2022, %2023
  %and3409 = and i32 %2021, %or3408
  %or3410 = or i32 %and3407, %and3409
  %add3411 = add i32 %xor3406, %or3410
  store i32 %add3411, i32* %t0, align 4
  %2024 = load i32, i32* %b, align 4
  %2025 = load i32, i32* %g, align 4
  %shl3412 = shl i32 %2025, 26
  %2026 = load i32, i32* %g, align 4
  %shr3413 = lshr i32 %2026, 6
  %or3414 = or i32 %shl3412, %shr3413
  %2027 = load i32, i32* %g, align 4
  %shl3415 = shl i32 %2027, 21
  %2028 = load i32, i32* %g, align 4
  %shr3416 = lshr i32 %2028, 11
  %or3417 = or i32 %shl3415, %shr3416
  %xor3418 = xor i32 %or3414, %or3417
  %2029 = load i32, i32* %g, align 4
  %shl3419 = shl i32 %2029, 7
  %2030 = load i32, i32* %g, align 4
  %shr3420 = lshr i32 %2030, 25
  %or3421 = or i32 %shl3419, %shr3420
  %xor3422 = xor i32 %xor3418, %or3421
  %add3423 = add i32 %2024, %xor3422
  %2031 = load i32, i32* %a, align 4
  %2032 = load i32, i32* %g, align 4
  %2033 = load i32, i32* %h, align 4
  %2034 = load i32, i32* %a, align 4
  %xor3424 = xor i32 %2033, %2034
  %and3425 = and i32 %2032, %xor3424
  %xor3426 = xor i32 %2031, %and3425
  %add3427 = add i32 %add3423, %xor3426
  %2035 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 54), align 4
  %add3428 = add i32 %add3427, %2035
  %arrayidx3429 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2036 = load i32, i32* %arrayidx3429, align 4
  %shl3430 = shl i32 %2036, 15
  %arrayidx3431 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2037 = load i32, i32* %arrayidx3431, align 4
  %shr3432 = lshr i32 %2037, 17
  %or3433 = or i32 %shl3430, %shr3432
  %arrayidx3434 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2038 = load i32, i32* %arrayidx3434, align 4
  %shl3435 = shl i32 %2038, 13
  %arrayidx3436 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2039 = load i32, i32* %arrayidx3436, align 4
  %shr3437 = lshr i32 %2039, 19
  %or3438 = or i32 %shl3435, %shr3437
  %xor3439 = xor i32 %or3433, %or3438
  %arrayidx3440 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2040 = load i32, i32* %arrayidx3440, align 4
  %shr3441 = lshr i32 %2040, 10
  %xor3442 = xor i32 %xor3439, %shr3441
  %arrayidx3443 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2041 = load i32, i32* %arrayidx3443, align 4
  %add3444 = add i32 %xor3442, %2041
  %arrayidx3445 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2042 = load i32, i32* %arrayidx3445, align 4
  %shl3446 = shl i32 %2042, 25
  %arrayidx3447 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2043 = load i32, i32* %arrayidx3447, align 4
  %shr3448 = lshr i32 %2043, 7
  %or3449 = or i32 %shl3446, %shr3448
  %arrayidx3450 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2044 = load i32, i32* %arrayidx3450, align 4
  %shl3451 = shl i32 %2044, 14
  %arrayidx3452 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2045 = load i32, i32* %arrayidx3452, align 4
  %shr3453 = lshr i32 %2045, 18
  %or3454 = or i32 %shl3451, %shr3453
  %xor3455 = xor i32 %or3449, %or3454
  %arrayidx3456 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2046 = load i32, i32* %arrayidx3456, align 4
  %shr3457 = lshr i32 %2046, 3
  %xor3458 = xor i32 %xor3455, %shr3457
  %add3459 = add i32 %add3444, %xor3458
  %arrayidx3460 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2047 = load i32, i32* %arrayidx3460, align 4
  %add3461 = add i32 %add3459, %2047
  store i32 %add3461, i32* %tm, align 4
  %2048 = load i32, i32* %tm, align 4
  %arrayidx3462 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %2048, i32* %arrayidx3462, align 4
  %add3463 = add i32 %add3428, %2048
  store i32 %add3463, i32* %t1, align 4
  %2049 = load i32, i32* %t1, align 4
  %2050 = load i32, i32* %f, align 4
  %add3464 = add i32 %2050, %2049
  store i32 %add3464, i32* %f, align 4
  %2051 = load i32, i32* %t0, align 4
  %2052 = load i32, i32* %t1, align 4
  %add3465 = add i32 %2051, %2052
  store i32 %add3465, i32* %b, align 4
  br label %do.end.3466

do.end.3466:                                      ; preds = %do.body.3395
  br label %do.body.3467

do.body.3467:                                     ; preds = %do.end.3466
  %2053 = load i32, i32* %b, align 4
  %shl3468 = shl i32 %2053, 30
  %2054 = load i32, i32* %b, align 4
  %shr3469 = lshr i32 %2054, 2
  %or3470 = or i32 %shl3468, %shr3469
  %2055 = load i32, i32* %b, align 4
  %shl3471 = shl i32 %2055, 19
  %2056 = load i32, i32* %b, align 4
  %shr3472 = lshr i32 %2056, 13
  %or3473 = or i32 %shl3471, %shr3472
  %xor3474 = xor i32 %or3470, %or3473
  %2057 = load i32, i32* %b, align 4
  %shl3475 = shl i32 %2057, 10
  %2058 = load i32, i32* %b, align 4
  %shr3476 = lshr i32 %2058, 22
  %or3477 = or i32 %shl3475, %shr3476
  %xor3478 = xor i32 %xor3474, %or3477
  %2059 = load i32, i32* %b, align 4
  %2060 = load i32, i32* %c, align 4
  %and3479 = and i32 %2059, %2060
  %2061 = load i32, i32* %d, align 4
  %2062 = load i32, i32* %b, align 4
  %2063 = load i32, i32* %c, align 4
  %or3480 = or i32 %2062, %2063
  %and3481 = and i32 %2061, %or3480
  %or3482 = or i32 %and3479, %and3481
  %add3483 = add i32 %xor3478, %or3482
  store i32 %add3483, i32* %t0, align 4
  %2064 = load i32, i32* %a, align 4
  %2065 = load i32, i32* %f, align 4
  %shl3484 = shl i32 %2065, 26
  %2066 = load i32, i32* %f, align 4
  %shr3485 = lshr i32 %2066, 6
  %or3486 = or i32 %shl3484, %shr3485
  %2067 = load i32, i32* %f, align 4
  %shl3487 = shl i32 %2067, 21
  %2068 = load i32, i32* %f, align 4
  %shr3488 = lshr i32 %2068, 11
  %or3489 = or i32 %shl3487, %shr3488
  %xor3490 = xor i32 %or3486, %or3489
  %2069 = load i32, i32* %f, align 4
  %shl3491 = shl i32 %2069, 7
  %2070 = load i32, i32* %f, align 4
  %shr3492 = lshr i32 %2070, 25
  %or3493 = or i32 %shl3491, %shr3492
  %xor3494 = xor i32 %xor3490, %or3493
  %add3495 = add i32 %2064, %xor3494
  %2071 = load i32, i32* %h, align 4
  %2072 = load i32, i32* %f, align 4
  %2073 = load i32, i32* %g, align 4
  %2074 = load i32, i32* %h, align 4
  %xor3496 = xor i32 %2073, %2074
  %and3497 = and i32 %2072, %xor3496
  %xor3498 = xor i32 %2071, %and3497
  %add3499 = add i32 %add3495, %xor3498
  %2075 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 55), align 4
  %add3500 = add i32 %add3499, %2075
  %arrayidx3501 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2076 = load i32, i32* %arrayidx3501, align 4
  %shl3502 = shl i32 %2076, 15
  %arrayidx3503 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2077 = load i32, i32* %arrayidx3503, align 4
  %shr3504 = lshr i32 %2077, 17
  %or3505 = or i32 %shl3502, %shr3504
  %arrayidx3506 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2078 = load i32, i32* %arrayidx3506, align 4
  %shl3507 = shl i32 %2078, 13
  %arrayidx3508 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2079 = load i32, i32* %arrayidx3508, align 4
  %shr3509 = lshr i32 %2079, 19
  %or3510 = or i32 %shl3507, %shr3509
  %xor3511 = xor i32 %or3505, %or3510
  %arrayidx3512 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2080 = load i32, i32* %arrayidx3512, align 4
  %shr3513 = lshr i32 %2080, 10
  %xor3514 = xor i32 %xor3511, %shr3513
  %arrayidx3515 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2081 = load i32, i32* %arrayidx3515, align 4
  %add3516 = add i32 %xor3514, %2081
  %arrayidx3517 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2082 = load i32, i32* %arrayidx3517, align 4
  %shl3518 = shl i32 %2082, 25
  %arrayidx3519 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2083 = load i32, i32* %arrayidx3519, align 4
  %shr3520 = lshr i32 %2083, 7
  %or3521 = or i32 %shl3518, %shr3520
  %arrayidx3522 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2084 = load i32, i32* %arrayidx3522, align 4
  %shl3523 = shl i32 %2084, 14
  %arrayidx3524 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2085 = load i32, i32* %arrayidx3524, align 4
  %shr3525 = lshr i32 %2085, 18
  %or3526 = or i32 %shl3523, %shr3525
  %xor3527 = xor i32 %or3521, %or3526
  %arrayidx3528 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2086 = load i32, i32* %arrayidx3528, align 4
  %shr3529 = lshr i32 %2086, 3
  %xor3530 = xor i32 %xor3527, %shr3529
  %add3531 = add i32 %add3516, %xor3530
  %arrayidx3532 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2087 = load i32, i32* %arrayidx3532, align 4
  %add3533 = add i32 %add3531, %2087
  store i32 %add3533, i32* %tm, align 4
  %2088 = load i32, i32* %tm, align 4
  %arrayidx3534 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %2088, i32* %arrayidx3534, align 4
  %add3535 = add i32 %add3500, %2088
  store i32 %add3535, i32* %t1, align 4
  %2089 = load i32, i32* %t1, align 4
  %2090 = load i32, i32* %e, align 4
  %add3536 = add i32 %2090, %2089
  store i32 %add3536, i32* %e, align 4
  %2091 = load i32, i32* %t0, align 4
  %2092 = load i32, i32* %t1, align 4
  %add3537 = add i32 %2091, %2092
  store i32 %add3537, i32* %a, align 4
  br label %do.end.3538

do.end.3538:                                      ; preds = %do.body.3467
  br label %do.body.3539

do.body.3539:                                     ; preds = %do.end.3538
  %2093 = load i32, i32* %a, align 4
  %shl3540 = shl i32 %2093, 30
  %2094 = load i32, i32* %a, align 4
  %shr3541 = lshr i32 %2094, 2
  %or3542 = or i32 %shl3540, %shr3541
  %2095 = load i32, i32* %a, align 4
  %shl3543 = shl i32 %2095, 19
  %2096 = load i32, i32* %a, align 4
  %shr3544 = lshr i32 %2096, 13
  %or3545 = or i32 %shl3543, %shr3544
  %xor3546 = xor i32 %or3542, %or3545
  %2097 = load i32, i32* %a, align 4
  %shl3547 = shl i32 %2097, 10
  %2098 = load i32, i32* %a, align 4
  %shr3548 = lshr i32 %2098, 22
  %or3549 = or i32 %shl3547, %shr3548
  %xor3550 = xor i32 %xor3546, %or3549
  %2099 = load i32, i32* %a, align 4
  %2100 = load i32, i32* %b, align 4
  %and3551 = and i32 %2099, %2100
  %2101 = load i32, i32* %c, align 4
  %2102 = load i32, i32* %a, align 4
  %2103 = load i32, i32* %b, align 4
  %or3552 = or i32 %2102, %2103
  %and3553 = and i32 %2101, %or3552
  %or3554 = or i32 %and3551, %and3553
  %add3555 = add i32 %xor3550, %or3554
  store i32 %add3555, i32* %t0, align 4
  %2104 = load i32, i32* %h, align 4
  %2105 = load i32, i32* %e, align 4
  %shl3556 = shl i32 %2105, 26
  %2106 = load i32, i32* %e, align 4
  %shr3557 = lshr i32 %2106, 6
  %or3558 = or i32 %shl3556, %shr3557
  %2107 = load i32, i32* %e, align 4
  %shl3559 = shl i32 %2107, 21
  %2108 = load i32, i32* %e, align 4
  %shr3560 = lshr i32 %2108, 11
  %or3561 = or i32 %shl3559, %shr3560
  %xor3562 = xor i32 %or3558, %or3561
  %2109 = load i32, i32* %e, align 4
  %shl3563 = shl i32 %2109, 7
  %2110 = load i32, i32* %e, align 4
  %shr3564 = lshr i32 %2110, 25
  %or3565 = or i32 %shl3563, %shr3564
  %xor3566 = xor i32 %xor3562, %or3565
  %add3567 = add i32 %2104, %xor3566
  %2111 = load i32, i32* %g, align 4
  %2112 = load i32, i32* %e, align 4
  %2113 = load i32, i32* %f, align 4
  %2114 = load i32, i32* %g, align 4
  %xor3568 = xor i32 %2113, %2114
  %and3569 = and i32 %2112, %xor3568
  %xor3570 = xor i32 %2111, %and3569
  %add3571 = add i32 %add3567, %xor3570
  %2115 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 56), align 4
  %add3572 = add i32 %add3571, %2115
  %arrayidx3573 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2116 = load i32, i32* %arrayidx3573, align 4
  %shl3574 = shl i32 %2116, 15
  %arrayidx3575 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2117 = load i32, i32* %arrayidx3575, align 4
  %shr3576 = lshr i32 %2117, 17
  %or3577 = or i32 %shl3574, %shr3576
  %arrayidx3578 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2118 = load i32, i32* %arrayidx3578, align 4
  %shl3579 = shl i32 %2118, 13
  %arrayidx3580 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2119 = load i32, i32* %arrayidx3580, align 4
  %shr3581 = lshr i32 %2119, 19
  %or3582 = or i32 %shl3579, %shr3581
  %xor3583 = xor i32 %or3577, %or3582
  %arrayidx3584 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2120 = load i32, i32* %arrayidx3584, align 4
  %shr3585 = lshr i32 %2120, 10
  %xor3586 = xor i32 %xor3583, %shr3585
  %arrayidx3587 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %2121 = load i32, i32* %arrayidx3587, align 4
  %add3588 = add i32 %xor3586, %2121
  %arrayidx3589 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2122 = load i32, i32* %arrayidx3589, align 4
  %shl3590 = shl i32 %2122, 25
  %arrayidx3591 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2123 = load i32, i32* %arrayidx3591, align 4
  %shr3592 = lshr i32 %2123, 7
  %or3593 = or i32 %shl3590, %shr3592
  %arrayidx3594 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2124 = load i32, i32* %arrayidx3594, align 4
  %shl3595 = shl i32 %2124, 14
  %arrayidx3596 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2125 = load i32, i32* %arrayidx3596, align 4
  %shr3597 = lshr i32 %2125, 18
  %or3598 = or i32 %shl3595, %shr3597
  %xor3599 = xor i32 %or3593, %or3598
  %arrayidx3600 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2126 = load i32, i32* %arrayidx3600, align 4
  %shr3601 = lshr i32 %2126, 3
  %xor3602 = xor i32 %xor3599, %shr3601
  %add3603 = add i32 %add3588, %xor3602
  %arrayidx3604 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2127 = load i32, i32* %arrayidx3604, align 4
  %add3605 = add i32 %add3603, %2127
  store i32 %add3605, i32* %tm, align 4
  %2128 = load i32, i32* %tm, align 4
  %arrayidx3606 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %2128, i32* %arrayidx3606, align 4
  %add3607 = add i32 %add3572, %2128
  store i32 %add3607, i32* %t1, align 4
  %2129 = load i32, i32* %t1, align 4
  %2130 = load i32, i32* %d, align 4
  %add3608 = add i32 %2130, %2129
  store i32 %add3608, i32* %d, align 4
  %2131 = load i32, i32* %t0, align 4
  %2132 = load i32, i32* %t1, align 4
  %add3609 = add i32 %2131, %2132
  store i32 %add3609, i32* %h, align 4
  br label %do.end.3610

do.end.3610:                                      ; preds = %do.body.3539
  br label %do.body.3611

do.body.3611:                                     ; preds = %do.end.3610
  %2133 = load i32, i32* %h, align 4
  %shl3612 = shl i32 %2133, 30
  %2134 = load i32, i32* %h, align 4
  %shr3613 = lshr i32 %2134, 2
  %or3614 = or i32 %shl3612, %shr3613
  %2135 = load i32, i32* %h, align 4
  %shl3615 = shl i32 %2135, 19
  %2136 = load i32, i32* %h, align 4
  %shr3616 = lshr i32 %2136, 13
  %or3617 = or i32 %shl3615, %shr3616
  %xor3618 = xor i32 %or3614, %or3617
  %2137 = load i32, i32* %h, align 4
  %shl3619 = shl i32 %2137, 10
  %2138 = load i32, i32* %h, align 4
  %shr3620 = lshr i32 %2138, 22
  %or3621 = or i32 %shl3619, %shr3620
  %xor3622 = xor i32 %xor3618, %or3621
  %2139 = load i32, i32* %h, align 4
  %2140 = load i32, i32* %a, align 4
  %and3623 = and i32 %2139, %2140
  %2141 = load i32, i32* %b, align 4
  %2142 = load i32, i32* %h, align 4
  %2143 = load i32, i32* %a, align 4
  %or3624 = or i32 %2142, %2143
  %and3625 = and i32 %2141, %or3624
  %or3626 = or i32 %and3623, %and3625
  %add3627 = add i32 %xor3622, %or3626
  store i32 %add3627, i32* %t0, align 4
  %2144 = load i32, i32* %g, align 4
  %2145 = load i32, i32* %d, align 4
  %shl3628 = shl i32 %2145, 26
  %2146 = load i32, i32* %d, align 4
  %shr3629 = lshr i32 %2146, 6
  %or3630 = or i32 %shl3628, %shr3629
  %2147 = load i32, i32* %d, align 4
  %shl3631 = shl i32 %2147, 21
  %2148 = load i32, i32* %d, align 4
  %shr3632 = lshr i32 %2148, 11
  %or3633 = or i32 %shl3631, %shr3632
  %xor3634 = xor i32 %or3630, %or3633
  %2149 = load i32, i32* %d, align 4
  %shl3635 = shl i32 %2149, 7
  %2150 = load i32, i32* %d, align 4
  %shr3636 = lshr i32 %2150, 25
  %or3637 = or i32 %shl3635, %shr3636
  %xor3638 = xor i32 %xor3634, %or3637
  %add3639 = add i32 %2144, %xor3638
  %2151 = load i32, i32* %f, align 4
  %2152 = load i32, i32* %d, align 4
  %2153 = load i32, i32* %e, align 4
  %2154 = load i32, i32* %f, align 4
  %xor3640 = xor i32 %2153, %2154
  %and3641 = and i32 %2152, %xor3640
  %xor3642 = xor i32 %2151, %and3641
  %add3643 = add i32 %add3639, %xor3642
  %2155 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 57), align 4
  %add3644 = add i32 %add3643, %2155
  %arrayidx3645 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2156 = load i32, i32* %arrayidx3645, align 4
  %shl3646 = shl i32 %2156, 15
  %arrayidx3647 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2157 = load i32, i32* %arrayidx3647, align 4
  %shr3648 = lshr i32 %2157, 17
  %or3649 = or i32 %shl3646, %shr3648
  %arrayidx3650 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2158 = load i32, i32* %arrayidx3650, align 4
  %shl3651 = shl i32 %2158, 13
  %arrayidx3652 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2159 = load i32, i32* %arrayidx3652, align 4
  %shr3653 = lshr i32 %2159, 19
  %or3654 = or i32 %shl3651, %shr3653
  %xor3655 = xor i32 %or3649, %or3654
  %arrayidx3656 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2160 = load i32, i32* %arrayidx3656, align 4
  %shr3657 = lshr i32 %2160, 10
  %xor3658 = xor i32 %xor3655, %shr3657
  %arrayidx3659 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %2161 = load i32, i32* %arrayidx3659, align 4
  %add3660 = add i32 %xor3658, %2161
  %arrayidx3661 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2162 = load i32, i32* %arrayidx3661, align 4
  %shl3662 = shl i32 %2162, 25
  %arrayidx3663 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2163 = load i32, i32* %arrayidx3663, align 4
  %shr3664 = lshr i32 %2163, 7
  %or3665 = or i32 %shl3662, %shr3664
  %arrayidx3666 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2164 = load i32, i32* %arrayidx3666, align 4
  %shl3667 = shl i32 %2164, 14
  %arrayidx3668 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2165 = load i32, i32* %arrayidx3668, align 4
  %shr3669 = lshr i32 %2165, 18
  %or3670 = or i32 %shl3667, %shr3669
  %xor3671 = xor i32 %or3665, %or3670
  %arrayidx3672 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2166 = load i32, i32* %arrayidx3672, align 4
  %shr3673 = lshr i32 %2166, 3
  %xor3674 = xor i32 %xor3671, %shr3673
  %add3675 = add i32 %add3660, %xor3674
  %arrayidx3676 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2167 = load i32, i32* %arrayidx3676, align 4
  %add3677 = add i32 %add3675, %2167
  store i32 %add3677, i32* %tm, align 4
  %2168 = load i32, i32* %tm, align 4
  %arrayidx3678 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %2168, i32* %arrayidx3678, align 4
  %add3679 = add i32 %add3644, %2168
  store i32 %add3679, i32* %t1, align 4
  %2169 = load i32, i32* %t1, align 4
  %2170 = load i32, i32* %c, align 4
  %add3680 = add i32 %2170, %2169
  store i32 %add3680, i32* %c, align 4
  %2171 = load i32, i32* %t0, align 4
  %2172 = load i32, i32* %t1, align 4
  %add3681 = add i32 %2171, %2172
  store i32 %add3681, i32* %g, align 4
  br label %do.end.3682

do.end.3682:                                      ; preds = %do.body.3611
  br label %do.body.3683

do.body.3683:                                     ; preds = %do.end.3682
  %2173 = load i32, i32* %g, align 4
  %shl3684 = shl i32 %2173, 30
  %2174 = load i32, i32* %g, align 4
  %shr3685 = lshr i32 %2174, 2
  %or3686 = or i32 %shl3684, %shr3685
  %2175 = load i32, i32* %g, align 4
  %shl3687 = shl i32 %2175, 19
  %2176 = load i32, i32* %g, align 4
  %shr3688 = lshr i32 %2176, 13
  %or3689 = or i32 %shl3687, %shr3688
  %xor3690 = xor i32 %or3686, %or3689
  %2177 = load i32, i32* %g, align 4
  %shl3691 = shl i32 %2177, 10
  %2178 = load i32, i32* %g, align 4
  %shr3692 = lshr i32 %2178, 22
  %or3693 = or i32 %shl3691, %shr3692
  %xor3694 = xor i32 %xor3690, %or3693
  %2179 = load i32, i32* %g, align 4
  %2180 = load i32, i32* %h, align 4
  %and3695 = and i32 %2179, %2180
  %2181 = load i32, i32* %a, align 4
  %2182 = load i32, i32* %g, align 4
  %2183 = load i32, i32* %h, align 4
  %or3696 = or i32 %2182, %2183
  %and3697 = and i32 %2181, %or3696
  %or3698 = or i32 %and3695, %and3697
  %add3699 = add i32 %xor3694, %or3698
  store i32 %add3699, i32* %t0, align 4
  %2184 = load i32, i32* %f, align 4
  %2185 = load i32, i32* %c, align 4
  %shl3700 = shl i32 %2185, 26
  %2186 = load i32, i32* %c, align 4
  %shr3701 = lshr i32 %2186, 6
  %or3702 = or i32 %shl3700, %shr3701
  %2187 = load i32, i32* %c, align 4
  %shl3703 = shl i32 %2187, 21
  %2188 = load i32, i32* %c, align 4
  %shr3704 = lshr i32 %2188, 11
  %or3705 = or i32 %shl3703, %shr3704
  %xor3706 = xor i32 %or3702, %or3705
  %2189 = load i32, i32* %c, align 4
  %shl3707 = shl i32 %2189, 7
  %2190 = load i32, i32* %c, align 4
  %shr3708 = lshr i32 %2190, 25
  %or3709 = or i32 %shl3707, %shr3708
  %xor3710 = xor i32 %xor3706, %or3709
  %add3711 = add i32 %2184, %xor3710
  %2191 = load i32, i32* %e, align 4
  %2192 = load i32, i32* %c, align 4
  %2193 = load i32, i32* %d, align 4
  %2194 = load i32, i32* %e, align 4
  %xor3712 = xor i32 %2193, %2194
  %and3713 = and i32 %2192, %xor3712
  %xor3714 = xor i32 %2191, %and3713
  %add3715 = add i32 %add3711, %xor3714
  %2195 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 58), align 4
  %add3716 = add i32 %add3715, %2195
  %arrayidx3717 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2196 = load i32, i32* %arrayidx3717, align 4
  %shl3718 = shl i32 %2196, 15
  %arrayidx3719 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2197 = load i32, i32* %arrayidx3719, align 4
  %shr3720 = lshr i32 %2197, 17
  %or3721 = or i32 %shl3718, %shr3720
  %arrayidx3722 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2198 = load i32, i32* %arrayidx3722, align 4
  %shl3723 = shl i32 %2198, 13
  %arrayidx3724 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2199 = load i32, i32* %arrayidx3724, align 4
  %shr3725 = lshr i32 %2199, 19
  %or3726 = or i32 %shl3723, %shr3725
  %xor3727 = xor i32 %or3721, %or3726
  %arrayidx3728 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2200 = load i32, i32* %arrayidx3728, align 4
  %shr3729 = lshr i32 %2200, 10
  %xor3730 = xor i32 %xor3727, %shr3729
  %arrayidx3731 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %2201 = load i32, i32* %arrayidx3731, align 4
  %add3732 = add i32 %xor3730, %2201
  %arrayidx3733 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2202 = load i32, i32* %arrayidx3733, align 4
  %shl3734 = shl i32 %2202, 25
  %arrayidx3735 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2203 = load i32, i32* %arrayidx3735, align 4
  %shr3736 = lshr i32 %2203, 7
  %or3737 = or i32 %shl3734, %shr3736
  %arrayidx3738 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2204 = load i32, i32* %arrayidx3738, align 4
  %shl3739 = shl i32 %2204, 14
  %arrayidx3740 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2205 = load i32, i32* %arrayidx3740, align 4
  %shr3741 = lshr i32 %2205, 18
  %or3742 = or i32 %shl3739, %shr3741
  %xor3743 = xor i32 %or3737, %or3742
  %arrayidx3744 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2206 = load i32, i32* %arrayidx3744, align 4
  %shr3745 = lshr i32 %2206, 3
  %xor3746 = xor i32 %xor3743, %shr3745
  %add3747 = add i32 %add3732, %xor3746
  %arrayidx3748 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2207 = load i32, i32* %arrayidx3748, align 4
  %add3749 = add i32 %add3747, %2207
  store i32 %add3749, i32* %tm, align 4
  %2208 = load i32, i32* %tm, align 4
  %arrayidx3750 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %2208, i32* %arrayidx3750, align 4
  %add3751 = add i32 %add3716, %2208
  store i32 %add3751, i32* %t1, align 4
  %2209 = load i32, i32* %t1, align 4
  %2210 = load i32, i32* %b, align 4
  %add3752 = add i32 %2210, %2209
  store i32 %add3752, i32* %b, align 4
  %2211 = load i32, i32* %t0, align 4
  %2212 = load i32, i32* %t1, align 4
  %add3753 = add i32 %2211, %2212
  store i32 %add3753, i32* %f, align 4
  br label %do.end.3754

do.end.3754:                                      ; preds = %do.body.3683
  br label %do.body.3755

do.body.3755:                                     ; preds = %do.end.3754
  %2213 = load i32, i32* %f, align 4
  %shl3756 = shl i32 %2213, 30
  %2214 = load i32, i32* %f, align 4
  %shr3757 = lshr i32 %2214, 2
  %or3758 = or i32 %shl3756, %shr3757
  %2215 = load i32, i32* %f, align 4
  %shl3759 = shl i32 %2215, 19
  %2216 = load i32, i32* %f, align 4
  %shr3760 = lshr i32 %2216, 13
  %or3761 = or i32 %shl3759, %shr3760
  %xor3762 = xor i32 %or3758, %or3761
  %2217 = load i32, i32* %f, align 4
  %shl3763 = shl i32 %2217, 10
  %2218 = load i32, i32* %f, align 4
  %shr3764 = lshr i32 %2218, 22
  %or3765 = or i32 %shl3763, %shr3764
  %xor3766 = xor i32 %xor3762, %or3765
  %2219 = load i32, i32* %f, align 4
  %2220 = load i32, i32* %g, align 4
  %and3767 = and i32 %2219, %2220
  %2221 = load i32, i32* %h, align 4
  %2222 = load i32, i32* %f, align 4
  %2223 = load i32, i32* %g, align 4
  %or3768 = or i32 %2222, %2223
  %and3769 = and i32 %2221, %or3768
  %or3770 = or i32 %and3767, %and3769
  %add3771 = add i32 %xor3766, %or3770
  store i32 %add3771, i32* %t0, align 4
  %2224 = load i32, i32* %e, align 4
  %2225 = load i32, i32* %b, align 4
  %shl3772 = shl i32 %2225, 26
  %2226 = load i32, i32* %b, align 4
  %shr3773 = lshr i32 %2226, 6
  %or3774 = or i32 %shl3772, %shr3773
  %2227 = load i32, i32* %b, align 4
  %shl3775 = shl i32 %2227, 21
  %2228 = load i32, i32* %b, align 4
  %shr3776 = lshr i32 %2228, 11
  %or3777 = or i32 %shl3775, %shr3776
  %xor3778 = xor i32 %or3774, %or3777
  %2229 = load i32, i32* %b, align 4
  %shl3779 = shl i32 %2229, 7
  %2230 = load i32, i32* %b, align 4
  %shr3780 = lshr i32 %2230, 25
  %or3781 = or i32 %shl3779, %shr3780
  %xor3782 = xor i32 %xor3778, %or3781
  %add3783 = add i32 %2224, %xor3782
  %2231 = load i32, i32* %d, align 4
  %2232 = load i32, i32* %b, align 4
  %2233 = load i32, i32* %c, align 4
  %2234 = load i32, i32* %d, align 4
  %xor3784 = xor i32 %2233, %2234
  %and3785 = and i32 %2232, %xor3784
  %xor3786 = xor i32 %2231, %and3785
  %add3787 = add i32 %add3783, %xor3786
  %2235 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 59), align 4
  %add3788 = add i32 %add3787, %2235
  %arrayidx3789 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2236 = load i32, i32* %arrayidx3789, align 4
  %shl3790 = shl i32 %2236, 15
  %arrayidx3791 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2237 = load i32, i32* %arrayidx3791, align 4
  %shr3792 = lshr i32 %2237, 17
  %or3793 = or i32 %shl3790, %shr3792
  %arrayidx3794 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2238 = load i32, i32* %arrayidx3794, align 4
  %shl3795 = shl i32 %2238, 13
  %arrayidx3796 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2239 = load i32, i32* %arrayidx3796, align 4
  %shr3797 = lshr i32 %2239, 19
  %or3798 = or i32 %shl3795, %shr3797
  %xor3799 = xor i32 %or3793, %or3798
  %arrayidx3800 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %2240 = load i32, i32* %arrayidx3800, align 4
  %shr3801 = lshr i32 %2240, 10
  %xor3802 = xor i32 %xor3799, %shr3801
  %arrayidx3803 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %2241 = load i32, i32* %arrayidx3803, align 4
  %add3804 = add i32 %xor3802, %2241
  %arrayidx3805 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2242 = load i32, i32* %arrayidx3805, align 4
  %shl3806 = shl i32 %2242, 25
  %arrayidx3807 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2243 = load i32, i32* %arrayidx3807, align 4
  %shr3808 = lshr i32 %2243, 7
  %or3809 = or i32 %shl3806, %shr3808
  %arrayidx3810 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2244 = load i32, i32* %arrayidx3810, align 4
  %shl3811 = shl i32 %2244, 14
  %arrayidx3812 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2245 = load i32, i32* %arrayidx3812, align 4
  %shr3813 = lshr i32 %2245, 18
  %or3814 = or i32 %shl3811, %shr3813
  %xor3815 = xor i32 %or3809, %or3814
  %arrayidx3816 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2246 = load i32, i32* %arrayidx3816, align 4
  %shr3817 = lshr i32 %2246, 3
  %xor3818 = xor i32 %xor3815, %shr3817
  %add3819 = add i32 %add3804, %xor3818
  %arrayidx3820 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2247 = load i32, i32* %arrayidx3820, align 4
  %add3821 = add i32 %add3819, %2247
  store i32 %add3821, i32* %tm, align 4
  %2248 = load i32, i32* %tm, align 4
  %arrayidx3822 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %2248, i32* %arrayidx3822, align 4
  %add3823 = add i32 %add3788, %2248
  store i32 %add3823, i32* %t1, align 4
  %2249 = load i32, i32* %t1, align 4
  %2250 = load i32, i32* %a, align 4
  %add3824 = add i32 %2250, %2249
  store i32 %add3824, i32* %a, align 4
  %2251 = load i32, i32* %t0, align 4
  %2252 = load i32, i32* %t1, align 4
  %add3825 = add i32 %2251, %2252
  store i32 %add3825, i32* %e, align 4
  br label %do.end.3826

do.end.3826:                                      ; preds = %do.body.3755
  br label %do.body.3827

do.body.3827:                                     ; preds = %do.end.3826
  %2253 = load i32, i32* %e, align 4
  %shl3828 = shl i32 %2253, 30
  %2254 = load i32, i32* %e, align 4
  %shr3829 = lshr i32 %2254, 2
  %or3830 = or i32 %shl3828, %shr3829
  %2255 = load i32, i32* %e, align 4
  %shl3831 = shl i32 %2255, 19
  %2256 = load i32, i32* %e, align 4
  %shr3832 = lshr i32 %2256, 13
  %or3833 = or i32 %shl3831, %shr3832
  %xor3834 = xor i32 %or3830, %or3833
  %2257 = load i32, i32* %e, align 4
  %shl3835 = shl i32 %2257, 10
  %2258 = load i32, i32* %e, align 4
  %shr3836 = lshr i32 %2258, 22
  %or3837 = or i32 %shl3835, %shr3836
  %xor3838 = xor i32 %xor3834, %or3837
  %2259 = load i32, i32* %e, align 4
  %2260 = load i32, i32* %f, align 4
  %and3839 = and i32 %2259, %2260
  %2261 = load i32, i32* %g, align 4
  %2262 = load i32, i32* %e, align 4
  %2263 = load i32, i32* %f, align 4
  %or3840 = or i32 %2262, %2263
  %and3841 = and i32 %2261, %or3840
  %or3842 = or i32 %and3839, %and3841
  %add3843 = add i32 %xor3838, %or3842
  store i32 %add3843, i32* %t0, align 4
  %2264 = load i32, i32* %d, align 4
  %2265 = load i32, i32* %a, align 4
  %shl3844 = shl i32 %2265, 26
  %2266 = load i32, i32* %a, align 4
  %shr3845 = lshr i32 %2266, 6
  %or3846 = or i32 %shl3844, %shr3845
  %2267 = load i32, i32* %a, align 4
  %shl3847 = shl i32 %2267, 21
  %2268 = load i32, i32* %a, align 4
  %shr3848 = lshr i32 %2268, 11
  %or3849 = or i32 %shl3847, %shr3848
  %xor3850 = xor i32 %or3846, %or3849
  %2269 = load i32, i32* %a, align 4
  %shl3851 = shl i32 %2269, 7
  %2270 = load i32, i32* %a, align 4
  %shr3852 = lshr i32 %2270, 25
  %or3853 = or i32 %shl3851, %shr3852
  %xor3854 = xor i32 %xor3850, %or3853
  %add3855 = add i32 %2264, %xor3854
  %2271 = load i32, i32* %c, align 4
  %2272 = load i32, i32* %a, align 4
  %2273 = load i32, i32* %b, align 4
  %2274 = load i32, i32* %c, align 4
  %xor3856 = xor i32 %2273, %2274
  %and3857 = and i32 %2272, %xor3856
  %xor3858 = xor i32 %2271, %and3857
  %add3859 = add i32 %add3855, %xor3858
  %2275 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 60), align 4
  %add3860 = add i32 %add3859, %2275
  %arrayidx3861 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2276 = load i32, i32* %arrayidx3861, align 4
  %shl3862 = shl i32 %2276, 15
  %arrayidx3863 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2277 = load i32, i32* %arrayidx3863, align 4
  %shr3864 = lshr i32 %2277, 17
  %or3865 = or i32 %shl3862, %shr3864
  %arrayidx3866 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2278 = load i32, i32* %arrayidx3866, align 4
  %shl3867 = shl i32 %2278, 13
  %arrayidx3868 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2279 = load i32, i32* %arrayidx3868, align 4
  %shr3869 = lshr i32 %2279, 19
  %or3870 = or i32 %shl3867, %shr3869
  %xor3871 = xor i32 %or3865, %or3870
  %arrayidx3872 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %2280 = load i32, i32* %arrayidx3872, align 4
  %shr3873 = lshr i32 %2280, 10
  %xor3874 = xor i32 %xor3871, %shr3873
  %arrayidx3875 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %2281 = load i32, i32* %arrayidx3875, align 4
  %add3876 = add i32 %xor3874, %2281
  %arrayidx3877 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2282 = load i32, i32* %arrayidx3877, align 4
  %shl3878 = shl i32 %2282, 25
  %arrayidx3879 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2283 = load i32, i32* %arrayidx3879, align 4
  %shr3880 = lshr i32 %2283, 7
  %or3881 = or i32 %shl3878, %shr3880
  %arrayidx3882 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2284 = load i32, i32* %arrayidx3882, align 4
  %shl3883 = shl i32 %2284, 14
  %arrayidx3884 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2285 = load i32, i32* %arrayidx3884, align 4
  %shr3885 = lshr i32 %2285, 18
  %or3886 = or i32 %shl3883, %shr3885
  %xor3887 = xor i32 %or3881, %or3886
  %arrayidx3888 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2286 = load i32, i32* %arrayidx3888, align 4
  %shr3889 = lshr i32 %2286, 3
  %xor3890 = xor i32 %xor3887, %shr3889
  %add3891 = add i32 %add3876, %xor3890
  %arrayidx3892 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2287 = load i32, i32* %arrayidx3892, align 4
  %add3893 = add i32 %add3891, %2287
  store i32 %add3893, i32* %tm, align 4
  %2288 = load i32, i32* %tm, align 4
  %arrayidx3894 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %2288, i32* %arrayidx3894, align 4
  %add3895 = add i32 %add3860, %2288
  store i32 %add3895, i32* %t1, align 4
  %2289 = load i32, i32* %t1, align 4
  %2290 = load i32, i32* %h, align 4
  %add3896 = add i32 %2290, %2289
  store i32 %add3896, i32* %h, align 4
  %2291 = load i32, i32* %t0, align 4
  %2292 = load i32, i32* %t1, align 4
  %add3897 = add i32 %2291, %2292
  store i32 %add3897, i32* %d, align 4
  br label %do.end.3898

do.end.3898:                                      ; preds = %do.body.3827
  br label %do.body.3899

do.body.3899:                                     ; preds = %do.end.3898
  %2293 = load i32, i32* %d, align 4
  %shl3900 = shl i32 %2293, 30
  %2294 = load i32, i32* %d, align 4
  %shr3901 = lshr i32 %2294, 2
  %or3902 = or i32 %shl3900, %shr3901
  %2295 = load i32, i32* %d, align 4
  %shl3903 = shl i32 %2295, 19
  %2296 = load i32, i32* %d, align 4
  %shr3904 = lshr i32 %2296, 13
  %or3905 = or i32 %shl3903, %shr3904
  %xor3906 = xor i32 %or3902, %or3905
  %2297 = load i32, i32* %d, align 4
  %shl3907 = shl i32 %2297, 10
  %2298 = load i32, i32* %d, align 4
  %shr3908 = lshr i32 %2298, 22
  %or3909 = or i32 %shl3907, %shr3908
  %xor3910 = xor i32 %xor3906, %or3909
  %2299 = load i32, i32* %d, align 4
  %2300 = load i32, i32* %e, align 4
  %and3911 = and i32 %2299, %2300
  %2301 = load i32, i32* %f, align 4
  %2302 = load i32, i32* %d, align 4
  %2303 = load i32, i32* %e, align 4
  %or3912 = or i32 %2302, %2303
  %and3913 = and i32 %2301, %or3912
  %or3914 = or i32 %and3911, %and3913
  %add3915 = add i32 %xor3910, %or3914
  store i32 %add3915, i32* %t0, align 4
  %2304 = load i32, i32* %c, align 4
  %2305 = load i32, i32* %h, align 4
  %shl3916 = shl i32 %2305, 26
  %2306 = load i32, i32* %h, align 4
  %shr3917 = lshr i32 %2306, 6
  %or3918 = or i32 %shl3916, %shr3917
  %2307 = load i32, i32* %h, align 4
  %shl3919 = shl i32 %2307, 21
  %2308 = load i32, i32* %h, align 4
  %shr3920 = lshr i32 %2308, 11
  %or3921 = or i32 %shl3919, %shr3920
  %xor3922 = xor i32 %or3918, %or3921
  %2309 = load i32, i32* %h, align 4
  %shl3923 = shl i32 %2309, 7
  %2310 = load i32, i32* %h, align 4
  %shr3924 = lshr i32 %2310, 25
  %or3925 = or i32 %shl3923, %shr3924
  %xor3926 = xor i32 %xor3922, %or3925
  %add3927 = add i32 %2304, %xor3926
  %2311 = load i32, i32* %b, align 4
  %2312 = load i32, i32* %h, align 4
  %2313 = load i32, i32* %a, align 4
  %2314 = load i32, i32* %b, align 4
  %xor3928 = xor i32 %2313, %2314
  %and3929 = and i32 %2312, %xor3928
  %xor3930 = xor i32 %2311, %and3929
  %add3931 = add i32 %add3927, %xor3930
  %2315 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 61), align 4
  %add3932 = add i32 %add3931, %2315
  %arrayidx3933 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2316 = load i32, i32* %arrayidx3933, align 4
  %shl3934 = shl i32 %2316, 15
  %arrayidx3935 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2317 = load i32, i32* %arrayidx3935, align 4
  %shr3936 = lshr i32 %2317, 17
  %or3937 = or i32 %shl3934, %shr3936
  %arrayidx3938 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2318 = load i32, i32* %arrayidx3938, align 4
  %shl3939 = shl i32 %2318, 13
  %arrayidx3940 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2319 = load i32, i32* %arrayidx3940, align 4
  %shr3941 = lshr i32 %2319, 19
  %or3942 = or i32 %shl3939, %shr3941
  %xor3943 = xor i32 %or3937, %or3942
  %arrayidx3944 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %2320 = load i32, i32* %arrayidx3944, align 4
  %shr3945 = lshr i32 %2320, 10
  %xor3946 = xor i32 %xor3943, %shr3945
  %arrayidx3947 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %2321 = load i32, i32* %arrayidx3947, align 4
  %add3948 = add i32 %xor3946, %2321
  %arrayidx3949 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2322 = load i32, i32* %arrayidx3949, align 4
  %shl3950 = shl i32 %2322, 25
  %arrayidx3951 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2323 = load i32, i32* %arrayidx3951, align 4
  %shr3952 = lshr i32 %2323, 7
  %or3953 = or i32 %shl3950, %shr3952
  %arrayidx3954 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2324 = load i32, i32* %arrayidx3954, align 4
  %shl3955 = shl i32 %2324, 14
  %arrayidx3956 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2325 = load i32, i32* %arrayidx3956, align 4
  %shr3957 = lshr i32 %2325, 18
  %or3958 = or i32 %shl3955, %shr3957
  %xor3959 = xor i32 %or3953, %or3958
  %arrayidx3960 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2326 = load i32, i32* %arrayidx3960, align 4
  %shr3961 = lshr i32 %2326, 3
  %xor3962 = xor i32 %xor3959, %shr3961
  %add3963 = add i32 %add3948, %xor3962
  %arrayidx3964 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2327 = load i32, i32* %arrayidx3964, align 4
  %add3965 = add i32 %add3963, %2327
  store i32 %add3965, i32* %tm, align 4
  %2328 = load i32, i32* %tm, align 4
  %arrayidx3966 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %2328, i32* %arrayidx3966, align 4
  %add3967 = add i32 %add3932, %2328
  store i32 %add3967, i32* %t1, align 4
  %2329 = load i32, i32* %t1, align 4
  %2330 = load i32, i32* %g, align 4
  %add3968 = add i32 %2330, %2329
  store i32 %add3968, i32* %g, align 4
  %2331 = load i32, i32* %t0, align 4
  %2332 = load i32, i32* %t1, align 4
  %add3969 = add i32 %2331, %2332
  store i32 %add3969, i32* %c, align 4
  br label %do.end.3970

do.end.3970:                                      ; preds = %do.body.3899
  br label %do.body.3971

do.body.3971:                                     ; preds = %do.end.3970
  %2333 = load i32, i32* %c, align 4
  %shl3972 = shl i32 %2333, 30
  %2334 = load i32, i32* %c, align 4
  %shr3973 = lshr i32 %2334, 2
  %or3974 = or i32 %shl3972, %shr3973
  %2335 = load i32, i32* %c, align 4
  %shl3975 = shl i32 %2335, 19
  %2336 = load i32, i32* %c, align 4
  %shr3976 = lshr i32 %2336, 13
  %or3977 = or i32 %shl3975, %shr3976
  %xor3978 = xor i32 %or3974, %or3977
  %2337 = load i32, i32* %c, align 4
  %shl3979 = shl i32 %2337, 10
  %2338 = load i32, i32* %c, align 4
  %shr3980 = lshr i32 %2338, 22
  %or3981 = or i32 %shl3979, %shr3980
  %xor3982 = xor i32 %xor3978, %or3981
  %2339 = load i32, i32* %c, align 4
  %2340 = load i32, i32* %d, align 4
  %and3983 = and i32 %2339, %2340
  %2341 = load i32, i32* %e, align 4
  %2342 = load i32, i32* %c, align 4
  %2343 = load i32, i32* %d, align 4
  %or3984 = or i32 %2342, %2343
  %and3985 = and i32 %2341, %or3984
  %or3986 = or i32 %and3983, %and3985
  %add3987 = add i32 %xor3982, %or3986
  store i32 %add3987, i32* %t0, align 4
  %2344 = load i32, i32* %b, align 4
  %2345 = load i32, i32* %g, align 4
  %shl3988 = shl i32 %2345, 26
  %2346 = load i32, i32* %g, align 4
  %shr3989 = lshr i32 %2346, 6
  %or3990 = or i32 %shl3988, %shr3989
  %2347 = load i32, i32* %g, align 4
  %shl3991 = shl i32 %2347, 21
  %2348 = load i32, i32* %g, align 4
  %shr3992 = lshr i32 %2348, 11
  %or3993 = or i32 %shl3991, %shr3992
  %xor3994 = xor i32 %or3990, %or3993
  %2349 = load i32, i32* %g, align 4
  %shl3995 = shl i32 %2349, 7
  %2350 = load i32, i32* %g, align 4
  %shr3996 = lshr i32 %2350, 25
  %or3997 = or i32 %shl3995, %shr3996
  %xor3998 = xor i32 %xor3994, %or3997
  %add3999 = add i32 %2344, %xor3998
  %2351 = load i32, i32* %a, align 4
  %2352 = load i32, i32* %g, align 4
  %2353 = load i32, i32* %h, align 4
  %2354 = load i32, i32* %a, align 4
  %xor4000 = xor i32 %2353, %2354
  %and4001 = and i32 %2352, %xor4000
  %xor4002 = xor i32 %2351, %and4001
  %add4003 = add i32 %add3999, %xor4002
  %2355 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 62), align 4
  %add4004 = add i32 %add4003, %2355
  %arrayidx4005 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2356 = load i32, i32* %arrayidx4005, align 4
  %shl4006 = shl i32 %2356, 15
  %arrayidx4007 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2357 = load i32, i32* %arrayidx4007, align 4
  %shr4008 = lshr i32 %2357, 17
  %or4009 = or i32 %shl4006, %shr4008
  %arrayidx4010 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2358 = load i32, i32* %arrayidx4010, align 4
  %shl4011 = shl i32 %2358, 13
  %arrayidx4012 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2359 = load i32, i32* %arrayidx4012, align 4
  %shr4013 = lshr i32 %2359, 19
  %or4014 = or i32 %shl4011, %shr4013
  %xor4015 = xor i32 %or4009, %or4014
  %arrayidx4016 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %2360 = load i32, i32* %arrayidx4016, align 4
  %shr4017 = lshr i32 %2360, 10
  %xor4018 = xor i32 %xor4015, %shr4017
  %arrayidx4019 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %2361 = load i32, i32* %arrayidx4019, align 4
  %add4020 = add i32 %xor4018, %2361
  %arrayidx4021 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2362 = load i32, i32* %arrayidx4021, align 4
  %shl4022 = shl i32 %2362, 25
  %arrayidx4023 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2363 = load i32, i32* %arrayidx4023, align 4
  %shr4024 = lshr i32 %2363, 7
  %or4025 = or i32 %shl4022, %shr4024
  %arrayidx4026 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2364 = load i32, i32* %arrayidx4026, align 4
  %shl4027 = shl i32 %2364, 14
  %arrayidx4028 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2365 = load i32, i32* %arrayidx4028, align 4
  %shr4029 = lshr i32 %2365, 18
  %or4030 = or i32 %shl4027, %shr4029
  %xor4031 = xor i32 %or4025, %or4030
  %arrayidx4032 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2366 = load i32, i32* %arrayidx4032, align 4
  %shr4033 = lshr i32 %2366, 3
  %xor4034 = xor i32 %xor4031, %shr4033
  %add4035 = add i32 %add4020, %xor4034
  %arrayidx4036 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %2367 = load i32, i32* %arrayidx4036, align 4
  %add4037 = add i32 %add4035, %2367
  store i32 %add4037, i32* %tm, align 4
  %2368 = load i32, i32* %tm, align 4
  %arrayidx4038 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %2368, i32* %arrayidx4038, align 4
  %add4039 = add i32 %add4004, %2368
  store i32 %add4039, i32* %t1, align 4
  %2369 = load i32, i32* %t1, align 4
  %2370 = load i32, i32* %f, align 4
  %add4040 = add i32 %2370, %2369
  store i32 %add4040, i32* %f, align 4
  %2371 = load i32, i32* %t0, align 4
  %2372 = load i32, i32* %t1, align 4
  %add4041 = add i32 %2371, %2372
  store i32 %add4041, i32* %b, align 4
  br label %do.end.4042

do.end.4042:                                      ; preds = %do.body.3971
  br label %do.body.4043

do.body.4043:                                     ; preds = %do.end.4042
  %2373 = load i32, i32* %b, align 4
  %shl4044 = shl i32 %2373, 30
  %2374 = load i32, i32* %b, align 4
  %shr4045 = lshr i32 %2374, 2
  %or4046 = or i32 %shl4044, %shr4045
  %2375 = load i32, i32* %b, align 4
  %shl4047 = shl i32 %2375, 19
  %2376 = load i32, i32* %b, align 4
  %shr4048 = lshr i32 %2376, 13
  %or4049 = or i32 %shl4047, %shr4048
  %xor4050 = xor i32 %or4046, %or4049
  %2377 = load i32, i32* %b, align 4
  %shl4051 = shl i32 %2377, 10
  %2378 = load i32, i32* %b, align 4
  %shr4052 = lshr i32 %2378, 22
  %or4053 = or i32 %shl4051, %shr4052
  %xor4054 = xor i32 %xor4050, %or4053
  %2379 = load i32, i32* %b, align 4
  %2380 = load i32, i32* %c, align 4
  %and4055 = and i32 %2379, %2380
  %2381 = load i32, i32* %d, align 4
  %2382 = load i32, i32* %b, align 4
  %2383 = load i32, i32* %c, align 4
  %or4056 = or i32 %2382, %2383
  %and4057 = and i32 %2381, %or4056
  %or4058 = or i32 %and4055, %and4057
  %add4059 = add i32 %xor4054, %or4058
  store i32 %add4059, i32* %t0, align 4
  %2384 = load i32, i32* %a, align 4
  %2385 = load i32, i32* %f, align 4
  %shl4060 = shl i32 %2385, 26
  %2386 = load i32, i32* %f, align 4
  %shr4061 = lshr i32 %2386, 6
  %or4062 = or i32 %shl4060, %shr4061
  %2387 = load i32, i32* %f, align 4
  %shl4063 = shl i32 %2387, 21
  %2388 = load i32, i32* %f, align 4
  %shr4064 = lshr i32 %2388, 11
  %or4065 = or i32 %shl4063, %shr4064
  %xor4066 = xor i32 %or4062, %or4065
  %2389 = load i32, i32* %f, align 4
  %shl4067 = shl i32 %2389, 7
  %2390 = load i32, i32* %f, align 4
  %shr4068 = lshr i32 %2390, 25
  %or4069 = or i32 %shl4067, %shr4068
  %xor4070 = xor i32 %xor4066, %or4069
  %add4071 = add i32 %2384, %xor4070
  %2391 = load i32, i32* %h, align 4
  %2392 = load i32, i32* %f, align 4
  %2393 = load i32, i32* %g, align 4
  %2394 = load i32, i32* %h, align 4
  %xor4072 = xor i32 %2393, %2394
  %and4073 = and i32 %2392, %xor4072
  %xor4074 = xor i32 %2391, %and4073
  %add4075 = add i32 %add4071, %xor4074
  %2395 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sha256_round_constants, i32 0, i64 63), align 4
  %add4076 = add i32 %add4075, %2395
  %arrayidx4077 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2396 = load i32, i32* %arrayidx4077, align 4
  %shl4078 = shl i32 %2396, 15
  %arrayidx4079 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2397 = load i32, i32* %arrayidx4079, align 4
  %shr4080 = lshr i32 %2397, 17
  %or4081 = or i32 %shl4078, %shr4080
  %arrayidx4082 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2398 = load i32, i32* %arrayidx4082, align 4
  %shl4083 = shl i32 %2398, 13
  %arrayidx4084 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2399 = load i32, i32* %arrayidx4084, align 4
  %shr4085 = lshr i32 %2399, 19
  %or4086 = or i32 %shl4083, %shr4085
  %xor4087 = xor i32 %or4081, %or4086
  %arrayidx4088 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %2400 = load i32, i32* %arrayidx4088, align 4
  %shr4089 = lshr i32 %2400, 10
  %xor4090 = xor i32 %xor4087, %shr4089
  %arrayidx4091 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %2401 = load i32, i32* %arrayidx4091, align 4
  %add4092 = add i32 %xor4090, %2401
  %arrayidx4093 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2402 = load i32, i32* %arrayidx4093, align 4
  %shl4094 = shl i32 %2402, 25
  %arrayidx4095 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2403 = load i32, i32* %arrayidx4095, align 4
  %shr4096 = lshr i32 %2403, 7
  %or4097 = or i32 %shl4094, %shr4096
  %arrayidx4098 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2404 = load i32, i32* %arrayidx4098, align 4
  %shl4099 = shl i32 %2404, 14
  %arrayidx4100 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2405 = load i32, i32* %arrayidx4100, align 4
  %shr4101 = lshr i32 %2405, 18
  %or4102 = or i32 %shl4099, %shr4101
  %xor4103 = xor i32 %or4097, %or4102
  %arrayidx4104 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %2406 = load i32, i32* %arrayidx4104, align 4
  %shr4105 = lshr i32 %2406, 3
  %xor4106 = xor i32 %xor4103, %shr4105
  %add4107 = add i32 %add4092, %xor4106
  %arrayidx4108 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %2407 = load i32, i32* %arrayidx4108, align 4
  %add4109 = add i32 %add4107, %2407
  store i32 %add4109, i32* %tm, align 4
  %2408 = load i32, i32* %tm, align 4
  %arrayidx4110 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %2408, i32* %arrayidx4110, align 4
  %add4111 = add i32 %add4076, %2408
  store i32 %add4111, i32* %t1, align 4
  %2409 = load i32, i32* %t1, align 4
  %2410 = load i32, i32* %e, align 4
  %add4112 = add i32 %2410, %2409
  store i32 %add4112, i32* %e, align 4
  %2411 = load i32, i32* %t0, align 4
  %2412 = load i32, i32* %t1, align 4
  %add4113 = add i32 %2411, %2412
  store i32 %add4113, i32* %a, align 4
  br label %do.end.4114

do.end.4114:                                      ; preds = %do.body.4043
  %2413 = load i32, i32* %a, align 4
  %2414 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4115 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2414, i32 0, i32 0
  %arrayidx4116 = getelementptr inbounds [8 x i32], [8 x i32]* %state4115, i32 0, i64 0
  %2415 = load i32, i32* %arrayidx4116, align 4
  %add4117 = add i32 %2415, %2413
  store i32 %add4117, i32* %arrayidx4116, align 4
  store i32 %add4117, i32* %a, align 4
  %2416 = load i32, i32* %b, align 4
  %2417 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4118 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2417, i32 0, i32 0
  %arrayidx4119 = getelementptr inbounds [8 x i32], [8 x i32]* %state4118, i32 0, i64 1
  %2418 = load i32, i32* %arrayidx4119, align 4
  %add4120 = add i32 %2418, %2416
  store i32 %add4120, i32* %arrayidx4119, align 4
  store i32 %add4120, i32* %b, align 4
  %2419 = load i32, i32* %c, align 4
  %2420 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4121 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2420, i32 0, i32 0
  %arrayidx4122 = getelementptr inbounds [8 x i32], [8 x i32]* %state4121, i32 0, i64 2
  %2421 = load i32, i32* %arrayidx4122, align 4
  %add4123 = add i32 %2421, %2419
  store i32 %add4123, i32* %arrayidx4122, align 4
  store i32 %add4123, i32* %c, align 4
  %2422 = load i32, i32* %d, align 4
  %2423 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4124 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2423, i32 0, i32 0
  %arrayidx4125 = getelementptr inbounds [8 x i32], [8 x i32]* %state4124, i32 0, i64 3
  %2424 = load i32, i32* %arrayidx4125, align 4
  %add4126 = add i32 %2424, %2422
  store i32 %add4126, i32* %arrayidx4125, align 4
  store i32 %add4126, i32* %d, align 4
  %2425 = load i32, i32* %e, align 4
  %2426 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4127 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2426, i32 0, i32 0
  %arrayidx4128 = getelementptr inbounds [8 x i32], [8 x i32]* %state4127, i32 0, i64 4
  %2427 = load i32, i32* %arrayidx4128, align 4
  %add4129 = add i32 %2427, %2425
  store i32 %add4129, i32* %arrayidx4128, align 4
  store i32 %add4129, i32* %e, align 4
  %2428 = load i32, i32* %f, align 4
  %2429 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4130 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2429, i32 0, i32 0
  %arrayidx4131 = getelementptr inbounds [8 x i32], [8 x i32]* %state4130, i32 0, i64 5
  %2430 = load i32, i32* %arrayidx4131, align 4
  %add4132 = add i32 %2430, %2428
  store i32 %add4132, i32* %arrayidx4131, align 4
  store i32 %add4132, i32* %f, align 4
  %2431 = load i32, i32* %g, align 4
  %2432 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4133 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2432, i32 0, i32 0
  %arrayidx4134 = getelementptr inbounds [8 x i32], [8 x i32]* %state4133, i32 0, i64 6
  %2433 = load i32, i32* %arrayidx4134, align 4
  %add4135 = add i32 %2433, %2431
  store i32 %add4135, i32* %arrayidx4134, align 4
  store i32 %add4135, i32* %g, align 4
  %2434 = load i32, i32* %h, align 4
  %2435 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %state4136 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2435, i32 0, i32 0
  %arrayidx4137 = getelementptr inbounds [8 x i32], [8 x i32]* %state4136, i32 0, i64 7
  %2436 = load i32, i32* %arrayidx4137, align 4
  %add4138 = add i32 %2436, %2434
  store i32 %add4138, i32* %arrayidx4137, align 4
  store i32 %add4138, i32* %h, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha256_process_bytes(i8* %buffer, i64 %len, %struct.sha256_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha256_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  %left_over40 = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha256_ctx* %ctx, %struct.sha256_ctx** %ctx.addr, align 8
  %0 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i32 0, i32 2
  %1 = load i64, i64* %buflen, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %2 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen1 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i32 0, i32 2
  %3 = load i64, i64* %buflen1, align 8
  store i64 %3, i64* %left_over, align 8
  %4 = load i64, i64* %left_over, align 8
  %sub = sub i64 128, %4
  %5 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ugt i64 %sub, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i64, i64* %left_over, align 8
  %sub3 = sub i64 128, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %sub3, %cond.false ]
  store i64 %cond, i64* %add, align 8
  %8 = load i64, i64* %left_over, align 8
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer4 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 3
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer4, i32 0, i32 0
  %10 = bitcast i32* %arraydecay to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %8
  %11 = load i8*, i8** %buffer.addr, align 8
  %12 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %add, align 8
  %14 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %14, i32 0, i32 2
  %15 = load i64, i64* %buflen5, align 8
  %add6 = add i64 %15, %13
  store i64 %add6, i64* %buflen5, align 8
  %16 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %16, i32 0, i32 2
  %17 = load i64, i64* %buflen7, align 8
  %cmp8 = icmp ugt i64 %17, 64
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %cond.end
  %18 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer10 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %18, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer10, i32 0, i32 0
  %19 = bitcast i32* %arraydecay11 to i8*
  %20 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen12 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %20, i32 0, i32 2
  %21 = load i64, i64* %buflen12, align 8
  %and = and i64 %21, -64
  %22 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_process_block(i8* %19, i64 %and, %struct.sha256_ctx* %22)
  %23 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %23, i32 0, i32 2
  %24 = load i64, i64* %buflen13, align 8
  %and14 = and i64 %24, 63
  store i64 %and14, i64* %buflen13, align 8
  %25 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer15 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %25, i32 0, i32 3
  %26 = bitcast [32 x i32]* %buffer15 to i8*
  %27 = load i64, i64* %left_over, align 8
  %28 = load i64, i64* %add, align 8
  %add16 = add i64 %27, %28
  %and17 = and i64 %add16, -64
  %29 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %29, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer18, i32 0, i32 0
  %30 = bitcast i32* %arraydecay19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %and17
  %31 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen21 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %31, i32 0, i32 2
  %32 = load i64, i64* %buflen21, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %arrayidx20, i64 %32, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %cond.end
  %33 = load i8*, i8** %buffer.addr, align 8
  %34 = load i64, i64* %add, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %35 = load i64, i64* %add, align 8
  %36 = load i64, i64* %len.addr, align 8
  %sub22 = sub i64 %36, %35
  store i64 %sub22, i64* %len.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %entry
  %37 = load i64, i64* %len.addr, align 8
  %cmp24 = icmp uge i64 %37, 64
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end.23
  %38 = load i8*, i8** %buffer.addr, align 8
  %39 = ptrtoint i8* %38 to i64
  %rem = urem i64 %39, 4
  %cmp26 = icmp ne i64 %rem, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.27
  %40 = load i64, i64* %len.addr, align 8
  %cmp28 = icmp ugt i64 %40, 64
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer29 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %41, i32 0, i32 3
  %42 = bitcast [32 x i32]* %buffer29 to i8*
  %43 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 1, i1 false)
  %44 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_process_block(i8* %42, i64 64, %struct.sha256_ctx* %44)
  %45 = load i8*, i8** %buffer.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %45, i64 64
  store i8* %add.ptr30, i8** %buffer.addr, align 8
  %46 = load i64, i64* %len.addr, align 8
  %sub31 = sub i64 %46, 64
  store i64 %sub31, i64* %len.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.36

if.else:                                          ; preds = %if.then.25
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i64, i64* %len.addr, align 8
  %and32 = and i64 %48, -64
  %49 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_process_block(i8* %47, i64 %and32, %struct.sha256_ctx* %49)
  %50 = load i8*, i8** %buffer.addr, align 8
  %51 = load i64, i64* %len.addr, align 8
  %and33 = and i64 %51, -64
  %add.ptr34 = getelementptr inbounds i8, i8* %50, i64 %and33
  store i8* %add.ptr34, i8** %buffer.addr, align 8
  %52 = load i64, i64* %len.addr, align 8
  %and35 = and i64 %52, 63
  store i64 %and35, i64* %len.addr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %while.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.23
  %53 = load i64, i64* %len.addr, align 8
  %cmp38 = icmp ugt i64 %53, 0
  br i1 %cmp38, label %if.then.39, label %if.end.56

if.then.39:                                       ; preds = %if.end.37
  %54 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen41 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %54, i32 0, i32 2
  %55 = load i64, i64* %buflen41, align 8
  store i64 %55, i64* %left_over40, align 8
  %56 = load i64, i64* %left_over40, align 8
  %57 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer42 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %57, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer42, i32 0, i32 0
  %58 = bitcast i32* %arraydecay43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %58, i64 %56
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx44, i8* %59, i64 %60, i32 1, i1 false)
  %61 = load i64, i64* %len.addr, align 8
  %62 = load i64, i64* %left_over40, align 8
  %add45 = add i64 %62, %61
  store i64 %add45, i64* %left_over40, align 8
  %63 = load i64, i64* %left_over40, align 8
  %cmp46 = icmp uge i64 %63, 64
  br i1 %cmp46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.then.39
  %64 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer48 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %64, i32 0, i32 3
  %arraydecay49 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer48, i32 0, i32 0
  %65 = bitcast i32* %arraydecay49 to i8*
  %66 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  call void @sha256_process_block(i8* %65, i64 64, %struct.sha256_ctx* %66)
  %67 = load i64, i64* %left_over40, align 8
  %sub50 = sub i64 %67, 64
  store i64 %sub50, i64* %left_over40, align 8
  %68 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer51 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %68, i32 0, i32 3
  %69 = bitcast [32 x i32]* %buffer51 to i8*
  %70 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buffer52 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %70, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer52, i32 0, i64 16
  %71 = bitcast i32* %arrayidx53 to i8*
  %72 = load i64, i64* %left_over40, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 %72, i32 4, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.then.39
  %73 = load i64, i64* %left_over40, align 8
  %74 = load %struct.sha256_ctx*, %struct.sha256_ctx** %ctx.addr, align 8
  %buflen55 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %74, i32 0, i32 2
  store i64 %73, i64* %buflen55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sha224_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha256_ctx, align 8
  %sum = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  %call = call noalias i8* @malloc(i64 32840) #3
  store i8* %call, i8** %buffer, align 8
  %0 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sha224_init_ctx(%struct.sha256_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %if.end, %while.end
  store i64 0, i64* %sum, align 8
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.16
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i64, i64* %sum, align 8
  %sub = sub i64 32768, %3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %4)
  store i64 %call3, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %sum, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %sum, align 8
  %7 = load i64, i64* %sum, align 8
  %cmp = icmp eq i64 %7, 32768
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body.2
  br label %while.end

if.end.5:                                         ; preds = %while.body.2
  %8 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @ferror(%struct._IO_FILE* %9) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %buffer, align 8
  call void @free(i8* %10) #3
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %process_partial_block

if.end.12:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @feof(%struct._IO_FILE* %11) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %process_partial_block

if.end.16:                                        ; preds = %if.end.12
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buffer, align 8
  call void @sha256_process_block(i8* %12, i64 32768, %struct.sha256_ctx* %ctx)
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @sha256_process_bytes(i8* %14, i64 %15, %struct.sha256_ctx* %ctx)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @sha224_finish_ctx(%struct.sha256_ctx* %ctx, i8* %16)
  %17 = load i8*, i8** %buffer, align 8
  call void @free(i8* %17) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i8* @sha256_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha256_ctx, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @sha256_init_ctx(%struct.sha256_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @sha256_process_bytes(i8* %0, i64 %1, %struct.sha256_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @sha256_finish_ctx(%struct.sha256_ctx* %ctx, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @sha224_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha256_ctx, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @sha224_init_ctx(%struct.sha256_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @sha256_process_bytes(i8* %0, i64 %1, %struct.sha256_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @sha224_finish_ctx(%struct.sha256_ctx* %ctx, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
