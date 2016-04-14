; ModuleID = './load_load/example7.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @f(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %call = call noalias i8* @malloc(i64 12) #2
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %a, align 8
  %call1 = call noalias i8* @malloc(i64 16) #2
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %b, align 8
  store i32 -1, i32* %c, align 4
  %2 = load i32*, i32** %b, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 10, i32* %arrayidx, align 4
  store i32 100, i32* %c, align 4
  store i32 1000, i32* @gb, align 4
  %3 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %a, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %v1, align 4
  %6 = load i32*, i32** %b, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 20, i32* %arrayidx3, align 4
  %7 = load i32*, i32** %b, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 30, i32* %arrayidx4, align 4
  store i32 200, i32* %c, align 4
  store i32 2000, i32* @gb, align 4
  %8 = load i32, i32* %x.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32*, i32** %a, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  store i32 %10, i32* %v2, align 4
  %11 = load i32, i32* %v1, align 4
  %12 = load i32, i32* %v2, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %result, align 4
  %13 = load i32*, i32** %a, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1, i32* %arrayidx7, align 4
  %14 = load i32, i32* %result, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  store i32 0, i32* @gb, align 4
  %call = call i32 @f(i32 3)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
