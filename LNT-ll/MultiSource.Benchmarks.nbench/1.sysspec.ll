; ModuleID = './MultiSource.Benchmarks.nbench/1.sysspec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_align = external global i32, align 4
@mem_array_ents = external global i32, align 4
@mem_array = external global [2 x [20 x i64]], align 16
@.str = private unnamed_addr constant [29 x i8] c"ERROR CONDITION\0AContext: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Code: %d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @AllocateMemory(i64 %nbytes, i32* %errorcode) #0 {
entry:
  %retval = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %errorcode.addr = alloca i32*, align 8
  %returnval = alloca i8*, align 8
  %true_addr = alloca i64, align 8
  %adj_addr = alloca i64, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  store i32* %errorcode, i32** %errorcode.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %1 = load i32, i32* @global_align, align 4
  %conv = sext i32 %1 to i64
  %mul = mul nsw i64 2, %conv
  %add = add i64 %0, %mul
  %call = call noalias i8* @malloc(i64 %add) #2
  store i8* %call, i8** %returnval, align 8
  %2 = load i8*, i8** %returnval, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %errorcode.addr, align 8
  store i32 1, i32* %3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %errorcode.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %returnval, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %true_addr, align 8
  store i64 %6, i64* %adj_addr, align 8
  %7 = load i32, i32* @global_align, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %8 = load i64, i64* %true_addr, align 8
  %9 = load i64, i64* %adj_addr, align 8
  %call5 = call i32 @AddMemArray(i64 %8, i64 %9)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  %10 = load i32*, i32** %errorcode.addr, align 8
  store i32 2, i32* %10, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.4
  %11 = load i8*, i8** %returnval, align 8
  store i8* %11, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %12 = load i32, i32* @global_align, align 4
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.end.8
  %13 = load i64, i64* %true_addr, align 8
  %rem = urem i64 %13, 2
  %cmp12 = icmp eq i64 %rem, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  %14 = load i64, i64* %adj_addr, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %adj_addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  br label %if.end.31

if.else.16:                                       ; preds = %if.end.8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.16
  %15 = load i64, i64* %adj_addr, align 8
  %16 = load i32, i32* @global_align, align 4
  %conv17 = sext i32 %16 to i64
  %rem18 = urem i64 %15, %conv17
  %cmp19 = icmp ne i64 %rem18, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i64, i64* %adj_addr, align 8
  %inc21 = add i64 %17, 1
  store i64 %inc21, i64* %adj_addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i64, i64* %adj_addr, align 8
  %19 = load i32, i32* @global_align, align 4
  %mul22 = mul nsw i32 %19, 2
  %conv23 = sext i32 %mul22 to i64
  %rem24 = urem i64 %18, %conv23
  %cmp25 = icmp eq i64 %rem24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %while.end
  %20 = load i32, i32* @global_align, align 4
  %conv28 = sext i32 %20 to i64
  %21 = load i64, i64* %adj_addr, align 8
  %add29 = add i64 %21, %conv28
  store i64 %add29, i64* %adj_addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %while.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.15
  %22 = load i64, i64* %adj_addr, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %returnval, align 8
  %24 = load i64, i64* %true_addr, align 8
  %25 = load i64, i64* %adj_addr, align 8
  %call32 = call i32 @AddMemArray(i64 %24, i64 %25)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %26 = load i32*, i32** %errorcode.addr, align 8
  store i32 2, i32* %26, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  %27 = load i8*, i8** %returnval, align 8
  store i8* %27, i8** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.end.7
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @AddMemArray(i64 %true_addr, i64 %adj_addr) #0 {
entry:
  %retval = alloca i32, align 4
  %true_addr.addr = alloca i64, align 8
  %adj_addr.addr = alloca i64, align 8
  store i64 %true_addr, i64* %true_addr.addr, align 8
  store i64 %adj_addr, i64* %adj_addr.addr, align 8
  %0 = load i32, i32* @mem_array_ents, align 4
  %cmp = icmp sge i32 %0, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %true_addr.addr, align 8
  %2 = load i32, i32* @mem_array_ents, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 0), i32 0, i64 %idxprom
  store i64 %1, i64* %arrayidx, align 8
  %3 = load i64, i64* %adj_addr.addr, align 8
  %4 = load i32, i32* @mem_array_ents, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 1), i32 0, i64 %idxprom1
  store i64 %3, i64* %arrayidx2, align 8
  %5 = load i32, i32* @mem_array_ents, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @mem_array_ents, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @FreeMemory(i8* %mempointer, i32* %errorcode) #0 {
entry:
  %mempointer.addr = alloca i8*, align 8
  %errorcode.addr = alloca i32*, align 8
  %adj_addr = alloca i64, align 8
  %true_addr = alloca i64, align 8
  store i8* %mempointer, i8** %mempointer.addr, align 8
  store i32* %errorcode, i32** %errorcode.addr, align 8
  %0 = load i8*, i8** %mempointer.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %adj_addr, align 8
  %2 = load i64, i64* %adj_addr, align 8
  %call = call i32 @RemoveMemArray(i64 %2, i64* %true_addr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %errorcode.addr, align 8
  store i32 3, i32* %3, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %true_addr, align 8
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %mempointer.addr, align 8
  %6 = load i8*, i8** %mempointer.addr, align 8
  call void @free(i8* %6) #2
  %7 = load i32*, i32** %errorcode.addr, align 8
  store i32 0, i32* %7, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @RemoveMemArray(i64 %adj_addr, i64* %true_addr) #0 {
entry:
  %retval = alloca i32, align 4
  %adj_addr.addr = alloca i64, align 8
  %true_addr.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %adj_addr, i64* %adj_addr.addr, align 8
  store i64* %true_addr, i64** %true_addr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @mem_array_ents, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 1), i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load i64, i64* %adj_addr.addr, align 8
  %cmp1 = icmp eq i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 0), i32 0, i64 %idxprom2
  %6 = load i64, i64* %arrayidx3, align 8
  %7 = load i64*, i64** %true_addr.addr, align 8
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* @mem_array_ents, align 4
  %cmp4 = icmp slt i32 %add, %10
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %11, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 0), i32 0, i64 %idxprom6
  %12 = load i64, i64* %arrayidx7, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 0), i32 0, i64 %idxprom8
  store i64 %12, i64* %arrayidx9, align 8
  %14 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %14, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 1), i32 0, i64 %idxprom11
  %15 = load i64, i64* %arrayidx12, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i32 0, i64 1), i32 0, i64 %idxprom13
  store i64 %15, i64* %arrayidx14, align 8
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* @mem_array_ents, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* @mem_array_ents, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %while.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @MoveMemory(i8* %destination, i8* %source, i64 %nbytes) #0 {
entry:
  %destination.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  store i8* %destination, i8** %destination.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i8*, i8** %destination.addr, align 8
  %1 = load i8*, i8** %source.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @InitMemArray() #0 {
entry:
  store i32 0, i32* @mem_array_ents, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CreateFile(i8* %filename, i32* %errorcode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %errorcode.addr = alloca i32*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %errorcode, i32** %errorcode.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ReportError(i8* %errorcontext, i32 %errorcode) #0 {
entry:
  %errorcontext.addr = alloca i8*, align 8
  %errorcode.addr = alloca i32, align 4
  store i8* %errorcontext, i8** %errorcontext.addr, align 8
  store i32 %errorcode, i32* %errorcode.addr, align 4
  %0 = load i8*, i8** %errorcontext.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* %0)
  %1 = load i32, i32* %errorcode.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %1)
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @ErrorExit() #0 {
entry:
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i64 @StartStopwatch() #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @StopStopwatch(i64 %startticks) #0 {
entry:
  %startticks.addr = alloca i64, align 8
  store i64 %startticks, i64* %startticks.addr, align 8
  ret i64 1000
}

; Function Attrs: nounwind uwtable
define i64 @TicksToSecs(i64 %tickamount) #0 {
entry:
  %tickamount.addr = alloca i64, align 8
  store i64 %tickamount, i64* %tickamount.addr, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define double @TicksToFracSecs(i64 %tickamount) #0 {
entry:
  %tickamount.addr = alloca i64, align 8
  store i64 %tickamount, i64* %tickamount.addr, align 8
  ret double 0.000000e+00
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
