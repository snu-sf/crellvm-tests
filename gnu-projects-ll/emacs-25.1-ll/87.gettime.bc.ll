; ModuleID = './lib/gettime.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

; Function Attrs: nounwind uwtable
define void @gettime(%struct.timespec* %ts) #0 {
entry:
  %ts.addr = alloca %struct.timespec*, align 8
  %tv = alloca %struct.timeval, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.timespec*, %struct.timespec** %ts.addr, align 8
  %call = call i32 @clock_gettime(i32 0, %struct.timespec* %0) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %2 = load %struct.timespec*, %struct.timespec** %ts.addr, align 8
  %tv_sec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i64 %1, i64* %tv_sec2, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %mul = mul nsw i64 %3, 1000
  %4 = load %struct.timespec*, %struct.timespec** %ts.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 %mul, i64* %tv_nsec, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
