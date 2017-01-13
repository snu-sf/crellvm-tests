; ModuleID = './MultiSource.Benchmarks.MiBench/179.automotive-bitcount.bitstrng.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @bitstring(i8* %str, i64 %byze, i32 %biz, i32 %strwid) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %byze.addr = alloca i64, align 8
  %biz.addr = alloca i32, align 4
  %strwid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 %byze, i64* %byze.addr, align 8
  store i32 %biz, i32* %biz.addr, align 4
  store i32 %strwid, i32* %strwid.addr, align 4
  %0 = load i32, i32* %strwid.addr, align 4
  %1 = load i32, i32* %biz.addr, align 4
  %2 = load i32, i32* %biz.addr, align 4
  %shr = ashr i32 %2, 2
  %add = add nsw i32 %1, %shr
  %3 = load i32, i32* %biz.addr, align 4
  %rem = srem i32 %3, 4
  %tobool = icmp ne i32 %rem, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %sub = sub nsw i32 %add, %cond
  %sub1 = sub nsw i32 %0, %sub
  store i32 %sub1, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  store i8 32, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %8 = load i32, i32* %biz.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %biz.addr, align 4
  %cmp2 = icmp sge i32 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %byze.addr, align 8
  %10 = load i32, i32* %biz.addr, align 4
  %sh_prom = zext i32 %10 to i64
  %shr3 = ashr i64 %9, %sh_prom
  %and = and i64 %shr3, 1
  %add4 = add nsw i64 %and, 48
  %conv = trunc i64 %add4 to i8
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr5, i8** %str.addr, align 8
  store i8 %conv, i8* %11, align 1
  %12 = load i32, i32* %biz.addr, align 4
  %rem6 = srem i32 %12, 4
  %tobool7 = icmp ne i32 %rem6, 0
  br i1 %tobool7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %13 = load i32, i32* %biz.addr, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i8*, i8** %str.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %str.addr, align 8
  store i8 32, i8* %14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %str.addr, align 8
  store i8 0, i8* %15, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
