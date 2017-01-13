; ModuleID = './MultiSource.Benchmarks.VersaBench/9.dbms.insert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }

@insert.name = internal global [7 x i8] c"insert\00", align 1
@.str = private unnamed_addr constant [39 x i8] c"can't create entry for new data object\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"can't create new root node\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"can't create entry for old root\00", align 1

; Function Attrs: nounwind uwtable
define i64 @insert(%struct.IndexNode** %root, %struct.DataObject* %dataObject, i64 %fan) #0 {
entry:
  %retval = alloca i64, align 8
  %root.addr = alloca %struct.IndexNode**, align 8
  %dataObject.addr = alloca %struct.DataObject*, align 8
  %fan.addr = alloca i64, align 8
  %entry1 = alloca %struct.IndexEntry*, align 8
  %splitEntry = alloca %struct.IndexEntry*, align 8
  %returnCode = alloca i64, align 8
  %newRoot = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %root, %struct.IndexNode*** %root.addr, align 8
  store %struct.DataObject* %dataObject, %struct.DataObject** %dataObject.addr, align 8
  store i64 %fan, i64* %fan.addr, align 8
  %call = call %struct.IndexEntry* @createIndexEntry()
  store %struct.IndexEntry* %call, %struct.IndexEntry** %entry1, align 8
  %0 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %cmp = icmp eq %struct.IndexEntry* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i32 0, i32 0
  %dataObject2 = bitcast %union.anon* %child to %struct.DataObject**
  store %struct.DataObject* %1, %struct.DataObject** %dataObject2, align 8
  %3 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %3, i32 0, i32 1
  %4 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %4, i64 0
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %key = bitcast %union.anon.0* %value to float*
  %5 = load float, float* %key, align 4
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key3 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %6, i32 0, i32 1
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key3, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  store float %5, float* %T, align 4
  %7 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes4 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %7, i32 0, i32 1
  %8 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %8, i64 1
  %value6 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx5, i32 0, i32 0
  %key7 = bitcast %union.anon.0* %value6 to float*
  %9 = load float, float* %key7, align 4
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key8 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %10, i32 0, i32 1
  %lower9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key8, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower9, i32 0, i32 1
  store float %9, float* %X, align 4
  %11 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes10 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %11, i32 0, i32 1
  %12 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes10, align 8
  %arrayidx11 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %12, i64 2
  %value12 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx11, i32 0, i32 0
  %key13 = bitcast %union.anon.0* %value12 to float*
  %13 = load float, float* %key13, align 4
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key14 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %14, i32 0, i32 1
  %lower15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key14, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower15, i32 0, i32 2
  store float %13, float* %Y, align 4
  %15 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 1
  %16 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes16, align 8
  %arrayidx17 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %16, i64 3
  %value18 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx17, i32 0, i32 0
  %key19 = bitcast %union.anon.0* %value18 to float*
  %17 = load float, float* %key19, align 4
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key20 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 1
  %lower21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key20, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower21, i32 0, i32 3
  store float %17, float* %Z, align 4
  %19 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes22 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %19, i32 0, i32 1
  %20 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes22, align 8
  %arrayidx23 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %20, i64 4
  %value24 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx23, i32 0, i32 0
  %key25 = bitcast %union.anon.0* %value24 to float*
  %21 = load float, float* %key25, align 4
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key26 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %22, i32 0, i32 1
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key26, i32 0, i32 1
  %T27 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  store float %21, float* %T27, align 4
  %23 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes28 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %23, i32 0, i32 1
  %24 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes28, align 8
  %arrayidx29 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %24, i64 5
  %value30 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx29, i32 0, i32 0
  %key31 = bitcast %union.anon.0* %value30 to float*
  %25 = load float, float* %key31, align 4
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key32 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 1
  %upper33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key32, i32 0, i32 1
  %X34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper33, i32 0, i32 1
  store float %25, float* %X34, align 4
  %27 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes35 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %27, i32 0, i32 1
  %28 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes35, align 8
  %arrayidx36 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %28, i64 6
  %value37 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx36, i32 0, i32 0
  %key38 = bitcast %union.anon.0* %value37 to float*
  %29 = load float, float* %key38, align 4
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i32 0, i32 1
  %upper40 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key39, i32 0, i32 1
  %Y41 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper40, i32 0, i32 2
  store float %29, float* %Y41, align 4
  %31 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes42 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %31, i32 0, i32 1
  %32 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes42, align 8
  %arrayidx43 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %32, i64 7
  %value44 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx43, i32 0, i32 0
  %key45 = bitcast %union.anon.0* %value44 to float*
  %33 = load float, float* %key45, align 4
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key46 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 1
  %upper47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key46, i32 0, i32 1
  %Z48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper47, i32 0, i32 3
  store float %33, float* %Z48, align 4
  %35 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %36 = load %struct.IndexNode*, %struct.IndexNode** %35, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %38 = load i64, i64* %fan.addr, align 8
  %call49 = call i64 @insertEntry(%struct.IndexNode* %36, %struct.IndexEntry* %37, i64 0, i64 %38, %struct.IndexEntry** %splitEntry)
  store i64 %call49, i64* %returnCode, align 8
  %39 = load i64, i64* %returnCode, align 8
  %cmp50 = icmp eq i64 %39, 0
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %splitEntry, align 8
  %cmp52 = icmp ne %struct.IndexEntry* %40, null
  br i1 %cmp52, label %if.then.53, label %if.end.69

if.then.53:                                       ; preds = %if.then.51
  store %struct.IndexNode* null, %struct.IndexNode** %newRoot, align 8
  %41 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %42 = load %struct.IndexNode*, %struct.IndexNode** %41, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %42, i32 0, i32 0
  %43 = load i64, i64* %level, align 8
  %add = add nsw i64 %43, 1
  %call54 = call %struct.IndexNode* @createIndexNode(i64 %add)
  store %struct.IndexNode* %call54, %struct.IndexNode** %newRoot, align 8
  %44 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %cmp55 = icmp eq %struct.IndexNode* %44, null
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.53
  %call58 = call %struct.IndexEntry* @createIndexEntry()
  %45 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %45, i32 0, i32 1
  store %struct.IndexEntry* %call58, %struct.IndexEntry** %entries, align 8
  %46 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %entries59 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %46, i32 0, i32 1
  %47 = load %struct.IndexEntry*, %struct.IndexEntry** %entries59, align 8
  %cmp60 = icmp eq %struct.IndexEntry* %47, null
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.57
  %48 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %49 = load %struct.IndexNode*, %struct.IndexNode** %48, align 8
  %50 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %entries63 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %50, i32 0, i32 1
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %entries63, align 8
  %child64 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %51, i32 0, i32 0
  %node = bitcast %union.anon* %child64 to %struct.IndexNode**
  store %struct.IndexNode* %49, %struct.IndexNode** %node, align 8
  %52 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  %53 = load %struct.IndexNode*, %struct.IndexNode** %52, align 8
  %entries65 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %53, i32 0, i32 1
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %entries65, align 8
  %55 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %entries66 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %55, i32 0, i32 1
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %entries66, align 8
  %key67 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %56, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %54, %struct.IndexKey* %key67)
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %splitEntry, align 8
  %58 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %entries68 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %58, i32 0, i32 1
  %59 = load %struct.IndexEntry*, %struct.IndexEntry** %entries68, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %59, i32 0, i32 2
  store %struct.IndexEntry* %57, %struct.IndexEntry** %next, align 8
  %60 = load %struct.IndexNode*, %struct.IndexNode** %newRoot, align 8
  %61 = load %struct.IndexNode**, %struct.IndexNode*** %root.addr, align 8
  store %struct.IndexNode* %60, %struct.IndexNode** %61, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.62, %if.then.51
  br label %if.end.81

if.else:                                          ; preds = %if.end
  %62 = load i64, i64* %returnCode, align 8
  %cmp70 = icmp eq i64 %62, 1
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else
  store i64 2, i64* %retval
  br label %return

if.else.72:                                       ; preds = %if.else
  %63 = load i64, i64* %returnCode, align 8
  %cmp73 = icmp eq i64 %63, 2
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.72
  store i64 1, i64* %retval
  br label %return

if.else.75:                                       ; preds = %if.else.72
  %64 = load i64, i64* %returnCode, align 8
  %cmp76 = icmp eq i64 %64, 3
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else.75
  store i64 2, i64* %retval
  br label %return

if.end.78:                                        ; preds = %if.else.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.69
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.77, %if.then.74, %if.then.71, %if.then.61, %if.then.56, %if.then
  %65 = load i64, i64* %retval
  ret i64 %65
}

declare %struct.IndexEntry* @createIndexEntry() #1

declare void @errorMessage(i8*, i8 signext) #1

declare i64 @insertEntry(%struct.IndexNode*, %struct.IndexEntry*, i64, i64, %struct.IndexEntry**) #1

declare %struct.IndexNode* @createIndexNode(i64) #1

declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
