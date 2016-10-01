; ModuleID = './MultiSource.Benchmarks.7zip/12.XzCrc64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Crc64Table = common global [256 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @Crc64GenerateTable() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca i64, align 8
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %r, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 8
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %3 = load i64, i64* %r, align 8
  %shr = lshr i64 %3, 1
  %4 = load i64, i64* %r, align 8
  %and = and i64 %4, 1
  %sub = sub i64 %and, 1
  %neg = xor i64 %sub, -1
  %and5 = and i64 -3932672073523589310, %neg
  %xor = xor i64 %shr, %and5
  store i64 %xor, i64* %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %6 = load i64, i64* %r, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i32 0, i64 %idxprom
  store i64 %6, i64* %arrayidx, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc7 = add i32 %8, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Crc64Update(i64 %v, i8* %data, i64 %size) #0 {
entry:
  %v.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %v, i64* %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %v.addr, align 8
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i64
  %xor = xor i64 %2, %conv
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i32 0, i64 %and
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i64, i64* %v.addr, align 8
  %shr = lshr i64 %6, 8
  %xor1 = xor i64 %5, %shr
  store i64 %xor1, i64* %v.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %size.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %size.addr, align 8
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %v.addr, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @Crc64Calc(i8* %data, i64 %size) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @Crc64Update(i64 -1, i8* %0, i64 %1)
  %xor = xor i64 %call, -1
  ret i64 %xor
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
