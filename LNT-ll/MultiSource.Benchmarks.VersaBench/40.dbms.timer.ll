; ModuleID = './MultiSource.Benchmarks.VersaBench/40.dbms.timer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@startTime = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @initTime() #0 {
entry:
  %call = call i64 @time(i64* null) #3
  store i64 %call, i64* @startTime, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind uwtable
define i64 @getTime() #0 {
entry:
  %currentTime = alloca i64, align 8
  %temp = alloca i64, align 8
  %call = call i64 @time(i64* null) #3
  store i64 %call, i64* %temp, align 8
  %0 = load i64, i64* %temp, align 8
  %1 = load i64, i64* @startTime, align 8
  %call1 = call double @difftime(i64 %0, i64 %1) #4
  %conv = fptosi double %call1 to i64
  %mul = mul nsw i64 1000, %conv
  store i64 %mul, i64* %currentTime, align 8
  %2 = load i64, i64* %currentTime, align 8
  ret i64 %2
}

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
