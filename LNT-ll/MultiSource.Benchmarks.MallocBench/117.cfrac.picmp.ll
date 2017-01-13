; ModuleID = './MultiSource.Benchmarks.MallocBench/117.cfrac.picmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"picmp\00", align 1
@cmpError = internal global [28 x i8] c"Second arg not single digit\00", align 16

; Function Attrs: nounwind uwtable
define i32 @picmp(%struct.precisionType* %u, i32 %v) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %6 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 3
  %7 = load i8, i8* %sign, align 1
  %tobool1 = icmp ne i8 %7, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  store i32 -1, i32* %i, align 4
  %8 = load i32, i32* %v.addr, align 4
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %v.addr, align 4
  %sub = sub nsw i32 0, %9
  %cmp5 = icmp sge i32 %sub, 65536
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  %10 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i32 0, i32 2
  %11 = load i16, i16* %size, align 2
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %13 = load i16, i16* %arraydecay, align 2
  %conv12 = zext i16 %13 to i32
  %sub13 = sub nsw i32 0, %conv12
  %14 = load i32, i32* %v.addr, align 4
  %sub14 = sub nsw i32 %sub13, %14
  store i32 %sub14, i32* %i, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  br label %if.end.36

if.else:                                          ; preds = %land.end
  store i32 1, i32* %i, align 4
  %15 = load i32, i32* %v.addr, align 4
  %cmp17 = icmp sge i32 %15, 0
  br i1 %cmp17, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %if.else
  %16 = load i32, i32* %v.addr, align 4
  %cmp20 = icmp sge i32 %16, 65536
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.19
  %call23 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.19
  %17 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 2
  %18 = load i16, i16* %size25, align 2
  %conv26 = zext i16 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.24
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i32 0, i32 4
  %arraydecay31 = getelementptr inbounds [1 x i16], [1 x i16]* %value30, i32 0, i32 0
  %20 = load i16, i16* %arraydecay31, align 2
  %conv32 = zext i16 %20 to i32
  %21 = load i32, i32* %v.addr, align 4
  %sub33 = sub nsw i32 %conv32, %21
  store i32 %sub33, i32* %i, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.16
  %22 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp37 = icmp ne %struct.precisionType* %22, null
  br i1 %cmp37, label %land.lhs.true, label %land.end.45

land.lhs.true:                                    ; preds = %if.end.36
  %23 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %24 = bitcast %struct.precisionType* %23 to i16*
  %25 = load i16, i16* %24, align 2
  %dec = add i16 %25, -1
  store i16 %dec, i16* %24, align 2
  %conv39 = zext i16 %dec to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %land.rhs.42, label %land.end.45

land.rhs.42:                                      ; preds = %land.lhs.true
  %26 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call43 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %26)
  %tobool44 = icmp ne i32 %call43, 0
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.42, %land.lhs.true, %if.end.36
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.36 ], [ %tobool44, %land.rhs.42 ]
  %land.ext46 = zext i1 %27 to i32
  %28 = load i32, i32* %i, align 4
  ret i32 %28
}

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
