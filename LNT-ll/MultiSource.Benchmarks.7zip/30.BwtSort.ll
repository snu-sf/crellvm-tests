; ModuleID = './MultiSource.Benchmarks.7zip/30.BwtSort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @SortGroup(i32 %BlockSize, i32 %NumSortedBytes, i32 %groupOffset, i32 %groupSize, i32 %NumRefBits, i32* %Indices, i32 %left, i32 %range) #0 {
entry:
  %retval = alloca i32, align 4
  %BlockSize.addr = alloca i32, align 4
  %NumSortedBytes.addr = alloca i32, align 4
  %groupOffset.addr = alloca i32, align 4
  %groupSize.addr = alloca i32, align 4
  %NumRefBits.addr = alloca i32, align 4
  %Indices.addr = alloca i32*, align 8
  %left.addr = alloca i32, align 4
  %range.addr = alloca i32, align 4
  %ind2 = alloca i32*, align 8
  %Groups = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %j = alloca i32, align 4
  %mask = alloca i32, align 4
  %thereAreGroups = alloca i32, align 4
  %group = alloca i32, align 4
  %cg = alloca i32, align 4
  %gPrev = alloca i32, align 4
  %gRes = alloca i32, align 4
  %sp = alloca i32, align 4
  %sp16 = alloca i32, align 4
  %g = alloca i32, align 4
  %prevGroupStart = alloca i32, align 4
  %val = alloca i32, align 4
  %cgCur = alloca i32, align 4
  %ind = alloca i32, align 4
  %group77 = alloca i32, align 4
  %j78 = alloca i32, align 4
  %sp79 = alloca i32, align 4
  %i = alloca i32, align 4
  %mid = alloca i32, align 4
  %j110 = alloca i32, align 4
  %sp117 = alloca i32, align 4
  %temp143 = alloca i32, align 4
  %j174 = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  store i32 %NumSortedBytes, i32* %NumSortedBytes.addr, align 4
  store i32 %groupOffset, i32* %groupOffset.addr, align 4
  store i32 %groupSize, i32* %groupSize.addr, align 4
  store i32 %NumRefBits, i32* %NumRefBits.addr, align 4
  store i32* %Indices, i32** %Indices.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %range, i32* %range.addr, align 4
  %0 = load i32*, i32** %Indices.addr, align 8
  %1 = load i32, i32* %groupOffset.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  store i32* %add.ptr, i32** %ind2, align 8
  %2 = load i32, i32* %groupSize.addr, align 4
  %cmp = icmp ule i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %Indices.addr, align 8
  %4 = load i32, i32* %BlockSize.addr, align 4
  %idx.ext1 = zext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds i32, i32* %3, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i32, i32* %add.ptr2, i64 65536
  store i32* %add.ptr3, i32** %Groups, align 8
  %5 = load i32, i32* %groupSize.addr, align 4
  %6 = load i32, i32* %NumRefBits.addr, align 4
  %shl = shl i32 1, %6
  %cmp4 = icmp ule i32 %5, %shl
  br i1 %cmp4, label %land.lhs.true, label %if.end.76

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %groupSize.addr, align 4
  %8 = load i32, i32* %range.addr, align 4
  %cmp5 = icmp ule i32 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.76

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load i32*, i32** %Indices.addr, align 8
  %10 = load i32, i32* %BlockSize.addr, align 4
  %idx.ext7 = zext i32 %10 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %9, i64 %idx.ext7
  store i32* %add.ptr8, i32** %temp, align 8
  store i32 0, i32* %gRes, align 4
  %11 = load i32*, i32** %ind2, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* %NumSortedBytes.addr, align 4
  %add = add i32 %12, %13
  store i32 %add, i32* %sp, align 4
  %14 = load i32, i32* %sp, align 4
  %15 = load i32, i32* %BlockSize.addr, align 4
  %cmp9 = icmp uge i32 %14, %15
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  %16 = load i32, i32* %BlockSize.addr, align 4
  %17 = load i32, i32* %sp, align 4
  %sub = sub i32 %17, %16
  store i32 %sub, i32* %sp, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.6
  %18 = load i32, i32* %sp, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load i32*, i32** %Groups, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx12, align 4
  store i32 %20, i32* %gPrev, align 4
  %21 = load i32, i32* %gPrev, align 4
  %22 = load i32, i32* %NumRefBits.addr, align 4
  %shl13 = shl i32 %21, %22
  %23 = load i32*, i32** %temp, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %shl13, i32* %arrayidx14, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %groupSize.addr, align 4
  %cmp15 = icmp ult i32 %24, %25
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %j, align 4
  %idxprom17 = zext i32 %26 to i64
  %27 = load i32*, i32** %ind2, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom17
  %28 = load i32, i32* %arrayidx18, align 4
  %29 = load i32, i32* %NumSortedBytes.addr, align 4
  %add19 = add i32 %28, %29
  store i32 %add19, i32* %sp16, align 4
  %30 = load i32, i32* %sp16, align 4
  %31 = load i32, i32* %BlockSize.addr, align 4
  %cmp20 = icmp uge i32 %30, %31
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body
  %32 = load i32, i32* %BlockSize.addr, align 4
  %33 = load i32, i32* %sp16, align 4
  %sub22 = sub i32 %33, %32
  store i32 %sub22, i32* %sp16, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body
  %34 = load i32, i32* %sp16, align 4
  %idxprom24 = zext i32 %34 to i64
  %35 = load i32*, i32** %Groups, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %35, i64 %idxprom24
  %36 = load i32, i32* %arrayidx25, align 4
  store i32 %36, i32* %g, align 4
  %37 = load i32, i32* %g, align 4
  %38 = load i32, i32* %NumRefBits.addr, align 4
  %shl26 = shl i32 %37, %38
  %39 = load i32, i32* %j, align 4
  %or = or i32 %shl26, %39
  %40 = load i32, i32* %j, align 4
  %idxprom27 = zext i32 %40 to i64
  %41 = load i32*, i32** %temp, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %41, i64 %idxprom27
  store i32 %or, i32* %arrayidx28, align 4
  %42 = load i32, i32* %gPrev, align 4
  %43 = load i32, i32* %g, align 4
  %xor = xor i32 %42, %43
  %44 = load i32, i32* %gRes, align 4
  %or29 = or i32 %44, %xor
  store i32 %or29, i32* %gRes, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %45 = load i32, i32* %j, align 4
  %inc = add i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %gRes, align 4
  %cmp30 = icmp eq i32 %46, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  %47 = load i32*, i32** %ind2, align 8
  %48 = load i32, i32* %groupSize.addr, align 4
  call void @SetGroupSize(i32* %47, i32 %48)
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.end
  %49 = load i32*, i32** %temp, align 8
  %50 = load i32, i32* %groupSize.addr, align 4
  call void @HeapSort(i32* %49, i32 %50)
  %51 = load i32, i32* %NumRefBits.addr, align 4
  %shl33 = shl i32 1, %51
  %sub34 = sub nsw i32 %shl33, 1
  store i32 %sub34, i32* %mask, align 4
  store i32 0, i32* %thereAreGroups, align 4
  %52 = load i32, i32* %groupOffset.addr, align 4
  store i32 %52, i32* %group, align 4
  %53 = load i32*, i32** %temp, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx35, align 4
  %55 = load i32, i32* %NumRefBits.addr, align 4
  %shr = lshr i32 %54, %55
  store i32 %shr, i32* %cg, align 4
  %56 = load i32*, i32** %temp, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx36, align 4
  %58 = load i32, i32* %mask, align 4
  %and = and i32 %57, %58
  %idxprom37 = zext i32 %and to i64
  %59 = load i32*, i32** %ind2, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %59, i64 %idxprom37
  %60 = load i32, i32* %arrayidx38, align 4
  %61 = load i32*, i32** %temp, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %arrayidx39, align 4
  store i32 0, i32* %prevGroupStart, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.60, %if.end.32
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %groupSize.addr, align 4
  %cmp41 = icmp ult i32 %62, %63
  br i1 %cmp41, label %for.body.42, label %for.end.62

for.body.42:                                      ; preds = %for.cond.40
  %64 = load i32, i32* %j, align 4
  %idxprom43 = zext i32 %64 to i64
  %65 = load i32*, i32** %temp, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %65, i64 %idxprom43
  %66 = load i32, i32* %arrayidx44, align 4
  store i32 %66, i32* %val, align 4
  %67 = load i32, i32* %val, align 4
  %68 = load i32, i32* %NumRefBits.addr, align 4
  %shr45 = lshr i32 %67, %68
  store i32 %shr45, i32* %cgCur, align 4
  %69 = load i32, i32* %cgCur, align 4
  %70 = load i32, i32* %cg, align 4
  %cmp46 = icmp ne i32 %69, %70
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %for.body.42
  %71 = load i32, i32* %cgCur, align 4
  store i32 %71, i32* %cg, align 4
  %72 = load i32, i32* %groupOffset.addr, align 4
  %73 = load i32, i32* %j, align 4
  %add48 = add i32 %72, %73
  store i32 %add48, i32* %group, align 4
  %74 = load i32*, i32** %temp, align 8
  %75 = load i32, i32* %prevGroupStart, align 4
  %idx.ext49 = zext i32 %75 to i64
  %add.ptr50 = getelementptr inbounds i32, i32* %74, i64 %idx.ext49
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %prevGroupStart, align 4
  %sub51 = sub i32 %76, %77
  call void @SetGroupSize(i32* %add.ptr50, i32 %sub51)
  %78 = load i32, i32* %j, align 4
  store i32 %78, i32* %prevGroupStart, align 4
  br label %if.end.52

if.else:                                          ; preds = %for.body.42
  store i32 1, i32* %thereAreGroups, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.47
  %79 = load i32, i32* %val, align 4
  %80 = load i32, i32* %mask, align 4
  %and53 = and i32 %79, %80
  %idxprom54 = zext i32 %and53 to i64
  %81 = load i32*, i32** %ind2, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %81, i64 %idxprom54
  %82 = load i32, i32* %arrayidx55, align 4
  store i32 %82, i32* %ind, align 4
  %83 = load i32, i32* %ind, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom56 = zext i32 %84 to i64
  %85 = load i32*, i32** %temp, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %85, i64 %idxprom56
  store i32 %83, i32* %arrayidx57, align 4
  %86 = load i32, i32* %group, align 4
  %87 = load i32, i32* %ind, align 4
  %idxprom58 = zext i32 %87 to i64
  %88 = load i32*, i32** %Groups, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %88, i64 %idxprom58
  store i32 %86, i32* %arrayidx59, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.52
  %89 = load i32, i32* %j, align 4
  %inc61 = add i32 %89, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.40

for.end.62:                                       ; preds = %for.cond.40
  %90 = load i32*, i32** %temp, align 8
  %91 = load i32, i32* %prevGroupStart, align 4
  %idx.ext63 = zext i32 %91 to i64
  %add.ptr64 = getelementptr inbounds i32, i32* %90, i64 %idx.ext63
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* %prevGroupStart, align 4
  %sub65 = sub i32 %92, %93
  call void @SetGroupSize(i32* %add.ptr64, i32 %sub65)
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.73, %for.end.62
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %groupSize.addr, align 4
  %cmp67 = icmp ult i32 %94, %95
  br i1 %cmp67, label %for.body.68, label %for.end.75

for.body.68:                                      ; preds = %for.cond.66
  %96 = load i32, i32* %j, align 4
  %idxprom69 = zext i32 %96 to i64
  %97 = load i32*, i32** %temp, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %97, i64 %idxprom69
  %98 = load i32, i32* %arrayidx70, align 4
  %99 = load i32, i32* %j, align 4
  %idxprom71 = zext i32 %99 to i64
  %100 = load i32*, i32** %ind2, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %100, i64 %idxprom71
  store i32 %98, i32* %arrayidx72, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.68
  %101 = load i32, i32* %j, align 4
  %inc74 = add i32 %101, 1
  store i32 %inc74, i32* %j, align 4
  br label %for.cond.66

for.end.75:                                       ; preds = %for.cond.66
  %102 = load i32, i32* %thereAreGroups, align 4
  store i32 %102, i32* %retval
  br label %return

if.end.76:                                        ; preds = %land.lhs.true, %if.end
  %103 = load i32*, i32** %ind2, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %103, i64 0
  %104 = load i32, i32* %arrayidx80, align 4
  %105 = load i32, i32* %NumSortedBytes.addr, align 4
  %add81 = add i32 %104, %105
  store i32 %add81, i32* %sp79, align 4
  %106 = load i32, i32* %sp79, align 4
  %107 = load i32, i32* %BlockSize.addr, align 4
  %cmp82 = icmp uge i32 %106, %107
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.76
  %108 = load i32, i32* %BlockSize.addr, align 4
  %109 = load i32, i32* %sp79, align 4
  %sub84 = sub i32 %109, %108
  store i32 %sub84, i32* %sp79, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.76
  %110 = load i32, i32* %sp79, align 4
  %idxprom86 = zext i32 %110 to i64
  %111 = load i32*, i32** %Groups, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %111, i64 %idxprom86
  %112 = load i32, i32* %arrayidx87, align 4
  store i32 %112, i32* %group77, align 4
  store i32 1, i32* %j78, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.103, %if.end.85
  %113 = load i32, i32* %j78, align 4
  %114 = load i32, i32* %groupSize.addr, align 4
  %cmp89 = icmp ult i32 %113, %114
  br i1 %cmp89, label %for.body.90, label %for.end.105

for.body.90:                                      ; preds = %for.cond.88
  %115 = load i32, i32* %j78, align 4
  %idxprom91 = zext i32 %115 to i64
  %116 = load i32*, i32** %ind2, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %116, i64 %idxprom91
  %117 = load i32, i32* %arrayidx92, align 4
  %118 = load i32, i32* %NumSortedBytes.addr, align 4
  %add93 = add i32 %117, %118
  store i32 %add93, i32* %sp79, align 4
  %119 = load i32, i32* %sp79, align 4
  %120 = load i32, i32* %BlockSize.addr, align 4
  %cmp94 = icmp uge i32 %119, %120
  br i1 %cmp94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %for.body.90
  %121 = load i32, i32* %BlockSize.addr, align 4
  %122 = load i32, i32* %sp79, align 4
  %sub96 = sub i32 %122, %121
  store i32 %sub96, i32* %sp79, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %for.body.90
  %123 = load i32, i32* %sp79, align 4
  %idxprom98 = zext i32 %123 to i64
  %124 = load i32*, i32** %Groups, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %124, i64 %idxprom98
  %125 = load i32, i32* %arrayidx99, align 4
  %126 = load i32, i32* %group77, align 4
  %cmp100 = icmp ne i32 %125, %126
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  br label %for.end.105

if.end.102:                                       ; preds = %if.end.97
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %127 = load i32, i32* %j78, align 4
  %inc104 = add i32 %127, 1
  store i32 %inc104, i32* %j78, align 4
  br label %for.cond.88

for.end.105:                                      ; preds = %if.then.101, %for.cond.88
  %128 = load i32, i32* %j78, align 4
  %129 = load i32, i32* %groupSize.addr, align 4
  %cmp106 = icmp eq i32 %128, %129
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.end.105
  %130 = load i32*, i32** %ind2, align 8
  %131 = load i32, i32* %groupSize.addr, align 4
  call void @SetGroupSize(i32* %130, i32 %131)
  store i32 1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %for.end.105
  br label %for.cond.109

for.cond.109:                                     ; preds = %if.end.172, %if.end.108
  %132 = load i32, i32* %range.addr, align 4
  %cmp111 = icmp ule i32 %132, 1
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.cond.109
  %133 = load i32*, i32** %ind2, align 8
  %134 = load i32, i32* %groupSize.addr, align 4
  call void @SetGroupSize(i32* %133, i32 %134)
  store i32 1, i32* %retval
  br label %return

if.end.113:                                       ; preds = %for.cond.109
  %135 = load i32, i32* %left.addr, align 4
  %136 = load i32, i32* %range.addr, align 4
  %add114 = add i32 %136, 1
  %shr115 = lshr i32 %add114, 1
  %add116 = add i32 %135, %shr115
  store i32 %add116, i32* %mid, align 4
  %137 = load i32, i32* %groupSize.addr, align 4
  store i32 %137, i32* %j110, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.113
  %138 = load i32, i32* %i, align 4
  %idxprom118 = zext i32 %138 to i64
  %139 = load i32*, i32** %ind2, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %139, i64 %idxprom118
  %140 = load i32, i32* %arrayidx119, align 4
  %141 = load i32, i32* %NumSortedBytes.addr, align 4
  %add120 = add i32 %140, %141
  store i32 %add120, i32* %sp117, align 4
  %142 = load i32, i32* %sp117, align 4
  %143 = load i32, i32* %BlockSize.addr, align 4
  %cmp121 = icmp uge i32 %142, %143
  br i1 %cmp121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %do.body
  %144 = load i32, i32* %BlockSize.addr, align 4
  %145 = load i32, i32* %sp117, align 4
  %sub123 = sub i32 %145, %144
  store i32 %sub123, i32* %sp117, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %do.body
  %146 = load i32, i32* %sp117, align 4
  %idxprom125 = zext i32 %146 to i64
  %147 = load i32*, i32** %Groups, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %147, i64 %idxprom125
  %148 = load i32, i32* %arrayidx126, align 4
  %149 = load i32, i32* %mid, align 4
  %cmp127 = icmp uge i32 %148, %149
  br i1 %cmp127, label %if.then.128, label %if.end.159

if.then.128:                                      ; preds = %if.end.124
  %150 = load i32, i32* %j110, align 4
  %dec = add i32 %150, -1
  store i32 %dec, i32* %j110, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.153, %if.then.128
  %151 = load i32, i32* %j110, align 4
  %152 = load i32, i32* %i, align 4
  %cmp130 = icmp ugt i32 %151, %152
  br i1 %cmp130, label %for.body.131, label %for.end.155

for.body.131:                                     ; preds = %for.cond.129
  %153 = load i32, i32* %j110, align 4
  %idxprom132 = zext i32 %153 to i64
  %154 = load i32*, i32** %ind2, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %154, i64 %idxprom132
  %155 = load i32, i32* %arrayidx133, align 4
  %156 = load i32, i32* %NumSortedBytes.addr, align 4
  %add134 = add i32 %155, %156
  store i32 %add134, i32* %sp117, align 4
  %157 = load i32, i32* %sp117, align 4
  %158 = load i32, i32* %BlockSize.addr, align 4
  %cmp135 = icmp uge i32 %157, %158
  br i1 %cmp135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %for.body.131
  %159 = load i32, i32* %BlockSize.addr, align 4
  %160 = load i32, i32* %sp117, align 4
  %sub137 = sub i32 %160, %159
  store i32 %sub137, i32* %sp117, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %for.body.131
  %161 = load i32, i32* %sp117, align 4
  %idxprom139 = zext i32 %161 to i64
  %162 = load i32*, i32** %Groups, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %162, i64 %idxprom139
  %163 = load i32, i32* %arrayidx140, align 4
  %164 = load i32, i32* %mid, align 4
  %cmp141 = icmp ult i32 %163, %164
  br i1 %cmp141, label %if.then.142, label %if.end.152

if.then.142:                                      ; preds = %if.end.138
  %165 = load i32, i32* %i, align 4
  %idxprom144 = zext i32 %165 to i64
  %166 = load i32*, i32** %ind2, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %166, i64 %idxprom144
  %167 = load i32, i32* %arrayidx145, align 4
  store i32 %167, i32* %temp143, align 4
  %168 = load i32, i32* %j110, align 4
  %idxprom146 = zext i32 %168 to i64
  %169 = load i32*, i32** %ind2, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %169, i64 %idxprom146
  %170 = load i32, i32* %arrayidx147, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom148 = zext i32 %171 to i64
  %172 = load i32*, i32** %ind2, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %172, i64 %idxprom148
  store i32 %170, i32* %arrayidx149, align 4
  %173 = load i32, i32* %temp143, align 4
  %174 = load i32, i32* %j110, align 4
  %idxprom150 = zext i32 %174 to i64
  %175 = load i32*, i32** %ind2, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %175, i64 %idxprom150
  store i32 %173, i32* %arrayidx151, align 4
  br label %for.end.155

if.end.152:                                       ; preds = %if.end.138
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %176 = load i32, i32* %j110, align 4
  %dec154 = add i32 %176, -1
  store i32 %dec154, i32* %j110, align 4
  br label %for.cond.129

for.end.155:                                      ; preds = %if.then.142, %for.cond.129
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %j110, align 4
  %cmp156 = icmp uge i32 %177, %178
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %for.end.155
  br label %do.end

if.end.158:                                       ; preds = %for.end.155
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.124
  br label %do.cond

do.cond:                                          ; preds = %if.end.159
  %179 = load i32, i32* %i, align 4
  %inc160 = add i32 %179, 1
  store i32 %inc160, i32* %i, align 4
  %180 = load i32, i32* %j110, align 4
  %cmp161 = icmp ult i32 %inc160, %180
  br i1 %cmp161, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.157
  %181 = load i32, i32* %i, align 4
  %cmp162 = icmp eq i32 %181, 0
  br i1 %cmp162, label %if.then.163, label %if.else.166

if.then.163:                                      ; preds = %do.end
  %182 = load i32, i32* %range.addr, align 4
  %183 = load i32, i32* %mid, align 4
  %184 = load i32, i32* %left.addr, align 4
  %sub164 = sub i32 %183, %184
  %sub165 = sub i32 %182, %sub164
  store i32 %sub165, i32* %range.addr, align 4
  %185 = load i32, i32* %mid, align 4
  store i32 %185, i32* %left.addr, align 4
  br label %if.end.172

if.else.166:                                      ; preds = %do.end
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %groupSize.addr, align 4
  %cmp167 = icmp eq i32 %186, %187
  br i1 %cmp167, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else.166
  %188 = load i32, i32* %mid, align 4
  %189 = load i32, i32* %left.addr, align 4
  %sub169 = sub i32 %188, %189
  store i32 %sub169, i32* %range.addr, align 4
  br label %if.end.171

if.else.170:                                      ; preds = %if.else.166
  br label %for.end.173

if.end.171:                                       ; preds = %if.then.168
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.163
  br label %for.cond.109

for.end.173:                                      ; preds = %if.else.170
  %190 = load i32, i32* %i, align 4
  store i32 %190, i32* %j174, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.183, %for.end.173
  %191 = load i32, i32* %j174, align 4
  %192 = load i32, i32* %groupSize.addr, align 4
  %cmp176 = icmp ult i32 %191, %192
  br i1 %cmp176, label %for.body.177, label %for.end.185

for.body.177:                                     ; preds = %for.cond.175
  %193 = load i32, i32* %groupOffset.addr, align 4
  %194 = load i32, i32* %i, align 4
  %add178 = add i32 %193, %194
  %195 = load i32, i32* %j174, align 4
  %idxprom179 = zext i32 %195 to i64
  %196 = load i32*, i32** %ind2, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %196, i64 %idxprom179
  %197 = load i32, i32* %arrayidx180, align 4
  %idxprom181 = zext i32 %197 to i64
  %198 = load i32*, i32** %Groups, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %198, i64 %idxprom181
  store i32 %add178, i32* %arrayidx182, align 4
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.177
  %199 = load i32, i32* %j174, align 4
  %inc184 = add i32 %199, 1
  store i32 %inc184, i32* %j174, align 4
  br label %for.cond.175

for.end.185:                                      ; preds = %for.cond.175
  %200 = load i32, i32* %BlockSize.addr, align 4
  %201 = load i32, i32* %NumSortedBytes.addr, align 4
  %202 = load i32, i32* %groupOffset.addr, align 4
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* %NumRefBits.addr, align 4
  %205 = load i32*, i32** %Indices.addr, align 8
  %206 = load i32, i32* %left.addr, align 4
  %207 = load i32, i32* %mid, align 4
  %208 = load i32, i32* %left.addr, align 4
  %sub186 = sub i32 %207, %208
  %call = call i32 @SortGroup(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32* %205, i32 %206, i32 %sub186)
  store i32 %call, i32* %res, align 4
  %209 = load i32, i32* %res, align 4
  %210 = load i32, i32* %BlockSize.addr, align 4
  %211 = load i32, i32* %NumSortedBytes.addr, align 4
  %212 = load i32, i32* %groupOffset.addr, align 4
  %213 = load i32, i32* %i, align 4
  %add187 = add i32 %212, %213
  %214 = load i32, i32* %groupSize.addr, align 4
  %215 = load i32, i32* %i, align 4
  %sub188 = sub i32 %214, %215
  %216 = load i32, i32* %NumRefBits.addr, align 4
  %217 = load i32*, i32** %Indices.addr, align 8
  %218 = load i32, i32* %mid, align 4
  %219 = load i32, i32* %range.addr, align 4
  %220 = load i32, i32* %mid, align 4
  %221 = load i32, i32* %left.addr, align 4
  %sub189 = sub i32 %220, %221
  %sub190 = sub i32 %219, %sub189
  %call191 = call i32 @SortGroup(i32 %210, i32 %211, i32 %add187, i32 %sub188, i32 %216, i32* %217, i32 %218, i32 %sub190)
  %or192 = or i32 %209, %call191
  store i32 %or192, i32* %retval
  br label %return

return:                                           ; preds = %for.end.185, %if.then.112, %if.then.107, %for.end.75, %if.then.31, %if.then
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define internal void @SetGroupSize(i32* %p, i32 %size) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %and = and i32 %1, 1023
  %shl = shl i32 %and, 20
  %or = or i32 -2147483648, %shl
  %2 = load i32*, i32** %p.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or1 = or i32 %3, %or
  store i32 %or1, i32* %2, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp uge i32 %4, 1024
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %5 = load i32*, i32** %p.addr, align 8
  %6 = load i32, i32* %5, align 4
  %or4 = or i32 %6, 1073741824
  store i32 %or4, i32* %5, align 4
  %7 = load i32, i32* %size.addr, align 4
  %shr = lshr i32 %7, 10
  %shl5 = shl i32 %shr, 20
  %8 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx, align 4
  %or6 = or i32 %9, %shl5
  store i32 %or6, i32* %arrayidx, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare void @HeapSort(i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @BlockSort(i32* %Indices, i8* %data, i32 %blockSize) #0 {
entry:
  %Indices.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %blockSize.addr = alloca i32, align 4
  %counters = alloca i32*, align 8
  %i = alloca i32, align 4
  %Groups = alloca i32*, align 8
  %sum = alloca i32, align 4
  %groupSize = alloca i32, align 4
  %prev = alloca i32, align 4
  %prevGroupSize = alloca i32, align 4
  %NumRefBits = alloca i32, align 4
  %NumSortedBytes = alloca i32, align 4
  %finishedGroupSize = alloca i32, align 4
  %newLimit = alloca i32, align 4
  %groupSize143 = alloca i32, align 4
  %finishedGroup = alloca i32, align 4
  %newGroupSize = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %groupSize254 = alloca i32, align 4
  store i32* %Indices, i32** %Indices.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %blockSize, i32* %blockSize.addr, align 4
  %0 = load i32*, i32** %Indices.addr, align 8
  %1 = load i32, i32* %blockSize.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  store i32* %add.ptr, i32** %counters, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 65536
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i32*, i32** %counters, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.12, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %blockSize.addr, align 4
  %sub = sub i32 %7, 1
  %cmp2 = icmp ult i32 %6, %sub
  br i1 %cmp2, label %for.body.3, label %for.end.14

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %8 to i64
  %9 = load i8*, i8** %data.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %11 = load i32, i32* %i, align 4
  %add = add i32 %11, 1
  %idxprom6 = zext i32 %add to i64
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %or = or i32 %shl, %conv8
  %idxprom9 = zext i32 %or to i64
  %14 = load i32*, i32** %counters, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, i32* %arrayidx10, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.3
  %16 = load i32, i32* %i, align 4
  %inc13 = add i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.1

for.end.14:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %17 to i64
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %19 to i32
  %shl18 = shl i32 %conv17, 8
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %or21 = or i32 %shl18, %conv20
  %idxprom22 = zext i32 %or21 to i64
  %22 = load i32*, i32** %counters, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %22, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, i32* %arrayidx23, align 4
  %24 = load i32*, i32** %counters, align 8
  %add.ptr25 = getelementptr inbounds i32, i32* %24, i64 65536
  store i32* %add.ptr25, i32** %Groups, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.38, %for.end.14
  %25 = load i32, i32* %i, align 4
  %cmp27 = icmp ult i32 %25, 65536
  br i1 %cmp27, label %for.body.29, label %for.end.40

for.body.29:                                      ; preds = %for.cond.26
  %26 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %26 to i64
  %27 = load i32*, i32** %counters, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 %idxprom30
  %28 = load i32, i32* %arrayidx31, align 4
  store i32 %28, i32* %groupSize, align 4
  %29 = load i32, i32* %groupSize, align 4
  %cmp32 = icmp ugt i32 %29, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.29
  %30 = load i32, i32* %groupSize, align 4
  %31 = load i32, i32* %sum, align 4
  %add34 = add i32 %31, %30
  store i32 %add34, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.29
  %32 = load i32, i32* %sum, align 4
  %33 = load i32, i32* %groupSize, align 4
  %sub35 = sub i32 %32, %33
  %34 = load i32, i32* %i, align 4
  %idxprom36 = zext i32 %34 to i64
  %35 = load i32*, i32** %counters, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %35, i64 %idxprom36
  store i32 %sub35, i32* %arrayidx37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %inc39 = add i32 %36, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.26

for.end.40:                                       ; preds = %for.cond.26
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.59, %for.end.40
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %blockSize.addr, align 4
  %sub42 = sub i32 %38, 1
  %cmp43 = icmp ult i32 %37, %sub42
  br i1 %cmp43, label %for.body.45, label %for.end.61

for.body.45:                                      ; preds = %for.cond.41
  %39 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %39 to i64
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %40, i64 %idxprom46
  %41 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %41 to i32
  %shl49 = shl i32 %conv48, 8
  %42 = load i32, i32* %i, align 4
  %add50 = add i32 %42, 1
  %idxprom51 = zext i32 %add50 to i64
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %43, i64 %idxprom51
  %44 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %44 to i32
  %or54 = or i32 %shl49, %conv53
  %idxprom55 = zext i32 %or54 to i64
  %45 = load i32*, i32** %counters, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %45, i64 %idxprom55
  %46 = load i32, i32* %arrayidx56, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom57 = zext i32 %47 to i64
  %48 = load i32*, i32** %Groups, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %48, i64 %idxprom57
  store i32 %46, i32* %arrayidx58, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.45
  %49 = load i32, i32* %i, align 4
  %inc60 = add i32 %49, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.41

for.end.61:                                       ; preds = %for.cond.41
  %50 = load i32, i32* %i, align 4
  %idxprom62 = zext i32 %50 to i64
  %51 = load i8*, i8** %data.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %51, i64 %idxprom62
  %52 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %52 to i32
  %shl65 = shl i32 %conv64, 8
  %53 = load i8*, i8** %data.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %54 to i32
  %or68 = or i32 %shl65, %conv67
  %idxprom69 = zext i32 %or68 to i64
  %55 = load i32*, i32** %counters, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %55, i64 %idxprom69
  %56 = load i32, i32* %arrayidx70, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom71 = zext i32 %57 to i64
  %58 = load i32*, i32** %Groups, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %58, i64 %idxprom71
  store i32 %56, i32* %arrayidx72, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.92, %for.end.61
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %blockSize.addr, align 4
  %sub74 = sub i32 %60, 1
  %cmp75 = icmp ult i32 %59, %sub74
  br i1 %cmp75, label %for.body.77, label %for.end.94

for.body.77:                                      ; preds = %for.cond.73
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %62 to i64
  %63 = load i8*, i8** %data.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %63, i64 %idxprom78
  %64 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %64 to i32
  %shl81 = shl i32 %conv80, 8
  %65 = load i32, i32* %i, align 4
  %add82 = add i32 %65, 1
  %idxprom83 = zext i32 %add82 to i64
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %66, i64 %idxprom83
  %67 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %67 to i32
  %or86 = or i32 %shl81, %conv85
  %idxprom87 = zext i32 %or86 to i64
  %68 = load i32*, i32** %counters, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %68, i64 %idxprom87
  %69 = load i32, i32* %arrayidx88, align 4
  %inc89 = add i32 %69, 1
  store i32 %inc89, i32* %arrayidx88, align 4
  %idxprom90 = zext i32 %69 to i64
  %70 = load i32*, i32** %Indices.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %70, i64 %idxprom90
  store i32 %61, i32* %arrayidx91, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.77
  %71 = load i32, i32* %i, align 4
  %inc93 = add i32 %71, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.73

for.end.94:                                       ; preds = %for.cond.73
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom95 = zext i32 %73 to i64
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %74, i64 %idxprom95
  %75 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %75 to i32
  %shl98 = shl i32 %conv97, 8
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %77 to i32
  %or101 = or i32 %shl98, %conv100
  %idxprom102 = zext i32 %or101 to i64
  %78 = load i32*, i32** %counters, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %78, i64 %idxprom102
  %79 = load i32, i32* %arrayidx103, align 4
  %inc104 = add i32 %79, 1
  store i32 %inc104, i32* %arrayidx103, align 4
  %idxprom105 = zext i32 %79 to i64
  %80 = load i32*, i32** %Indices.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %80, i64 %idxprom105
  store i32 %72, i32* %arrayidx106, align 4
  store i32 0, i32* %prev, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.122, %for.end.94
  %81 = load i32, i32* %i, align 4
  %cmp108 = icmp ult i32 %81, 65536
  br i1 %cmp108, label %for.body.110, label %for.end.124

for.body.110:                                     ; preds = %for.cond.107
  %82 = load i32, i32* %i, align 4
  %idxprom111 = zext i32 %82 to i64
  %83 = load i32*, i32** %counters, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %83, i64 %idxprom111
  %84 = load i32, i32* %arrayidx112, align 4
  %85 = load i32, i32* %prev, align 4
  %sub113 = sub i32 %84, %85
  store i32 %sub113, i32* %prevGroupSize, align 4
  %86 = load i32, i32* %prevGroupSize, align 4
  %cmp114 = icmp eq i32 %86, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.body.110
  br label %for.inc.122

if.end.117:                                       ; preds = %for.body.110
  %87 = load i32*, i32** %Indices.addr, align 8
  %88 = load i32, i32* %prev, align 4
  %idx.ext118 = zext i32 %88 to i64
  %add.ptr119 = getelementptr inbounds i32, i32* %87, i64 %idx.ext118
  %89 = load i32, i32* %prevGroupSize, align 4
  call void @SetGroupSize(i32* %add.ptr119, i32 %89)
  %90 = load i32, i32* %i, align 4
  %idxprom120 = zext i32 %90 to i64
  %91 = load i32*, i32** %counters, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %91, i64 %idxprom120
  %92 = load i32, i32* %arrayidx121, align 4
  store i32 %92, i32* %prev, align 4
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.117, %if.then.116
  %93 = load i32, i32* %i, align 4
  %inc123 = add i32 %93, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.107

for.end.124:                                      ; preds = %for.cond.107
  store i32 0, i32* %NumRefBits, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.130, %for.end.124
  %94 = load i32, i32* %blockSize.addr, align 4
  %sub126 = sub i32 %94, 1
  %95 = load i32, i32* %NumRefBits, align 4
  %shr = lshr i32 %sub126, %95
  %cmp127 = icmp ne i32 %shr, 0
  br i1 %cmp127, label %for.body.129, label %for.end.132

for.body.129:                                     ; preds = %for.cond.125
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.129
  %96 = load i32, i32* %NumRefBits, align 4
  %inc131 = add nsw i32 %96, 1
  store i32 %inc131, i32* %NumRefBits, align 4
  br label %for.cond.125

for.end.132:                                      ; preds = %for.cond.125
  %97 = load i32, i32* %NumRefBits, align 4
  %sub133 = sub nsw i32 32, %97
  store i32 %sub133, i32* %NumRefBits, align 4
  %98 = load i32, i32* %NumRefBits, align 4
  %cmp134 = icmp sgt i32 %98, 12
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.132
  store i32 12, i32* %NumRefBits, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.end.132
  store i32 2, i32* %NumSortedBytes, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.247, %if.end.137
  store i32 0, i32* %finishedGroupSize, align 4
  store i32 0, i32* %newLimit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %if.end.240, %if.end.217, %for.cond.138
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %blockSize.addr, align 4
  %cmp140 = icmp ult i32 %99, %100
  br i1 %cmp140, label %for.body.142, label %for.end.242

for.body.142:                                     ; preds = %for.cond.139
  %101 = load i32, i32* %i, align 4
  %idxprom144 = zext i32 %101 to i64
  %102 = load i32*, i32** %Indices.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %102, i64 %idxprom144
  %103 = load i32, i32* %arrayidx145, align 4
  %and = and i32 %103, 1073741823
  %shr146 = lshr i32 %and, 20
  store i32 %shr146, i32* %groupSize143, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom147 = zext i32 %104 to i64
  %105 = load i32*, i32** %Indices.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %105, i64 %idxprom147
  %106 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %106, -2147483648
  %cmp150 = icmp eq i32 %and149, 0
  %conv151 = zext i1 %cmp150 to i32
  store i32 %conv151, i32* %finishedGroup, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom152 = zext i32 %107 to i64
  %108 = load i32*, i32** %Indices.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %108, i64 %idxprom152
  %109 = load i32, i32* %arrayidx153, align 4
  %and154 = and i32 %109, 1073741824
  %cmp155 = icmp ne i32 %and154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.168

if.then.157:                                      ; preds = %for.body.142
  %110 = load i32, i32* %i, align 4
  %add158 = add i32 %110, 1
  %idxprom159 = zext i32 %add158 to i64
  %111 = load i32*, i32** %Indices.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %111, i64 %idxprom159
  %112 = load i32, i32* %arrayidx160, align 4
  %shr161 = lshr i32 %112, 20
  %shl162 = shl i32 %shr161, 10
  %113 = load i32, i32* %groupSize143, align 4
  %add163 = add i32 %113, %shl162
  store i32 %add163, i32* %groupSize143, align 4
  %114 = load i32, i32* %i, align 4
  %add164 = add i32 %114, 1
  %idxprom165 = zext i32 %add164 to i64
  %115 = load i32*, i32** %Indices.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %115, i64 %idxprom165
  %116 = load i32, i32* %arrayidx166, align 4
  %and167 = and i32 %116, 1048575
  store i32 %and167, i32* %arrayidx166, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.157, %for.body.142
  %117 = load i32, i32* %i, align 4
  %idxprom169 = zext i32 %117 to i64
  %118 = load i32*, i32** %Indices.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %118, i64 %idxprom169
  %119 = load i32, i32* %arrayidx170, align 4
  %and171 = and i32 %119, 1048575
  store i32 %and171, i32* %arrayidx170, align 4
  %120 = load i32, i32* %groupSize143, align 4
  %inc172 = add i32 %120, 1
  store i32 %inc172, i32* %groupSize143, align 4
  %121 = load i32, i32* %finishedGroup, align 4
  %tobool = icmp ne i32 %121, 0
  br i1 %tobool, label %if.then.175, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.168
  %122 = load i32, i32* %groupSize143, align 4
  %cmp173 = icmp eq i32 %122, 1
  br i1 %cmp173, label %if.then.175, label %if.end.219

if.then.175:                                      ; preds = %lor.lhs.false, %if.end.168
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %finishedGroupSize, align 4
  %sub176 = sub i32 %123, %124
  %idxprom177 = zext i32 %sub176 to i64
  %125 = load i32*, i32** %Indices.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %125, i64 %idxprom177
  %126 = load i32, i32* %arrayidx178, align 4
  %and179 = and i32 %126, 1048575
  store i32 %and179, i32* %arrayidx178, align 4
  %127 = load i32, i32* %finishedGroupSize, align 4
  %cmp180 = icmp ugt i32 %127, 1
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %if.then.175
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %finishedGroupSize, align 4
  %sub183 = sub i32 %128, %129
  %add184 = add i32 %sub183, 1
  %idxprom185 = zext i32 %add184 to i64
  %130 = load i32*, i32** %Indices.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %130, i64 %idxprom185
  %131 = load i32, i32* %arrayidx186, align 4
  %and187 = and i32 %131, 1048575
  store i32 %and187, i32* %arrayidx186, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %if.then.175
  %132 = load i32, i32* %groupSize143, align 4
  %133 = load i32, i32* %finishedGroupSize, align 4
  %add189 = add i32 %132, %133
  store i32 %add189, i32* %newGroupSize, align 4
  %134 = load i32, i32* %newGroupSize, align 4
  %sub190 = sub i32 %134, 1
  %and191 = and i32 %sub190, 1023
  %shl192 = shl i32 %and191, 20
  %135 = load i32*, i32** %Indices.addr, align 8
  %136 = load i32, i32* %i, align 4
  %idx.ext193 = zext i32 %136 to i64
  %add.ptr194 = getelementptr inbounds i32, i32* %135, i64 %idx.ext193
  %137 = load i32, i32* %finishedGroupSize, align 4
  %idx.ext195 = zext i32 %137 to i64
  %idx.neg = sub i64 0, %idx.ext195
  %add.ptr196 = getelementptr inbounds i32, i32* %add.ptr194, i64 %idx.neg
  %138 = load i32, i32* %add.ptr196, align 4
  %or197 = or i32 %138, %shl192
  store i32 %or197, i32* %add.ptr196, align 4
  %139 = load i32, i32* %newGroupSize, align 4
  %cmp198 = icmp ugt i32 %139, 1024
  br i1 %cmp198, label %if.then.200, label %if.end.217

if.then.200:                                      ; preds = %if.end.188
  %140 = load i32*, i32** %Indices.addr, align 8
  %141 = load i32, i32* %i, align 4
  %idx.ext201 = zext i32 %141 to i64
  %add.ptr202 = getelementptr inbounds i32, i32* %140, i64 %idx.ext201
  %142 = load i32, i32* %finishedGroupSize, align 4
  %idx.ext203 = zext i32 %142 to i64
  %idx.neg204 = sub i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i32, i32* %add.ptr202, i64 %idx.neg204
  %143 = load i32, i32* %add.ptr205, align 4
  %or206 = or i32 %143, 1073741824
  store i32 %or206, i32* %add.ptr205, align 4
  %144 = load i32, i32* %newGroupSize, align 4
  %sub207 = sub i32 %144, 1
  %shr208 = lshr i32 %sub207, 10
  %shl209 = shl i32 %shr208, 20
  %145 = load i32*, i32** %Indices.addr, align 8
  %146 = load i32, i32* %i, align 4
  %idx.ext210 = zext i32 %146 to i64
  %add.ptr211 = getelementptr inbounds i32, i32* %145, i64 %idx.ext210
  %147 = load i32, i32* %finishedGroupSize, align 4
  %idx.ext212 = zext i32 %147 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds i32, i32* %add.ptr211, i64 %idx.neg213
  %add.ptr215 = getelementptr inbounds i32, i32* %add.ptr214, i64 1
  %148 = load i32, i32* %add.ptr215, align 4
  %or216 = or i32 %148, %shl209
  store i32 %or216, i32* %add.ptr215, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.200, %if.end.188
  %149 = load i32, i32* %newGroupSize, align 4
  store i32 %149, i32* %finishedGroupSize, align 4
  %150 = load i32, i32* %groupSize143, align 4
  %151 = load i32, i32* %i, align 4
  %add218 = add i32 %151, %150
  store i32 %add218, i32* %i, align 4
  br label %for.cond.139

if.end.219:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %finishedGroupSize, align 4
  %152 = load i32, i32* %NumSortedBytes, align 4
  %153 = load i32, i32* %blockSize.addr, align 4
  %cmp220 = icmp uge i32 %152, %153
  br i1 %cmp220, label %if.then.222, label %if.else

if.then.222:                                      ; preds = %if.end.219
  store i32 0, i32* %j, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.232, %if.then.222
  %154 = load i32, i32* %j, align 4
  %155 = load i32, i32* %groupSize143, align 4
  %cmp224 = icmp ult i32 %154, %155
  br i1 %cmp224, label %for.body.226, label %for.end.234

for.body.226:                                     ; preds = %for.cond.223
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %j, align 4
  %add227 = add i32 %156, %157
  store i32 %add227, i32* %t, align 4
  %158 = load i32, i32* %t, align 4
  %159 = load i32, i32* %t, align 4
  %idxprom228 = zext i32 %159 to i64
  %160 = load i32*, i32** %Indices.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %160, i64 %idxprom228
  %161 = load i32, i32* %arrayidx229, align 4
  %idxprom230 = zext i32 %161 to i64
  %162 = load i32*, i32** %Groups, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %162, i64 %idxprom230
  store i32 %158, i32* %arrayidx231, align 4
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.226
  %163 = load i32, i32* %j, align 4
  %inc233 = add i32 %163, 1
  store i32 %inc233, i32* %j, align 4
  br label %for.cond.223

for.end.234:                                      ; preds = %for.cond.223
  br label %if.end.240

if.else:                                          ; preds = %if.end.219
  %164 = load i32, i32* %blockSize.addr, align 4
  %165 = load i32, i32* %NumSortedBytes, align 4
  %166 = load i32, i32* %i, align 4
  %167 = load i32, i32* %groupSize143, align 4
  %168 = load i32, i32* %NumRefBits, align 4
  %169 = load i32*, i32** %Indices.addr, align 8
  %170 = load i32, i32* %blockSize.addr, align 4
  %call = call i32 @SortGroup(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32* %169, i32 0, i32 %170)
  %cmp235 = icmp ne i32 %call, 0
  br i1 %cmp235, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.else
  %171 = load i32, i32* %i, align 4
  %172 = load i32, i32* %groupSize143, align 4
  %add238 = add i32 %171, %172
  store i32 %add238, i32* %newLimit, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.else
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %for.end.234
  %173 = load i32, i32* %groupSize143, align 4
  %174 = load i32, i32* %i, align 4
  %add241 = add i32 %174, %173
  store i32 %add241, i32* %i, align 4
  br label %for.cond.139

for.end.242:                                      ; preds = %for.cond.139
  %175 = load i32, i32* %newLimit, align 4
  %cmp243 = icmp eq i32 %175, 0
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %for.end.242
  br label %for.end.249

if.end.246:                                       ; preds = %for.end.242
  br label %for.inc.247

for.inc.247:                                      ; preds = %if.end.246
  %176 = load i32, i32* %NumSortedBytes, align 4
  %shl248 = shl i32 %176, 1
  store i32 %shl248, i32* %NumSortedBytes, align 4
  br label %for.cond.138

for.end.249:                                      ; preds = %if.then.245
  store i32 0, i32* %i, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %if.end.275, %for.end.249
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %blockSize.addr, align 4
  %cmp251 = icmp ult i32 %177, %178
  br i1 %cmp251, label %for.body.253, label %for.end.281

for.body.253:                                     ; preds = %for.cond.250
  %179 = load i32, i32* %i, align 4
  %idxprom255 = zext i32 %179 to i64
  %180 = load i32*, i32** %Indices.addr, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %180, i64 %idxprom255
  %181 = load i32, i32* %arrayidx256, align 4
  %and257 = and i32 %181, 1073741823
  %shr258 = lshr i32 %and257, 20
  store i32 %shr258, i32* %groupSize254, align 4
  %182 = load i32, i32* %i, align 4
  %idxprom259 = zext i32 %182 to i64
  %183 = load i32*, i32** %Indices.addr, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %183, i64 %idxprom259
  %184 = load i32, i32* %arrayidx260, align 4
  %and261 = and i32 %184, 1073741824
  %cmp262 = icmp ne i32 %and261, 0
  br i1 %cmp262, label %if.then.264, label %if.end.275

if.then.264:                                      ; preds = %for.body.253
  %185 = load i32, i32* %i, align 4
  %add265 = add i32 %185, 1
  %idxprom266 = zext i32 %add265 to i64
  %186 = load i32*, i32** %Indices.addr, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %186, i64 %idxprom266
  %187 = load i32, i32* %arrayidx267, align 4
  %shr268 = lshr i32 %187, 20
  %shl269 = shl i32 %shr268, 10
  %188 = load i32, i32* %groupSize254, align 4
  %add270 = add i32 %188, %shl269
  store i32 %add270, i32* %groupSize254, align 4
  %189 = load i32, i32* %i, align 4
  %add271 = add i32 %189, 1
  %idxprom272 = zext i32 %add271 to i64
  %190 = load i32*, i32** %Indices.addr, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %190, i64 %idxprom272
  %191 = load i32, i32* %arrayidx273, align 4
  %and274 = and i32 %191, 1048575
  store i32 %and274, i32* %arrayidx273, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.264, %for.body.253
  %192 = load i32, i32* %i, align 4
  %idxprom276 = zext i32 %192 to i64
  %193 = load i32*, i32** %Indices.addr, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %193, i64 %idxprom276
  %194 = load i32, i32* %arrayidx277, align 4
  %and278 = and i32 %194, 1048575
  store i32 %and278, i32* %arrayidx277, align 4
  %195 = load i32, i32* %groupSize254, align 4
  %inc279 = add i32 %195, 1
  store i32 %inc279, i32* %groupSize254, align 4
  %196 = load i32, i32* %groupSize254, align 4
  %197 = load i32, i32* %i, align 4
  %add280 = add i32 %197, %196
  store i32 %add280, i32* %i, align 4
  br label %for.cond.250

for.end.281:                                      ; preds = %for.cond.250
  %198 = load i32*, i32** %Groups, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %198, i64 0
  %199 = load i32, i32* %arrayidx282, align 4
  ret i32 %199
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
