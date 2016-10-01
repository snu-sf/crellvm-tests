; ModuleID = './MultiSource.Benchmarks.7zip/22.7zCrcOpt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @CrcUpdateT4(i32 %v, i8* %data, i64 %size, i32* %table) #0 {
entry:
  %v.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %table.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  store i32 %v, i32* %v.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32* %table, i32** %table.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %p, align 8
  %3 = ptrtoint i8* %2 to i64
  %conv = trunc i64 %3 to i32
  %and = and i32 %conv, 3
  %cmp1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %v.addr, align 4
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %xor = xor i32 %5, %conv3
  %and4 = and i32 %xor, 255
  %idxprom = zext i32 %and4 to i64
  %8 = load i32*, i32** %table.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %10, 8
  %xor5 = xor i32 %9, %shr
  store i32 %xor5, i32* %v.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %size.addr, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %size.addr, align 8
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.31, %for.end
  %13 = load i64, i64* %size.addr, align 8
  %cmp7 = icmp uge i64 %13, 4
  br i1 %cmp7, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.6
  %14 = load i8*, i8** %p, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %v.addr, align 4
  %xor10 = xor i32 %17, %16
  store i32 %xor10, i32* %v.addr, align 4
  %18 = load i32, i32* %v.addr, align 4
  %and11 = and i32 %18, 255
  %add = add i32 768, %and11
  %idxprom12 = zext i32 %add to i64
  %19 = load i32*, i32** %table.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %20 = load i32, i32* %arrayidx13, align 4
  %21 = load i32, i32* %v.addr, align 4
  %shr14 = lshr i32 %21, 8
  %and15 = and i32 %shr14, 255
  %add16 = add i32 512, %and15
  %idxprom17 = zext i32 %add16 to i64
  %22 = load i32*, i32** %table.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %22, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  %xor19 = xor i32 %20, %23
  %24 = load i32, i32* %v.addr, align 4
  %shr20 = lshr i32 %24, 16
  %and21 = and i32 %shr20, 255
  %add22 = add i32 256, %and21
  %idxprom23 = zext i32 %add22 to i64
  %25 = load i32*, i32** %table.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %25, i64 %idxprom23
  %26 = load i32, i32* %arrayidx24, align 4
  %xor25 = xor i32 %xor19, %26
  %27 = load i32, i32* %v.addr, align 4
  %shr26 = lshr i32 %27, 24
  %add27 = add i32 0, %shr26
  %idxprom28 = zext i32 %add27 to i64
  %28 = load i32*, i32** %table.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %28, i64 %idxprom28
  %29 = load i32, i32* %arrayidx29, align 4
  %xor30 = xor i32 %xor25, %29
  store i32 %xor30, i32* %v.addr, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.9
  %30 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %30, 4
  store i64 %sub, i64* %size.addr, align 8
  %31 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond.6

for.end.32:                                       ; preds = %for.cond.6
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %for.end.32
  %32 = load i64, i64* %size.addr, align 8
  %cmp34 = icmp ugt i64 %32, 0
  br i1 %cmp34, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.33
  %33 = load i32, i32* %v.addr, align 4
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv37 = zext i8 %35 to i32
  %xor38 = xor i32 %33, %conv37
  %and39 = and i32 %xor38, 255
  %idxprom40 = zext i32 %and39 to i64
  %36 = load i32*, i32** %table.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %36, i64 %idxprom40
  %37 = load i32, i32* %arrayidx41, align 4
  %38 = load i32, i32* %v.addr, align 4
  %shr42 = lshr i32 %38, 8
  %xor43 = xor i32 %37, %shr42
  store i32 %xor43, i32* %v.addr, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.36
  %39 = load i64, i64* %size.addr, align 8
  %dec45 = add i64 %39, -1
  store i64 %dec45, i64* %size.addr, align 8
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  %41 = load i32, i32* %v.addr, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @CrcUpdateT8(i32 %v, i8* %data, i64 %size, i32* %table) #0 {
entry:
  %v.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %table.addr = alloca i32*, align 8
  store i32 %v, i32* %v.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32* %table, i32** %table.addr, align 8
  %0 = load i32, i32* %v.addr, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i32*, i32** %table.addr, align 8
  %call = call i32 @CrcUpdateT4(i32 %0, i8* %1, i64 %2, i32* %3)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
