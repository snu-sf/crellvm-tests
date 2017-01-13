; ModuleID = './MultiSource.Benchmarks.VersaBench/31.dbms.query.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }

@query.name = internal global [6 x i8] c"query\00", align 1
@.str = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1

; Function Attrs: nounwind uwtable
define i64 @query(%struct.IndexNode* %node, %struct.IndexKey* %searchKey, %struct.DataAttribute* %searchNonKey, i8 signext %checkValidity, void (%struct.DataObject*)* %outputQuery) #0 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca %struct.IndexNode*, align 8
  %searchKey.addr = alloca %struct.IndexKey*, align 8
  %searchNonKey.addr = alloca %struct.DataAttribute*, align 8
  %checkValidity.addr = alloca i8, align 1
  %outputQuery.addr = alloca void (%struct.DataObject*)*, align 8
  %entry16 = alloca %struct.IndexEntry*, align 8
  %entry28 = alloca %struct.IndexEntry*, align 8
  %temp = alloca %struct.DataAttribute*, align 8
  %object = alloca %struct.DataObject*, align 8
  %upperBound = alloca i64, align 8
  %acceptanceFlag = alloca i8, align 1
  store %struct.IndexNode* %node, %struct.IndexNode** %node.addr, align 8
  store %struct.IndexKey* %searchKey, %struct.IndexKey** %searchKey.addr, align 8
  store %struct.DataAttribute* %searchNonKey, %struct.DataAttribute** %searchNonKey.addr, align 8
  store i8 %checkValidity, i8* %checkValidity.addr, align 1
  store void (%struct.DataObject*)* %outputQuery, void (%struct.DataObject*)** %outputQuery.addr, align 8
  %0 = load i8, i8* %checkValidity.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call = call signext i8 @validIndexKey(%struct.IndexKey* %1)
  %conv2 = sext i8 %call to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %2 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  %call6 = call signext i8 @validAttributes(%struct.DataAttribute* %2)
  %conv7 = sext i8 %call6 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %3 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %3, i32 0, i32 0
  %4 = load i64, i64* %level, align 8
  %cmp13 = icmp sgt i64 %4, 0
  br i1 %cmp13, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.end.12
  %5 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %5, i32 0, i32 1
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  store %struct.IndexEntry* %6, %struct.IndexEntry** %entry16, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %entry16, align 8
  %cmp17 = icmp ne %struct.IndexEntry* %7, null
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %entry16, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 1
  %9 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call19 = call signext i8 @consistentKey(%struct.IndexKey* %key, %struct.IndexKey* %9)
  %conv20 = sext i8 %call19 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %for.body
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %entry16, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %10, i32 0, i32 0
  %node24 = bitcast %union.anon* %child to %struct.IndexNode**
  %11 = load %struct.IndexNode*, %struct.IndexNode** %node24, align 8
  %12 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %13 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  %14 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %outputQuery.addr, align 8
  %call25 = call i64 @query(%struct.IndexNode* %11, %struct.IndexKey* %12, %struct.DataAttribute* %13, i8 signext 0, void (%struct.DataObject*)* %14)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %entry16, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %15, i32 0, i32 2
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %16, %struct.IndexEntry** %entry16, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.else.27:                                       ; preds = %if.end.12
  %17 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries29 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %17, i32 0, i32 1
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %entries29, align 8
  store %struct.IndexEntry* %18, %struct.IndexEntry** %entry28, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.79, %if.else.27
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %entry28, align 8
  %cmp31 = icmp ne %struct.IndexEntry* %19, null
  br i1 %cmp31, label %for.body.33, label %for.end.81

for.body.33:                                      ; preds = %for.cond.30
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %entry28, align 8
  %key34 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %20, i32 0, i32 1
  %21 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call35 = call signext i8 @consistentKey(%struct.IndexKey* %key34, %struct.IndexKey* %21)
  %conv36 = sext i8 %call35 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.78

if.then.39:                                       ; preds = %for.body.33
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %entry28, align 8
  %child40 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %22, i32 0, i32 0
  %dataObject = bitcast %union.anon* %child40 to %struct.DataObject**
  %23 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  store %struct.DataObject* %23, %struct.DataObject** %object, align 8
  store i64 0, i64* %upperBound, align 8
  %24 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type = getelementptr inbounds %struct.DataObject, %struct.DataObject* %24, i32 0, i32 0
  %25 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %25, 1
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.then.39
  store i64 18, i64* %upperBound, align 8
  br label %if.end.56

if.else.44:                                       ; preds = %if.then.39
  %26 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type45 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %26, i32 0, i32 0
  %27 = load i32, i32* %type45, align 4
  %cmp46 = icmp eq i32 %27, 2
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else.44
  store i64 25, i64* %upperBound, align 8
  br label %if.end.55

if.else.49:                                       ; preds = %if.else.44
  %28 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type50 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %28, i32 0, i32 0
  %29 = load i32, i32* %type50, align 4
  %cmp51 = icmp eq i32 %29, 3
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.49
  store i64 51, i64* %upperBound, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.48
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.43
  store i8 1, i8* %acceptanceFlag, align 1
  %30 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  store %struct.DataAttribute* %30, %struct.DataAttribute** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %if.end.56
  %31 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %cmp57 = icmp ne %struct.DataAttribute* %31, null
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %32 = load i8, i8* %acceptanceFlag, align 1
  %conv59 = sext i8 %32 to i32
  %cmp60 = icmp eq i32 %conv59, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp60, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %34, i32 0, i32 0
  %35 = load i64, i64* %code, align 8
  %36 = load i64, i64* %upperBound, align 8
  %cmp62 = icmp slt i64 %35, %36
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %while.body
  %37 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code65 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %37, i32 0, i32 0
  %38 = load i64, i64* %code65, align 8
  %39 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 1
  %40 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %40, i64 %38
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %nonKey = bitcast %union.anon.0* %value to i8**
  %41 = load i8*, i8** %nonKey, align 8
  %42 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %42, i32 0, i32 1
  %value66 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute, i32 0, i32 0
  %nonKey67 = bitcast %union.anon.0* %value66 to i8**
  %43 = load i8*, i8** %nonKey67, align 8
  %call68 = call signext i8 @consistentNonKey(i8* %41, i8* %43)
  store i8 %call68, i8* %acceptanceFlag, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %while.body
  %44 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %next70 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %44, i32 0, i32 2
  %45 = load %struct.DataAttribute*, %struct.DataAttribute** %next70, align 8
  store %struct.DataAttribute* %45, %struct.DataAttribute** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %46 = load i8, i8* %acceptanceFlag, align 1
  %conv71 = sext i8 %46 to i32
  %cmp72 = icmp eq i32 %conv71, 1
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %while.end
  %47 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %outputQuery.addr, align 8
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %entry28, align 8
  %child75 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %48, i32 0, i32 0
  %dataObject76 = bitcast %union.anon* %child75 to %struct.DataObject**
  %49 = load %struct.DataObject*, %struct.DataObject** %dataObject76, align 8
  call void %47(%struct.DataObject* %49)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %while.end
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %for.body.33
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %entry28, align 8
  %next80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %50, i32 0, i32 2
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %next80, align 8
  store %struct.IndexEntry* %51, %struct.IndexEntry** %entry28, align 8
  br label %for.cond.30

for.end.81:                                       ; preds = %for.cond.30
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %for.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.10, %if.then.5
  %52 = load i64, i64* %retval
  ret i64 %52
}

declare signext i8 @validIndexKey(%struct.IndexKey*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare signext i8 @validAttributes(%struct.DataAttribute*) #1

declare signext i8 @consistentKey(%struct.IndexKey*, %struct.IndexKey*) #1

declare signext i8 @consistentNonKey(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
