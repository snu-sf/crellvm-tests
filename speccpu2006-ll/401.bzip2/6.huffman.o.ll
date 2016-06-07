; ModuleID = 'huffman.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @BZ2_hbMakeCodeLengths(i8* %len, i32* %freq, i32 %alphaSize, i32 %maxLen) #0 {
entry:
  %len.addr = alloca i8*, align 8
  %freq.addr = alloca i32*, align 8
  %alphaSize.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %nNodes = alloca i32, align 4
  %nHeap = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tooLong = alloca i8, align 1
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  %zz = alloca i32, align 4
  %tmp = alloca i32, align 4
  %zz48 = alloca i32, align 4
  %yy = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %zz96 = alloca i32, align 4
  %yy98 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %zz177 = alloca i32, align 4
  %tmp179 = alloca i32, align 4
  store i8* %len, i8** %len.addr, align 8
  store i32* %freq, i32** %freq.addr, align 8
  store i32 %alphaSize, i32* %alphaSize.addr, align 4
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %alphaSize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %freq.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %freq.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %7, %cond.false ]
  %shl = shl i32 %cond, 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom4
  store i32 %shl, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end, %for.end.241
  %10 = load i32, i32* %alphaSize.addr, align 4
  store i32 %10, i32* %nNodes, align 4
  store i32 0, i32* %nHeap, align 4
  %arrayidx6 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 0
  store i32 0, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 0
  store i32 -2, i32* %arrayidx8, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.36, %while.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %alphaSize.addr, align 4
  %cmp10 = icmp sle i32 %11, %12
  br i1 %cmp10, label %for.body.11, label %for.end.38

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom12
  store i32 -1, i32* %arrayidx13, align 4
  %14 = load i32, i32* %nHeap, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %nHeap, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nHeap, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom15
  store i32 %15, i32* %arrayidx16, align 4
  %17 = load i32, i32* %nHeap, align 4
  store i32 %17, i32* %zz, align 4
  %18 = load i32, i32* %zz, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom17
  %19 = load i32, i32* %arrayidx18, align 4
  store i32 %19, i32* %tmp, align 4
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.27, %for.body.11
  %20 = load i32, i32* %tmp, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom20
  %21 = load i32, i32* %arrayidx21, align 4
  %22 = load i32, i32* %zz, align 4
  %shr = ashr i32 %22, 1
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom24
  %24 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp slt i32 %21, %24
  br i1 %cmp26, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.19
  %25 = load i32, i32* %zz, align 4
  %shr28 = ashr i32 %25, 1
  %idxprom29 = sext i32 %shr28 to i64
  %arrayidx30 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom29
  %26 = load i32, i32* %arrayidx30, align 4
  %27 = load i32, i32* %zz, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom31
  store i32 %26, i32* %arrayidx32, align 4
  %28 = load i32, i32* %zz, align 4
  %shr33 = ashr i32 %28, 1
  store i32 %shr33, i32* %zz, align 4
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %29 = load i32, i32* %tmp, align 4
  %30 = load i32, i32* %zz, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom34
  store i32 %29, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %while.end
  %31 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.9

for.end.38:                                       ; preds = %for.cond.9
  %32 = load i32, i32* %nHeap, align 4
  %cmp39 = icmp slt i32 %32, 260
  br i1 %cmp39, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.38
  call void @BZ2_bz__AssertH__fail(i32 2001)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.38
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.end.198, %if.end
  %33 = load i32, i32* %nHeap, align 4
  %cmp41 = icmp sgt i32 %33, 1
  br i1 %cmp41, label %while.body.42, label %while.end.201

while.body.42:                                    ; preds = %while.cond.40
  %arrayidx43 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 1
  %34 = load i32, i32* %arrayidx43, align 4
  store i32 %34, i32* %n1, align 4
  %35 = load i32, i32* %nHeap, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom44
  %36 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 1
  store i32 %36, i32* %arrayidx46, align 4
  %37 = load i32, i32* %nHeap, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %nHeap, align 4
  store i32 1, i32* %zz48, align 4
  %38 = load i32, i32* %zz48, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom52
  %39 = load i32, i32* %arrayidx53, align 4
  store i32 %39, i32* %tmp51, align 4
  br label %while.body.55

while.body.55:                                    ; preds = %while.body.42, %if.end.82
  %40 = load i32, i32* %zz48, align 4
  %shl56 = shl i32 %40, 1
  store i32 %shl56, i32* %yy, align 4
  %41 = load i32, i32* %yy, align 4
  %42 = load i32, i32* %nHeap, align 4
  %cmp57 = icmp sgt i32 %41, %42
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.body.55
  br label %while.end.87

if.end.59:                                        ; preds = %while.body.55
  %43 = load i32, i32* %yy, align 4
  %44 = load i32, i32* %nHeap, align 4
  %cmp60 = icmp slt i32 %43, %44
  br i1 %cmp60, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.59
  %45 = load i32, i32* %yy, align 4
  %add61 = add nsw i32 %45, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom62
  %46 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom64
  %47 = load i32, i32* %arrayidx65, align 4
  %48 = load i32, i32* %yy, align 4
  %idxprom66 = sext i32 %48 to i64
  %arrayidx67 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom66
  %49 = load i32, i32* %arrayidx67, align 4
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom68
  %50 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %47, %50
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %land.lhs.true
  %51 = load i32, i32* %yy, align 4
  %inc72 = add nsw i32 %51, 1
  store i32 %inc72, i32* %yy, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %land.lhs.true, %if.end.59
  %52 = load i32, i32* %tmp51, align 4
  %idxprom74 = sext i32 %52 to i64
  %arrayidx75 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom74
  %53 = load i32, i32* %arrayidx75, align 4
  %54 = load i32, i32* %yy, align 4
  %idxprom76 = sext i32 %54 to i64
  %arrayidx77 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom76
  %55 = load i32, i32* %arrayidx77, align 4
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom78
  %56 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %53, %56
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.73
  br label %while.end.87

if.end.82:                                        ; preds = %if.end.73
  %57 = load i32, i32* %yy, align 4
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom83
  %58 = load i32, i32* %arrayidx84, align 4
  %59 = load i32, i32* %zz48, align 4
  %idxprom85 = sext i32 %59 to i64
  %arrayidx86 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom85
  store i32 %58, i32* %arrayidx86, align 4
  %60 = load i32, i32* %yy, align 4
  store i32 %60, i32* %zz48, align 4
  br label %while.body.55

while.end.87:                                     ; preds = %if.then.81, %if.then.58
  %61 = load i32, i32* %tmp51, align 4
  %62 = load i32, i32* %zz48, align 4
  %idxprom88 = sext i32 %62 to i64
  %arrayidx89 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom88
  store i32 %61, i32* %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 1
  %63 = load i32, i32* %arrayidx90, align 4
  store i32 %63, i32* %n2, align 4
  %64 = load i32, i32* %nHeap, align 4
  %idxprom91 = sext i32 %64 to i64
  %arrayidx92 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom91
  %65 = load i32, i32* %arrayidx92, align 4
  %arrayidx93 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 1
  store i32 %65, i32* %arrayidx93, align 4
  %66 = load i32, i32* %nHeap, align 4
  %dec94 = add nsw i32 %66, -1
  store i32 %dec94, i32* %nHeap, align 4
  store i32 1, i32* %zz96, align 4
  %67 = load i32, i32* %zz96, align 4
  %idxprom101 = sext i32 %67 to i64
  %arrayidx102 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom101
  %68 = load i32, i32* %arrayidx102, align 4
  store i32 %68, i32* %tmp100, align 4
  br label %while.body.104

while.body.104:                                   ; preds = %while.end.87, %if.end.132
  %69 = load i32, i32* %zz96, align 4
  %shl105 = shl i32 %69, 1
  store i32 %shl105, i32* %yy98, align 4
  %70 = load i32, i32* %yy98, align 4
  %71 = load i32, i32* %nHeap, align 4
  %cmp106 = icmp sgt i32 %70, %71
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %while.body.104
  br label %while.end.137

if.end.108:                                       ; preds = %while.body.104
  %72 = load i32, i32* %yy98, align 4
  %73 = load i32, i32* %nHeap, align 4
  %cmp109 = icmp slt i32 %72, %73
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.123

land.lhs.true.110:                                ; preds = %if.end.108
  %74 = load i32, i32* %yy98, align 4
  %add111 = add nsw i32 %74, 1
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom112
  %75 = load i32, i32* %arrayidx113, align 4
  %idxprom114 = sext i32 %75 to i64
  %arrayidx115 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom114
  %76 = load i32, i32* %arrayidx115, align 4
  %77 = load i32, i32* %yy98, align 4
  %idxprom116 = sext i32 %77 to i64
  %arrayidx117 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom116
  %78 = load i32, i32* %arrayidx117, align 4
  %idxprom118 = sext i32 %78 to i64
  %arrayidx119 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom118
  %79 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp slt i32 %76, %79
  br i1 %cmp120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %land.lhs.true.110
  %80 = load i32, i32* %yy98, align 4
  %inc122 = add nsw i32 %80, 1
  store i32 %inc122, i32* %yy98, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %land.lhs.true.110, %if.end.108
  %81 = load i32, i32* %tmp100, align 4
  %idxprom124 = sext i32 %81 to i64
  %arrayidx125 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom124
  %82 = load i32, i32* %arrayidx125, align 4
  %83 = load i32, i32* %yy98, align 4
  %idxprom126 = sext i32 %83 to i64
  %arrayidx127 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom126
  %84 = load i32, i32* %arrayidx127, align 4
  %idxprom128 = sext i32 %84 to i64
  %arrayidx129 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom128
  %85 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp slt i32 %82, %85
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.123
  br label %while.end.137

if.end.132:                                       ; preds = %if.end.123
  %86 = load i32, i32* %yy98, align 4
  %idxprom133 = sext i32 %86 to i64
  %arrayidx134 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom133
  %87 = load i32, i32* %arrayidx134, align 4
  %88 = load i32, i32* %zz96, align 4
  %idxprom135 = sext i32 %88 to i64
  %arrayidx136 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom135
  store i32 %87, i32* %arrayidx136, align 4
  %89 = load i32, i32* %yy98, align 4
  store i32 %89, i32* %zz96, align 4
  br label %while.body.104

while.end.137:                                    ; preds = %if.then.131, %if.then.107
  %90 = load i32, i32* %tmp100, align 4
  %91 = load i32, i32* %zz96, align 4
  %idxprom138 = sext i32 %91 to i64
  %arrayidx139 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom138
  store i32 %90, i32* %arrayidx139, align 4
  %92 = load i32, i32* %nNodes, align 4
  %inc140 = add nsw i32 %92, 1
  store i32 %inc140, i32* %nNodes, align 4
  %93 = load i32, i32* %nNodes, align 4
  %94 = load i32, i32* %n2, align 4
  %idxprom141 = sext i32 %94 to i64
  %arrayidx142 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom141
  store i32 %93, i32* %arrayidx142, align 4
  %95 = load i32, i32* %n1, align 4
  %idxprom143 = sext i32 %95 to i64
  %arrayidx144 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom143
  store i32 %93, i32* %arrayidx144, align 4
  %96 = load i32, i32* %n1, align 4
  %idxprom145 = sext i32 %96 to i64
  %arrayidx146 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom145
  %97 = load i32, i32* %arrayidx146, align 4
  %and = and i32 %97, -256
  %98 = load i32, i32* %n2, align 4
  %idxprom147 = sext i32 %98 to i64
  %arrayidx148 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom147
  %99 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %99, -256
  %add150 = add i32 %and, %and149
  %100 = load i32, i32* %n1, align 4
  %idxprom151 = sext i32 %100 to i64
  %arrayidx152 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom151
  %101 = load i32, i32* %arrayidx152, align 4
  %and153 = and i32 %101, 255
  %102 = load i32, i32* %n2, align 4
  %idxprom154 = sext i32 %102 to i64
  %arrayidx155 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom154
  %103 = load i32, i32* %arrayidx155, align 4
  %and156 = and i32 %103, 255
  %cmp157 = icmp sgt i32 %and153, %and156
  br i1 %cmp157, label %cond.true.158, label %cond.false.162

cond.true.158:                                    ; preds = %while.end.137
  %104 = load i32, i32* %n1, align 4
  %idxprom159 = sext i32 %104 to i64
  %arrayidx160 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom159
  %105 = load i32, i32* %arrayidx160, align 4
  %and161 = and i32 %105, 255
  br label %cond.end.166

cond.false.162:                                   ; preds = %while.end.137
  %106 = load i32, i32* %n2, align 4
  %idxprom163 = sext i32 %106 to i64
  %arrayidx164 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom163
  %107 = load i32, i32* %arrayidx164, align 4
  %and165 = and i32 %107, 255
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.162, %cond.true.158
  %cond167 = phi i32 [ %and161, %cond.true.158 ], [ %and165, %cond.false.162 ]
  %add168 = add nsw i32 1, %cond167
  %or = or i32 %add150, %add168
  %108 = load i32, i32* %nNodes, align 4
  %idxprom169 = sext i32 %108 to i64
  %arrayidx170 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom169
  store i32 %or, i32* %arrayidx170, align 4
  %109 = load i32, i32* %nNodes, align 4
  %idxprom171 = sext i32 %109 to i64
  %arrayidx172 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom171
  store i32 -1, i32* %arrayidx172, align 4
  %110 = load i32, i32* %nHeap, align 4
  %inc173 = add nsw i32 %110, 1
  store i32 %inc173, i32* %nHeap, align 4
  %111 = load i32, i32* %nNodes, align 4
  %112 = load i32, i32* %nHeap, align 4
  %idxprom174 = sext i32 %112 to i64
  %arrayidx175 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom174
  store i32 %111, i32* %arrayidx175, align 4
  %113 = load i32, i32* %nHeap, align 4
  store i32 %113, i32* %zz177, align 4
  %114 = load i32, i32* %zz177, align 4
  %idxprom180 = sext i32 %114 to i64
  %arrayidx181 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom180
  %115 = load i32, i32* %arrayidx181, align 4
  store i32 %115, i32* %tmp179, align 4
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.191, %cond.end.166
  %116 = load i32, i32* %tmp179, align 4
  %idxprom183 = sext i32 %116 to i64
  %arrayidx184 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom183
  %117 = load i32, i32* %arrayidx184, align 4
  %118 = load i32, i32* %zz177, align 4
  %shr185 = ashr i32 %118, 1
  %idxprom186 = sext i32 %shr185 to i64
  %arrayidx187 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom186
  %119 = load i32, i32* %arrayidx187, align 4
  %idxprom188 = sext i32 %119 to i64
  %arrayidx189 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom188
  %120 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp slt i32 %117, %120
  br i1 %cmp190, label %while.body.191, label %while.end.198

while.body.191:                                   ; preds = %while.cond.182
  %121 = load i32, i32* %zz177, align 4
  %shr192 = ashr i32 %121, 1
  %idxprom193 = sext i32 %shr192 to i64
  %arrayidx194 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom193
  %122 = load i32, i32* %arrayidx194, align 4
  %123 = load i32, i32* %zz177, align 4
  %idxprom195 = sext i32 %123 to i64
  %arrayidx196 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom195
  store i32 %122, i32* %arrayidx196, align 4
  %124 = load i32, i32* %zz177, align 4
  %shr197 = ashr i32 %124, 1
  store i32 %shr197, i32* %zz177, align 4
  br label %while.cond.182

while.end.198:                                    ; preds = %while.cond.182
  %125 = load i32, i32* %tmp179, align 4
  %126 = load i32, i32* %zz177, align 4
  %idxprom199 = sext i32 %126 to i64
  %arrayidx200 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i32 0, i64 %idxprom199
  store i32 %125, i32* %arrayidx200, align 4
  br label %while.cond.40

while.end.201:                                    ; preds = %while.cond.40
  %127 = load i32, i32* %nNodes, align 4
  %cmp202 = icmp slt i32 %127, 516
  br i1 %cmp202, label %if.end.204, label %if.then.203

if.then.203:                                      ; preds = %while.end.201
  call void @BZ2_bz__AssertH__fail(i32 2002)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %while.end.201
  store i8 0, i8* %tooLong, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.223, %if.end.204
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %alphaSize.addr, align 4
  %cmp206 = icmp sle i32 %128, %129
  br i1 %cmp206, label %for.body.207, label %for.end.225

for.body.207:                                     ; preds = %for.cond.205
  store i32 0, i32* %j, align 4
  %130 = load i32, i32* %i, align 4
  store i32 %130, i32* %k, align 4
  br label %while.cond.208

while.cond.208:                                   ; preds = %while.body.212, %for.body.207
  %131 = load i32, i32* %k, align 4
  %idxprom209 = sext i32 %131 to i64
  %arrayidx210 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom209
  %132 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp sge i32 %132, 0
  br i1 %cmp211, label %while.body.212, label %while.end.216

while.body.212:                                   ; preds = %while.cond.208
  %133 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %133 to i64
  %arrayidx214 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i32 0, i64 %idxprom213
  %134 = load i32, i32* %arrayidx214, align 4
  store i32 %134, i32* %k, align 4
  %135 = load i32, i32* %j, align 4
  %inc215 = add nsw i32 %135, 1
  store i32 %inc215, i32* %j, align 4
  br label %while.cond.208

while.end.216:                                    ; preds = %while.cond.208
  %136 = load i32, i32* %j, align 4
  %conv = trunc i32 %136 to i8
  %137 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %137, 1
  %idxprom217 = sext i32 %sub to i64
  %138 = load i8*, i8** %len.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %138, i64 %idxprom217
  store i8 %conv, i8* %arrayidx218, align 1
  %139 = load i32, i32* %j, align 4
  %140 = load i32, i32* %maxLen.addr, align 4
  %cmp219 = icmp sgt i32 %139, %140
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %while.end.216
  store i8 1, i8* %tooLong, align 1
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %while.end.216
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %141 = load i32, i32* %i, align 4
  %inc224 = add nsw i32 %141, 1
  store i32 %inc224, i32* %i, align 4
  br label %for.cond.205

for.end.225:                                      ; preds = %for.cond.205
  %142 = load i8, i8* %tooLong, align 1
  %tobool = icmp ne i8 %142, 0
  br i1 %tobool, label %if.end.227, label %if.then.226

if.then.226:                                      ; preds = %for.end.225
  br label %while.end.242

if.end.227:                                       ; preds = %for.end.225
  store i32 1, i32* %i, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.239, %if.end.227
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %alphaSize.addr, align 4
  %cmp229 = icmp sle i32 %143, %144
  br i1 %cmp229, label %for.body.231, label %for.end.241

for.body.231:                                     ; preds = %for.cond.228
  %145 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %145 to i64
  %arrayidx233 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom232
  %146 = load i32, i32* %arrayidx233, align 4
  %shr234 = ashr i32 %146, 8
  store i32 %shr234, i32* %j, align 4
  %147 = load i32, i32* %j, align 4
  %div = sdiv i32 %147, 2
  %add235 = add nsw i32 1, %div
  store i32 %add235, i32* %j, align 4
  %148 = load i32, i32* %j, align 4
  %shl236 = shl i32 %148, 8
  %149 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %149 to i64
  %arrayidx238 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i32 0, i64 %idxprom237
  store i32 %shl236, i32* %arrayidx238, align 4
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.body.231
  %150 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %150, 1
  store i32 %inc240, i32* %i, align 4
  br label %for.cond.228

for.end.241:                                      ; preds = %for.cond.228
  br label %while.body

while.end.242:                                    ; preds = %if.then.226
  ret void
}

declare void @BZ2_bz__AssertH__fail(i32) #1

; Function Attrs: nounwind uwtable
define void @BZ2_hbAssignCodes(i32* %code, i8* %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %code.addr = alloca i32*, align 8
  %length.addr = alloca i8*, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %vec = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %code, i32** %code.addr, align 8
  store i8* %length, i8** %length.addr, align 8
  store i32 %minLen, i32* %minLen.addr, align 4
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i32 %alphaSize, i32* %alphaSize.addr, align 4
  store i32 0, i32* %vec, align 4
  %0 = load i32, i32* %minLen.addr, align 4
  store i32 %0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %n, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %vec, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %code.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %9, i32* %arrayidx7, align 4
  %12 = load i32, i32* %vec, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %vec, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load i32, i32* %vec, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, i32* %vec, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %15 = load i32, i32* %n, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %n, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @BZ2_hbCreateDecodeTables(i32* %limit, i32* %base, i32* %perm, i8* %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %limit.addr = alloca i32*, align 8
  %base.addr = alloca i32*, align 8
  %perm.addr = alloca i32*, align 8
  %length.addr = alloca i8*, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %pp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store i32* %limit, i32** %limit.addr, align 8
  store i32* %base, i32** %base.addr, align 8
  store i32* %perm, i32** %perm.addr, align 8
  store i8* %length, i8** %length.addr, align 8
  store i32 %minLen, i32* %minLen.addr, align 4
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i32 %alphaSize, i32* %alphaSize.addr, align 4
  store i32 0, i32* %pp, align 4
  %0 = load i32, i32* %minLen.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %pp, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %perm.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %9, i32* %arrayidx7, align 4
  %12 = load i32, i32* %pp, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.11
  %15 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %15, 23
  br i1 %cmp13, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.12
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i32*, i32** %base.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %18 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %for.end.20
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %alphaSize.addr, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body.24, label %for.end.33

for.body.24:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %length.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %add = add nsw i32 %conv27, 1
  %idxprom28 = sext i32 %add to i64
  %24 = load i32*, i32** %base.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %24, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, i32* %arrayidx29, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.24
  %26 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.21

for.end.33:                                       ; preds = %for.cond.21
  store i32 1, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.43, %for.end.33
  %27 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %27, 23
  br i1 %cmp35, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.34
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom38 = sext i32 %sub to i64
  %29 = load i32*, i32** %base.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %29, i64 %idxprom38
  %30 = load i32, i32* %arrayidx39, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load i32*, i32** %base.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %32, i64 %idxprom40
  %33 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %33, %30
  store i32 %add42, i32* %arrayidx41, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.37
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.34

for.end.45:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.52, %for.end.45
  %35 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %35, 23
  br i1 %cmp47, label %for.body.49, label %for.end.54

for.body.49:                                      ; preds = %for.cond.46
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load i32*, i32** %limit.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %37, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.49
  %38 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.46

for.end.54:                                       ; preds = %for.cond.46
  store i32 0, i32* %vec, align 4
  %39 = load i32, i32* %minLen.addr, align 4
  store i32 %39, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.69, %for.end.54
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %maxLen.addr, align 4
  %cmp56 = icmp sle i32 %40, %41
  br i1 %cmp56, label %for.body.58, label %for.end.71

for.body.58:                                      ; preds = %for.cond.55
  %42 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %42, 1
  %idxprom60 = sext i32 %add59 to i64
  %43 = load i32*, i32** %base.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 %idxprom60
  %44 = load i32, i32* %arrayidx61, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load i32*, i32** %base.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %46, i64 %idxprom62
  %47 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %47
  %48 = load i32, i32* %vec, align 4
  %add65 = add nsw i32 %48, %sub64
  store i32 %add65, i32* %vec, align 4
  %49 = load i32, i32* %vec, align 4
  %sub66 = sub nsw i32 %49, 1
  %50 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i32*, i32** %limit.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %51, i64 %idxprom67
  store i32 %sub66, i32* %arrayidx68, align 4
  %52 = load i32, i32* %vec, align 4
  %shl = shl i32 %52, 1
  store i32 %shl, i32* %vec, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.58
  %53 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.55

for.end.71:                                       ; preds = %for.cond.55
  %54 = load i32, i32* %minLen.addr, align 4
  %add72 = add nsw i32 %54, 1
  store i32 %add72, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.87, %for.end.71
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %maxLen.addr, align 4
  %cmp74 = icmp sle i32 %55, %56
  br i1 %cmp74, label %for.body.76, label %for.end.89

for.body.76:                                      ; preds = %for.cond.73
  %57 = load i32, i32* %i, align 4
  %sub77 = sub nsw i32 %57, 1
  %idxprom78 = sext i32 %sub77 to i64
  %58 = load i32*, i32** %limit.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %58, i64 %idxprom78
  %59 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %59, 1
  %shl81 = shl i32 %add80, 1
  %60 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load i32*, i32** %base.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %61, i64 %idxprom82
  %62 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %shl81, %62
  %63 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %63 to i64
  %64 = load i32*, i32** %base.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %64, i64 %idxprom85
  store i32 %sub84, i32* %arrayidx86, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.76
  %65 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %65, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.73

for.end.89:                                       ; preds = %for.cond.73
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
