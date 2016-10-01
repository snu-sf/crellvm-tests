; ModuleID = './MultiSource.Benchmarks.VersaBench/33.dbms.delete.bc'
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

@delete.name = internal global [7 x i8] c"delete\00", align 1
@.str = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1

; Function Attrs: nounwind uwtable
define i64 @delete(%struct.IndexNode** %root, %struct.IndexKey* %searchKey, %struct.DataAttribute* %searchNonKey) #0 {
entry:
  %retval = alloca i64, align 8
  %root.addr = alloca %struct.IndexNode**, align 8
  %searchKey.addr = alloca %struct.IndexKey*, align 8
  %searchNonKey.addr = alloca %struct.DataAttribute*, align 8
  %adjustmentFlag = alloca i8, align 1
  %temp = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %root, %struct.IndexNode*** %root.addr, align 8
  store %struct.IndexKey* %searchKey, %struct.IndexKey** %searchKey.addr, align 8
  store %struct.DataAttribute* %searchNonKey, %struct.DataAttribute** %searchNonKey.addr, align 8
  %0 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %call = call signext i8 @validIndexKey(%struct.IndexKey* %0)
  %conv = sext i8 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  %call2 = call signext i8 @validAttributes(%struct.DataAttribute* %1)
  %conv3 = sext i8 %call2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  %2 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %3 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %4 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %5 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey.addr, align 8
  call void @deleteEntry(%struct.IndexNode* %3, %struct.IndexKey* %4, %struct.DataAttribute* %5, i8* %adjustmentFlag)
  %6 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %7 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %7, i32 0, i32 0
  %8 = load i64, i64* %level, align 8
  %cmp8 = icmp sgt i64 %8, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.7
  %9 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %10 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %10, i32 0, i32 1
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  %cmp10 = icmp eq %struct.IndexEntry* %11, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %13 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %level13 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %13, i32 0, i32 0
  store i64 0, i64* %level13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %14 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %15 = load %struct.IndexNode*, %struct.IndexNode** %14, align 8
  %level15 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %15, i32 0, i32 0
  %16 = load i64, i64* %level15, align 8
  %cmp16 = icmp ne i64 %16, 0
  br i1 %cmp16, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %while.cond
  %17 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %17, align 8
  %entries19 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %18, i32 0, i32 1
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %entries19, align 8
  %cmp20 = icmp ne %struct.IndexEntry* %19, null
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18
  %20 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %21 = load %struct.IndexNode*, %struct.IndexNode** %20, align 8
  %entries22 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %21, i32 0, i32 1
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %entries22, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %22, i32 0, i32 2
  %23 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  %cmp23 = icmp eq %struct.IndexEntry* %23, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %while.cond
  %24 = phi i1 [ false, %land.lhs.true.18 ], [ false, %while.cond ], [ %cmp23, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %26 = load %struct.IndexNode*, %struct.IndexNode** %25, align 8
  store %struct.IndexNode* %26, %struct.IndexNode** %temp, align 8
  %27 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %28 = load %struct.IndexNode*, %struct.IndexNode** %27, align 8
  %entries25 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %28, i32 0, i32 1
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %entries25, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %29, i32 0, i32 0
  %node = bitcast %union.anon* %child to %struct.IndexNode**
  %30 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  %31 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  store %struct.IndexNode* %30, %struct.IndexNode** %31, align 8
  %32 = load %struct.IndexNode*, %struct.IndexNode** %temp, align 8
  %entries26 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %32, i32 0, i32 1
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %entries26, align 8
  %34 = bitcast %struct.IndexEntry* %33 to i8*
  call void @free(i8* %34) #3
  %35 = load %struct.IndexNode*, %struct.IndexNode** %temp, align 8
  %entries27 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %35, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %entries27, align 8
  %36 = load %struct.IndexNode*, %struct.IndexNode** %temp, align 8
  call void @deleteIndexNode(%struct.IndexNode* %36)
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %37 = load i64, i64* %retval
  ret i64 %37
}

declare signext i8 @validIndexKey(%struct.IndexKey*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare signext i8 @validAttributes(%struct.DataAttribute*) #1

declare void @deleteEntry(%struct.IndexNode*, %struct.IndexKey*, %struct.DataAttribute*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @deleteIndexNode(%struct.IndexNode*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
