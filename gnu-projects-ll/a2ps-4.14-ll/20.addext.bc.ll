; ModuleID = './lib/addext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @addext(i8* %filename, i8* %ext, i32 %e) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ext.addr = alloca i8*, align 8
  %e.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %slen = alloca i64, align 8
  %extlen = alloca i64, align 8
  %slen_max = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %ext, i8** %ext.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @base_name(i8* %0)
  store i8* %call, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  store i64 %call1, i64* %slen, align 8
  %2 = load i8*, i8** %ext.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #4
  store i64 %call2, i64* %extlen, align 8
  store i64 -1, i64* %slen_max, align 8
  %3 = load i64, i64* %slen_max, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 14, i64* %slen_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %slen, align 8
  %5 = load i64, i64* %extlen, align 8
  %add = add i64 %4, %5
  %6 = load i64, i64* %slen_max, align 8
  %cmp3 = icmp ule i64 %add, %6
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %s, align 8
  %8 = load i64, i64* %slen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8*, i8** %ext.addr, align 8
  %call5 = call i8* @strcpy(i8* %add.ptr, i8* %9) #5
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %10 = load i64, i64* %slen_max, align 8
  %11 = load i64, i64* %slen, align 8
  %cmp6 = icmp ule i64 %10, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %12 = load i64, i64* %slen_max, align 8
  %sub = sub nsw i64 %12, 1
  store i64 %sub, i64* %slen, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.else
  %13 = load i32, i32* %e.addr, align 4
  %conv = trunc i32 %13 to i8
  %14 = load i64, i64* %slen, align 8
  %15 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 %conv, i8* %arrayidx, align 1
  %16 = load i64, i64* %slen, align 8
  %add9 = add i64 %16, 1
  %17 = load i8*, i8** %s, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %add9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.8, %if.then.4
  ret void
}

declare i8* @base_name(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
