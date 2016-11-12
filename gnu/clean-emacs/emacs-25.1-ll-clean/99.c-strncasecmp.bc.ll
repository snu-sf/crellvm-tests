; ModuleID = './lib/c-strncasecmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readonly uwtable
define i32 @c_strncasecmp(i8* %s1, i8* %s2, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  %2 = load i8*, i8** %p1, align 8
  %3 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load i8*, i8** %p1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call = call i32 @c_tolower(i32 %conv)
  %conv2 = trunc i32 %call to i8
  store i8 %conv2, i8* %c1, align 1
  %7 = load i8*, i8** %p2, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %call4 = call i32 @c_tolower(i32 %conv3)
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, i8* %c2, align 1
  %9 = load i64, i64* %n.addr, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp6 = icmp eq i64 %dec, 0
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %do.body
  %10 = load i8, i8* %c1, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.8, %do.body
  br label %do.end

if.end.13:                                        ; preds = %lor.lhs.false.8
  %11 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %12 = load i8*, i8** %p2, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr14, i8** %p2, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  %13 = load i8, i8* %c1, align 1
  %conv15 = zext i8 %13 to i32
  %14 = load i8, i8* %c2, align 1
  %conv16 = zext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv15, %conv16
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.12
  %15 = load i8, i8* %c1, align 1
  %conv19 = zext i8 %15 to i32
  %16 = load i8, i8* %c2, align 1
  %conv20 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv19, %conv20
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @c_tolower(i32) #1

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
