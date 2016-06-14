; ModuleID = 'md5.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [128 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@fillbuf = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @md5_init_ctx(%struct.md5_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 0
  store i32 1732584193, i32* %A, align 4
  %1 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %1, i32 0, i32 1
  store i32 -271733879, i32* %B, align 4
  %2 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i32 0, i32 2
  store i32 -1732584194, i32* %C, align 4
  %3 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i32 0, i32 3
  store i32 271733878, i32* %D, align 4
  %4 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %6 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %6, i32 0, i32 5
  store i32 0, i32* %buflen, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 0
  %1 = load i32, i32* %A, align 4
  %2 = load i8*, i8** %resbuf.addr, align 8
  %3 = bitcast i8* %2 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  store i32 %1, i32* %arrayidx, align 4
  %4 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i32 0, i32 1
  %5 = load i32, i32* %B, align 4
  %6 = load i8*, i8** %resbuf.addr, align 8
  %7 = bitcast i8* %6 to i32*
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 %5, i32* %arrayidx1, align 4
  %8 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %8, i32 0, i32 2
  %9 = load i32, i32* %C, align 4
  %10 = load i8*, i8** %resbuf.addr, align 8
  %11 = bitcast i8* %10 to i32*
  %arrayidx2 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %9, i32* %arrayidx2, align 4
  %12 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %12, i32 0, i32 3
  %13 = load i32, i32* %D, align 4
  %14 = load i8*, i8** %resbuf.addr, align 8
  %15 = bitcast i8* %14 to i32*
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 %13, i32* %arrayidx3, align 4
  %16 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %pad = alloca i64, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 5
  %1 = load i32, i32* %buflen, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load i32, i32* %bytes, align 4
  %3 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %add = add i32 %4, %2
  store i32 %add, i32* %arrayidx, align 4
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %bytes, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %8, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %total3, i32 0, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %bytes, align 4
  %cmp5 = icmp uge i32 %10, 56
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load i32, i32* %bytes, align 4
  %sub = sub i32 120, %11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32, i32* %bytes, align 4
  %sub6 = sub i32 56, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub6, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, i64* %pad, align 8
  %13 = load i32, i32* %bytes, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i64 %idxprom
  %15 = load i64, i64* %pad, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i32 0, i32 0), i64 %15, i32 1, i1 false)
  %16 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %16, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %total8, i32 0, i64 0
  %17 = load i32, i32* %arrayidx9, align 4
  %shl = shl i32 %17, 3
  %18 = load i32, i32* %bytes, align 4
  %conv10 = zext i32 %18 to i64
  %19 = load i64, i64* %pad, align 8
  %add11 = add i64 %conv10, %19
  %20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %20, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer12, i32 0, i64 %add11
  %21 = bitcast i8* %arrayidx13 to i32*
  store i32 %shl, i32* %21, align 4
  %22 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total14 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %22, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %total14, i32 0, i64 1
  %23 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %23, 3
  %24 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total17 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %24, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %total17, i32 0, i64 0
  %25 = load i32, i32* %arrayidx18, align 4
  %shr = lshr i32 %25, 29
  %or = or i32 %shl16, %shr
  %26 = load i32, i32* %bytes, align 4
  %conv19 = zext i32 %26 to i64
  %27 = load i64, i64* %pad, align 8
  %add20 = add i64 %conv19, %27
  %add21 = add i64 %add20, 4
  %28 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer22 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %28, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer22, i32 0, i64 %add21
  %29 = bitcast i8* %arrayidx23 to i32*
  store i32 %or, i32* %29, align 4
  %30 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %30, i32 0, i32 6
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer24, i32 0, i32 0
  %31 = load i32, i32* %bytes, align 4
  %conv25 = zext i32 %31 to i64
  %32 = load i64, i64* %pad, align 8
  %add26 = add i64 %conv25, %32
  %add27 = add i64 %add26, 8
  %33 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %arraydecay, i64 %add27, %struct.md5_ctx* %33)
  %34 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %35 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @md5_read_ctx(%struct.md5_ctx* %34, i8* %35)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @md5_process_block(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %correct_words = alloca [16 x i32], align 16
  %words = alloca i32*, align 8
  %nwords = alloca i64, align 8
  %endp = alloca i32*, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %cwp = alloca i32*, align 8
  %A_save = alloca i32, align 4
  %B_save = alloca i32, align 4
  %C_save = alloca i32, align 4
  %D_save = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
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
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 0
  %6 = load i32, i32* %A1, align 4
  store i32 %6, i32* %A, align 4
  %7 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B2 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %7, i32 0, i32 1
  %8 = load i32, i32* %B2, align 4
  store i32 %8, i32* %B, align 4
  %9 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %9, i32 0, i32 2
  %10 = load i32, i32* %C3, align 4
  store i32 %10, i32* %C, align 4
  %11 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %11, i32 0, i32 3
  %12 = load i32, i32* %D4, align 4
  store i32 %12, i32* %D, align 4
  %13 = load i64, i64* %len.addr, align 8
  %14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %15 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %15 to i64
  %add = add i64 %conv, %13
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %arrayidx, align 4
  %16 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %16, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %total6, i32 0, i64 0
  %17 = load i32, i32* %arrayidx7, align 4
  %conv8 = zext i32 %17 to i64
  %18 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %conv8, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %19, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %total10, i32 0, i64 1
  %20 = load i32, i32* %arrayidx11, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end.836, %if.end
  %21 = load i32*, i32** %words, align 8
  %22 = load i32*, i32** %endp, align 8
  %cmp12 = icmp ult i32* %21, %22
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i32 0
  store i32* %arraydecay, i32** %cwp, align 8
  %23 = load i32, i32* %A, align 4
  store i32 %23, i32* %A_save, align 4
  %24 = load i32, i32* %B, align 4
  store i32 %24, i32* %B_save, align 4
  %25 = load i32, i32* %C, align 4
  store i32 %25, i32* %C_save, align 4
  %26 = load i32, i32* %D, align 4
  store i32 %26, i32* %D_save, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %27 = load i32, i32* %D, align 4
  %28 = load i32, i32* %B, align 4
  %29 = load i32, i32* %C, align 4
  %30 = load i32, i32* %D, align 4
  %xor = xor i32 %29, %30
  %and = and i32 %28, %xor
  %xor14 = xor i32 %27, %and
  %31 = load i32*, i32** %words, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %cwp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr, i32** %cwp, align 8
  store i32 %32, i32* %33, align 4
  %add15 = add i32 %xor14, %32
  %add16 = add i32 %add15, -680876936
  %34 = load i32, i32* %A, align 4
  %add17 = add i32 %34, %add16
  store i32 %add17, i32* %A, align 4
  %35 = load i32*, i32** %words, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr18, i32** %words, align 8
  %36 = load i32, i32* %A, align 4
  %shl = shl i32 %36, 7
  %37 = load i32, i32* %A, align 4
  %shr = lshr i32 %37, 25
  %or = or i32 %shl, %shr
  store i32 %or, i32* %A, align 4
  %38 = load i32, i32* %B, align 4
  %39 = load i32, i32* %A, align 4
  %add19 = add i32 %39, %38
  store i32 %add19, i32* %A, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.20

do.body.20:                                       ; preds = %do.end
  %40 = load i32, i32* %C, align 4
  %41 = load i32, i32* %A, align 4
  %42 = load i32, i32* %B, align 4
  %43 = load i32, i32* %C, align 4
  %xor21 = xor i32 %42, %43
  %and22 = and i32 %41, %xor21
  %xor23 = xor i32 %40, %and22
  %44 = load i32*, i32** %words, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %cwp, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %incdec.ptr24, i32** %cwp, align 8
  store i32 %45, i32* %46, align 4
  %add25 = add i32 %xor23, %45
  %add26 = add i32 %add25, -389564586
  %47 = load i32, i32* %D, align 4
  %add27 = add i32 %47, %add26
  store i32 %add27, i32* %D, align 4
  %48 = load i32*, i32** %words, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr28, i32** %words, align 8
  %49 = load i32, i32* %D, align 4
  %shl29 = shl i32 %49, 12
  %50 = load i32, i32* %D, align 4
  %shr30 = lshr i32 %50, 20
  %or31 = or i32 %shl29, %shr30
  store i32 %or31, i32* %D, align 4
  %51 = load i32, i32* %A, align 4
  %52 = load i32, i32* %D, align 4
  %add32 = add i32 %52, %51
  store i32 %add32, i32* %D, align 4
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.20
  br label %do.body.34

do.body.34:                                       ; preds = %do.end.33
  %53 = load i32, i32* %B, align 4
  %54 = load i32, i32* %D, align 4
  %55 = load i32, i32* %A, align 4
  %56 = load i32, i32* %B, align 4
  %xor35 = xor i32 %55, %56
  %and36 = and i32 %54, %xor35
  %xor37 = xor i32 %53, %and36
  %57 = load i32*, i32** %words, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %cwp, align 8
  %incdec.ptr38 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %incdec.ptr38, i32** %cwp, align 8
  store i32 %58, i32* %59, align 4
  %add39 = add i32 %xor37, %58
  %add40 = add i32 %add39, 606105819
  %60 = load i32, i32* %C, align 4
  %add41 = add i32 %60, %add40
  store i32 %add41, i32* %C, align 4
  %61 = load i32*, i32** %words, align 8
  %incdec.ptr42 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr42, i32** %words, align 8
  %62 = load i32, i32* %C, align 4
  %shl43 = shl i32 %62, 17
  %63 = load i32, i32* %C, align 4
  %shr44 = lshr i32 %63, 15
  %or45 = or i32 %shl43, %shr44
  store i32 %or45, i32* %C, align 4
  %64 = load i32, i32* %D, align 4
  %65 = load i32, i32* %C, align 4
  %add46 = add i32 %65, %64
  store i32 %add46, i32* %C, align 4
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.34
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %66 = load i32, i32* %A, align 4
  %67 = load i32, i32* %C, align 4
  %68 = load i32, i32* %D, align 4
  %69 = load i32, i32* %A, align 4
  %xor49 = xor i32 %68, %69
  %and50 = and i32 %67, %xor49
  %xor51 = xor i32 %66, %and50
  %70 = load i32*, i32** %words, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %cwp, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr52, i32** %cwp, align 8
  store i32 %71, i32* %72, align 4
  %add53 = add i32 %xor51, %71
  %add54 = add i32 %add53, -1044525330
  %73 = load i32, i32* %B, align 4
  %add55 = add i32 %73, %add54
  store i32 %add55, i32* %B, align 4
  %74 = load i32*, i32** %words, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr56, i32** %words, align 8
  %75 = load i32, i32* %B, align 4
  %shl57 = shl i32 %75, 22
  %76 = load i32, i32* %B, align 4
  %shr58 = lshr i32 %76, 10
  %or59 = or i32 %shl57, %shr58
  store i32 %or59, i32* %B, align 4
  %77 = load i32, i32* %C, align 4
  %78 = load i32, i32* %B, align 4
  %add60 = add i32 %78, %77
  store i32 %add60, i32* %B, align 4
  br label %do.end.61

do.end.61:                                        ; preds = %do.body.48
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %79 = load i32, i32* %D, align 4
  %80 = load i32, i32* %B, align 4
  %81 = load i32, i32* %C, align 4
  %82 = load i32, i32* %D, align 4
  %xor63 = xor i32 %81, %82
  %and64 = and i32 %80, %xor63
  %xor65 = xor i32 %79, %and64
  %83 = load i32*, i32** %words, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %cwp, align 8
  %incdec.ptr66 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %incdec.ptr66, i32** %cwp, align 8
  store i32 %84, i32* %85, align 4
  %add67 = add i32 %xor65, %84
  %add68 = add i32 %add67, -176418897
  %86 = load i32, i32* %A, align 4
  %add69 = add i32 %86, %add68
  store i32 %add69, i32* %A, align 4
  %87 = load i32*, i32** %words, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr70, i32** %words, align 8
  %88 = load i32, i32* %A, align 4
  %shl71 = shl i32 %88, 7
  %89 = load i32, i32* %A, align 4
  %shr72 = lshr i32 %89, 25
  %or73 = or i32 %shl71, %shr72
  store i32 %or73, i32* %A, align 4
  %90 = load i32, i32* %B, align 4
  %91 = load i32, i32* %A, align 4
  %add74 = add i32 %91, %90
  store i32 %add74, i32* %A, align 4
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.62
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %92 = load i32, i32* %C, align 4
  %93 = load i32, i32* %A, align 4
  %94 = load i32, i32* %B, align 4
  %95 = load i32, i32* %C, align 4
  %xor77 = xor i32 %94, %95
  %and78 = and i32 %93, %xor77
  %xor79 = xor i32 %92, %and78
  %96 = load i32*, i32** %words, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %cwp, align 8
  %incdec.ptr80 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %incdec.ptr80, i32** %cwp, align 8
  store i32 %97, i32* %98, align 4
  %add81 = add i32 %xor79, %97
  %add82 = add i32 %add81, 1200080426
  %99 = load i32, i32* %D, align 4
  %add83 = add i32 %99, %add82
  store i32 %add83, i32* %D, align 4
  %100 = load i32*, i32** %words, align 8
  %incdec.ptr84 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %incdec.ptr84, i32** %words, align 8
  %101 = load i32, i32* %D, align 4
  %shl85 = shl i32 %101, 12
  %102 = load i32, i32* %D, align 4
  %shr86 = lshr i32 %102, 20
  %or87 = or i32 %shl85, %shr86
  store i32 %or87, i32* %D, align 4
  %103 = load i32, i32* %A, align 4
  %104 = load i32, i32* %D, align 4
  %add88 = add i32 %104, %103
  store i32 %add88, i32* %D, align 4
  br label %do.end.89

do.end.89:                                        ; preds = %do.body.76
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %105 = load i32, i32* %B, align 4
  %106 = load i32, i32* %D, align 4
  %107 = load i32, i32* %A, align 4
  %108 = load i32, i32* %B, align 4
  %xor91 = xor i32 %107, %108
  %and92 = and i32 %106, %xor91
  %xor93 = xor i32 %105, %and92
  %109 = load i32*, i32** %words, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %cwp, align 8
  %incdec.ptr94 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr94, i32** %cwp, align 8
  store i32 %110, i32* %111, align 4
  %add95 = add i32 %xor93, %110
  %add96 = add i32 %add95, -1473231341
  %112 = load i32, i32* %C, align 4
  %add97 = add i32 %112, %add96
  store i32 %add97, i32* %C, align 4
  %113 = load i32*, i32** %words, align 8
  %incdec.ptr98 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %incdec.ptr98, i32** %words, align 8
  %114 = load i32, i32* %C, align 4
  %shl99 = shl i32 %114, 17
  %115 = load i32, i32* %C, align 4
  %shr100 = lshr i32 %115, 15
  %or101 = or i32 %shl99, %shr100
  store i32 %or101, i32* %C, align 4
  %116 = load i32, i32* %D, align 4
  %117 = load i32, i32* %C, align 4
  %add102 = add i32 %117, %116
  store i32 %add102, i32* %C, align 4
  br label %do.end.103

do.end.103:                                       ; preds = %do.body.90
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %118 = load i32, i32* %A, align 4
  %119 = load i32, i32* %C, align 4
  %120 = load i32, i32* %D, align 4
  %121 = load i32, i32* %A, align 4
  %xor105 = xor i32 %120, %121
  %and106 = and i32 %119, %xor105
  %xor107 = xor i32 %118, %and106
  %122 = load i32*, i32** %words, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %cwp, align 8
  %incdec.ptr108 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %incdec.ptr108, i32** %cwp, align 8
  store i32 %123, i32* %124, align 4
  %add109 = add i32 %xor107, %123
  %add110 = add i32 %add109, -45705983
  %125 = load i32, i32* %B, align 4
  %add111 = add i32 %125, %add110
  store i32 %add111, i32* %B, align 4
  %126 = load i32*, i32** %words, align 8
  %incdec.ptr112 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %incdec.ptr112, i32** %words, align 8
  %127 = load i32, i32* %B, align 4
  %shl113 = shl i32 %127, 22
  %128 = load i32, i32* %B, align 4
  %shr114 = lshr i32 %128, 10
  %or115 = or i32 %shl113, %shr114
  store i32 %or115, i32* %B, align 4
  %129 = load i32, i32* %C, align 4
  %130 = load i32, i32* %B, align 4
  %add116 = add i32 %130, %129
  store i32 %add116, i32* %B, align 4
  br label %do.end.117

do.end.117:                                       ; preds = %do.body.104
  br label %do.body.118

do.body.118:                                      ; preds = %do.end.117
  %131 = load i32, i32* %D, align 4
  %132 = load i32, i32* %B, align 4
  %133 = load i32, i32* %C, align 4
  %134 = load i32, i32* %D, align 4
  %xor119 = xor i32 %133, %134
  %and120 = and i32 %132, %xor119
  %xor121 = xor i32 %131, %and120
  %135 = load i32*, i32** %words, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %cwp, align 8
  %incdec.ptr122 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %incdec.ptr122, i32** %cwp, align 8
  store i32 %136, i32* %137, align 4
  %add123 = add i32 %xor121, %136
  %add124 = add i32 %add123, 1770035416
  %138 = load i32, i32* %A, align 4
  %add125 = add i32 %138, %add124
  store i32 %add125, i32* %A, align 4
  %139 = load i32*, i32** %words, align 8
  %incdec.ptr126 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %incdec.ptr126, i32** %words, align 8
  %140 = load i32, i32* %A, align 4
  %shl127 = shl i32 %140, 7
  %141 = load i32, i32* %A, align 4
  %shr128 = lshr i32 %141, 25
  %or129 = or i32 %shl127, %shr128
  store i32 %or129, i32* %A, align 4
  %142 = load i32, i32* %B, align 4
  %143 = load i32, i32* %A, align 4
  %add130 = add i32 %143, %142
  store i32 %add130, i32* %A, align 4
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.118
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %144 = load i32, i32* %C, align 4
  %145 = load i32, i32* %A, align 4
  %146 = load i32, i32* %B, align 4
  %147 = load i32, i32* %C, align 4
  %xor133 = xor i32 %146, %147
  %and134 = and i32 %145, %xor133
  %xor135 = xor i32 %144, %and134
  %148 = load i32*, i32** %words, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %cwp, align 8
  %incdec.ptr136 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %incdec.ptr136, i32** %cwp, align 8
  store i32 %149, i32* %150, align 4
  %add137 = add i32 %xor135, %149
  %add138 = add i32 %add137, -1958414417
  %151 = load i32, i32* %D, align 4
  %add139 = add i32 %151, %add138
  store i32 %add139, i32* %D, align 4
  %152 = load i32*, i32** %words, align 8
  %incdec.ptr140 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %incdec.ptr140, i32** %words, align 8
  %153 = load i32, i32* %D, align 4
  %shl141 = shl i32 %153, 12
  %154 = load i32, i32* %D, align 4
  %shr142 = lshr i32 %154, 20
  %or143 = or i32 %shl141, %shr142
  store i32 %or143, i32* %D, align 4
  %155 = load i32, i32* %A, align 4
  %156 = load i32, i32* %D, align 4
  %add144 = add i32 %156, %155
  store i32 %add144, i32* %D, align 4
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.132
  br label %do.body.146

do.body.146:                                      ; preds = %do.end.145
  %157 = load i32, i32* %B, align 4
  %158 = load i32, i32* %D, align 4
  %159 = load i32, i32* %A, align 4
  %160 = load i32, i32* %B, align 4
  %xor147 = xor i32 %159, %160
  %and148 = and i32 %158, %xor147
  %xor149 = xor i32 %157, %and148
  %161 = load i32*, i32** %words, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %cwp, align 8
  %incdec.ptr150 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %incdec.ptr150, i32** %cwp, align 8
  store i32 %162, i32* %163, align 4
  %add151 = add i32 %xor149, %162
  %add152 = add i32 %add151, -42063
  %164 = load i32, i32* %C, align 4
  %add153 = add i32 %164, %add152
  store i32 %add153, i32* %C, align 4
  %165 = load i32*, i32** %words, align 8
  %incdec.ptr154 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %incdec.ptr154, i32** %words, align 8
  %166 = load i32, i32* %C, align 4
  %shl155 = shl i32 %166, 17
  %167 = load i32, i32* %C, align 4
  %shr156 = lshr i32 %167, 15
  %or157 = or i32 %shl155, %shr156
  store i32 %or157, i32* %C, align 4
  %168 = load i32, i32* %D, align 4
  %169 = load i32, i32* %C, align 4
  %add158 = add i32 %169, %168
  store i32 %add158, i32* %C, align 4
  br label %do.end.159

do.end.159:                                       ; preds = %do.body.146
  br label %do.body.160

do.body.160:                                      ; preds = %do.end.159
  %170 = load i32, i32* %A, align 4
  %171 = load i32, i32* %C, align 4
  %172 = load i32, i32* %D, align 4
  %173 = load i32, i32* %A, align 4
  %xor161 = xor i32 %172, %173
  %and162 = and i32 %171, %xor161
  %xor163 = xor i32 %170, %and162
  %174 = load i32*, i32** %words, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %cwp, align 8
  %incdec.ptr164 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %incdec.ptr164, i32** %cwp, align 8
  store i32 %175, i32* %176, align 4
  %add165 = add i32 %xor163, %175
  %add166 = add i32 %add165, -1990404162
  %177 = load i32, i32* %B, align 4
  %add167 = add i32 %177, %add166
  store i32 %add167, i32* %B, align 4
  %178 = load i32*, i32** %words, align 8
  %incdec.ptr168 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %incdec.ptr168, i32** %words, align 8
  %179 = load i32, i32* %B, align 4
  %shl169 = shl i32 %179, 22
  %180 = load i32, i32* %B, align 4
  %shr170 = lshr i32 %180, 10
  %or171 = or i32 %shl169, %shr170
  store i32 %or171, i32* %B, align 4
  %181 = load i32, i32* %C, align 4
  %182 = load i32, i32* %B, align 4
  %add172 = add i32 %182, %181
  store i32 %add172, i32* %B, align 4
  br label %do.end.173

do.end.173:                                       ; preds = %do.body.160
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %183 = load i32, i32* %D, align 4
  %184 = load i32, i32* %B, align 4
  %185 = load i32, i32* %C, align 4
  %186 = load i32, i32* %D, align 4
  %xor175 = xor i32 %185, %186
  %and176 = and i32 %184, %xor175
  %xor177 = xor i32 %183, %and176
  %187 = load i32*, i32** %words, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %cwp, align 8
  %incdec.ptr178 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %incdec.ptr178, i32** %cwp, align 8
  store i32 %188, i32* %189, align 4
  %add179 = add i32 %xor177, %188
  %add180 = add i32 %add179, 1804603682
  %190 = load i32, i32* %A, align 4
  %add181 = add i32 %190, %add180
  store i32 %add181, i32* %A, align 4
  %191 = load i32*, i32** %words, align 8
  %incdec.ptr182 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %incdec.ptr182, i32** %words, align 8
  %192 = load i32, i32* %A, align 4
  %shl183 = shl i32 %192, 7
  %193 = load i32, i32* %A, align 4
  %shr184 = lshr i32 %193, 25
  %or185 = or i32 %shl183, %shr184
  store i32 %or185, i32* %A, align 4
  %194 = load i32, i32* %B, align 4
  %195 = load i32, i32* %A, align 4
  %add186 = add i32 %195, %194
  store i32 %add186, i32* %A, align 4
  br label %do.end.187

do.end.187:                                       ; preds = %do.body.174
  br label %do.body.188

do.body.188:                                      ; preds = %do.end.187
  %196 = load i32, i32* %C, align 4
  %197 = load i32, i32* %A, align 4
  %198 = load i32, i32* %B, align 4
  %199 = load i32, i32* %C, align 4
  %xor189 = xor i32 %198, %199
  %and190 = and i32 %197, %xor189
  %xor191 = xor i32 %196, %and190
  %200 = load i32*, i32** %words, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %cwp, align 8
  %incdec.ptr192 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %incdec.ptr192, i32** %cwp, align 8
  store i32 %201, i32* %202, align 4
  %add193 = add i32 %xor191, %201
  %add194 = add i32 %add193, -40341101
  %203 = load i32, i32* %D, align 4
  %add195 = add i32 %203, %add194
  store i32 %add195, i32* %D, align 4
  %204 = load i32*, i32** %words, align 8
  %incdec.ptr196 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %incdec.ptr196, i32** %words, align 8
  %205 = load i32, i32* %D, align 4
  %shl197 = shl i32 %205, 12
  %206 = load i32, i32* %D, align 4
  %shr198 = lshr i32 %206, 20
  %or199 = or i32 %shl197, %shr198
  store i32 %or199, i32* %D, align 4
  %207 = load i32, i32* %A, align 4
  %208 = load i32, i32* %D, align 4
  %add200 = add i32 %208, %207
  store i32 %add200, i32* %D, align 4
  br label %do.end.201

do.end.201:                                       ; preds = %do.body.188
  br label %do.body.202

do.body.202:                                      ; preds = %do.end.201
  %209 = load i32, i32* %B, align 4
  %210 = load i32, i32* %D, align 4
  %211 = load i32, i32* %A, align 4
  %212 = load i32, i32* %B, align 4
  %xor203 = xor i32 %211, %212
  %and204 = and i32 %210, %xor203
  %xor205 = xor i32 %209, %and204
  %213 = load i32*, i32** %words, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %cwp, align 8
  %incdec.ptr206 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %incdec.ptr206, i32** %cwp, align 8
  store i32 %214, i32* %215, align 4
  %add207 = add i32 %xor205, %214
  %add208 = add i32 %add207, -1502002290
  %216 = load i32, i32* %C, align 4
  %add209 = add i32 %216, %add208
  store i32 %add209, i32* %C, align 4
  %217 = load i32*, i32** %words, align 8
  %incdec.ptr210 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %incdec.ptr210, i32** %words, align 8
  %218 = load i32, i32* %C, align 4
  %shl211 = shl i32 %218, 17
  %219 = load i32, i32* %C, align 4
  %shr212 = lshr i32 %219, 15
  %or213 = or i32 %shl211, %shr212
  store i32 %or213, i32* %C, align 4
  %220 = load i32, i32* %D, align 4
  %221 = load i32, i32* %C, align 4
  %add214 = add i32 %221, %220
  store i32 %add214, i32* %C, align 4
  br label %do.end.215

do.end.215:                                       ; preds = %do.body.202
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %222 = load i32, i32* %A, align 4
  %223 = load i32, i32* %C, align 4
  %224 = load i32, i32* %D, align 4
  %225 = load i32, i32* %A, align 4
  %xor217 = xor i32 %224, %225
  %and218 = and i32 %223, %xor217
  %xor219 = xor i32 %222, %and218
  %226 = load i32*, i32** %words, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %cwp, align 8
  %incdec.ptr220 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %incdec.ptr220, i32** %cwp, align 8
  store i32 %227, i32* %228, align 4
  %add221 = add i32 %xor219, %227
  %add222 = add i32 %add221, 1236535329
  %229 = load i32, i32* %B, align 4
  %add223 = add i32 %229, %add222
  store i32 %add223, i32* %B, align 4
  %230 = load i32*, i32** %words, align 8
  %incdec.ptr224 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %incdec.ptr224, i32** %words, align 8
  %231 = load i32, i32* %B, align 4
  %shl225 = shl i32 %231, 22
  %232 = load i32, i32* %B, align 4
  %shr226 = lshr i32 %232, 10
  %or227 = or i32 %shl225, %shr226
  store i32 %or227, i32* %B, align 4
  %233 = load i32, i32* %C, align 4
  %234 = load i32, i32* %B, align 4
  %add228 = add i32 %234, %233
  store i32 %add228, i32* %B, align 4
  br label %do.end.229

do.end.229:                                       ; preds = %do.body.216
  br label %do.body.230

do.body.230:                                      ; preds = %do.end.229
  %235 = load i32, i32* %C, align 4
  %236 = load i32, i32* %D, align 4
  %237 = load i32, i32* %B, align 4
  %238 = load i32, i32* %C, align 4
  %xor231 = xor i32 %237, %238
  %and232 = and i32 %236, %xor231
  %xor233 = xor i32 %235, %and232
  %arrayidx234 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %239 = load i32, i32* %arrayidx234, align 4
  %add235 = add i32 %xor233, %239
  %add236 = add i32 %add235, -165796510
  %240 = load i32, i32* %A, align 4
  %add237 = add i32 %240, %add236
  store i32 %add237, i32* %A, align 4
  %241 = load i32, i32* %A, align 4
  %shl238 = shl i32 %241, 5
  %242 = load i32, i32* %A, align 4
  %shr239 = lshr i32 %242, 27
  %or240 = or i32 %shl238, %shr239
  store i32 %or240, i32* %A, align 4
  %243 = load i32, i32* %B, align 4
  %244 = load i32, i32* %A, align 4
  %add241 = add i32 %244, %243
  store i32 %add241, i32* %A, align 4
  br label %do.end.242

do.end.242:                                       ; preds = %do.body.230
  br label %do.body.243

do.body.243:                                      ; preds = %do.end.242
  %245 = load i32, i32* %B, align 4
  %246 = load i32, i32* %C, align 4
  %247 = load i32, i32* %A, align 4
  %248 = load i32, i32* %B, align 4
  %xor244 = xor i32 %247, %248
  %and245 = and i32 %246, %xor244
  %xor246 = xor i32 %245, %and245
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %249 = load i32, i32* %arrayidx247, align 4
  %add248 = add i32 %xor246, %249
  %add249 = add i32 %add248, -1069501632
  %250 = load i32, i32* %D, align 4
  %add250 = add i32 %250, %add249
  store i32 %add250, i32* %D, align 4
  %251 = load i32, i32* %D, align 4
  %shl251 = shl i32 %251, 9
  %252 = load i32, i32* %D, align 4
  %shr252 = lshr i32 %252, 23
  %or253 = or i32 %shl251, %shr252
  store i32 %or253, i32* %D, align 4
  %253 = load i32, i32* %A, align 4
  %254 = load i32, i32* %D, align 4
  %add254 = add i32 %254, %253
  store i32 %add254, i32* %D, align 4
  br label %do.end.255

do.end.255:                                       ; preds = %do.body.243
  br label %do.body.256

do.body.256:                                      ; preds = %do.end.255
  %255 = load i32, i32* %A, align 4
  %256 = load i32, i32* %B, align 4
  %257 = load i32, i32* %D, align 4
  %258 = load i32, i32* %A, align 4
  %xor257 = xor i32 %257, %258
  %and258 = and i32 %256, %xor257
  %xor259 = xor i32 %255, %and258
  %arrayidx260 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %259 = load i32, i32* %arrayidx260, align 4
  %add261 = add i32 %xor259, %259
  %add262 = add i32 %add261, 643717713
  %260 = load i32, i32* %C, align 4
  %add263 = add i32 %260, %add262
  store i32 %add263, i32* %C, align 4
  %261 = load i32, i32* %C, align 4
  %shl264 = shl i32 %261, 14
  %262 = load i32, i32* %C, align 4
  %shr265 = lshr i32 %262, 18
  %or266 = or i32 %shl264, %shr265
  store i32 %or266, i32* %C, align 4
  %263 = load i32, i32* %D, align 4
  %264 = load i32, i32* %C, align 4
  %add267 = add i32 %264, %263
  store i32 %add267, i32* %C, align 4
  br label %do.end.268

do.end.268:                                       ; preds = %do.body.256
  br label %do.body.269

do.body.269:                                      ; preds = %do.end.268
  %265 = load i32, i32* %D, align 4
  %266 = load i32, i32* %A, align 4
  %267 = load i32, i32* %C, align 4
  %268 = load i32, i32* %D, align 4
  %xor270 = xor i32 %267, %268
  %and271 = and i32 %266, %xor270
  %xor272 = xor i32 %265, %and271
  %arrayidx273 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %269 = load i32, i32* %arrayidx273, align 4
  %add274 = add i32 %xor272, %269
  %add275 = add i32 %add274, -373897302
  %270 = load i32, i32* %B, align 4
  %add276 = add i32 %270, %add275
  store i32 %add276, i32* %B, align 4
  %271 = load i32, i32* %B, align 4
  %shl277 = shl i32 %271, 20
  %272 = load i32, i32* %B, align 4
  %shr278 = lshr i32 %272, 12
  %or279 = or i32 %shl277, %shr278
  store i32 %or279, i32* %B, align 4
  %273 = load i32, i32* %C, align 4
  %274 = load i32, i32* %B, align 4
  %add280 = add i32 %274, %273
  store i32 %add280, i32* %B, align 4
  br label %do.end.281

do.end.281:                                       ; preds = %do.body.269
  br label %do.body.282

do.body.282:                                      ; preds = %do.end.281
  %275 = load i32, i32* %C, align 4
  %276 = load i32, i32* %D, align 4
  %277 = load i32, i32* %B, align 4
  %278 = load i32, i32* %C, align 4
  %xor283 = xor i32 %277, %278
  %and284 = and i32 %276, %xor283
  %xor285 = xor i32 %275, %and284
  %arrayidx286 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %279 = load i32, i32* %arrayidx286, align 4
  %add287 = add i32 %xor285, %279
  %add288 = add i32 %add287, -701558691
  %280 = load i32, i32* %A, align 4
  %add289 = add i32 %280, %add288
  store i32 %add289, i32* %A, align 4
  %281 = load i32, i32* %A, align 4
  %shl290 = shl i32 %281, 5
  %282 = load i32, i32* %A, align 4
  %shr291 = lshr i32 %282, 27
  %or292 = or i32 %shl290, %shr291
  store i32 %or292, i32* %A, align 4
  %283 = load i32, i32* %B, align 4
  %284 = load i32, i32* %A, align 4
  %add293 = add i32 %284, %283
  store i32 %add293, i32* %A, align 4
  br label %do.end.294

do.end.294:                                       ; preds = %do.body.282
  br label %do.body.295

do.body.295:                                      ; preds = %do.end.294
  %285 = load i32, i32* %B, align 4
  %286 = load i32, i32* %C, align 4
  %287 = load i32, i32* %A, align 4
  %288 = load i32, i32* %B, align 4
  %xor296 = xor i32 %287, %288
  %and297 = and i32 %286, %xor296
  %xor298 = xor i32 %285, %and297
  %arrayidx299 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %289 = load i32, i32* %arrayidx299, align 4
  %add300 = add i32 %xor298, %289
  %add301 = add i32 %add300, 38016083
  %290 = load i32, i32* %D, align 4
  %add302 = add i32 %290, %add301
  store i32 %add302, i32* %D, align 4
  %291 = load i32, i32* %D, align 4
  %shl303 = shl i32 %291, 9
  %292 = load i32, i32* %D, align 4
  %shr304 = lshr i32 %292, 23
  %or305 = or i32 %shl303, %shr304
  store i32 %or305, i32* %D, align 4
  %293 = load i32, i32* %A, align 4
  %294 = load i32, i32* %D, align 4
  %add306 = add i32 %294, %293
  store i32 %add306, i32* %D, align 4
  br label %do.end.307

do.end.307:                                       ; preds = %do.body.295
  br label %do.body.308

do.body.308:                                      ; preds = %do.end.307
  %295 = load i32, i32* %A, align 4
  %296 = load i32, i32* %B, align 4
  %297 = load i32, i32* %D, align 4
  %298 = load i32, i32* %A, align 4
  %xor309 = xor i32 %297, %298
  %and310 = and i32 %296, %xor309
  %xor311 = xor i32 %295, %and310
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %299 = load i32, i32* %arrayidx312, align 4
  %add313 = add i32 %xor311, %299
  %add314 = add i32 %add313, -660478335
  %300 = load i32, i32* %C, align 4
  %add315 = add i32 %300, %add314
  store i32 %add315, i32* %C, align 4
  %301 = load i32, i32* %C, align 4
  %shl316 = shl i32 %301, 14
  %302 = load i32, i32* %C, align 4
  %shr317 = lshr i32 %302, 18
  %or318 = or i32 %shl316, %shr317
  store i32 %or318, i32* %C, align 4
  %303 = load i32, i32* %D, align 4
  %304 = load i32, i32* %C, align 4
  %add319 = add i32 %304, %303
  store i32 %add319, i32* %C, align 4
  br label %do.end.320

do.end.320:                                       ; preds = %do.body.308
  br label %do.body.321

do.body.321:                                      ; preds = %do.end.320
  %305 = load i32, i32* %D, align 4
  %306 = load i32, i32* %A, align 4
  %307 = load i32, i32* %C, align 4
  %308 = load i32, i32* %D, align 4
  %xor322 = xor i32 %307, %308
  %and323 = and i32 %306, %xor322
  %xor324 = xor i32 %305, %and323
  %arrayidx325 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %309 = load i32, i32* %arrayidx325, align 4
  %add326 = add i32 %xor324, %309
  %add327 = add i32 %add326, -405537848
  %310 = load i32, i32* %B, align 4
  %add328 = add i32 %310, %add327
  store i32 %add328, i32* %B, align 4
  %311 = load i32, i32* %B, align 4
  %shl329 = shl i32 %311, 20
  %312 = load i32, i32* %B, align 4
  %shr330 = lshr i32 %312, 12
  %or331 = or i32 %shl329, %shr330
  store i32 %or331, i32* %B, align 4
  %313 = load i32, i32* %C, align 4
  %314 = load i32, i32* %B, align 4
  %add332 = add i32 %314, %313
  store i32 %add332, i32* %B, align 4
  br label %do.end.333

do.end.333:                                       ; preds = %do.body.321
  br label %do.body.334

do.body.334:                                      ; preds = %do.end.333
  %315 = load i32, i32* %C, align 4
  %316 = load i32, i32* %D, align 4
  %317 = load i32, i32* %B, align 4
  %318 = load i32, i32* %C, align 4
  %xor335 = xor i32 %317, %318
  %and336 = and i32 %316, %xor335
  %xor337 = xor i32 %315, %and336
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %319 = load i32, i32* %arrayidx338, align 4
  %add339 = add i32 %xor337, %319
  %add340 = add i32 %add339, 568446438
  %320 = load i32, i32* %A, align 4
  %add341 = add i32 %320, %add340
  store i32 %add341, i32* %A, align 4
  %321 = load i32, i32* %A, align 4
  %shl342 = shl i32 %321, 5
  %322 = load i32, i32* %A, align 4
  %shr343 = lshr i32 %322, 27
  %or344 = or i32 %shl342, %shr343
  store i32 %or344, i32* %A, align 4
  %323 = load i32, i32* %B, align 4
  %324 = load i32, i32* %A, align 4
  %add345 = add i32 %324, %323
  store i32 %add345, i32* %A, align 4
  br label %do.end.346

do.end.346:                                       ; preds = %do.body.334
  br label %do.body.347

do.body.347:                                      ; preds = %do.end.346
  %325 = load i32, i32* %B, align 4
  %326 = load i32, i32* %C, align 4
  %327 = load i32, i32* %A, align 4
  %328 = load i32, i32* %B, align 4
  %xor348 = xor i32 %327, %328
  %and349 = and i32 %326, %xor348
  %xor350 = xor i32 %325, %and349
  %arrayidx351 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %329 = load i32, i32* %arrayidx351, align 4
  %add352 = add i32 %xor350, %329
  %add353 = add i32 %add352, -1019803690
  %330 = load i32, i32* %D, align 4
  %add354 = add i32 %330, %add353
  store i32 %add354, i32* %D, align 4
  %331 = load i32, i32* %D, align 4
  %shl355 = shl i32 %331, 9
  %332 = load i32, i32* %D, align 4
  %shr356 = lshr i32 %332, 23
  %or357 = or i32 %shl355, %shr356
  store i32 %or357, i32* %D, align 4
  %333 = load i32, i32* %A, align 4
  %334 = load i32, i32* %D, align 4
  %add358 = add i32 %334, %333
  store i32 %add358, i32* %D, align 4
  br label %do.end.359

do.end.359:                                       ; preds = %do.body.347
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.359
  %335 = load i32, i32* %A, align 4
  %336 = load i32, i32* %B, align 4
  %337 = load i32, i32* %D, align 4
  %338 = load i32, i32* %A, align 4
  %xor361 = xor i32 %337, %338
  %and362 = and i32 %336, %xor361
  %xor363 = xor i32 %335, %and362
  %arrayidx364 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %339 = load i32, i32* %arrayidx364, align 4
  %add365 = add i32 %xor363, %339
  %add366 = add i32 %add365, -187363961
  %340 = load i32, i32* %C, align 4
  %add367 = add i32 %340, %add366
  store i32 %add367, i32* %C, align 4
  %341 = load i32, i32* %C, align 4
  %shl368 = shl i32 %341, 14
  %342 = load i32, i32* %C, align 4
  %shr369 = lshr i32 %342, 18
  %or370 = or i32 %shl368, %shr369
  store i32 %or370, i32* %C, align 4
  %343 = load i32, i32* %D, align 4
  %344 = load i32, i32* %C, align 4
  %add371 = add i32 %344, %343
  store i32 %add371, i32* %C, align 4
  br label %do.end.372

do.end.372:                                       ; preds = %do.body.360
  br label %do.body.373

do.body.373:                                      ; preds = %do.end.372
  %345 = load i32, i32* %D, align 4
  %346 = load i32, i32* %A, align 4
  %347 = load i32, i32* %C, align 4
  %348 = load i32, i32* %D, align 4
  %xor374 = xor i32 %347, %348
  %and375 = and i32 %346, %xor374
  %xor376 = xor i32 %345, %and375
  %arrayidx377 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %349 = load i32, i32* %arrayidx377, align 4
  %add378 = add i32 %xor376, %349
  %add379 = add i32 %add378, 1163531501
  %350 = load i32, i32* %B, align 4
  %add380 = add i32 %350, %add379
  store i32 %add380, i32* %B, align 4
  %351 = load i32, i32* %B, align 4
  %shl381 = shl i32 %351, 20
  %352 = load i32, i32* %B, align 4
  %shr382 = lshr i32 %352, 12
  %or383 = or i32 %shl381, %shr382
  store i32 %or383, i32* %B, align 4
  %353 = load i32, i32* %C, align 4
  %354 = load i32, i32* %B, align 4
  %add384 = add i32 %354, %353
  store i32 %add384, i32* %B, align 4
  br label %do.end.385

do.end.385:                                       ; preds = %do.body.373
  br label %do.body.386

do.body.386:                                      ; preds = %do.end.385
  %355 = load i32, i32* %C, align 4
  %356 = load i32, i32* %D, align 4
  %357 = load i32, i32* %B, align 4
  %358 = load i32, i32* %C, align 4
  %xor387 = xor i32 %357, %358
  %and388 = and i32 %356, %xor387
  %xor389 = xor i32 %355, %and388
  %arrayidx390 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %359 = load i32, i32* %arrayidx390, align 4
  %add391 = add i32 %xor389, %359
  %add392 = add i32 %add391, -1444681467
  %360 = load i32, i32* %A, align 4
  %add393 = add i32 %360, %add392
  store i32 %add393, i32* %A, align 4
  %361 = load i32, i32* %A, align 4
  %shl394 = shl i32 %361, 5
  %362 = load i32, i32* %A, align 4
  %shr395 = lshr i32 %362, 27
  %or396 = or i32 %shl394, %shr395
  store i32 %or396, i32* %A, align 4
  %363 = load i32, i32* %B, align 4
  %364 = load i32, i32* %A, align 4
  %add397 = add i32 %364, %363
  store i32 %add397, i32* %A, align 4
  br label %do.end.398

do.end.398:                                       ; preds = %do.body.386
  br label %do.body.399

do.body.399:                                      ; preds = %do.end.398
  %365 = load i32, i32* %B, align 4
  %366 = load i32, i32* %C, align 4
  %367 = load i32, i32* %A, align 4
  %368 = load i32, i32* %B, align 4
  %xor400 = xor i32 %367, %368
  %and401 = and i32 %366, %xor400
  %xor402 = xor i32 %365, %and401
  %arrayidx403 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %369 = load i32, i32* %arrayidx403, align 4
  %add404 = add i32 %xor402, %369
  %add405 = add i32 %add404, -51403784
  %370 = load i32, i32* %D, align 4
  %add406 = add i32 %370, %add405
  store i32 %add406, i32* %D, align 4
  %371 = load i32, i32* %D, align 4
  %shl407 = shl i32 %371, 9
  %372 = load i32, i32* %D, align 4
  %shr408 = lshr i32 %372, 23
  %or409 = or i32 %shl407, %shr408
  store i32 %or409, i32* %D, align 4
  %373 = load i32, i32* %A, align 4
  %374 = load i32, i32* %D, align 4
  %add410 = add i32 %374, %373
  store i32 %add410, i32* %D, align 4
  br label %do.end.411

do.end.411:                                       ; preds = %do.body.399
  br label %do.body.412

do.body.412:                                      ; preds = %do.end.411
  %375 = load i32, i32* %A, align 4
  %376 = load i32, i32* %B, align 4
  %377 = load i32, i32* %D, align 4
  %378 = load i32, i32* %A, align 4
  %xor413 = xor i32 %377, %378
  %and414 = and i32 %376, %xor413
  %xor415 = xor i32 %375, %and414
  %arrayidx416 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %379 = load i32, i32* %arrayidx416, align 4
  %add417 = add i32 %xor415, %379
  %add418 = add i32 %add417, 1735328473
  %380 = load i32, i32* %C, align 4
  %add419 = add i32 %380, %add418
  store i32 %add419, i32* %C, align 4
  %381 = load i32, i32* %C, align 4
  %shl420 = shl i32 %381, 14
  %382 = load i32, i32* %C, align 4
  %shr421 = lshr i32 %382, 18
  %or422 = or i32 %shl420, %shr421
  store i32 %or422, i32* %C, align 4
  %383 = load i32, i32* %D, align 4
  %384 = load i32, i32* %C, align 4
  %add423 = add i32 %384, %383
  store i32 %add423, i32* %C, align 4
  br label %do.end.424

do.end.424:                                       ; preds = %do.body.412
  br label %do.body.425

do.body.425:                                      ; preds = %do.end.424
  %385 = load i32, i32* %D, align 4
  %386 = load i32, i32* %A, align 4
  %387 = load i32, i32* %C, align 4
  %388 = load i32, i32* %D, align 4
  %xor426 = xor i32 %387, %388
  %and427 = and i32 %386, %xor426
  %xor428 = xor i32 %385, %and427
  %arrayidx429 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %389 = load i32, i32* %arrayidx429, align 4
  %add430 = add i32 %xor428, %389
  %add431 = add i32 %add430, -1926607734
  %390 = load i32, i32* %B, align 4
  %add432 = add i32 %390, %add431
  store i32 %add432, i32* %B, align 4
  %391 = load i32, i32* %B, align 4
  %shl433 = shl i32 %391, 20
  %392 = load i32, i32* %B, align 4
  %shr434 = lshr i32 %392, 12
  %or435 = or i32 %shl433, %shr434
  store i32 %or435, i32* %B, align 4
  %393 = load i32, i32* %C, align 4
  %394 = load i32, i32* %B, align 4
  %add436 = add i32 %394, %393
  store i32 %add436, i32* %B, align 4
  br label %do.end.437

do.end.437:                                       ; preds = %do.body.425
  br label %do.body.438

do.body.438:                                      ; preds = %do.end.437
  %395 = load i32, i32* %B, align 4
  %396 = load i32, i32* %C, align 4
  %xor439 = xor i32 %395, %396
  %397 = load i32, i32* %D, align 4
  %xor440 = xor i32 %xor439, %397
  %arrayidx441 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %398 = load i32, i32* %arrayidx441, align 4
  %add442 = add i32 %xor440, %398
  %add443 = add i32 %add442, -378558
  %399 = load i32, i32* %A, align 4
  %add444 = add i32 %399, %add443
  store i32 %add444, i32* %A, align 4
  %400 = load i32, i32* %A, align 4
  %shl445 = shl i32 %400, 4
  %401 = load i32, i32* %A, align 4
  %shr446 = lshr i32 %401, 28
  %or447 = or i32 %shl445, %shr446
  store i32 %or447, i32* %A, align 4
  %402 = load i32, i32* %B, align 4
  %403 = load i32, i32* %A, align 4
  %add448 = add i32 %403, %402
  store i32 %add448, i32* %A, align 4
  br label %do.end.449

do.end.449:                                       ; preds = %do.body.438
  br label %do.body.450

do.body.450:                                      ; preds = %do.end.449
  %404 = load i32, i32* %A, align 4
  %405 = load i32, i32* %B, align 4
  %xor451 = xor i32 %404, %405
  %406 = load i32, i32* %C, align 4
  %xor452 = xor i32 %xor451, %406
  %arrayidx453 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %407 = load i32, i32* %arrayidx453, align 4
  %add454 = add i32 %xor452, %407
  %add455 = add i32 %add454, -2022574463
  %408 = load i32, i32* %D, align 4
  %add456 = add i32 %408, %add455
  store i32 %add456, i32* %D, align 4
  %409 = load i32, i32* %D, align 4
  %shl457 = shl i32 %409, 11
  %410 = load i32, i32* %D, align 4
  %shr458 = lshr i32 %410, 21
  %or459 = or i32 %shl457, %shr458
  store i32 %or459, i32* %D, align 4
  %411 = load i32, i32* %A, align 4
  %412 = load i32, i32* %D, align 4
  %add460 = add i32 %412, %411
  store i32 %add460, i32* %D, align 4
  br label %do.end.461

do.end.461:                                       ; preds = %do.body.450
  br label %do.body.462

do.body.462:                                      ; preds = %do.end.461
  %413 = load i32, i32* %D, align 4
  %414 = load i32, i32* %A, align 4
  %xor463 = xor i32 %413, %414
  %415 = load i32, i32* %B, align 4
  %xor464 = xor i32 %xor463, %415
  %arrayidx465 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %416 = load i32, i32* %arrayidx465, align 4
  %add466 = add i32 %xor464, %416
  %add467 = add i32 %add466, 1839030562
  %417 = load i32, i32* %C, align 4
  %add468 = add i32 %417, %add467
  store i32 %add468, i32* %C, align 4
  %418 = load i32, i32* %C, align 4
  %shl469 = shl i32 %418, 16
  %419 = load i32, i32* %C, align 4
  %shr470 = lshr i32 %419, 16
  %or471 = or i32 %shl469, %shr470
  store i32 %or471, i32* %C, align 4
  %420 = load i32, i32* %D, align 4
  %421 = load i32, i32* %C, align 4
  %add472 = add i32 %421, %420
  store i32 %add472, i32* %C, align 4
  br label %do.end.473

do.end.473:                                       ; preds = %do.body.462
  br label %do.body.474

do.body.474:                                      ; preds = %do.end.473
  %422 = load i32, i32* %C, align 4
  %423 = load i32, i32* %D, align 4
  %xor475 = xor i32 %422, %423
  %424 = load i32, i32* %A, align 4
  %xor476 = xor i32 %xor475, %424
  %arrayidx477 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %425 = load i32, i32* %arrayidx477, align 4
  %add478 = add i32 %xor476, %425
  %add479 = add i32 %add478, -35309556
  %426 = load i32, i32* %B, align 4
  %add480 = add i32 %426, %add479
  store i32 %add480, i32* %B, align 4
  %427 = load i32, i32* %B, align 4
  %shl481 = shl i32 %427, 23
  %428 = load i32, i32* %B, align 4
  %shr482 = lshr i32 %428, 9
  %or483 = or i32 %shl481, %shr482
  store i32 %or483, i32* %B, align 4
  %429 = load i32, i32* %C, align 4
  %430 = load i32, i32* %B, align 4
  %add484 = add i32 %430, %429
  store i32 %add484, i32* %B, align 4
  br label %do.end.485

do.end.485:                                       ; preds = %do.body.474
  br label %do.body.486

do.body.486:                                      ; preds = %do.end.485
  %431 = load i32, i32* %B, align 4
  %432 = load i32, i32* %C, align 4
  %xor487 = xor i32 %431, %432
  %433 = load i32, i32* %D, align 4
  %xor488 = xor i32 %xor487, %433
  %arrayidx489 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %434 = load i32, i32* %arrayidx489, align 4
  %add490 = add i32 %xor488, %434
  %add491 = add i32 %add490, -1530992060
  %435 = load i32, i32* %A, align 4
  %add492 = add i32 %435, %add491
  store i32 %add492, i32* %A, align 4
  %436 = load i32, i32* %A, align 4
  %shl493 = shl i32 %436, 4
  %437 = load i32, i32* %A, align 4
  %shr494 = lshr i32 %437, 28
  %or495 = or i32 %shl493, %shr494
  store i32 %or495, i32* %A, align 4
  %438 = load i32, i32* %B, align 4
  %439 = load i32, i32* %A, align 4
  %add496 = add i32 %439, %438
  store i32 %add496, i32* %A, align 4
  br label %do.end.497

do.end.497:                                       ; preds = %do.body.486
  br label %do.body.498

do.body.498:                                      ; preds = %do.end.497
  %440 = load i32, i32* %A, align 4
  %441 = load i32, i32* %B, align 4
  %xor499 = xor i32 %440, %441
  %442 = load i32, i32* %C, align 4
  %xor500 = xor i32 %xor499, %442
  %arrayidx501 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %443 = load i32, i32* %arrayidx501, align 4
  %add502 = add i32 %xor500, %443
  %add503 = add i32 %add502, 1272893353
  %444 = load i32, i32* %D, align 4
  %add504 = add i32 %444, %add503
  store i32 %add504, i32* %D, align 4
  %445 = load i32, i32* %D, align 4
  %shl505 = shl i32 %445, 11
  %446 = load i32, i32* %D, align 4
  %shr506 = lshr i32 %446, 21
  %or507 = or i32 %shl505, %shr506
  store i32 %or507, i32* %D, align 4
  %447 = load i32, i32* %A, align 4
  %448 = load i32, i32* %D, align 4
  %add508 = add i32 %448, %447
  store i32 %add508, i32* %D, align 4
  br label %do.end.509

do.end.509:                                       ; preds = %do.body.498
  br label %do.body.510

do.body.510:                                      ; preds = %do.end.509
  %449 = load i32, i32* %D, align 4
  %450 = load i32, i32* %A, align 4
  %xor511 = xor i32 %449, %450
  %451 = load i32, i32* %B, align 4
  %xor512 = xor i32 %xor511, %451
  %arrayidx513 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %452 = load i32, i32* %arrayidx513, align 4
  %add514 = add i32 %xor512, %452
  %add515 = add i32 %add514, -155497632
  %453 = load i32, i32* %C, align 4
  %add516 = add i32 %453, %add515
  store i32 %add516, i32* %C, align 4
  %454 = load i32, i32* %C, align 4
  %shl517 = shl i32 %454, 16
  %455 = load i32, i32* %C, align 4
  %shr518 = lshr i32 %455, 16
  %or519 = or i32 %shl517, %shr518
  store i32 %or519, i32* %C, align 4
  %456 = load i32, i32* %D, align 4
  %457 = load i32, i32* %C, align 4
  %add520 = add i32 %457, %456
  store i32 %add520, i32* %C, align 4
  br label %do.end.521

do.end.521:                                       ; preds = %do.body.510
  br label %do.body.522

do.body.522:                                      ; preds = %do.end.521
  %458 = load i32, i32* %C, align 4
  %459 = load i32, i32* %D, align 4
  %xor523 = xor i32 %458, %459
  %460 = load i32, i32* %A, align 4
  %xor524 = xor i32 %xor523, %460
  %arrayidx525 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %461 = load i32, i32* %arrayidx525, align 4
  %add526 = add i32 %xor524, %461
  %add527 = add i32 %add526, -1094730640
  %462 = load i32, i32* %B, align 4
  %add528 = add i32 %462, %add527
  store i32 %add528, i32* %B, align 4
  %463 = load i32, i32* %B, align 4
  %shl529 = shl i32 %463, 23
  %464 = load i32, i32* %B, align 4
  %shr530 = lshr i32 %464, 9
  %or531 = or i32 %shl529, %shr530
  store i32 %or531, i32* %B, align 4
  %465 = load i32, i32* %C, align 4
  %466 = load i32, i32* %B, align 4
  %add532 = add i32 %466, %465
  store i32 %add532, i32* %B, align 4
  br label %do.end.533

do.end.533:                                       ; preds = %do.body.522
  br label %do.body.534

do.body.534:                                      ; preds = %do.end.533
  %467 = load i32, i32* %B, align 4
  %468 = load i32, i32* %C, align 4
  %xor535 = xor i32 %467, %468
  %469 = load i32, i32* %D, align 4
  %xor536 = xor i32 %xor535, %469
  %arrayidx537 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %470 = load i32, i32* %arrayidx537, align 4
  %add538 = add i32 %xor536, %470
  %add539 = add i32 %add538, 681279174
  %471 = load i32, i32* %A, align 4
  %add540 = add i32 %471, %add539
  store i32 %add540, i32* %A, align 4
  %472 = load i32, i32* %A, align 4
  %shl541 = shl i32 %472, 4
  %473 = load i32, i32* %A, align 4
  %shr542 = lshr i32 %473, 28
  %or543 = or i32 %shl541, %shr542
  store i32 %or543, i32* %A, align 4
  %474 = load i32, i32* %B, align 4
  %475 = load i32, i32* %A, align 4
  %add544 = add i32 %475, %474
  store i32 %add544, i32* %A, align 4
  br label %do.end.545

do.end.545:                                       ; preds = %do.body.534
  br label %do.body.546

do.body.546:                                      ; preds = %do.end.545
  %476 = load i32, i32* %A, align 4
  %477 = load i32, i32* %B, align 4
  %xor547 = xor i32 %476, %477
  %478 = load i32, i32* %C, align 4
  %xor548 = xor i32 %xor547, %478
  %arrayidx549 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %479 = load i32, i32* %arrayidx549, align 4
  %add550 = add i32 %xor548, %479
  %add551 = add i32 %add550, -358537222
  %480 = load i32, i32* %D, align 4
  %add552 = add i32 %480, %add551
  store i32 %add552, i32* %D, align 4
  %481 = load i32, i32* %D, align 4
  %shl553 = shl i32 %481, 11
  %482 = load i32, i32* %D, align 4
  %shr554 = lshr i32 %482, 21
  %or555 = or i32 %shl553, %shr554
  store i32 %or555, i32* %D, align 4
  %483 = load i32, i32* %A, align 4
  %484 = load i32, i32* %D, align 4
  %add556 = add i32 %484, %483
  store i32 %add556, i32* %D, align 4
  br label %do.end.557

do.end.557:                                       ; preds = %do.body.546
  br label %do.body.558

do.body.558:                                      ; preds = %do.end.557
  %485 = load i32, i32* %D, align 4
  %486 = load i32, i32* %A, align 4
  %xor559 = xor i32 %485, %486
  %487 = load i32, i32* %B, align 4
  %xor560 = xor i32 %xor559, %487
  %arrayidx561 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %488 = load i32, i32* %arrayidx561, align 4
  %add562 = add i32 %xor560, %488
  %add563 = add i32 %add562, -722521979
  %489 = load i32, i32* %C, align 4
  %add564 = add i32 %489, %add563
  store i32 %add564, i32* %C, align 4
  %490 = load i32, i32* %C, align 4
  %shl565 = shl i32 %490, 16
  %491 = load i32, i32* %C, align 4
  %shr566 = lshr i32 %491, 16
  %or567 = or i32 %shl565, %shr566
  store i32 %or567, i32* %C, align 4
  %492 = load i32, i32* %D, align 4
  %493 = load i32, i32* %C, align 4
  %add568 = add i32 %493, %492
  store i32 %add568, i32* %C, align 4
  br label %do.end.569

do.end.569:                                       ; preds = %do.body.558
  br label %do.body.570

do.body.570:                                      ; preds = %do.end.569
  %494 = load i32, i32* %C, align 4
  %495 = load i32, i32* %D, align 4
  %xor571 = xor i32 %494, %495
  %496 = load i32, i32* %A, align 4
  %xor572 = xor i32 %xor571, %496
  %arrayidx573 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %497 = load i32, i32* %arrayidx573, align 4
  %add574 = add i32 %xor572, %497
  %add575 = add i32 %add574, 76029189
  %498 = load i32, i32* %B, align 4
  %add576 = add i32 %498, %add575
  store i32 %add576, i32* %B, align 4
  %499 = load i32, i32* %B, align 4
  %shl577 = shl i32 %499, 23
  %500 = load i32, i32* %B, align 4
  %shr578 = lshr i32 %500, 9
  %or579 = or i32 %shl577, %shr578
  store i32 %or579, i32* %B, align 4
  %501 = load i32, i32* %C, align 4
  %502 = load i32, i32* %B, align 4
  %add580 = add i32 %502, %501
  store i32 %add580, i32* %B, align 4
  br label %do.end.581

do.end.581:                                       ; preds = %do.body.570
  br label %do.body.582

do.body.582:                                      ; preds = %do.end.581
  %503 = load i32, i32* %B, align 4
  %504 = load i32, i32* %C, align 4
  %xor583 = xor i32 %503, %504
  %505 = load i32, i32* %D, align 4
  %xor584 = xor i32 %xor583, %505
  %arrayidx585 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %506 = load i32, i32* %arrayidx585, align 4
  %add586 = add i32 %xor584, %506
  %add587 = add i32 %add586, -640364487
  %507 = load i32, i32* %A, align 4
  %add588 = add i32 %507, %add587
  store i32 %add588, i32* %A, align 4
  %508 = load i32, i32* %A, align 4
  %shl589 = shl i32 %508, 4
  %509 = load i32, i32* %A, align 4
  %shr590 = lshr i32 %509, 28
  %or591 = or i32 %shl589, %shr590
  store i32 %or591, i32* %A, align 4
  %510 = load i32, i32* %B, align 4
  %511 = load i32, i32* %A, align 4
  %add592 = add i32 %511, %510
  store i32 %add592, i32* %A, align 4
  br label %do.end.593

do.end.593:                                       ; preds = %do.body.582
  br label %do.body.594

do.body.594:                                      ; preds = %do.end.593
  %512 = load i32, i32* %A, align 4
  %513 = load i32, i32* %B, align 4
  %xor595 = xor i32 %512, %513
  %514 = load i32, i32* %C, align 4
  %xor596 = xor i32 %xor595, %514
  %arrayidx597 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %515 = load i32, i32* %arrayidx597, align 4
  %add598 = add i32 %xor596, %515
  %add599 = add i32 %add598, -421815835
  %516 = load i32, i32* %D, align 4
  %add600 = add i32 %516, %add599
  store i32 %add600, i32* %D, align 4
  %517 = load i32, i32* %D, align 4
  %shl601 = shl i32 %517, 11
  %518 = load i32, i32* %D, align 4
  %shr602 = lshr i32 %518, 21
  %or603 = or i32 %shl601, %shr602
  store i32 %or603, i32* %D, align 4
  %519 = load i32, i32* %A, align 4
  %520 = load i32, i32* %D, align 4
  %add604 = add i32 %520, %519
  store i32 %add604, i32* %D, align 4
  br label %do.end.605

do.end.605:                                       ; preds = %do.body.594
  br label %do.body.606

do.body.606:                                      ; preds = %do.end.605
  %521 = load i32, i32* %D, align 4
  %522 = load i32, i32* %A, align 4
  %xor607 = xor i32 %521, %522
  %523 = load i32, i32* %B, align 4
  %xor608 = xor i32 %xor607, %523
  %arrayidx609 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %524 = load i32, i32* %arrayidx609, align 4
  %add610 = add i32 %xor608, %524
  %add611 = add i32 %add610, 530742520
  %525 = load i32, i32* %C, align 4
  %add612 = add i32 %525, %add611
  store i32 %add612, i32* %C, align 4
  %526 = load i32, i32* %C, align 4
  %shl613 = shl i32 %526, 16
  %527 = load i32, i32* %C, align 4
  %shr614 = lshr i32 %527, 16
  %or615 = or i32 %shl613, %shr614
  store i32 %or615, i32* %C, align 4
  %528 = load i32, i32* %D, align 4
  %529 = load i32, i32* %C, align 4
  %add616 = add i32 %529, %528
  store i32 %add616, i32* %C, align 4
  br label %do.end.617

do.end.617:                                       ; preds = %do.body.606
  br label %do.body.618

do.body.618:                                      ; preds = %do.end.617
  %530 = load i32, i32* %C, align 4
  %531 = load i32, i32* %D, align 4
  %xor619 = xor i32 %530, %531
  %532 = load i32, i32* %A, align 4
  %xor620 = xor i32 %xor619, %532
  %arrayidx621 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %533 = load i32, i32* %arrayidx621, align 4
  %add622 = add i32 %xor620, %533
  %add623 = add i32 %add622, -995338651
  %534 = load i32, i32* %B, align 4
  %add624 = add i32 %534, %add623
  store i32 %add624, i32* %B, align 4
  %535 = load i32, i32* %B, align 4
  %shl625 = shl i32 %535, 23
  %536 = load i32, i32* %B, align 4
  %shr626 = lshr i32 %536, 9
  %or627 = or i32 %shl625, %shr626
  store i32 %or627, i32* %B, align 4
  %537 = load i32, i32* %C, align 4
  %538 = load i32, i32* %B, align 4
  %add628 = add i32 %538, %537
  store i32 %add628, i32* %B, align 4
  br label %do.end.629

do.end.629:                                       ; preds = %do.body.618
  br label %do.body.630

do.body.630:                                      ; preds = %do.end.629
  %539 = load i32, i32* %C, align 4
  %540 = load i32, i32* %B, align 4
  %541 = load i32, i32* %D, align 4
  %neg = xor i32 %541, -1
  %or631 = or i32 %540, %neg
  %xor632 = xor i32 %539, %or631
  %arrayidx633 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %542 = load i32, i32* %arrayidx633, align 4
  %add634 = add i32 %xor632, %542
  %add635 = add i32 %add634, -198630844
  %543 = load i32, i32* %A, align 4
  %add636 = add i32 %543, %add635
  store i32 %add636, i32* %A, align 4
  %544 = load i32, i32* %A, align 4
  %shl637 = shl i32 %544, 6
  %545 = load i32, i32* %A, align 4
  %shr638 = lshr i32 %545, 26
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %A, align 4
  %546 = load i32, i32* %B, align 4
  %547 = load i32, i32* %A, align 4
  %add640 = add i32 %547, %546
  store i32 %add640, i32* %A, align 4
  br label %do.end.641

do.end.641:                                       ; preds = %do.body.630
  br label %do.body.642

do.body.642:                                      ; preds = %do.end.641
  %548 = load i32, i32* %B, align 4
  %549 = load i32, i32* %A, align 4
  %550 = load i32, i32* %C, align 4
  %neg643 = xor i32 %550, -1
  %or644 = or i32 %549, %neg643
  %xor645 = xor i32 %548, %or644
  %arrayidx646 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %551 = load i32, i32* %arrayidx646, align 4
  %add647 = add i32 %xor645, %551
  %add648 = add i32 %add647, 1126891415
  %552 = load i32, i32* %D, align 4
  %add649 = add i32 %552, %add648
  store i32 %add649, i32* %D, align 4
  %553 = load i32, i32* %D, align 4
  %shl650 = shl i32 %553, 10
  %554 = load i32, i32* %D, align 4
  %shr651 = lshr i32 %554, 22
  %or652 = or i32 %shl650, %shr651
  store i32 %or652, i32* %D, align 4
  %555 = load i32, i32* %A, align 4
  %556 = load i32, i32* %D, align 4
  %add653 = add i32 %556, %555
  store i32 %add653, i32* %D, align 4
  br label %do.end.654

do.end.654:                                       ; preds = %do.body.642
  br label %do.body.655

do.body.655:                                      ; preds = %do.end.654
  %557 = load i32, i32* %A, align 4
  %558 = load i32, i32* %D, align 4
  %559 = load i32, i32* %B, align 4
  %neg656 = xor i32 %559, -1
  %or657 = or i32 %558, %neg656
  %xor658 = xor i32 %557, %or657
  %arrayidx659 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %560 = load i32, i32* %arrayidx659, align 4
  %add660 = add i32 %xor658, %560
  %add661 = add i32 %add660, -1416354905
  %561 = load i32, i32* %C, align 4
  %add662 = add i32 %561, %add661
  store i32 %add662, i32* %C, align 4
  %562 = load i32, i32* %C, align 4
  %shl663 = shl i32 %562, 15
  %563 = load i32, i32* %C, align 4
  %shr664 = lshr i32 %563, 17
  %or665 = or i32 %shl663, %shr664
  store i32 %or665, i32* %C, align 4
  %564 = load i32, i32* %D, align 4
  %565 = load i32, i32* %C, align 4
  %add666 = add i32 %565, %564
  store i32 %add666, i32* %C, align 4
  br label %do.end.667

do.end.667:                                       ; preds = %do.body.655
  br label %do.body.668

do.body.668:                                      ; preds = %do.end.667
  %566 = load i32, i32* %D, align 4
  %567 = load i32, i32* %C, align 4
  %568 = load i32, i32* %A, align 4
  %neg669 = xor i32 %568, -1
  %or670 = or i32 %567, %neg669
  %xor671 = xor i32 %566, %or670
  %arrayidx672 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %569 = load i32, i32* %arrayidx672, align 4
  %add673 = add i32 %xor671, %569
  %add674 = add i32 %add673, -57434055
  %570 = load i32, i32* %B, align 4
  %add675 = add i32 %570, %add674
  store i32 %add675, i32* %B, align 4
  %571 = load i32, i32* %B, align 4
  %shl676 = shl i32 %571, 21
  %572 = load i32, i32* %B, align 4
  %shr677 = lshr i32 %572, 11
  %or678 = or i32 %shl676, %shr677
  store i32 %or678, i32* %B, align 4
  %573 = load i32, i32* %C, align 4
  %574 = load i32, i32* %B, align 4
  %add679 = add i32 %574, %573
  store i32 %add679, i32* %B, align 4
  br label %do.end.680

do.end.680:                                       ; preds = %do.body.668
  br label %do.body.681

do.body.681:                                      ; preds = %do.end.680
  %575 = load i32, i32* %C, align 4
  %576 = load i32, i32* %B, align 4
  %577 = load i32, i32* %D, align 4
  %neg682 = xor i32 %577, -1
  %or683 = or i32 %576, %neg682
  %xor684 = xor i32 %575, %or683
  %arrayidx685 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %578 = load i32, i32* %arrayidx685, align 4
  %add686 = add i32 %xor684, %578
  %add687 = add i32 %add686, 1700485571
  %579 = load i32, i32* %A, align 4
  %add688 = add i32 %579, %add687
  store i32 %add688, i32* %A, align 4
  %580 = load i32, i32* %A, align 4
  %shl689 = shl i32 %580, 6
  %581 = load i32, i32* %A, align 4
  %shr690 = lshr i32 %581, 26
  %or691 = or i32 %shl689, %shr690
  store i32 %or691, i32* %A, align 4
  %582 = load i32, i32* %B, align 4
  %583 = load i32, i32* %A, align 4
  %add692 = add i32 %583, %582
  store i32 %add692, i32* %A, align 4
  br label %do.end.693

do.end.693:                                       ; preds = %do.body.681
  br label %do.body.694

do.body.694:                                      ; preds = %do.end.693
  %584 = load i32, i32* %B, align 4
  %585 = load i32, i32* %A, align 4
  %586 = load i32, i32* %C, align 4
  %neg695 = xor i32 %586, -1
  %or696 = or i32 %585, %neg695
  %xor697 = xor i32 %584, %or696
  %arrayidx698 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %587 = load i32, i32* %arrayidx698, align 4
  %add699 = add i32 %xor697, %587
  %add700 = add i32 %add699, -1894986606
  %588 = load i32, i32* %D, align 4
  %add701 = add i32 %588, %add700
  store i32 %add701, i32* %D, align 4
  %589 = load i32, i32* %D, align 4
  %shl702 = shl i32 %589, 10
  %590 = load i32, i32* %D, align 4
  %shr703 = lshr i32 %590, 22
  %or704 = or i32 %shl702, %shr703
  store i32 %or704, i32* %D, align 4
  %591 = load i32, i32* %A, align 4
  %592 = load i32, i32* %D, align 4
  %add705 = add i32 %592, %591
  store i32 %add705, i32* %D, align 4
  br label %do.end.706

do.end.706:                                       ; preds = %do.body.694
  br label %do.body.707

do.body.707:                                      ; preds = %do.end.706
  %593 = load i32, i32* %A, align 4
  %594 = load i32, i32* %D, align 4
  %595 = load i32, i32* %B, align 4
  %neg708 = xor i32 %595, -1
  %or709 = or i32 %594, %neg708
  %xor710 = xor i32 %593, %or709
  %arrayidx711 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %596 = load i32, i32* %arrayidx711, align 4
  %add712 = add i32 %xor710, %596
  %add713 = add i32 %add712, -1051523
  %597 = load i32, i32* %C, align 4
  %add714 = add i32 %597, %add713
  store i32 %add714, i32* %C, align 4
  %598 = load i32, i32* %C, align 4
  %shl715 = shl i32 %598, 15
  %599 = load i32, i32* %C, align 4
  %shr716 = lshr i32 %599, 17
  %or717 = or i32 %shl715, %shr716
  store i32 %or717, i32* %C, align 4
  %600 = load i32, i32* %D, align 4
  %601 = load i32, i32* %C, align 4
  %add718 = add i32 %601, %600
  store i32 %add718, i32* %C, align 4
  br label %do.end.719

do.end.719:                                       ; preds = %do.body.707
  br label %do.body.720

do.body.720:                                      ; preds = %do.end.719
  %602 = load i32, i32* %D, align 4
  %603 = load i32, i32* %C, align 4
  %604 = load i32, i32* %A, align 4
  %neg721 = xor i32 %604, -1
  %or722 = or i32 %603, %neg721
  %xor723 = xor i32 %602, %or722
  %arrayidx724 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %605 = load i32, i32* %arrayidx724, align 4
  %add725 = add i32 %xor723, %605
  %add726 = add i32 %add725, -2054922799
  %606 = load i32, i32* %B, align 4
  %add727 = add i32 %606, %add726
  store i32 %add727, i32* %B, align 4
  %607 = load i32, i32* %B, align 4
  %shl728 = shl i32 %607, 21
  %608 = load i32, i32* %B, align 4
  %shr729 = lshr i32 %608, 11
  %or730 = or i32 %shl728, %shr729
  store i32 %or730, i32* %B, align 4
  %609 = load i32, i32* %C, align 4
  %610 = load i32, i32* %B, align 4
  %add731 = add i32 %610, %609
  store i32 %add731, i32* %B, align 4
  br label %do.end.732

do.end.732:                                       ; preds = %do.body.720
  br label %do.body.733

do.body.733:                                      ; preds = %do.end.732
  %611 = load i32, i32* %C, align 4
  %612 = load i32, i32* %B, align 4
  %613 = load i32, i32* %D, align 4
  %neg734 = xor i32 %613, -1
  %or735 = or i32 %612, %neg734
  %xor736 = xor i32 %611, %or735
  %arrayidx737 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %614 = load i32, i32* %arrayidx737, align 4
  %add738 = add i32 %xor736, %614
  %add739 = add i32 %add738, 1873313359
  %615 = load i32, i32* %A, align 4
  %add740 = add i32 %615, %add739
  store i32 %add740, i32* %A, align 4
  %616 = load i32, i32* %A, align 4
  %shl741 = shl i32 %616, 6
  %617 = load i32, i32* %A, align 4
  %shr742 = lshr i32 %617, 26
  %or743 = or i32 %shl741, %shr742
  store i32 %or743, i32* %A, align 4
  %618 = load i32, i32* %B, align 4
  %619 = load i32, i32* %A, align 4
  %add744 = add i32 %619, %618
  store i32 %add744, i32* %A, align 4
  br label %do.end.745

do.end.745:                                       ; preds = %do.body.733
  br label %do.body.746

do.body.746:                                      ; preds = %do.end.745
  %620 = load i32, i32* %B, align 4
  %621 = load i32, i32* %A, align 4
  %622 = load i32, i32* %C, align 4
  %neg747 = xor i32 %622, -1
  %or748 = or i32 %621, %neg747
  %xor749 = xor i32 %620, %or748
  %arrayidx750 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %623 = load i32, i32* %arrayidx750, align 4
  %add751 = add i32 %xor749, %623
  %add752 = add i32 %add751, -30611744
  %624 = load i32, i32* %D, align 4
  %add753 = add i32 %624, %add752
  store i32 %add753, i32* %D, align 4
  %625 = load i32, i32* %D, align 4
  %shl754 = shl i32 %625, 10
  %626 = load i32, i32* %D, align 4
  %shr755 = lshr i32 %626, 22
  %or756 = or i32 %shl754, %shr755
  store i32 %or756, i32* %D, align 4
  %627 = load i32, i32* %A, align 4
  %628 = load i32, i32* %D, align 4
  %add757 = add i32 %628, %627
  store i32 %add757, i32* %D, align 4
  br label %do.end.758

do.end.758:                                       ; preds = %do.body.746
  br label %do.body.759

do.body.759:                                      ; preds = %do.end.758
  %629 = load i32, i32* %A, align 4
  %630 = load i32, i32* %D, align 4
  %631 = load i32, i32* %B, align 4
  %neg760 = xor i32 %631, -1
  %or761 = or i32 %630, %neg760
  %xor762 = xor i32 %629, %or761
  %arrayidx763 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %632 = load i32, i32* %arrayidx763, align 4
  %add764 = add i32 %xor762, %632
  %add765 = add i32 %add764, -1560198380
  %633 = load i32, i32* %C, align 4
  %add766 = add i32 %633, %add765
  store i32 %add766, i32* %C, align 4
  %634 = load i32, i32* %C, align 4
  %shl767 = shl i32 %634, 15
  %635 = load i32, i32* %C, align 4
  %shr768 = lshr i32 %635, 17
  %or769 = or i32 %shl767, %shr768
  store i32 %or769, i32* %C, align 4
  %636 = load i32, i32* %D, align 4
  %637 = load i32, i32* %C, align 4
  %add770 = add i32 %637, %636
  store i32 %add770, i32* %C, align 4
  br label %do.end.771

do.end.771:                                       ; preds = %do.body.759
  br label %do.body.772

do.body.772:                                      ; preds = %do.end.771
  %638 = load i32, i32* %D, align 4
  %639 = load i32, i32* %C, align 4
  %640 = load i32, i32* %A, align 4
  %neg773 = xor i32 %640, -1
  %or774 = or i32 %639, %neg773
  %xor775 = xor i32 %638, %or774
  %arrayidx776 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %641 = load i32, i32* %arrayidx776, align 4
  %add777 = add i32 %xor775, %641
  %add778 = add i32 %add777, 1309151649
  %642 = load i32, i32* %B, align 4
  %add779 = add i32 %642, %add778
  store i32 %add779, i32* %B, align 4
  %643 = load i32, i32* %B, align 4
  %shl780 = shl i32 %643, 21
  %644 = load i32, i32* %B, align 4
  %shr781 = lshr i32 %644, 11
  %or782 = or i32 %shl780, %shr781
  store i32 %or782, i32* %B, align 4
  %645 = load i32, i32* %C, align 4
  %646 = load i32, i32* %B, align 4
  %add783 = add i32 %646, %645
  store i32 %add783, i32* %B, align 4
  br label %do.end.784

do.end.784:                                       ; preds = %do.body.772
  br label %do.body.785

do.body.785:                                      ; preds = %do.end.784
  %647 = load i32, i32* %C, align 4
  %648 = load i32, i32* %B, align 4
  %649 = load i32, i32* %D, align 4
  %neg786 = xor i32 %649, -1
  %or787 = or i32 %648, %neg786
  %xor788 = xor i32 %647, %or787
  %arrayidx789 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %650 = load i32, i32* %arrayidx789, align 4
  %add790 = add i32 %xor788, %650
  %add791 = add i32 %add790, -145523070
  %651 = load i32, i32* %A, align 4
  %add792 = add i32 %651, %add791
  store i32 %add792, i32* %A, align 4
  %652 = load i32, i32* %A, align 4
  %shl793 = shl i32 %652, 6
  %653 = load i32, i32* %A, align 4
  %shr794 = lshr i32 %653, 26
  %or795 = or i32 %shl793, %shr794
  store i32 %or795, i32* %A, align 4
  %654 = load i32, i32* %B, align 4
  %655 = load i32, i32* %A, align 4
  %add796 = add i32 %655, %654
  store i32 %add796, i32* %A, align 4
  br label %do.end.797

do.end.797:                                       ; preds = %do.body.785
  br label %do.body.798

do.body.798:                                      ; preds = %do.end.797
  %656 = load i32, i32* %B, align 4
  %657 = load i32, i32* %A, align 4
  %658 = load i32, i32* %C, align 4
  %neg799 = xor i32 %658, -1
  %or800 = or i32 %657, %neg799
  %xor801 = xor i32 %656, %or800
  %arrayidx802 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %659 = load i32, i32* %arrayidx802, align 4
  %add803 = add i32 %xor801, %659
  %add804 = add i32 %add803, -1120210379
  %660 = load i32, i32* %D, align 4
  %add805 = add i32 %660, %add804
  store i32 %add805, i32* %D, align 4
  %661 = load i32, i32* %D, align 4
  %shl806 = shl i32 %661, 10
  %662 = load i32, i32* %D, align 4
  %shr807 = lshr i32 %662, 22
  %or808 = or i32 %shl806, %shr807
  store i32 %or808, i32* %D, align 4
  %663 = load i32, i32* %A, align 4
  %664 = load i32, i32* %D, align 4
  %add809 = add i32 %664, %663
  store i32 %add809, i32* %D, align 4
  br label %do.end.810

do.end.810:                                       ; preds = %do.body.798
  br label %do.body.811

do.body.811:                                      ; preds = %do.end.810
  %665 = load i32, i32* %A, align 4
  %666 = load i32, i32* %D, align 4
  %667 = load i32, i32* %B, align 4
  %neg812 = xor i32 %667, -1
  %or813 = or i32 %666, %neg812
  %xor814 = xor i32 %665, %or813
  %arrayidx815 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %668 = load i32, i32* %arrayidx815, align 4
  %add816 = add i32 %xor814, %668
  %add817 = add i32 %add816, 718787259
  %669 = load i32, i32* %C, align 4
  %add818 = add i32 %669, %add817
  store i32 %add818, i32* %C, align 4
  %670 = load i32, i32* %C, align 4
  %shl819 = shl i32 %670, 15
  %671 = load i32, i32* %C, align 4
  %shr820 = lshr i32 %671, 17
  %or821 = or i32 %shl819, %shr820
  store i32 %or821, i32* %C, align 4
  %672 = load i32, i32* %D, align 4
  %673 = load i32, i32* %C, align 4
  %add822 = add i32 %673, %672
  store i32 %add822, i32* %C, align 4
  br label %do.end.823

do.end.823:                                       ; preds = %do.body.811
  br label %do.body.824

do.body.824:                                      ; preds = %do.end.823
  %674 = load i32, i32* %D, align 4
  %675 = load i32, i32* %C, align 4
  %676 = load i32, i32* %A, align 4
  %neg825 = xor i32 %676, -1
  %or826 = or i32 %675, %neg825
  %xor827 = xor i32 %674, %or826
  %arrayidx828 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %677 = load i32, i32* %arrayidx828, align 4
  %add829 = add i32 %xor827, %677
  %add830 = add i32 %add829, -343485551
  %678 = load i32, i32* %B, align 4
  %add831 = add i32 %678, %add830
  store i32 %add831, i32* %B, align 4
  %679 = load i32, i32* %B, align 4
  %shl832 = shl i32 %679, 21
  %680 = load i32, i32* %B, align 4
  %shr833 = lshr i32 %680, 11
  %or834 = or i32 %shl832, %shr833
  store i32 %or834, i32* %B, align 4
  %681 = load i32, i32* %C, align 4
  %682 = load i32, i32* %B, align 4
  %add835 = add i32 %682, %681
  store i32 %add835, i32* %B, align 4
  br label %do.end.836

do.end.836:                                       ; preds = %do.body.824
  %683 = load i32, i32* %A_save, align 4
  %684 = load i32, i32* %A, align 4
  %add837 = add i32 %684, %683
  store i32 %add837, i32* %A, align 4
  %685 = load i32, i32* %B_save, align 4
  %686 = load i32, i32* %B, align 4
  %add838 = add i32 %686, %685
  store i32 %add838, i32* %B, align 4
  %687 = load i32, i32* %C_save, align 4
  %688 = load i32, i32* %C, align 4
  %add839 = add i32 %688, %687
  store i32 %add839, i32* %C, align 4
  %689 = load i32, i32* %D_save, align 4
  %690 = load i32, i32* %D, align 4
  %add840 = add i32 %690, %689
  store i32 %add840, i32* %D, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %691 = load i32, i32* %A, align 4
  %692 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A841 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %692, i32 0, i32 0
  store i32 %691, i32* %A841, align 4
  %693 = load i32, i32* %B, align 4
  %694 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B842 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %694, i32 0, i32 1
  store i32 %693, i32* %B842, align 4
  %695 = load i32, i32* %C, align 4
  %696 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C843 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %696, i32 0, i32 2
  store i32 %695, i32* %C843, align 4
  %697 = load i32, i32* %D, align 4
  %698 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D844 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %698, i32 0, i32 3
  store i32 %697, i32* %D844, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @md5_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.md5_ctx, align 4
  %buffer = alloca [4168 x i8], align 16
  %sum = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @md5_init_ctx(%struct.md5_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.6
  store i64 0, i64* %sum, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %while.body
  %arraydecay = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  %0 = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %0
  %1 = load i64, i64* %sum, align 8
  %sub = sub i64 4096, %1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %2)
  store i64 %call, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %4 = load i64, i64* %sum, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %sum, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i64, i64* %sum, align 8
  %cmp = icmp ult i64 %5, 4096
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %6 = load i64, i64* %n, align 8
  %cmp1 = icmp ne i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %8 = load i64, i64* %n, align 8
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @ferror(%struct._IO_FILE* %9) #1
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end
  %10 = load i64, i64* %n, align 8
  %cmp4 = icmp eq i64 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  call void @md5_process_block(i8* %arraydecay7, i64 4096, %struct.md5_ctx* %ctx)
  br label %while.body

while.end:                                        ; preds = %if.then.5
  %11 = load i64, i64* %sum, align 8
  %cmp8 = icmp ugt i64 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %while.end
  %arraydecay10 = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  %12 = load i64, i64* %sum, align 8
  call void @md5_process_bytes(i8* %arraydecay10, i64 %12, %struct.md5_ctx* %ctx)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %while.end
  %13 = load i8*, i8** %resblock.addr, align 8
  %call12 = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %13)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @md5_process_bytes(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 5
  %1 = load i32, i32* %buflen, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %2 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i32 0, i32 5
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
  %9 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %buffer5, i32 0, i64 %8
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %10, i64 %11, i32 1, i1 false)
  %12 = load i64, i64* %add, align 8
  %13 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %13, i32 0, i32 5
  %14 = load i32, i32* %buflen6, align 4
  %conv7 = zext i32 %14 to i64
  %add8 = add i64 %conv7, %12
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %buflen6, align 4
  %15 = load i64, i64* %left_over, align 8
  %16 = load i64, i64* %add, align 8
  %add10 = add i64 %15, %16
  %cmp11 = icmp ugt i64 %add10, 64
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %cond.end
  %17 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %17, i32 0, i32 6
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer14, i32 0, i32 0
  %18 = load i64, i64* %left_over, align 8
  %19 = load i64, i64* %add, align 8
  %add15 = add i64 %18, %19
  %and = and i64 %add15, -64
  %20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %arraydecay, i64 %and, %struct.md5_ctx* %20)
  %21 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %21, i32 0, i32 6
  %22 = bitcast [128 x i8]* %buffer16 to i8*
  %23 = load i64, i64* %left_over, align 8
  %24 = load i64, i64* %add, align 8
  %add17 = add i64 %23, %24
  %and18 = and i64 %add17, -64
  %25 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer19 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %25, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer19, i32 0, i64 %and18
  %26 = load i64, i64* %left_over, align 8
  %27 = load i64, i64* %add, align 8
  %add21 = add i64 %26, %27
  %and22 = and i64 %add21, 63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %arrayidx20, i64 %and22, i32 1, i1 false)
  %28 = load i64, i64* %left_over, align 8
  %29 = load i64, i64* %add, align 8
  %add23 = add i64 %28, %29
  %and24 = and i64 %add23, 63
  %conv25 = trunc i64 %and24 to i32
  %30 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen26 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %30, i32 0, i32 5
  store i32 %conv25, i32* %buflen26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %cond.end
  %31 = load i8*, i8** %buffer.addr, align 8
  %32 = load i64, i64* %add, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %33 = load i64, i64* %add, align 8
  %34 = load i64, i64* %len.addr, align 8
  %sub27 = sub i64 %34, %33
  store i64 %sub27, i64* %len.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  %35 = load i64, i64* %len.addr, align 8
  %cmp29 = icmp ugt i64 %35, 64
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.28
  %36 = load i8*, i8** %buffer.addr, align 8
  %37 = load i64, i64* %len.addr, align 8
  %and32 = and i64 %37, -64
  %38 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %36, i64 %and32, %struct.md5_ctx* %38)
  %39 = load i8*, i8** %buffer.addr, align 8
  %40 = load i64, i64* %len.addr, align 8
  %and33 = and i64 %40, -64
  %add.ptr34 = getelementptr inbounds i8, i8* %39, i64 %and33
  store i8* %add.ptr34, i8** %buffer.addr, align 8
  %41 = load i64, i64* %len.addr, align 8
  %and35 = and i64 %41, 63
  store i64 %and35, i64* %len.addr, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end.28
  %42 = load i64, i64* %len.addr, align 8
  %cmp37 = icmp ugt i64 %42, 0
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %43 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %43, i32 0, i32 6
  %44 = bitcast [128 x i8]* %buffer40 to i8*
  %45 = load i8*, i8** %buffer.addr, align 8
  %46 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false)
  %47 = load i64, i64* %len.addr, align 8
  %conv41 = trunc i64 %47 to i32
  %48 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen42 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %48, i32 0, i32 5
  store i32 %conv41, i32* %buflen42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.36
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @md5_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.md5_ctx, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @md5_init_ctx(%struct.md5_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* %ctx)
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %2)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
