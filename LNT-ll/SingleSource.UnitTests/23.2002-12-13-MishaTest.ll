; ModuleID = './SingleSource.UnitTests/23.2002-12-13-MishaTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sum(i16* %to, i16* %from, i32) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca i16*, align 8
  %from.addr = alloca i16*, align 8
  %count.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %count = trunc i32 %0 to i16
  store i16* %to, i16** %to.addr, align 8
  store i16* %from, i16** %from.addr, align 8
  store i16 %count, i16* %count.addr, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i16, i16* %count.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %from.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = sext i16 %4 to i32
  %5 = load i16*, i16** %to.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = sext i16 %6 to i32
  %add = add nsw i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Array = alloca [2 x i16], align 2
  %Sum = alloca i16, align 2
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i16 0, i16* %Sum, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %Array, i32 0, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %Array, i32 0, i32 0
  %call = call i32 @sum(i16* %Sum, i16* %arraydecay, i32 2)
  %4 = load i16, i16* %Sum, align 2
  %conv1 = sext i16 %4 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %conv1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
