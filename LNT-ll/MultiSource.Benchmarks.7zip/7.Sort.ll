; ModuleID = './MultiSource.Benchmarks.7zip/7.Sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @HeapSort(i32* %p, i32 %size) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %temp25 = alloca i32, align 4
  %k28 = alloca i32, align 4
  %s40 = alloca i32, align 4
  %temp68 = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ule i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.83

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 -1
  store i32* %incdec.ptr, i32** %p.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %div = udiv i32 %2, 2
  store i32 %div, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %temp, align 4
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %do.body
  %7 = load i32, i32* %k, align 4
  %shl = shl i32 %7, 1
  store i32 %shl, i32* %s, align 4
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp ugt i32 %8, %9
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.cond
  br label %for.end

if.end.3:                                         ; preds = %for.cond
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %size.addr, align 4
  %cmp4 = icmp ult i32 %10, %11
  br i1 %cmp4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %12 = load i32, i32* %s, align 4
  %add = add i32 %12, 1
  %idxprom5 = zext i32 %add to i64
  %13 = load i32*, i32** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32, i32* %s, align 4
  %idxprom7 = zext i32 %15 to i64
  %16 = load i32*, i32** %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ugt i32 %14, %17
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %s, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %s, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.3
  %19 = load i32, i32* %temp, align 4
  %20 = load i32, i32* %s, align 4
  %idxprom12 = zext i32 %20 to i64
  %21 = load i32*, i32** %p.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp uge i32 %19, %22
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  br label %for.end

if.end.16:                                        ; preds = %if.end.11
  %23 = load i32, i32* %s, align 4
  %idxprom17 = zext i32 %23 to i64
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom17
  %25 = load i32, i32* %arrayidx18, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom19 = zext i32 %26 to i64
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  store i32 %25, i32* %arrayidx20, align 4
  %28 = load i32, i32* %s, align 4
  store i32 %28, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %if.then.2
  %29 = load i32, i32* %temp, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom21 = zext i32 %30 to i64
  %31 = load i32*, i32** %p.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  store i32 %29, i32* %arrayidx22, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* %i, align 4
  %cmp23 = icmp ne i32 %dec, 0
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.65, %do.end
  %33 = load i32, i32* %size.addr, align 4
  %cmp24 = icmp ugt i32 %33, 3
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %size.addr, align 4
  %idxprom26 = zext i32 %34 to i64
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %35, i64 %idxprom26
  %36 = load i32, i32* %arrayidx27, align 4
  store i32 %36, i32* %temp25, align 4
  %37 = load i32*, i32** %p.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 3
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp ugt i32 %38, %40
  %cond = select i1 %cmp31, i32 3, i32 2
  store i32 %cond, i32* %k28, align 4
  %41 = load i32*, i32** %p.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx32, align 4
  %43 = load i32, i32* %size.addr, align 4
  %dec33 = add i32 %43, -1
  store i32 %dec33, i32* %size.addr, align 4
  %idxprom34 = zext i32 %43 to i64
  %44 = load i32*, i32** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %44, i64 %idxprom34
  store i32 %42, i32* %arrayidx35, align 4
  %45 = load i32, i32* %k28, align 4
  %idxprom36 = zext i32 %45 to i64
  %46 = load i32*, i32** %p.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 %idxprom36
  %47 = load i32, i32* %arrayidx37, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %arrayidx38, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %if.end.60, %while.body
  %49 = load i32, i32* %k28, align 4
  %shl41 = shl i32 %49, 1
  store i32 %shl41, i32* %s40, align 4
  %50 = load i32, i32* %s40, align 4
  %51 = load i32, i32* %size.addr, align 4
  %cmp42 = icmp ugt i32 %50, %51
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.cond.39
  br label %for.end.65

if.end.44:                                        ; preds = %for.cond.39
  %52 = load i32, i32* %s40, align 4
  %53 = load i32, i32* %size.addr, align 4
  %cmp45 = icmp ult i32 %52, %53
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.55

land.lhs.true.46:                                 ; preds = %if.end.44
  %54 = load i32, i32* %s40, align 4
  %add47 = add i32 %54, 1
  %idxprom48 = zext i32 %add47 to i64
  %55 = load i32*, i32** %p.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom48
  %56 = load i32, i32* %arrayidx49, align 4
  %57 = load i32, i32* %s40, align 4
  %idxprom50 = zext i32 %57 to i64
  %58 = load i32*, i32** %p.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %58, i64 %idxprom50
  %59 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp ugt i32 %56, %59
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true.46
  %60 = load i32, i32* %s40, align 4
  %inc54 = add i32 %60, 1
  store i32 %inc54, i32* %s40, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %land.lhs.true.46, %if.end.44
  %61 = load i32, i32* %temp25, align 4
  %62 = load i32, i32* %s40, align 4
  %idxprom56 = zext i32 %62 to i64
  %63 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %63, i64 %idxprom56
  %64 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp uge i32 %61, %64
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  br label %for.end.65

if.end.60:                                        ; preds = %if.end.55
  %65 = load i32, i32* %s40, align 4
  %idxprom61 = zext i32 %65 to i64
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %66, i64 %idxprom61
  %67 = load i32, i32* %arrayidx62, align 4
  %68 = load i32, i32* %k28, align 4
  %idxprom63 = zext i32 %68 to i64
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %69, i64 %idxprom63
  store i32 %67, i32* %arrayidx64, align 4
  %70 = load i32, i32* %s40, align 4
  store i32 %70, i32* %k28, align 4
  br label %for.cond.39

for.end.65:                                       ; preds = %if.then.59, %if.then.43
  %71 = load i32, i32* %temp25, align 4
  %72 = load i32, i32* %k28, align 4
  %idxprom66 = zext i32 %72 to i64
  %73 = load i32*, i32** %p.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %73, i64 %idxprom66
  store i32 %71, i32* %arrayidx67, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %74 = load i32, i32* %size.addr, align 4
  %idxprom69 = zext i32 %74 to i64
  %75 = load i32*, i32** %p.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %75, i64 %idxprom69
  %76 = load i32, i32* %arrayidx70, align 4
  store i32 %76, i32* %temp68, align 4
  %77 = load i32*, i32** %p.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %77, i64 1
  %78 = load i32, i32* %arrayidx71, align 4
  %79 = load i32, i32* %size.addr, align 4
  %idxprom72 = zext i32 %79 to i64
  %80 = load i32*, i32** %p.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %80, i64 %idxprom72
  store i32 %78, i32* %arrayidx73, align 4
  %81 = load i32, i32* %size.addr, align 4
  %cmp74 = icmp ugt i32 %81, 2
  br i1 %cmp74, label %land.lhs.true.75, label %if.else

land.lhs.true.75:                                 ; preds = %while.end
  %82 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %82, i64 2
  %83 = load i32, i32* %arrayidx76, align 4
  %84 = load i32, i32* %temp68, align 4
  %cmp77 = icmp ult i32 %83, %84
  br i1 %cmp77, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %land.lhs.true.75
  %85 = load i32*, i32** %p.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %85, i64 2
  %86 = load i32, i32* %arrayidx79, align 4
  %87 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %arrayidx80, align 4
  %88 = load i32, i32* %temp68, align 4
  %89 = load i32*, i32** %p.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %arrayidx81, align 4
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true.75, %while.end
  %90 = load i32, i32* %temp68, align 4
  %91 = load i32*, i32** %p.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %arrayidx82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then, %if.else, %if.then.78
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
