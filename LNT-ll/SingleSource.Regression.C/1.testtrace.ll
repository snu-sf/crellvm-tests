; ModuleID = './SingleSource.Regression.C/1.testtrace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DummyStruct = type { %struct.DummyStruct*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"&S1 = %p\09&S2 = %p\09&S3 = %p\0A\00", align 1
@testAllocaOrder.count = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @AddCounts(%struct.DummyStruct* %S1, %struct.DummyStruct* %S2, %struct.DummyStruct* %S3, i32 %noPrint) #0 {
entry:
  %S1.addr = alloca %struct.DummyStruct*, align 8
  %S2.addr = alloca %struct.DummyStruct*, align 8
  %S3.addr = alloca %struct.DummyStruct*, align 8
  %noPrint.addr = alloca i32, align 4
  store %struct.DummyStruct* %S1, %struct.DummyStruct** %S1.addr, align 8
  store %struct.DummyStruct* %S2, %struct.DummyStruct** %S2.addr, align 8
  store %struct.DummyStruct* %S3, %struct.DummyStruct** %S3.addr, align 8
  store i32 %noPrint, i32* %noPrint.addr, align 4
  %0 = load i32, i32* %noPrint.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.DummyStruct*, %struct.DummyStruct** %S1.addr, align 8
  %2 = load %struct.DummyStruct*, %struct.DummyStruct** %S2.addr, align 8
  %3 = load %struct.DummyStruct*, %struct.DummyStruct** %S3.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), %struct.DummyStruct* %1, %struct.DummyStruct* %2, %struct.DummyStruct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.DummyStruct*, %struct.DummyStruct** %S1.addr, align 8
  %seqnum = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %4, i32 0, i32 1
  %5 = load i32, i32* %seqnum, align 4
  %6 = load %struct.DummyStruct*, %struct.DummyStruct** %S2.addr, align 8
  %seqnum1 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %6, i32 0, i32 1
  %7 = load i32, i32* %seqnum1, align 4
  %add = add nsw i32 %5, %7
  %8 = load %struct.DummyStruct*, %struct.DummyStruct** %S3.addr, align 8
  %seqnum2 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %8, i32 0, i32 1
  %9 = load i32, i32* %seqnum2, align 4
  %add3 = add nsw i32 %add, %9
  ret i32 %add3
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @testAllocaOrder(i32 %noPrint) #0 {
entry:
  %noPrint.addr = alloca i32, align 4
  %S1 = alloca %struct.DummyStruct, align 8
  %S2 = alloca %struct.DummyStruct, align 8
  %S3 = alloca %struct.DummyStruct, align 8
  store i32 %noPrint, i32* %noPrint.addr, align 4
  %0 = load i32, i32* @testAllocaOrder.count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @testAllocaOrder.count, align 4
  %seqnum = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %S1, i32 0, i32 1
  store i32 %inc, i32* %seqnum, align 4
  %1 = load i32, i32* @testAllocaOrder.count, align 4
  %inc1 = add nsw i32 %1, 1
  store i32 %inc1, i32* @testAllocaOrder.count, align 4
  %seqnum2 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %S2, i32 0, i32 1
  store i32 %inc1, i32* %seqnum2, align 4
  %2 = load i32, i32* @testAllocaOrder.count, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, i32* @testAllocaOrder.count, align 4
  %seqnum4 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %S3, i32 0, i32 1
  store i32 %inc3, i32* %seqnum4, align 4
  %3 = load i32, i32* %noPrint.addr, align 4
  %call = call i32 @AddCounts(%struct.DummyStruct* %S1, %struct.DummyStruct* %S2, %struct.DummyStruct* %S3, i32 %3)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %noPrint = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %noPrint, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %noPrint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %3, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %noPrint, align 4
  call void @testAllocaOrder(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
