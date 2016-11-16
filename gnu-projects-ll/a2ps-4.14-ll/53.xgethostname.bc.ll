; ModuleID = './lib/xgethostname.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"gethostname\00", align 1

; Function Attrs: nounwind uwtable
define i8* @xgethostname() #0 {
entry:
  %hostname = alloca i8*, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 34, i64* %size, align 8
  %0 = load i64, i64* %size, align 8
  %mul = mul i64 1, %0
  %call = call i8* @xmalloc(i64 %mul)
  store i8* %call, i8** %hostname, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.21
  %1 = load i64, i64* %size, align 8
  %sub = sub i64 %1, 2
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %k, align 4
  %call1 = call i32* @__errno_location() #3
  store i32 0, i32* %call1, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %hostname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %4 = load i8*, i8** %hostname, align 8
  %5 = load i64, i64* %size, align 8
  %call2 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @gethostname to i32 (i8*, i64, ...)*)(i8* %4, i64 %5)
  store i32 %call2, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8*, i8** %hostname, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %10 = load i32, i32* %err, align 4
  %cmp9 = icmp ne i32 %10, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.else
  %call12 = call i32* @__errno_location() #3
  %11 = load i32, i32* %call12, align 4
  %cmp13 = icmp ne i32 %11, 36
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %call16 = call i32* @__errno_location() #3
  %12 = load i32, i32* %call16, align 4
  %cmp17 = icmp ne i32 %12, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true.15
  %call20 = call i32* @__errno_location() #3
  %13 = load i32, i32* %call20, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true.15, %land.lhs.true.11, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end
  %14 = load i64, i64* %size, align 8
  %mul22 = mul i64 %14, 2
  store i64 %mul22, i64* %size, align 8
  %15 = load i8*, i8** %hostname, align 8
  %16 = load i64, i64* %size, align 8
  %mul23 = mul i64 1, %16
  %call24 = call i8* @xrealloc(i8* %15, i64 %mul23)
  store i8* %call24, i8** %hostname, align 8
  br label %while.body

while.end:                                        ; preds = %if.then
  %17 = load i8*, i8** %hostname, align 8
  ret i8* %17
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @gethostname(...) #1

declare void @error(i32, i32, i8*, ...) #1

declare i8* @xrealloc(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
