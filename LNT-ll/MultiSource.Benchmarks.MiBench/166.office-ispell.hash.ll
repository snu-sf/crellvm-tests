; ModuleID = './MultiSource.Benchmarks.MiBench/166.office-ispell.hash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@hashheader = external global %struct.hashheader, align 4

; Function Attrs: nounwind uwtable
define i32 @hash(i8* %s, i32 %hashtblsize) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %hashtblsize.addr = alloca i32, align 4
  %h = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %hashtblsize, i32* %hashtblsize.addr, align 4
  store i64 0, i64* %h, align 8
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, i32* %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i64, i64* %h, align 8
  %shl = shl i64 %4, 8
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i64
  %or = or i64 %shl, %conv2
  store i64 %or, i64* %h, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %h, align 8
  %shl6 = shl i64 %10, 5
  %11 = load i64, i64* %h, align 8
  %shr = ashr i64 %11, 27
  %and = and i64 %shr, 31
  %or7 = or i64 %shl6, %and
  store i64 %or7, i64* %h, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom9 = zext i8 %13 to i64
  %arrayidx10 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %14 to i64
  %15 = load i64, i64* %h, align 8
  %xor = xor i64 %15, %conv11
  store i64 %xor, i64* %h, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %h, align 8
  %17 = load i32, i32* %hashtblsize.addr, align 4
  %conv12 = sext i32 %17 to i64
  %rem = urem i64 %16, %conv12
  %conv13 = trunc i64 %rem to i32
  ret i32 %conv13
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
