; ModuleID = './MultiSource.Benchmarks.VersaBench/22.dbms.deleteDataObject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

; Function Attrs: nounwind uwtable
define void @deleteDataObject(%struct.DataObject* %dataObject) #0 {
entry:
  %dataObject.addr = alloca %struct.DataObject*, align 8
  %i = alloca i64, align 8
  %numberOfAttributes = alloca i64, align 8
  store %struct.DataObject* %dataObject, %struct.DataObject** %dataObject.addr, align 8
  store i64 0, i64* %numberOfAttributes, align 8
  %0 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %type = getelementptr inbounds %struct.DataObject, %struct.DataObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 18, i64* %numberOfAttributes, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %2 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %type1 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i64 25, i64* %numberOfAttributes, align 8
  br label %if.end.8

if.else.4:                                        ; preds = %if.else
  %4 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %type5 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %4, i32 0, i32 0
  %5 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else.4
  store i64 51, i64* %numberOfAttributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  store i64 8, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %numberOfAttributes, align 8
  %cmp10 = icmp slt i64 %6, %7
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %9, i32 0, i32 1
  %10 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %10, i64 %8
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value to i8**
  %11 = load i8*, i8** %nonKey, align 8
  %cmp11 = icmp ne i8* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes13 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %13, i32 0, i32 1
  %14 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes13, align 8
  %arrayidx14 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %14, i64 %12
  %value15 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx14, i32 0, i32 0
  %nonKey16 = bitcast %union.anon* %value15 to i8**
  %15 = load i8*, i8** %nonKey16, align 8
  call void @free(i8* %15) #2
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %16 = load i64, i64* %i, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes18 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %17, i32 0, i32 1
  %18 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes18, align 8
  %19 = bitcast %struct.DataObjectAttribute* %18 to i8*
  call void @free(i8* %19) #2
  %20 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %21 = bitcast %struct.DataObject* %20 to i8*
  call void @free(i8* %21) #2
  store %struct.DataObject* null, %struct.DataObject** %dataObject.addr, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
