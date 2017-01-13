; ModuleID = './SingleSource.UnitTests.Threads/2.tls.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@f.i = internal thread_local global i64 1, align 8
@.str = private unnamed_addr constant [14 x i8] c"Thread 1: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Thread 2: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @f(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i64, i64* @f.i, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @f.i, align 8
  %1 = load i64, i64* @f.i, align 8
  %2 = inttoptr i64 %1 to i8*
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  %ret = alloca i64, align 8
  store i32 0, i32* %retval
  %call = call i32 @pthread_create(i64* %t, %union.pthread_attr_t* null, i8* (i8*)* @f, i8* null) #3
  %0 = load i64, i64* %t, align 8
  %1 = bitcast i64* %ret to i8**
  %call1 = call i32 @pthread_join(i64 %0, i8** %1)
  %2 = load i64, i64* %ret, align 8
  %conv = trunc i64 %2 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %conv)
  %call3 = call i32 @pthread_create(i64* %t, %union.pthread_attr_t* null, i8* (i8*)* @f, i8* null) #3
  %3 = load i64, i64* %t, align 8
  %4 = bitcast i64* %ret to i8**
  %call4 = call i32 @pthread_join(i64 %3, i8** %4)
  %5 = load i64, i64* %ret, align 8
  %conv5 = trunc i64 %5 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %conv5)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare i32 @pthread_join(i64, i8**) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
