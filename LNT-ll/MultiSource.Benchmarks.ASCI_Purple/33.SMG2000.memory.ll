; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/33.SMG2000.memory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Out of memory trying to allocate %d bytes\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @hypre_OutOfMemory(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @hypre_MAlloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv) #3
  store i8* %call, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %size.addr, align 4
  %call4 = call i32 @hypre_OutOfMemory(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  store i8* null, i8** %ptr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %4 = load i8*, i8** %ptr, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @hypre_CAlloc(i32 %count, i32 %elt_size) #0 {
entry:
  %count.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %size = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i32, i32* %elt_size.addr, align 4
  %conv1 = sext i32 %4 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 %conv1) #3
  store i8* %call, i8** %ptr, align 8
  %5 = load i8*, i8** %ptr, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load i32, i32* %size, align 4
  %call5 = call i32 @hypre_OutOfMemory(i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  store i8* null, i8** %ptr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %7 = load i8*, i8** %ptr, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @hypre_ReAlloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #3
  store i8* %call, i8** %ptr.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %size.addr, align 4
  %call4 = call i32 @hypre_OutOfMemory(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8*, i8** %ptr.addr, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @hypre_Free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
