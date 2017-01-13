; ModuleID = './MultiSource.Benchmarks.VersaBench/32.dbms.createDataObject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@createDataObject.name = internal global [17 x i8] c"createDataObject\00", align 16
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid object type to create\00", align 1

; Function Attrs: nounwind uwtable
define %struct.DataObject* @createDataObject(i32 %dataObjectType) #0 {
entry:
  %retval = alloca %struct.DataObject*, align 8
  %dataObjectType.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %numberOfAttributes = alloca i64, align 8
  %dataObject = alloca %struct.DataObject*, align 8
  store i32 %dataObjectType, i32* %dataObjectType.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.DataObject*
  store %struct.DataObject* %0, %struct.DataObject** %dataObject, align 8
  %1 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %cmp = icmp eq %struct.DataObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i32 0, i32 0), i8 signext 1)
  store %struct.DataObject* null, %struct.DataObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %dataObjectType.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %type = getelementptr inbounds %struct.DataObject, %struct.DataObject* %3, i32 0, i32 0
  store i32 1, i32* %type, align 4
  store i64 18, i64* %numberOfAttributes, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %dataObjectType.addr, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %5 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %type5 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %5, i32 0, i32 0
  store i32 2, i32* %type5, align 4
  store i64 25, i64* %numberOfAttributes, align 8
  br label %if.end.12

if.else.6:                                        ; preds = %if.else
  %6 = load i32, i32* %dataObjectType.addr, align 4
  %cmp7 = icmp eq i32 %6, 3
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.6
  %7 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %type9 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %7, i32 0, i32 0
  store i32 3, i32* %type9, align 4
  store i64 51, i64* %numberOfAttributes, align 8
  br label %if.end.11

if.else.10:                                       ; preds = %if.else.6
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i32 0, i32 0), i8 signext 1)
  %8 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %9 = bitcast %struct.DataObject* %8 to i8*
  call void @free(i8* %9) #3
  store %struct.DataObject* null, %struct.DataObject** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %10 = load i64, i64* %numberOfAttributes, align 8
  %mul = mul i64 %10, 8
  %call14 = call noalias i8* @malloc(i64 %mul) #3
  %11 = bitcast i8* %call14 to %struct.DataObjectAttribute*
  %12 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %12, i32 0, i32 1
  store %struct.DataObjectAttribute* %11, %struct.DataObjectAttribute** %attributes, align 8
  %13 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %attributes15 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %13, i32 0, i32 1
  %14 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes15, align 8
  %cmp16 = icmp eq %struct.DataObjectAttribute* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i32 0, i32 0), i8 signext 1)
  %15 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %16 = bitcast %struct.DataObject* %15 to i8*
  call void @free(i8* %16) #3
  store %struct.DataObject* null, %struct.DataObject** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %17 = load i64, i64* %i, align 8
  %cmp19 = icmp slt i64 %17, 8
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %19 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %attributes20 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %19, i32 0, i32 1
  %20 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes20, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %20, i64 %18
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %key = bitcast %union.anon* %value to float*
  store float 0xC7EFFFFFE0000000, float* %key, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 8, i64* %i, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %for.end
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %numberOfAttributes, align 8
  %cmp22 = icmp slt i64 %22, %23
  br i1 %cmp22, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.21
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %attributes24 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %25, i32 0, i32 1
  %26 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes24, align 8
  %arrayidx25 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %26, i64 %24
  %value26 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx25, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value26 to i8**
  store i8* null, i8** %nonKey, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %27 = load i64, i64* %i, align 8
  %inc28 = add nsw i64 %27, 1
  store i64 %inc28, i64* %i, align 8
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  %28 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  store %struct.DataObject* %28, %struct.DataObject** %retval
  br label %return

return:                                           ; preds = %for.end.29, %if.then.17, %if.else.10, %if.then
  %29 = load %struct.DataObject*, %struct.DataObject** %retval
  ret %struct.DataObject* %29
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @errorMessage(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
