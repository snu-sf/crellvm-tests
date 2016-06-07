; ModuleID = 'unlimit.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

; Function Attrs: nounwind uwtable
define void @unlimit() #0 {
entry:
  %rl = alloca %struct.rlimit, align 8
  %call = call i32 @getrlimit(i32 2, %struct.rlimit* %rl) #2
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 1
  %0 = load i64, i64* %rlim_max, align 8
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rl, i32 0, i32 0
  store i64 %0, i64* %rlim_cur, align 8
  %call1 = call i32 @setrlimit(i32 2, %struct.rlimit* %rl) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #1

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
