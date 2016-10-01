; ModuleID = './MultiSource.Benchmarks.MallocBench/41.espresso.utility.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@util_print_time.s = internal global [40 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i64 @util_cpu_time() #0 {
entry:
  %t = alloca i64, align 8
  %rusage = alloca %struct.rusage, align 8
  store i64 0, i64* %t, align 8
  %call = call i32 @getrusage(i32 0, %struct.rusage* %rusage) #4
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %mul = mul nsw i64 %0, 1000
  %ru_utime1 = getelementptr inbounds %struct.rusage, %struct.rusage* %rusage, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime1, i32 0, i32 1
  %1 = load i64, i64* %tv_usec, align 8
  %div = sdiv i64 %1, 1000
  %add = add nsw i64 %mul, %div
  store i64 %add, i64* %t, align 8
  %2 = load i64, i64* %t, align 8
  ret i64 %2
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: nounwind uwtable
define i8* @util_print_time(i64 %t) #0 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @util_strsav(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %call1 = call i8* @malloc(i64 %mul)
  %1 = load i8*, i8** %s.addr, align 8
  %call2 = call i8* @strcpy(i8* %call1, i8* %1) #4
  ret i8* %call2
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
