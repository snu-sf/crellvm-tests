; ModuleID = './MultiSource.Benchmarks.VersaBench/20.dbms.partitionEntries.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@partitionEntries.name = internal global [17 x i8] c"partitionEntries\00", align 16
@.str = private unnamed_addr constant [30 x i8] c"too many entries to partition\00", align 1

; Function Attrs: nounwind uwtable
define void @partitionEntries(%struct.IndexEntry* %I, i64 %fan, %struct.IndexEntry** %A, %struct.IndexEntry** %B) #0 {
entry:
  %I.addr = alloca %struct.IndexEntry*, align 8
  %fan.addr = alloca i64, align 8
  %A.addr = alloca %struct.IndexEntry**, align 8
  %B.addr = alloca %struct.IndexEntry**, align 8
  %entry1 = alloca %struct.IndexEntry*, align 8
  %entry2 = alloca %struct.IndexEntry*, align 8
  %currentEntry = alloca %struct.IndexEntry*, align 8
  %previousEntry = alloca %struct.IndexEntry*, align 8
  %tempA = alloca %struct.IndexEntry*, align 8
  %tempB = alloca %struct.IndexEntry*, align 8
  %unionAB = alloca %struct.IndexKey, align 8
  %volumeAB = alloca float, align 4
  %sizeOfGroupA = alloca i64, align 8
  %sizeOfGroupB = alloca i64, align 8
  %tempKey = alloca %struct.IndexKey, align 8
  %tempVolume = alloca float, align 4
  store %struct.IndexEntry* %I, %struct.IndexEntry** %I.addr, align 8
  store i64 %fan, i64* %fan.addr, align 8
  store %struct.IndexEntry** %A, %struct.IndexEntry*** %A.addr, align 8
  store %struct.IndexEntry** %B, %struct.IndexEntry*** %B.addr, align 8
  %0 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %1 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  store %struct.IndexEntry* %0, %struct.IndexEntry** %1, align 8
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i32 0, i32 2
  %3 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  %4 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  store %struct.IndexEntry* %3, %struct.IndexEntry** %4, align 8
  %5 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %6, i32 0, i32 1
  %7 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  %key1 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %key, %struct.IndexKey* %key1, %struct.IndexKey* %unionAB)
  %call = call float @volume(%struct.IndexKey* byval align 8 %unionAB)
  store float %call, float* %volumeAB, align 4
  %9 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  store %struct.IndexEntry* %9, %struct.IndexEntry** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %cmp = icmp ne %struct.IndexEntry* %10, null
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next2 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %11, i32 0, i32 2
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %next2, align 8
  store %struct.IndexEntry* %12, %struct.IndexEntry** %entry2, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %entry2, align 8
  %cmp4 = icmp ne %struct.IndexEntry* %13, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key6 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %14, i32 0, i32 1
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %entry2, align 8
  %key7 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %15, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %key6, %struct.IndexKey* %key7, %struct.IndexKey* %tempKey)
  %call8 = call float @volume(%struct.IndexKey* byval align 8 %tempKey)
  store float %call8, float* %tempVolume, align 4
  %16 = load float, float* %tempVolume, align 4
  %17 = load float, float* %volumeAB, align 4
  %cmp9 = fcmp ogt float %16, %17
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %19 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  store %struct.IndexEntry* %18, %struct.IndexEntry** %19, align 8
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %entry2, align 8
  %21 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  store %struct.IndexEntry* %20, %struct.IndexEntry** %21, align 8
  %22 = bitcast %struct.IndexKey* %unionAB to i8*
  %23 = bitcast %struct.IndexKey* %tempKey to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 4, i1 false)
  %24 = load float, float* %tempVolume, align 4
  store float %24, float* %volumeAB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %entry2, align 8
  %next10 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %25, i32 0, i32 2
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %next10, align 8
  store %struct.IndexEntry* %26, %struct.IndexEntry** %entry2, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next12 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %27, i32 0, i32 2
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %next12, align 8
  store %struct.IndexEntry* %28, %struct.IndexEntry** %entry1, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  store %struct.IndexEntry* %29, %struct.IndexEntry** %currentEntry, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %previousEntry, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %for.end.13
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %cmp14 = icmp ne %struct.IndexEntry* %30, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %32 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %32, align 8
  %cmp15 = icmp eq %struct.IndexEntry* %31, %33
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %35 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %35, align 8
  %cmp16 = icmp eq %struct.IndexEntry* %34, %36
  br i1 %cmp16, label %if.then.17, label %if.else.25

if.then.17:                                       ; preds = %lor.lhs.false, %while.body
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %previousEntry, align 8
  %cmp18 = icmp eq %struct.IndexEntry* %37, null
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %next20 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %38, i32 0, i32 2
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %next20, align 8
  store %struct.IndexEntry* %39, %struct.IndexEntry** %I.addr, align 8
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  store %struct.IndexEntry* %40, %struct.IndexEntry** %currentEntry, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %previousEntry, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.then.17
  %41 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %next21 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %41, i32 0, i32 2
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %next21, align 8
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %previousEntry, align 8
  %next22 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %43, i32 0, i32 2
  store %struct.IndexEntry* %42, %struct.IndexEntry** %next22, align 8
  %44 = load %struct.IndexEntry*, %struct.IndexEntry** %previousEntry, align 8
  %next23 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %44, i32 0, i32 2
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %next23, align 8
  store %struct.IndexEntry* %45, %struct.IndexEntry** %currentEntry, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.19
  br label %if.end.27

if.else.25:                                       ; preds = %lor.lhs.false
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  store %struct.IndexEntry* %46, %struct.IndexEntry** %previousEntry, align 8
  %47 = load %struct.IndexEntry*, %struct.IndexEntry** %currentEntry, align 8
  %next26 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %47, i32 0, i32 2
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %next26, align 8
  store %struct.IndexEntry* %48, %struct.IndexEntry** %currentEntry, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.end.24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %49, align 8
  %next28 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %50, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next28, align 8
  %51 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  %next29 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %52, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next29, align 8
  store i64 1, i64* %sizeOfGroupA, align 8
  store i64 1, i64* %sizeOfGroupB, align 8
  %53 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %53, align 8
  store %struct.IndexEntry* %54, %struct.IndexEntry** %tempA, align 8
  %55 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %55, align 8
  store %struct.IndexEntry* %56, %struct.IndexEntry** %tempB, align 8
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.75, %while.end
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %cmp31 = icmp ne %struct.IndexEntry* %57, null
  br i1 %cmp31, label %while.body.32, label %while.end.76

while.body.32:                                    ; preds = %while.cond.30
  %58 = load i64, i64* %sizeOfGroupA, align 8
  %59 = load i64, i64* %fan.addr, align 8
  %cmp33 = icmp slt i64 %58, %59
  br i1 %cmp33, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %while.body.32
  %60 = load i64, i64* %sizeOfGroupB, align 8
  %61 = load i64, i64* %fan.addr, align 8
  %cmp34 = icmp slt i64 %60, %61
  br i1 %cmp34, label %if.then.35, label %if.else.51

if.then.35:                                       ; preds = %land.lhs.true
  %62 = load %struct.IndexEntry**, %struct.IndexEntry*** %A.addr, align 8
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %62, align 8
  %64 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %call36 = call float @penalty(%struct.IndexEntry* byval align 8 %63, %struct.IndexEntry* byval align 8 %64)
  %65 = load %struct.IndexEntry**, %struct.IndexEntry*** %B.addr, align 8
  %66 = load %struct.IndexEntry*, %struct.IndexEntry** %65, align 8
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %call37 = call float @penalty(%struct.IndexEntry* byval align 8 %66, %struct.IndexEntry* byval align 8 %67)
  %cmp38 = fcmp olt float %call36, %call37
  br i1 %cmp38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.then.35
  %68 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next40 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %69, i32 0, i32 2
  store %struct.IndexEntry* %68, %struct.IndexEntry** %next40, align 8
  %70 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next41 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %70, i32 0, i32 2
  %71 = load %struct.IndexEntry*, %struct.IndexEntry** %next41, align 8
  store %struct.IndexEntry* %71, %struct.IndexEntry** %I.addr, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next42 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %72, i32 0, i32 2
  %73 = load %struct.IndexEntry*, %struct.IndexEntry** %next42, align 8
  store %struct.IndexEntry* %73, %struct.IndexEntry** %tempA, align 8
  %74 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %74, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next43, align 8
  %75 = load i64, i64* %sizeOfGroupA, align 8
  %inc = add nsw i64 %75, 1
  store i64 %inc, i64* %sizeOfGroupA, align 8
  br label %if.end.50

if.else.44:                                       ; preds = %if.then.35
  %76 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next45 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %77, i32 0, i32 2
  store %struct.IndexEntry* %76, %struct.IndexEntry** %next45, align 8
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next46 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %78, i32 0, i32 2
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %next46, align 8
  store %struct.IndexEntry* %79, %struct.IndexEntry** %I.addr, align 8
  %80 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %80, i32 0, i32 2
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %next47, align 8
  store %struct.IndexEntry* %81, %struct.IndexEntry** %tempB, align 8
  %82 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next48 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %82, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next48, align 8
  %83 = load i64, i64* %sizeOfGroupB, align 8
  %inc49 = add nsw i64 %83, 1
  store i64 %inc49, i64* %sizeOfGroupB, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.44, %if.then.39
  br label %if.end.75

if.else.51:                                       ; preds = %land.lhs.true, %while.body.32
  %84 = load i64, i64* %sizeOfGroupA, align 8
  %85 = load i64, i64* %fan.addr, align 8
  %cmp52 = icmp sge i64 %84, %85
  br i1 %cmp52, label %land.lhs.true.53, label %if.else.61

land.lhs.true.53:                                 ; preds = %if.else.51
  %86 = load i64, i64* %sizeOfGroupB, align 8
  %87 = load i64, i64* %fan.addr, align 8
  %cmp54 = icmp slt i64 %86, %87
  br i1 %cmp54, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %land.lhs.true.53
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next56 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %89, i32 0, i32 2
  store %struct.IndexEntry* %88, %struct.IndexEntry** %next56, align 8
  %90 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next57 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %90, i32 0, i32 2
  %91 = load %struct.IndexEntry*, %struct.IndexEntry** %next57, align 8
  store %struct.IndexEntry* %91, %struct.IndexEntry** %I.addr, align 8
  %92 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next58 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %92, i32 0, i32 2
  %93 = load %struct.IndexEntry*, %struct.IndexEntry** %next58, align 8
  store %struct.IndexEntry* %93, %struct.IndexEntry** %tempB, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %tempB, align 8
  %next59 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %94, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next59, align 8
  %95 = load i64, i64* %sizeOfGroupB, align 8
  %inc60 = add nsw i64 %95, 1
  store i64 %inc60, i64* %sizeOfGroupB, align 8
  br label %if.end.74

if.else.61:                                       ; preds = %land.lhs.true.53, %if.else.51
  %96 = load i64, i64* %sizeOfGroupB, align 8
  %97 = load i64, i64* %fan.addr, align 8
  %cmp62 = icmp sge i64 %96, %97
  br i1 %cmp62, label %land.lhs.true.63, label %if.else.71

land.lhs.true.63:                                 ; preds = %if.else.61
  %98 = load i64, i64* %sizeOfGroupA, align 8
  %99 = load i64, i64* %fan.addr, align 8
  %cmp64 = icmp slt i64 %98, %99
  br i1 %cmp64, label %if.then.65, label %if.else.71

if.then.65:                                       ; preds = %land.lhs.true.63
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %101 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next66 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %101, i32 0, i32 2
  store %struct.IndexEntry* %100, %struct.IndexEntry** %next66, align 8
  %102 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next67 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %102, i32 0, i32 2
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %next67, align 8
  store %struct.IndexEntry* %103, %struct.IndexEntry** %I.addr, align 8
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next68 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %104, i32 0, i32 2
  %105 = load %struct.IndexEntry*, %struct.IndexEntry** %next68, align 8
  store %struct.IndexEntry* %105, %struct.IndexEntry** %tempA, align 8
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %tempA, align 8
  %next69 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %106, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next69, align 8
  %107 = load i64, i64* %sizeOfGroupA, align 8
  %inc70 = add nsw i64 %107, 1
  store i64 %inc70, i64* %sizeOfGroupA, align 8
  br label %if.end.73

if.else.71:                                       ; preds = %land.lhs.true.63, %if.else.61
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next72 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %108, i32 0, i32 2
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %next72, align 8
  store %struct.IndexEntry* %109, %struct.IndexEntry** %I.addr, align 8
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @partitionEntries.name, i32 0, i32 0), i8 signext 1)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.65
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.55
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.50
  br label %while.cond.30

while.end.76:                                     ; preds = %while.cond.30
  ret void
}

declare void @keyUnion(%struct.IndexKey*, %struct.IndexKey*, %struct.IndexKey*) #1

declare float @volume(%struct.IndexKey* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare float @penalty(%struct.IndexEntry* byval align 8, %struct.IndexEntry* byval align 8) #1

declare void @errorMessage(i8*, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
