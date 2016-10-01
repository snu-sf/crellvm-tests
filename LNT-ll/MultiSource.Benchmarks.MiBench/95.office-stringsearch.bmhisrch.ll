; ModuleID = './MultiSource.Benchmarks.MiBench/95.office-stringsearch.bmhisrch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@patlen = internal global i32 0, align 4
@pat = internal global i8* null, align 8
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bmhi_init(i8* %pattern) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %lastpatchar = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4
  %1 = load i8*, i8** @pat, align 8
  %2 = load i32, i32* @patlen, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call i8* @realloc(i8* %1, i64 %conv1) #5
  store i8* %call2, i8** @pat, align 8
  %3 = load i8*, i8** @pat, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #6
  unreachable

if.else:                                          ; preds = %entry
  %call3 = call i32 @atexit(void ()* @bhmi_cleanup) #5
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @patlen, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 @toupper(i32 %conv5) #5
  %conv7 = trunc i32 %call6 to i8
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** @pat, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.16, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp11 = icmp sle i32 %12, 255
  br i1 %cmp11, label %for.body.13, label %for.end.18

for.body.13:                                      ; preds = %for.cond.10
  %13 = load i32, i32* @patlen, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom14
  store i32 %13, i32* %arrayidx15, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.13
  %15 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.10

for.end.18:                                       ; preds = %for.cond.10
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.37, %for.end.18
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @patlen, align 4
  %sub = sub nsw i32 %17, 1
  %cmp20 = icmp slt i32 %16, %sub
  br i1 %cmp20, label %for.body.22, label %for.end.39

for.body.22:                                      ; preds = %for.cond.19
  %18 = load i32, i32* @patlen, align 4
  %19 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %18, %19
  %sub24 = sub nsw i32 %sub23, 1
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8*, i8** @pat, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %idxprom27 = zext i8 %22 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom27
  store i32 %sub24, i32* %arrayidx28, align 4
  %23 = load i32, i32* @patlen, align 4
  %24 = load i32, i32* %i, align 4
  %sub29 = sub nsw i32 %23, %24
  %sub30 = sub nsw i32 %sub29, 1
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i8*, i8** @pat, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %26, i64 %idxprom31
  %27 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %27 to i32
  %call34 = call i32 @tolower(i32 %conv33) #5
  %idxprom35 = sext i32 %call34 to i64
  %arrayidx36 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom35
  store i32 %sub30, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.22
  %28 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.19

for.end.39:                                       ; preds = %for.cond.19
  %29 = load i32, i32* @patlen, align 4
  %sub40 = sub nsw i32 %29, 1
  %idxprom41 = sext i32 %sub40 to i64
  %30 = load i8*, i8** @pat, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %30, i64 %idxprom41
  %31 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %31 to i32
  store i32 %conv43, i32* %lastpatchar, align 4
  %32 = load i32, i32* %lastpatchar, align 4
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom44
  store i32 32767, i32* %arrayidx45, align 4
  %33 = load i32, i32* %lastpatchar, align 4
  %call46 = call i32 @tolower(i32 %33) #5
  %idxprom47 = sext i32 %call46 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom47
  store i32 32767, i32* %arrayidx48, align 4
  %34 = load i32, i32* @patlen, align 4
  store i32 %34, i32* @skip2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.63, %for.end.39
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* @patlen, align 4
  %sub50 = sub nsw i32 %36, 1
  %cmp51 = icmp slt i32 %35, %sub50
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.49
  %37 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %38 = load i8*, i8** @pat, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %38, i64 %idxprom54
  %39 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %39 to i32
  %40 = load i32, i32* %lastpatchar, align 4
  %cmp57 = icmp eq i32 %conv56, %40
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %for.body.53
  %41 = load i32, i32* @patlen, align 4
  %42 = load i32, i32* %i, align 4
  %sub60 = sub nsw i32 %41, %42
  %sub61 = sub nsw i32 %sub60, 1
  store i32 %sub61, i32* @skip2, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %for.body.53
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %43 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %43, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.49

for.end.65:                                       ; preds = %for.cond.49
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind uwtable
define void @bhmi_cleanup() #0 {
entry:
  %0 = load i8*, i8** @pat, align 8
  call void @free(i8* %0) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define i8* @bmhi_search(i8* %string, i32 %stringlen) #0 {
entry:
  %retval = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %stringlen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %stringlen, i32* %stringlen.addr, align 4
  %0 = load i32, i32* @patlen, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %stringlen.addr, align 4
  %sub1 = sub nsw i32 %sub, %1
  store i32 %sub1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %stringlen.addr, align 4
  %4 = load i8*, i8** %string.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %string.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.33, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %7 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %i, align 4
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %stringlen.addr, align 4
  %sub5 = sub nsw i32 32767, %11
  %cmp6 = icmp slt i32 %10, %sub5
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %while.end
  %12 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %12, 32767
  store i32 %sub9, i32* %i, align 4
  %13 = load i32, i32* @patlen, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %j, align 4
  %14 = load i8*, i8** %string.addr, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %15, %16
  %idx.ext12 = sext i32 %sub11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %14, i64 %idx.ext12
  store i8* %add.ptr13, i8** %s, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.23, %if.end.8
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  %cmp15 = icmp sge i32 %dec, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.14
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i8*, i8** %s, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  %20 = load i8, i8* %arrayidx17, align 1
  %conv = sext i8 %20 to i32
  %call = call i32 @toupper(i32 %conv) #5
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i8*, i8** @pat, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %cmp21 = icmp eq i32 %call, %conv20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.14
  %24 = phi i1 [ false, %while.cond.14 ], [ %cmp21, %land.rhs ]
  br i1 %24, label %while.body.23, label %while.end.24

while.body.23:                                    ; preds = %land.end
  br label %while.cond.14

while.end.24:                                     ; preds = %land.end
  %25 = load i32, i32* %j, align 4
  %cmp25 = icmp slt i32 %25, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end.24
  %26 = load i8*, i8** %s, align 8
  store i8* %26, i8** %retval
  br label %return

if.end.28:                                        ; preds = %while.end.24
  %27 = load i32, i32* @skip2, align 4
  %28 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %28, %27
  store i32 %add29, i32* %i, align 4
  %cmp30 = icmp sge i32 %add29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i8* null, i8** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  br label %for.cond

return:                                           ; preds = %if.then.32, %if.then.27, %if.then.7, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
