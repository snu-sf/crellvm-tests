; ModuleID = './lib/basename.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @base_name(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  %all_slashes = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0
  store i8* %add.ptr, i8** %name.addr, align 8
  store i8* %add.ptr, i8** %base, align 8
  store i32 1, i32* %all_slashes, align 4
  %1 = load i8*, i8** %name.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %p, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr2, i8** %base, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %all_slashes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %base, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.end
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* %all_slashes, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.9
  %13 = load i8*, i8** %base, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr12, i8** %base, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.9, %land.lhs.true, %for.end
  %14 = load i8*, i8** %base, align 8
  ret i8* %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
