; ModuleID = './MultiSource.Benchmarks.VersaBench/27.dbms.deleteEntry.bc'
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

; Function Attrs: nounwind uwtable
define void @deleteEntry(%struct.IndexNode* %node, %struct.IndexKey* %searchKey, %struct.DataAttribute* %searchNonKey, i8* %adjustmentFlag) #0 {
entry:
  %node.addr = alloca %struct.IndexNode*, align 8
  %searchKey.addr = alloca %struct.IndexKey*, align 8
  %searchNonKey.addr = alloca %struct.DataAttribute*, align 8
  %adjustmentFlag.addr = alloca i8*, align 8
  %entry1 = alloca %struct.IndexEntry*, align 8
  %prevEntry = alloca %struct.IndexEntry*, align 8
  %tempAdjustFlag = alloca i8, align 1
  %nextEntry = alloca %struct.IndexEntry*, align 8
  %entry37 = alloca %struct.IndexEntry*, align 8
  %prevEntry38 = alloca %struct.IndexEntry*, align 8
  %temp = alloca %struct.DataAttribute*, align 8
  %object = alloca %struct.DataObject*, align 8
  %upperBound = alloca i64, align 8
  %acceptanceFlag = alloca i8, align 1
  %nextEntry90 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %node, %struct.IndexNode** %node.addr, align 8
  store %struct.IndexKey* %searchKey, %struct.IndexKey** %searchKey.addr, align 8
  store %struct.DataAttribute* %searchNonKey, %struct.DataAttribute** %searchNonKey.addr, align 8
  store i8* %adjustmentFlag, i8** %adjustmentFlag.addr, align 8
  %0 = load i8*, i8** %adjustmentFlag.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %1, i32 0, i32 0
  %2 = load i64, i64* %level, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else.36

if.then:                                          ; preds = %entry
  store %struct.IndexEntry* null, %struct.IndexEntry** %prevEntry, align 8
  %3 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %3, i32 0, i32 1
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  store %struct.IndexEntry* %4, %struct.IndexEntry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.then
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %cmp2 = icmp ne %struct.IndexEntry* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %6, i32 0, i32 1
  %7 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call = call signext i8 @consistentKey(%struct.IndexKey* %key, %struct.IndexKey* %7)
  %conv = sext i8 %call to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then.5, label %if.else.33

if.then.5:                                        ; preds = %while.body
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 0
  %node6 = bitcast %union.anon* %child to %struct.IndexNode**
  %9 = load %struct.IndexNode*, %struct.IndexNode** %node6, align 8
  %10 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %11 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  call void @deleteEntry(%struct.IndexNode* %9, %struct.IndexKey* %10, %struct.DataAttribute* %11, i8* %tempAdjustFlag)
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child7 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %12, i32 0, i32 0
  %node8 = bitcast %union.anon* %child7 to %struct.IndexNode**
  %13 = load %struct.IndexNode*, %struct.IndexNode** %node8, align 8
  %entries9 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %13, i32 0, i32 1
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %entries9, align 8
  %cmp10 = icmp eq %struct.IndexEntry* %14, null
  br i1 %cmp10, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.then.5
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %15, i32 0, i32 2
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %16, %struct.IndexEntry** %nextEntry, align 8
  %17 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level13 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %18, i32 0, i32 0
  %19 = load i64, i64* %level13, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %17, i64 %19)
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %nextEntry, align 8
  store %struct.IndexEntry* %20, %struct.IndexEntry** %entry1, align 8
  %21 = load i8*, i8** %adjustmentFlag.addr, align 8
  store i8 1, i8* %21, align 1
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %prevEntry, align 8
  %cmp14 = icmp ne %struct.IndexEntry* %22, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.12
  %23 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %prevEntry, align 8
  %next17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %24, i32 0, i32 2
  store %struct.IndexEntry* %23, %struct.IndexEntry** %next17, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.12
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %26 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries18 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i32 0, i32 1
  store %struct.IndexEntry* %25, %struct.IndexEntry** %entries18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.32

if.else.19:                                       ; preds = %if.then.5
  %27 = load i8, i8* %tempAdjustFlag, align 1
  %conv20 = sext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then.23, label %if.else.29

if.then.23:                                       ; preds = %if.else.19
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child24 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %28, i32 0, i32 0
  %node25 = bitcast %union.anon* %child24 to %struct.IndexNode**
  %29 = load %struct.IndexNode*, %struct.IndexNode** %node25, align 8
  %entries26 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %29, i32 0, i32 1
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %entries26, align 8
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %31, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %30, %struct.IndexKey* %key27)
  %32 = load i8*, i8** %adjustmentFlag.addr, align 8
  store i8 1, i8* %32, align 1
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  store %struct.IndexEntry* %33, %struct.IndexEntry** %prevEntry, align 8
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next28 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 2
  %35 = load %struct.IndexEntry*, %struct.IndexEntry** %next28, align 8
  store %struct.IndexEntry* %35, %struct.IndexEntry** %entry1, align 8
  br label %if.end.31

if.else.29:                                       ; preds = %if.else.19
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  store %struct.IndexEntry* %36, %struct.IndexEntry** %prevEntry, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next30 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %37, i32 0, i32 2
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %next30, align 8
  store %struct.IndexEntry* %38, %struct.IndexEntry** %entry1, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  br label %if.end.35

if.else.33:                                       ; preds = %while.body
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  store %struct.IndexEntry* %39, %struct.IndexEntry** %prevEntry, align 8
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next34 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %40, i32 0, i32 2
  %41 = load %struct.IndexEntry*, %struct.IndexEntry** %next34, align 8
  store %struct.IndexEntry* %41, %struct.IndexEntry** %entry1, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.104

if.else.36:                                       ; preds = %entry
  store %struct.IndexEntry* null, %struct.IndexEntry** %prevEntry38, align 8
  %42 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries39 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %42, i32 0, i32 1
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %entries39, align 8
  store %struct.IndexEntry* %43, %struct.IndexEntry** %entry37, align 8
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.102, %if.else.36
  %44 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %cmp41 = icmp ne %struct.IndexEntry* %44, null
  br i1 %cmp41, label %while.body.43, label %while.end.103

while.body.43:                                    ; preds = %while.cond.40
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %key44 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %45, i32 0, i32 1
  %46 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call45 = call signext i8 @consistentKey(%struct.IndexKey* %key44, %struct.IndexKey* %46)
  %conv46 = sext i8 %call45 to i32
  %cmp47 = icmp eq i32 %conv46, 1
  br i1 %cmp47, label %if.then.49, label %if.else.100

if.then.49:                                       ; preds = %while.body.43
  %47 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %child50 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %47, i32 0, i32 0
  %dataObject = bitcast %union.anon* %child50 to %struct.DataObject**
  %48 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  store %struct.DataObject* %48, %struct.DataObject** %object, align 8
  store i64 0, i64* %upperBound, align 8
  %49 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type = getelementptr inbounds %struct.DataObject, %struct.DataObject* %49, i32 0, i32 0
  %50 = load i32, i32* %type, align 4
  %cmp51 = icmp eq i32 %50, 1
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.then.49
  store i64 18, i64* %upperBound, align 8
  br label %if.end.66

if.else.54:                                       ; preds = %if.then.49
  %51 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type55 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %51, i32 0, i32 0
  %52 = load i32, i32* %type55, align 4
  %cmp56 = icmp eq i32 %52, 2
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.54
  store i64 25, i64* %upperBound, align 8
  br label %if.end.65

if.else.59:                                       ; preds = %if.else.54
  %53 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %type60 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %53, i32 0, i32 0
  %54 = load i32, i32* %type60, align 4
  %cmp61 = icmp eq i32 %54, 3
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.else.59
  store i64 51, i64* %upperBound, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.else.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.58
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.53
  store i8 1, i8* %acceptanceFlag, align 1
  %55 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  store %struct.DataAttribute* %55, %struct.DataAttribute** %temp, align 8
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.81, %if.end.66
  %56 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %cmp68 = icmp ne %struct.DataAttribute* %56, null
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.67
  %57 = load i8, i8* %acceptanceFlag, align 1
  %conv70 = sext i8 %57 to i32
  %cmp71 = icmp eq i32 %conv70, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.67
  %58 = phi i1 [ false, %while.cond.67 ], [ %cmp71, %land.rhs ]
  br i1 %58, label %while.body.73, label %while.end.83

while.body.73:                                    ; preds = %land.end
  %59 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %59, i32 0, i32 0
  %60 = load i64, i64* %code, align 8
  %61 = load i64, i64* %upperBound, align 8
  %cmp74 = icmp slt i64 %60, %61
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %while.body.73
  %62 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code77 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %62, i32 0, i32 0
  %63 = load i64, i64* %code77, align 8
  %64 = load %struct.DataObject*, %struct.DataObject** %object, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %64, i32 0, i32 1
  %65 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %65, i64 %63
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %nonKey = bitcast %union.anon.0* %value to i8**
  %66 = load i8*, i8** %nonKey, align 8
  %67 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %67, i32 0, i32 1
  %value78 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute, i32 0, i32 0
  %nonKey79 = bitcast %union.anon.0* %value78 to i8**
  %68 = load i8*, i8** %nonKey79, align 8
  %call80 = call signext i8 @consistentNonKey(i8* %66, i8* %68)
  store i8 %call80, i8* %acceptanceFlag, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %while.body.73
  %69 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %next82 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %69, i32 0, i32 2
  %70 = load %struct.DataAttribute*, %struct.DataAttribute** %next82, align 8
  store %struct.DataAttribute* %70, %struct.DataAttribute** %temp, align 8
  br label %while.cond.67

while.end.83:                                     ; preds = %land.end
  %71 = load i8, i8* %acceptanceFlag, align 1
  %conv84 = sext i8 %71 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %while.end.83
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  store %struct.IndexEntry* %72, %struct.IndexEntry** %prevEntry38, align 8
  %73 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %next88 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %73, i32 0, i32 2
  %74 = load %struct.IndexEntry*, %struct.IndexEntry** %next88, align 8
  store %struct.IndexEntry* %74, %struct.IndexEntry** %entry37, align 8
  br label %if.end.99

if.else.89:                                       ; preds = %while.end.83
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %next91 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 2
  %76 = load %struct.IndexEntry*, %struct.IndexEntry** %next91, align 8
  store %struct.IndexEntry* %76, %struct.IndexEntry** %nextEntry90, align 8
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %77, i64 0)
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %nextEntry90, align 8
  store %struct.IndexEntry* %78, %struct.IndexEntry** %entry37, align 8
  %79 = load i8*, i8** %adjustmentFlag.addr, align 8
  store i8 1, i8* %79, align 1
  %80 = load %struct.IndexEntry*, %struct.IndexEntry** %prevEntry38, align 8
  %cmp92 = icmp ne %struct.IndexEntry* %80, null
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else.89
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %82 = load %struct.IndexEntry*, %struct.IndexEntry** %prevEntry38, align 8
  %next95 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %82, i32 0, i32 2
  store %struct.IndexEntry* %81, %struct.IndexEntry** %next95, align 8
  br label %if.end.98

if.else.96:                                       ; preds = %if.else.89
  %83 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %84 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries97 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %84, i32 0, i32 1
  store %struct.IndexEntry* %83, %struct.IndexEntry** %entries97, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.87
  br label %if.end.102

if.else.100:                                      ; preds = %while.body.43
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  store %struct.IndexEntry* %85, %struct.IndexEntry** %prevEntry38, align 8
  %86 = load %struct.IndexEntry*, %struct.IndexEntry** %entry37, align 8
  %next101 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %86, i32 0, i32 2
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %next101, align 8
  store %struct.IndexEntry* %87, %struct.IndexEntry** %entry37, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.end.99
  br label %while.cond.40

while.end.103:                                    ; preds = %while.cond.40
  br label %if.end.104

if.end.104:                                       ; preds = %while.end.103, %while.end
  ret void
}

declare signext i8 @consistentKey(%struct.IndexKey*, %struct.IndexKey*) #1

declare void @deleteIndexEntry(%struct.IndexEntry*, i64) #1

declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #1

declare signext i8 @consistentNonKey(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
