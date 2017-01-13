; ModuleID = './lib/md5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
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
  %r = alloca i8*, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load i8*, i8** %resbuf.addr, align 8
  store i8* %0, i8** %r, align 8
  %1 = load i8*, i8** %r, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i32 0, i32 0
  %3 = load i32, i32* %A, align 4
  call void @set_uint32(i8* %add.ptr, i32 %3)
  %4 = load i8*, i8** %r, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 4
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 1
  %6 = load i32, i32* %B, align 4
  call void @set_uint32(i8* %add.ptr1, i32 %6)
  %7 = load i8*, i8** %r, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 8
  %8 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %8, i32 0, i32 2
  %9 = load i32, i32* %C, align 4
  call void @set_uint32(i8* %add.ptr2, i32 %9)
  %10 = load i8*, i8** %r, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 12
  %11 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %11, i32 0, i32 3
  %12 = load i32, i32* %D, align 4
  call void @set_uint32(i8* %add.ptr3, i32 %12)
  %13 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %13
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
define i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 5
  %1 = load i32, i32* %buflen, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load i32, i32* %bytes, align 4
  %cmp = icmp ult i32 %2, 56
  %cond = select i1 %cmp, i32 16, i32 32
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %size, align 8
  %3 = load i32, i32* %bytes, align 4
  %4 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %add = add i32 %5, %3
  store i32 %add, i32* %arrayidx, align 4
  %6 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %6, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %bytes, align 4
  %cmp3 = icmp ult i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %9, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %total5, i32 0, i64 1
  %10 = load i32, i32* %arrayidx6, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %11, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %total7, i32 0, i64 0
  %12 = load i32, i32* %arrayidx8, align 4
  %shl = shl i32 %12, 3
  %13 = load i64, i64* %size, align 8
  %sub = sub i64 %13, 2
  %14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %14, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer, i32 0, i64 %sub
  store i32 %shl, i32* %arrayidx9, align 4
  %15 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %15, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %total10, i32 0, i64 1
  %16 = load i32, i32* %arrayidx11, align 4
  %shl12 = shl i32 %16, 3
  %17 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %17, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %total13, i32 0, i64 0
  %18 = load i32, i32* %arrayidx14, align 4
  %shr = lshr i32 %18, 29
  %or = or i32 %shl12, %shr
  %19 = load i64, i64* %size, align 8
  %sub15 = sub i64 %19, 1
  %20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %20, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer16, i32 0, i64 %sub15
  store i32 %or, i32* %arrayidx17, align 4
  %21 = load i32, i32* %bytes, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %22, i32 0, i32 6
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer18, i32 0, i32 0
  %23 = bitcast i32* %arraydecay to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i64, i64* %size, align 8
  %sub20 = sub i64 %24, 2
  %mul = mul i64 %sub20, 4
  %25 = load i32, i32* %bytes, align 4
  %conv21 = zext i32 %25 to i64
  %sub22 = sub i64 %mul, %conv21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i32 0, i32 0), i64 %sub22, i32 1, i1 false)
  %26 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %26, i32 0, i32 6
  %arraydecay24 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer23, i32 0, i32 0
  %27 = bitcast i32* %arraydecay24 to i8*
  %28 = load i64, i64* %size, align 8
  %mul25 = mul i64 %28, 4
  %29 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %27, i64 %mul25, %struct.md5_ctx* %29) #1
  %30 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %31 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @md5_read_ctx(%struct.md5_ctx* %30, i8* %31) #1
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
  %lolen = alloca i32, align 4
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
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %lolen, align 4
  %14 = load i32, i32* %lolen, align 4
  %15 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  %add = add i32 %16, %14
  store i32 %add, i32* %arrayidx, align 4
  %17 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %17, 31
  %shr5 = lshr i64 %shr, 1
  %18 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %18, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %total6, i32 0, i64 0
  %19 = load i32, i32* %arrayidx7, align 4
  %20 = load i32, i32* %lolen, align 4
  %cmp = icmp ult i32 %19, %20
  %conv8 = zext i1 %cmp to i32
  %conv9 = sext i32 %conv8 to i64
  %add10 = add i64 %shr5, %conv9
  %21 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %21, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %total11, i32 0, i64 1
  %22 = load i32, i32* %arrayidx12, align 4
  %conv13 = zext i32 %22 to i64
  %add14 = add i64 %conv13, %add10
  %conv15 = trunc i64 %add14 to i32
  store i32 %conv15, i32* %arrayidx12, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.841, %entry
  %23 = load i32*, i32** %words, align 8
  %24 = load i32*, i32** %endp, align 8
  %cmp16 = icmp ult i32* %23, %24
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i32 0
  store i32* %arraydecay, i32** %cwp, align 8
  %25 = load i32, i32* %A, align 4
  store i32 %25, i32* %A_save, align 4
  %26 = load i32, i32* %B, align 4
  store i32 %26, i32* %B_save, align 4
  %27 = load i32, i32* %C, align 4
  store i32 %27, i32* %C_save, align 4
  %28 = load i32, i32* %D, align 4
  store i32 %28, i32* %D_save, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %29 = load i32, i32* %D, align 4
  %30 = load i32, i32* %B, align 4
  %31 = load i32, i32* %C, align 4
  %32 = load i32, i32* %D, align 4
  %xor = xor i32 %31, %32
  %and = and i32 %30, %xor
  %xor18 = xor i32 %29, %and
  %33 = load i32*, i32** %words, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %cwp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %cwp, align 8
  store i32 %34, i32* %35, align 4
  %add19 = add i32 %xor18, %34
  %add20 = add i32 %add19, -680876936
  %36 = load i32, i32* %A, align 4
  %add21 = add i32 %36, %add20
  store i32 %add21, i32* %A, align 4
  %37 = load i32*, i32** %words, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr22, i32** %words, align 8
  %38 = load i32, i32* %A, align 4
  %shl = shl i32 %38, 7
  %39 = load i32, i32* %A, align 4
  %shr23 = lshr i32 %39, 25
  %or = or i32 %shl, %shr23
  store i32 %or, i32* %A, align 4
  %40 = load i32, i32* %B, align 4
  %41 = load i32, i32* %A, align 4
  %add24 = add i32 %41, %40
  store i32 %add24, i32* %A, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.25

do.body.25:                                       ; preds = %do.end
  %42 = load i32, i32* %C, align 4
  %43 = load i32, i32* %A, align 4
  %44 = load i32, i32* %B, align 4
  %45 = load i32, i32* %C, align 4
  %xor26 = xor i32 %44, %45
  %and27 = and i32 %43, %xor26
  %xor28 = xor i32 %42, %and27
  %46 = load i32*, i32** %words, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %cwp, align 8
  %incdec.ptr29 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr29, i32** %cwp, align 8
  store i32 %47, i32* %48, align 4
  %add30 = add i32 %xor28, %47
  %add31 = add i32 %add30, -389564586
  %49 = load i32, i32* %D, align 4
  %add32 = add i32 %49, %add31
  store i32 %add32, i32* %D, align 4
  %50 = load i32*, i32** %words, align 8
  %incdec.ptr33 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr33, i32** %words, align 8
  %51 = load i32, i32* %D, align 4
  %shl34 = shl i32 %51, 12
  %52 = load i32, i32* %D, align 4
  %shr35 = lshr i32 %52, 20
  %or36 = or i32 %shl34, %shr35
  store i32 %or36, i32* %D, align 4
  %53 = load i32, i32* %A, align 4
  %54 = load i32, i32* %D, align 4
  %add37 = add i32 %54, %53
  store i32 %add37, i32* %D, align 4
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.25
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %55 = load i32, i32* %B, align 4
  %56 = load i32, i32* %D, align 4
  %57 = load i32, i32* %A, align 4
  %58 = load i32, i32* %B, align 4
  %xor40 = xor i32 %57, %58
  %and41 = and i32 %56, %xor40
  %xor42 = xor i32 %55, %and41
  %59 = load i32*, i32** %words, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %cwp, align 8
  %incdec.ptr43 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr43, i32** %cwp, align 8
  store i32 %60, i32* %61, align 4
  %add44 = add i32 %xor42, %60
  %add45 = add i32 %add44, 606105819
  %62 = load i32, i32* %C, align 4
  %add46 = add i32 %62, %add45
  store i32 %add46, i32* %C, align 4
  %63 = load i32*, i32** %words, align 8
  %incdec.ptr47 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr47, i32** %words, align 8
  %64 = load i32, i32* %C, align 4
  %shl48 = shl i32 %64, 17
  %65 = load i32, i32* %C, align 4
  %shr49 = lshr i32 %65, 15
  %or50 = or i32 %shl48, %shr49
  store i32 %or50, i32* %C, align 4
  %66 = load i32, i32* %D, align 4
  %67 = load i32, i32* %C, align 4
  %add51 = add i32 %67, %66
  store i32 %add51, i32* %C, align 4
  br label %do.end.52

do.end.52:                                        ; preds = %do.body.39
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %68 = load i32, i32* %A, align 4
  %69 = load i32, i32* %C, align 4
  %70 = load i32, i32* %D, align 4
  %71 = load i32, i32* %A, align 4
  %xor54 = xor i32 %70, %71
  %and55 = and i32 %69, %xor54
  %xor56 = xor i32 %68, %and55
  %72 = load i32*, i32** %words, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %cwp, align 8
  %incdec.ptr57 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr57, i32** %cwp, align 8
  store i32 %73, i32* %74, align 4
  %add58 = add i32 %xor56, %73
  %add59 = add i32 %add58, -1044525330
  %75 = load i32, i32* %B, align 4
  %add60 = add i32 %75, %add59
  store i32 %add60, i32* %B, align 4
  %76 = load i32*, i32** %words, align 8
  %incdec.ptr61 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %incdec.ptr61, i32** %words, align 8
  %77 = load i32, i32* %B, align 4
  %shl62 = shl i32 %77, 22
  %78 = load i32, i32* %B, align 4
  %shr63 = lshr i32 %78, 10
  %or64 = or i32 %shl62, %shr63
  store i32 %or64, i32* %B, align 4
  %79 = load i32, i32* %C, align 4
  %80 = load i32, i32* %B, align 4
  %add65 = add i32 %80, %79
  store i32 %add65, i32* %B, align 4
  br label %do.end.66

do.end.66:                                        ; preds = %do.body.53
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %81 = load i32, i32* %D, align 4
  %82 = load i32, i32* %B, align 4
  %83 = load i32, i32* %C, align 4
  %84 = load i32, i32* %D, align 4
  %xor68 = xor i32 %83, %84
  %and69 = and i32 %82, %xor68
  %xor70 = xor i32 %81, %and69
  %85 = load i32*, i32** %words, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %cwp, align 8
  %incdec.ptr71 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr71, i32** %cwp, align 8
  store i32 %86, i32* %87, align 4
  %add72 = add i32 %xor70, %86
  %add73 = add i32 %add72, -176418897
  %88 = load i32, i32* %A, align 4
  %add74 = add i32 %88, %add73
  store i32 %add74, i32* %A, align 4
  %89 = load i32*, i32** %words, align 8
  %incdec.ptr75 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr75, i32** %words, align 8
  %90 = load i32, i32* %A, align 4
  %shl76 = shl i32 %90, 7
  %91 = load i32, i32* %A, align 4
  %shr77 = lshr i32 %91, 25
  %or78 = or i32 %shl76, %shr77
  store i32 %or78, i32* %A, align 4
  %92 = load i32, i32* %B, align 4
  %93 = load i32, i32* %A, align 4
  %add79 = add i32 %93, %92
  store i32 %add79, i32* %A, align 4
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.67
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  %94 = load i32, i32* %C, align 4
  %95 = load i32, i32* %A, align 4
  %96 = load i32, i32* %B, align 4
  %97 = load i32, i32* %C, align 4
  %xor82 = xor i32 %96, %97
  %and83 = and i32 %95, %xor82
  %xor84 = xor i32 %94, %and83
  %98 = load i32*, i32** %words, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %cwp, align 8
  %incdec.ptr85 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %incdec.ptr85, i32** %cwp, align 8
  store i32 %99, i32* %100, align 4
  %add86 = add i32 %xor84, %99
  %add87 = add i32 %add86, 1200080426
  %101 = load i32, i32* %D, align 4
  %add88 = add i32 %101, %add87
  store i32 %add88, i32* %D, align 4
  %102 = load i32*, i32** %words, align 8
  %incdec.ptr89 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %incdec.ptr89, i32** %words, align 8
  %103 = load i32, i32* %D, align 4
  %shl90 = shl i32 %103, 12
  %104 = load i32, i32* %D, align 4
  %shr91 = lshr i32 %104, 20
  %or92 = or i32 %shl90, %shr91
  store i32 %or92, i32* %D, align 4
  %105 = load i32, i32* %A, align 4
  %106 = load i32, i32* %D, align 4
  %add93 = add i32 %106, %105
  store i32 %add93, i32* %D, align 4
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.81
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.94
  %107 = load i32, i32* %B, align 4
  %108 = load i32, i32* %D, align 4
  %109 = load i32, i32* %A, align 4
  %110 = load i32, i32* %B, align 4
  %xor96 = xor i32 %109, %110
  %and97 = and i32 %108, %xor96
  %xor98 = xor i32 %107, %and97
  %111 = load i32*, i32** %words, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %cwp, align 8
  %incdec.ptr99 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %incdec.ptr99, i32** %cwp, align 8
  store i32 %112, i32* %113, align 4
  %add100 = add i32 %xor98, %112
  %add101 = add i32 %add100, -1473231341
  %114 = load i32, i32* %C, align 4
  %add102 = add i32 %114, %add101
  store i32 %add102, i32* %C, align 4
  %115 = load i32*, i32** %words, align 8
  %incdec.ptr103 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %incdec.ptr103, i32** %words, align 8
  %116 = load i32, i32* %C, align 4
  %shl104 = shl i32 %116, 17
  %117 = load i32, i32* %C, align 4
  %shr105 = lshr i32 %117, 15
  %or106 = or i32 %shl104, %shr105
  store i32 %or106, i32* %C, align 4
  %118 = load i32, i32* %D, align 4
  %119 = load i32, i32* %C, align 4
  %add107 = add i32 %119, %118
  store i32 %add107, i32* %C, align 4
  br label %do.end.108

do.end.108:                                       ; preds = %do.body.95
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %120 = load i32, i32* %A, align 4
  %121 = load i32, i32* %C, align 4
  %122 = load i32, i32* %D, align 4
  %123 = load i32, i32* %A, align 4
  %xor110 = xor i32 %122, %123
  %and111 = and i32 %121, %xor110
  %xor112 = xor i32 %120, %and111
  %124 = load i32*, i32** %words, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %cwp, align 8
  %incdec.ptr113 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %incdec.ptr113, i32** %cwp, align 8
  store i32 %125, i32* %126, align 4
  %add114 = add i32 %xor112, %125
  %add115 = add i32 %add114, -45705983
  %127 = load i32, i32* %B, align 4
  %add116 = add i32 %127, %add115
  store i32 %add116, i32* %B, align 4
  %128 = load i32*, i32** %words, align 8
  %incdec.ptr117 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr117, i32** %words, align 8
  %129 = load i32, i32* %B, align 4
  %shl118 = shl i32 %129, 22
  %130 = load i32, i32* %B, align 4
  %shr119 = lshr i32 %130, 10
  %or120 = or i32 %shl118, %shr119
  store i32 %or120, i32* %B, align 4
  %131 = load i32, i32* %C, align 4
  %132 = load i32, i32* %B, align 4
  %add121 = add i32 %132, %131
  store i32 %add121, i32* %B, align 4
  br label %do.end.122

do.end.122:                                       ; preds = %do.body.109
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %133 = load i32, i32* %D, align 4
  %134 = load i32, i32* %B, align 4
  %135 = load i32, i32* %C, align 4
  %136 = load i32, i32* %D, align 4
  %xor124 = xor i32 %135, %136
  %and125 = and i32 %134, %xor124
  %xor126 = xor i32 %133, %and125
  %137 = load i32*, i32** %words, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %cwp, align 8
  %incdec.ptr127 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %incdec.ptr127, i32** %cwp, align 8
  store i32 %138, i32* %139, align 4
  %add128 = add i32 %xor126, %138
  %add129 = add i32 %add128, 1770035416
  %140 = load i32, i32* %A, align 4
  %add130 = add i32 %140, %add129
  store i32 %add130, i32* %A, align 4
  %141 = load i32*, i32** %words, align 8
  %incdec.ptr131 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %incdec.ptr131, i32** %words, align 8
  %142 = load i32, i32* %A, align 4
  %shl132 = shl i32 %142, 7
  %143 = load i32, i32* %A, align 4
  %shr133 = lshr i32 %143, 25
  %or134 = or i32 %shl132, %shr133
  store i32 %or134, i32* %A, align 4
  %144 = load i32, i32* %B, align 4
  %145 = load i32, i32* %A, align 4
  %add135 = add i32 %145, %144
  store i32 %add135, i32* %A, align 4
  br label %do.end.136

do.end.136:                                       ; preds = %do.body.123
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %146 = load i32, i32* %C, align 4
  %147 = load i32, i32* %A, align 4
  %148 = load i32, i32* %B, align 4
  %149 = load i32, i32* %C, align 4
  %xor138 = xor i32 %148, %149
  %and139 = and i32 %147, %xor138
  %xor140 = xor i32 %146, %and139
  %150 = load i32*, i32** %words, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %cwp, align 8
  %incdec.ptr141 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %incdec.ptr141, i32** %cwp, align 8
  store i32 %151, i32* %152, align 4
  %add142 = add i32 %xor140, %151
  %add143 = add i32 %add142, -1958414417
  %153 = load i32, i32* %D, align 4
  %add144 = add i32 %153, %add143
  store i32 %add144, i32* %D, align 4
  %154 = load i32*, i32** %words, align 8
  %incdec.ptr145 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %incdec.ptr145, i32** %words, align 8
  %155 = load i32, i32* %D, align 4
  %shl146 = shl i32 %155, 12
  %156 = load i32, i32* %D, align 4
  %shr147 = lshr i32 %156, 20
  %or148 = or i32 %shl146, %shr147
  store i32 %or148, i32* %D, align 4
  %157 = load i32, i32* %A, align 4
  %158 = load i32, i32* %D, align 4
  %add149 = add i32 %158, %157
  store i32 %add149, i32* %D, align 4
  br label %do.end.150

do.end.150:                                       ; preds = %do.body.137
  br label %do.body.151

do.body.151:                                      ; preds = %do.end.150
  %159 = load i32, i32* %B, align 4
  %160 = load i32, i32* %D, align 4
  %161 = load i32, i32* %A, align 4
  %162 = load i32, i32* %B, align 4
  %xor152 = xor i32 %161, %162
  %and153 = and i32 %160, %xor152
  %xor154 = xor i32 %159, %and153
  %163 = load i32*, i32** %words, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %cwp, align 8
  %incdec.ptr155 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %incdec.ptr155, i32** %cwp, align 8
  store i32 %164, i32* %165, align 4
  %add156 = add i32 %xor154, %164
  %add157 = add i32 %add156, -42063
  %166 = load i32, i32* %C, align 4
  %add158 = add i32 %166, %add157
  store i32 %add158, i32* %C, align 4
  %167 = load i32*, i32** %words, align 8
  %incdec.ptr159 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %incdec.ptr159, i32** %words, align 8
  %168 = load i32, i32* %C, align 4
  %shl160 = shl i32 %168, 17
  %169 = load i32, i32* %C, align 4
  %shr161 = lshr i32 %169, 15
  %or162 = or i32 %shl160, %shr161
  store i32 %or162, i32* %C, align 4
  %170 = load i32, i32* %D, align 4
  %171 = load i32, i32* %C, align 4
  %add163 = add i32 %171, %170
  store i32 %add163, i32* %C, align 4
  br label %do.end.164

do.end.164:                                       ; preds = %do.body.151
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %172 = load i32, i32* %A, align 4
  %173 = load i32, i32* %C, align 4
  %174 = load i32, i32* %D, align 4
  %175 = load i32, i32* %A, align 4
  %xor166 = xor i32 %174, %175
  %and167 = and i32 %173, %xor166
  %xor168 = xor i32 %172, %and167
  %176 = load i32*, i32** %words, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %cwp, align 8
  %incdec.ptr169 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %incdec.ptr169, i32** %cwp, align 8
  store i32 %177, i32* %178, align 4
  %add170 = add i32 %xor168, %177
  %add171 = add i32 %add170, -1990404162
  %179 = load i32, i32* %B, align 4
  %add172 = add i32 %179, %add171
  store i32 %add172, i32* %B, align 4
  %180 = load i32*, i32** %words, align 8
  %incdec.ptr173 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr173, i32** %words, align 8
  %181 = load i32, i32* %B, align 4
  %shl174 = shl i32 %181, 22
  %182 = load i32, i32* %B, align 4
  %shr175 = lshr i32 %182, 10
  %or176 = or i32 %shl174, %shr175
  store i32 %or176, i32* %B, align 4
  %183 = load i32, i32* %C, align 4
  %184 = load i32, i32* %B, align 4
  %add177 = add i32 %184, %183
  store i32 %add177, i32* %B, align 4
  br label %do.end.178

do.end.178:                                       ; preds = %do.body.165
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %185 = load i32, i32* %D, align 4
  %186 = load i32, i32* %B, align 4
  %187 = load i32, i32* %C, align 4
  %188 = load i32, i32* %D, align 4
  %xor180 = xor i32 %187, %188
  %and181 = and i32 %186, %xor180
  %xor182 = xor i32 %185, %and181
  %189 = load i32*, i32** %words, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %cwp, align 8
  %incdec.ptr183 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %incdec.ptr183, i32** %cwp, align 8
  store i32 %190, i32* %191, align 4
  %add184 = add i32 %xor182, %190
  %add185 = add i32 %add184, 1804603682
  %192 = load i32, i32* %A, align 4
  %add186 = add i32 %192, %add185
  store i32 %add186, i32* %A, align 4
  %193 = load i32*, i32** %words, align 8
  %incdec.ptr187 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr187, i32** %words, align 8
  %194 = load i32, i32* %A, align 4
  %shl188 = shl i32 %194, 7
  %195 = load i32, i32* %A, align 4
  %shr189 = lshr i32 %195, 25
  %or190 = or i32 %shl188, %shr189
  store i32 %or190, i32* %A, align 4
  %196 = load i32, i32* %B, align 4
  %197 = load i32, i32* %A, align 4
  %add191 = add i32 %197, %196
  store i32 %add191, i32* %A, align 4
  br label %do.end.192

do.end.192:                                       ; preds = %do.body.179
  br label %do.body.193

do.body.193:                                      ; preds = %do.end.192
  %198 = load i32, i32* %C, align 4
  %199 = load i32, i32* %A, align 4
  %200 = load i32, i32* %B, align 4
  %201 = load i32, i32* %C, align 4
  %xor194 = xor i32 %200, %201
  %and195 = and i32 %199, %xor194
  %xor196 = xor i32 %198, %and195
  %202 = load i32*, i32** %words, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %cwp, align 8
  %incdec.ptr197 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %incdec.ptr197, i32** %cwp, align 8
  store i32 %203, i32* %204, align 4
  %add198 = add i32 %xor196, %203
  %add199 = add i32 %add198, -40341101
  %205 = load i32, i32* %D, align 4
  %add200 = add i32 %205, %add199
  store i32 %add200, i32* %D, align 4
  %206 = load i32*, i32** %words, align 8
  %incdec.ptr201 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %incdec.ptr201, i32** %words, align 8
  %207 = load i32, i32* %D, align 4
  %shl202 = shl i32 %207, 12
  %208 = load i32, i32* %D, align 4
  %shr203 = lshr i32 %208, 20
  %or204 = or i32 %shl202, %shr203
  store i32 %or204, i32* %D, align 4
  %209 = load i32, i32* %A, align 4
  %210 = load i32, i32* %D, align 4
  %add205 = add i32 %210, %209
  store i32 %add205, i32* %D, align 4
  br label %do.end.206

do.end.206:                                       ; preds = %do.body.193
  br label %do.body.207

do.body.207:                                      ; preds = %do.end.206
  %211 = load i32, i32* %B, align 4
  %212 = load i32, i32* %D, align 4
  %213 = load i32, i32* %A, align 4
  %214 = load i32, i32* %B, align 4
  %xor208 = xor i32 %213, %214
  %and209 = and i32 %212, %xor208
  %xor210 = xor i32 %211, %and209
  %215 = load i32*, i32** %words, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %cwp, align 8
  %incdec.ptr211 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %incdec.ptr211, i32** %cwp, align 8
  store i32 %216, i32* %217, align 4
  %add212 = add i32 %xor210, %216
  %add213 = add i32 %add212, -1502002290
  %218 = load i32, i32* %C, align 4
  %add214 = add i32 %218, %add213
  store i32 %add214, i32* %C, align 4
  %219 = load i32*, i32** %words, align 8
  %incdec.ptr215 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %incdec.ptr215, i32** %words, align 8
  %220 = load i32, i32* %C, align 4
  %shl216 = shl i32 %220, 17
  %221 = load i32, i32* %C, align 4
  %shr217 = lshr i32 %221, 15
  %or218 = or i32 %shl216, %shr217
  store i32 %or218, i32* %C, align 4
  %222 = load i32, i32* %D, align 4
  %223 = load i32, i32* %C, align 4
  %add219 = add i32 %223, %222
  store i32 %add219, i32* %C, align 4
  br label %do.end.220

do.end.220:                                       ; preds = %do.body.207
  br label %do.body.221

do.body.221:                                      ; preds = %do.end.220
  %224 = load i32, i32* %A, align 4
  %225 = load i32, i32* %C, align 4
  %226 = load i32, i32* %D, align 4
  %227 = load i32, i32* %A, align 4
  %xor222 = xor i32 %226, %227
  %and223 = and i32 %225, %xor222
  %xor224 = xor i32 %224, %and223
  %228 = load i32*, i32** %words, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %cwp, align 8
  %incdec.ptr225 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %incdec.ptr225, i32** %cwp, align 8
  store i32 %229, i32* %230, align 4
  %add226 = add i32 %xor224, %229
  %add227 = add i32 %add226, 1236535329
  %231 = load i32, i32* %B, align 4
  %add228 = add i32 %231, %add227
  store i32 %add228, i32* %B, align 4
  %232 = load i32*, i32** %words, align 8
  %incdec.ptr229 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %incdec.ptr229, i32** %words, align 8
  %233 = load i32, i32* %B, align 4
  %shl230 = shl i32 %233, 22
  %234 = load i32, i32* %B, align 4
  %shr231 = lshr i32 %234, 10
  %or232 = or i32 %shl230, %shr231
  store i32 %or232, i32* %B, align 4
  %235 = load i32, i32* %C, align 4
  %236 = load i32, i32* %B, align 4
  %add233 = add i32 %236, %235
  store i32 %add233, i32* %B, align 4
  br label %do.end.234

do.end.234:                                       ; preds = %do.body.221
  br label %do.body.235

do.body.235:                                      ; preds = %do.end.234
  %237 = load i32, i32* %C, align 4
  %238 = load i32, i32* %D, align 4
  %239 = load i32, i32* %B, align 4
  %240 = load i32, i32* %C, align 4
  %xor236 = xor i32 %239, %240
  %and237 = and i32 %238, %xor236
  %xor238 = xor i32 %237, %and237
  %arrayidx239 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %241 = load i32, i32* %arrayidx239, align 4
  %add240 = add i32 %xor238, %241
  %add241 = add i32 %add240, -165796510
  %242 = load i32, i32* %A, align 4
  %add242 = add i32 %242, %add241
  store i32 %add242, i32* %A, align 4
  %243 = load i32, i32* %A, align 4
  %shl243 = shl i32 %243, 5
  %244 = load i32, i32* %A, align 4
  %shr244 = lshr i32 %244, 27
  %or245 = or i32 %shl243, %shr244
  store i32 %or245, i32* %A, align 4
  %245 = load i32, i32* %B, align 4
  %246 = load i32, i32* %A, align 4
  %add246 = add i32 %246, %245
  store i32 %add246, i32* %A, align 4
  br label %do.end.247

do.end.247:                                       ; preds = %do.body.235
  br label %do.body.248

do.body.248:                                      ; preds = %do.end.247
  %247 = load i32, i32* %B, align 4
  %248 = load i32, i32* %C, align 4
  %249 = load i32, i32* %A, align 4
  %250 = load i32, i32* %B, align 4
  %xor249 = xor i32 %249, %250
  %and250 = and i32 %248, %xor249
  %xor251 = xor i32 %247, %and250
  %arrayidx252 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %251 = load i32, i32* %arrayidx252, align 4
  %add253 = add i32 %xor251, %251
  %add254 = add i32 %add253, -1069501632
  %252 = load i32, i32* %D, align 4
  %add255 = add i32 %252, %add254
  store i32 %add255, i32* %D, align 4
  %253 = load i32, i32* %D, align 4
  %shl256 = shl i32 %253, 9
  %254 = load i32, i32* %D, align 4
  %shr257 = lshr i32 %254, 23
  %or258 = or i32 %shl256, %shr257
  store i32 %or258, i32* %D, align 4
  %255 = load i32, i32* %A, align 4
  %256 = load i32, i32* %D, align 4
  %add259 = add i32 %256, %255
  store i32 %add259, i32* %D, align 4
  br label %do.end.260

do.end.260:                                       ; preds = %do.body.248
  br label %do.body.261

do.body.261:                                      ; preds = %do.end.260
  %257 = load i32, i32* %A, align 4
  %258 = load i32, i32* %B, align 4
  %259 = load i32, i32* %D, align 4
  %260 = load i32, i32* %A, align 4
  %xor262 = xor i32 %259, %260
  %and263 = and i32 %258, %xor262
  %xor264 = xor i32 %257, %and263
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %261 = load i32, i32* %arrayidx265, align 4
  %add266 = add i32 %xor264, %261
  %add267 = add i32 %add266, 643717713
  %262 = load i32, i32* %C, align 4
  %add268 = add i32 %262, %add267
  store i32 %add268, i32* %C, align 4
  %263 = load i32, i32* %C, align 4
  %shl269 = shl i32 %263, 14
  %264 = load i32, i32* %C, align 4
  %shr270 = lshr i32 %264, 18
  %or271 = or i32 %shl269, %shr270
  store i32 %or271, i32* %C, align 4
  %265 = load i32, i32* %D, align 4
  %266 = load i32, i32* %C, align 4
  %add272 = add i32 %266, %265
  store i32 %add272, i32* %C, align 4
  br label %do.end.273

do.end.273:                                       ; preds = %do.body.261
  br label %do.body.274

do.body.274:                                      ; preds = %do.end.273
  %267 = load i32, i32* %D, align 4
  %268 = load i32, i32* %A, align 4
  %269 = load i32, i32* %C, align 4
  %270 = load i32, i32* %D, align 4
  %xor275 = xor i32 %269, %270
  %and276 = and i32 %268, %xor275
  %xor277 = xor i32 %267, %and276
  %arrayidx278 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %271 = load i32, i32* %arrayidx278, align 4
  %add279 = add i32 %xor277, %271
  %add280 = add i32 %add279, -373897302
  %272 = load i32, i32* %B, align 4
  %add281 = add i32 %272, %add280
  store i32 %add281, i32* %B, align 4
  %273 = load i32, i32* %B, align 4
  %shl282 = shl i32 %273, 20
  %274 = load i32, i32* %B, align 4
  %shr283 = lshr i32 %274, 12
  %or284 = or i32 %shl282, %shr283
  store i32 %or284, i32* %B, align 4
  %275 = load i32, i32* %C, align 4
  %276 = load i32, i32* %B, align 4
  %add285 = add i32 %276, %275
  store i32 %add285, i32* %B, align 4
  br label %do.end.286

do.end.286:                                       ; preds = %do.body.274
  br label %do.body.287

do.body.287:                                      ; preds = %do.end.286
  %277 = load i32, i32* %C, align 4
  %278 = load i32, i32* %D, align 4
  %279 = load i32, i32* %B, align 4
  %280 = load i32, i32* %C, align 4
  %xor288 = xor i32 %279, %280
  %and289 = and i32 %278, %xor288
  %xor290 = xor i32 %277, %and289
  %arrayidx291 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %281 = load i32, i32* %arrayidx291, align 4
  %add292 = add i32 %xor290, %281
  %add293 = add i32 %add292, -701558691
  %282 = load i32, i32* %A, align 4
  %add294 = add i32 %282, %add293
  store i32 %add294, i32* %A, align 4
  %283 = load i32, i32* %A, align 4
  %shl295 = shl i32 %283, 5
  %284 = load i32, i32* %A, align 4
  %shr296 = lshr i32 %284, 27
  %or297 = or i32 %shl295, %shr296
  store i32 %or297, i32* %A, align 4
  %285 = load i32, i32* %B, align 4
  %286 = load i32, i32* %A, align 4
  %add298 = add i32 %286, %285
  store i32 %add298, i32* %A, align 4
  br label %do.end.299

do.end.299:                                       ; preds = %do.body.287
  br label %do.body.300

do.body.300:                                      ; preds = %do.end.299
  %287 = load i32, i32* %B, align 4
  %288 = load i32, i32* %C, align 4
  %289 = load i32, i32* %A, align 4
  %290 = load i32, i32* %B, align 4
  %xor301 = xor i32 %289, %290
  %and302 = and i32 %288, %xor301
  %xor303 = xor i32 %287, %and302
  %arrayidx304 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %291 = load i32, i32* %arrayidx304, align 4
  %add305 = add i32 %xor303, %291
  %add306 = add i32 %add305, 38016083
  %292 = load i32, i32* %D, align 4
  %add307 = add i32 %292, %add306
  store i32 %add307, i32* %D, align 4
  %293 = load i32, i32* %D, align 4
  %shl308 = shl i32 %293, 9
  %294 = load i32, i32* %D, align 4
  %shr309 = lshr i32 %294, 23
  %or310 = or i32 %shl308, %shr309
  store i32 %or310, i32* %D, align 4
  %295 = load i32, i32* %A, align 4
  %296 = load i32, i32* %D, align 4
  %add311 = add i32 %296, %295
  store i32 %add311, i32* %D, align 4
  br label %do.end.312

do.end.312:                                       ; preds = %do.body.300
  br label %do.body.313

do.body.313:                                      ; preds = %do.end.312
  %297 = load i32, i32* %A, align 4
  %298 = load i32, i32* %B, align 4
  %299 = load i32, i32* %D, align 4
  %300 = load i32, i32* %A, align 4
  %xor314 = xor i32 %299, %300
  %and315 = and i32 %298, %xor314
  %xor316 = xor i32 %297, %and315
  %arrayidx317 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %301 = load i32, i32* %arrayidx317, align 4
  %add318 = add i32 %xor316, %301
  %add319 = add i32 %add318, -660478335
  %302 = load i32, i32* %C, align 4
  %add320 = add i32 %302, %add319
  store i32 %add320, i32* %C, align 4
  %303 = load i32, i32* %C, align 4
  %shl321 = shl i32 %303, 14
  %304 = load i32, i32* %C, align 4
  %shr322 = lshr i32 %304, 18
  %or323 = or i32 %shl321, %shr322
  store i32 %or323, i32* %C, align 4
  %305 = load i32, i32* %D, align 4
  %306 = load i32, i32* %C, align 4
  %add324 = add i32 %306, %305
  store i32 %add324, i32* %C, align 4
  br label %do.end.325

do.end.325:                                       ; preds = %do.body.313
  br label %do.body.326

do.body.326:                                      ; preds = %do.end.325
  %307 = load i32, i32* %D, align 4
  %308 = load i32, i32* %A, align 4
  %309 = load i32, i32* %C, align 4
  %310 = load i32, i32* %D, align 4
  %xor327 = xor i32 %309, %310
  %and328 = and i32 %308, %xor327
  %xor329 = xor i32 %307, %and328
  %arrayidx330 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %311 = load i32, i32* %arrayidx330, align 4
  %add331 = add i32 %xor329, %311
  %add332 = add i32 %add331, -405537848
  %312 = load i32, i32* %B, align 4
  %add333 = add i32 %312, %add332
  store i32 %add333, i32* %B, align 4
  %313 = load i32, i32* %B, align 4
  %shl334 = shl i32 %313, 20
  %314 = load i32, i32* %B, align 4
  %shr335 = lshr i32 %314, 12
  %or336 = or i32 %shl334, %shr335
  store i32 %or336, i32* %B, align 4
  %315 = load i32, i32* %C, align 4
  %316 = load i32, i32* %B, align 4
  %add337 = add i32 %316, %315
  store i32 %add337, i32* %B, align 4
  br label %do.end.338

do.end.338:                                       ; preds = %do.body.326
  br label %do.body.339

do.body.339:                                      ; preds = %do.end.338
  %317 = load i32, i32* %C, align 4
  %318 = load i32, i32* %D, align 4
  %319 = load i32, i32* %B, align 4
  %320 = load i32, i32* %C, align 4
  %xor340 = xor i32 %319, %320
  %and341 = and i32 %318, %xor340
  %xor342 = xor i32 %317, %and341
  %arrayidx343 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %321 = load i32, i32* %arrayidx343, align 4
  %add344 = add i32 %xor342, %321
  %add345 = add i32 %add344, 568446438
  %322 = load i32, i32* %A, align 4
  %add346 = add i32 %322, %add345
  store i32 %add346, i32* %A, align 4
  %323 = load i32, i32* %A, align 4
  %shl347 = shl i32 %323, 5
  %324 = load i32, i32* %A, align 4
  %shr348 = lshr i32 %324, 27
  %or349 = or i32 %shl347, %shr348
  store i32 %or349, i32* %A, align 4
  %325 = load i32, i32* %B, align 4
  %326 = load i32, i32* %A, align 4
  %add350 = add i32 %326, %325
  store i32 %add350, i32* %A, align 4
  br label %do.end.351

do.end.351:                                       ; preds = %do.body.339
  br label %do.body.352

do.body.352:                                      ; preds = %do.end.351
  %327 = load i32, i32* %B, align 4
  %328 = load i32, i32* %C, align 4
  %329 = load i32, i32* %A, align 4
  %330 = load i32, i32* %B, align 4
  %xor353 = xor i32 %329, %330
  %and354 = and i32 %328, %xor353
  %xor355 = xor i32 %327, %and354
  %arrayidx356 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %331 = load i32, i32* %arrayidx356, align 4
  %add357 = add i32 %xor355, %331
  %add358 = add i32 %add357, -1019803690
  %332 = load i32, i32* %D, align 4
  %add359 = add i32 %332, %add358
  store i32 %add359, i32* %D, align 4
  %333 = load i32, i32* %D, align 4
  %shl360 = shl i32 %333, 9
  %334 = load i32, i32* %D, align 4
  %shr361 = lshr i32 %334, 23
  %or362 = or i32 %shl360, %shr361
  store i32 %or362, i32* %D, align 4
  %335 = load i32, i32* %A, align 4
  %336 = load i32, i32* %D, align 4
  %add363 = add i32 %336, %335
  store i32 %add363, i32* %D, align 4
  br label %do.end.364

do.end.364:                                       ; preds = %do.body.352
  br label %do.body.365

do.body.365:                                      ; preds = %do.end.364
  %337 = load i32, i32* %A, align 4
  %338 = load i32, i32* %B, align 4
  %339 = load i32, i32* %D, align 4
  %340 = load i32, i32* %A, align 4
  %xor366 = xor i32 %339, %340
  %and367 = and i32 %338, %xor366
  %xor368 = xor i32 %337, %and367
  %arrayidx369 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %341 = load i32, i32* %arrayidx369, align 4
  %add370 = add i32 %xor368, %341
  %add371 = add i32 %add370, -187363961
  %342 = load i32, i32* %C, align 4
  %add372 = add i32 %342, %add371
  store i32 %add372, i32* %C, align 4
  %343 = load i32, i32* %C, align 4
  %shl373 = shl i32 %343, 14
  %344 = load i32, i32* %C, align 4
  %shr374 = lshr i32 %344, 18
  %or375 = or i32 %shl373, %shr374
  store i32 %or375, i32* %C, align 4
  %345 = load i32, i32* %D, align 4
  %346 = load i32, i32* %C, align 4
  %add376 = add i32 %346, %345
  store i32 %add376, i32* %C, align 4
  br label %do.end.377

do.end.377:                                       ; preds = %do.body.365
  br label %do.body.378

do.body.378:                                      ; preds = %do.end.377
  %347 = load i32, i32* %D, align 4
  %348 = load i32, i32* %A, align 4
  %349 = load i32, i32* %C, align 4
  %350 = load i32, i32* %D, align 4
  %xor379 = xor i32 %349, %350
  %and380 = and i32 %348, %xor379
  %xor381 = xor i32 %347, %and380
  %arrayidx382 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %351 = load i32, i32* %arrayidx382, align 4
  %add383 = add i32 %xor381, %351
  %add384 = add i32 %add383, 1163531501
  %352 = load i32, i32* %B, align 4
  %add385 = add i32 %352, %add384
  store i32 %add385, i32* %B, align 4
  %353 = load i32, i32* %B, align 4
  %shl386 = shl i32 %353, 20
  %354 = load i32, i32* %B, align 4
  %shr387 = lshr i32 %354, 12
  %or388 = or i32 %shl386, %shr387
  store i32 %or388, i32* %B, align 4
  %355 = load i32, i32* %C, align 4
  %356 = load i32, i32* %B, align 4
  %add389 = add i32 %356, %355
  store i32 %add389, i32* %B, align 4
  br label %do.end.390

do.end.390:                                       ; preds = %do.body.378
  br label %do.body.391

do.body.391:                                      ; preds = %do.end.390
  %357 = load i32, i32* %C, align 4
  %358 = load i32, i32* %D, align 4
  %359 = load i32, i32* %B, align 4
  %360 = load i32, i32* %C, align 4
  %xor392 = xor i32 %359, %360
  %and393 = and i32 %358, %xor392
  %xor394 = xor i32 %357, %and393
  %arrayidx395 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %361 = load i32, i32* %arrayidx395, align 4
  %add396 = add i32 %xor394, %361
  %add397 = add i32 %add396, -1444681467
  %362 = load i32, i32* %A, align 4
  %add398 = add i32 %362, %add397
  store i32 %add398, i32* %A, align 4
  %363 = load i32, i32* %A, align 4
  %shl399 = shl i32 %363, 5
  %364 = load i32, i32* %A, align 4
  %shr400 = lshr i32 %364, 27
  %or401 = or i32 %shl399, %shr400
  store i32 %or401, i32* %A, align 4
  %365 = load i32, i32* %B, align 4
  %366 = load i32, i32* %A, align 4
  %add402 = add i32 %366, %365
  store i32 %add402, i32* %A, align 4
  br label %do.end.403

do.end.403:                                       ; preds = %do.body.391
  br label %do.body.404

do.body.404:                                      ; preds = %do.end.403
  %367 = load i32, i32* %B, align 4
  %368 = load i32, i32* %C, align 4
  %369 = load i32, i32* %A, align 4
  %370 = load i32, i32* %B, align 4
  %xor405 = xor i32 %369, %370
  %and406 = and i32 %368, %xor405
  %xor407 = xor i32 %367, %and406
  %arrayidx408 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %371 = load i32, i32* %arrayidx408, align 4
  %add409 = add i32 %xor407, %371
  %add410 = add i32 %add409, -51403784
  %372 = load i32, i32* %D, align 4
  %add411 = add i32 %372, %add410
  store i32 %add411, i32* %D, align 4
  %373 = load i32, i32* %D, align 4
  %shl412 = shl i32 %373, 9
  %374 = load i32, i32* %D, align 4
  %shr413 = lshr i32 %374, 23
  %or414 = or i32 %shl412, %shr413
  store i32 %or414, i32* %D, align 4
  %375 = load i32, i32* %A, align 4
  %376 = load i32, i32* %D, align 4
  %add415 = add i32 %376, %375
  store i32 %add415, i32* %D, align 4
  br label %do.end.416

do.end.416:                                       ; preds = %do.body.404
  br label %do.body.417

do.body.417:                                      ; preds = %do.end.416
  %377 = load i32, i32* %A, align 4
  %378 = load i32, i32* %B, align 4
  %379 = load i32, i32* %D, align 4
  %380 = load i32, i32* %A, align 4
  %xor418 = xor i32 %379, %380
  %and419 = and i32 %378, %xor418
  %xor420 = xor i32 %377, %and419
  %arrayidx421 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %381 = load i32, i32* %arrayidx421, align 4
  %add422 = add i32 %xor420, %381
  %add423 = add i32 %add422, 1735328473
  %382 = load i32, i32* %C, align 4
  %add424 = add i32 %382, %add423
  store i32 %add424, i32* %C, align 4
  %383 = load i32, i32* %C, align 4
  %shl425 = shl i32 %383, 14
  %384 = load i32, i32* %C, align 4
  %shr426 = lshr i32 %384, 18
  %or427 = or i32 %shl425, %shr426
  store i32 %or427, i32* %C, align 4
  %385 = load i32, i32* %D, align 4
  %386 = load i32, i32* %C, align 4
  %add428 = add i32 %386, %385
  store i32 %add428, i32* %C, align 4
  br label %do.end.429

do.end.429:                                       ; preds = %do.body.417
  br label %do.body.430

do.body.430:                                      ; preds = %do.end.429
  %387 = load i32, i32* %D, align 4
  %388 = load i32, i32* %A, align 4
  %389 = load i32, i32* %C, align 4
  %390 = load i32, i32* %D, align 4
  %xor431 = xor i32 %389, %390
  %and432 = and i32 %388, %xor431
  %xor433 = xor i32 %387, %and432
  %arrayidx434 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %391 = load i32, i32* %arrayidx434, align 4
  %add435 = add i32 %xor433, %391
  %add436 = add i32 %add435, -1926607734
  %392 = load i32, i32* %B, align 4
  %add437 = add i32 %392, %add436
  store i32 %add437, i32* %B, align 4
  %393 = load i32, i32* %B, align 4
  %shl438 = shl i32 %393, 20
  %394 = load i32, i32* %B, align 4
  %shr439 = lshr i32 %394, 12
  %or440 = or i32 %shl438, %shr439
  store i32 %or440, i32* %B, align 4
  %395 = load i32, i32* %C, align 4
  %396 = load i32, i32* %B, align 4
  %add441 = add i32 %396, %395
  store i32 %add441, i32* %B, align 4
  br label %do.end.442

do.end.442:                                       ; preds = %do.body.430
  br label %do.body.443

do.body.443:                                      ; preds = %do.end.442
  %397 = load i32, i32* %B, align 4
  %398 = load i32, i32* %C, align 4
  %xor444 = xor i32 %397, %398
  %399 = load i32, i32* %D, align 4
  %xor445 = xor i32 %xor444, %399
  %arrayidx446 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %400 = load i32, i32* %arrayidx446, align 4
  %add447 = add i32 %xor445, %400
  %add448 = add i32 %add447, -378558
  %401 = load i32, i32* %A, align 4
  %add449 = add i32 %401, %add448
  store i32 %add449, i32* %A, align 4
  %402 = load i32, i32* %A, align 4
  %shl450 = shl i32 %402, 4
  %403 = load i32, i32* %A, align 4
  %shr451 = lshr i32 %403, 28
  %or452 = or i32 %shl450, %shr451
  store i32 %or452, i32* %A, align 4
  %404 = load i32, i32* %B, align 4
  %405 = load i32, i32* %A, align 4
  %add453 = add i32 %405, %404
  store i32 %add453, i32* %A, align 4
  br label %do.end.454

do.end.454:                                       ; preds = %do.body.443
  br label %do.body.455

do.body.455:                                      ; preds = %do.end.454
  %406 = load i32, i32* %A, align 4
  %407 = load i32, i32* %B, align 4
  %xor456 = xor i32 %406, %407
  %408 = load i32, i32* %C, align 4
  %xor457 = xor i32 %xor456, %408
  %arrayidx458 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %409 = load i32, i32* %arrayidx458, align 4
  %add459 = add i32 %xor457, %409
  %add460 = add i32 %add459, -2022574463
  %410 = load i32, i32* %D, align 4
  %add461 = add i32 %410, %add460
  store i32 %add461, i32* %D, align 4
  %411 = load i32, i32* %D, align 4
  %shl462 = shl i32 %411, 11
  %412 = load i32, i32* %D, align 4
  %shr463 = lshr i32 %412, 21
  %or464 = or i32 %shl462, %shr463
  store i32 %or464, i32* %D, align 4
  %413 = load i32, i32* %A, align 4
  %414 = load i32, i32* %D, align 4
  %add465 = add i32 %414, %413
  store i32 %add465, i32* %D, align 4
  br label %do.end.466

do.end.466:                                       ; preds = %do.body.455
  br label %do.body.467

do.body.467:                                      ; preds = %do.end.466
  %415 = load i32, i32* %D, align 4
  %416 = load i32, i32* %A, align 4
  %xor468 = xor i32 %415, %416
  %417 = load i32, i32* %B, align 4
  %xor469 = xor i32 %xor468, %417
  %arrayidx470 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %418 = load i32, i32* %arrayidx470, align 4
  %add471 = add i32 %xor469, %418
  %add472 = add i32 %add471, 1839030562
  %419 = load i32, i32* %C, align 4
  %add473 = add i32 %419, %add472
  store i32 %add473, i32* %C, align 4
  %420 = load i32, i32* %C, align 4
  %shl474 = shl i32 %420, 16
  %421 = load i32, i32* %C, align 4
  %shr475 = lshr i32 %421, 16
  %or476 = or i32 %shl474, %shr475
  store i32 %or476, i32* %C, align 4
  %422 = load i32, i32* %D, align 4
  %423 = load i32, i32* %C, align 4
  %add477 = add i32 %423, %422
  store i32 %add477, i32* %C, align 4
  br label %do.end.478

do.end.478:                                       ; preds = %do.body.467
  br label %do.body.479

do.body.479:                                      ; preds = %do.end.478
  %424 = load i32, i32* %C, align 4
  %425 = load i32, i32* %D, align 4
  %xor480 = xor i32 %424, %425
  %426 = load i32, i32* %A, align 4
  %xor481 = xor i32 %xor480, %426
  %arrayidx482 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %427 = load i32, i32* %arrayidx482, align 4
  %add483 = add i32 %xor481, %427
  %add484 = add i32 %add483, -35309556
  %428 = load i32, i32* %B, align 4
  %add485 = add i32 %428, %add484
  store i32 %add485, i32* %B, align 4
  %429 = load i32, i32* %B, align 4
  %shl486 = shl i32 %429, 23
  %430 = load i32, i32* %B, align 4
  %shr487 = lshr i32 %430, 9
  %or488 = or i32 %shl486, %shr487
  store i32 %or488, i32* %B, align 4
  %431 = load i32, i32* %C, align 4
  %432 = load i32, i32* %B, align 4
  %add489 = add i32 %432, %431
  store i32 %add489, i32* %B, align 4
  br label %do.end.490

do.end.490:                                       ; preds = %do.body.479
  br label %do.body.491

do.body.491:                                      ; preds = %do.end.490
  %433 = load i32, i32* %B, align 4
  %434 = load i32, i32* %C, align 4
  %xor492 = xor i32 %433, %434
  %435 = load i32, i32* %D, align 4
  %xor493 = xor i32 %xor492, %435
  %arrayidx494 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %436 = load i32, i32* %arrayidx494, align 4
  %add495 = add i32 %xor493, %436
  %add496 = add i32 %add495, -1530992060
  %437 = load i32, i32* %A, align 4
  %add497 = add i32 %437, %add496
  store i32 %add497, i32* %A, align 4
  %438 = load i32, i32* %A, align 4
  %shl498 = shl i32 %438, 4
  %439 = load i32, i32* %A, align 4
  %shr499 = lshr i32 %439, 28
  %or500 = or i32 %shl498, %shr499
  store i32 %or500, i32* %A, align 4
  %440 = load i32, i32* %B, align 4
  %441 = load i32, i32* %A, align 4
  %add501 = add i32 %441, %440
  store i32 %add501, i32* %A, align 4
  br label %do.end.502

do.end.502:                                       ; preds = %do.body.491
  br label %do.body.503

do.body.503:                                      ; preds = %do.end.502
  %442 = load i32, i32* %A, align 4
  %443 = load i32, i32* %B, align 4
  %xor504 = xor i32 %442, %443
  %444 = load i32, i32* %C, align 4
  %xor505 = xor i32 %xor504, %444
  %arrayidx506 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %445 = load i32, i32* %arrayidx506, align 4
  %add507 = add i32 %xor505, %445
  %add508 = add i32 %add507, 1272893353
  %446 = load i32, i32* %D, align 4
  %add509 = add i32 %446, %add508
  store i32 %add509, i32* %D, align 4
  %447 = load i32, i32* %D, align 4
  %shl510 = shl i32 %447, 11
  %448 = load i32, i32* %D, align 4
  %shr511 = lshr i32 %448, 21
  %or512 = or i32 %shl510, %shr511
  store i32 %or512, i32* %D, align 4
  %449 = load i32, i32* %A, align 4
  %450 = load i32, i32* %D, align 4
  %add513 = add i32 %450, %449
  store i32 %add513, i32* %D, align 4
  br label %do.end.514

do.end.514:                                       ; preds = %do.body.503
  br label %do.body.515

do.body.515:                                      ; preds = %do.end.514
  %451 = load i32, i32* %D, align 4
  %452 = load i32, i32* %A, align 4
  %xor516 = xor i32 %451, %452
  %453 = load i32, i32* %B, align 4
  %xor517 = xor i32 %xor516, %453
  %arrayidx518 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %454 = load i32, i32* %arrayidx518, align 4
  %add519 = add i32 %xor517, %454
  %add520 = add i32 %add519, -155497632
  %455 = load i32, i32* %C, align 4
  %add521 = add i32 %455, %add520
  store i32 %add521, i32* %C, align 4
  %456 = load i32, i32* %C, align 4
  %shl522 = shl i32 %456, 16
  %457 = load i32, i32* %C, align 4
  %shr523 = lshr i32 %457, 16
  %or524 = or i32 %shl522, %shr523
  store i32 %or524, i32* %C, align 4
  %458 = load i32, i32* %D, align 4
  %459 = load i32, i32* %C, align 4
  %add525 = add i32 %459, %458
  store i32 %add525, i32* %C, align 4
  br label %do.end.526

do.end.526:                                       ; preds = %do.body.515
  br label %do.body.527

do.body.527:                                      ; preds = %do.end.526
  %460 = load i32, i32* %C, align 4
  %461 = load i32, i32* %D, align 4
  %xor528 = xor i32 %460, %461
  %462 = load i32, i32* %A, align 4
  %xor529 = xor i32 %xor528, %462
  %arrayidx530 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %463 = load i32, i32* %arrayidx530, align 4
  %add531 = add i32 %xor529, %463
  %add532 = add i32 %add531, -1094730640
  %464 = load i32, i32* %B, align 4
  %add533 = add i32 %464, %add532
  store i32 %add533, i32* %B, align 4
  %465 = load i32, i32* %B, align 4
  %shl534 = shl i32 %465, 23
  %466 = load i32, i32* %B, align 4
  %shr535 = lshr i32 %466, 9
  %or536 = or i32 %shl534, %shr535
  store i32 %or536, i32* %B, align 4
  %467 = load i32, i32* %C, align 4
  %468 = load i32, i32* %B, align 4
  %add537 = add i32 %468, %467
  store i32 %add537, i32* %B, align 4
  br label %do.end.538

do.end.538:                                       ; preds = %do.body.527
  br label %do.body.539

do.body.539:                                      ; preds = %do.end.538
  %469 = load i32, i32* %B, align 4
  %470 = load i32, i32* %C, align 4
  %xor540 = xor i32 %469, %470
  %471 = load i32, i32* %D, align 4
  %xor541 = xor i32 %xor540, %471
  %arrayidx542 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %472 = load i32, i32* %arrayidx542, align 4
  %add543 = add i32 %xor541, %472
  %add544 = add i32 %add543, 681279174
  %473 = load i32, i32* %A, align 4
  %add545 = add i32 %473, %add544
  store i32 %add545, i32* %A, align 4
  %474 = load i32, i32* %A, align 4
  %shl546 = shl i32 %474, 4
  %475 = load i32, i32* %A, align 4
  %shr547 = lshr i32 %475, 28
  %or548 = or i32 %shl546, %shr547
  store i32 %or548, i32* %A, align 4
  %476 = load i32, i32* %B, align 4
  %477 = load i32, i32* %A, align 4
  %add549 = add i32 %477, %476
  store i32 %add549, i32* %A, align 4
  br label %do.end.550

do.end.550:                                       ; preds = %do.body.539
  br label %do.body.551

do.body.551:                                      ; preds = %do.end.550
  %478 = load i32, i32* %A, align 4
  %479 = load i32, i32* %B, align 4
  %xor552 = xor i32 %478, %479
  %480 = load i32, i32* %C, align 4
  %xor553 = xor i32 %xor552, %480
  %arrayidx554 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %481 = load i32, i32* %arrayidx554, align 4
  %add555 = add i32 %xor553, %481
  %add556 = add i32 %add555, -358537222
  %482 = load i32, i32* %D, align 4
  %add557 = add i32 %482, %add556
  store i32 %add557, i32* %D, align 4
  %483 = load i32, i32* %D, align 4
  %shl558 = shl i32 %483, 11
  %484 = load i32, i32* %D, align 4
  %shr559 = lshr i32 %484, 21
  %or560 = or i32 %shl558, %shr559
  store i32 %or560, i32* %D, align 4
  %485 = load i32, i32* %A, align 4
  %486 = load i32, i32* %D, align 4
  %add561 = add i32 %486, %485
  store i32 %add561, i32* %D, align 4
  br label %do.end.562

do.end.562:                                       ; preds = %do.body.551
  br label %do.body.563

do.body.563:                                      ; preds = %do.end.562
  %487 = load i32, i32* %D, align 4
  %488 = load i32, i32* %A, align 4
  %xor564 = xor i32 %487, %488
  %489 = load i32, i32* %B, align 4
  %xor565 = xor i32 %xor564, %489
  %arrayidx566 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %490 = load i32, i32* %arrayidx566, align 4
  %add567 = add i32 %xor565, %490
  %add568 = add i32 %add567, -722521979
  %491 = load i32, i32* %C, align 4
  %add569 = add i32 %491, %add568
  store i32 %add569, i32* %C, align 4
  %492 = load i32, i32* %C, align 4
  %shl570 = shl i32 %492, 16
  %493 = load i32, i32* %C, align 4
  %shr571 = lshr i32 %493, 16
  %or572 = or i32 %shl570, %shr571
  store i32 %or572, i32* %C, align 4
  %494 = load i32, i32* %D, align 4
  %495 = load i32, i32* %C, align 4
  %add573 = add i32 %495, %494
  store i32 %add573, i32* %C, align 4
  br label %do.end.574

do.end.574:                                       ; preds = %do.body.563
  br label %do.body.575

do.body.575:                                      ; preds = %do.end.574
  %496 = load i32, i32* %C, align 4
  %497 = load i32, i32* %D, align 4
  %xor576 = xor i32 %496, %497
  %498 = load i32, i32* %A, align 4
  %xor577 = xor i32 %xor576, %498
  %arrayidx578 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %499 = load i32, i32* %arrayidx578, align 4
  %add579 = add i32 %xor577, %499
  %add580 = add i32 %add579, 76029189
  %500 = load i32, i32* %B, align 4
  %add581 = add i32 %500, %add580
  store i32 %add581, i32* %B, align 4
  %501 = load i32, i32* %B, align 4
  %shl582 = shl i32 %501, 23
  %502 = load i32, i32* %B, align 4
  %shr583 = lshr i32 %502, 9
  %or584 = or i32 %shl582, %shr583
  store i32 %or584, i32* %B, align 4
  %503 = load i32, i32* %C, align 4
  %504 = load i32, i32* %B, align 4
  %add585 = add i32 %504, %503
  store i32 %add585, i32* %B, align 4
  br label %do.end.586

do.end.586:                                       ; preds = %do.body.575
  br label %do.body.587

do.body.587:                                      ; preds = %do.end.586
  %505 = load i32, i32* %B, align 4
  %506 = load i32, i32* %C, align 4
  %xor588 = xor i32 %505, %506
  %507 = load i32, i32* %D, align 4
  %xor589 = xor i32 %xor588, %507
  %arrayidx590 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %508 = load i32, i32* %arrayidx590, align 4
  %add591 = add i32 %xor589, %508
  %add592 = add i32 %add591, -640364487
  %509 = load i32, i32* %A, align 4
  %add593 = add i32 %509, %add592
  store i32 %add593, i32* %A, align 4
  %510 = load i32, i32* %A, align 4
  %shl594 = shl i32 %510, 4
  %511 = load i32, i32* %A, align 4
  %shr595 = lshr i32 %511, 28
  %or596 = or i32 %shl594, %shr595
  store i32 %or596, i32* %A, align 4
  %512 = load i32, i32* %B, align 4
  %513 = load i32, i32* %A, align 4
  %add597 = add i32 %513, %512
  store i32 %add597, i32* %A, align 4
  br label %do.end.598

do.end.598:                                       ; preds = %do.body.587
  br label %do.body.599

do.body.599:                                      ; preds = %do.end.598
  %514 = load i32, i32* %A, align 4
  %515 = load i32, i32* %B, align 4
  %xor600 = xor i32 %514, %515
  %516 = load i32, i32* %C, align 4
  %xor601 = xor i32 %xor600, %516
  %arrayidx602 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %517 = load i32, i32* %arrayidx602, align 4
  %add603 = add i32 %xor601, %517
  %add604 = add i32 %add603, -421815835
  %518 = load i32, i32* %D, align 4
  %add605 = add i32 %518, %add604
  store i32 %add605, i32* %D, align 4
  %519 = load i32, i32* %D, align 4
  %shl606 = shl i32 %519, 11
  %520 = load i32, i32* %D, align 4
  %shr607 = lshr i32 %520, 21
  %or608 = or i32 %shl606, %shr607
  store i32 %or608, i32* %D, align 4
  %521 = load i32, i32* %A, align 4
  %522 = load i32, i32* %D, align 4
  %add609 = add i32 %522, %521
  store i32 %add609, i32* %D, align 4
  br label %do.end.610

do.end.610:                                       ; preds = %do.body.599
  br label %do.body.611

do.body.611:                                      ; preds = %do.end.610
  %523 = load i32, i32* %D, align 4
  %524 = load i32, i32* %A, align 4
  %xor612 = xor i32 %523, %524
  %525 = load i32, i32* %B, align 4
  %xor613 = xor i32 %xor612, %525
  %arrayidx614 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %526 = load i32, i32* %arrayidx614, align 4
  %add615 = add i32 %xor613, %526
  %add616 = add i32 %add615, 530742520
  %527 = load i32, i32* %C, align 4
  %add617 = add i32 %527, %add616
  store i32 %add617, i32* %C, align 4
  %528 = load i32, i32* %C, align 4
  %shl618 = shl i32 %528, 16
  %529 = load i32, i32* %C, align 4
  %shr619 = lshr i32 %529, 16
  %or620 = or i32 %shl618, %shr619
  store i32 %or620, i32* %C, align 4
  %530 = load i32, i32* %D, align 4
  %531 = load i32, i32* %C, align 4
  %add621 = add i32 %531, %530
  store i32 %add621, i32* %C, align 4
  br label %do.end.622

do.end.622:                                       ; preds = %do.body.611
  br label %do.body.623

do.body.623:                                      ; preds = %do.end.622
  %532 = load i32, i32* %C, align 4
  %533 = load i32, i32* %D, align 4
  %xor624 = xor i32 %532, %533
  %534 = load i32, i32* %A, align 4
  %xor625 = xor i32 %xor624, %534
  %arrayidx626 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %535 = load i32, i32* %arrayidx626, align 4
  %add627 = add i32 %xor625, %535
  %add628 = add i32 %add627, -995338651
  %536 = load i32, i32* %B, align 4
  %add629 = add i32 %536, %add628
  store i32 %add629, i32* %B, align 4
  %537 = load i32, i32* %B, align 4
  %shl630 = shl i32 %537, 23
  %538 = load i32, i32* %B, align 4
  %shr631 = lshr i32 %538, 9
  %or632 = or i32 %shl630, %shr631
  store i32 %or632, i32* %B, align 4
  %539 = load i32, i32* %C, align 4
  %540 = load i32, i32* %B, align 4
  %add633 = add i32 %540, %539
  store i32 %add633, i32* %B, align 4
  br label %do.end.634

do.end.634:                                       ; preds = %do.body.623
  br label %do.body.635

do.body.635:                                      ; preds = %do.end.634
  %541 = load i32, i32* %C, align 4
  %542 = load i32, i32* %B, align 4
  %543 = load i32, i32* %D, align 4
  %neg = xor i32 %543, -1
  %or636 = or i32 %542, %neg
  %xor637 = xor i32 %541, %or636
  %arrayidx638 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %544 = load i32, i32* %arrayidx638, align 4
  %add639 = add i32 %xor637, %544
  %add640 = add i32 %add639, -198630844
  %545 = load i32, i32* %A, align 4
  %add641 = add i32 %545, %add640
  store i32 %add641, i32* %A, align 4
  %546 = load i32, i32* %A, align 4
  %shl642 = shl i32 %546, 6
  %547 = load i32, i32* %A, align 4
  %shr643 = lshr i32 %547, 26
  %or644 = or i32 %shl642, %shr643
  store i32 %or644, i32* %A, align 4
  %548 = load i32, i32* %B, align 4
  %549 = load i32, i32* %A, align 4
  %add645 = add i32 %549, %548
  store i32 %add645, i32* %A, align 4
  br label %do.end.646

do.end.646:                                       ; preds = %do.body.635
  br label %do.body.647

do.body.647:                                      ; preds = %do.end.646
  %550 = load i32, i32* %B, align 4
  %551 = load i32, i32* %A, align 4
  %552 = load i32, i32* %C, align 4
  %neg648 = xor i32 %552, -1
  %or649 = or i32 %551, %neg648
  %xor650 = xor i32 %550, %or649
  %arrayidx651 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %553 = load i32, i32* %arrayidx651, align 4
  %add652 = add i32 %xor650, %553
  %add653 = add i32 %add652, 1126891415
  %554 = load i32, i32* %D, align 4
  %add654 = add i32 %554, %add653
  store i32 %add654, i32* %D, align 4
  %555 = load i32, i32* %D, align 4
  %shl655 = shl i32 %555, 10
  %556 = load i32, i32* %D, align 4
  %shr656 = lshr i32 %556, 22
  %or657 = or i32 %shl655, %shr656
  store i32 %or657, i32* %D, align 4
  %557 = load i32, i32* %A, align 4
  %558 = load i32, i32* %D, align 4
  %add658 = add i32 %558, %557
  store i32 %add658, i32* %D, align 4
  br label %do.end.659

do.end.659:                                       ; preds = %do.body.647
  br label %do.body.660

do.body.660:                                      ; preds = %do.end.659
  %559 = load i32, i32* %A, align 4
  %560 = load i32, i32* %D, align 4
  %561 = load i32, i32* %B, align 4
  %neg661 = xor i32 %561, -1
  %or662 = or i32 %560, %neg661
  %xor663 = xor i32 %559, %or662
  %arrayidx664 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %562 = load i32, i32* %arrayidx664, align 4
  %add665 = add i32 %xor663, %562
  %add666 = add i32 %add665, -1416354905
  %563 = load i32, i32* %C, align 4
  %add667 = add i32 %563, %add666
  store i32 %add667, i32* %C, align 4
  %564 = load i32, i32* %C, align 4
  %shl668 = shl i32 %564, 15
  %565 = load i32, i32* %C, align 4
  %shr669 = lshr i32 %565, 17
  %or670 = or i32 %shl668, %shr669
  store i32 %or670, i32* %C, align 4
  %566 = load i32, i32* %D, align 4
  %567 = load i32, i32* %C, align 4
  %add671 = add i32 %567, %566
  store i32 %add671, i32* %C, align 4
  br label %do.end.672

do.end.672:                                       ; preds = %do.body.660
  br label %do.body.673

do.body.673:                                      ; preds = %do.end.672
  %568 = load i32, i32* %D, align 4
  %569 = load i32, i32* %C, align 4
  %570 = load i32, i32* %A, align 4
  %neg674 = xor i32 %570, -1
  %or675 = or i32 %569, %neg674
  %xor676 = xor i32 %568, %or675
  %arrayidx677 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %571 = load i32, i32* %arrayidx677, align 4
  %add678 = add i32 %xor676, %571
  %add679 = add i32 %add678, -57434055
  %572 = load i32, i32* %B, align 4
  %add680 = add i32 %572, %add679
  store i32 %add680, i32* %B, align 4
  %573 = load i32, i32* %B, align 4
  %shl681 = shl i32 %573, 21
  %574 = load i32, i32* %B, align 4
  %shr682 = lshr i32 %574, 11
  %or683 = or i32 %shl681, %shr682
  store i32 %or683, i32* %B, align 4
  %575 = load i32, i32* %C, align 4
  %576 = load i32, i32* %B, align 4
  %add684 = add i32 %576, %575
  store i32 %add684, i32* %B, align 4
  br label %do.end.685

do.end.685:                                       ; preds = %do.body.673
  br label %do.body.686

do.body.686:                                      ; preds = %do.end.685
  %577 = load i32, i32* %C, align 4
  %578 = load i32, i32* %B, align 4
  %579 = load i32, i32* %D, align 4
  %neg687 = xor i32 %579, -1
  %or688 = or i32 %578, %neg687
  %xor689 = xor i32 %577, %or688
  %arrayidx690 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %580 = load i32, i32* %arrayidx690, align 4
  %add691 = add i32 %xor689, %580
  %add692 = add i32 %add691, 1700485571
  %581 = load i32, i32* %A, align 4
  %add693 = add i32 %581, %add692
  store i32 %add693, i32* %A, align 4
  %582 = load i32, i32* %A, align 4
  %shl694 = shl i32 %582, 6
  %583 = load i32, i32* %A, align 4
  %shr695 = lshr i32 %583, 26
  %or696 = or i32 %shl694, %shr695
  store i32 %or696, i32* %A, align 4
  %584 = load i32, i32* %B, align 4
  %585 = load i32, i32* %A, align 4
  %add697 = add i32 %585, %584
  store i32 %add697, i32* %A, align 4
  br label %do.end.698

do.end.698:                                       ; preds = %do.body.686
  br label %do.body.699

do.body.699:                                      ; preds = %do.end.698
  %586 = load i32, i32* %B, align 4
  %587 = load i32, i32* %A, align 4
  %588 = load i32, i32* %C, align 4
  %neg700 = xor i32 %588, -1
  %or701 = or i32 %587, %neg700
  %xor702 = xor i32 %586, %or701
  %arrayidx703 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %589 = load i32, i32* %arrayidx703, align 4
  %add704 = add i32 %xor702, %589
  %add705 = add i32 %add704, -1894986606
  %590 = load i32, i32* %D, align 4
  %add706 = add i32 %590, %add705
  store i32 %add706, i32* %D, align 4
  %591 = load i32, i32* %D, align 4
  %shl707 = shl i32 %591, 10
  %592 = load i32, i32* %D, align 4
  %shr708 = lshr i32 %592, 22
  %or709 = or i32 %shl707, %shr708
  store i32 %or709, i32* %D, align 4
  %593 = load i32, i32* %A, align 4
  %594 = load i32, i32* %D, align 4
  %add710 = add i32 %594, %593
  store i32 %add710, i32* %D, align 4
  br label %do.end.711

do.end.711:                                       ; preds = %do.body.699
  br label %do.body.712

do.body.712:                                      ; preds = %do.end.711
  %595 = load i32, i32* %A, align 4
  %596 = load i32, i32* %D, align 4
  %597 = load i32, i32* %B, align 4
  %neg713 = xor i32 %597, -1
  %or714 = or i32 %596, %neg713
  %xor715 = xor i32 %595, %or714
  %arrayidx716 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %598 = load i32, i32* %arrayidx716, align 4
  %add717 = add i32 %xor715, %598
  %add718 = add i32 %add717, -1051523
  %599 = load i32, i32* %C, align 4
  %add719 = add i32 %599, %add718
  store i32 %add719, i32* %C, align 4
  %600 = load i32, i32* %C, align 4
  %shl720 = shl i32 %600, 15
  %601 = load i32, i32* %C, align 4
  %shr721 = lshr i32 %601, 17
  %or722 = or i32 %shl720, %shr721
  store i32 %or722, i32* %C, align 4
  %602 = load i32, i32* %D, align 4
  %603 = load i32, i32* %C, align 4
  %add723 = add i32 %603, %602
  store i32 %add723, i32* %C, align 4
  br label %do.end.724

do.end.724:                                       ; preds = %do.body.712
  br label %do.body.725

do.body.725:                                      ; preds = %do.end.724
  %604 = load i32, i32* %D, align 4
  %605 = load i32, i32* %C, align 4
  %606 = load i32, i32* %A, align 4
  %neg726 = xor i32 %606, -1
  %or727 = or i32 %605, %neg726
  %xor728 = xor i32 %604, %or727
  %arrayidx729 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %607 = load i32, i32* %arrayidx729, align 4
  %add730 = add i32 %xor728, %607
  %add731 = add i32 %add730, -2054922799
  %608 = load i32, i32* %B, align 4
  %add732 = add i32 %608, %add731
  store i32 %add732, i32* %B, align 4
  %609 = load i32, i32* %B, align 4
  %shl733 = shl i32 %609, 21
  %610 = load i32, i32* %B, align 4
  %shr734 = lshr i32 %610, 11
  %or735 = or i32 %shl733, %shr734
  store i32 %or735, i32* %B, align 4
  %611 = load i32, i32* %C, align 4
  %612 = load i32, i32* %B, align 4
  %add736 = add i32 %612, %611
  store i32 %add736, i32* %B, align 4
  br label %do.end.737

do.end.737:                                       ; preds = %do.body.725
  br label %do.body.738

do.body.738:                                      ; preds = %do.end.737
  %613 = load i32, i32* %C, align 4
  %614 = load i32, i32* %B, align 4
  %615 = load i32, i32* %D, align 4
  %neg739 = xor i32 %615, -1
  %or740 = or i32 %614, %neg739
  %xor741 = xor i32 %613, %or740
  %arrayidx742 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %616 = load i32, i32* %arrayidx742, align 4
  %add743 = add i32 %xor741, %616
  %add744 = add i32 %add743, 1873313359
  %617 = load i32, i32* %A, align 4
  %add745 = add i32 %617, %add744
  store i32 %add745, i32* %A, align 4
  %618 = load i32, i32* %A, align 4
  %shl746 = shl i32 %618, 6
  %619 = load i32, i32* %A, align 4
  %shr747 = lshr i32 %619, 26
  %or748 = or i32 %shl746, %shr747
  store i32 %or748, i32* %A, align 4
  %620 = load i32, i32* %B, align 4
  %621 = load i32, i32* %A, align 4
  %add749 = add i32 %621, %620
  store i32 %add749, i32* %A, align 4
  br label %do.end.750

do.end.750:                                       ; preds = %do.body.738
  br label %do.body.751

do.body.751:                                      ; preds = %do.end.750
  %622 = load i32, i32* %B, align 4
  %623 = load i32, i32* %A, align 4
  %624 = load i32, i32* %C, align 4
  %neg752 = xor i32 %624, -1
  %or753 = or i32 %623, %neg752
  %xor754 = xor i32 %622, %or753
  %arrayidx755 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %625 = load i32, i32* %arrayidx755, align 4
  %add756 = add i32 %xor754, %625
  %add757 = add i32 %add756, -30611744
  %626 = load i32, i32* %D, align 4
  %add758 = add i32 %626, %add757
  store i32 %add758, i32* %D, align 4
  %627 = load i32, i32* %D, align 4
  %shl759 = shl i32 %627, 10
  %628 = load i32, i32* %D, align 4
  %shr760 = lshr i32 %628, 22
  %or761 = or i32 %shl759, %shr760
  store i32 %or761, i32* %D, align 4
  %629 = load i32, i32* %A, align 4
  %630 = load i32, i32* %D, align 4
  %add762 = add i32 %630, %629
  store i32 %add762, i32* %D, align 4
  br label %do.end.763

do.end.763:                                       ; preds = %do.body.751
  br label %do.body.764

do.body.764:                                      ; preds = %do.end.763
  %631 = load i32, i32* %A, align 4
  %632 = load i32, i32* %D, align 4
  %633 = load i32, i32* %B, align 4
  %neg765 = xor i32 %633, -1
  %or766 = or i32 %632, %neg765
  %xor767 = xor i32 %631, %or766
  %arrayidx768 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %634 = load i32, i32* %arrayidx768, align 4
  %add769 = add i32 %xor767, %634
  %add770 = add i32 %add769, -1560198380
  %635 = load i32, i32* %C, align 4
  %add771 = add i32 %635, %add770
  store i32 %add771, i32* %C, align 4
  %636 = load i32, i32* %C, align 4
  %shl772 = shl i32 %636, 15
  %637 = load i32, i32* %C, align 4
  %shr773 = lshr i32 %637, 17
  %or774 = or i32 %shl772, %shr773
  store i32 %or774, i32* %C, align 4
  %638 = load i32, i32* %D, align 4
  %639 = load i32, i32* %C, align 4
  %add775 = add i32 %639, %638
  store i32 %add775, i32* %C, align 4
  br label %do.end.776

do.end.776:                                       ; preds = %do.body.764
  br label %do.body.777

do.body.777:                                      ; preds = %do.end.776
  %640 = load i32, i32* %D, align 4
  %641 = load i32, i32* %C, align 4
  %642 = load i32, i32* %A, align 4
  %neg778 = xor i32 %642, -1
  %or779 = or i32 %641, %neg778
  %xor780 = xor i32 %640, %or779
  %arrayidx781 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %643 = load i32, i32* %arrayidx781, align 4
  %add782 = add i32 %xor780, %643
  %add783 = add i32 %add782, 1309151649
  %644 = load i32, i32* %B, align 4
  %add784 = add i32 %644, %add783
  store i32 %add784, i32* %B, align 4
  %645 = load i32, i32* %B, align 4
  %shl785 = shl i32 %645, 21
  %646 = load i32, i32* %B, align 4
  %shr786 = lshr i32 %646, 11
  %or787 = or i32 %shl785, %shr786
  store i32 %or787, i32* %B, align 4
  %647 = load i32, i32* %C, align 4
  %648 = load i32, i32* %B, align 4
  %add788 = add i32 %648, %647
  store i32 %add788, i32* %B, align 4
  br label %do.end.789

do.end.789:                                       ; preds = %do.body.777
  br label %do.body.790

do.body.790:                                      ; preds = %do.end.789
  %649 = load i32, i32* %C, align 4
  %650 = load i32, i32* %B, align 4
  %651 = load i32, i32* %D, align 4
  %neg791 = xor i32 %651, -1
  %or792 = or i32 %650, %neg791
  %xor793 = xor i32 %649, %or792
  %arrayidx794 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %652 = load i32, i32* %arrayidx794, align 4
  %add795 = add i32 %xor793, %652
  %add796 = add i32 %add795, -145523070
  %653 = load i32, i32* %A, align 4
  %add797 = add i32 %653, %add796
  store i32 %add797, i32* %A, align 4
  %654 = load i32, i32* %A, align 4
  %shl798 = shl i32 %654, 6
  %655 = load i32, i32* %A, align 4
  %shr799 = lshr i32 %655, 26
  %or800 = or i32 %shl798, %shr799
  store i32 %or800, i32* %A, align 4
  %656 = load i32, i32* %B, align 4
  %657 = load i32, i32* %A, align 4
  %add801 = add i32 %657, %656
  store i32 %add801, i32* %A, align 4
  br label %do.end.802

do.end.802:                                       ; preds = %do.body.790
  br label %do.body.803

do.body.803:                                      ; preds = %do.end.802
  %658 = load i32, i32* %B, align 4
  %659 = load i32, i32* %A, align 4
  %660 = load i32, i32* %C, align 4
  %neg804 = xor i32 %660, -1
  %or805 = or i32 %659, %neg804
  %xor806 = xor i32 %658, %or805
  %arrayidx807 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %661 = load i32, i32* %arrayidx807, align 4
  %add808 = add i32 %xor806, %661
  %add809 = add i32 %add808, -1120210379
  %662 = load i32, i32* %D, align 4
  %add810 = add i32 %662, %add809
  store i32 %add810, i32* %D, align 4
  %663 = load i32, i32* %D, align 4
  %shl811 = shl i32 %663, 10
  %664 = load i32, i32* %D, align 4
  %shr812 = lshr i32 %664, 22
  %or813 = or i32 %shl811, %shr812
  store i32 %or813, i32* %D, align 4
  %665 = load i32, i32* %A, align 4
  %666 = load i32, i32* %D, align 4
  %add814 = add i32 %666, %665
  store i32 %add814, i32* %D, align 4
  br label %do.end.815

do.end.815:                                       ; preds = %do.body.803
  br label %do.body.816

do.body.816:                                      ; preds = %do.end.815
  %667 = load i32, i32* %A, align 4
  %668 = load i32, i32* %D, align 4
  %669 = load i32, i32* %B, align 4
  %neg817 = xor i32 %669, -1
  %or818 = or i32 %668, %neg817
  %xor819 = xor i32 %667, %or818
  %arrayidx820 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %670 = load i32, i32* %arrayidx820, align 4
  %add821 = add i32 %xor819, %670
  %add822 = add i32 %add821, 718787259
  %671 = load i32, i32* %C, align 4
  %add823 = add i32 %671, %add822
  store i32 %add823, i32* %C, align 4
  %672 = load i32, i32* %C, align 4
  %shl824 = shl i32 %672, 15
  %673 = load i32, i32* %C, align 4
  %shr825 = lshr i32 %673, 17
  %or826 = or i32 %shl824, %shr825
  store i32 %or826, i32* %C, align 4
  %674 = load i32, i32* %D, align 4
  %675 = load i32, i32* %C, align 4
  %add827 = add i32 %675, %674
  store i32 %add827, i32* %C, align 4
  br label %do.end.828

do.end.828:                                       ; preds = %do.body.816
  br label %do.body.829

do.body.829:                                      ; preds = %do.end.828
  %676 = load i32, i32* %D, align 4
  %677 = load i32, i32* %C, align 4
  %678 = load i32, i32* %A, align 4
  %neg830 = xor i32 %678, -1
  %or831 = or i32 %677, %neg830
  %xor832 = xor i32 %676, %or831
  %arrayidx833 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %679 = load i32, i32* %arrayidx833, align 4
  %add834 = add i32 %xor832, %679
  %add835 = add i32 %add834, -343485551
  %680 = load i32, i32* %B, align 4
  %add836 = add i32 %680, %add835
  store i32 %add836, i32* %B, align 4
  %681 = load i32, i32* %B, align 4
  %shl837 = shl i32 %681, 21
  %682 = load i32, i32* %B, align 4
  %shr838 = lshr i32 %682, 11
  %or839 = or i32 %shl837, %shr838
  store i32 %or839, i32* %B, align 4
  %683 = load i32, i32* %C, align 4
  %684 = load i32, i32* %B, align 4
  %add840 = add i32 %684, %683
  store i32 %add840, i32* %B, align 4
  br label %do.end.841

do.end.841:                                       ; preds = %do.body.829
  %685 = load i32, i32* %A_save, align 4
  %686 = load i32, i32* %A, align 4
  %add842 = add i32 %686, %685
  store i32 %add842, i32* %A, align 4
  %687 = load i32, i32* %B_save, align 4
  %688 = load i32, i32* %B, align 4
  %add843 = add i32 %688, %687
  store i32 %add843, i32* %B, align 4
  %689 = load i32, i32* %C_save, align 4
  %690 = load i32, i32* %C, align 4
  %add844 = add i32 %690, %689
  store i32 %add844, i32* %C, align 4
  %691 = load i32, i32* %D_save, align 4
  %692 = load i32, i32* %D, align 4
  %add845 = add i32 %692, %691
  store i32 %add845, i32* %D, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %693 = load i32, i32* %A, align 4
  %694 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A846 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %694, i32 0, i32 0
  store i32 %693, i32* %A846, align 4
  %695 = load i32, i32* %B, align 4
  %696 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B847 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %696, i32 0, i32 1
  store i32 %695, i32* %B847, align 4
  %697 = load i32, i32* %C, align 4
  %698 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C848 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %698, i32 0, i32 2
  store i32 %697, i32* %C848, align 4
  %699 = load i32, i32* %D, align 4
  %700 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D849 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %700, i32 0, i32 3
  store i32 %699, i32* %D849, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @md5_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.md5_ctx, align 4
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
  call void @md5_init_ctx(%struct.md5_ctx* %ctx) #1
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
  call void @md5_process_block(i8* %12, i64 32768, %struct.md5_ctx* %ctx) #1
  br label %while.body

process_partial_block:                            ; preds = %if.then.15, %if.end.11
  %13 = load i64, i64* %sum, align 8
  %cmp17 = icmp ugt i64 %13, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %process_partial_block
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i64, i64* %sum, align 8
  call void @md5_process_bytes(i8* %14, i64 %15, %struct.md5_ctx* %ctx) #1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %process_partial_block
  %16 = load i8*, i8** %resblock.addr, align 8
  %call20 = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %16) #1
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
define void @md5_process_bytes(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  %left_over50 = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %0 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i32 0, i32 5
  %1 = load i32, i32* %buflen, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.29

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
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buffer5, i32 0, i32 0
  %10 = bitcast i32* %arraydecay to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %8
  %11 = load i8*, i8** %buffer.addr, align 8
  %12 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %add, align 8
  %14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %14, i32 0, i32 5
  %15 = load i32, i32* %buflen6, align 4
  %conv7 = zext i32 %15 to i64
  %add8 = add i64 %conv7, %13
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %buflen6, align 4
  %16 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %16, i32 0, i32 5
  %17 = load i32, i32* %buflen10, align 4
  %cmp11 = icmp ugt i32 %17, 64
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %cond.end
  %18 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %18, i32 0, i32 6
  %arraydecay15 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer14, i32 0, i32 0
  %19 = bitcast i32* %arraydecay15 to i8*
  %20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %20, i32 0, i32 5
  %21 = load i32, i32* %buflen16, align 4
  %and = and i32 %21, -64
  %conv17 = zext i32 %and to i64
  %22 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %19, i64 %conv17, %struct.md5_ctx* %22) #1
  %23 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %23, i32 0, i32 5
  %24 = load i32, i32* %buflen18, align 4
  %and19 = and i32 %24, 63
  store i32 %and19, i32* %buflen18, align 4
  %25 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer20 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %25, i32 0, i32 6
  %26 = bitcast [32 x i32]* %buffer20 to i8*
  %27 = load i64, i64* %left_over, align 8
  %28 = load i64, i64* %add, align 8
  %add21 = add i64 %27, %28
  %and22 = and i64 %add21, -64
  %29 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %29, i32 0, i32 6
  %arraydecay24 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer23, i32 0, i32 0
  %30 = bitcast i32* %arraydecay24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 %and22
  %31 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen26 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %31, i32 0, i32 5
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
  %41 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer38 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %41, i32 0, i32 6
  %42 = bitcast [32 x i32]* %buffer38 to i8*
  %43 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 1, i1 false)
  %44 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %42, i64 64, %struct.md5_ctx* %44) #1
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
  %49 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %47, i64 %and41, %struct.md5_ctx* %49) #1
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
  %54 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen51 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %54, i32 0, i32 5
  %55 = load i32, i32* %buflen51, align 4
  %conv52 = zext i32 %55 to i64
  store i64 %conv52, i64* %left_over50, align 8
  %56 = load i64, i64* %left_over50, align 8
  %57 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer53 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %57, i32 0, i32 6
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
  %64 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer60 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %64, i32 0, i32 6
  %arraydecay61 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer60, i32 0, i32 0
  %65 = bitcast i32* %arraydecay61 to i8*
  %66 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %65, i64 64, %struct.md5_ctx* %66) #1
  %67 = load i64, i64* %left_over50, align 8
  %sub62 = sub i64 %67, 64
  store i64 %sub62, i64* %left_over50, align 8
  %68 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer63 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %68, i32 0, i32 6
  %69 = bitcast [32 x i32]* %buffer63 to i8*
  %70 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer64 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %70, i32 0, i32 6
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %buffer64, i32 0, i64 16
  %71 = bitcast i32* %arrayidx65 to i8*
  %72 = load i64, i64* %left_over50, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 %72, i32 4, i1 false)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.then.49
  %73 = load i64, i64* %left_over50, align 8
  %conv67 = trunc i64 %73 to i32
  %74 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen68 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %74, i32 0, i32 5
  store i32 %conv67, i32* %buflen68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %if.end.46
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
  call void @md5_init_ctx(%struct.md5_ctx* %ctx) #1
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* %ctx) #1
  %2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %2) #1
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
