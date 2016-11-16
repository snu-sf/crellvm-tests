; ModuleID = './lib/xgetcwd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @xgetcwd() #0 {
entry:
  %retval = alloca i8*, align 8
  %cwd = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %path_max = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %call = call i32* @__errno_location() #4
  store i32 0, i32* %call, align 4
  store i32 4096, i32* %path_max, align 4
  %0 = load i32, i32* %path_max, align 4
  %add = add i32 %0, 2
  store i32 %add, i32* %path_max, align 4
  %1 = load i32, i32* %path_max, align 4
  %call1 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 %1)
  store i8* %call1, i8** %cwd, align 8
  %call2 = call i32* @__errno_location() #4
  store i32 0, i32* %call2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %cwd, align 8
  %3 = load i32, i32* %path_max, align 4
  %conv = zext i32 %3 to i64
  %call3 = call i8* @getcwd(i8* %2, i64 %conv) #5
  store i8* %call3, i8** %ret, align 8
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call5 = call i32* @__errno_location() #4
  %4 = load i32, i32* %call5, align 4
  %cmp6 = icmp eq i32 %4, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %path_max, align 4
  %add8 = add i32 %6, 32
  store i32 %add8, i32* %path_max, align 4
  %7 = load i8*, i8** %cwd, align 8
  %8 = load i32, i32* %path_max, align 4
  %call9 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i32, ...)*)(i8* %7, i32 %8)
  store i8* %call9, i8** %cwd, align 8
  %call10 = call i32* @__errno_location() #4
  store i32 0, i32* %call10, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %ret, align 8
  %cmp11 = icmp eq i8* %9, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call13 = call i32* @__errno_location() #4
  %10 = load i32, i32* %call13, align 4
  store i32 %10, i32* %save_errno, align 4
  %11 = load i8*, i8** %cwd, align 8
  call void (i8*, ...) bitcast (void (...)* @free to void (i8*, ...)*)(i8* %11)
  %12 = load i32, i32* %save_errno, align 4
  %call14 = call i32* @__errno_location() #4
  store i32 %12, i32* %call14, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %13 = load i8*, i8** %cwd, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare i8* @xmalloc(...) #2

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #3

declare i8* @xrealloc(...) #2

declare void @free(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
