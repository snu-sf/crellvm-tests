; ModuleID = './lib/xmalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xalloc_exit_failure = global i32 1, align 4
@xalloc_fail_func = global void ()* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@xalloc_msg_memory_exhausted = constant i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #0 {
entry:
  %0 = load void ()*, void ()** @xalloc_fail_func, align 8
  %tobool = icmp ne void ()* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void ()*, void ()** @xalloc_fail_func, align 8
  call void %1()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @xalloc_exit_failure, align 4
  %3 = load i8*, i8** @xalloc_msg_memory_exhausted, align 8
  %call = call i8* @gettext(i8* %3) #5
  call void (i32, i32, i8*, ...) @error(i32 %2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %call)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #4 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #5
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #7
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #4 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #5
  store i8* %call, i8** %p.addr, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p.addr, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #4 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %s.addr, align 8
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #5
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
