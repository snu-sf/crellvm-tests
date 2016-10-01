; ModuleID = './MultiSource.Applications.ClamAV/45.libclamav_regex_strlcpy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @cli_strlcpy(i8* %dst, i8* %src, i64 %siz) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %siz.addr = alloca i64, align 8
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  %n = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %siz, i64* %siz.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  %1 = load i8*, i8** %src.addr, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i64, i64* %siz.addr, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %4 = load i64, i64* %n, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %n, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %d, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr2, i8** %d, align 8
  store i8 %6, i8* %7, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.5, %while.cond
  br label %if.end.6

if.end.6:                                         ; preds = %while.end, %entry
  %8 = load i64, i64* %n, align 8
  %cmp7 = icmp eq i64 %8, 0
  br i1 %cmp7, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.6
  %9 = load i64, i64* %siz.addr, align 8
  %cmp10 = icmp ne i64 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %10 = load i8*, i8** %d, align 8
  store i8 0, i8* %10, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.16, %if.end.13
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr15, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %while.body.16, label %while.end.17

while.body.16:                                    ; preds = %while.cond.14
  br label %while.cond.14

while.end.17:                                     ; preds = %while.cond.14
  br label %if.end.18

if.end.18:                                        ; preds = %while.end.17, %if.end.6
  %13 = load i8*, i8** %s, align 8
  %14 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  ret i64 %sub
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
