; ModuleID = 'byterevn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @byterevn(i32* %w, i32 %n) #0 {
entry:
  %w.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %old = alloca i32, align 4
  %newv = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %w, i32** %w.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %w.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %old, align 4
  %5 = load i32, i32* %old, align 4
  %shr = ashr i32 %5, 24
  %and = and i32 %shr, 255
  store i32 %and, i32* %newv, align 4
  %6 = load i32, i32* %old, align 4
  %shr1 = ashr i32 %6, 8
  %and2 = and i32 %shr1, 65280
  %7 = load i32, i32* %newv, align 4
  %or = or i32 %7, %and2
  store i32 %or, i32* %newv, align 4
  %8 = load i32, i32* %old, align 4
  %shl = shl i32 %8, 8
  %and3 = and i32 %shl, 16711680
  %9 = load i32, i32* %newv, align 4
  %or4 = or i32 %9, %and3
  store i32 %or4, i32* %newv, align 4
  %10 = load i32, i32* %old, align 4
  %shl5 = shl i32 %10, 24
  %and6 = and i32 %shl5, -16777216
  %11 = load i32, i32* %newv, align 4
  %or7 = or i32 %11, %and6
  store i32 %or7, i32* %newv, align 4
  %12 = load i32, i32* %newv, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %12, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
