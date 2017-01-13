; ModuleID = './MultiSource.Benchmarks.7zip/26.Bra86.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaskToAllowedStatus = constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@kMaskToBitNumber = constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1

; Function Attrs: nounwind uwtable
define i64 @x86_Convert(i8* %data, i64 %size, i32 %ip, i32* %state, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %state.addr = alloca i32*, align 8
  %encoding.addr = alloca i32, align 4
  %bufferPos = alloca i64, align 8
  %prevPosT = alloca i64, align 8
  %prevMask = alloca i32, align 4
  %p = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %b = alloca i8, align 1
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  %b67 = alloca i8, align 1
  %index = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32* %state, i32** %state.addr, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  store i64 0, i64* %bufferPos, align 8
  %0 = load i32*, i32** %state.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 7
  store i32 %and, i32* %prevMask, align 4
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %2, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %ip.addr, align 4
  %add = add i32 %3, 5
  store i32 %add, i32* %ip.addr, align 4
  store i64 -1, i64* %prevPosT, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.119, %if.then.36, %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %bufferPos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %7
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 -4
  store i8* %add.ptr2, i8** %limit, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.cond
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %limit, align 8
  %cmp4 = icmp ult i8* %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.3
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %and5 = and i32 %conv, 254
  %cmp6 = icmp eq i32 %and5, 232
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.3

for.end:                                          ; preds = %if.then.8, %for.cond.3
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %bufferPos, align 8
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %limit, align 8
  %cmp10 = icmp uge i8* %15, %16
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  br label %for.end.120

if.end.13:                                        ; preds = %for.end
  %17 = load i64, i64* %bufferPos, align 8
  %18 = load i64, i64* %prevPosT, align 8
  %sub = sub i64 %17, %18
  store i64 %sub, i64* %prevPosT, align 8
  %19 = load i64, i64* %prevPosT, align 8
  %cmp14 = icmp ugt i64 %19, 3
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  store i32 0, i32* %prevMask, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.end.13
  %20 = load i32, i32* %prevMask, align 4
  %21 = load i64, i64* %prevPosT, align 8
  %conv17 = trunc i64 %21 to i32
  %sub18 = sub nsw i32 %conv17, 1
  %shl = shl i32 %20, %sub18
  %and19 = and i32 %shl, 7
  store i32 %and19, i32* %prevMask, align 4
  %22 = load i32, i32* %prevMask, align 4
  %cmp20 = icmp ne i32 %22, 0
  br i1 %cmp20, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %if.else
  %23 = load i32, i32* %prevMask, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %24 to i32
  %sub24 = sub nsw i32 4, %conv23
  %idxprom25 = sext i32 %sub24 to i64
  %25 = load i8*, i8** %p, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %25, i64 %idxprom25
  %26 = load i8, i8* %arrayidx26, align 1
  store i8 %26, i8* %b, align 1
  %27 = load i32, i32* %prevMask, align 4
  %idxprom27 = zext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToAllowedStatus, i32 0, i64 %idxprom27
  %28 = load i8, i8* %arrayidx28, align 1
  %tobool = icmp ne i8 %28, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %if.then.22
  %29 = load i8, i8* %b, align 1
  %conv29 = zext i8 %29 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %30 = load i8, i8* %b, align 1
  %conv33 = zext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 255
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false, %if.then.22
  %31 = load i64, i64* %bufferPos, align 8
  store i64 %31, i64* %prevPosT, align 8
  %32 = load i32, i32* %prevMask, align 4
  %shl37 = shl i32 %32, 1
  %and38 = and i32 %shl37, 7
  %or = or i32 %and38, 1
  store i32 %or, i32* %prevMask, align 4
  %33 = load i64, i64* %bufferPos, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %bufferPos, align 8
  br label %for.cond

if.end.39:                                        ; preds = %lor.lhs.false.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.16
  %34 = load i64, i64* %bufferPos, align 8
  store i64 %34, i64* %prevPosT, align 8
  %35 = load i8*, i8** %p, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %35, i64 4
  %36 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %36 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then.51, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.end.41
  %37 = load i8*, i8** %p, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %37, i64 4
  %38 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %38 to i32
  %cmp49 = icmp eq i32 %conv48, 255
  br i1 %cmp49, label %if.then.51, label %if.else.114

if.then.51:                                       ; preds = %lor.lhs.false.46, %if.end.41
  %39 = load i8*, i8** %p, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %40 to i32
  %shl54 = shl i32 %conv53, 24
  %41 = load i8*, i8** %p, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %42 to i32
  %shl57 = shl i32 %conv56, 16
  %or58 = or i32 %shl54, %shl57
  %43 = load i8*, i8** %p, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %44 to i32
  %shl61 = shl i32 %conv60, 8
  %or62 = or i32 %or58, %shl61
  %45 = load i8*, i8** %p, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %46 to i32
  %or65 = or i32 %or62, %conv64
  store i32 %or65, i32* %src, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %if.end.95, %if.then.51
  %47 = load i32, i32* %encoding.addr, align 4
  %tobool68 = icmp ne i32 %47, 0
  br i1 %tobool68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %for.cond.66
  %48 = load i32, i32* %ip.addr, align 4
  %49 = load i64, i64* %bufferPos, align 8
  %conv70 = trunc i64 %49 to i32
  %add71 = add i32 %48, %conv70
  %50 = load i32, i32* %src, align 4
  %add72 = add i32 %add71, %50
  store i32 %add72, i32* %dest, align 4
  br label %if.end.77

if.else.73:                                       ; preds = %for.cond.66
  %51 = load i32, i32* %src, align 4
  %52 = load i32, i32* %ip.addr, align 4
  %53 = load i64, i64* %bufferPos, align 8
  %conv74 = trunc i64 %53 to i32
  %add75 = add i32 %52, %conv74
  %sub76 = sub i32 %51, %add75
  store i32 %sub76, i32* %dest, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.73, %if.then.69
  %54 = load i32, i32* %prevMask, align 4
  %cmp78 = icmp eq i32 %54, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  br label %for.end.99

if.end.81:                                        ; preds = %if.end.77
  %55 = load i32, i32* %prevMask, align 4
  %idxprom82 = zext i32 %55 to i64
  %arrayidx83 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i32 0, i64 %idxprom82
  %56 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %56 to i32
  %mul = mul nsw i32 %conv84, 8
  store i32 %mul, i32* %index, align 4
  %57 = load i32, i32* %dest, align 4
  %58 = load i32, i32* %index, align 4
  %sub85 = sub nsw i32 24, %58
  %shr = lshr i32 %57, %sub85
  %conv86 = trunc i32 %shr to i8
  store i8 %conv86, i8* %b67, align 1
  %59 = load i8, i8* %b67, align 1
  %conv87 = zext i8 %59 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %if.end.95, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.end.81
  %60 = load i8, i8* %b67, align 1
  %conv91 = zext i8 %60 to i32
  %cmp92 = icmp eq i32 %conv91, 255
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.90
  br label %for.end.99

if.end.95:                                        ; preds = %lor.lhs.false.90, %if.end.81
  %61 = load i32, i32* %dest, align 4
  %62 = load i32, i32* %index, align 4
  %sub96 = sub nsw i32 32, %62
  %shl97 = shl i32 1, %sub96
  %sub98 = sub nsw i32 %shl97, 1
  %xor = xor i32 %61, %sub98
  store i32 %xor, i32* %src, align 4
  br label %for.cond.66

for.end.99:                                       ; preds = %if.then.94, %if.then.80
  %63 = load i32, i32* %dest, align 4
  %shr100 = lshr i32 %63, 24
  %and101 = and i32 %shr100, 1
  %sub102 = sub i32 %and101, 1
  %neg = xor i32 %sub102, -1
  %conv103 = trunc i32 %neg to i8
  %64 = load i8*, i8** %p, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %64, i64 4
  store i8 %conv103, i8* %arrayidx104, align 1
  %65 = load i32, i32* %dest, align 4
  %shr105 = lshr i32 %65, 16
  %conv106 = trunc i32 %shr105 to i8
  %66 = load i8*, i8** %p, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 %conv106, i8* %arrayidx107, align 1
  %67 = load i32, i32* %dest, align 4
  %shr108 = lshr i32 %67, 8
  %conv109 = trunc i32 %shr108 to i8
  %68 = load i8*, i8** %p, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %68, i64 2
  store i8 %conv109, i8* %arrayidx110, align 1
  %69 = load i32, i32* %dest, align 4
  %conv111 = trunc i32 %69 to i8
  %70 = load i8*, i8** %p, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %conv111, i8* %arrayidx112, align 1
  %71 = load i64, i64* %bufferPos, align 8
  %add113 = add i64 %71, 5
  store i64 %add113, i64* %bufferPos, align 8
  br label %if.end.119

if.else.114:                                      ; preds = %lor.lhs.false.46
  %72 = load i32, i32* %prevMask, align 4
  %shl115 = shl i32 %72, 1
  %and116 = and i32 %shl115, 7
  %or117 = or i32 %and116, 1
  store i32 %or117, i32* %prevMask, align 4
  %73 = load i64, i64* %bufferPos, align 8
  %inc118 = add i64 %73, 1
  store i64 %inc118, i64* %bufferPos, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.114, %for.end.99
  br label %for.cond

for.end.120:                                      ; preds = %if.then.12
  %74 = load i64, i64* %bufferPos, align 8
  %75 = load i64, i64* %prevPosT, align 8
  %sub121 = sub i64 %74, %75
  store i64 %sub121, i64* %prevPosT, align 8
  %76 = load i64, i64* %prevPosT, align 8
  %cmp122 = icmp ugt i64 %76, 3
  br i1 %cmp122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.120
  br label %cond.end

cond.false:                                       ; preds = %for.end.120
  %77 = load i32, i32* %prevMask, align 4
  %78 = load i64, i64* %prevPosT, align 8
  %conv124 = trunc i64 %78 to i32
  %sub125 = sub nsw i32 %conv124, 1
  %shl126 = shl i32 %77, %sub125
  %and127 = and i32 %shl126, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %and127, %cond.false ]
  %79 = load i32*, i32** %state.addr, align 8
  store i32 %cond, i32* %79, align 4
  %80 = load i64, i64* %bufferPos, align 8
  store i64 %80, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %81 = load i64, i64* %retval
  ret i64 %81
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
