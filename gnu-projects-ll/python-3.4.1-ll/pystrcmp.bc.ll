; ModuleID = './pystrcmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @PyOS_mystrnicmp(i8* %s1, i8* %s2, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %1 = load i64, i64* %size.addr, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %size.addr, align 8
  %cmp1 = icmp sgt i64 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv) #2
  %4 = load i8*, i8** %s2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %call3 = call i32 @tolower(i32 %conv2) #2
  %cmp4 = icmp eq i32 %call, %call3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr6 = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %s2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool7 = icmp ne i8 %10, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.9:                                         ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %land.end
  %11 = load i8*, i8** %s1.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %call11 = call i32 @tolower(i32 %conv10) #2
  %13 = load i8*, i8** %s2.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %call13 = call i32 @tolower(i32 %conv12) #2
  %sub = sub i32 %call11, %call13
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyOS_mystricmp(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv1) #2
  %4 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr2 = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %s2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %call4 = call i32 @tolower(i32 %conv3) #2
  %cmp = icmp eq i32 %call, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %s1.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %call7 = call i32 @tolower(i32 %conv6) #2
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %call9 = call i32 @tolower(i32 %conv8) #2
  %sub = sub i32 %call7, %call9
  ret i32 %sub
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
