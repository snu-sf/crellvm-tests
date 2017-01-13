; ModuleID = './MultiSource.Benchmarks.FreeBench/15.pcompress2.arithmetic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rle_pos = common global i32 0, align 4
@ari_pos = common global i32 0, align 4
@rle = external global i8*, align 8
@char_to_index = internal global [256 x i32] zeroinitializer, align 16
@cum_freq = internal global [258 x i32] zeroinitializer, align 16
@low = common global i64 0, align 8
@high = common global i64 0, align 8
@bits_to_follow = common global i64 0, align 8
@buffer = internal global i32 0, align 4
@bits_to_go = internal global i32 0, align 4
@ari = external global i8*, align 8
@index_to_char = internal global [258 x i8] zeroinitializer, align 16
@freq = internal global [258 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @do_ari(i32 %insize) #0 {
entry:
  %insize.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i32 %insize, i32* %insize.addr, align 4
  store i32 0, i32* @rle_pos, align 4
  store i32 0, i32* @ari_pos, align 4
  call void @start_model()
  call void @start_outputing_bits()
  call void @start_encoding()
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i32, i32* @rle_pos, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @rle_pos, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load i8*, i8** @rle, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %ch, align 4
  %3 = load i32, i32* @rle_pos, align 4
  %4 = load i32, i32* %insize.addr, align 4
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load i32, i32* %ch, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %symbol, align 4
  %7 = load i32, i32* %symbol, align 4
  call void @encode_symbol(i32 %7, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i32 0, i32 0))
  %8 = load i32, i32* %symbol, align 4
  call void @update_model(i32 %8)
  br label %for.cond

for.end:                                          ; preds = %if.then
  call void @encode_symbol(i32 257, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i32 0, i32 0))
  call void @done_encoding()
  call void @done_outputing_bits()
  %9 = load i32, i32* @ari_pos, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @start_model() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i32 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %4, 1
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %6, 257
  br i1 %cmp5, label %for.body.7, label %for.end.14

for.body.7:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom8
  store i32 1, i32* %arrayidx9, align 4
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 257, %8
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i32 0, i64 %idxprom10
  store i32 %sub, i32* %arrayidx11, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.7
  %10 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  store i32 0, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @freq, i32 0, i64 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_outputing_bits() #0 {
entry:
  store i32 0, i32* @buffer, align 4
  store i32 8, i32* @bits_to_go, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_encoding() #0 {
entry:
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  store i64 0, i64* @bits_to_follow, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode_symbol(i32 %symbol, i32* %cum_freq) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %cum_freq.addr = alloca i32*, align 8
  %range = alloca i64, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32* %cum_freq, i32** %cum_freq.addr, align 8
  %0 = load i64, i64* @high, align 8
  %1 = load i64, i64* @low, align 8
  %sub = sub nsw i64 %0, %1
  %add = add nsw i64 %sub, 1
  store i64 %add, i64* %range, align 8
  %2 = load i64, i64* @low, align 8
  %3 = load i64, i64* %range, align 8
  %4 = load i32, i32* %symbol.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub1 to i64
  %5 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %6 to i64
  %mul = mul nsw i64 %3, %conv
  %7 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %conv3 = sext i32 %8 to i64
  %div = sdiv i64 %mul, %conv3
  %add4 = add nsw i64 %2, %div
  %sub5 = sub nsw i64 %add4, 1
  store i64 %sub5, i64* @high, align 8
  %9 = load i64, i64* @low, align 8
  %10 = load i64, i64* %range, align 8
  %11 = load i32, i32* %symbol.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %conv8 = sext i32 %13 to i64
  %mul9 = mul nsw i64 %10, %conv8
  %14 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx10, align 4
  %conv11 = sext i32 %15 to i64
  %div12 = sdiv i64 %mul9, %conv11
  %add13 = add nsw i64 %9, %div12
  store i64 %add13, i64* @low, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.31, %entry
  %16 = load i64, i64* @high, align 8
  %cmp = icmp slt i64 %16, 32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  call void @bit_plus_follow(i32 0)
  br label %if.end.31

if.else:                                          ; preds = %for.cond
  %17 = load i64, i64* @low, align 8
  %cmp15 = icmp sge i64 %17, 32768
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else
  call void @bit_plus_follow(i32 1)
  %18 = load i64, i64* @low, align 8
  %sub18 = sub nsw i64 %18, 32768
  store i64 %sub18, i64* @low, align 8
  %19 = load i64, i64* @high, align 8
  %sub19 = sub nsw i64 %19, 32768
  store i64 %sub19, i64* @high, align 8
  br label %if.end.30

if.else.20:                                       ; preds = %if.else
  %20 = load i64, i64* @low, align 8
  %cmp21 = icmp sge i64 %20, 16384
  br i1 %cmp21, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else.20
  %21 = load i64, i64* @high, align 8
  %cmp23 = icmp slt i64 %21, 49152
  br i1 %cmp23, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %land.lhs.true
  %22 = load i64, i64* @bits_to_follow, align 8
  %add26 = add nsw i64 %22, 1
  store i64 %add26, i64* @bits_to_follow, align 8
  %23 = load i64, i64* @low, align 8
  %sub27 = sub nsw i64 %23, 16384
  store i64 %sub27, i64* @low, align 8
  %24 = load i64, i64* @high, align 8
  %sub28 = sub nsw i64 %24, 16384
  store i64 %sub28, i64* @high, align 8
  br label %if.end

if.else.29:                                       ; preds = %land.lhs.true, %if.else.20
  br label %for.end

if.end:                                           ; preds = %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.17
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %25 = load i64, i64* @low, align 8
  %mul32 = mul nsw i64 2, %25
  store i64 %mul32, i64* @low, align 8
  %26 = load i64, i64* @high, align 8
  %mul33 = mul nsw i64 2, %26
  %add34 = add nsw i64 %mul33, 1
  store i64 %add34, i64* @high, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_model(i32 %symbol) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cum = alloca i32, align 4
  %ch_i = alloca i32, align 4
  %ch_symbol = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i32 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 16383
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %cum, align 4
  store i32 257, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, 1
  %div = sdiv i32 %add, 2
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom2
  store i32 %div, i32* %arrayidx3, align 4
  %5 = load i32, i32* %cum, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i32 0, i64 %idxprom4
  store i32 %5, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %cum, align 4
  %add8 = add nsw i32 %9, %8
  store i32 %add8, i32* %cum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, i32* %symbol.addr, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %if.end
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom10
  %13 = load i32, i32* %arrayidx11, align 4
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %13, %15
  br i1 %cmp14, label %for.body.15, label %for.end.18

for.body.15:                                      ; preds = %for.cond.9
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.15
  %16 = load i32, i32* %i, align 4
  %dec17 = add nsw i32 %16, -1
  store i32 %dec17, i32* %i, align 4
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %symbol.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %if.then.20, label %if.end.36

if.then.20:                                       ; preds = %for.end.18
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom21
  %20 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %ch_i, align 4
  %21 = load i32, i32* %symbol.addr, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom23
  %22 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %22 to i32
  store i32 %conv25, i32* %ch_symbol, align 4
  %23 = load i32, i32* %ch_symbol, align 4
  %conv26 = trunc i32 %23 to i8
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx28, align 1
  %25 = load i32, i32* %ch_i, align 4
  %conv29 = trunc i32 %25 to i8
  %26 = load i32, i32* %symbol.addr, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  %27 = load i32, i32* %symbol.addr, align 4
  %28 = load i32, i32* %ch_i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i32 0, i64 %idxprom32
  store i32 %27, i32* %arrayidx33, align 4
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %ch_symbol, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i32 0, i64 %idxprom34
  store i32 %29, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.20, %for.end.18
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i32 0, i64 %idxprom37
  %32 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %32, 1
  store i32 %add39, i32* %arrayidx38, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.36
  %33 = load i32, i32* %i, align 4
  %cmp40 = icmp sgt i32 %33, 0
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 %34, 1
  store i32 %sub42, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i32 0, i64 %idxprom43
  %36 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %36, 1
  store i32 %add45, i32* %arrayidx44, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @done_encoding() #0 {
entry:
  %0 = load i64, i64* @bits_to_follow, align 8
  %add = add nsw i64 %0, 1
  store i64 %add, i64* @bits_to_follow, align 8
  %1 = load i64, i64* @low, align 8
  %cmp = icmp slt i64 %1, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @bit_plus_follow(i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @bit_plus_follow(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @done_outputing_bits() #0 {
entry:
  %0 = load i32, i32* @buffer, align 4
  %1 = load i32, i32* @bits_to_go, align 4
  %shr = ashr i32 %0, %1
  %conv = trunc i32 %shr to i8
  %2 = load i32, i32* @ari_pos, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* @ari_pos, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8*, i8** @ari, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bit_plus_follow(i32 %bit) #0 {
entry:
  %bit.addr = alloca i32, align 4
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load i32, i32* %bit.addr, align 4
  call void @output_bit(i32 %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* @bits_to_follow, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %bit.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @output_bit(i32 %lnot.ext)
  %3 = load i64, i64* @bits_to_follow, align 8
  %sub = sub nsw i64 %3, 1
  store i64 %sub, i64* @bits_to_follow, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_bit(i32 %bit) #0 {
entry:
  %bit.addr = alloca i32, align 4
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load i32, i32* @buffer, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* @buffer, align 4
  %1 = load i32, i32* %bit.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @buffer, align 4
  %or = or i32 %2, 128
  store i32 %or, i32* @buffer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @bits_to_go, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* @bits_to_go, align 4
  %4 = load i32, i32* @bits_to_go, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* @buffer, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i32, i32* @ari_pos, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* @ari_pos, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load i8*, i8** @ari, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  store i32 8, i32* @bits_to_go, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
