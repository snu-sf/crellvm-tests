; ModuleID = 'rk.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @rkcomp(i8* %probe) #0 {
entry:
  %retval = alloca i64, align 8
  %probe.addr = alloca i8*, align 8
  %hashprobe = alloca i64, align 8
  %coded = alloca [17 x i8], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %probe, i8** %probe.addr, align 8
  store i64 0, i64* %hashprobe, align 8
  %0 = load i8*, i8** %probe.addr, align 8
  %call = call i64 @strlen(i8* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp ugt i64 %conv1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %coded, i32 0, i32 0
  %1 = load i8*, i8** %probe.addr, align 8
  %call3 = call i32 @seqencode(i8* %arraydecay, i8* %1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %len, align 4
  %cmp8 = icmp slt i32 %2, %3
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %hashprobe, align 8
  %shl = shl i64 %4, 4
  store i64 %shl, i64* %hashprobe, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %coded, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv10 = sext i8 %6 to i64
  %7 = load i64, i64* %hashprobe, align 8
  %or = or i64 %7, %conv10
  store i64 %or, i64* %hashprobe, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %9 = load i32, i32* %i, align 4
  %conv12 = sext i32 %9 to i64
  %cmp13 = icmp ult i64 %conv12, 16
  br i1 %cmp13, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.11
  %10 = load i64, i64* %hashprobe, align 8
  %shl16 = shl i64 %10, 4
  store i64 %shl16, i64* %hashprobe, align 8
  %11 = load i64, i64* %hashprobe, align 8
  %or17 = or i64 %11, 15
  store i64 %or17, i64* %hashprobe, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %12 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %13 = load i64, i64* %hashprobe, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %for.end.20, %if.then.6, %if.then
  %14 = load i64, i64* %retval
  ret i64 %14
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @seqencode(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @rkseq(i64 %hashprobe, i8* %sequence) #0 {
entry:
  %retval = alloca i32, align 4
  %hashprobe.addr = alloca i64, align 8
  %sequence.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %pos = alloca i64, align 8
  %target = alloca i64, align 8
  store i64 %hashprobe, i64* %hashprobe.addr, align 8
  store i8* %sequence, i8** %sequence.addr, align 8
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %target, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %sequence.addr, align 8
  %2 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %4 = load i64, i64* %target, align 8
  %shl = shl i64 %4, 4
  store i64 %shl, i64* %target, align 8
  %5 = load i8*, i8** %sequence.addr, align 8
  %6 = load i64, i64* %i, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %add.ptr3, align 1
  %conv4 = sext i8 %7 to i64
  %8 = load i64, i64* %target, align 8
  %or = or i64 %8, %conv4
  store i64 %or, i64* %target, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %for.end
  %10 = load i8*, i8** %sequence.addr, align 8
  %11 = load i64, i64* %pos, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %11
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 16
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -1
  %12 = load i8, i8* %add.ptr7, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %hashprobe.addr, align 8
  %14 = load i64, i64* %target, align 8
  %and = and i64 %13, %14
  %15 = load i64, i64* %target, align 8
  %cmp11 = icmp eq i64 %and, %15
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %while.body
  %16 = load i64, i64* %pos, align 8
  %conv14 = trunc i64 %16 to i32
  store i32 %conv14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %while.body
  %17 = load i64, i64* %target, align 8
  %shl16 = shl i64 %17, 4
  store i64 %shl16, i64* %target, align 8
  %18 = load i8*, i8** %sequence.addr, align 8
  %19 = load i64, i64* %pos, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %18, i64 %19
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 16
  %20 = load i8, i8* %add.ptr18, align 1
  %conv19 = sext i8 %20 to i64
  %21 = load i64, i64* %target, align 8
  %or20 = or i64 %21, %conv19
  store i64 %or20, i64* %target, align 8
  %22 = load i64, i64* %pos, align 8
  %inc21 = add nsw i64 %22, 1
  store i64 %inc21, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.35, %while.end
  %23 = load i64, i64* %i, align 8
  %cmp23 = icmp ult i64 %23, 16
  br i1 %cmp23, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %for.cond.22
  %24 = load i64, i64* %target, align 8
  %or26 = or i64 %24, 15
  store i64 %or26, i64* %target, align 8
  %25 = load i64, i64* %hashprobe.addr, align 8
  %26 = load i64, i64* %target, align 8
  %and27 = and i64 %25, %26
  %27 = load i64, i64* %target, align 8
  %cmp28 = icmp eq i64 %and27, %27
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.body.25
  %28 = load i64, i64* %pos, align 8
  %conv31 = trunc i64 %28 to i32
  store i32 %conv31, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.body.25
  %29 = load i64, i64* %target, align 8
  %shl33 = shl i64 %29, 4
  store i64 %shl33, i64* %target, align 8
  %30 = load i64, i64* %pos, align 8
  %inc34 = add nsw i64 %30, 1
  store i64 %inc34, i64* %pos, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.32
  %31 = load i64, i64* %i, align 8
  %inc36 = add nsw i64 %31, 1
  store i64 %inc36, i64* %i, align 8
  br label %for.cond.22

for.end.37:                                       ; preds = %for.cond.22
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then.30, %if.then.13
  %32 = load i32, i32* %retval
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
