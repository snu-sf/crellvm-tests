; ModuleID = './plug-ins/script-fu/script-fu-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__func__.script_fu_strescape = private unnamed_addr constant [20 x i8] c"script_fu_strescape\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"source != NULL\00", align 1

; Function Attrs: nounwind uwtable
define i8* @script_fu_strescape(i8* %source) #0 {
entry:
  %retval = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %source, i8** %source.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %source.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.script_fu_strescape, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %source.addr, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %source.addr, align 8
  %call = call i64 @strlen(i8* %2) #3
  %mul = mul i64 %call, 2
  %add = add i64 %mul, 1
  %call1 = call noalias i8* @g_malloc(i64 %add)
  store i8* %call1, i8** %dest, align 8
  store i8* %call1, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 92, label %sw.bb
    i32 34, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 92, i8* %7, align 1
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %q, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %q, align 8
  store i8 %9, i8* %10, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %q, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %dest, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
