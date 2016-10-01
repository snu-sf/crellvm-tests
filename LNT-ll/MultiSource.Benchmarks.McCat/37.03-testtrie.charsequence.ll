; ModuleID = './MultiSource.Benchmarks.McCat/37.03-testtrie.charsequence.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.charsequence = type { i8*, i64, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"OUT OF MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ATTEMPTED POP ON EMPTY SEQUENCE\00", align 1

; Function Attrs: nounwind uwtable
define void @charsequence_reset(%struct.charsequence* %cs) #0 {
entry:
  %cs.addr = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %cs, %struct.charsequence** %cs.addr, align 8
  %0 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf1 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %2, i32 0, i32 0
  %3 = load i8*, i8** %buf1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @malloc(i64 16) #3
  %4 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf2 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %4, i32 0, i32 0
  store i8* %call, i8** %buf2, align 8
  %5 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf3 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf3, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %size = getelementptr inbounds %struct.charsequence, %struct.charsequence* %8, i32 0, i32 1
  store i64 16, i64* %size, align 8
  %9 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos = getelementptr inbounds %struct.charsequence, %struct.charsequence* %9, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @charsequence_push(%struct.charsequence* %cs, i8 signext %c) #0 {
entry:
  %cs.addr = alloca %struct.charsequence*, align 8
  %c.addr = alloca i8, align 1
  store %struct.charsequence* %cs, %struct.charsequence** %cs.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %size = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  call void @charsequence_reset(%struct.charsequence* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 2
  %4 = load i64, i64* %pos, align 8
  %5 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %size1 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 1
  %6 = load i64, i64* %size1, align 8
  %cmp2 = icmp eq i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %size4 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %7, i32 0, i32 1
  %8 = load i64, i64* %size4, align 8
  %shl = shl i64 %8, 1
  store i64 %shl, i64* %size4, align 8
  %9 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf = getelementptr inbounds %struct.charsequence, %struct.charsequence* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %size5 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %11, i32 0, i32 1
  %12 = load i64, i64* %size5, align 8
  %call = call i8* @realloc(i8* %10, i64 %12) #3
  %13 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf6 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %13, i32 0, i32 0
  store i8* %call, i8** %buf6, align 8
  %14 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf7 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %14, i32 0, i32 0
  %15 = load i8*, i8** %buf7, align 8
  %cmp8 = icmp eq i8* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %17 = load i8, i8* %c.addr, align 1
  %18 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos13 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %18, i32 0, i32 2
  %19 = load i64, i64* %pos13, align 8
  %20 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf14 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf14, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %19
  store i8 %17, i8* %arrayidx, align 1
  %22 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos15 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %22, i32 0, i32 2
  %23 = load i64, i64* %pos15, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %pos15, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define signext i8 @charsequence_pop(%struct.charsequence* %cs) #0 {
entry:
  %cs.addr = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %cs, %struct.charsequence** %cs.addr, align 8
  %0 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i32 0, i32 2
  %1 = load i64, i64* %pos, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos1 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 2
  %4 = load i64, i64* %pos1, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %pos1, align 8
  %5 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %4
  %7 = load i8, i8* %arrayidx, align 1
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define i8* @charsequence_val(%struct.charsequence* %cs) #0 {
entry:
  %cs.addr = alloca %struct.charsequence*, align 8
  %ret = alloca i8*, align 8
  store %struct.charsequence* %cs, %struct.charsequence** %cs.addr, align 8
  %0 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i32 0, i32 2
  %1 = load i64, i64* %pos, align 8
  %add = add i64 %1, 1
  %call = call noalias i8* @calloc(i64 %add, i64 1) #3
  store i8* %call, i8** %ret, align 8
  %2 = load i8*, i8** %ret, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %ret, align 8
  %5 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %buf = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf, align 8
  %7 = load %struct.charsequence*, %struct.charsequence** %cs.addr, align 8
  %pos2 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %7, i32 0, i32 2
  %8 = load i64, i64* %pos2, align 8
  %call3 = call i8* @strncpy(i8* %4, i8* %6, i64 %8) #3
  %9 = load i8*, i8** %ret, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
