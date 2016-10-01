; ModuleID = './MultiSource.Benchmarks.Prolangs-C/112.unix-tbl.ts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @match(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %s2.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @prefix(i8* %small, i8* %big) #0 {
entry:
  %retval = alloca i32, align 4
  %small.addr = alloca i8*, align 8
  %big.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %small, i8** %small.addr, align 8
  store i8* %big, i8** %big.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %small.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %small.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %2 = load i8*, i8** %big.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %big.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %5, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @letter(i32 %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp sge i32 %0, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp sle i32 %1, 122
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %ch.addr, align 4
  %cmp2 = icmp sge i32 %2, 65
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.6

land.lhs.true.3:                                  ; preds = %if.end
  %3 = load i32, i32* %ch.addr, align 4
  %cmp4 = icmp sle i32 %3, 90
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @numb(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %5, 10
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %add = add nsw i32 %mul, %conv5
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %k, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @digit(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %0, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp sle i32 %1, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @max(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @tcopy(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %t.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %s.addr, align 8
  store i8 %1, i8* %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
