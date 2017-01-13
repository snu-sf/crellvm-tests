; ModuleID = './SingleSource.UnitTests/4.2003-05-02-DependentPHI.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { %struct.List*, i32 }

@Node0 = global %struct.List { %struct.List* null, i32 5 }, align 8
@Node1 = global %struct.List { %struct.List* @Node0, i32 4 }, align 8
@Node2 = global %struct.List { %struct.List* @Node1, i32 3 }, align 8
@Node3 = global %struct.List { %struct.List* @Node2, i32 2 }, align 8
@Node4 = global %struct.List { %struct.List* @Node3, i32 1 }, align 8
@Node5 = global %struct.List { %struct.List* @Node4, i32 0 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %PrevL = alloca %struct.List*, align 8
  %CurL = alloca %struct.List*, align 8
  store i32 0, i32* %retval
  store %struct.List* null, %struct.List** %PrevL, align 8
  store %struct.List* @Node5, %struct.List** %CurL, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.List*, %struct.List** %CurL, align 8
  %tobool = icmp ne %struct.List* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.List*, %struct.List** %CurL, align 8
  %Data = getelementptr inbounds %struct.List, %struct.List* %1, i32 0, i32 1
  %2 = load i32, i32* %Data, align 4
  %3 = load %struct.List*, %struct.List** %PrevL, align 8
  %tobool1 = icmp ne %struct.List* %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load %struct.List*, %struct.List** %PrevL, align 8
  %Data2 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 1
  %5 = load i32, i32* %Data2, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -1, %cond.false ]
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %2, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %6 = load %struct.List*, %struct.List** %CurL, align 8
  store %struct.List* %6, %struct.List** %PrevL, align 8
  %7 = load %struct.List*, %struct.List** %CurL, align 8
  %Next = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 0
  %8 = load %struct.List*, %struct.List** %Next, align 8
  store %struct.List* %8, %struct.List** %CurL, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
