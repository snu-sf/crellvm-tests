; ModuleID = './MultiSource.Applications.SPASS/14.vector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Entry %d:\09\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Vector is empty\00", align 1
@vec_VECTOR = common global [10000 x i8*] zeroinitializer, align 16
@vec_MAX = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @vec_Swap(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %help = alloca i8*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %call = call i8* @vec_GetNth(i32 %0)
  store i8* %call, i8** %help, align 8
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* %j.addr, align 4
  %call1 = call i8* @vec_GetNth(i32 %2)
  call void @vec_PutNth(i32 %1, i8* %call1)
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i8*, i8** %help, align 8
  call void @vec_PutNth(i32 %3, i8* %4)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @vec_GetNth(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vec_PutNth(i32 %Index, i8* %Value) #1 {
entry:
  %Index.addr = alloca i32, align 4
  %Value.addr = alloca i8*, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Value.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vec_PrintSel(i32 %beg, i32 %end, void (i8*)* %ElementPrint) #0 {
entry:
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %ElementPrint.addr = alloca void (i8*)*, align 8
  %i = alloca i32, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store void (i8*)* %ElementPrint, void (i8*)** %ElementPrint.addr, align 8
  %call = call i32 @vec_ActMax()
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %beg.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %3)
  %4 = load void (i8*)*, void (i8*)** %ElementPrint.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call i8* @vec_GetNth(i32 %5)
  call void %4(i8* %call3)
  %call4 = call i32 @putchar(i32 10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @vec_ActMax() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  ret i32 %0
}

declare i32 @printf(i8*, ...) #2

declare i32 @putchar(i32) #2

declare i32 @puts(i8*) #2

; Function Attrs: nounwind uwtable
define void @vec_PrintAll(void (i8*)* %ElementPrint) #0 {
entry:
  %ElementPrint.addr = alloca void (i8*)*, align 8
  %i = alloca i32, align 4
  store void (i8*)* %ElementPrint, void (i8*)** %ElementPrint.addr, align 8
  %call = call i32 @vec_ActMax()
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %i, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp2 = icmp slt i32 %0, %call1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %1)
  %2 = load void (i8*)*, void (i8*)** %ElementPrint.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call4 = call i8* @vec_GetNth(i32 %3)
  call void %2(i8* %call4)
  %call5 = call i32 @putchar(i32 10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
