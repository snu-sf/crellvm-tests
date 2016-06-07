; ModuleID = 'xmalloc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@name = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"\0A%s%sCannot allocate %lu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @xmalloc_set_program_name(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** @name, align 8
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @xmalloc_failed(i64 %size) #1 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @name, align 8
  %2 = load i8*, i8** @name, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %4 = load i64, i64* %size.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* %1, i8* %cond, i64 %4)
  call void @xexit(i32 1) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @xexit(i32) #3

; Function Attrs: nounwind uwtable
define noalias i8* @xmalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %newmem = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @malloc(i64 %1)
  store i8* %call, i8** %newmem, align 8
  %2 = load i8*, i8** %newmem, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %3 = load i64, i64* %size.addr, align 8
  call void @xmalloc_failed(i64 %3) #4
  unreachable

if.end.2:                                         ; preds = %if.end
  %4 = load i8*, i8** %newmem, align 8
  ret i8* %4
}

declare i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define noalias i8* @xcalloc(i64 %nelem, i64 %elsize) #0 {
entry:
  %nelem.addr = alloca i64, align 8
  %elsize.addr = alloca i64, align 8
  %newmem = alloca i8*, align 8
  store i64 %nelem, i64* %nelem.addr, align 8
  store i64 %elsize, i64* %elsize.addr, align 8
  %0 = load i64, i64* %nelem.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %elsize.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 1, i64* %elsize.addr, align 8
  store i64 1, i64* %nelem.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i64, i64* %nelem.addr, align 8
  %3 = load i64, i64* %elsize.addr, align 8
  %call = call i8* @calloc(i64 %2, i64 %3)
  store i8* %call, i8** %newmem, align 8
  %4 = load i8*, i8** %newmem, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load i64, i64* %nelem.addr, align 8
  %6 = load i64, i64* %elsize.addr, align 8
  %mul = mul i64 %5, %6
  call void @xmalloc_failed(i64 %mul) #4
  unreachable

if.end.3:                                         ; preds = %if.end
  %7 = load i8*, i8** %newmem, align 8
  ret i8* %7
}

declare i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %oldmem, i64 %size) #0 {
entry:
  %oldmem.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %newmem = alloca i8*, align 8
  store i8* %oldmem, i8** %oldmem.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %oldmem.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %2 = load i64, i64* %size.addr, align 8
  %call = call i8* @malloc(i64 %2)
  store i8* %call, i8** %newmem, align 8
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %oldmem.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call2 = call i8* @realloc(i8* %3, i64 %4)
  store i8* %call2, i8** %newmem, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %5 = load i8*, i8** %newmem, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %6 = load i64, i64* %size.addr, align 8
  call void @xmalloc_failed(i64 %6) #4
  unreachable

if.end.6:                                         ; preds = %if.end.3
  %7 = load i8*, i8** %newmem, align 8
  ret i8* %7
}

declare i8* @realloc(i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
