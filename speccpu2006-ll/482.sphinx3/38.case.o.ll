; ModuleID = 'case.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lcase(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %cp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %add = add nsw i32 %conv5, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %8 = load i8*, i8** %cp.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  %10 = load i8*, i8** %cp.addr, align 8
  store i8 %conv7, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ucase(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %cp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv5, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %8 = load i8*, i8** %cp.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  %10 = load i8*, i8** %cp.addr, align 8
  store i8 %conv7, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @strcmp_nocase(i8* %str1, i8* %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.35, %entry
  %0 = load i8*, i8** %str1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str1.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c1, align 1
  %2 = load i8, i8* %c1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8, i8* %c1, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i8, i8* %c1, align 1
  %conv5 = sext i8 %4 to i32
  %sub = sub nsw i32 %conv5, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.cond
  %5 = load i8, i8* %c1, align 1
  %conv6 = sext i8 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  store i8 %conv7, i8* %c1, align 1
  %6 = load i8*, i8** %str2.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr8, i8** %str2.addr, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %c2, align 1
  %8 = load i8, i8* %c2, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp sge i32 %conv9, 97
  br i1 %cmp10, label %land.lhs.true.12, label %cond.false.19

land.lhs.true.12:                                 ; preds = %cond.end
  %9 = load i8, i8* %c2, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp sle i32 %conv13, 122
  br i1 %cmp14, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %land.lhs.true.12
  %10 = load i8, i8* %c2, align 1
  %conv17 = sext i8 %10 to i32
  %sub18 = sub nsw i32 %conv17, 32
  br label %cond.end.21

cond.false.19:                                    ; preds = %land.lhs.true.12, %cond.end
  %11 = load i8, i8* %c2, align 1
  %conv20 = sext i8 %11 to i32
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.16
  %cond22 = phi i32 [ %sub18, %cond.true.16 ], [ %conv20, %cond.false.19 ]
  %conv23 = trunc i32 %cond22 to i8
  store i8 %conv23, i8* %c2, align 1
  %12 = load i8, i8* %c1, align 1
  %conv24 = sext i8 %12 to i32
  %13 = load i8, i8* %c2, align 1
  %conv25 = sext i8 %13 to i32
  %cmp26 = icmp ne i32 %conv24, %conv25
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.21
  %14 = load i8, i8* %c1, align 1
  %conv28 = sext i8 %14 to i32
  %15 = load i8, i8* %c2, align 1
  %conv29 = sext i8 %15 to i32
  %sub30 = sub nsw i32 %conv28, %conv29
  store i32 %sub30, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.21
  %16 = load i8, i8* %c1, align 1
  %conv31 = sext i8 %16 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.then.34, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
