; ModuleID = './MultiSource.Benchmarks.VersaBench/4.dbms.consistent.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: nounwind uwtable
define signext i8 @consistentKey(%struct.IndexKey* %A, %struct.IndexKey* %B) #0 {
entry:
  %A.addr = alloca %struct.IndexKey*, align 8
  %B.addr = alloca %struct.IndexKey*, align 8
  %flag = alloca i8, align 1
  store %struct.IndexKey* %A, %struct.IndexKey** %A.addr, align 8
  store %struct.IndexKey* %B, %struct.IndexKey** %B.addr, align 8
  store i8 1, i8* %flag, align 1
  %0 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  %1 = load float, float* %T, align 4
  %2 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i32 0, i32 1
  %T1 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  %3 = load float, float* %T1, align 4
  %cmp = fcmp ogt float %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower2 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %4, i32 0, i32 0
  %T3 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower2, i32 0, i32 0
  %5 = load float, float* %T3, align 4
  %6 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %6, i32 0, i32 1
  %T5 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper4, i32 0, i32 0
  %7 = load float, float* %T5, align 4
  %cmp6 = fcmp ogt float %5, %7
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* %flag, align 1
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %8, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower7, i32 0, i32 1
  %9 = load float, float* %X, align 4
  %10 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper8 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %10, i32 0, i32 1
  %X9 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper8, i32 0, i32 1
  %11 = load float, float* %X9, align 4
  %cmp10 = fcmp ogt float %9, %11
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.else
  %12 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower12 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %12, i32 0, i32 0
  %X13 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower12, i32 0, i32 1
  %13 = load float, float* %X13, align 4
  %14 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %14, i32 0, i32 1
  %X15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper14, i32 0, i32 1
  %15 = load float, float* %X15, align 4
  %cmp16 = fcmp ogt float %13, %15
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false.11, %if.else
  store i8 0, i8* %flag, align 1
  br label %if.end.43

if.else.18:                                       ; preds = %lor.lhs.false.11
  %16 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower19 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %16, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower19, i32 0, i32 2
  %17 = load float, float* %Y, align 4
  %18 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %18, i32 0, i32 1
  %Y21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper20, i32 0, i32 2
  %19 = load float, float* %Y21, align 4
  %cmp22 = fcmp ogt float %17, %19
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.18
  %20 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 0
  %Y25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower24, i32 0, i32 2
  %21 = load float, float* %Y25, align 4
  %22 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper26 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 1
  %Y27 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper26, i32 0, i32 2
  %23 = load float, float* %Y27, align 4
  %cmp28 = fcmp ogt float %21, %23
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false.23, %if.else.18
  store i8 0, i8* %flag, align 1
  br label %if.end.42

if.else.30:                                       ; preds = %lor.lhs.false.23
  %24 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower31 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %24, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower31, i32 0, i32 3
  %25 = load float, float* %Z, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 1
  %Z33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper32, i32 0, i32 3
  %27 = load float, float* %Z33, align 4
  %cmp34 = fcmp ogt float %25, %27
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.else.30
  %28 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %28, i32 0, i32 0
  %Z37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower36, i32 0, i32 3
  %29 = load float, float* %Z37, align 4
  %30 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %30, i32 0, i32 1
  %Z39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper38, i32 0, i32 3
  %31 = load float, float* %Z39, align 4
  %cmp40 = fcmp ogt float %29, %31
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %lor.lhs.false.35, %if.else.30
  store i8 0, i8* %flag, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.41, %lor.lhs.false.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.then.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.17
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %32 = load i8, i8* %flag, align 1
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define signext i8 @consistentNonKey(i8* %A, i8* %B) #0 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %flag = alloca i8, align 1
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  %0 = load i8*, i8** %A.addr, align 8
  %1 = load i8*, i8** %B.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* %1) #2
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %flag, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, i8* %flag, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8, i8* %flag, align 1
  ret i8 %2
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
