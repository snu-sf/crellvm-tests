; ModuleID = './MultiSource.Benchmarks.MiBench/93.office-stringsearch.bmhsrch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pat = internal global i8* null, align 8
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bmh_init(i8* %pattern) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %lastpatchar = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  store i8* %0, i8** @pat, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %call = call i64 @strlen(i8* %1) #2
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @patlen, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @patlen, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.5, label %for.end.13

for.body.5:                                       ; preds = %for.cond.2
  %8 = load i32, i32* @patlen, align 4
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, %9
  %sub6 = sub nsw i32 %sub, 1
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i8*, i8** @pat, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %idxprom7
  %12 = load i8, i8* %arrayidx8, align 1
  %idxprom9 = zext i8 %12 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom9
  store i32 %sub6, i32* %arrayidx10, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.5
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.2

for.end.13:                                       ; preds = %for.cond.2
  %14 = load i32, i32* @patlen, align 4
  %sub14 = sub nsw i32 %14, 1
  %idxprom15 = sext i32 %sub14 to i64
  %15 = load i8*, i8** @pat, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 %idxprom15
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  store i32 %conv17, i32* %lastpatchar, align 4
  %17 = load i32, i32* %lastpatchar, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i32 0, i64 %idxprom18
  store i32 32767, i32* %arrayidx19, align 4
  %18 = load i32, i32* @patlen, align 4
  store i32 %18, i32* @skip2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %for.end.13
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @patlen, align 4
  %sub21 = sub nsw i32 %20, 1
  %cmp22 = icmp slt i32 %19, %sub21
  br i1 %cmp22, label %for.body.24, label %for.end.34

for.body.24:                                      ; preds = %for.cond.20
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** @pat, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %24 = load i32, i32* %lastpatchar, align 4
  %cmp28 = icmp eq i32 %conv27, %24
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.24
  %25 = load i32, i32* @patlen, align 4
  %26 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %25, %26
  %sub31 = sub nsw i32 %sub30, 1
  store i32 %sub31, i32* @skip2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.24
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @bmh_search(i8* %string, i32 %stringlen) #0 {
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
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i8*, i8** @pat, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
