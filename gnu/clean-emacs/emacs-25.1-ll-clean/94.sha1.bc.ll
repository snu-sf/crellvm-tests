; ModuleID = './lib/sha1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@fillbuf = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @sha1_init_ctx(%struct.sha1_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.sha1_ctx*, align 8
  store %struct.sha1_ctx* %ctx, %struct.sha1_ctx** %ctx.addr, align 8
  %0 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i32 0, i32 0
  store i32 1732584193, i32* %A, align 4
  %1 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1, i32 0, i32 1
  store i32 -271733879, i32* %B, align 4
  %2 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i32 0, i32 2
  store i32 -1732584194, i32* %C, align 4
  %3 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i32 0, i32 3
  store i32 271733878, i32* %D, align 4
  %4 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i32 0, i32 4
  store i32 -1009589776, i32* %E, align 4
  %5 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4
  %6 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %6, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %7 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %7, i32 0, i32 6
  store i32 0, i32* %buflen, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha1_read_ctx(%struct.sha1_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha1_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %r = alloca i8*, align 8
  store %struct.sha1_ctx* %ctx, %struct.sha1_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  %1 = load i8*, i8** %r, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i32 0, i32 0
  %3 = load i32, i32* %A, align 4
  %shl = shl i32 %3, 24
  %4 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A1 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i32 0, i32 0
  %5 = load i32, i32* %A1, align 4
  %and = and i32 %5, 65280
  %shl2 = shl i32 %and, 8
  %or = or i32 %shl, %shl2
  %6 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %6, i32 0, i32 0
  %7 = load i32, i32* %A3, align 4
  %shr = lshr i32 %7, 8
  %and4 = and i32 %shr, 65280
  %or5 = or i32 %or, %and4
  %8 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A6 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %8, i32 0, i32 0
  %9 = load i32, i32* %A6, align 4
  %shr7 = lshr i32 %9, 24
  %or8 = or i32 %or5, %shr7
  call void @set_uint32(i8* %add.ptr, i32 %or8)
  %10 = load i8*, i8** %r, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %10, i64 4
  %11 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %11, i32 0, i32 1
  %12 = load i32, i32* %B, align 4
  %shl10 = shl i32 %12, 24
  %13 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %13, i32 0, i32 1
  %14 = load i32, i32* %B11, align 4
  %and12 = and i32 %14, 65280
  %shl13 = shl i32 %and12, 8
  %or14 = or i32 %shl10, %shl13
  %15 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %15, i32 0, i32 1
  %16 = load i32, i32* %B15, align 4
  %shr16 = lshr i32 %16, 8
  %and17 = and i32 %shr16, 65280
  %or18 = or i32 %or14, %and17
  %17 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B19 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %17, i32 0, i32 1
  %18 = load i32, i32* %B19, align 4
  %shr20 = lshr i32 %18, 24
  %or21 = or i32 %or18, %shr20
  call void @set_uint32(i8* %add.ptr9, i32 %or21)
  %19 = load i8*, i8** %r, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %19, i64 8
  %20 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %20, i32 0, i32 2
  %21 = load i32, i32* %C, align 4
  %shl23 = shl i32 %21, 24
  %22 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C24 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %22, i32 0, i32 2
  %23 = load i32, i32* %C24, align 4
  %and25 = and i32 %23, 65280
  %shl26 = shl i32 %and25, 8
  %or27 = or i32 %shl23, %shl26
  %24 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C28 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %24, i32 0, i32 2
  %25 = load i32, i32* %C28, align 4
  %shr29 = lshr i32 %25, 8
  %and30 = and i32 %shr29, 65280
  %or31 = or i32 %or27, %and30
  %26 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C32 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %26, i32 0, i32 2
  %27 = load i32, i32* %C32, align 4
  %shr33 = lshr i32 %27, 24
  %or34 = or i32 %or31, %shr33
  call void @set_uint32(i8* %add.ptr22, i32 %or34)
  %28 = load i8*, i8** %r, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %28, i64 12
  %29 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %29, i32 0, i32 3
  %30 = load i32, i32* %D, align 4
  %shl36 = shl i32 %30, 24
  %31 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D37 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %31, i32 0, i32 3
  %32 = load i32, i32* %D37, align 4
  %and38 = and i32 %32, 65280
  %shl39 = shl i32 %and38, 8
  %or40 = or i32 %shl36, %shl39
  %33 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D41 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %33, i32 0, i32 3
  %34 = load i32, i32* %D41, align 4
  %shr42 = lshr i32 %34, 8
  %and43 = and i32 %shr42, 65280
  %or44 = or i32 %or40, %and43
  %35 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D45 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %35, i32 0, i32 3
  %36 = load i32, i32* %D45, align 4
  %shr46 = lshr i32 %36, 24
  %or47 = or i32 %or44, %shr46
  call void @set_uint32(i8* %add.ptr35, i32 %or47)
  %37 = load i8*, i8** %r, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %37, i64 16
  %38 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %38, i32 0, i32 4
  %39 = load i32, i32* %E, align 4
  %shl49 = shl i32 %39, 24
  %40 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E50 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %40, i32 0, i32 4
  %41 = load i32, i32* %E50, align 4
  %and51 = and i32 %41, 65280
  %shl52 = shl i32 %and51, 8
  %or53 = or i32 %shl49, %shl52
  %42 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E54 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %42, i32 0, i32 4
  %43 = load i32, i32* %E54, align 4
  %shr55 = lshr i32 %43, 8
  %and56 = and i32 %shr55, 65280
  %or57 = or i32 %or53, %and56
  %44 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E58 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %44, i32 0, i32 4
  %45 = load i32, i32* %E58, align 4
  %shr59 = lshr i32 %45, 24
  %or60 = or i32 %or57, %shr59
  call void @set_uint32(i8* %add.ptr48, i32 %or60)
  %46 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %46
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
define i8* @sha1_finish_ctx(%struct.sha1_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.sha1_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct.sha1_ctx* %ctx, %struct.sha1_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i32 0, i32 6
  %1 = load i32, i32* %buflen, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load i32, i32* %bytes, align 4
  %cmp = icmp ult i32 %2, 56
  %cond = select i1 %cmp, i32 16, i32 32
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %size, align 8
  %3 = load i32, i32* %bytes, align 4
  %4 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %add = add i32 %5, %3
  store i32 %add, i32* %arrayidx, align 4
  %6 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %6, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %bytes, align 4
  %cmp3 = icmp ult i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total5 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %9, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %total5, i32 0, i64 1
  %10 = load i32, i32* %arrayidx6, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %11, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %total7, i32 0, i64 1
  %12 = load i32, i32* %arrayidx8, align 4
  %shl = shl i32 %12, 3
  %13 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %13, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %total9, i32 0, i64 0
  %14 = load i32, i32* %arrayidx10, align 4
  %shr = lshr i32 %14, 29
  %or = or i32 %shl, %shr
  %shl11 = shl i32 %or, 24
  %15 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %15, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %total12, i32 0, i64 1
  %16 = load i32, i32* %arrayidx13, align 4
  %shl14 = shl i32 %16, 3
  %17 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %17, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %total15, i32 0, i64 0
  %18 = load i32, i32* %arrayidx16, align 4
  %shr17 = lshr i32 %18, 29
  %or18 = or i32 %shl14, %shr17
  %and = and i32 %or18, 65280
  %shl19 = shl i32 %and, 8
  %or20 = or i32 %shl11, %shl19
  %19 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total21 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %19, i32 0, i32 5
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %total21, i32 0, i64 1
  %20 = load i32, i32* %arrayidx22, align 4
  %shl23 = shl i32 %20, 3
  %21 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total24 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %21, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %total24, i32 0, i64 0
  %22 = load i32, i32* %arrayidx25, align 4
  %shr26 = lshr i32 %22, 29
  %or27 = or i32 %shl23, %shr26
  %shr28 = lshr i32 %or27, 8
  %and29 = and i32 %shr28, 65280
  %or30 = or i32 %or20, %and29
  %23 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total31 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %23, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %total31, i32 0, i64 1
  %24 = load i32, i32* %arrayidx32, align 4
  %shl33 = shl i32 %24, 3
  %25 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total34 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %25, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %total34, i32 0, i64 0
  %26 = load i32, i32* %arrayidx35, align 4
  %shr36 = lshr i32 %26, 29
  %or37 = or i32 %shl33, %shr36
  %shr38 = lshr i32 %or37, 24
  %or39 = or i32 %or30, %shr38
  %27 = load i64, i64* %size, align 8
  %sub = sub i64 %27, 2
  %28 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %28, i32 0, i32 7
  %arrayidx40 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer, i32 0, i64 %sub
  store i32 %or39, i32* %arrayidx40, align 4
  %29 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total41 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %29, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %total41, i32 0, i64 0
  %30 = load i32, i32* %arrayidx42, align 4
  %shl43 = shl i32 %30, 3
  %shl44 = shl i32 %shl43, 24
  %31 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total45 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %31, i32 0, i32 5
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %total45, i32 0, i64 0
  %32 = load i32, i32* %arrayidx46, align 4
  %shl47 = shl i32 %32, 3
  %and48 = and i32 %shl47, 65280
  %shl49 = shl i32 %and48, 8
  %or50 = or i32 %shl44, %shl49
  %33 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %33, i32 0, i32 5
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %total51, i32 0, i64 0
  %34 = load i32, i32* %arrayidx52, align 4
  %shl53 = shl i32 %34, 3
  %shr54 = lshr i32 %shl53, 8
  %and55 = and i32 %shr54, 65280
  %or56 = or i32 %or50, %and55
  %35 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total57 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %35, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %total57, i32 0, i64 0
  %36 = load i32, i32* %arrayidx58, align 4
  %shl59 = shl i32 %36, 3
  %shr60 = lshr i32 %shl59, 24
  %or61 = or i32 %or56, %shr60
  %37 = load i64, i64* %size, align 8
  %sub62 = sub i64 %37, 1
  %38 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer63 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %38, i32 0, i32 7
  %arrayidx64 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer63, i32 0, i64 %sub62
  store i32 %or61, i32* %arrayidx64, align 4
  %39 = load i32, i32* %bytes, align 4
  %idxprom = zext i32 %39 to i64
  %40 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer65 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %40, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer65, i32 0, i32 0
  %41 = bitcast i32* %arraydecay to i8*
  %arrayidx66 = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i64, i64* %size, align 8
  %sub67 = sub i64 %42, 2
  %mul = mul i64 %sub67, 4
  %43 = load i32, i32* %bytes, align 4
  %conv68 = zext i32 %43 to i64
  %sub69 = sub i64 %mul, %conv68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i32 0, i32 0), i64 %sub69, i32 1, i1 false)
  %44 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer70 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %44, i32 0, i32 7
  %arraydecay71 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer70, i32 0, i32 0
  %45 = bitcast i32* %arraydecay71 to i8*
  %46 = load i64, i64* %size, align 8
  %mul72 = mul i64 %46, 4
  %47 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  call void @sha1_process_block(i8* %45, i64 %mul72, %struct.sha1_ctx* %47)
  %48 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %49 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @sha1_read_ctx(%struct.sha1_ctx* %48, i8* %49)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @sha1_process_block(i8* %buffer, i64 %len, %struct.sha1_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha1_ctx*, align 8
  %words = alloca i32*, align 8
  %nwords = alloca i64, align 8
  %endp = alloca i32*, align 8
  %x = alloca [16 x i32], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %lolen = alloca i32, align 4
  %tm = alloca i32, align 4
  %t = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha1_ctx* %ctx, %struct.sha1_ctx** %ctx.addr, align 8
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
  %5 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %5, i32 0, i32 0
  %6 = load i32, i32* %A, align 4
  store i32 %6, i32* %a, align 4
  %7 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %7, i32 0, i32 1
  %8 = load i32, i32* %B, align 4
  store i32 %8, i32* %b, align 4
  %9 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %9, i32 0, i32 2
  %10 = load i32, i32* %C, align 4
  store i32 %10, i32* %c, align 4
  %11 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %11, i32 0, i32 3
  %12 = load i32, i32* %D, align 4
  store i32 %12, i32* %d, align 4
  %13 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %13, i32 0, i32 4
  %14 = load i32, i32* %E, align 4
  store i32 %14, i32* %e, align 4
  %15 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %lolen, align 4
  %16 = load i32, i32* %lolen, align 4
  %17 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %17, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %18 = load i32, i32* %arrayidx, align 4
  %add = add i32 %18, %16
  store i32 %add, i32* %arrayidx, align 4
  %19 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %19, 31
  %shr1 = lshr i64 %shr, 1
  %20 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total2 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %20, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %total2, i32 0, i64 0
  %21 = load i32, i32* %arrayidx3, align 4
  %22 = load i32, i32* %lolen, align 4
  %cmp = icmp ult i32 %21, %22
  %conv4 = zext i1 %cmp to i32
  %conv5 = sext i32 %conv4 to i64
  %add6 = add i64 %shr1, %conv5
  %23 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %total7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %23, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %total7, i32 0, i64 1
  %24 = load i32, i32* %arrayidx8, align 4
  %conv9 = zext i32 %24 to i64
  %add10 = add i64 %conv9, %add6
  %conv11 = trunc i64 %add10 to i32
  store i32 %conv11, i32* %arrayidx8, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.1919, %entry
  %25 = load i32*, i32** %words, align 8
  %26 = load i32*, i32** %endp, align 8
  %cmp12 = icmp ult i32* %25, %26
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32, i32* %t, align 4
  %cmp14 = icmp slt i32 %27, 16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32*, i32** %words, align 8
  %29 = load i32, i32* %28, align 4
  %shl = shl i32 %29, 24
  %30 = load i32*, i32** %words, align 8
  %31 = load i32, i32* %30, align 4
  %and = and i32 %31, 65280
  %shl16 = shl i32 %and, 8
  %or = or i32 %shl, %shl16
  %32 = load i32*, i32** %words, align 8
  %33 = load i32, i32* %32, align 4
  %shr17 = lshr i32 %33, 8
  %and18 = and i32 %shr17, 65280
  %or19 = or i32 %or, %and18
  %34 = load i32*, i32** %words, align 8
  %35 = load i32, i32* %34, align 4
  %shr20 = lshr i32 %35, 24
  %or21 = or i32 %or19, %shr20
  %36 = load i32, i32* %t, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom
  store i32 %or21, i32* %arrayidx22, align 4
  %37 = load i32*, i32** %words, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr, i32** %words, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %t, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %39 = load i32, i32* %a, align 4
  %shl23 = shl i32 %39, 5
  %40 = load i32, i32* %a, align 4
  %shr24 = lshr i32 %40, 27
  %or25 = or i32 %shl23, %shr24
  %41 = load i32, i32* %d, align 4
  %42 = load i32, i32* %b, align 4
  %43 = load i32, i32* %c, align 4
  %44 = load i32, i32* %d, align 4
  %xor = xor i32 %43, %44
  %and26 = and i32 %42, %xor
  %xor27 = xor i32 %41, %and26
  %add28 = add i32 %or25, %xor27
  %add29 = add i32 %add28, 1518500249
  %arrayidx30 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %45 = load i32, i32* %arrayidx30, align 4
  %add31 = add i32 %add29, %45
  %46 = load i32, i32* %e, align 4
  %add32 = add i32 %46, %add31
  store i32 %add32, i32* %e, align 4
  %47 = load i32, i32* %b, align 4
  %shl33 = shl i32 %47, 30
  %48 = load i32, i32* %b, align 4
  %shr34 = lshr i32 %48, 2
  %or35 = or i32 %shl33, %shr34
  store i32 %or35, i32* %b, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.36

do.body.36:                                       ; preds = %do.end
  %49 = load i32, i32* %e, align 4
  %shl37 = shl i32 %49, 5
  %50 = load i32, i32* %e, align 4
  %shr38 = lshr i32 %50, 27
  %or39 = or i32 %shl37, %shr38
  %51 = load i32, i32* %c, align 4
  %52 = load i32, i32* %a, align 4
  %53 = load i32, i32* %b, align 4
  %54 = load i32, i32* %c, align 4
  %xor40 = xor i32 %53, %54
  %and41 = and i32 %52, %xor40
  %xor42 = xor i32 %51, %and41
  %add43 = add i32 %or39, %xor42
  %add44 = add i32 %add43, 1518500249
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %55 = load i32, i32* %arrayidx45, align 4
  %add46 = add i32 %add44, %55
  %56 = load i32, i32* %d, align 4
  %add47 = add i32 %56, %add46
  store i32 %add47, i32* %d, align 4
  %57 = load i32, i32* %a, align 4
  %shl48 = shl i32 %57, 30
  %58 = load i32, i32* %a, align 4
  %shr49 = lshr i32 %58, 2
  %or50 = or i32 %shl48, %shr49
  store i32 %or50, i32* %a, align 4
  br label %do.end.51

do.end.51:                                        ; preds = %do.body.36
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %59 = load i32, i32* %d, align 4
  %shl53 = shl i32 %59, 5
  %60 = load i32, i32* %d, align 4
  %shr54 = lshr i32 %60, 27
  %or55 = or i32 %shl53, %shr54
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %e, align 4
  %63 = load i32, i32* %a, align 4
  %64 = load i32, i32* %b, align 4
  %xor56 = xor i32 %63, %64
  %and57 = and i32 %62, %xor56
  %xor58 = xor i32 %61, %and57
  %add59 = add i32 %or55, %xor58
  %add60 = add i32 %add59, 1518500249
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %65 = load i32, i32* %arrayidx61, align 4
  %add62 = add i32 %add60, %65
  %66 = load i32, i32* %c, align 4
  %add63 = add i32 %66, %add62
  store i32 %add63, i32* %c, align 4
  %67 = load i32, i32* %e, align 4
  %shl64 = shl i32 %67, 30
  %68 = load i32, i32* %e, align 4
  %shr65 = lshr i32 %68, 2
  %or66 = or i32 %shl64, %shr65
  store i32 %or66, i32* %e, align 4
  br label %do.end.67

do.end.67:                                        ; preds = %do.body.52
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %69 = load i32, i32* %c, align 4
  %shl69 = shl i32 %69, 5
  %70 = load i32, i32* %c, align 4
  %shr70 = lshr i32 %70, 27
  %or71 = or i32 %shl69, %shr70
  %71 = load i32, i32* %a, align 4
  %72 = load i32, i32* %d, align 4
  %73 = load i32, i32* %e, align 4
  %74 = load i32, i32* %a, align 4
  %xor72 = xor i32 %73, %74
  %and73 = and i32 %72, %xor72
  %xor74 = xor i32 %71, %and73
  %add75 = add i32 %or71, %xor74
  %add76 = add i32 %add75, 1518500249
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %75 = load i32, i32* %arrayidx77, align 4
  %add78 = add i32 %add76, %75
  %76 = load i32, i32* %b, align 4
  %add79 = add i32 %76, %add78
  store i32 %add79, i32* %b, align 4
  %77 = load i32, i32* %d, align 4
  %shl80 = shl i32 %77, 30
  %78 = load i32, i32* %d, align 4
  %shr81 = lshr i32 %78, 2
  %or82 = or i32 %shl80, %shr81
  store i32 %or82, i32* %d, align 4
  br label %do.end.83

do.end.83:                                        ; preds = %do.body.68
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %79 = load i32, i32* %b, align 4
  %shl85 = shl i32 %79, 5
  %80 = load i32, i32* %b, align 4
  %shr86 = lshr i32 %80, 27
  %or87 = or i32 %shl85, %shr86
  %81 = load i32, i32* %e, align 4
  %82 = load i32, i32* %c, align 4
  %83 = load i32, i32* %d, align 4
  %84 = load i32, i32* %e, align 4
  %xor88 = xor i32 %83, %84
  %and89 = and i32 %82, %xor88
  %xor90 = xor i32 %81, %and89
  %add91 = add i32 %or87, %xor90
  %add92 = add i32 %add91, 1518500249
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %85 = load i32, i32* %arrayidx93, align 4
  %add94 = add i32 %add92, %85
  %86 = load i32, i32* %a, align 4
  %add95 = add i32 %86, %add94
  store i32 %add95, i32* %a, align 4
  %87 = load i32, i32* %c, align 4
  %shl96 = shl i32 %87, 30
  %88 = load i32, i32* %c, align 4
  %shr97 = lshr i32 %88, 2
  %or98 = or i32 %shl96, %shr97
  store i32 %or98, i32* %c, align 4
  br label %do.end.99

do.end.99:                                        ; preds = %do.body.84
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %89 = load i32, i32* %a, align 4
  %shl101 = shl i32 %89, 5
  %90 = load i32, i32* %a, align 4
  %shr102 = lshr i32 %90, 27
  %or103 = or i32 %shl101, %shr102
  %91 = load i32, i32* %d, align 4
  %92 = load i32, i32* %b, align 4
  %93 = load i32, i32* %c, align 4
  %94 = load i32, i32* %d, align 4
  %xor104 = xor i32 %93, %94
  %and105 = and i32 %92, %xor104
  %xor106 = xor i32 %91, %and105
  %add107 = add i32 %or103, %xor106
  %add108 = add i32 %add107, 1518500249
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %95 = load i32, i32* %arrayidx109, align 4
  %add110 = add i32 %add108, %95
  %96 = load i32, i32* %e, align 4
  %add111 = add i32 %96, %add110
  store i32 %add111, i32* %e, align 4
  %97 = load i32, i32* %b, align 4
  %shl112 = shl i32 %97, 30
  %98 = load i32, i32* %b, align 4
  %shr113 = lshr i32 %98, 2
  %or114 = or i32 %shl112, %shr113
  store i32 %or114, i32* %b, align 4
  br label %do.end.115

do.end.115:                                       ; preds = %do.body.100
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %99 = load i32, i32* %e, align 4
  %shl117 = shl i32 %99, 5
  %100 = load i32, i32* %e, align 4
  %shr118 = lshr i32 %100, 27
  %or119 = or i32 %shl117, %shr118
  %101 = load i32, i32* %c, align 4
  %102 = load i32, i32* %a, align 4
  %103 = load i32, i32* %b, align 4
  %104 = load i32, i32* %c, align 4
  %xor120 = xor i32 %103, %104
  %and121 = and i32 %102, %xor120
  %xor122 = xor i32 %101, %and121
  %add123 = add i32 %or119, %xor122
  %add124 = add i32 %add123, 1518500249
  %arrayidx125 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %105 = load i32, i32* %arrayidx125, align 4
  %add126 = add i32 %add124, %105
  %106 = load i32, i32* %d, align 4
  %add127 = add i32 %106, %add126
  store i32 %add127, i32* %d, align 4
  %107 = load i32, i32* %a, align 4
  %shl128 = shl i32 %107, 30
  %108 = load i32, i32* %a, align 4
  %shr129 = lshr i32 %108, 2
  %or130 = or i32 %shl128, %shr129
  store i32 %or130, i32* %a, align 4
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.116
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %109 = load i32, i32* %d, align 4
  %shl133 = shl i32 %109, 5
  %110 = load i32, i32* %d, align 4
  %shr134 = lshr i32 %110, 27
  %or135 = or i32 %shl133, %shr134
  %111 = load i32, i32* %b, align 4
  %112 = load i32, i32* %e, align 4
  %113 = load i32, i32* %a, align 4
  %114 = load i32, i32* %b, align 4
  %xor136 = xor i32 %113, %114
  %and137 = and i32 %112, %xor136
  %xor138 = xor i32 %111, %and137
  %add139 = add i32 %or135, %xor138
  %add140 = add i32 %add139, 1518500249
  %arrayidx141 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %115 = load i32, i32* %arrayidx141, align 4
  %add142 = add i32 %add140, %115
  %116 = load i32, i32* %c, align 4
  %add143 = add i32 %116, %add142
  store i32 %add143, i32* %c, align 4
  %117 = load i32, i32* %e, align 4
  %shl144 = shl i32 %117, 30
  %118 = load i32, i32* %e, align 4
  %shr145 = lshr i32 %118, 2
  %or146 = or i32 %shl144, %shr145
  store i32 %or146, i32* %e, align 4
  br label %do.end.147

do.end.147:                                       ; preds = %do.body.132
  br label %do.body.148

do.body.148:                                      ; preds = %do.end.147
  %119 = load i32, i32* %c, align 4
  %shl149 = shl i32 %119, 5
  %120 = load i32, i32* %c, align 4
  %shr150 = lshr i32 %120, 27
  %or151 = or i32 %shl149, %shr150
  %121 = load i32, i32* %a, align 4
  %122 = load i32, i32* %d, align 4
  %123 = load i32, i32* %e, align 4
  %124 = load i32, i32* %a, align 4
  %xor152 = xor i32 %123, %124
  %and153 = and i32 %122, %xor152
  %xor154 = xor i32 %121, %and153
  %add155 = add i32 %or151, %xor154
  %add156 = add i32 %add155, 1518500249
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %125 = load i32, i32* %arrayidx157, align 4
  %add158 = add i32 %add156, %125
  %126 = load i32, i32* %b, align 4
  %add159 = add i32 %126, %add158
  store i32 %add159, i32* %b, align 4
  %127 = load i32, i32* %d, align 4
  %shl160 = shl i32 %127, 30
  %128 = load i32, i32* %d, align 4
  %shr161 = lshr i32 %128, 2
  %or162 = or i32 %shl160, %shr161
  store i32 %or162, i32* %d, align 4
  br label %do.end.163

do.end.163:                                       ; preds = %do.body.148
  br label %do.body.164

do.body.164:                                      ; preds = %do.end.163
  %129 = load i32, i32* %b, align 4
  %shl165 = shl i32 %129, 5
  %130 = load i32, i32* %b, align 4
  %shr166 = lshr i32 %130, 27
  %or167 = or i32 %shl165, %shr166
  %131 = load i32, i32* %e, align 4
  %132 = load i32, i32* %c, align 4
  %133 = load i32, i32* %d, align 4
  %134 = load i32, i32* %e, align 4
  %xor168 = xor i32 %133, %134
  %and169 = and i32 %132, %xor168
  %xor170 = xor i32 %131, %and169
  %add171 = add i32 %or167, %xor170
  %add172 = add i32 %add171, 1518500249
  %arrayidx173 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %135 = load i32, i32* %arrayidx173, align 4
  %add174 = add i32 %add172, %135
  %136 = load i32, i32* %a, align 4
  %add175 = add i32 %136, %add174
  store i32 %add175, i32* %a, align 4
  %137 = load i32, i32* %c, align 4
  %shl176 = shl i32 %137, 30
  %138 = load i32, i32* %c, align 4
  %shr177 = lshr i32 %138, 2
  %or178 = or i32 %shl176, %shr177
  store i32 %or178, i32* %c, align 4
  br label %do.end.179

do.end.179:                                       ; preds = %do.body.164
  br label %do.body.180

do.body.180:                                      ; preds = %do.end.179
  %139 = load i32, i32* %a, align 4
  %shl181 = shl i32 %139, 5
  %140 = load i32, i32* %a, align 4
  %shr182 = lshr i32 %140, 27
  %or183 = or i32 %shl181, %shr182
  %141 = load i32, i32* %d, align 4
  %142 = load i32, i32* %b, align 4
  %143 = load i32, i32* %c, align 4
  %144 = load i32, i32* %d, align 4
  %xor184 = xor i32 %143, %144
  %and185 = and i32 %142, %xor184
  %xor186 = xor i32 %141, %and185
  %add187 = add i32 %or183, %xor186
  %add188 = add i32 %add187, 1518500249
  %arrayidx189 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %145 = load i32, i32* %arrayidx189, align 4
  %add190 = add i32 %add188, %145
  %146 = load i32, i32* %e, align 4
  %add191 = add i32 %146, %add190
  store i32 %add191, i32* %e, align 4
  %147 = load i32, i32* %b, align 4
  %shl192 = shl i32 %147, 30
  %148 = load i32, i32* %b, align 4
  %shr193 = lshr i32 %148, 2
  %or194 = or i32 %shl192, %shr193
  store i32 %or194, i32* %b, align 4
  br label %do.end.195

do.end.195:                                       ; preds = %do.body.180
  br label %do.body.196

do.body.196:                                      ; preds = %do.end.195
  %149 = load i32, i32* %e, align 4
  %shl197 = shl i32 %149, 5
  %150 = load i32, i32* %e, align 4
  %shr198 = lshr i32 %150, 27
  %or199 = or i32 %shl197, %shr198
  %151 = load i32, i32* %c, align 4
  %152 = load i32, i32* %a, align 4
  %153 = load i32, i32* %b, align 4
  %154 = load i32, i32* %c, align 4
  %xor200 = xor i32 %153, %154
  %and201 = and i32 %152, %xor200
  %xor202 = xor i32 %151, %and201
  %add203 = add i32 %or199, %xor202
  %add204 = add i32 %add203, 1518500249
  %arrayidx205 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %155 = load i32, i32* %arrayidx205, align 4
  %add206 = add i32 %add204, %155
  %156 = load i32, i32* %d, align 4
  %add207 = add i32 %156, %add206
  store i32 %add207, i32* %d, align 4
  %157 = load i32, i32* %a, align 4
  %shl208 = shl i32 %157, 30
  %158 = load i32, i32* %a, align 4
  %shr209 = lshr i32 %158, 2
  %or210 = or i32 %shl208, %shr209
  store i32 %or210, i32* %a, align 4
  br label %do.end.211

do.end.211:                                       ; preds = %do.body.196
  br label %do.body.212

do.body.212:                                      ; preds = %do.end.211
  %159 = load i32, i32* %d, align 4
  %shl213 = shl i32 %159, 5
  %160 = load i32, i32* %d, align 4
  %shr214 = lshr i32 %160, 27
  %or215 = or i32 %shl213, %shr214
  %161 = load i32, i32* %b, align 4
  %162 = load i32, i32* %e, align 4
  %163 = load i32, i32* %a, align 4
  %164 = load i32, i32* %b, align 4
  %xor216 = xor i32 %163, %164
  %and217 = and i32 %162, %xor216
  %xor218 = xor i32 %161, %and217
  %add219 = add i32 %or215, %xor218
  %add220 = add i32 %add219, 1518500249
  %arrayidx221 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %165 = load i32, i32* %arrayidx221, align 4
  %add222 = add i32 %add220, %165
  %166 = load i32, i32* %c, align 4
  %add223 = add i32 %166, %add222
  store i32 %add223, i32* %c, align 4
  %167 = load i32, i32* %e, align 4
  %shl224 = shl i32 %167, 30
  %168 = load i32, i32* %e, align 4
  %shr225 = lshr i32 %168, 2
  %or226 = or i32 %shl224, %shr225
  store i32 %or226, i32* %e, align 4
  br label %do.end.227

do.end.227:                                       ; preds = %do.body.212
  br label %do.body.228

do.body.228:                                      ; preds = %do.end.227
  %169 = load i32, i32* %c, align 4
  %shl229 = shl i32 %169, 5
  %170 = load i32, i32* %c, align 4
  %shr230 = lshr i32 %170, 27
  %or231 = or i32 %shl229, %shr230
  %171 = load i32, i32* %a, align 4
  %172 = load i32, i32* %d, align 4
  %173 = load i32, i32* %e, align 4
  %174 = load i32, i32* %a, align 4
  %xor232 = xor i32 %173, %174
  %and233 = and i32 %172, %xor232
  %xor234 = xor i32 %171, %and233
  %add235 = add i32 %or231, %xor234
  %add236 = add i32 %add235, 1518500249
  %arrayidx237 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %175 = load i32, i32* %arrayidx237, align 4
  %add238 = add i32 %add236, %175
  %176 = load i32, i32* %b, align 4
  %add239 = add i32 %176, %add238
  store i32 %add239, i32* %b, align 4
  %177 = load i32, i32* %d, align 4
  %shl240 = shl i32 %177, 30
  %178 = load i32, i32* %d, align 4
  %shr241 = lshr i32 %178, 2
  %or242 = or i32 %shl240, %shr241
  store i32 %or242, i32* %d, align 4
  br label %do.end.243

do.end.243:                                       ; preds = %do.body.228
  br label %do.body.244

do.body.244:                                      ; preds = %do.end.243
  %179 = load i32, i32* %b, align 4
  %shl245 = shl i32 %179, 5
  %180 = load i32, i32* %b, align 4
  %shr246 = lshr i32 %180, 27
  %or247 = or i32 %shl245, %shr246
  %181 = load i32, i32* %e, align 4
  %182 = load i32, i32* %c, align 4
  %183 = load i32, i32* %d, align 4
  %184 = load i32, i32* %e, align 4
  %xor248 = xor i32 %183, %184
  %and249 = and i32 %182, %xor248
  %xor250 = xor i32 %181, %and249
  %add251 = add i32 %or247, %xor250
  %add252 = add i32 %add251, 1518500249
  %arrayidx253 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %185 = load i32, i32* %arrayidx253, align 4
  %add254 = add i32 %add252, %185
  %186 = load i32, i32* %a, align 4
  %add255 = add i32 %186, %add254
  store i32 %add255, i32* %a, align 4
  %187 = load i32, i32* %c, align 4
  %shl256 = shl i32 %187, 30
  %188 = load i32, i32* %c, align 4
  %shr257 = lshr i32 %188, 2
  %or258 = or i32 %shl256, %shr257
  store i32 %or258, i32* %c, align 4
  br label %do.end.259

do.end.259:                                       ; preds = %do.body.244
  br label %do.body.260

do.body.260:                                      ; preds = %do.end.259
  %189 = load i32, i32* %a, align 4
  %shl261 = shl i32 %189, 5
  %190 = load i32, i32* %a, align 4
  %shr262 = lshr i32 %190, 27
  %or263 = or i32 %shl261, %shr262
  %191 = load i32, i32* %d, align 4
  %192 = load i32, i32* %b, align 4
  %193 = load i32, i32* %c, align 4
  %194 = load i32, i32* %d, align 4
  %xor264 = xor i32 %193, %194
  %and265 = and i32 %192, %xor264
  %xor266 = xor i32 %191, %and265
  %add267 = add i32 %or263, %xor266
  %add268 = add i32 %add267, 1518500249
  %arrayidx269 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %195 = load i32, i32* %arrayidx269, align 4
  %add270 = add i32 %add268, %195
  %196 = load i32, i32* %e, align 4
  %add271 = add i32 %196, %add270
  store i32 %add271, i32* %e, align 4
  %197 = load i32, i32* %b, align 4
  %shl272 = shl i32 %197, 30
  %198 = load i32, i32* %b, align 4
  %shr273 = lshr i32 %198, 2
  %or274 = or i32 %shl272, %shr273
  store i32 %or274, i32* %b, align 4
  br label %do.end.275

do.end.275:                                       ; preds = %do.body.260
  br label %do.body.276

do.body.276:                                      ; preds = %do.end.275
  %199 = load i32, i32* %e, align 4
  %shl277 = shl i32 %199, 5
  %200 = load i32, i32* %e, align 4
  %shr278 = lshr i32 %200, 27
  %or279 = or i32 %shl277, %shr278
  %201 = load i32, i32* %c, align 4
  %202 = load i32, i32* %a, align 4
  %203 = load i32, i32* %b, align 4
  %204 = load i32, i32* %c, align 4
  %xor280 = xor i32 %203, %204
  %and281 = and i32 %202, %xor280
  %xor282 = xor i32 %201, %and281
  %add283 = add i32 %or279, %xor282
  %add284 = add i32 %add283, 1518500249
  %arrayidx285 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %205 = load i32, i32* %arrayidx285, align 4
  %arrayidx286 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %206 = load i32, i32* %arrayidx286, align 4
  %xor287 = xor i32 %205, %206
  %arrayidx288 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %207 = load i32, i32* %arrayidx288, align 4
  %xor289 = xor i32 %xor287, %207
  %arrayidx290 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %208 = load i32, i32* %arrayidx290, align 4
  %xor291 = xor i32 %xor289, %208
  store i32 %xor291, i32* %tm, align 4
  %209 = load i32, i32* %tm, align 4
  %shl292 = shl i32 %209, 1
  %210 = load i32, i32* %tm, align 4
  %shr293 = lshr i32 %210, 31
  %or294 = or i32 %shl292, %shr293
  %arrayidx295 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %or294, i32* %arrayidx295, align 4
  %add296 = add i32 %add284, %or294
  %211 = load i32, i32* %d, align 4
  %add297 = add i32 %211, %add296
  store i32 %add297, i32* %d, align 4
  %212 = load i32, i32* %a, align 4
  %shl298 = shl i32 %212, 30
  %213 = load i32, i32* %a, align 4
  %shr299 = lshr i32 %213, 2
  %or300 = or i32 %shl298, %shr299
  store i32 %or300, i32* %a, align 4
  br label %do.end.301

do.end.301:                                       ; preds = %do.body.276
  br label %do.body.302

do.body.302:                                      ; preds = %do.end.301
  %214 = load i32, i32* %d, align 4
  %shl303 = shl i32 %214, 5
  %215 = load i32, i32* %d, align 4
  %shr304 = lshr i32 %215, 27
  %or305 = or i32 %shl303, %shr304
  %216 = load i32, i32* %b, align 4
  %217 = load i32, i32* %e, align 4
  %218 = load i32, i32* %a, align 4
  %219 = load i32, i32* %b, align 4
  %xor306 = xor i32 %218, %219
  %and307 = and i32 %217, %xor306
  %xor308 = xor i32 %216, %and307
  %add309 = add i32 %or305, %xor308
  %add310 = add i32 %add309, 1518500249
  %arrayidx311 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %220 = load i32, i32* %arrayidx311, align 4
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %221 = load i32, i32* %arrayidx312, align 4
  %xor313 = xor i32 %220, %221
  %arrayidx314 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %222 = load i32, i32* %arrayidx314, align 4
  %xor315 = xor i32 %xor313, %222
  %arrayidx316 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %223 = load i32, i32* %arrayidx316, align 4
  %xor317 = xor i32 %xor315, %223
  store i32 %xor317, i32* %tm, align 4
  %224 = load i32, i32* %tm, align 4
  %shl318 = shl i32 %224, 1
  %225 = load i32, i32* %tm, align 4
  %shr319 = lshr i32 %225, 31
  %or320 = or i32 %shl318, %shr319
  %arrayidx321 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %or320, i32* %arrayidx321, align 4
  %add322 = add i32 %add310, %or320
  %226 = load i32, i32* %c, align 4
  %add323 = add i32 %226, %add322
  store i32 %add323, i32* %c, align 4
  %227 = load i32, i32* %e, align 4
  %shl324 = shl i32 %227, 30
  %228 = load i32, i32* %e, align 4
  %shr325 = lshr i32 %228, 2
  %or326 = or i32 %shl324, %shr325
  store i32 %or326, i32* %e, align 4
  br label %do.end.327

do.end.327:                                       ; preds = %do.body.302
  br label %do.body.328

do.body.328:                                      ; preds = %do.end.327
  %229 = load i32, i32* %c, align 4
  %shl329 = shl i32 %229, 5
  %230 = load i32, i32* %c, align 4
  %shr330 = lshr i32 %230, 27
  %or331 = or i32 %shl329, %shr330
  %231 = load i32, i32* %a, align 4
  %232 = load i32, i32* %d, align 4
  %233 = load i32, i32* %e, align 4
  %234 = load i32, i32* %a, align 4
  %xor332 = xor i32 %233, %234
  %and333 = and i32 %232, %xor332
  %xor334 = xor i32 %231, %and333
  %add335 = add i32 %or331, %xor334
  %add336 = add i32 %add335, 1518500249
  %arrayidx337 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %235 = load i32, i32* %arrayidx337, align 4
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %236 = load i32, i32* %arrayidx338, align 4
  %xor339 = xor i32 %235, %236
  %arrayidx340 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %237 = load i32, i32* %arrayidx340, align 4
  %xor341 = xor i32 %xor339, %237
  %arrayidx342 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %238 = load i32, i32* %arrayidx342, align 4
  %xor343 = xor i32 %xor341, %238
  store i32 %xor343, i32* %tm, align 4
  %239 = load i32, i32* %tm, align 4
  %shl344 = shl i32 %239, 1
  %240 = load i32, i32* %tm, align 4
  %shr345 = lshr i32 %240, 31
  %or346 = or i32 %shl344, %shr345
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %or346, i32* %arrayidx347, align 4
  %add348 = add i32 %add336, %or346
  %241 = load i32, i32* %b, align 4
  %add349 = add i32 %241, %add348
  store i32 %add349, i32* %b, align 4
  %242 = load i32, i32* %d, align 4
  %shl350 = shl i32 %242, 30
  %243 = load i32, i32* %d, align 4
  %shr351 = lshr i32 %243, 2
  %or352 = or i32 %shl350, %shr351
  store i32 %or352, i32* %d, align 4
  br label %do.end.353

do.end.353:                                       ; preds = %do.body.328
  br label %do.body.354

do.body.354:                                      ; preds = %do.end.353
  %244 = load i32, i32* %b, align 4
  %shl355 = shl i32 %244, 5
  %245 = load i32, i32* %b, align 4
  %shr356 = lshr i32 %245, 27
  %or357 = or i32 %shl355, %shr356
  %246 = load i32, i32* %e, align 4
  %247 = load i32, i32* %c, align 4
  %248 = load i32, i32* %d, align 4
  %249 = load i32, i32* %e, align 4
  %xor358 = xor i32 %248, %249
  %and359 = and i32 %247, %xor358
  %xor360 = xor i32 %246, %and359
  %add361 = add i32 %or357, %xor360
  %add362 = add i32 %add361, 1518500249
  %arrayidx363 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %250 = load i32, i32* %arrayidx363, align 4
  %arrayidx364 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %251 = load i32, i32* %arrayidx364, align 4
  %xor365 = xor i32 %250, %251
  %arrayidx366 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %252 = load i32, i32* %arrayidx366, align 4
  %xor367 = xor i32 %xor365, %252
  %arrayidx368 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %253 = load i32, i32* %arrayidx368, align 4
  %xor369 = xor i32 %xor367, %253
  store i32 %xor369, i32* %tm, align 4
  %254 = load i32, i32* %tm, align 4
  %shl370 = shl i32 %254, 1
  %255 = load i32, i32* %tm, align 4
  %shr371 = lshr i32 %255, 31
  %or372 = or i32 %shl370, %shr371
  %arrayidx373 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %or372, i32* %arrayidx373, align 4
  %add374 = add i32 %add362, %or372
  %256 = load i32, i32* %a, align 4
  %add375 = add i32 %256, %add374
  store i32 %add375, i32* %a, align 4
  %257 = load i32, i32* %c, align 4
  %shl376 = shl i32 %257, 30
  %258 = load i32, i32* %c, align 4
  %shr377 = lshr i32 %258, 2
  %or378 = or i32 %shl376, %shr377
  store i32 %or378, i32* %c, align 4
  br label %do.end.379

do.end.379:                                       ; preds = %do.body.354
  br label %do.body.380

do.body.380:                                      ; preds = %do.end.379
  %259 = load i32, i32* %a, align 4
  %shl381 = shl i32 %259, 5
  %260 = load i32, i32* %a, align 4
  %shr382 = lshr i32 %260, 27
  %or383 = or i32 %shl381, %shr382
  %261 = load i32, i32* %b, align 4
  %262 = load i32, i32* %c, align 4
  %xor384 = xor i32 %261, %262
  %263 = load i32, i32* %d, align 4
  %xor385 = xor i32 %xor384, %263
  %add386 = add i32 %or383, %xor385
  %add387 = add i32 %add386, 1859775393
  %arrayidx388 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %264 = load i32, i32* %arrayidx388, align 4
  %arrayidx389 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %265 = load i32, i32* %arrayidx389, align 4
  %xor390 = xor i32 %264, %265
  %arrayidx391 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %266 = load i32, i32* %arrayidx391, align 4
  %xor392 = xor i32 %xor390, %266
  %arrayidx393 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %267 = load i32, i32* %arrayidx393, align 4
  %xor394 = xor i32 %xor392, %267
  store i32 %xor394, i32* %tm, align 4
  %268 = load i32, i32* %tm, align 4
  %shl395 = shl i32 %268, 1
  %269 = load i32, i32* %tm, align 4
  %shr396 = lshr i32 %269, 31
  %or397 = or i32 %shl395, %shr396
  %arrayidx398 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %or397, i32* %arrayidx398, align 4
  %add399 = add i32 %add387, %or397
  %270 = load i32, i32* %e, align 4
  %add400 = add i32 %270, %add399
  store i32 %add400, i32* %e, align 4
  %271 = load i32, i32* %b, align 4
  %shl401 = shl i32 %271, 30
  %272 = load i32, i32* %b, align 4
  %shr402 = lshr i32 %272, 2
  %or403 = or i32 %shl401, %shr402
  store i32 %or403, i32* %b, align 4
  br label %do.end.404

do.end.404:                                       ; preds = %do.body.380
  br label %do.body.405

do.body.405:                                      ; preds = %do.end.404
  %273 = load i32, i32* %e, align 4
  %shl406 = shl i32 %273, 5
  %274 = load i32, i32* %e, align 4
  %shr407 = lshr i32 %274, 27
  %or408 = or i32 %shl406, %shr407
  %275 = load i32, i32* %a, align 4
  %276 = load i32, i32* %b, align 4
  %xor409 = xor i32 %275, %276
  %277 = load i32, i32* %c, align 4
  %xor410 = xor i32 %xor409, %277
  %add411 = add i32 %or408, %xor410
  %add412 = add i32 %add411, 1859775393
  %arrayidx413 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %278 = load i32, i32* %arrayidx413, align 4
  %arrayidx414 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %279 = load i32, i32* %arrayidx414, align 4
  %xor415 = xor i32 %278, %279
  %arrayidx416 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %280 = load i32, i32* %arrayidx416, align 4
  %xor417 = xor i32 %xor415, %280
  %arrayidx418 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %281 = load i32, i32* %arrayidx418, align 4
  %xor419 = xor i32 %xor417, %281
  store i32 %xor419, i32* %tm, align 4
  %282 = load i32, i32* %tm, align 4
  %shl420 = shl i32 %282, 1
  %283 = load i32, i32* %tm, align 4
  %shr421 = lshr i32 %283, 31
  %or422 = or i32 %shl420, %shr421
  %arrayidx423 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %or422, i32* %arrayidx423, align 4
  %add424 = add i32 %add412, %or422
  %284 = load i32, i32* %d, align 4
  %add425 = add i32 %284, %add424
  store i32 %add425, i32* %d, align 4
  %285 = load i32, i32* %a, align 4
  %shl426 = shl i32 %285, 30
  %286 = load i32, i32* %a, align 4
  %shr427 = lshr i32 %286, 2
  %or428 = or i32 %shl426, %shr427
  store i32 %or428, i32* %a, align 4
  br label %do.end.429

do.end.429:                                       ; preds = %do.body.405
  br label %do.body.430

do.body.430:                                      ; preds = %do.end.429
  %287 = load i32, i32* %d, align 4
  %shl431 = shl i32 %287, 5
  %288 = load i32, i32* %d, align 4
  %shr432 = lshr i32 %288, 27
  %or433 = or i32 %shl431, %shr432
  %289 = load i32, i32* %e, align 4
  %290 = load i32, i32* %a, align 4
  %xor434 = xor i32 %289, %290
  %291 = load i32, i32* %b, align 4
  %xor435 = xor i32 %xor434, %291
  %add436 = add i32 %or433, %xor435
  %add437 = add i32 %add436, 1859775393
  %arrayidx438 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %292 = load i32, i32* %arrayidx438, align 4
  %arrayidx439 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %293 = load i32, i32* %arrayidx439, align 4
  %xor440 = xor i32 %292, %293
  %arrayidx441 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %294 = load i32, i32* %arrayidx441, align 4
  %xor442 = xor i32 %xor440, %294
  %arrayidx443 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %295 = load i32, i32* %arrayidx443, align 4
  %xor444 = xor i32 %xor442, %295
  store i32 %xor444, i32* %tm, align 4
  %296 = load i32, i32* %tm, align 4
  %shl445 = shl i32 %296, 1
  %297 = load i32, i32* %tm, align 4
  %shr446 = lshr i32 %297, 31
  %or447 = or i32 %shl445, %shr446
  %arrayidx448 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %or447, i32* %arrayidx448, align 4
  %add449 = add i32 %add437, %or447
  %298 = load i32, i32* %c, align 4
  %add450 = add i32 %298, %add449
  store i32 %add450, i32* %c, align 4
  %299 = load i32, i32* %e, align 4
  %shl451 = shl i32 %299, 30
  %300 = load i32, i32* %e, align 4
  %shr452 = lshr i32 %300, 2
  %or453 = or i32 %shl451, %shr452
  store i32 %or453, i32* %e, align 4
  br label %do.end.454

do.end.454:                                       ; preds = %do.body.430
  br label %do.body.455

do.body.455:                                      ; preds = %do.end.454
  %301 = load i32, i32* %c, align 4
  %shl456 = shl i32 %301, 5
  %302 = load i32, i32* %c, align 4
  %shr457 = lshr i32 %302, 27
  %or458 = or i32 %shl456, %shr457
  %303 = load i32, i32* %d, align 4
  %304 = load i32, i32* %e, align 4
  %xor459 = xor i32 %303, %304
  %305 = load i32, i32* %a, align 4
  %xor460 = xor i32 %xor459, %305
  %add461 = add i32 %or458, %xor460
  %add462 = add i32 %add461, 1859775393
  %arrayidx463 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %306 = load i32, i32* %arrayidx463, align 4
  %arrayidx464 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %307 = load i32, i32* %arrayidx464, align 4
  %xor465 = xor i32 %306, %307
  %arrayidx466 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %308 = load i32, i32* %arrayidx466, align 4
  %xor467 = xor i32 %xor465, %308
  %arrayidx468 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %309 = load i32, i32* %arrayidx468, align 4
  %xor469 = xor i32 %xor467, %309
  store i32 %xor469, i32* %tm, align 4
  %310 = load i32, i32* %tm, align 4
  %shl470 = shl i32 %310, 1
  %311 = load i32, i32* %tm, align 4
  %shr471 = lshr i32 %311, 31
  %or472 = or i32 %shl470, %shr471
  %arrayidx473 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %or472, i32* %arrayidx473, align 4
  %add474 = add i32 %add462, %or472
  %312 = load i32, i32* %b, align 4
  %add475 = add i32 %312, %add474
  store i32 %add475, i32* %b, align 4
  %313 = load i32, i32* %d, align 4
  %shl476 = shl i32 %313, 30
  %314 = load i32, i32* %d, align 4
  %shr477 = lshr i32 %314, 2
  %or478 = or i32 %shl476, %shr477
  store i32 %or478, i32* %d, align 4
  br label %do.end.479

do.end.479:                                       ; preds = %do.body.455
  br label %do.body.480

do.body.480:                                      ; preds = %do.end.479
  %315 = load i32, i32* %b, align 4
  %shl481 = shl i32 %315, 5
  %316 = load i32, i32* %b, align 4
  %shr482 = lshr i32 %316, 27
  %or483 = or i32 %shl481, %shr482
  %317 = load i32, i32* %c, align 4
  %318 = load i32, i32* %d, align 4
  %xor484 = xor i32 %317, %318
  %319 = load i32, i32* %e, align 4
  %xor485 = xor i32 %xor484, %319
  %add486 = add i32 %or483, %xor485
  %add487 = add i32 %add486, 1859775393
  %arrayidx488 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %320 = load i32, i32* %arrayidx488, align 4
  %arrayidx489 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %321 = load i32, i32* %arrayidx489, align 4
  %xor490 = xor i32 %320, %321
  %arrayidx491 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %322 = load i32, i32* %arrayidx491, align 4
  %xor492 = xor i32 %xor490, %322
  %arrayidx493 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %323 = load i32, i32* %arrayidx493, align 4
  %xor494 = xor i32 %xor492, %323
  store i32 %xor494, i32* %tm, align 4
  %324 = load i32, i32* %tm, align 4
  %shl495 = shl i32 %324, 1
  %325 = load i32, i32* %tm, align 4
  %shr496 = lshr i32 %325, 31
  %or497 = or i32 %shl495, %shr496
  %arrayidx498 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %or497, i32* %arrayidx498, align 4
  %add499 = add i32 %add487, %or497
  %326 = load i32, i32* %a, align 4
  %add500 = add i32 %326, %add499
  store i32 %add500, i32* %a, align 4
  %327 = load i32, i32* %c, align 4
  %shl501 = shl i32 %327, 30
  %328 = load i32, i32* %c, align 4
  %shr502 = lshr i32 %328, 2
  %or503 = or i32 %shl501, %shr502
  store i32 %or503, i32* %c, align 4
  br label %do.end.504

do.end.504:                                       ; preds = %do.body.480
  br label %do.body.505

do.body.505:                                      ; preds = %do.end.504
  %329 = load i32, i32* %a, align 4
  %shl506 = shl i32 %329, 5
  %330 = load i32, i32* %a, align 4
  %shr507 = lshr i32 %330, 27
  %or508 = or i32 %shl506, %shr507
  %331 = load i32, i32* %b, align 4
  %332 = load i32, i32* %c, align 4
  %xor509 = xor i32 %331, %332
  %333 = load i32, i32* %d, align 4
  %xor510 = xor i32 %xor509, %333
  %add511 = add i32 %or508, %xor510
  %add512 = add i32 %add511, 1859775393
  %arrayidx513 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %334 = load i32, i32* %arrayidx513, align 4
  %arrayidx514 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %335 = load i32, i32* %arrayidx514, align 4
  %xor515 = xor i32 %334, %335
  %arrayidx516 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %336 = load i32, i32* %arrayidx516, align 4
  %xor517 = xor i32 %xor515, %336
  %arrayidx518 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %337 = load i32, i32* %arrayidx518, align 4
  %xor519 = xor i32 %xor517, %337
  store i32 %xor519, i32* %tm, align 4
  %338 = load i32, i32* %tm, align 4
  %shl520 = shl i32 %338, 1
  %339 = load i32, i32* %tm, align 4
  %shr521 = lshr i32 %339, 31
  %or522 = or i32 %shl520, %shr521
  %arrayidx523 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %or522, i32* %arrayidx523, align 4
  %add524 = add i32 %add512, %or522
  %340 = load i32, i32* %e, align 4
  %add525 = add i32 %340, %add524
  store i32 %add525, i32* %e, align 4
  %341 = load i32, i32* %b, align 4
  %shl526 = shl i32 %341, 30
  %342 = load i32, i32* %b, align 4
  %shr527 = lshr i32 %342, 2
  %or528 = or i32 %shl526, %shr527
  store i32 %or528, i32* %b, align 4
  br label %do.end.529

do.end.529:                                       ; preds = %do.body.505
  br label %do.body.530

do.body.530:                                      ; preds = %do.end.529
  %343 = load i32, i32* %e, align 4
  %shl531 = shl i32 %343, 5
  %344 = load i32, i32* %e, align 4
  %shr532 = lshr i32 %344, 27
  %or533 = or i32 %shl531, %shr532
  %345 = load i32, i32* %a, align 4
  %346 = load i32, i32* %b, align 4
  %xor534 = xor i32 %345, %346
  %347 = load i32, i32* %c, align 4
  %xor535 = xor i32 %xor534, %347
  %add536 = add i32 %or533, %xor535
  %add537 = add i32 %add536, 1859775393
  %arrayidx538 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %348 = load i32, i32* %arrayidx538, align 4
  %arrayidx539 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %349 = load i32, i32* %arrayidx539, align 4
  %xor540 = xor i32 %348, %349
  %arrayidx541 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %350 = load i32, i32* %arrayidx541, align 4
  %xor542 = xor i32 %xor540, %350
  %arrayidx543 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %351 = load i32, i32* %arrayidx543, align 4
  %xor544 = xor i32 %xor542, %351
  store i32 %xor544, i32* %tm, align 4
  %352 = load i32, i32* %tm, align 4
  %shl545 = shl i32 %352, 1
  %353 = load i32, i32* %tm, align 4
  %shr546 = lshr i32 %353, 31
  %or547 = or i32 %shl545, %shr546
  %arrayidx548 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %or547, i32* %arrayidx548, align 4
  %add549 = add i32 %add537, %or547
  %354 = load i32, i32* %d, align 4
  %add550 = add i32 %354, %add549
  store i32 %add550, i32* %d, align 4
  %355 = load i32, i32* %a, align 4
  %shl551 = shl i32 %355, 30
  %356 = load i32, i32* %a, align 4
  %shr552 = lshr i32 %356, 2
  %or553 = or i32 %shl551, %shr552
  store i32 %or553, i32* %a, align 4
  br label %do.end.554

do.end.554:                                       ; preds = %do.body.530
  br label %do.body.555

do.body.555:                                      ; preds = %do.end.554
  %357 = load i32, i32* %d, align 4
  %shl556 = shl i32 %357, 5
  %358 = load i32, i32* %d, align 4
  %shr557 = lshr i32 %358, 27
  %or558 = or i32 %shl556, %shr557
  %359 = load i32, i32* %e, align 4
  %360 = load i32, i32* %a, align 4
  %xor559 = xor i32 %359, %360
  %361 = load i32, i32* %b, align 4
  %xor560 = xor i32 %xor559, %361
  %add561 = add i32 %or558, %xor560
  %add562 = add i32 %add561, 1859775393
  %arrayidx563 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %362 = load i32, i32* %arrayidx563, align 4
  %arrayidx564 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %363 = load i32, i32* %arrayidx564, align 4
  %xor565 = xor i32 %362, %363
  %arrayidx566 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %364 = load i32, i32* %arrayidx566, align 4
  %xor567 = xor i32 %xor565, %364
  %arrayidx568 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %365 = load i32, i32* %arrayidx568, align 4
  %xor569 = xor i32 %xor567, %365
  store i32 %xor569, i32* %tm, align 4
  %366 = load i32, i32* %tm, align 4
  %shl570 = shl i32 %366, 1
  %367 = load i32, i32* %tm, align 4
  %shr571 = lshr i32 %367, 31
  %or572 = or i32 %shl570, %shr571
  %arrayidx573 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %or572, i32* %arrayidx573, align 4
  %add574 = add i32 %add562, %or572
  %368 = load i32, i32* %c, align 4
  %add575 = add i32 %368, %add574
  store i32 %add575, i32* %c, align 4
  %369 = load i32, i32* %e, align 4
  %shl576 = shl i32 %369, 30
  %370 = load i32, i32* %e, align 4
  %shr577 = lshr i32 %370, 2
  %or578 = or i32 %shl576, %shr577
  store i32 %or578, i32* %e, align 4
  br label %do.end.579

do.end.579:                                       ; preds = %do.body.555
  br label %do.body.580

do.body.580:                                      ; preds = %do.end.579
  %371 = load i32, i32* %c, align 4
  %shl581 = shl i32 %371, 5
  %372 = load i32, i32* %c, align 4
  %shr582 = lshr i32 %372, 27
  %or583 = or i32 %shl581, %shr582
  %373 = load i32, i32* %d, align 4
  %374 = load i32, i32* %e, align 4
  %xor584 = xor i32 %373, %374
  %375 = load i32, i32* %a, align 4
  %xor585 = xor i32 %xor584, %375
  %add586 = add i32 %or583, %xor585
  %add587 = add i32 %add586, 1859775393
  %arrayidx588 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %376 = load i32, i32* %arrayidx588, align 4
  %arrayidx589 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %377 = load i32, i32* %arrayidx589, align 4
  %xor590 = xor i32 %376, %377
  %arrayidx591 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %378 = load i32, i32* %arrayidx591, align 4
  %xor592 = xor i32 %xor590, %378
  %arrayidx593 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %379 = load i32, i32* %arrayidx593, align 4
  %xor594 = xor i32 %xor592, %379
  store i32 %xor594, i32* %tm, align 4
  %380 = load i32, i32* %tm, align 4
  %shl595 = shl i32 %380, 1
  %381 = load i32, i32* %tm, align 4
  %shr596 = lshr i32 %381, 31
  %or597 = or i32 %shl595, %shr596
  %arrayidx598 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %or597, i32* %arrayidx598, align 4
  %add599 = add i32 %add587, %or597
  %382 = load i32, i32* %b, align 4
  %add600 = add i32 %382, %add599
  store i32 %add600, i32* %b, align 4
  %383 = load i32, i32* %d, align 4
  %shl601 = shl i32 %383, 30
  %384 = load i32, i32* %d, align 4
  %shr602 = lshr i32 %384, 2
  %or603 = or i32 %shl601, %shr602
  store i32 %or603, i32* %d, align 4
  br label %do.end.604

do.end.604:                                       ; preds = %do.body.580
  br label %do.body.605

do.body.605:                                      ; preds = %do.end.604
  %385 = load i32, i32* %b, align 4
  %shl606 = shl i32 %385, 5
  %386 = load i32, i32* %b, align 4
  %shr607 = lshr i32 %386, 27
  %or608 = or i32 %shl606, %shr607
  %387 = load i32, i32* %c, align 4
  %388 = load i32, i32* %d, align 4
  %xor609 = xor i32 %387, %388
  %389 = load i32, i32* %e, align 4
  %xor610 = xor i32 %xor609, %389
  %add611 = add i32 %or608, %xor610
  %add612 = add i32 %add611, 1859775393
  %arrayidx613 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %390 = load i32, i32* %arrayidx613, align 4
  %arrayidx614 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %391 = load i32, i32* %arrayidx614, align 4
  %xor615 = xor i32 %390, %391
  %arrayidx616 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %392 = load i32, i32* %arrayidx616, align 4
  %xor617 = xor i32 %xor615, %392
  %arrayidx618 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %393 = load i32, i32* %arrayidx618, align 4
  %xor619 = xor i32 %xor617, %393
  store i32 %xor619, i32* %tm, align 4
  %394 = load i32, i32* %tm, align 4
  %shl620 = shl i32 %394, 1
  %395 = load i32, i32* %tm, align 4
  %shr621 = lshr i32 %395, 31
  %or622 = or i32 %shl620, %shr621
  %arrayidx623 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %or622, i32* %arrayidx623, align 4
  %add624 = add i32 %add612, %or622
  %396 = load i32, i32* %a, align 4
  %add625 = add i32 %396, %add624
  store i32 %add625, i32* %a, align 4
  %397 = load i32, i32* %c, align 4
  %shl626 = shl i32 %397, 30
  %398 = load i32, i32* %c, align 4
  %shr627 = lshr i32 %398, 2
  %or628 = or i32 %shl626, %shr627
  store i32 %or628, i32* %c, align 4
  br label %do.end.629

do.end.629:                                       ; preds = %do.body.605
  br label %do.body.630

do.body.630:                                      ; preds = %do.end.629
  %399 = load i32, i32* %a, align 4
  %shl631 = shl i32 %399, 5
  %400 = load i32, i32* %a, align 4
  %shr632 = lshr i32 %400, 27
  %or633 = or i32 %shl631, %shr632
  %401 = load i32, i32* %b, align 4
  %402 = load i32, i32* %c, align 4
  %xor634 = xor i32 %401, %402
  %403 = load i32, i32* %d, align 4
  %xor635 = xor i32 %xor634, %403
  %add636 = add i32 %or633, %xor635
  %add637 = add i32 %add636, 1859775393
  %arrayidx638 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %404 = load i32, i32* %arrayidx638, align 4
  %arrayidx639 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %405 = load i32, i32* %arrayidx639, align 4
  %xor640 = xor i32 %404, %405
  %arrayidx641 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %406 = load i32, i32* %arrayidx641, align 4
  %xor642 = xor i32 %xor640, %406
  %arrayidx643 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %407 = load i32, i32* %arrayidx643, align 4
  %xor644 = xor i32 %xor642, %407
  store i32 %xor644, i32* %tm, align 4
  %408 = load i32, i32* %tm, align 4
  %shl645 = shl i32 %408, 1
  %409 = load i32, i32* %tm, align 4
  %shr646 = lshr i32 %409, 31
  %or647 = or i32 %shl645, %shr646
  %arrayidx648 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %or647, i32* %arrayidx648, align 4
  %add649 = add i32 %add637, %or647
  %410 = load i32, i32* %e, align 4
  %add650 = add i32 %410, %add649
  store i32 %add650, i32* %e, align 4
  %411 = load i32, i32* %b, align 4
  %shl651 = shl i32 %411, 30
  %412 = load i32, i32* %b, align 4
  %shr652 = lshr i32 %412, 2
  %or653 = or i32 %shl651, %shr652
  store i32 %or653, i32* %b, align 4
  br label %do.end.654

do.end.654:                                       ; preds = %do.body.630
  br label %do.body.655

do.body.655:                                      ; preds = %do.end.654
  %413 = load i32, i32* %e, align 4
  %shl656 = shl i32 %413, 5
  %414 = load i32, i32* %e, align 4
  %shr657 = lshr i32 %414, 27
  %or658 = or i32 %shl656, %shr657
  %415 = load i32, i32* %a, align 4
  %416 = load i32, i32* %b, align 4
  %xor659 = xor i32 %415, %416
  %417 = load i32, i32* %c, align 4
  %xor660 = xor i32 %xor659, %417
  %add661 = add i32 %or658, %xor660
  %add662 = add i32 %add661, 1859775393
  %arrayidx663 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %418 = load i32, i32* %arrayidx663, align 4
  %arrayidx664 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %419 = load i32, i32* %arrayidx664, align 4
  %xor665 = xor i32 %418, %419
  %arrayidx666 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %420 = load i32, i32* %arrayidx666, align 4
  %xor667 = xor i32 %xor665, %420
  %arrayidx668 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %421 = load i32, i32* %arrayidx668, align 4
  %xor669 = xor i32 %xor667, %421
  store i32 %xor669, i32* %tm, align 4
  %422 = load i32, i32* %tm, align 4
  %shl670 = shl i32 %422, 1
  %423 = load i32, i32* %tm, align 4
  %shr671 = lshr i32 %423, 31
  %or672 = or i32 %shl670, %shr671
  %arrayidx673 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %or672, i32* %arrayidx673, align 4
  %add674 = add i32 %add662, %or672
  %424 = load i32, i32* %d, align 4
  %add675 = add i32 %424, %add674
  store i32 %add675, i32* %d, align 4
  %425 = load i32, i32* %a, align 4
  %shl676 = shl i32 %425, 30
  %426 = load i32, i32* %a, align 4
  %shr677 = lshr i32 %426, 2
  %or678 = or i32 %shl676, %shr677
  store i32 %or678, i32* %a, align 4
  br label %do.end.679

do.end.679:                                       ; preds = %do.body.655
  br label %do.body.680

do.body.680:                                      ; preds = %do.end.679
  %427 = load i32, i32* %d, align 4
  %shl681 = shl i32 %427, 5
  %428 = load i32, i32* %d, align 4
  %shr682 = lshr i32 %428, 27
  %or683 = or i32 %shl681, %shr682
  %429 = load i32, i32* %e, align 4
  %430 = load i32, i32* %a, align 4
  %xor684 = xor i32 %429, %430
  %431 = load i32, i32* %b, align 4
  %xor685 = xor i32 %xor684, %431
  %add686 = add i32 %or683, %xor685
  %add687 = add i32 %add686, 1859775393
  %arrayidx688 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %432 = load i32, i32* %arrayidx688, align 4
  %arrayidx689 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %433 = load i32, i32* %arrayidx689, align 4
  %xor690 = xor i32 %432, %433
  %arrayidx691 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %434 = load i32, i32* %arrayidx691, align 4
  %xor692 = xor i32 %xor690, %434
  %arrayidx693 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %435 = load i32, i32* %arrayidx693, align 4
  %xor694 = xor i32 %xor692, %435
  store i32 %xor694, i32* %tm, align 4
  %436 = load i32, i32* %tm, align 4
  %shl695 = shl i32 %436, 1
  %437 = load i32, i32* %tm, align 4
  %shr696 = lshr i32 %437, 31
  %or697 = or i32 %shl695, %shr696
  %arrayidx698 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %or697, i32* %arrayidx698, align 4
  %add699 = add i32 %add687, %or697
  %438 = load i32, i32* %c, align 4
  %add700 = add i32 %438, %add699
  store i32 %add700, i32* %c, align 4
  %439 = load i32, i32* %e, align 4
  %shl701 = shl i32 %439, 30
  %440 = load i32, i32* %e, align 4
  %shr702 = lshr i32 %440, 2
  %or703 = or i32 %shl701, %shr702
  store i32 %or703, i32* %e, align 4
  br label %do.end.704

do.end.704:                                       ; preds = %do.body.680
  br label %do.body.705

do.body.705:                                      ; preds = %do.end.704
  %441 = load i32, i32* %c, align 4
  %shl706 = shl i32 %441, 5
  %442 = load i32, i32* %c, align 4
  %shr707 = lshr i32 %442, 27
  %or708 = or i32 %shl706, %shr707
  %443 = load i32, i32* %d, align 4
  %444 = load i32, i32* %e, align 4
  %xor709 = xor i32 %443, %444
  %445 = load i32, i32* %a, align 4
  %xor710 = xor i32 %xor709, %445
  %add711 = add i32 %or708, %xor710
  %add712 = add i32 %add711, 1859775393
  %arrayidx713 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %446 = load i32, i32* %arrayidx713, align 4
  %arrayidx714 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %447 = load i32, i32* %arrayidx714, align 4
  %xor715 = xor i32 %446, %447
  %arrayidx716 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %448 = load i32, i32* %arrayidx716, align 4
  %xor717 = xor i32 %xor715, %448
  %arrayidx718 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %449 = load i32, i32* %arrayidx718, align 4
  %xor719 = xor i32 %xor717, %449
  store i32 %xor719, i32* %tm, align 4
  %450 = load i32, i32* %tm, align 4
  %shl720 = shl i32 %450, 1
  %451 = load i32, i32* %tm, align 4
  %shr721 = lshr i32 %451, 31
  %or722 = or i32 %shl720, %shr721
  %arrayidx723 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %or722, i32* %arrayidx723, align 4
  %add724 = add i32 %add712, %or722
  %452 = load i32, i32* %b, align 4
  %add725 = add i32 %452, %add724
  store i32 %add725, i32* %b, align 4
  %453 = load i32, i32* %d, align 4
  %shl726 = shl i32 %453, 30
  %454 = load i32, i32* %d, align 4
  %shr727 = lshr i32 %454, 2
  %or728 = or i32 %shl726, %shr727
  store i32 %or728, i32* %d, align 4
  br label %do.end.729

do.end.729:                                       ; preds = %do.body.705
  br label %do.body.730

do.body.730:                                      ; preds = %do.end.729
  %455 = load i32, i32* %b, align 4
  %shl731 = shl i32 %455, 5
  %456 = load i32, i32* %b, align 4
  %shr732 = lshr i32 %456, 27
  %or733 = or i32 %shl731, %shr732
  %457 = load i32, i32* %c, align 4
  %458 = load i32, i32* %d, align 4
  %xor734 = xor i32 %457, %458
  %459 = load i32, i32* %e, align 4
  %xor735 = xor i32 %xor734, %459
  %add736 = add i32 %or733, %xor735
  %add737 = add i32 %add736, 1859775393
  %arrayidx738 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %460 = load i32, i32* %arrayidx738, align 4
  %arrayidx739 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %461 = load i32, i32* %arrayidx739, align 4
  %xor740 = xor i32 %460, %461
  %arrayidx741 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %462 = load i32, i32* %arrayidx741, align 4
  %xor742 = xor i32 %xor740, %462
  %arrayidx743 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %463 = load i32, i32* %arrayidx743, align 4
  %xor744 = xor i32 %xor742, %463
  store i32 %xor744, i32* %tm, align 4
  %464 = load i32, i32* %tm, align 4
  %shl745 = shl i32 %464, 1
  %465 = load i32, i32* %tm, align 4
  %shr746 = lshr i32 %465, 31
  %or747 = or i32 %shl745, %shr746
  %arrayidx748 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %or747, i32* %arrayidx748, align 4
  %add749 = add i32 %add737, %or747
  %466 = load i32, i32* %a, align 4
  %add750 = add i32 %466, %add749
  store i32 %add750, i32* %a, align 4
  %467 = load i32, i32* %c, align 4
  %shl751 = shl i32 %467, 30
  %468 = load i32, i32* %c, align 4
  %shr752 = lshr i32 %468, 2
  %or753 = or i32 %shl751, %shr752
  store i32 %or753, i32* %c, align 4
  br label %do.end.754

do.end.754:                                       ; preds = %do.body.730
  br label %do.body.755

do.body.755:                                      ; preds = %do.end.754
  %469 = load i32, i32* %a, align 4
  %shl756 = shl i32 %469, 5
  %470 = load i32, i32* %a, align 4
  %shr757 = lshr i32 %470, 27
  %or758 = or i32 %shl756, %shr757
  %471 = load i32, i32* %b, align 4
  %472 = load i32, i32* %c, align 4
  %xor759 = xor i32 %471, %472
  %473 = load i32, i32* %d, align 4
  %xor760 = xor i32 %xor759, %473
  %add761 = add i32 %or758, %xor760
  %add762 = add i32 %add761, 1859775393
  %arrayidx763 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %474 = load i32, i32* %arrayidx763, align 4
  %arrayidx764 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %475 = load i32, i32* %arrayidx764, align 4
  %xor765 = xor i32 %474, %475
  %arrayidx766 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %476 = load i32, i32* %arrayidx766, align 4
  %xor767 = xor i32 %xor765, %476
  %arrayidx768 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %477 = load i32, i32* %arrayidx768, align 4
  %xor769 = xor i32 %xor767, %477
  store i32 %xor769, i32* %tm, align 4
  %478 = load i32, i32* %tm, align 4
  %shl770 = shl i32 %478, 1
  %479 = load i32, i32* %tm, align 4
  %shr771 = lshr i32 %479, 31
  %or772 = or i32 %shl770, %shr771
  %arrayidx773 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %or772, i32* %arrayidx773, align 4
  %add774 = add i32 %add762, %or772
  %480 = load i32, i32* %e, align 4
  %add775 = add i32 %480, %add774
  store i32 %add775, i32* %e, align 4
  %481 = load i32, i32* %b, align 4
  %shl776 = shl i32 %481, 30
  %482 = load i32, i32* %b, align 4
  %shr777 = lshr i32 %482, 2
  %or778 = or i32 %shl776, %shr777
  store i32 %or778, i32* %b, align 4
  br label %do.end.779

do.end.779:                                       ; preds = %do.body.755
  br label %do.body.780

do.body.780:                                      ; preds = %do.end.779
  %483 = load i32, i32* %e, align 4
  %shl781 = shl i32 %483, 5
  %484 = load i32, i32* %e, align 4
  %shr782 = lshr i32 %484, 27
  %or783 = or i32 %shl781, %shr782
  %485 = load i32, i32* %a, align 4
  %486 = load i32, i32* %b, align 4
  %xor784 = xor i32 %485, %486
  %487 = load i32, i32* %c, align 4
  %xor785 = xor i32 %xor784, %487
  %add786 = add i32 %or783, %xor785
  %add787 = add i32 %add786, 1859775393
  %arrayidx788 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %488 = load i32, i32* %arrayidx788, align 4
  %arrayidx789 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %489 = load i32, i32* %arrayidx789, align 4
  %xor790 = xor i32 %488, %489
  %arrayidx791 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %490 = load i32, i32* %arrayidx791, align 4
  %xor792 = xor i32 %xor790, %490
  %arrayidx793 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %491 = load i32, i32* %arrayidx793, align 4
  %xor794 = xor i32 %xor792, %491
  store i32 %xor794, i32* %tm, align 4
  %492 = load i32, i32* %tm, align 4
  %shl795 = shl i32 %492, 1
  %493 = load i32, i32* %tm, align 4
  %shr796 = lshr i32 %493, 31
  %or797 = or i32 %shl795, %shr796
  %arrayidx798 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %or797, i32* %arrayidx798, align 4
  %add799 = add i32 %add787, %or797
  %494 = load i32, i32* %d, align 4
  %add800 = add i32 %494, %add799
  store i32 %add800, i32* %d, align 4
  %495 = load i32, i32* %a, align 4
  %shl801 = shl i32 %495, 30
  %496 = load i32, i32* %a, align 4
  %shr802 = lshr i32 %496, 2
  %or803 = or i32 %shl801, %shr802
  store i32 %or803, i32* %a, align 4
  br label %do.end.804

do.end.804:                                       ; preds = %do.body.780
  br label %do.body.805

do.body.805:                                      ; preds = %do.end.804
  %497 = load i32, i32* %d, align 4
  %shl806 = shl i32 %497, 5
  %498 = load i32, i32* %d, align 4
  %shr807 = lshr i32 %498, 27
  %or808 = or i32 %shl806, %shr807
  %499 = load i32, i32* %e, align 4
  %500 = load i32, i32* %a, align 4
  %xor809 = xor i32 %499, %500
  %501 = load i32, i32* %b, align 4
  %xor810 = xor i32 %xor809, %501
  %add811 = add i32 %or808, %xor810
  %add812 = add i32 %add811, 1859775393
  %arrayidx813 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %502 = load i32, i32* %arrayidx813, align 4
  %arrayidx814 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %503 = load i32, i32* %arrayidx814, align 4
  %xor815 = xor i32 %502, %503
  %arrayidx816 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %504 = load i32, i32* %arrayidx816, align 4
  %xor817 = xor i32 %xor815, %504
  %arrayidx818 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %505 = load i32, i32* %arrayidx818, align 4
  %xor819 = xor i32 %xor817, %505
  store i32 %xor819, i32* %tm, align 4
  %506 = load i32, i32* %tm, align 4
  %shl820 = shl i32 %506, 1
  %507 = load i32, i32* %tm, align 4
  %shr821 = lshr i32 %507, 31
  %or822 = or i32 %shl820, %shr821
  %arrayidx823 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %or822, i32* %arrayidx823, align 4
  %add824 = add i32 %add812, %or822
  %508 = load i32, i32* %c, align 4
  %add825 = add i32 %508, %add824
  store i32 %add825, i32* %c, align 4
  %509 = load i32, i32* %e, align 4
  %shl826 = shl i32 %509, 30
  %510 = load i32, i32* %e, align 4
  %shr827 = lshr i32 %510, 2
  %or828 = or i32 %shl826, %shr827
  store i32 %or828, i32* %e, align 4
  br label %do.end.829

do.end.829:                                       ; preds = %do.body.805
  br label %do.body.830

do.body.830:                                      ; preds = %do.end.829
  %511 = load i32, i32* %c, align 4
  %shl831 = shl i32 %511, 5
  %512 = load i32, i32* %c, align 4
  %shr832 = lshr i32 %512, 27
  %or833 = or i32 %shl831, %shr832
  %513 = load i32, i32* %d, align 4
  %514 = load i32, i32* %e, align 4
  %xor834 = xor i32 %513, %514
  %515 = load i32, i32* %a, align 4
  %xor835 = xor i32 %xor834, %515
  %add836 = add i32 %or833, %xor835
  %add837 = add i32 %add836, 1859775393
  %arrayidx838 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %516 = load i32, i32* %arrayidx838, align 4
  %arrayidx839 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %517 = load i32, i32* %arrayidx839, align 4
  %xor840 = xor i32 %516, %517
  %arrayidx841 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %518 = load i32, i32* %arrayidx841, align 4
  %xor842 = xor i32 %xor840, %518
  %arrayidx843 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %519 = load i32, i32* %arrayidx843, align 4
  %xor844 = xor i32 %xor842, %519
  store i32 %xor844, i32* %tm, align 4
  %520 = load i32, i32* %tm, align 4
  %shl845 = shl i32 %520, 1
  %521 = load i32, i32* %tm, align 4
  %shr846 = lshr i32 %521, 31
  %or847 = or i32 %shl845, %shr846
  %arrayidx848 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %or847, i32* %arrayidx848, align 4
  %add849 = add i32 %add837, %or847
  %522 = load i32, i32* %b, align 4
  %add850 = add i32 %522, %add849
  store i32 %add850, i32* %b, align 4
  %523 = load i32, i32* %d, align 4
  %shl851 = shl i32 %523, 30
  %524 = load i32, i32* %d, align 4
  %shr852 = lshr i32 %524, 2
  %or853 = or i32 %shl851, %shr852
  store i32 %or853, i32* %d, align 4
  br label %do.end.854

do.end.854:                                       ; preds = %do.body.830
  br label %do.body.855

do.body.855:                                      ; preds = %do.end.854
  %525 = load i32, i32* %b, align 4
  %shl856 = shl i32 %525, 5
  %526 = load i32, i32* %b, align 4
  %shr857 = lshr i32 %526, 27
  %or858 = or i32 %shl856, %shr857
  %527 = load i32, i32* %c, align 4
  %528 = load i32, i32* %d, align 4
  %xor859 = xor i32 %527, %528
  %529 = load i32, i32* %e, align 4
  %xor860 = xor i32 %xor859, %529
  %add861 = add i32 %or858, %xor860
  %add862 = add i32 %add861, 1859775393
  %arrayidx863 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %530 = load i32, i32* %arrayidx863, align 4
  %arrayidx864 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %531 = load i32, i32* %arrayidx864, align 4
  %xor865 = xor i32 %530, %531
  %arrayidx866 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %532 = load i32, i32* %arrayidx866, align 4
  %xor867 = xor i32 %xor865, %532
  %arrayidx868 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %533 = load i32, i32* %arrayidx868, align 4
  %xor869 = xor i32 %xor867, %533
  store i32 %xor869, i32* %tm, align 4
  %534 = load i32, i32* %tm, align 4
  %shl870 = shl i32 %534, 1
  %535 = load i32, i32* %tm, align 4
  %shr871 = lshr i32 %535, 31
  %or872 = or i32 %shl870, %shr871
  %arrayidx873 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %or872, i32* %arrayidx873, align 4
  %add874 = add i32 %add862, %or872
  %536 = load i32, i32* %a, align 4
  %add875 = add i32 %536, %add874
  store i32 %add875, i32* %a, align 4
  %537 = load i32, i32* %c, align 4
  %shl876 = shl i32 %537, 30
  %538 = load i32, i32* %c, align 4
  %shr877 = lshr i32 %538, 2
  %or878 = or i32 %shl876, %shr877
  store i32 %or878, i32* %c, align 4
  br label %do.end.879

do.end.879:                                       ; preds = %do.body.855
  br label %do.body.880

do.body.880:                                      ; preds = %do.end.879
  %539 = load i32, i32* %a, align 4
  %shl881 = shl i32 %539, 5
  %540 = load i32, i32* %a, align 4
  %shr882 = lshr i32 %540, 27
  %or883 = or i32 %shl881, %shr882
  %541 = load i32, i32* %b, align 4
  %542 = load i32, i32* %c, align 4
  %and884 = and i32 %541, %542
  %543 = load i32, i32* %d, align 4
  %544 = load i32, i32* %b, align 4
  %545 = load i32, i32* %c, align 4
  %or885 = or i32 %544, %545
  %and886 = and i32 %543, %or885
  %or887 = or i32 %and884, %and886
  %add888 = add i32 %or883, %or887
  %add889 = add i32 %add888, -1894007588
  %arrayidx890 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %546 = load i32, i32* %arrayidx890, align 4
  %arrayidx891 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %547 = load i32, i32* %arrayidx891, align 4
  %xor892 = xor i32 %546, %547
  %arrayidx893 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %548 = load i32, i32* %arrayidx893, align 4
  %xor894 = xor i32 %xor892, %548
  %arrayidx895 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %549 = load i32, i32* %arrayidx895, align 4
  %xor896 = xor i32 %xor894, %549
  store i32 %xor896, i32* %tm, align 4
  %550 = load i32, i32* %tm, align 4
  %shl897 = shl i32 %550, 1
  %551 = load i32, i32* %tm, align 4
  %shr898 = lshr i32 %551, 31
  %or899 = or i32 %shl897, %shr898
  %arrayidx900 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %or899, i32* %arrayidx900, align 4
  %add901 = add i32 %add889, %or899
  %552 = load i32, i32* %e, align 4
  %add902 = add i32 %552, %add901
  store i32 %add902, i32* %e, align 4
  %553 = load i32, i32* %b, align 4
  %shl903 = shl i32 %553, 30
  %554 = load i32, i32* %b, align 4
  %shr904 = lshr i32 %554, 2
  %or905 = or i32 %shl903, %shr904
  store i32 %or905, i32* %b, align 4
  br label %do.end.906

do.end.906:                                       ; preds = %do.body.880
  br label %do.body.907

do.body.907:                                      ; preds = %do.end.906
  %555 = load i32, i32* %e, align 4
  %shl908 = shl i32 %555, 5
  %556 = load i32, i32* %e, align 4
  %shr909 = lshr i32 %556, 27
  %or910 = or i32 %shl908, %shr909
  %557 = load i32, i32* %a, align 4
  %558 = load i32, i32* %b, align 4
  %and911 = and i32 %557, %558
  %559 = load i32, i32* %c, align 4
  %560 = load i32, i32* %a, align 4
  %561 = load i32, i32* %b, align 4
  %or912 = or i32 %560, %561
  %and913 = and i32 %559, %or912
  %or914 = or i32 %and911, %and913
  %add915 = add i32 %or910, %or914
  %add916 = add i32 %add915, -1894007588
  %arrayidx917 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %562 = load i32, i32* %arrayidx917, align 4
  %arrayidx918 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %563 = load i32, i32* %arrayidx918, align 4
  %xor919 = xor i32 %562, %563
  %arrayidx920 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %564 = load i32, i32* %arrayidx920, align 4
  %xor921 = xor i32 %xor919, %564
  %arrayidx922 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %565 = load i32, i32* %arrayidx922, align 4
  %xor923 = xor i32 %xor921, %565
  store i32 %xor923, i32* %tm, align 4
  %566 = load i32, i32* %tm, align 4
  %shl924 = shl i32 %566, 1
  %567 = load i32, i32* %tm, align 4
  %shr925 = lshr i32 %567, 31
  %or926 = or i32 %shl924, %shr925
  %arrayidx927 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %or926, i32* %arrayidx927, align 4
  %add928 = add i32 %add916, %or926
  %568 = load i32, i32* %d, align 4
  %add929 = add i32 %568, %add928
  store i32 %add929, i32* %d, align 4
  %569 = load i32, i32* %a, align 4
  %shl930 = shl i32 %569, 30
  %570 = load i32, i32* %a, align 4
  %shr931 = lshr i32 %570, 2
  %or932 = or i32 %shl930, %shr931
  store i32 %or932, i32* %a, align 4
  br label %do.end.933

do.end.933:                                       ; preds = %do.body.907
  br label %do.body.934

do.body.934:                                      ; preds = %do.end.933
  %571 = load i32, i32* %d, align 4
  %shl935 = shl i32 %571, 5
  %572 = load i32, i32* %d, align 4
  %shr936 = lshr i32 %572, 27
  %or937 = or i32 %shl935, %shr936
  %573 = load i32, i32* %e, align 4
  %574 = load i32, i32* %a, align 4
  %and938 = and i32 %573, %574
  %575 = load i32, i32* %b, align 4
  %576 = load i32, i32* %e, align 4
  %577 = load i32, i32* %a, align 4
  %or939 = or i32 %576, %577
  %and940 = and i32 %575, %or939
  %or941 = or i32 %and938, %and940
  %add942 = add i32 %or937, %or941
  %add943 = add i32 %add942, -1894007588
  %arrayidx944 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %578 = load i32, i32* %arrayidx944, align 4
  %arrayidx945 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %579 = load i32, i32* %arrayidx945, align 4
  %xor946 = xor i32 %578, %579
  %arrayidx947 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %580 = load i32, i32* %arrayidx947, align 4
  %xor948 = xor i32 %xor946, %580
  %arrayidx949 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %581 = load i32, i32* %arrayidx949, align 4
  %xor950 = xor i32 %xor948, %581
  store i32 %xor950, i32* %tm, align 4
  %582 = load i32, i32* %tm, align 4
  %shl951 = shl i32 %582, 1
  %583 = load i32, i32* %tm, align 4
  %shr952 = lshr i32 %583, 31
  %or953 = or i32 %shl951, %shr952
  %arrayidx954 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %or953, i32* %arrayidx954, align 4
  %add955 = add i32 %add943, %or953
  %584 = load i32, i32* %c, align 4
  %add956 = add i32 %584, %add955
  store i32 %add956, i32* %c, align 4
  %585 = load i32, i32* %e, align 4
  %shl957 = shl i32 %585, 30
  %586 = load i32, i32* %e, align 4
  %shr958 = lshr i32 %586, 2
  %or959 = or i32 %shl957, %shr958
  store i32 %or959, i32* %e, align 4
  br label %do.end.960

do.end.960:                                       ; preds = %do.body.934
  br label %do.body.961

do.body.961:                                      ; preds = %do.end.960
  %587 = load i32, i32* %c, align 4
  %shl962 = shl i32 %587, 5
  %588 = load i32, i32* %c, align 4
  %shr963 = lshr i32 %588, 27
  %or964 = or i32 %shl962, %shr963
  %589 = load i32, i32* %d, align 4
  %590 = load i32, i32* %e, align 4
  %and965 = and i32 %589, %590
  %591 = load i32, i32* %a, align 4
  %592 = load i32, i32* %d, align 4
  %593 = load i32, i32* %e, align 4
  %or966 = or i32 %592, %593
  %and967 = and i32 %591, %or966
  %or968 = or i32 %and965, %and967
  %add969 = add i32 %or964, %or968
  %add970 = add i32 %add969, -1894007588
  %arrayidx971 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %594 = load i32, i32* %arrayidx971, align 4
  %arrayidx972 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %595 = load i32, i32* %arrayidx972, align 4
  %xor973 = xor i32 %594, %595
  %arrayidx974 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %596 = load i32, i32* %arrayidx974, align 4
  %xor975 = xor i32 %xor973, %596
  %arrayidx976 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %597 = load i32, i32* %arrayidx976, align 4
  %xor977 = xor i32 %xor975, %597
  store i32 %xor977, i32* %tm, align 4
  %598 = load i32, i32* %tm, align 4
  %shl978 = shl i32 %598, 1
  %599 = load i32, i32* %tm, align 4
  %shr979 = lshr i32 %599, 31
  %or980 = or i32 %shl978, %shr979
  %arrayidx981 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %or980, i32* %arrayidx981, align 4
  %add982 = add i32 %add970, %or980
  %600 = load i32, i32* %b, align 4
  %add983 = add i32 %600, %add982
  store i32 %add983, i32* %b, align 4
  %601 = load i32, i32* %d, align 4
  %shl984 = shl i32 %601, 30
  %602 = load i32, i32* %d, align 4
  %shr985 = lshr i32 %602, 2
  %or986 = or i32 %shl984, %shr985
  store i32 %or986, i32* %d, align 4
  br label %do.end.987

do.end.987:                                       ; preds = %do.body.961
  br label %do.body.988

do.body.988:                                      ; preds = %do.end.987
  %603 = load i32, i32* %b, align 4
  %shl989 = shl i32 %603, 5
  %604 = load i32, i32* %b, align 4
  %shr990 = lshr i32 %604, 27
  %or991 = or i32 %shl989, %shr990
  %605 = load i32, i32* %c, align 4
  %606 = load i32, i32* %d, align 4
  %and992 = and i32 %605, %606
  %607 = load i32, i32* %e, align 4
  %608 = load i32, i32* %c, align 4
  %609 = load i32, i32* %d, align 4
  %or993 = or i32 %608, %609
  %and994 = and i32 %607, %or993
  %or995 = or i32 %and992, %and994
  %add996 = add i32 %or991, %or995
  %add997 = add i32 %add996, -1894007588
  %arrayidx998 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %610 = load i32, i32* %arrayidx998, align 4
  %arrayidx999 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %611 = load i32, i32* %arrayidx999, align 4
  %xor1000 = xor i32 %610, %611
  %arrayidx1001 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %612 = load i32, i32* %arrayidx1001, align 4
  %xor1002 = xor i32 %xor1000, %612
  %arrayidx1003 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %613 = load i32, i32* %arrayidx1003, align 4
  %xor1004 = xor i32 %xor1002, %613
  store i32 %xor1004, i32* %tm, align 4
  %614 = load i32, i32* %tm, align 4
  %shl1005 = shl i32 %614, 1
  %615 = load i32, i32* %tm, align 4
  %shr1006 = lshr i32 %615, 31
  %or1007 = or i32 %shl1005, %shr1006
  %arrayidx1008 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %or1007, i32* %arrayidx1008, align 4
  %add1009 = add i32 %add997, %or1007
  %616 = load i32, i32* %a, align 4
  %add1010 = add i32 %616, %add1009
  store i32 %add1010, i32* %a, align 4
  %617 = load i32, i32* %c, align 4
  %shl1011 = shl i32 %617, 30
  %618 = load i32, i32* %c, align 4
  %shr1012 = lshr i32 %618, 2
  %or1013 = or i32 %shl1011, %shr1012
  store i32 %or1013, i32* %c, align 4
  br label %do.end.1014

do.end.1014:                                      ; preds = %do.body.988
  br label %do.body.1015

do.body.1015:                                     ; preds = %do.end.1014
  %619 = load i32, i32* %a, align 4
  %shl1016 = shl i32 %619, 5
  %620 = load i32, i32* %a, align 4
  %shr1017 = lshr i32 %620, 27
  %or1018 = or i32 %shl1016, %shr1017
  %621 = load i32, i32* %b, align 4
  %622 = load i32, i32* %c, align 4
  %and1019 = and i32 %621, %622
  %623 = load i32, i32* %d, align 4
  %624 = load i32, i32* %b, align 4
  %625 = load i32, i32* %c, align 4
  %or1020 = or i32 %624, %625
  %and1021 = and i32 %623, %or1020
  %or1022 = or i32 %and1019, %and1021
  %add1023 = add i32 %or1018, %or1022
  %add1024 = add i32 %add1023, -1894007588
  %arrayidx1025 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %626 = load i32, i32* %arrayidx1025, align 4
  %arrayidx1026 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %627 = load i32, i32* %arrayidx1026, align 4
  %xor1027 = xor i32 %626, %627
  %arrayidx1028 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %628 = load i32, i32* %arrayidx1028, align 4
  %xor1029 = xor i32 %xor1027, %628
  %arrayidx1030 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %629 = load i32, i32* %arrayidx1030, align 4
  %xor1031 = xor i32 %xor1029, %629
  store i32 %xor1031, i32* %tm, align 4
  %630 = load i32, i32* %tm, align 4
  %shl1032 = shl i32 %630, 1
  %631 = load i32, i32* %tm, align 4
  %shr1033 = lshr i32 %631, 31
  %or1034 = or i32 %shl1032, %shr1033
  %arrayidx1035 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %or1034, i32* %arrayidx1035, align 4
  %add1036 = add i32 %add1024, %or1034
  %632 = load i32, i32* %e, align 4
  %add1037 = add i32 %632, %add1036
  store i32 %add1037, i32* %e, align 4
  %633 = load i32, i32* %b, align 4
  %shl1038 = shl i32 %633, 30
  %634 = load i32, i32* %b, align 4
  %shr1039 = lshr i32 %634, 2
  %or1040 = or i32 %shl1038, %shr1039
  store i32 %or1040, i32* %b, align 4
  br label %do.end.1041

do.end.1041:                                      ; preds = %do.body.1015
  br label %do.body.1042

do.body.1042:                                     ; preds = %do.end.1041
  %635 = load i32, i32* %e, align 4
  %shl1043 = shl i32 %635, 5
  %636 = load i32, i32* %e, align 4
  %shr1044 = lshr i32 %636, 27
  %or1045 = or i32 %shl1043, %shr1044
  %637 = load i32, i32* %a, align 4
  %638 = load i32, i32* %b, align 4
  %and1046 = and i32 %637, %638
  %639 = load i32, i32* %c, align 4
  %640 = load i32, i32* %a, align 4
  %641 = load i32, i32* %b, align 4
  %or1047 = or i32 %640, %641
  %and1048 = and i32 %639, %or1047
  %or1049 = or i32 %and1046, %and1048
  %add1050 = add i32 %or1045, %or1049
  %add1051 = add i32 %add1050, -1894007588
  %arrayidx1052 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %642 = load i32, i32* %arrayidx1052, align 4
  %arrayidx1053 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %643 = load i32, i32* %arrayidx1053, align 4
  %xor1054 = xor i32 %642, %643
  %arrayidx1055 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %644 = load i32, i32* %arrayidx1055, align 4
  %xor1056 = xor i32 %xor1054, %644
  %arrayidx1057 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %645 = load i32, i32* %arrayidx1057, align 4
  %xor1058 = xor i32 %xor1056, %645
  store i32 %xor1058, i32* %tm, align 4
  %646 = load i32, i32* %tm, align 4
  %shl1059 = shl i32 %646, 1
  %647 = load i32, i32* %tm, align 4
  %shr1060 = lshr i32 %647, 31
  %or1061 = or i32 %shl1059, %shr1060
  %arrayidx1062 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %or1061, i32* %arrayidx1062, align 4
  %add1063 = add i32 %add1051, %or1061
  %648 = load i32, i32* %d, align 4
  %add1064 = add i32 %648, %add1063
  store i32 %add1064, i32* %d, align 4
  %649 = load i32, i32* %a, align 4
  %shl1065 = shl i32 %649, 30
  %650 = load i32, i32* %a, align 4
  %shr1066 = lshr i32 %650, 2
  %or1067 = or i32 %shl1065, %shr1066
  store i32 %or1067, i32* %a, align 4
  br label %do.end.1068

do.end.1068:                                      ; preds = %do.body.1042
  br label %do.body.1069

do.body.1069:                                     ; preds = %do.end.1068
  %651 = load i32, i32* %d, align 4
  %shl1070 = shl i32 %651, 5
  %652 = load i32, i32* %d, align 4
  %shr1071 = lshr i32 %652, 27
  %or1072 = or i32 %shl1070, %shr1071
  %653 = load i32, i32* %e, align 4
  %654 = load i32, i32* %a, align 4
  %and1073 = and i32 %653, %654
  %655 = load i32, i32* %b, align 4
  %656 = load i32, i32* %e, align 4
  %657 = load i32, i32* %a, align 4
  %or1074 = or i32 %656, %657
  %and1075 = and i32 %655, %or1074
  %or1076 = or i32 %and1073, %and1075
  %add1077 = add i32 %or1072, %or1076
  %add1078 = add i32 %add1077, -1894007588
  %arrayidx1079 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %658 = load i32, i32* %arrayidx1079, align 4
  %arrayidx1080 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %659 = load i32, i32* %arrayidx1080, align 4
  %xor1081 = xor i32 %658, %659
  %arrayidx1082 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %660 = load i32, i32* %arrayidx1082, align 4
  %xor1083 = xor i32 %xor1081, %660
  %arrayidx1084 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %661 = load i32, i32* %arrayidx1084, align 4
  %xor1085 = xor i32 %xor1083, %661
  store i32 %xor1085, i32* %tm, align 4
  %662 = load i32, i32* %tm, align 4
  %shl1086 = shl i32 %662, 1
  %663 = load i32, i32* %tm, align 4
  %shr1087 = lshr i32 %663, 31
  %or1088 = or i32 %shl1086, %shr1087
  %arrayidx1089 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %or1088, i32* %arrayidx1089, align 4
  %add1090 = add i32 %add1078, %or1088
  %664 = load i32, i32* %c, align 4
  %add1091 = add i32 %664, %add1090
  store i32 %add1091, i32* %c, align 4
  %665 = load i32, i32* %e, align 4
  %shl1092 = shl i32 %665, 30
  %666 = load i32, i32* %e, align 4
  %shr1093 = lshr i32 %666, 2
  %or1094 = or i32 %shl1092, %shr1093
  store i32 %or1094, i32* %e, align 4
  br label %do.end.1095

do.end.1095:                                      ; preds = %do.body.1069
  br label %do.body.1096

do.body.1096:                                     ; preds = %do.end.1095
  %667 = load i32, i32* %c, align 4
  %shl1097 = shl i32 %667, 5
  %668 = load i32, i32* %c, align 4
  %shr1098 = lshr i32 %668, 27
  %or1099 = or i32 %shl1097, %shr1098
  %669 = load i32, i32* %d, align 4
  %670 = load i32, i32* %e, align 4
  %and1100 = and i32 %669, %670
  %671 = load i32, i32* %a, align 4
  %672 = load i32, i32* %d, align 4
  %673 = load i32, i32* %e, align 4
  %or1101 = or i32 %672, %673
  %and1102 = and i32 %671, %or1101
  %or1103 = or i32 %and1100, %and1102
  %add1104 = add i32 %or1099, %or1103
  %add1105 = add i32 %add1104, -1894007588
  %arrayidx1106 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %674 = load i32, i32* %arrayidx1106, align 4
  %arrayidx1107 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %675 = load i32, i32* %arrayidx1107, align 4
  %xor1108 = xor i32 %674, %675
  %arrayidx1109 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %676 = load i32, i32* %arrayidx1109, align 4
  %xor1110 = xor i32 %xor1108, %676
  %arrayidx1111 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %677 = load i32, i32* %arrayidx1111, align 4
  %xor1112 = xor i32 %xor1110, %677
  store i32 %xor1112, i32* %tm, align 4
  %678 = load i32, i32* %tm, align 4
  %shl1113 = shl i32 %678, 1
  %679 = load i32, i32* %tm, align 4
  %shr1114 = lshr i32 %679, 31
  %or1115 = or i32 %shl1113, %shr1114
  %arrayidx1116 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %or1115, i32* %arrayidx1116, align 4
  %add1117 = add i32 %add1105, %or1115
  %680 = load i32, i32* %b, align 4
  %add1118 = add i32 %680, %add1117
  store i32 %add1118, i32* %b, align 4
  %681 = load i32, i32* %d, align 4
  %shl1119 = shl i32 %681, 30
  %682 = load i32, i32* %d, align 4
  %shr1120 = lshr i32 %682, 2
  %or1121 = or i32 %shl1119, %shr1120
  store i32 %or1121, i32* %d, align 4
  br label %do.end.1122

do.end.1122:                                      ; preds = %do.body.1096
  br label %do.body.1123

do.body.1123:                                     ; preds = %do.end.1122
  %683 = load i32, i32* %b, align 4
  %shl1124 = shl i32 %683, 5
  %684 = load i32, i32* %b, align 4
  %shr1125 = lshr i32 %684, 27
  %or1126 = or i32 %shl1124, %shr1125
  %685 = load i32, i32* %c, align 4
  %686 = load i32, i32* %d, align 4
  %and1127 = and i32 %685, %686
  %687 = load i32, i32* %e, align 4
  %688 = load i32, i32* %c, align 4
  %689 = load i32, i32* %d, align 4
  %or1128 = or i32 %688, %689
  %and1129 = and i32 %687, %or1128
  %or1130 = or i32 %and1127, %and1129
  %add1131 = add i32 %or1126, %or1130
  %add1132 = add i32 %add1131, -1894007588
  %arrayidx1133 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %690 = load i32, i32* %arrayidx1133, align 4
  %arrayidx1134 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %691 = load i32, i32* %arrayidx1134, align 4
  %xor1135 = xor i32 %690, %691
  %arrayidx1136 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %692 = load i32, i32* %arrayidx1136, align 4
  %xor1137 = xor i32 %xor1135, %692
  %arrayidx1138 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %693 = load i32, i32* %arrayidx1138, align 4
  %xor1139 = xor i32 %xor1137, %693
  store i32 %xor1139, i32* %tm, align 4
  %694 = load i32, i32* %tm, align 4
  %shl1140 = shl i32 %694, 1
  %695 = load i32, i32* %tm, align 4
  %shr1141 = lshr i32 %695, 31
  %or1142 = or i32 %shl1140, %shr1141
  %arrayidx1143 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %or1142, i32* %arrayidx1143, align 4
  %add1144 = add i32 %add1132, %or1142
  %696 = load i32, i32* %a, align 4
  %add1145 = add i32 %696, %add1144
  store i32 %add1145, i32* %a, align 4
  %697 = load i32, i32* %c, align 4
  %shl1146 = shl i32 %697, 30
  %698 = load i32, i32* %c, align 4
  %shr1147 = lshr i32 %698, 2
  %or1148 = or i32 %shl1146, %shr1147
  store i32 %or1148, i32* %c, align 4
  br label %do.end.1149

do.end.1149:                                      ; preds = %do.body.1123
  br label %do.body.1150

do.body.1150:                                     ; preds = %do.end.1149
  %699 = load i32, i32* %a, align 4
  %shl1151 = shl i32 %699, 5
  %700 = load i32, i32* %a, align 4
  %shr1152 = lshr i32 %700, 27
  %or1153 = or i32 %shl1151, %shr1152
  %701 = load i32, i32* %b, align 4
  %702 = load i32, i32* %c, align 4
  %and1154 = and i32 %701, %702
  %703 = load i32, i32* %d, align 4
  %704 = load i32, i32* %b, align 4
  %705 = load i32, i32* %c, align 4
  %or1155 = or i32 %704, %705
  %and1156 = and i32 %703, %or1155
  %or1157 = or i32 %and1154, %and1156
  %add1158 = add i32 %or1153, %or1157
  %add1159 = add i32 %add1158, -1894007588
  %arrayidx1160 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %706 = load i32, i32* %arrayidx1160, align 4
  %arrayidx1161 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %707 = load i32, i32* %arrayidx1161, align 4
  %xor1162 = xor i32 %706, %707
  %arrayidx1163 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %708 = load i32, i32* %arrayidx1163, align 4
  %xor1164 = xor i32 %xor1162, %708
  %arrayidx1165 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %709 = load i32, i32* %arrayidx1165, align 4
  %xor1166 = xor i32 %xor1164, %709
  store i32 %xor1166, i32* %tm, align 4
  %710 = load i32, i32* %tm, align 4
  %shl1167 = shl i32 %710, 1
  %711 = load i32, i32* %tm, align 4
  %shr1168 = lshr i32 %711, 31
  %or1169 = or i32 %shl1167, %shr1168
  %arrayidx1170 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %or1169, i32* %arrayidx1170, align 4
  %add1171 = add i32 %add1159, %or1169
  %712 = load i32, i32* %e, align 4
  %add1172 = add i32 %712, %add1171
  store i32 %add1172, i32* %e, align 4
  %713 = load i32, i32* %b, align 4
  %shl1173 = shl i32 %713, 30
  %714 = load i32, i32* %b, align 4
  %shr1174 = lshr i32 %714, 2
  %or1175 = or i32 %shl1173, %shr1174
  store i32 %or1175, i32* %b, align 4
  br label %do.end.1176

do.end.1176:                                      ; preds = %do.body.1150
  br label %do.body.1177

do.body.1177:                                     ; preds = %do.end.1176
  %715 = load i32, i32* %e, align 4
  %shl1178 = shl i32 %715, 5
  %716 = load i32, i32* %e, align 4
  %shr1179 = lshr i32 %716, 27
  %or1180 = or i32 %shl1178, %shr1179
  %717 = load i32, i32* %a, align 4
  %718 = load i32, i32* %b, align 4
  %and1181 = and i32 %717, %718
  %719 = load i32, i32* %c, align 4
  %720 = load i32, i32* %a, align 4
  %721 = load i32, i32* %b, align 4
  %or1182 = or i32 %720, %721
  %and1183 = and i32 %719, %or1182
  %or1184 = or i32 %and1181, %and1183
  %add1185 = add i32 %or1180, %or1184
  %add1186 = add i32 %add1185, -1894007588
  %arrayidx1187 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %722 = load i32, i32* %arrayidx1187, align 4
  %arrayidx1188 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %723 = load i32, i32* %arrayidx1188, align 4
  %xor1189 = xor i32 %722, %723
  %arrayidx1190 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %724 = load i32, i32* %arrayidx1190, align 4
  %xor1191 = xor i32 %xor1189, %724
  %arrayidx1192 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %725 = load i32, i32* %arrayidx1192, align 4
  %xor1193 = xor i32 %xor1191, %725
  store i32 %xor1193, i32* %tm, align 4
  %726 = load i32, i32* %tm, align 4
  %shl1194 = shl i32 %726, 1
  %727 = load i32, i32* %tm, align 4
  %shr1195 = lshr i32 %727, 31
  %or1196 = or i32 %shl1194, %shr1195
  %arrayidx1197 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %or1196, i32* %arrayidx1197, align 4
  %add1198 = add i32 %add1186, %or1196
  %728 = load i32, i32* %d, align 4
  %add1199 = add i32 %728, %add1198
  store i32 %add1199, i32* %d, align 4
  %729 = load i32, i32* %a, align 4
  %shl1200 = shl i32 %729, 30
  %730 = load i32, i32* %a, align 4
  %shr1201 = lshr i32 %730, 2
  %or1202 = or i32 %shl1200, %shr1201
  store i32 %or1202, i32* %a, align 4
  br label %do.end.1203

do.end.1203:                                      ; preds = %do.body.1177
  br label %do.body.1204

do.body.1204:                                     ; preds = %do.end.1203
  %731 = load i32, i32* %d, align 4
  %shl1205 = shl i32 %731, 5
  %732 = load i32, i32* %d, align 4
  %shr1206 = lshr i32 %732, 27
  %or1207 = or i32 %shl1205, %shr1206
  %733 = load i32, i32* %e, align 4
  %734 = load i32, i32* %a, align 4
  %and1208 = and i32 %733, %734
  %735 = load i32, i32* %b, align 4
  %736 = load i32, i32* %e, align 4
  %737 = load i32, i32* %a, align 4
  %or1209 = or i32 %736, %737
  %and1210 = and i32 %735, %or1209
  %or1211 = or i32 %and1208, %and1210
  %add1212 = add i32 %or1207, %or1211
  %add1213 = add i32 %add1212, -1894007588
  %arrayidx1214 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %738 = load i32, i32* %arrayidx1214, align 4
  %arrayidx1215 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %739 = load i32, i32* %arrayidx1215, align 4
  %xor1216 = xor i32 %738, %739
  %arrayidx1217 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %740 = load i32, i32* %arrayidx1217, align 4
  %xor1218 = xor i32 %xor1216, %740
  %arrayidx1219 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %741 = load i32, i32* %arrayidx1219, align 4
  %xor1220 = xor i32 %xor1218, %741
  store i32 %xor1220, i32* %tm, align 4
  %742 = load i32, i32* %tm, align 4
  %shl1221 = shl i32 %742, 1
  %743 = load i32, i32* %tm, align 4
  %shr1222 = lshr i32 %743, 31
  %or1223 = or i32 %shl1221, %shr1222
  %arrayidx1224 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %or1223, i32* %arrayidx1224, align 4
  %add1225 = add i32 %add1213, %or1223
  %744 = load i32, i32* %c, align 4
  %add1226 = add i32 %744, %add1225
  store i32 %add1226, i32* %c, align 4
  %745 = load i32, i32* %e, align 4
  %shl1227 = shl i32 %745, 30
  %746 = load i32, i32* %e, align 4
  %shr1228 = lshr i32 %746, 2
  %or1229 = or i32 %shl1227, %shr1228
  store i32 %or1229, i32* %e, align 4
  br label %do.end.1230

do.end.1230:                                      ; preds = %do.body.1204
  br label %do.body.1231

do.body.1231:                                     ; preds = %do.end.1230
  %747 = load i32, i32* %c, align 4
  %shl1232 = shl i32 %747, 5
  %748 = load i32, i32* %c, align 4
  %shr1233 = lshr i32 %748, 27
  %or1234 = or i32 %shl1232, %shr1233
  %749 = load i32, i32* %d, align 4
  %750 = load i32, i32* %e, align 4
  %and1235 = and i32 %749, %750
  %751 = load i32, i32* %a, align 4
  %752 = load i32, i32* %d, align 4
  %753 = load i32, i32* %e, align 4
  %or1236 = or i32 %752, %753
  %and1237 = and i32 %751, %or1236
  %or1238 = or i32 %and1235, %and1237
  %add1239 = add i32 %or1234, %or1238
  %add1240 = add i32 %add1239, -1894007588
  %arrayidx1241 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %754 = load i32, i32* %arrayidx1241, align 4
  %arrayidx1242 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %755 = load i32, i32* %arrayidx1242, align 4
  %xor1243 = xor i32 %754, %755
  %arrayidx1244 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %756 = load i32, i32* %arrayidx1244, align 4
  %xor1245 = xor i32 %xor1243, %756
  %arrayidx1246 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %757 = load i32, i32* %arrayidx1246, align 4
  %xor1247 = xor i32 %xor1245, %757
  store i32 %xor1247, i32* %tm, align 4
  %758 = load i32, i32* %tm, align 4
  %shl1248 = shl i32 %758, 1
  %759 = load i32, i32* %tm, align 4
  %shr1249 = lshr i32 %759, 31
  %or1250 = or i32 %shl1248, %shr1249
  %arrayidx1251 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %or1250, i32* %arrayidx1251, align 4
  %add1252 = add i32 %add1240, %or1250
  %760 = load i32, i32* %b, align 4
  %add1253 = add i32 %760, %add1252
  store i32 %add1253, i32* %b, align 4
  %761 = load i32, i32* %d, align 4
  %shl1254 = shl i32 %761, 30
  %762 = load i32, i32* %d, align 4
  %shr1255 = lshr i32 %762, 2
  %or1256 = or i32 %shl1254, %shr1255
  store i32 %or1256, i32* %d, align 4
  br label %do.end.1257

do.end.1257:                                      ; preds = %do.body.1231
  br label %do.body.1258

do.body.1258:                                     ; preds = %do.end.1257
  %763 = load i32, i32* %b, align 4
  %shl1259 = shl i32 %763, 5
  %764 = load i32, i32* %b, align 4
  %shr1260 = lshr i32 %764, 27
  %or1261 = or i32 %shl1259, %shr1260
  %765 = load i32, i32* %c, align 4
  %766 = load i32, i32* %d, align 4
  %and1262 = and i32 %765, %766
  %767 = load i32, i32* %e, align 4
  %768 = load i32, i32* %c, align 4
  %769 = load i32, i32* %d, align 4
  %or1263 = or i32 %768, %769
  %and1264 = and i32 %767, %or1263
  %or1265 = or i32 %and1262, %and1264
  %add1266 = add i32 %or1261, %or1265
  %add1267 = add i32 %add1266, -1894007588
  %arrayidx1268 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %770 = load i32, i32* %arrayidx1268, align 4
  %arrayidx1269 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %771 = load i32, i32* %arrayidx1269, align 4
  %xor1270 = xor i32 %770, %771
  %arrayidx1271 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %772 = load i32, i32* %arrayidx1271, align 4
  %xor1272 = xor i32 %xor1270, %772
  %arrayidx1273 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %773 = load i32, i32* %arrayidx1273, align 4
  %xor1274 = xor i32 %xor1272, %773
  store i32 %xor1274, i32* %tm, align 4
  %774 = load i32, i32* %tm, align 4
  %shl1275 = shl i32 %774, 1
  %775 = load i32, i32* %tm, align 4
  %shr1276 = lshr i32 %775, 31
  %or1277 = or i32 %shl1275, %shr1276
  %arrayidx1278 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %or1277, i32* %arrayidx1278, align 4
  %add1279 = add i32 %add1267, %or1277
  %776 = load i32, i32* %a, align 4
  %add1280 = add i32 %776, %add1279
  store i32 %add1280, i32* %a, align 4
  %777 = load i32, i32* %c, align 4
  %shl1281 = shl i32 %777, 30
  %778 = load i32, i32* %c, align 4
  %shr1282 = lshr i32 %778, 2
  %or1283 = or i32 %shl1281, %shr1282
  store i32 %or1283, i32* %c, align 4
  br label %do.end.1284

do.end.1284:                                      ; preds = %do.body.1258
  br label %do.body.1285

do.body.1285:                                     ; preds = %do.end.1284
  %779 = load i32, i32* %a, align 4
  %shl1286 = shl i32 %779, 5
  %780 = load i32, i32* %a, align 4
  %shr1287 = lshr i32 %780, 27
  %or1288 = or i32 %shl1286, %shr1287
  %781 = load i32, i32* %b, align 4
  %782 = load i32, i32* %c, align 4
  %and1289 = and i32 %781, %782
  %783 = load i32, i32* %d, align 4
  %784 = load i32, i32* %b, align 4
  %785 = load i32, i32* %c, align 4
  %or1290 = or i32 %784, %785
  %and1291 = and i32 %783, %or1290
  %or1292 = or i32 %and1289, %and1291
  %add1293 = add i32 %or1288, %or1292
  %add1294 = add i32 %add1293, -1894007588
  %arrayidx1295 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %786 = load i32, i32* %arrayidx1295, align 4
  %arrayidx1296 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %787 = load i32, i32* %arrayidx1296, align 4
  %xor1297 = xor i32 %786, %787
  %arrayidx1298 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %788 = load i32, i32* %arrayidx1298, align 4
  %xor1299 = xor i32 %xor1297, %788
  %arrayidx1300 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %789 = load i32, i32* %arrayidx1300, align 4
  %xor1301 = xor i32 %xor1299, %789
  store i32 %xor1301, i32* %tm, align 4
  %790 = load i32, i32* %tm, align 4
  %shl1302 = shl i32 %790, 1
  %791 = load i32, i32* %tm, align 4
  %shr1303 = lshr i32 %791, 31
  %or1304 = or i32 %shl1302, %shr1303
  %arrayidx1305 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %or1304, i32* %arrayidx1305, align 4
  %add1306 = add i32 %add1294, %or1304
  %792 = load i32, i32* %e, align 4
  %add1307 = add i32 %792, %add1306
  store i32 %add1307, i32* %e, align 4
  %793 = load i32, i32* %b, align 4
  %shl1308 = shl i32 %793, 30
  %794 = load i32, i32* %b, align 4
  %shr1309 = lshr i32 %794, 2
  %or1310 = or i32 %shl1308, %shr1309
  store i32 %or1310, i32* %b, align 4
  br label %do.end.1311

do.end.1311:                                      ; preds = %do.body.1285
  br label %do.body.1312

do.body.1312:                                     ; preds = %do.end.1311
  %795 = load i32, i32* %e, align 4
  %shl1313 = shl i32 %795, 5
  %796 = load i32, i32* %e, align 4
  %shr1314 = lshr i32 %796, 27
  %or1315 = or i32 %shl1313, %shr1314
  %797 = load i32, i32* %a, align 4
  %798 = load i32, i32* %b, align 4
  %and1316 = and i32 %797, %798
  %799 = load i32, i32* %c, align 4
  %800 = load i32, i32* %a, align 4
  %801 = load i32, i32* %b, align 4
  %or1317 = or i32 %800, %801
  %and1318 = and i32 %799, %or1317
  %or1319 = or i32 %and1316, %and1318
  %add1320 = add i32 %or1315, %or1319
  %add1321 = add i32 %add1320, -1894007588
  %arrayidx1322 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %802 = load i32, i32* %arrayidx1322, align 4
  %arrayidx1323 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %803 = load i32, i32* %arrayidx1323, align 4
  %xor1324 = xor i32 %802, %803
  %arrayidx1325 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %804 = load i32, i32* %arrayidx1325, align 4
  %xor1326 = xor i32 %xor1324, %804
  %arrayidx1327 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %805 = load i32, i32* %arrayidx1327, align 4
  %xor1328 = xor i32 %xor1326, %805
  store i32 %xor1328, i32* %tm, align 4
  %806 = load i32, i32* %tm, align 4
  %shl1329 = shl i32 %806, 1
  %807 = load i32, i32* %tm, align 4
  %shr1330 = lshr i32 %807, 31
  %or1331 = or i32 %shl1329, %shr1330
  %arrayidx1332 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %or1331, i32* %arrayidx1332, align 4
  %add1333 = add i32 %add1321, %or1331
  %808 = load i32, i32* %d, align 4
  %add1334 = add i32 %808, %add1333
  store i32 %add1334, i32* %d, align 4
  %809 = load i32, i32* %a, align 4
  %shl1335 = shl i32 %809, 30
  %810 = load i32, i32* %a, align 4
  %shr1336 = lshr i32 %810, 2
  %or1337 = or i32 %shl1335, %shr1336
  store i32 %or1337, i32* %a, align 4
  br label %do.end.1338

do.end.1338:                                      ; preds = %do.body.1312
  br label %do.body.1339

do.body.1339:                                     ; preds = %do.end.1338
  %811 = load i32, i32* %d, align 4
  %shl1340 = shl i32 %811, 5
  %812 = load i32, i32* %d, align 4
  %shr1341 = lshr i32 %812, 27
  %or1342 = or i32 %shl1340, %shr1341
  %813 = load i32, i32* %e, align 4
  %814 = load i32, i32* %a, align 4
  %and1343 = and i32 %813, %814
  %815 = load i32, i32* %b, align 4
  %816 = load i32, i32* %e, align 4
  %817 = load i32, i32* %a, align 4
  %or1344 = or i32 %816, %817
  %and1345 = and i32 %815, %or1344
  %or1346 = or i32 %and1343, %and1345
  %add1347 = add i32 %or1342, %or1346
  %add1348 = add i32 %add1347, -1894007588
  %arrayidx1349 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %818 = load i32, i32* %arrayidx1349, align 4
  %arrayidx1350 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %819 = load i32, i32* %arrayidx1350, align 4
  %xor1351 = xor i32 %818, %819
  %arrayidx1352 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %820 = load i32, i32* %arrayidx1352, align 4
  %xor1353 = xor i32 %xor1351, %820
  %arrayidx1354 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %821 = load i32, i32* %arrayidx1354, align 4
  %xor1355 = xor i32 %xor1353, %821
  store i32 %xor1355, i32* %tm, align 4
  %822 = load i32, i32* %tm, align 4
  %shl1356 = shl i32 %822, 1
  %823 = load i32, i32* %tm, align 4
  %shr1357 = lshr i32 %823, 31
  %or1358 = or i32 %shl1356, %shr1357
  %arrayidx1359 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %or1358, i32* %arrayidx1359, align 4
  %add1360 = add i32 %add1348, %or1358
  %824 = load i32, i32* %c, align 4
  %add1361 = add i32 %824, %add1360
  store i32 %add1361, i32* %c, align 4
  %825 = load i32, i32* %e, align 4
  %shl1362 = shl i32 %825, 30
  %826 = load i32, i32* %e, align 4
  %shr1363 = lshr i32 %826, 2
  %or1364 = or i32 %shl1362, %shr1363
  store i32 %or1364, i32* %e, align 4
  br label %do.end.1365

do.end.1365:                                      ; preds = %do.body.1339
  br label %do.body.1366

do.body.1366:                                     ; preds = %do.end.1365
  %827 = load i32, i32* %c, align 4
  %shl1367 = shl i32 %827, 5
  %828 = load i32, i32* %c, align 4
  %shr1368 = lshr i32 %828, 27
  %or1369 = or i32 %shl1367, %shr1368
  %829 = load i32, i32* %d, align 4
  %830 = load i32, i32* %e, align 4
  %and1370 = and i32 %829, %830
  %831 = load i32, i32* %a, align 4
  %832 = load i32, i32* %d, align 4
  %833 = load i32, i32* %e, align 4
  %or1371 = or i32 %832, %833
  %and1372 = and i32 %831, %or1371
  %or1373 = or i32 %and1370, %and1372
  %add1374 = add i32 %or1369, %or1373
  %add1375 = add i32 %add1374, -1894007588
  %arrayidx1376 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %834 = load i32, i32* %arrayidx1376, align 4
  %arrayidx1377 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %835 = load i32, i32* %arrayidx1377, align 4
  %xor1378 = xor i32 %834, %835
  %arrayidx1379 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %836 = load i32, i32* %arrayidx1379, align 4
  %xor1380 = xor i32 %xor1378, %836
  %arrayidx1381 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %837 = load i32, i32* %arrayidx1381, align 4
  %xor1382 = xor i32 %xor1380, %837
  store i32 %xor1382, i32* %tm, align 4
  %838 = load i32, i32* %tm, align 4
  %shl1383 = shl i32 %838, 1
  %839 = load i32, i32* %tm, align 4
  %shr1384 = lshr i32 %839, 31
  %or1385 = or i32 %shl1383, %shr1384
  %arrayidx1386 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %or1385, i32* %arrayidx1386, align 4
  %add1387 = add i32 %add1375, %or1385
  %840 = load i32, i32* %b, align 4
  %add1388 = add i32 %840, %add1387
  store i32 %add1388, i32* %b, align 4
  %841 = load i32, i32* %d, align 4
  %shl1389 = shl i32 %841, 30
  %842 = load i32, i32* %d, align 4
  %shr1390 = lshr i32 %842, 2
  %or1391 = or i32 %shl1389, %shr1390
  store i32 %or1391, i32* %d, align 4
  br label %do.end.1392

do.end.1392:                                      ; preds = %do.body.1366
  br label %do.body.1393

do.body.1393:                                     ; preds = %do.end.1392
  %843 = load i32, i32* %b, align 4
  %shl1394 = shl i32 %843, 5
  %844 = load i32, i32* %b, align 4
  %shr1395 = lshr i32 %844, 27
  %or1396 = or i32 %shl1394, %shr1395
  %845 = load i32, i32* %c, align 4
  %846 = load i32, i32* %d, align 4
  %and1397 = and i32 %845, %846
  %847 = load i32, i32* %e, align 4
  %848 = load i32, i32* %c, align 4
  %849 = load i32, i32* %d, align 4
  %or1398 = or i32 %848, %849
  %and1399 = and i32 %847, %or1398
  %or1400 = or i32 %and1397, %and1399
  %add1401 = add i32 %or1396, %or1400
  %add1402 = add i32 %add1401, -1894007588
  %arrayidx1403 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %850 = load i32, i32* %arrayidx1403, align 4
  %arrayidx1404 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %851 = load i32, i32* %arrayidx1404, align 4
  %xor1405 = xor i32 %850, %851
  %arrayidx1406 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %852 = load i32, i32* %arrayidx1406, align 4
  %xor1407 = xor i32 %xor1405, %852
  %arrayidx1408 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %853 = load i32, i32* %arrayidx1408, align 4
  %xor1409 = xor i32 %xor1407, %853
  store i32 %xor1409, i32* %tm, align 4
  %854 = load i32, i32* %tm, align 4
  %shl1410 = shl i32 %854, 1
  %855 = load i32, i32* %tm, align 4
  %shr1411 = lshr i32 %855, 31
  %or1412 = or i32 %shl1410, %shr1411
  %arrayidx1413 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %or1412, i32* %arrayidx1413, align 4
  %add1414 = add i32 %add1402, %or1412
  %856 = load i32, i32* %a, align 4
  %add1415 = add i32 %856, %add1414
  store i32 %add1415, i32* %a, align 4
  %857 = load i32, i32* %c, align 4
  %shl1416 = shl i32 %857, 30
  %858 = load i32, i32* %c, align 4
  %shr1417 = lshr i32 %858, 2
  %or1418 = or i32 %shl1416, %shr1417
  store i32 %or1418, i32* %c, align 4
  br label %do.end.1419

do.end.1419:                                      ; preds = %do.body.1393
  br label %do.body.1420

do.body.1420:                                     ; preds = %do.end.1419
  %859 = load i32, i32* %a, align 4
  %shl1421 = shl i32 %859, 5
  %860 = load i32, i32* %a, align 4
  %shr1422 = lshr i32 %860, 27
  %or1423 = or i32 %shl1421, %shr1422
  %861 = load i32, i32* %b, align 4
  %862 = load i32, i32* %c, align 4
  %xor1424 = xor i32 %861, %862
  %863 = load i32, i32* %d, align 4
  %xor1425 = xor i32 %xor1424, %863
  %add1426 = add i32 %or1423, %xor1425
  %add1427 = add i32 %add1426, -899497514
  %arrayidx1428 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %864 = load i32, i32* %arrayidx1428, align 4
  %arrayidx1429 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %865 = load i32, i32* %arrayidx1429, align 4
  %xor1430 = xor i32 %864, %865
  %arrayidx1431 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %866 = load i32, i32* %arrayidx1431, align 4
  %xor1432 = xor i32 %xor1430, %866
  %arrayidx1433 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %867 = load i32, i32* %arrayidx1433, align 4
  %xor1434 = xor i32 %xor1432, %867
  store i32 %xor1434, i32* %tm, align 4
  %868 = load i32, i32* %tm, align 4
  %shl1435 = shl i32 %868, 1
  %869 = load i32, i32* %tm, align 4
  %shr1436 = lshr i32 %869, 31
  %or1437 = or i32 %shl1435, %shr1436
  %arrayidx1438 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %or1437, i32* %arrayidx1438, align 4
  %add1439 = add i32 %add1427, %or1437
  %870 = load i32, i32* %e, align 4
  %add1440 = add i32 %870, %add1439
  store i32 %add1440, i32* %e, align 4
  %871 = load i32, i32* %b, align 4
  %shl1441 = shl i32 %871, 30
  %872 = load i32, i32* %b, align 4
  %shr1442 = lshr i32 %872, 2
  %or1443 = or i32 %shl1441, %shr1442
  store i32 %or1443, i32* %b, align 4
  br label %do.end.1444

do.end.1444:                                      ; preds = %do.body.1420
  br label %do.body.1445

do.body.1445:                                     ; preds = %do.end.1444
  %873 = load i32, i32* %e, align 4
  %shl1446 = shl i32 %873, 5
  %874 = load i32, i32* %e, align 4
  %shr1447 = lshr i32 %874, 27
  %or1448 = or i32 %shl1446, %shr1447
  %875 = load i32, i32* %a, align 4
  %876 = load i32, i32* %b, align 4
  %xor1449 = xor i32 %875, %876
  %877 = load i32, i32* %c, align 4
  %xor1450 = xor i32 %xor1449, %877
  %add1451 = add i32 %or1448, %xor1450
  %add1452 = add i32 %add1451, -899497514
  %arrayidx1453 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %878 = load i32, i32* %arrayidx1453, align 4
  %arrayidx1454 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %879 = load i32, i32* %arrayidx1454, align 4
  %xor1455 = xor i32 %878, %879
  %arrayidx1456 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %880 = load i32, i32* %arrayidx1456, align 4
  %xor1457 = xor i32 %xor1455, %880
  %arrayidx1458 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %881 = load i32, i32* %arrayidx1458, align 4
  %xor1459 = xor i32 %xor1457, %881
  store i32 %xor1459, i32* %tm, align 4
  %882 = load i32, i32* %tm, align 4
  %shl1460 = shl i32 %882, 1
  %883 = load i32, i32* %tm, align 4
  %shr1461 = lshr i32 %883, 31
  %or1462 = or i32 %shl1460, %shr1461
  %arrayidx1463 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %or1462, i32* %arrayidx1463, align 4
  %add1464 = add i32 %add1452, %or1462
  %884 = load i32, i32* %d, align 4
  %add1465 = add i32 %884, %add1464
  store i32 %add1465, i32* %d, align 4
  %885 = load i32, i32* %a, align 4
  %shl1466 = shl i32 %885, 30
  %886 = load i32, i32* %a, align 4
  %shr1467 = lshr i32 %886, 2
  %or1468 = or i32 %shl1466, %shr1467
  store i32 %or1468, i32* %a, align 4
  br label %do.end.1469

do.end.1469:                                      ; preds = %do.body.1445
  br label %do.body.1470

do.body.1470:                                     ; preds = %do.end.1469
  %887 = load i32, i32* %d, align 4
  %shl1471 = shl i32 %887, 5
  %888 = load i32, i32* %d, align 4
  %shr1472 = lshr i32 %888, 27
  %or1473 = or i32 %shl1471, %shr1472
  %889 = load i32, i32* %e, align 4
  %890 = load i32, i32* %a, align 4
  %xor1474 = xor i32 %889, %890
  %891 = load i32, i32* %b, align 4
  %xor1475 = xor i32 %xor1474, %891
  %add1476 = add i32 %or1473, %xor1475
  %add1477 = add i32 %add1476, -899497514
  %arrayidx1478 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %892 = load i32, i32* %arrayidx1478, align 4
  %arrayidx1479 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %893 = load i32, i32* %arrayidx1479, align 4
  %xor1480 = xor i32 %892, %893
  %arrayidx1481 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %894 = load i32, i32* %arrayidx1481, align 4
  %xor1482 = xor i32 %xor1480, %894
  %arrayidx1483 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %895 = load i32, i32* %arrayidx1483, align 4
  %xor1484 = xor i32 %xor1482, %895
  store i32 %xor1484, i32* %tm, align 4
  %896 = load i32, i32* %tm, align 4
  %shl1485 = shl i32 %896, 1
  %897 = load i32, i32* %tm, align 4
  %shr1486 = lshr i32 %897, 31
  %or1487 = or i32 %shl1485, %shr1486
  %arrayidx1488 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %or1487, i32* %arrayidx1488, align 4
  %add1489 = add i32 %add1477, %or1487
  %898 = load i32, i32* %c, align 4
  %add1490 = add i32 %898, %add1489
  store i32 %add1490, i32* %c, align 4
  %899 = load i32, i32* %e, align 4
  %shl1491 = shl i32 %899, 30
  %900 = load i32, i32* %e, align 4
  %shr1492 = lshr i32 %900, 2
  %or1493 = or i32 %shl1491, %shr1492
  store i32 %or1493, i32* %e, align 4
  br label %do.end.1494

do.end.1494:                                      ; preds = %do.body.1470
  br label %do.body.1495

do.body.1495:                                     ; preds = %do.end.1494
  %901 = load i32, i32* %c, align 4
  %shl1496 = shl i32 %901, 5
  %902 = load i32, i32* %c, align 4
  %shr1497 = lshr i32 %902, 27
  %or1498 = or i32 %shl1496, %shr1497
  %903 = load i32, i32* %d, align 4
  %904 = load i32, i32* %e, align 4
  %xor1499 = xor i32 %903, %904
  %905 = load i32, i32* %a, align 4
  %xor1500 = xor i32 %xor1499, %905
  %add1501 = add i32 %or1498, %xor1500
  %add1502 = add i32 %add1501, -899497514
  %arrayidx1503 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %906 = load i32, i32* %arrayidx1503, align 4
  %arrayidx1504 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %907 = load i32, i32* %arrayidx1504, align 4
  %xor1505 = xor i32 %906, %907
  %arrayidx1506 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %908 = load i32, i32* %arrayidx1506, align 4
  %xor1507 = xor i32 %xor1505, %908
  %arrayidx1508 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %909 = load i32, i32* %arrayidx1508, align 4
  %xor1509 = xor i32 %xor1507, %909
  store i32 %xor1509, i32* %tm, align 4
  %910 = load i32, i32* %tm, align 4
  %shl1510 = shl i32 %910, 1
  %911 = load i32, i32* %tm, align 4
  %shr1511 = lshr i32 %911, 31
  %or1512 = or i32 %shl1510, %shr1511
  %arrayidx1513 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %or1512, i32* %arrayidx1513, align 4
  %add1514 = add i32 %add1502, %or1512
  %912 = load i32, i32* %b, align 4
  %add1515 = add i32 %912, %add1514
  store i32 %add1515, i32* %b, align 4
  %913 = load i32, i32* %d, align 4
  %shl1516 = shl i32 %913, 30
  %914 = load i32, i32* %d, align 4
  %shr1517 = lshr i32 %914, 2
  %or1518 = or i32 %shl1516, %shr1517
  store i32 %or1518, i32* %d, align 4
  br label %do.end.1519

do.end.1519:                                      ; preds = %do.body.1495
  br label %do.body.1520

do.body.1520:                                     ; preds = %do.end.1519
  %915 = load i32, i32* %b, align 4
  %shl1521 = shl i32 %915, 5
  %916 = load i32, i32* %b, align 4
  %shr1522 = lshr i32 %916, 27
  %or1523 = or i32 %shl1521, %shr1522
  %917 = load i32, i32* %c, align 4
  %918 = load i32, i32* %d, align 4
  %xor1524 = xor i32 %917, %918
  %919 = load i32, i32* %e, align 4
  %xor1525 = xor i32 %xor1524, %919
  %add1526 = add i32 %or1523, %xor1525
  %add1527 = add i32 %add1526, -899497514
  %arrayidx1528 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %920 = load i32, i32* %arrayidx1528, align 4
  %arrayidx1529 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %921 = load i32, i32* %arrayidx1529, align 4
  %xor1530 = xor i32 %920, %921
  %arrayidx1531 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %922 = load i32, i32* %arrayidx1531, align 4
  %xor1532 = xor i32 %xor1530, %922
  %arrayidx1533 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %923 = load i32, i32* %arrayidx1533, align 4
  %xor1534 = xor i32 %xor1532, %923
  store i32 %xor1534, i32* %tm, align 4
  %924 = load i32, i32* %tm, align 4
  %shl1535 = shl i32 %924, 1
  %925 = load i32, i32* %tm, align 4
  %shr1536 = lshr i32 %925, 31
  %or1537 = or i32 %shl1535, %shr1536
  %arrayidx1538 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 %or1537, i32* %arrayidx1538, align 4
  %add1539 = add i32 %add1527, %or1537
  %926 = load i32, i32* %a, align 4
  %add1540 = add i32 %926, %add1539
  store i32 %add1540, i32* %a, align 4
  %927 = load i32, i32* %c, align 4
  %shl1541 = shl i32 %927, 30
  %928 = load i32, i32* %c, align 4
  %shr1542 = lshr i32 %928, 2
  %or1543 = or i32 %shl1541, %shr1542
  store i32 %or1543, i32* %c, align 4
  br label %do.end.1544

do.end.1544:                                      ; preds = %do.body.1520
  br label %do.body.1545

do.body.1545:                                     ; preds = %do.end.1544
  %929 = load i32, i32* %a, align 4
  %shl1546 = shl i32 %929, 5
  %930 = load i32, i32* %a, align 4
  %shr1547 = lshr i32 %930, 27
  %or1548 = or i32 %shl1546, %shr1547
  %931 = load i32, i32* %b, align 4
  %932 = load i32, i32* %c, align 4
  %xor1549 = xor i32 %931, %932
  %933 = load i32, i32* %d, align 4
  %xor1550 = xor i32 %xor1549, %933
  %add1551 = add i32 %or1548, %xor1550
  %add1552 = add i32 %add1551, -899497514
  %arrayidx1553 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %934 = load i32, i32* %arrayidx1553, align 4
  %arrayidx1554 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %935 = load i32, i32* %arrayidx1554, align 4
  %xor1555 = xor i32 %934, %935
  %arrayidx1556 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %936 = load i32, i32* %arrayidx1556, align 4
  %xor1557 = xor i32 %xor1555, %936
  %arrayidx1558 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %937 = load i32, i32* %arrayidx1558, align 4
  %xor1559 = xor i32 %xor1557, %937
  store i32 %xor1559, i32* %tm, align 4
  %938 = load i32, i32* %tm, align 4
  %shl1560 = shl i32 %938, 1
  %939 = load i32, i32* %tm, align 4
  %shr1561 = lshr i32 %939, 31
  %or1562 = or i32 %shl1560, %shr1561
  %arrayidx1563 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 %or1562, i32* %arrayidx1563, align 4
  %add1564 = add i32 %add1552, %or1562
  %940 = load i32, i32* %e, align 4
  %add1565 = add i32 %940, %add1564
  store i32 %add1565, i32* %e, align 4
  %941 = load i32, i32* %b, align 4
  %shl1566 = shl i32 %941, 30
  %942 = load i32, i32* %b, align 4
  %shr1567 = lshr i32 %942, 2
  %or1568 = or i32 %shl1566, %shr1567
  store i32 %or1568, i32* %b, align 4
  br label %do.end.1569

do.end.1569:                                      ; preds = %do.body.1545
  br label %do.body.1570

do.body.1570:                                     ; preds = %do.end.1569
  %943 = load i32, i32* %e, align 4
  %shl1571 = shl i32 %943, 5
  %944 = load i32, i32* %e, align 4
  %shr1572 = lshr i32 %944, 27
  %or1573 = or i32 %shl1571, %shr1572
  %945 = load i32, i32* %a, align 4
  %946 = load i32, i32* %b, align 4
  %xor1574 = xor i32 %945, %946
  %947 = load i32, i32* %c, align 4
  %xor1575 = xor i32 %xor1574, %947
  %add1576 = add i32 %or1573, %xor1575
  %add1577 = add i32 %add1576, -899497514
  %arrayidx1578 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %948 = load i32, i32* %arrayidx1578, align 4
  %arrayidx1579 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %949 = load i32, i32* %arrayidx1579, align 4
  %xor1580 = xor i32 %948, %949
  %arrayidx1581 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %950 = load i32, i32* %arrayidx1581, align 4
  %xor1582 = xor i32 %xor1580, %950
  %arrayidx1583 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %951 = load i32, i32* %arrayidx1583, align 4
  %xor1584 = xor i32 %xor1582, %951
  store i32 %xor1584, i32* %tm, align 4
  %952 = load i32, i32* %tm, align 4
  %shl1585 = shl i32 %952, 1
  %953 = load i32, i32* %tm, align 4
  %shr1586 = lshr i32 %953, 31
  %or1587 = or i32 %shl1585, %shr1586
  %arrayidx1588 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  store i32 %or1587, i32* %arrayidx1588, align 4
  %add1589 = add i32 %add1577, %or1587
  %954 = load i32, i32* %d, align 4
  %add1590 = add i32 %954, %add1589
  store i32 %add1590, i32* %d, align 4
  %955 = load i32, i32* %a, align 4
  %shl1591 = shl i32 %955, 30
  %956 = load i32, i32* %a, align 4
  %shr1592 = lshr i32 %956, 2
  %or1593 = or i32 %shl1591, %shr1592
  store i32 %or1593, i32* %a, align 4
  br label %do.end.1594

do.end.1594:                                      ; preds = %do.body.1570
  br label %do.body.1595

do.body.1595:                                     ; preds = %do.end.1594
  %957 = load i32, i32* %d, align 4
  %shl1596 = shl i32 %957, 5
  %958 = load i32, i32* %d, align 4
  %shr1597 = lshr i32 %958, 27
  %or1598 = or i32 %shl1596, %shr1597
  %959 = load i32, i32* %e, align 4
  %960 = load i32, i32* %a, align 4
  %xor1599 = xor i32 %959, %960
  %961 = load i32, i32* %b, align 4
  %xor1600 = xor i32 %xor1599, %961
  %add1601 = add i32 %or1598, %xor1600
  %add1602 = add i32 %add1601, -899497514
  %arrayidx1603 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %962 = load i32, i32* %arrayidx1603, align 4
  %arrayidx1604 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %963 = load i32, i32* %arrayidx1604, align 4
  %xor1605 = xor i32 %962, %963
  %arrayidx1606 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %964 = load i32, i32* %arrayidx1606, align 4
  %xor1607 = xor i32 %xor1605, %964
  %arrayidx1608 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %965 = load i32, i32* %arrayidx1608, align 4
  %xor1609 = xor i32 %xor1607, %965
  store i32 %xor1609, i32* %tm, align 4
  %966 = load i32, i32* %tm, align 4
  %shl1610 = shl i32 %966, 1
  %967 = load i32, i32* %tm, align 4
  %shr1611 = lshr i32 %967, 31
  %or1612 = or i32 %shl1610, %shr1611
  %arrayidx1613 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  store i32 %or1612, i32* %arrayidx1613, align 4
  %add1614 = add i32 %add1602, %or1612
  %968 = load i32, i32* %c, align 4
  %add1615 = add i32 %968, %add1614
  store i32 %add1615, i32* %c, align 4
  %969 = load i32, i32* %e, align 4
  %shl1616 = shl i32 %969, 30
  %970 = load i32, i32* %e, align 4
  %shr1617 = lshr i32 %970, 2
  %or1618 = or i32 %shl1616, %shr1617
  store i32 %or1618, i32* %e, align 4
  br label %do.end.1619

do.end.1619:                                      ; preds = %do.body.1595
  br label %do.body.1620

do.body.1620:                                     ; preds = %do.end.1619
  %971 = load i32, i32* %c, align 4
  %shl1621 = shl i32 %971, 5
  %972 = load i32, i32* %c, align 4
  %shr1622 = lshr i32 %972, 27
  %or1623 = or i32 %shl1621, %shr1622
  %973 = load i32, i32* %d, align 4
  %974 = load i32, i32* %e, align 4
  %xor1624 = xor i32 %973, %974
  %975 = load i32, i32* %a, align 4
  %xor1625 = xor i32 %xor1624, %975
  %add1626 = add i32 %or1623, %xor1625
  %add1627 = add i32 %add1626, -899497514
  %arrayidx1628 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %976 = load i32, i32* %arrayidx1628, align 4
  %arrayidx1629 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %977 = load i32, i32* %arrayidx1629, align 4
  %xor1630 = xor i32 %976, %977
  %arrayidx1631 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %978 = load i32, i32* %arrayidx1631, align 4
  %xor1632 = xor i32 %xor1630, %978
  %arrayidx1633 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %979 = load i32, i32* %arrayidx1633, align 4
  %xor1634 = xor i32 %xor1632, %979
  store i32 %xor1634, i32* %tm, align 4
  %980 = load i32, i32* %tm, align 4
  %shl1635 = shl i32 %980, 1
  %981 = load i32, i32* %tm, align 4
  %shr1636 = lshr i32 %981, 31
  %or1637 = or i32 %shl1635, %shr1636
  %arrayidx1638 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  store i32 %or1637, i32* %arrayidx1638, align 4
  %add1639 = add i32 %add1627, %or1637
  %982 = load i32, i32* %b, align 4
  %add1640 = add i32 %982, %add1639
  store i32 %add1640, i32* %b, align 4
  %983 = load i32, i32* %d, align 4
  %shl1641 = shl i32 %983, 30
  %984 = load i32, i32* %d, align 4
  %shr1642 = lshr i32 %984, 2
  %or1643 = or i32 %shl1641, %shr1642
  store i32 %or1643, i32* %d, align 4
  br label %do.end.1644

do.end.1644:                                      ; preds = %do.body.1620
  br label %do.body.1645

do.body.1645:                                     ; preds = %do.end.1644
  %985 = load i32, i32* %b, align 4
  %shl1646 = shl i32 %985, 5
  %986 = load i32, i32* %b, align 4
  %shr1647 = lshr i32 %986, 27
  %or1648 = or i32 %shl1646, %shr1647
  %987 = load i32, i32* %c, align 4
  %988 = load i32, i32* %d, align 4
  %xor1649 = xor i32 %987, %988
  %989 = load i32, i32* %e, align 4
  %xor1650 = xor i32 %xor1649, %989
  %add1651 = add i32 %or1648, %xor1650
  %add1652 = add i32 %add1651, -899497514
  %arrayidx1653 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %990 = load i32, i32* %arrayidx1653, align 4
  %arrayidx1654 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %991 = load i32, i32* %arrayidx1654, align 4
  %xor1655 = xor i32 %990, %991
  %arrayidx1656 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %992 = load i32, i32* %arrayidx1656, align 4
  %xor1657 = xor i32 %xor1655, %992
  %arrayidx1658 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %993 = load i32, i32* %arrayidx1658, align 4
  %xor1659 = xor i32 %xor1657, %993
  store i32 %xor1659, i32* %tm, align 4
  %994 = load i32, i32* %tm, align 4
  %shl1660 = shl i32 %994, 1
  %995 = load i32, i32* %tm, align 4
  %shr1661 = lshr i32 %995, 31
  %or1662 = or i32 %shl1660, %shr1661
  %arrayidx1663 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  store i32 %or1662, i32* %arrayidx1663, align 4
  %add1664 = add i32 %add1652, %or1662
  %996 = load i32, i32* %a, align 4
  %add1665 = add i32 %996, %add1664
  store i32 %add1665, i32* %a, align 4
  %997 = load i32, i32* %c, align 4
  %shl1666 = shl i32 %997, 30
  %998 = load i32, i32* %c, align 4
  %shr1667 = lshr i32 %998, 2
  %or1668 = or i32 %shl1666, %shr1667
  store i32 %or1668, i32* %c, align 4
  br label %do.end.1669

do.end.1669:                                      ; preds = %do.body.1645
  br label %do.body.1670

do.body.1670:                                     ; preds = %do.end.1669
  %999 = load i32, i32* %a, align 4
  %shl1671 = shl i32 %999, 5
  %1000 = load i32, i32* %a, align 4
  %shr1672 = lshr i32 %1000, 27
  %or1673 = or i32 %shl1671, %shr1672
  %1001 = load i32, i32* %b, align 4
  %1002 = load i32, i32* %c, align 4
  %xor1674 = xor i32 %1001, %1002
  %1003 = load i32, i32* %d, align 4
  %xor1675 = xor i32 %xor1674, %1003
  %add1676 = add i32 %or1673, %xor1675
  %add1677 = add i32 %add1676, -899497514
  %arrayidx1678 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1004 = load i32, i32* %arrayidx1678, align 4
  %arrayidx1679 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1005 = load i32, i32* %arrayidx1679, align 4
  %xor1680 = xor i32 %1004, %1005
  %arrayidx1681 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1006 = load i32, i32* %arrayidx1681, align 4
  %xor1682 = xor i32 %xor1680, %1006
  %arrayidx1683 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1007 = load i32, i32* %arrayidx1683, align 4
  %xor1684 = xor i32 %xor1682, %1007
  store i32 %xor1684, i32* %tm, align 4
  %1008 = load i32, i32* %tm, align 4
  %shl1685 = shl i32 %1008, 1
  %1009 = load i32, i32* %tm, align 4
  %shr1686 = lshr i32 %1009, 31
  %or1687 = or i32 %shl1685, %shr1686
  %arrayidx1688 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  store i32 %or1687, i32* %arrayidx1688, align 4
  %add1689 = add i32 %add1677, %or1687
  %1010 = load i32, i32* %e, align 4
  %add1690 = add i32 %1010, %add1689
  store i32 %add1690, i32* %e, align 4
  %1011 = load i32, i32* %b, align 4
  %shl1691 = shl i32 %1011, 30
  %1012 = load i32, i32* %b, align 4
  %shr1692 = lshr i32 %1012, 2
  %or1693 = or i32 %shl1691, %shr1692
  store i32 %or1693, i32* %b, align 4
  br label %do.end.1694

do.end.1694:                                      ; preds = %do.body.1670
  br label %do.body.1695

do.body.1695:                                     ; preds = %do.end.1694
  %1013 = load i32, i32* %e, align 4
  %shl1696 = shl i32 %1013, 5
  %1014 = load i32, i32* %e, align 4
  %shr1697 = lshr i32 %1014, 27
  %or1698 = or i32 %shl1696, %shr1697
  %1015 = load i32, i32* %a, align 4
  %1016 = load i32, i32* %b, align 4
  %xor1699 = xor i32 %1015, %1016
  %1017 = load i32, i32* %c, align 4
  %xor1700 = xor i32 %xor1699, %1017
  %add1701 = add i32 %or1698, %xor1700
  %add1702 = add i32 %add1701, -899497514
  %arrayidx1703 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1018 = load i32, i32* %arrayidx1703, align 4
  %arrayidx1704 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1019 = load i32, i32* %arrayidx1704, align 4
  %xor1705 = xor i32 %1018, %1019
  %arrayidx1706 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1020 = load i32, i32* %arrayidx1706, align 4
  %xor1707 = xor i32 %xor1705, %1020
  %arrayidx1708 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1021 = load i32, i32* %arrayidx1708, align 4
  %xor1709 = xor i32 %xor1707, %1021
  store i32 %xor1709, i32* %tm, align 4
  %1022 = load i32, i32* %tm, align 4
  %shl1710 = shl i32 %1022, 1
  %1023 = load i32, i32* %tm, align 4
  %shr1711 = lshr i32 %1023, 31
  %or1712 = or i32 %shl1710, %shr1711
  %arrayidx1713 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  store i32 %or1712, i32* %arrayidx1713, align 4
  %add1714 = add i32 %add1702, %or1712
  %1024 = load i32, i32* %d, align 4
  %add1715 = add i32 %1024, %add1714
  store i32 %add1715, i32* %d, align 4
  %1025 = load i32, i32* %a, align 4
  %shl1716 = shl i32 %1025, 30
  %1026 = load i32, i32* %a, align 4
  %shr1717 = lshr i32 %1026, 2
  %or1718 = or i32 %shl1716, %shr1717
  store i32 %or1718, i32* %a, align 4
  br label %do.end.1719

do.end.1719:                                      ; preds = %do.body.1695
  br label %do.body.1720

do.body.1720:                                     ; preds = %do.end.1719
  %1027 = load i32, i32* %d, align 4
  %shl1721 = shl i32 %1027, 5
  %1028 = load i32, i32* %d, align 4
  %shr1722 = lshr i32 %1028, 27
  %or1723 = or i32 %shl1721, %shr1722
  %1029 = load i32, i32* %e, align 4
  %1030 = load i32, i32* %a, align 4
  %xor1724 = xor i32 %1029, %1030
  %1031 = load i32, i32* %b, align 4
  %xor1725 = xor i32 %xor1724, %1031
  %add1726 = add i32 %or1723, %xor1725
  %add1727 = add i32 %add1726, -899497514
  %arrayidx1728 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1032 = load i32, i32* %arrayidx1728, align 4
  %arrayidx1729 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1033 = load i32, i32* %arrayidx1729, align 4
  %xor1730 = xor i32 %1032, %1033
  %arrayidx1731 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1034 = load i32, i32* %arrayidx1731, align 4
  %xor1732 = xor i32 %xor1730, %1034
  %arrayidx1733 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1035 = load i32, i32* %arrayidx1733, align 4
  %xor1734 = xor i32 %xor1732, %1035
  store i32 %xor1734, i32* %tm, align 4
  %1036 = load i32, i32* %tm, align 4
  %shl1735 = shl i32 %1036, 1
  %1037 = load i32, i32* %tm, align 4
  %shr1736 = lshr i32 %1037, 31
  %or1737 = or i32 %shl1735, %shr1736
  %arrayidx1738 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  store i32 %or1737, i32* %arrayidx1738, align 4
  %add1739 = add i32 %add1727, %or1737
  %1038 = load i32, i32* %c, align 4
  %add1740 = add i32 %1038, %add1739
  store i32 %add1740, i32* %c, align 4
  %1039 = load i32, i32* %e, align 4
  %shl1741 = shl i32 %1039, 30
  %1040 = load i32, i32* %e, align 4
  %shr1742 = lshr i32 %1040, 2
  %or1743 = or i32 %shl1741, %shr1742
  store i32 %or1743, i32* %e, align 4
  br label %do.end.1744

do.end.1744:                                      ; preds = %do.body.1720
  br label %do.body.1745

do.body.1745:                                     ; preds = %do.end.1744
  %1041 = load i32, i32* %c, align 4
  %shl1746 = shl i32 %1041, 5
  %1042 = load i32, i32* %c, align 4
  %shr1747 = lshr i32 %1042, 27
  %or1748 = or i32 %shl1746, %shr1747
  %1043 = load i32, i32* %d, align 4
  %1044 = load i32, i32* %e, align 4
  %xor1749 = xor i32 %1043, %1044
  %1045 = load i32, i32* %a, align 4
  %xor1750 = xor i32 %xor1749, %1045
  %add1751 = add i32 %or1748, %xor1750
  %add1752 = add i32 %add1751, -899497514
  %arrayidx1753 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1046 = load i32, i32* %arrayidx1753, align 4
  %arrayidx1754 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1047 = load i32, i32* %arrayidx1754, align 4
  %xor1755 = xor i32 %1046, %1047
  %arrayidx1756 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1048 = load i32, i32* %arrayidx1756, align 4
  %xor1757 = xor i32 %xor1755, %1048
  %arrayidx1758 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1049 = load i32, i32* %arrayidx1758, align 4
  %xor1759 = xor i32 %xor1757, %1049
  store i32 %xor1759, i32* %tm, align 4
  %1050 = load i32, i32* %tm, align 4
  %shl1760 = shl i32 %1050, 1
  %1051 = load i32, i32* %tm, align 4
  %shr1761 = lshr i32 %1051, 31
  %or1762 = or i32 %shl1760, %shr1761
  %arrayidx1763 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  store i32 %or1762, i32* %arrayidx1763, align 4
  %add1764 = add i32 %add1752, %or1762
  %1052 = load i32, i32* %b, align 4
  %add1765 = add i32 %1052, %add1764
  store i32 %add1765, i32* %b, align 4
  %1053 = load i32, i32* %d, align 4
  %shl1766 = shl i32 %1053, 30
  %1054 = load i32, i32* %d, align 4
  %shr1767 = lshr i32 %1054, 2
  %or1768 = or i32 %shl1766, %shr1767
  store i32 %or1768, i32* %d, align 4
  br label %do.end.1769

do.end.1769:                                      ; preds = %do.body.1745
  br label %do.body.1770

do.body.1770:                                     ; preds = %do.end.1769
  %1055 = load i32, i32* %b, align 4
  %shl1771 = shl i32 %1055, 5
  %1056 = load i32, i32* %b, align 4
  %shr1772 = lshr i32 %1056, 27
  %or1773 = or i32 %shl1771, %shr1772
  %1057 = load i32, i32* %c, align 4
  %1058 = load i32, i32* %d, align 4
  %xor1774 = xor i32 %1057, %1058
  %1059 = load i32, i32* %e, align 4
  %xor1775 = xor i32 %xor1774, %1059
  %add1776 = add i32 %or1773, %xor1775
  %add1777 = add i32 %add1776, -899497514
  %arrayidx1778 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1060 = load i32, i32* %arrayidx1778, align 4
  %arrayidx1779 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1061 = load i32, i32* %arrayidx1779, align 4
  %xor1780 = xor i32 %1060, %1061
  %arrayidx1781 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 2
  %1062 = load i32, i32* %arrayidx1781, align 4
  %xor1782 = xor i32 %xor1780, %1062
  %arrayidx1783 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1063 = load i32, i32* %arrayidx1783, align 4
  %xor1784 = xor i32 %xor1782, %1063
  store i32 %xor1784, i32* %tm, align 4
  %1064 = load i32, i32* %tm, align 4
  %shl1785 = shl i32 %1064, 1
  %1065 = load i32, i32* %tm, align 4
  %shr1786 = lshr i32 %1065, 31
  %or1787 = or i32 %shl1785, %shr1786
  %arrayidx1788 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  store i32 %or1787, i32* %arrayidx1788, align 4
  %add1789 = add i32 %add1777, %or1787
  %1066 = load i32, i32* %a, align 4
  %add1790 = add i32 %1066, %add1789
  store i32 %add1790, i32* %a, align 4
  %1067 = load i32, i32* %c, align 4
  %shl1791 = shl i32 %1067, 30
  %1068 = load i32, i32* %c, align 4
  %shr1792 = lshr i32 %1068, 2
  %or1793 = or i32 %shl1791, %shr1792
  store i32 %or1793, i32* %c, align 4
  br label %do.end.1794

do.end.1794:                                      ; preds = %do.body.1770
  br label %do.body.1795

do.body.1795:                                     ; preds = %do.end.1794
  %1069 = load i32, i32* %a, align 4
  %shl1796 = shl i32 %1069, 5
  %1070 = load i32, i32* %a, align 4
  %shr1797 = lshr i32 %1070, 27
  %or1798 = or i32 %shl1796, %shr1797
  %1071 = load i32, i32* %b, align 4
  %1072 = load i32, i32* %c, align 4
  %xor1799 = xor i32 %1071, %1072
  %1073 = load i32, i32* %d, align 4
  %xor1800 = xor i32 %xor1799, %1073
  %add1801 = add i32 %or1798, %xor1800
  %add1802 = add i32 %add1801, -899497514
  %arrayidx1803 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1074 = load i32, i32* %arrayidx1803, align 4
  %arrayidx1804 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1075 = load i32, i32* %arrayidx1804, align 4
  %xor1805 = xor i32 %1074, %1075
  %arrayidx1806 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 3
  %1076 = load i32, i32* %arrayidx1806, align 4
  %xor1807 = xor i32 %xor1805, %1076
  %arrayidx1808 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 8
  %1077 = load i32, i32* %arrayidx1808, align 4
  %xor1809 = xor i32 %xor1807, %1077
  store i32 %xor1809, i32* %tm, align 4
  %1078 = load i32, i32* %tm, align 4
  %shl1810 = shl i32 %1078, 1
  %1079 = load i32, i32* %tm, align 4
  %shr1811 = lshr i32 %1079, 31
  %or1812 = or i32 %shl1810, %shr1811
  %arrayidx1813 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  store i32 %or1812, i32* %arrayidx1813, align 4
  %add1814 = add i32 %add1802, %or1812
  %1080 = load i32, i32* %e, align 4
  %add1815 = add i32 %1080, %add1814
  store i32 %add1815, i32* %e, align 4
  %1081 = load i32, i32* %b, align 4
  %shl1816 = shl i32 %1081, 30
  %1082 = load i32, i32* %b, align 4
  %shr1817 = lshr i32 %1082, 2
  %or1818 = or i32 %shl1816, %shr1817
  store i32 %or1818, i32* %b, align 4
  br label %do.end.1819

do.end.1819:                                      ; preds = %do.body.1795
  br label %do.body.1820

do.body.1820:                                     ; preds = %do.end.1819
  %1083 = load i32, i32* %e, align 4
  %shl1821 = shl i32 %1083, 5
  %1084 = load i32, i32* %e, align 4
  %shr1822 = lshr i32 %1084, 27
  %or1823 = or i32 %shl1821, %shr1822
  %1085 = load i32, i32* %a, align 4
  %1086 = load i32, i32* %b, align 4
  %xor1824 = xor i32 %1085, %1086
  %1087 = load i32, i32* %c, align 4
  %xor1825 = xor i32 %xor1824, %1087
  %add1826 = add i32 %or1823, %xor1825
  %add1827 = add i32 %add1826, -899497514
  %arrayidx1828 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1088 = load i32, i32* %arrayidx1828, align 4
  %arrayidx1829 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1089 = load i32, i32* %arrayidx1829, align 4
  %xor1830 = xor i32 %1088, %1089
  %arrayidx1831 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 4
  %1090 = load i32, i32* %arrayidx1831, align 4
  %xor1832 = xor i32 %xor1830, %1090
  %arrayidx1833 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 9
  %1091 = load i32, i32* %arrayidx1833, align 4
  %xor1834 = xor i32 %xor1832, %1091
  store i32 %xor1834, i32* %tm, align 4
  %1092 = load i32, i32* %tm, align 4
  %shl1835 = shl i32 %1092, 1
  %1093 = load i32, i32* %tm, align 4
  %shr1836 = lshr i32 %1093, 31
  %or1837 = or i32 %shl1835, %shr1836
  %arrayidx1838 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  store i32 %or1837, i32* %arrayidx1838, align 4
  %add1839 = add i32 %add1827, %or1837
  %1094 = load i32, i32* %d, align 4
  %add1840 = add i32 %1094, %add1839
  store i32 %add1840, i32* %d, align 4
  %1095 = load i32, i32* %a, align 4
  %shl1841 = shl i32 %1095, 30
  %1096 = load i32, i32* %a, align 4
  %shr1842 = lshr i32 %1096, 2
  %or1843 = or i32 %shl1841, %shr1842
  store i32 %or1843, i32* %a, align 4
  br label %do.end.1844

do.end.1844:                                      ; preds = %do.body.1820
  br label %do.body.1845

do.body.1845:                                     ; preds = %do.end.1844
  %1097 = load i32, i32* %d, align 4
  %shl1846 = shl i32 %1097, 5
  %1098 = load i32, i32* %d, align 4
  %shr1847 = lshr i32 %1098, 27
  %or1848 = or i32 %shl1846, %shr1847
  %1099 = load i32, i32* %e, align 4
  %1100 = load i32, i32* %a, align 4
  %xor1849 = xor i32 %1099, %1100
  %1101 = load i32, i32* %b, align 4
  %xor1850 = xor i32 %xor1849, %1101
  %add1851 = add i32 %or1848, %xor1850
  %add1852 = add i32 %add1851, -899497514
  %arrayidx1853 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  %1102 = load i32, i32* %arrayidx1853, align 4
  %arrayidx1854 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1103 = load i32, i32* %arrayidx1854, align 4
  %xor1855 = xor i32 %1102, %1103
  %arrayidx1856 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 5
  %1104 = load i32, i32* %arrayidx1856, align 4
  %xor1857 = xor i32 %xor1855, %1104
  %arrayidx1858 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 10
  %1105 = load i32, i32* %arrayidx1858, align 4
  %xor1859 = xor i32 %xor1857, %1105
  store i32 %xor1859, i32* %tm, align 4
  %1106 = load i32, i32* %tm, align 4
  %shl1860 = shl i32 %1106, 1
  %1107 = load i32, i32* %tm, align 4
  %shr1861 = lshr i32 %1107, 31
  %or1862 = or i32 %shl1860, %shr1861
  %arrayidx1863 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 13
  store i32 %or1862, i32* %arrayidx1863, align 4
  %add1864 = add i32 %add1852, %or1862
  %1108 = load i32, i32* %c, align 4
  %add1865 = add i32 %1108, %add1864
  store i32 %add1865, i32* %c, align 4
  %1109 = load i32, i32* %e, align 4
  %shl1866 = shl i32 %1109, 30
  %1110 = load i32, i32* %e, align 4
  %shr1867 = lshr i32 %1110, 2
  %or1868 = or i32 %shl1866, %shr1867
  store i32 %or1868, i32* %e, align 4
  br label %do.end.1869

do.end.1869:                                      ; preds = %do.body.1845
  br label %do.body.1870

do.body.1870:                                     ; preds = %do.end.1869
  %1111 = load i32, i32* %c, align 4
  %shl1871 = shl i32 %1111, 5
  %1112 = load i32, i32* %c, align 4
  %shr1872 = lshr i32 %1112, 27
  %or1873 = or i32 %shl1871, %shr1872
  %1113 = load i32, i32* %d, align 4
  %1114 = load i32, i32* %e, align 4
  %xor1874 = xor i32 %1113, %1114
  %1115 = load i32, i32* %a, align 4
  %xor1875 = xor i32 %xor1874, %1115
  %add1876 = add i32 %or1873, %xor1875
  %add1877 = add i32 %add1876, -899497514
  %arrayidx1878 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  %1116 = load i32, i32* %arrayidx1878, align 4
  %arrayidx1879 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  %1117 = load i32, i32* %arrayidx1879, align 4
  %xor1880 = xor i32 %1116, %1117
  %arrayidx1881 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 6
  %1118 = load i32, i32* %arrayidx1881, align 4
  %xor1882 = xor i32 %xor1880, %1118
  %arrayidx1883 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 11
  %1119 = load i32, i32* %arrayidx1883, align 4
  %xor1884 = xor i32 %xor1882, %1119
  store i32 %xor1884, i32* %tm, align 4
  %1120 = load i32, i32* %tm, align 4
  %shl1885 = shl i32 %1120, 1
  %1121 = load i32, i32* %tm, align 4
  %shr1886 = lshr i32 %1121, 31
  %or1887 = or i32 %shl1885, %shr1886
  %arrayidx1888 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 14
  store i32 %or1887, i32* %arrayidx1888, align 4
  %add1889 = add i32 %add1877, %or1887
  %1122 = load i32, i32* %b, align 4
  %add1890 = add i32 %1122, %add1889
  store i32 %add1890, i32* %b, align 4
  %1123 = load i32, i32* %d, align 4
  %shl1891 = shl i32 %1123, 30
  %1124 = load i32, i32* %d, align 4
  %shr1892 = lshr i32 %1124, 2
  %or1893 = or i32 %shl1891, %shr1892
  store i32 %or1893, i32* %d, align 4
  br label %do.end.1894

do.end.1894:                                      ; preds = %do.body.1870
  br label %do.body.1895

do.body.1895:                                     ; preds = %do.end.1894
  %1125 = load i32, i32* %b, align 4
  %shl1896 = shl i32 %1125, 5
  %1126 = load i32, i32* %b, align 4
  %shr1897 = lshr i32 %1126, 27
  %or1898 = or i32 %shl1896, %shr1897
  %1127 = load i32, i32* %c, align 4
  %1128 = load i32, i32* %d, align 4
  %xor1899 = xor i32 %1127, %1128
  %1129 = load i32, i32* %e, align 4
  %xor1900 = xor i32 %xor1899, %1129
  %add1901 = add i32 %or1898, %xor1900
  %add1902 = add i32 %add1901, -899497514
  %arrayidx1903 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  %1130 = load i32, i32* %arrayidx1903, align 4
  %arrayidx1904 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  %1131 = load i32, i32* %arrayidx1904, align 4
  %xor1905 = xor i32 %1130, %1131
  %arrayidx1906 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 7
  %1132 = load i32, i32* %arrayidx1906, align 4
  %xor1907 = xor i32 %xor1905, %1132
  %arrayidx1908 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 12
  %1133 = load i32, i32* %arrayidx1908, align 4
  %xor1909 = xor i32 %xor1907, %1133
  store i32 %xor1909, i32* %tm, align 4
  %1134 = load i32, i32* %tm, align 4
  %shl1910 = shl i32 %1134, 1
  %1135 = load i32, i32* %tm, align 4
  %shr1911 = lshr i32 %1135, 31
  %or1912 = or i32 %shl1910, %shr1911
  %arrayidx1913 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 15
  store i32 %or1912, i32* %arrayidx1913, align 4
  %add1914 = add i32 %add1902, %or1912
  %1136 = load i32, i32* %a, align 4
  %add1915 = add i32 %1136, %add1914
  store i32 %add1915, i32* %a, align 4
  %1137 = load i32, i32* %c, align 4
  %shl1916 = shl i32 %1137, 30
  %1138 = load i32, i32* %c, align 4
  %shr1917 = lshr i32 %1138, 2
  %or1918 = or i32 %shl1916, %shr1917
  store i32 %or1918, i32* %c, align 4
  br label %do.end.1919

do.end.1919:                                      ; preds = %do.body.1895
  %1139 = load i32, i32* %a, align 4
  %1140 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %A1920 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1140, i32 0, i32 0
  %1141 = load i32, i32* %A1920, align 4
  %add1921 = add i32 %1141, %1139
  store i32 %add1921, i32* %A1920, align 4
  store i32 %add1921, i32* %a, align 4
  %1142 = load i32, i32* %b, align 4
  %1143 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %B1922 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1143, i32 0, i32 1
  %1144 = load i32, i32* %B1922, align 4
  %add1923 = add i32 %1144, %1142
  store i32 %add1923, i32* %B1922, align 4
  store i32 %add1923, i32* %b, align 4
  %1145 = load i32, i32* %c, align 4
  %1146 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %C1924 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1146, i32 0, i32 2
  %1147 = load i32, i32* %C1924, align 4
  %add1925 = add i32 %1147, %1145
  store i32 %add1925, i32* %C1924, align 4
  store i32 %add1925, i32* %c, align 4
  %1148 = load i32, i32* %d, align 4
  %1149 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %D1926 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1149, i32 0, i32 3
  %1150 = load i32, i32* %D1926, align 4
  %add1927 = add i32 %1150, %1148
  store i32 %add1927, i32* %D1926, align 4
  store i32 %add1927, i32* %d, align 4
  %1151 = load i32, i32* %e, align 4
  %1152 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %E1928 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %1152, i32 0, i32 4
  %1153 = load i32, i32* %E1928, align 4
  %add1929 = add i32 %1153, %1151
  store i32 %add1929, i32* %E1928, align 4
  store i32 %add1929, i32* %e, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sha1_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha1_ctx, align 4
  %sum = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  %call = call noalias i8* @malloc(i64 32840) #1
  store i8* %call, i8** %buffer, align 8
  %0 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sha1_init_ctx(%struct.sha1_ctx* %ctx)
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
  %call8 = call i32 @ferror(%struct._IO_FILE* %9) #1
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %buffer, align 8
  call void @free(i8* %10) #1
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %process_partial_block

if.end.12:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @feof(%struct._IO_FILE* %11) #1
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %process_partial_block

if.end.16:                                        ; preds = %if.end.12
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buffer, align 8
  call void @sha1_process_block(i8* %12, i64 32768, %struct.sha1_ctx* %ctx)
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @sha1_process_bytes(i8* %14, i64 %15, %struct.sha1_ctx* %ctx)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* %ctx, i8* %16)
  %17 = load i8*, i8** %buffer, align 8
  call void @free(i8* %17) #1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @sha1_process_bytes(i8* %buffer, i64 %len, %struct.sha1_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.sha1_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  %left_over50 = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sha1_ctx* %ctx, %struct.sha1_ctx** %ctx.addr, align 8
  %0 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i32 0, i32 6
  %1 = load i32, i32* %buflen, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %2 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen1 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i32 0, i32 6
  %3 = load i32, i32* %buflen1, align 4
  %conv = zext i32 %3 to i64
  store i64 %conv, i64* %left_over, align 8
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
  %sub4 = sub i64 128, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %sub4, %cond.false ]
  store i64 %cond, i64* %add, align 8
  %8 = load i64, i64* %left_over, align 8
  %9 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %9, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer5, i32 0, i32 0
  %10 = bitcast i32* %arraydecay to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %8
  %11 = load i8*, i8** %buffer.addr, align 8
  %12 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %add, align 8
  %14 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen6 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %14, i32 0, i32 6
  %15 = load i32, i32* %buflen6, align 4
  %conv7 = zext i32 %15 to i64
  %add8 = add i64 %conv7, %13
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %buflen6, align 4
  %16 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen10 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %16, i32 0, i32 6
  %17 = load i32, i32* %buflen10, align 4
  %cmp11 = icmp ugt i32 %17, 64
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %cond.end
  %18 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %18, i32 0, i32 7
  %arraydecay15 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer14, i32 0, i32 0
  %19 = bitcast i32* %arraydecay15 to i8*
  %20 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen16 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %20, i32 0, i32 6
  %21 = load i32, i32* %buflen16, align 4
  %and = and i32 %21, -64
  %conv17 = zext i32 %and to i64
  %22 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  call void @sha1_process_block(i8* %19, i64 %conv17, %struct.sha1_ctx* %22)
  %23 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %23, i32 0, i32 6
  %24 = load i32, i32* %buflen18, align 4
  %and19 = and i32 %24, 63
  store i32 %and19, i32* %buflen18, align 4
  %25 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %25, i32 0, i32 7
  %26 = bitcast [32 x i32]* %buffer20 to i8*
  %27 = load i64, i64* %left_over, align 8
  %28 = load i64, i64* %add, align 8
  %add21 = add i64 %27, %28
  %and22 = and i64 %add21, -64
  %29 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %29, i32 0, i32 7
  %arraydecay24 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer23, i32 0, i32 0
  %30 = bitcast i32* %arraydecay24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 %and22
  %31 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen26 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %31, i32 0, i32 6
  %32 = load i32, i32* %buflen26, align 4
  %conv27 = zext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %arrayidx25, i64 %conv27, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %cond.end
  %33 = load i8*, i8** %buffer.addr, align 8
  %34 = load i64, i64* %add, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %35 = load i64, i64* %add, align 8
  %36 = load i64, i64* %len.addr, align 8
  %sub28 = sub i64 %36, %35
  store i64 %sub28, i64* %len.addr, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %entry
  %37 = load i64, i64* %len.addr, align 8
  %cmp30 = icmp uge i64 %37, 64
  br i1 %cmp30, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %if.end.29
  %38 = load i8*, i8** %buffer.addr, align 8
  %39 = ptrtoint i8* %38 to i64
  %rem = urem i64 %39, 4
  %cmp33 = icmp ne i64 %rem, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.35
  %40 = load i64, i64* %len.addr, align 8
  %cmp36 = icmp ugt i64 %40, 64
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer38 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %41, i32 0, i32 7
  %42 = bitcast [32 x i32]* %buffer38 to i8*
  %43 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 1, i1 false)
  %44 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  call void @sha1_process_block(i8* %42, i64 64, %struct.sha1_ctx* %44)
  %45 = load i8*, i8** %buffer.addr, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %45, i64 64
  store i8* %add.ptr39, i8** %buffer.addr, align 8
  %46 = load i64, i64* %len.addr, align 8
  %sub40 = sub i64 %46, 64
  store i64 %sub40, i64* %len.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.45

if.else:                                          ; preds = %if.then.32
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i64, i64* %len.addr, align 8
  %and41 = and i64 %48, -64
  %49 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  call void @sha1_process_block(i8* %47, i64 %and41, %struct.sha1_ctx* %49)
  %50 = load i8*, i8** %buffer.addr, align 8
  %51 = load i64, i64* %len.addr, align 8
  %and42 = and i64 %51, -64
  %add.ptr43 = getelementptr inbounds i8, i8* %50, i64 %and42
  store i8* %add.ptr43, i8** %buffer.addr, align 8
  %52 = load i64, i64* %len.addr, align 8
  %and44 = and i64 %52, 63
  store i64 %and44, i64* %len.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %while.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.29
  %53 = load i64, i64* %len.addr, align 8
  %cmp47 = icmp ugt i64 %53, 0
  br i1 %cmp47, label %if.then.49, label %if.end.69

if.then.49:                                       ; preds = %if.end.46
  %54 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %54, i32 0, i32 6
  %55 = load i32, i32* %buflen51, align 4
  %conv52 = zext i32 %55 to i64
  store i64 %conv52, i64* %left_over50, align 8
  %56 = load i64, i64* %left_over50, align 8
  %57 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer53 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %57, i32 0, i32 7
  %arraydecay54 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer53, i32 0, i32 0
  %58 = bitcast i32* %arraydecay54 to i8*
  %arrayidx55 = getelementptr inbounds i8, i8* %58, i64 %56
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx55, i8* %59, i64 %60, i32 1, i1 false)
  %61 = load i64, i64* %len.addr, align 8
  %62 = load i64, i64* %left_over50, align 8
  %add56 = add i64 %62, %61
  store i64 %add56, i64* %left_over50, align 8
  %63 = load i64, i64* %left_over50, align 8
  %cmp57 = icmp uge i64 %63, 64
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.then.49
  %64 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer60 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %64, i32 0, i32 7
  %arraydecay61 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer60, i32 0, i32 0
  %65 = bitcast i32* %arraydecay61 to i8*
  %66 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  call void @sha1_process_block(i8* %65, i64 64, %struct.sha1_ctx* %66)
  %67 = load i64, i64* %left_over50, align 8
  %sub62 = sub i64 %67, 64
  store i64 %sub62, i64* %left_over50, align 8
  %68 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer63 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %68, i32 0, i32 7
  %69 = bitcast [32 x i32]* %buffer63 to i8*
  %70 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buffer64 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %70, i32 0, i32 7
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer64, i32 0, i64 16
  %71 = bitcast i32* %arrayidx65 to i8*
  %72 = load i64, i64* %left_over50, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 %72, i32 4, i1 false)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.then.49
  %73 = load i64, i64* %left_over50, align 8
  %conv67 = trunc i64 %73 to i32
  %74 = load %struct.sha1_ctx*, %struct.sha1_ctx** %ctx.addr, align 8
  %buflen68 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %74, i32 0, i32 6
  store i32 %conv67, i32* %buflen68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %if.end.46
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sha1_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.sha1_ctx, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @sha1_init_ctx(%struct.sha1_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @sha1_finish_ctx(%struct.sha1_ctx* %ctx, i8* %2)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
