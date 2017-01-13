; ModuleID = './MultiSource.Benchmarks.McCat/27.12-IOtest.IOtest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_count = common global i64 0, align 8
@testarray = common global i8* null, align 8

; Function Attrs: nounwind uwtable
define i64 @getac() #0 {
entry:
  %0 = load i64, i64* @array_count, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @setac(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %rem = urem i64 %0, 2684050
  store i64 %rem, i64* @array_count, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @initarray() #0 {
entry:
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 2684050
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %i, align 8
  %rem = urem i64 %1, 255
  %conv = trunc i64 %rem to i8
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** @testarray, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  store i8 %conv, i8* %arrayidx, align 1
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @array(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load i8*, i8** @testarray, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %0
  %2 = load i8, i8* %arrayidx, align 1
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define signext i8 @min(i8 signext %a, i8 signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %a.addr, align 1
  %conv3 = sext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, i8* %b.addr, align 1
  %conv4 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define signext i8 @max(i8 signext %a, i8 signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %b.addr, align 1
  %conv3 = sext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, i8* %a.addr, align 1
  %conv4 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define signext i8 @add(i8 signext %a, i8 signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define signext i8 @mult(i8 signext %a, i8 signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = sext i8 %1 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = trunc i32 %mul to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define void @loop(void (i8*)* %init, void (i8*)* %step, i8* %result) #0 {
entry:
  %init.addr = alloca void (i8*)*, align 8
  %step.addr = alloca void (i8*)*, align 8
  %result.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store void (i8*)* %init, void (i8*)** %init.addr, align 8
  store void (i8*)* %step, void (i8*)** %step.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load void (i8*)*, void (i8*)** %init.addr, align 8
  %1 = load i8*, i8** %result.addr, align 8
  call void %0(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %2, 2684050
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load void (i8*)*, void (i8*)** %step.addr, align 8
  %4 = load i8*, i8** %result.addr, align 8
  call void %3(i8* %4)
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call noalias i8* @malloc(i64 2684050) #3
  store i8* %call, i8** @testarray, align 8
  call void @testA()
  call void @testB()
  call void @testC()
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @testA() #2

declare void @testB() #2

declare void @testC() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
