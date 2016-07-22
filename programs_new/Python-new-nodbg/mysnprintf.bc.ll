; ModuleID = './mysnprintf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @PyOS_snprintf(i8* %str, i64 %size, i8* %format, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call = call i32 @PyOS_vsnprintf(i8* %0, i64 %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %rc, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load i32, i32* %rc, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyOS_vsnprintf(i8* %str, i64 %size, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483646
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -666, i32* %len, align 4
  br label %Done

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call = call i32 @vsnprintf(i8* %1, i64 %2, i8* %3, %struct.__va_list_tag* %4) #1
  store i32 %call, i32* %len, align 4
  br label %Done

Done:                                             ; preds = %if.end, %if.then
  %5 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ugt i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %Done
  %6 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %6, 1
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %Done
  %8 = load i32, i32* %len, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
