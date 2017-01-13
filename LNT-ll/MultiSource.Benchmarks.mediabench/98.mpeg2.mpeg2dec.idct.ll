; ModuleID = './MultiSource.Benchmarks.mediabench/98.mpeg2.mpeg2dec.idct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iclip = internal global [1024 x i16] zeroinitializer, align 16
@iclp = internal global i16* null, align 8

; Function Attrs: nounwind uwtable
define void @Fast_IDCT(i16* %block) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %block, i16** %block.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %block.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 8, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 %idx.ext
  call void @idctrow(i16* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 8
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i16*, i16** %block.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext4 = sext i32 %6 to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %5, i64 %idx.ext4
  call void @idctcol(i16* %add.ptr5)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idctrow(i16* %blk) #0 {
entry:
  %blk.addr = alloca i16*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  store i16* %blk, i16** %blk.addr, align 8
  %0 = load i16*, i16** %blk.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 4
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %shl = shl i32 %conv, 11
  store i32 %shl, i32* %x1, align 4
  %2 = load i16*, i16** %blk.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 6
  %3 = load i16, i16* %arrayidx1, align 2
  %conv2 = sext i16 %3 to i32
  store i32 %conv2, i32* %x2, align 4
  %or = or i32 %shl, %conv2
  %4 = load i16*, i16** %blk.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 2
  %5 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %5 to i32
  store i32 %conv4, i32* %x3, align 4
  %or5 = or i32 %or, %conv4
  %6 = load i16*, i16** %blk.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %7 to i32
  store i32 %conv7, i32* %x4, align 4
  %or8 = or i32 %or5, %conv7
  %8 = load i16*, i16** %blk.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 7
  %9 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %9 to i32
  store i32 %conv10, i32* %x5, align 4
  %or11 = or i32 %or8, %conv10
  %10 = load i16*, i16** %blk.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %10, i64 5
  %11 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %11 to i32
  store i32 %conv13, i32* %x6, align 4
  %or14 = or i32 %or11, %conv13
  %12 = load i16*, i16** %blk.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %12, i64 3
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %13 to i32
  store i32 %conv16, i32* %x7, align 4
  %or17 = or i32 %or14, %conv16
  %tobool = icmp ne i32 %or17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i16*, i16** %blk.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %15 to i32
  %shl20 = shl i32 %conv19, 3
  %conv21 = trunc i32 %shl20 to i16
  %16 = load i16*, i16** %blk.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 7
  store i16 %conv21, i16* %arrayidx22, align 2
  %17 = load i16*, i16** %blk.addr, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %17, i64 6
  store i16 %conv21, i16* %arrayidx23, align 2
  %18 = load i16*, i16** %blk.addr, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %18, i64 5
  store i16 %conv21, i16* %arrayidx24, align 2
  %19 = load i16*, i16** %blk.addr, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %19, i64 4
  store i16 %conv21, i16* %arrayidx25, align 2
  %20 = load i16*, i16** %blk.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %20, i64 3
  store i16 %conv21, i16* %arrayidx26, align 2
  %21 = load i16*, i16** %blk.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv21, i16* %arrayidx27, align 2
  %22 = load i16*, i16** %blk.addr, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv21, i16* %arrayidx28, align 2
  %23 = load i16*, i16** %blk.addr, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 %conv21, i16* %arrayidx29, align 2
  br label %return

if.end:                                           ; preds = %entry
  %24 = load i16*, i16** %blk.addr, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %24, i64 0
  %25 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %25 to i32
  %shl32 = shl i32 %conv31, 11
  %add = add nsw i32 %shl32, 128
  store i32 %add, i32* %x0, align 4
  %26 = load i32, i32* %x4, align 4
  %27 = load i32, i32* %x5, align 4
  %add33 = add nsw i32 %26, %27
  %mul = mul nsw i32 565, %add33
  store i32 %mul, i32* %x8, align 4
  %28 = load i32, i32* %x8, align 4
  %29 = load i32, i32* %x4, align 4
  %mul34 = mul nsw i32 2276, %29
  %add35 = add nsw i32 %28, %mul34
  store i32 %add35, i32* %x4, align 4
  %30 = load i32, i32* %x8, align 4
  %31 = load i32, i32* %x5, align 4
  %mul36 = mul nsw i32 3406, %31
  %sub = sub nsw i32 %30, %mul36
  store i32 %sub, i32* %x5, align 4
  %32 = load i32, i32* %x6, align 4
  %33 = load i32, i32* %x7, align 4
  %add37 = add nsw i32 %32, %33
  %mul38 = mul nsw i32 2408, %add37
  store i32 %mul38, i32* %x8, align 4
  %34 = load i32, i32* %x8, align 4
  %35 = load i32, i32* %x6, align 4
  %mul39 = mul nsw i32 799, %35
  %sub40 = sub nsw i32 %34, %mul39
  store i32 %sub40, i32* %x6, align 4
  %36 = load i32, i32* %x8, align 4
  %37 = load i32, i32* %x7, align 4
  %mul41 = mul nsw i32 4017, %37
  %sub42 = sub nsw i32 %36, %mul41
  store i32 %sub42, i32* %x7, align 4
  %38 = load i32, i32* %x0, align 4
  %39 = load i32, i32* %x1, align 4
  %add43 = add nsw i32 %38, %39
  store i32 %add43, i32* %x8, align 4
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %x0, align 4
  %sub44 = sub nsw i32 %41, %40
  store i32 %sub44, i32* %x0, align 4
  %42 = load i32, i32* %x3, align 4
  %43 = load i32, i32* %x2, align 4
  %add45 = add nsw i32 %42, %43
  %mul46 = mul nsw i32 1108, %add45
  store i32 %mul46, i32* %x1, align 4
  %44 = load i32, i32* %x1, align 4
  %45 = load i32, i32* %x2, align 4
  %mul47 = mul nsw i32 3784, %45
  %sub48 = sub nsw i32 %44, %mul47
  store i32 %sub48, i32* %x2, align 4
  %46 = load i32, i32* %x1, align 4
  %47 = load i32, i32* %x3, align 4
  %mul49 = mul nsw i32 1568, %47
  %add50 = add nsw i32 %46, %mul49
  store i32 %add50, i32* %x3, align 4
  %48 = load i32, i32* %x4, align 4
  %49 = load i32, i32* %x6, align 4
  %add51 = add nsw i32 %48, %49
  store i32 %add51, i32* %x1, align 4
  %50 = load i32, i32* %x6, align 4
  %51 = load i32, i32* %x4, align 4
  %sub52 = sub nsw i32 %51, %50
  store i32 %sub52, i32* %x4, align 4
  %52 = load i32, i32* %x5, align 4
  %53 = load i32, i32* %x7, align 4
  %add53 = add nsw i32 %52, %53
  store i32 %add53, i32* %x6, align 4
  %54 = load i32, i32* %x7, align 4
  %55 = load i32, i32* %x5, align 4
  %sub54 = sub nsw i32 %55, %54
  store i32 %sub54, i32* %x5, align 4
  %56 = load i32, i32* %x8, align 4
  %57 = load i32, i32* %x3, align 4
  %add55 = add nsw i32 %56, %57
  store i32 %add55, i32* %x7, align 4
  %58 = load i32, i32* %x3, align 4
  %59 = load i32, i32* %x8, align 4
  %sub56 = sub nsw i32 %59, %58
  store i32 %sub56, i32* %x8, align 4
  %60 = load i32, i32* %x0, align 4
  %61 = load i32, i32* %x2, align 4
  %add57 = add nsw i32 %60, %61
  store i32 %add57, i32* %x3, align 4
  %62 = load i32, i32* %x2, align 4
  %63 = load i32, i32* %x0, align 4
  %sub58 = sub nsw i32 %63, %62
  store i32 %sub58, i32* %x0, align 4
  %64 = load i32, i32* %x4, align 4
  %65 = load i32, i32* %x5, align 4
  %add59 = add nsw i32 %64, %65
  %mul60 = mul nsw i32 181, %add59
  %add61 = add nsw i32 %mul60, 128
  %shr = ashr i32 %add61, 8
  store i32 %shr, i32* %x2, align 4
  %66 = load i32, i32* %x4, align 4
  %67 = load i32, i32* %x5, align 4
  %sub62 = sub nsw i32 %66, %67
  %mul63 = mul nsw i32 181, %sub62
  %add64 = add nsw i32 %mul63, 128
  %shr65 = ashr i32 %add64, 8
  store i32 %shr65, i32* %x4, align 4
  %68 = load i32, i32* %x7, align 4
  %69 = load i32, i32* %x1, align 4
  %add66 = add nsw i32 %68, %69
  %shr67 = ashr i32 %add66, 8
  %conv68 = trunc i32 %shr67 to i16
  %70 = load i16*, i16** %blk.addr, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %70, i64 0
  store i16 %conv68, i16* %arrayidx69, align 2
  %71 = load i32, i32* %x3, align 4
  %72 = load i32, i32* %x2, align 4
  %add70 = add nsw i32 %71, %72
  %shr71 = ashr i32 %add70, 8
  %conv72 = trunc i32 %shr71 to i16
  %73 = load i16*, i16** %blk.addr, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %73, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2
  %74 = load i32, i32* %x0, align 4
  %75 = load i32, i32* %x4, align 4
  %add74 = add nsw i32 %74, %75
  %shr75 = ashr i32 %add74, 8
  %conv76 = trunc i32 %shr75 to i16
  %76 = load i16*, i16** %blk.addr, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %76, i64 2
  store i16 %conv76, i16* %arrayidx77, align 2
  %77 = load i32, i32* %x8, align 4
  %78 = load i32, i32* %x6, align 4
  %add78 = add nsw i32 %77, %78
  %shr79 = ashr i32 %add78, 8
  %conv80 = trunc i32 %shr79 to i16
  %79 = load i16*, i16** %blk.addr, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %79, i64 3
  store i16 %conv80, i16* %arrayidx81, align 2
  %80 = load i32, i32* %x8, align 4
  %81 = load i32, i32* %x6, align 4
  %sub82 = sub nsw i32 %80, %81
  %shr83 = ashr i32 %sub82, 8
  %conv84 = trunc i32 %shr83 to i16
  %82 = load i16*, i16** %blk.addr, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %82, i64 4
  store i16 %conv84, i16* %arrayidx85, align 2
  %83 = load i32, i32* %x0, align 4
  %84 = load i32, i32* %x4, align 4
  %sub86 = sub nsw i32 %83, %84
  %shr87 = ashr i32 %sub86, 8
  %conv88 = trunc i32 %shr87 to i16
  %85 = load i16*, i16** %blk.addr, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %85, i64 5
  store i16 %conv88, i16* %arrayidx89, align 2
  %86 = load i32, i32* %x3, align 4
  %87 = load i32, i32* %x2, align 4
  %sub90 = sub nsw i32 %86, %87
  %shr91 = ashr i32 %sub90, 8
  %conv92 = trunc i32 %shr91 to i16
  %88 = load i16*, i16** %blk.addr, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %88, i64 6
  store i16 %conv92, i16* %arrayidx93, align 2
  %89 = load i32, i32* %x7, align 4
  %90 = load i32, i32* %x1, align 4
  %sub94 = sub nsw i32 %89, %90
  %shr95 = ashr i32 %sub94, 8
  %conv96 = trunc i32 %shr95 to i16
  %91 = load i16*, i16** %blk.addr, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %91, i64 7
  store i16 %conv96, i16* %arrayidx97, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idctcol(i16* %blk) #0 {
entry:
  %blk.addr = alloca i16*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  store i16* %blk, i16** %blk.addr, align 8
  %0 = load i16*, i16** %blk.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 32
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, i32* %x1, align 4
  %2 = load i16*, i16** %blk.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 48
  %3 = load i16, i16* %arrayidx1, align 2
  %conv2 = sext i16 %3 to i32
  store i32 %conv2, i32* %x2, align 4
  %or = or i32 %shl, %conv2
  %4 = load i16*, i16** %blk.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 16
  %5 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %5 to i32
  store i32 %conv4, i32* %x3, align 4
  %or5 = or i32 %or, %conv4
  %6 = load i16*, i16** %blk.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 8
  %7 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %7 to i32
  store i32 %conv7, i32* %x4, align 4
  %or8 = or i32 %or5, %conv7
  %8 = load i16*, i16** %blk.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 56
  %9 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %9 to i32
  store i32 %conv10, i32* %x5, align 4
  %or11 = or i32 %or8, %conv10
  %10 = load i16*, i16** %blk.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %10, i64 40
  %11 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %11 to i32
  store i32 %conv13, i32* %x6, align 4
  %or14 = or i32 %or11, %conv13
  %12 = load i16*, i16** %blk.addr, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %12, i64 24
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %13 to i32
  store i32 %conv16, i32* %x7, align 4
  %or17 = or i32 %or14, %conv16
  %tobool = icmp ne i32 %or17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i16*, i16** %blk.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %15 to i32
  %add = add nsw i32 %conv19, 32
  %shr = ashr i32 %add, 6
  %idxprom = sext i32 %shr to i64
  %16 = load i16*, i16** @iclp, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx20, align 2
  %18 = load i16*, i16** %blk.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %18, i64 56
  store i16 %17, i16* %arrayidx21, align 2
  %19 = load i16*, i16** %blk.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %19, i64 48
  store i16 %17, i16* %arrayidx22, align 2
  %20 = load i16*, i16** %blk.addr, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %20, i64 40
  store i16 %17, i16* %arrayidx23, align 2
  %21 = load i16*, i16** %blk.addr, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %21, i64 32
  store i16 %17, i16* %arrayidx24, align 2
  %22 = load i16*, i16** %blk.addr, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %22, i64 24
  store i16 %17, i16* %arrayidx25, align 2
  %23 = load i16*, i16** %blk.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %23, i64 16
  store i16 %17, i16* %arrayidx26, align 2
  %24 = load i16*, i16** %blk.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %24, i64 8
  store i16 %17, i16* %arrayidx27, align 2
  %25 = load i16*, i16** %blk.addr, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %25, i64 0
  store i16 %17, i16* %arrayidx28, align 2
  br label %return

if.end:                                           ; preds = %entry
  %26 = load i16*, i16** %blk.addr, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %27 to i32
  %shl31 = shl i32 %conv30, 8
  %add32 = add nsw i32 %shl31, 8192
  store i32 %add32, i32* %x0, align 4
  %28 = load i32, i32* %x4, align 4
  %29 = load i32, i32* %x5, align 4
  %add33 = add nsw i32 %28, %29
  %mul = mul nsw i32 565, %add33
  %add34 = add nsw i32 %mul, 4
  store i32 %add34, i32* %x8, align 4
  %30 = load i32, i32* %x8, align 4
  %31 = load i32, i32* %x4, align 4
  %mul35 = mul nsw i32 2276, %31
  %add36 = add nsw i32 %30, %mul35
  %shr37 = ashr i32 %add36, 3
  store i32 %shr37, i32* %x4, align 4
  %32 = load i32, i32* %x8, align 4
  %33 = load i32, i32* %x5, align 4
  %mul38 = mul nsw i32 3406, %33
  %sub = sub nsw i32 %32, %mul38
  %shr39 = ashr i32 %sub, 3
  store i32 %shr39, i32* %x5, align 4
  %34 = load i32, i32* %x6, align 4
  %35 = load i32, i32* %x7, align 4
  %add40 = add nsw i32 %34, %35
  %mul41 = mul nsw i32 2408, %add40
  %add42 = add nsw i32 %mul41, 4
  store i32 %add42, i32* %x8, align 4
  %36 = load i32, i32* %x8, align 4
  %37 = load i32, i32* %x6, align 4
  %mul43 = mul nsw i32 799, %37
  %sub44 = sub nsw i32 %36, %mul43
  %shr45 = ashr i32 %sub44, 3
  store i32 %shr45, i32* %x6, align 4
  %38 = load i32, i32* %x8, align 4
  %39 = load i32, i32* %x7, align 4
  %mul46 = mul nsw i32 4017, %39
  %sub47 = sub nsw i32 %38, %mul46
  %shr48 = ashr i32 %sub47, 3
  store i32 %shr48, i32* %x7, align 4
  %40 = load i32, i32* %x0, align 4
  %41 = load i32, i32* %x1, align 4
  %add49 = add nsw i32 %40, %41
  store i32 %add49, i32* %x8, align 4
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %x0, align 4
  %sub50 = sub nsw i32 %43, %42
  store i32 %sub50, i32* %x0, align 4
  %44 = load i32, i32* %x3, align 4
  %45 = load i32, i32* %x2, align 4
  %add51 = add nsw i32 %44, %45
  %mul52 = mul nsw i32 1108, %add51
  %add53 = add nsw i32 %mul52, 4
  store i32 %add53, i32* %x1, align 4
  %46 = load i32, i32* %x1, align 4
  %47 = load i32, i32* %x2, align 4
  %mul54 = mul nsw i32 3784, %47
  %sub55 = sub nsw i32 %46, %mul54
  %shr56 = ashr i32 %sub55, 3
  store i32 %shr56, i32* %x2, align 4
  %48 = load i32, i32* %x1, align 4
  %49 = load i32, i32* %x3, align 4
  %mul57 = mul nsw i32 1568, %49
  %add58 = add nsw i32 %48, %mul57
  %shr59 = ashr i32 %add58, 3
  store i32 %shr59, i32* %x3, align 4
  %50 = load i32, i32* %x4, align 4
  %51 = load i32, i32* %x6, align 4
  %add60 = add nsw i32 %50, %51
  store i32 %add60, i32* %x1, align 4
  %52 = load i32, i32* %x6, align 4
  %53 = load i32, i32* %x4, align 4
  %sub61 = sub nsw i32 %53, %52
  store i32 %sub61, i32* %x4, align 4
  %54 = load i32, i32* %x5, align 4
  %55 = load i32, i32* %x7, align 4
  %add62 = add nsw i32 %54, %55
  store i32 %add62, i32* %x6, align 4
  %56 = load i32, i32* %x7, align 4
  %57 = load i32, i32* %x5, align 4
  %sub63 = sub nsw i32 %57, %56
  store i32 %sub63, i32* %x5, align 4
  %58 = load i32, i32* %x8, align 4
  %59 = load i32, i32* %x3, align 4
  %add64 = add nsw i32 %58, %59
  store i32 %add64, i32* %x7, align 4
  %60 = load i32, i32* %x3, align 4
  %61 = load i32, i32* %x8, align 4
  %sub65 = sub nsw i32 %61, %60
  store i32 %sub65, i32* %x8, align 4
  %62 = load i32, i32* %x0, align 4
  %63 = load i32, i32* %x2, align 4
  %add66 = add nsw i32 %62, %63
  store i32 %add66, i32* %x3, align 4
  %64 = load i32, i32* %x2, align 4
  %65 = load i32, i32* %x0, align 4
  %sub67 = sub nsw i32 %65, %64
  store i32 %sub67, i32* %x0, align 4
  %66 = load i32, i32* %x4, align 4
  %67 = load i32, i32* %x5, align 4
  %add68 = add nsw i32 %66, %67
  %mul69 = mul nsw i32 181, %add68
  %add70 = add nsw i32 %mul69, 128
  %shr71 = ashr i32 %add70, 8
  store i32 %shr71, i32* %x2, align 4
  %68 = load i32, i32* %x4, align 4
  %69 = load i32, i32* %x5, align 4
  %sub72 = sub nsw i32 %68, %69
  %mul73 = mul nsw i32 181, %sub72
  %add74 = add nsw i32 %mul73, 128
  %shr75 = ashr i32 %add74, 8
  store i32 %shr75, i32* %x4, align 4
  %70 = load i32, i32* %x7, align 4
  %71 = load i32, i32* %x1, align 4
  %add76 = add nsw i32 %70, %71
  %shr77 = ashr i32 %add76, 14
  %idxprom78 = sext i32 %shr77 to i64
  %72 = load i16*, i16** @iclp, align 8
  %arrayidx79 = getelementptr inbounds i16, i16* %72, i64 %idxprom78
  %73 = load i16, i16* %arrayidx79, align 2
  %74 = load i16*, i16** %blk.addr, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %74, i64 0
  store i16 %73, i16* %arrayidx80, align 2
  %75 = load i32, i32* %x3, align 4
  %76 = load i32, i32* %x2, align 4
  %add81 = add nsw i32 %75, %76
  %shr82 = ashr i32 %add81, 14
  %idxprom83 = sext i32 %shr82 to i64
  %77 = load i16*, i16** @iclp, align 8
  %arrayidx84 = getelementptr inbounds i16, i16* %77, i64 %idxprom83
  %78 = load i16, i16* %arrayidx84, align 2
  %79 = load i16*, i16** %blk.addr, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %79, i64 8
  store i16 %78, i16* %arrayidx85, align 2
  %80 = load i32, i32* %x0, align 4
  %81 = load i32, i32* %x4, align 4
  %add86 = add nsw i32 %80, %81
  %shr87 = ashr i32 %add86, 14
  %idxprom88 = sext i32 %shr87 to i64
  %82 = load i16*, i16** @iclp, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %82, i64 %idxprom88
  %83 = load i16, i16* %arrayidx89, align 2
  %84 = load i16*, i16** %blk.addr, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %84, i64 16
  store i16 %83, i16* %arrayidx90, align 2
  %85 = load i32, i32* %x8, align 4
  %86 = load i32, i32* %x6, align 4
  %add91 = add nsw i32 %85, %86
  %shr92 = ashr i32 %add91, 14
  %idxprom93 = sext i32 %shr92 to i64
  %87 = load i16*, i16** @iclp, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %87, i64 %idxprom93
  %88 = load i16, i16* %arrayidx94, align 2
  %89 = load i16*, i16** %blk.addr, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %89, i64 24
  store i16 %88, i16* %arrayidx95, align 2
  %90 = load i32, i32* %x8, align 4
  %91 = load i32, i32* %x6, align 4
  %sub96 = sub nsw i32 %90, %91
  %shr97 = ashr i32 %sub96, 14
  %idxprom98 = sext i32 %shr97 to i64
  %92 = load i16*, i16** @iclp, align 8
  %arrayidx99 = getelementptr inbounds i16, i16* %92, i64 %idxprom98
  %93 = load i16, i16* %arrayidx99, align 2
  %94 = load i16*, i16** %blk.addr, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %94, i64 32
  store i16 %93, i16* %arrayidx100, align 2
  %95 = load i32, i32* %x0, align 4
  %96 = load i32, i32* %x4, align 4
  %sub101 = sub nsw i32 %95, %96
  %shr102 = ashr i32 %sub101, 14
  %idxprom103 = sext i32 %shr102 to i64
  %97 = load i16*, i16** @iclp, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %97, i64 %idxprom103
  %98 = load i16, i16* %arrayidx104, align 2
  %99 = load i16*, i16** %blk.addr, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %99, i64 40
  store i16 %98, i16* %arrayidx105, align 2
  %100 = load i32, i32* %x3, align 4
  %101 = load i32, i32* %x2, align 4
  %sub106 = sub nsw i32 %100, %101
  %shr107 = ashr i32 %sub106, 14
  %idxprom108 = sext i32 %shr107 to i64
  %102 = load i16*, i16** @iclp, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %102, i64 %idxprom108
  %103 = load i16, i16* %arrayidx109, align 2
  %104 = load i16*, i16** %blk.addr, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %104, i64 48
  store i16 %103, i16* %arrayidx110, align 2
  %105 = load i32, i32* %x7, align 4
  %106 = load i32, i32* %x1, align 4
  %sub111 = sub nsw i32 %105, %106
  %shr112 = ashr i32 %sub111, 14
  %idxprom113 = sext i32 %shr112 to i64
  %107 = load i16*, i16** @iclp, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %107, i64 %idxprom113
  %108 = load i16, i16* %arrayidx114, align 2
  %109 = load i16*, i16** %blk.addr, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %109, i64 56
  store i16 %108, i16* %arrayidx115, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Initialize_Fast_IDCT() #0 {
entry:
  %i = alloca i32, align 4
  store i16* getelementptr inbounds ([1024 x i16], [1024 x i16]* @iclip, i32 0, i64 512), i16** @iclp, align 8
  store i32 -512, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, -256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.5

cond.false:                                       ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %2, 255
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %3 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ 255, %cond.true.3 ], [ %3, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ -256, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond6 to i16
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** @iclp, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.5
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
