; ModuleID = './MultiSource.Benchmarks.MiBench/1.security-sha.sha.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%08x %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @sha_init(%struct.SHA_INFO* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  %0 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %digest, i32 0, i64 0
  store i32 1732584193, i32* %arrayidx, align 4
  %1 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %digest1, i32 0, i64 1
  store i32 -271733879, i32* %arrayidx2, align 4
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* %digest3, i32 0, i64 2
  store i32 -1732584194, i32* %arrayidx4, align 4
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %digest5, i32 0, i64 3
  store i32 271733878, i32* %arrayidx6, align 4
  %4 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %digest7, i32 0, i64 4
  store i32 -1009589776, i32* %arrayidx8, align 4
  %5 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %5, i32 0, i32 1
  store i32 0, i32* %count_lo, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 2
  store i32 0, i32* %count_hi, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha_update(%struct.SHA_INFO* %sha_info, i8* %buffer, i32 %count) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i32 0, i32 1
  %1 = load i32, i32* %count_lo, align 4
  %2 = load i32, i32* %count.addr, align 4
  %shl = shl i32 %2, 3
  %add = add i32 %1, %shl
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_lo1 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 1
  %4 = load i32, i32* %count_lo1, align 4
  %cmp = icmp ult i32 %add, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %5, i32 0, i32 2
  %6 = load i32, i32* %count_hi, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %count_hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %count.addr, align 4
  %shl2 = shl i32 %7, 3
  %8 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_lo3 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %8, i32 0, i32 1
  %9 = load i32, i32* %count_lo3, align 4
  %add4 = add i32 %9, %shl2
  store i32 %add4, i32* %count_lo3, align 4
  %10 = load i32, i32* %count.addr, align 4
  %shr = lshr i32 %10, 29
  %11 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_hi5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %11, i32 0, i32 2
  %12 = load i32, i32* %count_hi5, align 4
  %add6 = add i32 %12, %shr
  store i32 %add6, i32* %count_hi5, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load i32, i32* %count.addr, align 4
  %cmp7 = icmp sge i32 %13, 64
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %14, i32 0, i32 3
  %15 = bitcast [16 x i32]* %data to i8*
  %16 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 64, i32 1, i1 false)
  %17 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %17, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %data8, i32 0, i32 0
  call void @byte_reverse(i32* %arraydecay, i32 64)
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  call void @sha_transform(%struct.SHA_INFO* %18)
  %19 = load i8*, i8** %buffer.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 64
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %20 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %20, 64
  store i32 %sub, i32* %count.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data9 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %21, i32 0, i32 3
  %22 = bitcast [16 x i32]* %data9 to i8*
  %23 = load i8*, i8** %buffer.addr, align 8
  %24 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %conv, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @byte_reverse(i32* %buffer, i32 %count) #0 {
entry:
  %buffer.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ct = alloca [4 x i8], align 1
  %cp = alloca i8*, align 8
  store i32* %buffer, i32** %buffer.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 4
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %count.addr, align 4
  %1 = load i32*, i32** %buffer.addr, align 8
  %2 = bitcast i32* %1 to i8*
  store i8* %2, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 0
  store i8 %6, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %cp, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 1
  store i8 %8, i8* %arrayidx5, align 1
  %9 = load i8*, i8** %cp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 2
  store i8 %10, i8* %arrayidx7, align 1
  %11 = load i8*, i8** %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 3
  store i8 %12, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 3
  %13 = load i8, i8* %arrayidx10, align 1
  %14 = load i8*, i8** %cp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 2
  %15 = load i8, i8* %arrayidx12, align 1
  %16 = load i8*, i8** %cp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %15, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 1
  %17 = load i8, i8* %arrayidx14, align 1
  %18 = load i8*, i8** %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %ct, i32 0, i64 0
  %19 = load i8, i8* %arrayidx16, align 1
  %20 = load i8*, i8** %cp, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %19, i8* %arrayidx17, align 1
  %21 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %add.ptr, i8** %cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha_transform(%struct.SHA_INFO* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %E = alloca i32, align 4
  %W = alloca [80 x i32], align 16
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 16, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.21, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 80
  br i1 %cmp4, label %for.body.5, label %for.end.23

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 3
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 %9, 8
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %xor = xor i32 %8, %10
  %11 = load i32, i32* %i, align 4
  %sub11 = sub nsw i32 %11, 14
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %xor14 = xor i32 %xor, %12
  %13 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %13, 16
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %xor14, %14
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom19
  store i32 %xor18, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.5
  %16 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.3

for.end.23:                                       ; preds = %for.cond.3
  %17 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [5 x i32], [5 x i32]* %digest, i32 0, i64 0
  %18 = load i32, i32* %arrayidx24, align 4
  store i32 %18, i32* %A, align 4
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest25 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [5 x i32], [5 x i32]* %digest25, i32 0, i64 1
  %20 = load i32, i32* %arrayidx26, align 4
  store i32 %20, i32* %B, align 4
  %21 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %21, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i32], [5 x i32]* %digest27, i32 0, i64 2
  %22 = load i32, i32* %arrayidx28, align 4
  store i32 %22, i32* %C, align 4
  %23 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest29 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %23, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [5 x i32], [5 x i32]* %digest29, i32 0, i64 3
  %24 = load i32, i32* %arrayidx30, align 4
  store i32 %24, i32* %D, align 4
  %25 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest31 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %25, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i32], [5 x i32]* %digest31, i32 0, i64 4
  %26 = load i32, i32* %arrayidx32, align 4
  store i32 %26, i32* %E, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.47, %for.end.23
  %27 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %27, 20
  br i1 %cmp34, label %for.body.35, label %for.end.49

for.body.35:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %A, align 4
  %shl = shl i32 %28, 5
  %29 = load i32, i32* %A, align 4
  %shr = lshr i32 %29, 27
  %or = or i32 %shl, %shr
  %30 = load i32, i32* %B, align 4
  %31 = load i32, i32* %C, align 4
  %and = and i32 %30, %31
  %32 = load i32, i32* %B, align 4
  %neg = xor i32 %32, -1
  %33 = load i32, i32* %D, align 4
  %and36 = and i32 %neg, %33
  %or37 = or i32 %and, %and36
  %add = add i32 %or, %or37
  %34 = load i32, i32* %E, align 4
  %add38 = add i32 %add, %34
  %35 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom39
  %36 = load i32, i32* %arrayidx40, align 4
  %add41 = add i32 %add38, %36
  %conv = zext i32 %add41 to i64
  %add42 = add nsw i64 %conv, 1518500249
  %conv43 = trunc i64 %add42 to i32
  store i32 %conv43, i32* %temp, align 4
  %37 = load i32, i32* %D, align 4
  store i32 %37, i32* %E, align 4
  %38 = load i32, i32* %C, align 4
  store i32 %38, i32* %D, align 4
  %39 = load i32, i32* %B, align 4
  %shl44 = shl i32 %39, 30
  %40 = load i32, i32* %B, align 4
  %shr45 = lshr i32 %40, 2
  %or46 = or i32 %shl44, %shr45
  store i32 %or46, i32* %C, align 4
  %41 = load i32, i32* %A, align 4
  store i32 %41, i32* %B, align 4
  %42 = load i32, i32* %temp, align 4
  store i32 %42, i32* %A, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.35
  %43 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %43, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.33

for.end.49:                                       ; preds = %for.cond.33
  store i32 20, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.70, %for.end.49
  %44 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %44, 40
  br i1 %cmp51, label %for.body.53, label %for.end.72

for.body.53:                                      ; preds = %for.cond.50
  %45 = load i32, i32* %A, align 4
  %shl54 = shl i32 %45, 5
  %46 = load i32, i32* %A, align 4
  %shr55 = lshr i32 %46, 27
  %or56 = or i32 %shl54, %shr55
  %47 = load i32, i32* %B, align 4
  %48 = load i32, i32* %C, align 4
  %xor57 = xor i32 %47, %48
  %49 = load i32, i32* %D, align 4
  %xor58 = xor i32 %xor57, %49
  %add59 = add i32 %or56, %xor58
  %50 = load i32, i32* %E, align 4
  %add60 = add i32 %add59, %50
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %arrayidx62 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom61
  %52 = load i32, i32* %arrayidx62, align 4
  %add63 = add i32 %add60, %52
  %conv64 = zext i32 %add63 to i64
  %add65 = add nsw i64 %conv64, 1859775393
  %conv66 = trunc i64 %add65 to i32
  store i32 %conv66, i32* %temp, align 4
  %53 = load i32, i32* %D, align 4
  store i32 %53, i32* %E, align 4
  %54 = load i32, i32* %C, align 4
  store i32 %54, i32* %D, align 4
  %55 = load i32, i32* %B, align 4
  %shl67 = shl i32 %55, 30
  %56 = load i32, i32* %B, align 4
  %shr68 = lshr i32 %56, 2
  %or69 = or i32 %shl67, %shr68
  store i32 %or69, i32* %C, align 4
  %57 = load i32, i32* %A, align 4
  store i32 %57, i32* %B, align 4
  %58 = load i32, i32* %temp, align 4
  store i32 %58, i32* %A, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.53
  %59 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.50

for.end.72:                                       ; preds = %for.cond.50
  store i32 40, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.96, %for.end.72
  %60 = load i32, i32* %i, align 4
  %cmp74 = icmp slt i32 %60, 60
  br i1 %cmp74, label %for.body.76, label %for.end.98

for.body.76:                                      ; preds = %for.cond.73
  %61 = load i32, i32* %A, align 4
  %shl77 = shl i32 %61, 5
  %62 = load i32, i32* %A, align 4
  %shr78 = lshr i32 %62, 27
  %or79 = or i32 %shl77, %shr78
  %63 = load i32, i32* %B, align 4
  %64 = load i32, i32* %C, align 4
  %and80 = and i32 %63, %64
  %65 = load i32, i32* %B, align 4
  %66 = load i32, i32* %D, align 4
  %and81 = and i32 %65, %66
  %or82 = or i32 %and80, %and81
  %67 = load i32, i32* %C, align 4
  %68 = load i32, i32* %D, align 4
  %and83 = and i32 %67, %68
  %or84 = or i32 %or82, %and83
  %add85 = add i32 %or79, %or84
  %69 = load i32, i32* %E, align 4
  %add86 = add i32 %add85, %69
  %70 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %70 to i64
  %arrayidx88 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom87
  %71 = load i32, i32* %arrayidx88, align 4
  %add89 = add i32 %add86, %71
  %conv90 = zext i32 %add89 to i64
  %add91 = add nsw i64 %conv90, 2400959708
  %conv92 = trunc i64 %add91 to i32
  store i32 %conv92, i32* %temp, align 4
  %72 = load i32, i32* %D, align 4
  store i32 %72, i32* %E, align 4
  %73 = load i32, i32* %C, align 4
  store i32 %73, i32* %D, align 4
  %74 = load i32, i32* %B, align 4
  %shl93 = shl i32 %74, 30
  %75 = load i32, i32* %B, align 4
  %shr94 = lshr i32 %75, 2
  %or95 = or i32 %shl93, %shr94
  store i32 %or95, i32* %C, align 4
  %76 = load i32, i32* %A, align 4
  store i32 %76, i32* %B, align 4
  %77 = load i32, i32* %temp, align 4
  store i32 %77, i32* %A, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.76
  %78 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %78, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.73

for.end.98:                                       ; preds = %for.cond.73
  store i32 60, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.119, %for.end.98
  %79 = load i32, i32* %i, align 4
  %cmp100 = icmp slt i32 %79, 80
  br i1 %cmp100, label %for.body.102, label %for.end.121

for.body.102:                                     ; preds = %for.cond.99
  %80 = load i32, i32* %A, align 4
  %shl103 = shl i32 %80, 5
  %81 = load i32, i32* %A, align 4
  %shr104 = lshr i32 %81, 27
  %or105 = or i32 %shl103, %shr104
  %82 = load i32, i32* %B, align 4
  %83 = load i32, i32* %C, align 4
  %xor106 = xor i32 %82, %83
  %84 = load i32, i32* %D, align 4
  %xor107 = xor i32 %xor106, %84
  %add108 = add i32 %or105, %xor107
  %85 = load i32, i32* %E, align 4
  %add109 = add i32 %add108, %85
  %86 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %86 to i64
  %arrayidx111 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom110
  %87 = load i32, i32* %arrayidx111, align 4
  %add112 = add i32 %add109, %87
  %conv113 = zext i32 %add112 to i64
  %add114 = add nsw i64 %conv113, 3395469782
  %conv115 = trunc i64 %add114 to i32
  store i32 %conv115, i32* %temp, align 4
  %88 = load i32, i32* %D, align 4
  store i32 %88, i32* %E, align 4
  %89 = load i32, i32* %C, align 4
  store i32 %89, i32* %D, align 4
  %90 = load i32, i32* %B, align 4
  %shl116 = shl i32 %90, 30
  %91 = load i32, i32* %B, align 4
  %shr117 = lshr i32 %91, 2
  %or118 = or i32 %shl116, %shr117
  store i32 %or118, i32* %C, align 4
  %92 = load i32, i32* %A, align 4
  store i32 %92, i32* %B, align 4
  %93 = load i32, i32* %temp, align 4
  store i32 %93, i32* %A, align 4
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.102
  %94 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %94, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.99

for.end.121:                                      ; preds = %for.cond.99
  %95 = load i32, i32* %A, align 4
  %96 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest122 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %96, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [5 x i32], [5 x i32]* %digest122, i32 0, i64 0
  %97 = load i32, i32* %arrayidx123, align 4
  %add124 = add i32 %97, %95
  store i32 %add124, i32* %arrayidx123, align 4
  %98 = load i32, i32* %B, align 4
  %99 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest125 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %99, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [5 x i32], [5 x i32]* %digest125, i32 0, i64 1
  %100 = load i32, i32* %arrayidx126, align 4
  %add127 = add i32 %100, %98
  store i32 %add127, i32* %arrayidx126, align 4
  %101 = load i32, i32* %C, align 4
  %102 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest128 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %102, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [5 x i32], [5 x i32]* %digest128, i32 0, i64 2
  %103 = load i32, i32* %arrayidx129, align 4
  %add130 = add i32 %103, %101
  store i32 %add130, i32* %arrayidx129, align 4
  %104 = load i32, i32* %D, align 4
  %105 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest131 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %105, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [5 x i32], [5 x i32]* %digest131, i32 0, i64 3
  %106 = load i32, i32* %arrayidx132, align 4
  %add133 = add i32 %106, %104
  store i32 %add133, i32* %arrayidx132, align 4
  %107 = load i32, i32* %E, align 4
  %108 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest134 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %108, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [5 x i32], [5 x i32]* %digest134, i32 0, i64 4
  %109 = load i32, i32* %arrayidx135, align 4
  %add136 = add i32 %109, %107
  store i32 %add136, i32* %arrayidx135, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha_final(%struct.SHA_INFO* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  %count = alloca i32, align 4
  %lo_bit_count = alloca i32, align 4
  %hi_bit_count = alloca i32, align 4
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  %0 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i32 0, i32 1
  %1 = load i32, i32* %count_lo, align 4
  store i32 %1, i32* %lo_bit_count, align 4
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %2, i32 0, i32 2
  %3 = load i32, i32* %count_hi, align 4
  store i32 %3, i32* %hi_bit_count, align 4
  %4 = load i32, i32* %lo_bit_count, align 4
  %shr = lshr i32 %4, 3
  %and = and i32 %shr, 63
  store i32 %and, i32* %count, align 4
  %5 = load i32, i32* %count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %data, i32 0, i32 0
  %7 = bitcast i32* %arraydecay to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  %8 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %8, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data1 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 3
  %10 = bitcast [16 x i32]* %data1 to i8*
  %11 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = load i32, i32* %count, align 4
  %sub = sub nsw i32 64, %12
  %conv = sext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %conv, i32 1, i1 false)
  %13 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %13, i32 0, i32 3
  %arraydecay3 = getelementptr inbounds [16 x i32], [16 x i32]* %data2, i32 0, i32 0
  call void @byte_reverse(i32* %arraydecay3, i32 64)
  %14 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  call void @sha_transform(%struct.SHA_INFO* %14)
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %16 = bitcast [16 x i32]* %data4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 56, i32 4, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %17, i32 0, i32 3
  %18 = bitcast [16 x i32]* %data5 to i8*
  %19 = load i32, i32* %count, align 4
  %idx.ext6 = sext i32 %19 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %18, i64 %idx.ext6
  %20 = load i32, i32* %count, align 4
  %sub8 = sub nsw i32 56, %20
  %conv9 = sext i32 %sub8 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr7, i8 0, i64 %conv9, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %21, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [16 x i32], [16 x i32]* %data10, i32 0, i32 0
  call void @byte_reverse(i32* %arraydecay11, i32 64)
  %22 = load i32, i32* %hi_bit_count, align 4
  %23 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %23, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %data12, i32 0, i64 14
  store i32 %22, i32* %arrayidx13, align 4
  %24 = load i32, i32* %lo_bit_count, align 4
  %25 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %data14 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %25, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [16 x i32], [16 x i32]* %data14, i32 0, i64 15
  store i32 %24, i32* %arrayidx15, align 4
  %26 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  call void @sha_transform(%struct.SHA_INFO* %26)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @sha_stream(%struct.SHA_INFO* %sha_info, %struct._IO_FILE* %fin) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %data = alloca [8192 x i8], align 16
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  %0 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  call void @sha_init(%struct.SHA_INFO* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %arraydecay2 = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  call void @sha_update(%struct.SHA_INFO* %2, i8* %arraydecay2, i32 %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  call void @sha_final(%struct.SHA_INFO* %4)
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @sha_print(%struct.SHA_INFO* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** %sha_info.addr, align 8
  %0 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %digest, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %digest1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* %digest3, i32 0, i64 2
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %digest5, i32 0, i64 3
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load %struct.SHA_INFO*, %struct.SHA_INFO** %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %8, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %digest7, i32 0, i64 4
  %9 = load i32, i32* %arrayidx8, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7, i32 %9)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
