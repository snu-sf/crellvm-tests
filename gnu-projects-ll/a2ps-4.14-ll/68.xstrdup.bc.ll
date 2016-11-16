; ModuleID = './lib/xstrdup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %add = add i64 %call, 1
  %call1 = call i8* @xmalloc(i64 %add)
  %1 = load i8*, i8** %string.addr, align 8
  %call2 = call i8* @strcpy(i8* %call1, i8* %1) #5
  ret i8* %call2
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i8* @xmalloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @xstrndup(i8* %string, i64 %n) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %res = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  store i64 %3, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %len, align 8
  %add = add i64 %4, 1
  %call1 = call i8* @xmalloc(i64 %add)
  store i8* %call1, i8** %res, align 8
  %5 = load i8*, i8** %res, align 8
  %6 = load i8*, i8** %string.addr, align 8
  %7 = load i64, i64* %len, align 8
  %call2 = call i8* @strncpy(i8* %5, i8* %6, i64 %7) #5
  %8 = load i64, i64* %len, align 8
  %9 = load i8*, i8** %res, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %8
  store i8 0, i8* %arrayidx, align 1
  %10 = load i8*, i8** %res, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
