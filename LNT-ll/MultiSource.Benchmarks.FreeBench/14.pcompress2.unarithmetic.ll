; ModuleID = './MultiSource.Benchmarks.FreeBench/14.pcompress2.unarithmetic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@in_size = common global i32 0, align 4
@in_pos = common global i32 0, align 4
@deari_pos = common global i32 0, align 4
@cum_freq = common global [258 x i32] zeroinitializer, align 16
@index_to_char = common global [258 x i8] zeroinitializer, align 16
@deari = external global i8*, align 8
@char_to_index = common global [256 x i32] zeroinitializer, align 16
@freq = common global [258 x i32] zeroinitializer, align 16
@buffer = common global i32 0, align 4
@bits_to_go = common global i32 0, align 4
@garbage_bits = common global i32 0, align 4
@value = internal global i64 0, align 8
@low = internal global i64 0, align 8
@high = internal global i64 0, align 8
@in = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @do_deari(i32 %insize) #0 {
entry:
  %insize.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i32 %insize, i32* %insize.addr, align 4
  %0 = load i32, i32* %insize.addr, align 4
  store i32 %0, i32* @in_size, align 4
  store i32 0, i32* @in_pos, align 4
  store i32 0, i32* @deari_pos, align 4
  call void @start_model()
  call void @start_inputing_bits()
  call void @start_decoding()
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call = call i32 @decode_symbol(i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i32 0, i32 0))
  store i32 %call, i32* %symbol, align 4
  %1 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %1, 257
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load i32, i32* %symbol, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %ch, align 4
  %4 = load i32, i32* %ch, align 4
  %conv1 = trunc i32 %4 to i8
  %5 = load i32, i32* @deari_pos, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* @deari_pos, align 4
  %idxprom2 = zext i32 %5 to i64
  %6 = load i8*, i8** @deari, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  store i8 %conv1, i8* %arrayidx3, align 1
  %7 = load i32, i32* %symbol, align 4
  call void @update_model(i32 %7)
  br label %for.cond

for.end:                                          ; preds = %if.then
  %8 = load i32, i32* @deari_pos, align 4
  ret i32 %8
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
define internal void @start_inputing_bits() #0 {
entry:
  store i32 0, i32* @bits_to_go, align 4
  store i32 0, i32* @garbage_bits, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_decoding() #0 {
entry:
  %i = alloca i32, align 4
  store i64 0, i64* @value, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* @value, align 8
  %mul = mul nsw i64 2, %1
  %call = call i32 @input_bit()
  %conv = sext i32 %call to i64
  %add = add nsw i64 %mul, %conv
  store i64 %add, i64* @value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_symbol(i32* %cum_freq) #0 {
entry:
  %cum_freq.addr = alloca i32*, align 8
  %range = alloca i64, align 8
  %cum = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i32* %cum_freq, i32** %cum_freq.addr, align 8
  %0 = load i64, i64* @high, align 8
  %1 = load i64, i64* @low, align 8
  %sub = sub nsw i64 %0, %1
  %add = add nsw i64 %sub, 1
  store i64 %add, i64* %range, align 8
  %2 = load i64, i64* @value, align 8
  %3 = load i64, i64* @low, align 8
  %sub1 = sub nsw i64 %2, %3
  %add2 = add nsw i64 %sub1, 1
  %4 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %5 to i64
  %mul = mul nsw i64 %add2, %conv
  %sub3 = sub nsw i64 %mul, 1
  %6 = load i64, i64* %range, align 8
  %div = sdiv i64 %sub3, %6
  %conv4 = trunc i64 %div to i32
  store i32 %conv4, i32* %cum, align 4
  store i32 1, i32* %symbol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %symbol, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %cum, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %symbol, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %symbol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* @low, align 8
  %13 = load i64, i64* %range, align 8
  %14 = load i32, i32* %symbol, align 4
  %sub7 = sub nsw i32 %14, 1
  %idxprom8 = sext i32 %sub7 to i64
  %15 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %conv10 = sext i32 %16 to i64
  %mul11 = mul nsw i64 %13, %conv10
  %17 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx12, align 4
  %conv13 = sext i32 %18 to i64
  %div14 = sdiv i64 %mul11, %conv13
  %add15 = add nsw i64 %12, %div14
  %sub16 = sub nsw i64 %add15, 1
  store i64 %sub16, i64* @high, align 8
  %19 = load i64, i64* @low, align 8
  %20 = load i64, i64* %range, align 8
  %21 = load i32, i32* %symbol, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %22, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  %conv19 = sext i32 %23 to i64
  %mul20 = mul nsw i64 %20, %conv19
  %24 = load i32*, i32** %cum_freq.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx21, align 4
  %conv22 = sext i32 %25 to i64
  %div23 = sdiv i64 %mul20, %conv22
  %add24 = add nsw i64 %19, %div23
  store i64 %add24, i64* @low, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %if.end.45, %for.end
  %26 = load i64, i64* @high, align 8
  %cmp26 = icmp slt i64 %26, 32768
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond.25
  br label %if.end.45

if.else:                                          ; preds = %for.cond.25
  %27 = load i64, i64* @low, align 8
  %cmp28 = icmp sge i64 %27, 32768
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.else
  %28 = load i64, i64* @value, align 8
  %sub31 = sub nsw i64 %28, 32768
  store i64 %sub31, i64* @value, align 8
  %29 = load i64, i64* @low, align 8
  %sub32 = sub nsw i64 %29, 32768
  store i64 %sub32, i64* @low, align 8
  %30 = load i64, i64* @high, align 8
  %sub33 = sub nsw i64 %30, 32768
  store i64 %sub33, i64* @high, align 8
  br label %if.end.44

if.else.34:                                       ; preds = %if.else
  %31 = load i64, i64* @low, align 8
  %cmp35 = icmp sge i64 %31, 16384
  br i1 %cmp35, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %if.else.34
  %32 = load i64, i64* @high, align 8
  %cmp37 = icmp slt i64 %32, 49152
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %land.lhs.true
  %33 = load i64, i64* @value, align 8
  %sub40 = sub nsw i64 %33, 16384
  store i64 %sub40, i64* @value, align 8
  %34 = load i64, i64* @low, align 8
  %sub41 = sub nsw i64 %34, 16384
  store i64 %sub41, i64* @low, align 8
  %35 = load i64, i64* @high, align 8
  %sub42 = sub nsw i64 %35, 16384
  store i64 %sub42, i64* @high, align 8
  br label %if.end

if.else.43:                                       ; preds = %land.lhs.true, %if.else.34
  br label %for.end.52

if.end:                                           ; preds = %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.then.30
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  %36 = load i64, i64* @low, align 8
  %mul46 = mul nsw i64 2, %36
  store i64 %mul46, i64* @low, align 8
  %37 = load i64, i64* @high, align 8
  %mul47 = mul nsw i64 2, %37
  %add48 = add nsw i64 %mul47, 1
  store i64 %add48, i64* @high, align 8
  %38 = load i64, i64* @value, align 8
  %mul49 = mul nsw i64 2, %38
  %call = call i32 @input_bit()
  %conv50 = sext i32 %call to i64
  %add51 = add nsw i64 %mul49, %conv50
  store i64 %add51, i64* @value, align 8
  br label %for.cond.25

for.end.52:                                       ; preds = %if.else.43
  %39 = load i32, i32* %symbol, align 4
  ret i32 %39
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
define internal i32 @input_bit() #0 {
entry:
  %t = alloca i32, align 4
  %0 = load i32, i32* @bits_to_go, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @in_pos, align 4
  %2 = load i32, i32* @in_size, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @in_pos, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* @in_pos, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** @in, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* @buffer, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* @garbage_bits, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* @garbage_bits, align 4
  %7 = load i32, i32* @garbage_bits, align 4
  %cmp3 = icmp sgt i32 %7, 14
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #3
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.2
  store i32 8, i32* @bits_to_go, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %9 = load i32, i32* @buffer, align 4
  %and = and i32 %9, 1
  store i32 %and, i32* %t, align 4
  %10 = load i32, i32* @buffer, align 4
  %shr = ashr i32 %10, 1
  store i32 %shr, i32* @buffer, align 4
  %11 = load i32, i32* @bits_to_go, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* @bits_to_go, align 4
  %12 = load i32, i32* %t, align 4
  ret i32 %12
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
