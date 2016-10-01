; ModuleID = './MultiSource.Benchmarks.VersaBench/29.dbms.getInsertCommand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@getInsertCommand.name = internal global [17 x i8] c"getInsertCommand\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown data object type\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"improper format - type must be an integer\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"allocation failure for non-key attribute\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getInsertCommand(%struct._IO_FILE* %file, %struct.DataObject** %dataObject) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %dataObject.addr = alloca %struct.DataObject**, align 8
  %i = alloca i64, align 8
  %returnCode = alloca i64, align 8
  %dataObjectType = alloca i64, align 8
  %numberOfAttributes = alloca i64, align 8
  %temp = alloca float, align 4
  %temp54 = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.DataObject** %dataObject, %struct.DataObject*** %dataObject.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @getInt(%struct._IO_FILE* %0, i64* %dataObjectType)
  store i64 %call, i64* %returnCode, align 8
  %1 = load i64, i64* %returnCode, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.11

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %returnCode, align 8
  %cmp1 = icmp eq i64 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %3 = load i64, i64* %returnCode, align 8
  %cmp4 = icmp eq i64 %3, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %4 = load i64, i64* %returnCode, align 8
  %cmp7 = icmp eq i64 %4, 3
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.6
  call void @errorMessage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %5 = load i64, i64* %dataObjectType, align 8
  %cmp12 = icmp eq i64 %5, 1
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct.DataObject* @createDataObject(i32 1)
  %6 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  store %struct.DataObject* %call14, %struct.DataObject** %6, align 8
  store i64 18, i64* %numberOfAttributes, align 8
  br label %if.end.26

if.else.15:                                       ; preds = %if.end.11
  %7 = load i64, i64* %dataObjectType, align 8
  %cmp16 = icmp eq i64 %7, 2
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.15
  %call18 = call %struct.DataObject* @createDataObject(i32 2)
  %8 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  store %struct.DataObject* %call18, %struct.DataObject** %8, align 8
  store i64 25, i64* %numberOfAttributes, align 8
  br label %if.end.25

if.else.19:                                       ; preds = %if.else.15
  %9 = load i64, i64* %dataObjectType, align 8
  %cmp20 = icmp eq i64 %9, 3
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.19
  %call22 = call %struct.DataObject* @createDataObject(i32 3)
  %10 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  store %struct.DataObject* %call22, %struct.DataObject** %10, align 8
  store i64 51, i64* %numberOfAttributes, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.19
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.13
  %11 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %12 = load %struct.DataObject*, %struct.DataObject** %11, align 8
  %cmp27 = icmp eq %struct.DataObject* %12, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %13 = load i64, i64* %i, align 8
  %cmp30 = icmp slt i64 %13, 8
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call31 = call i64 @getKeyAttribute(%struct._IO_FILE* %14, float* %temp)
  store i64 %call31, i64* %returnCode, align 8
  %15 = load i64, i64* %returnCode, align 8
  %cmp32 = icmp eq i64 %15, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %for.body
  %16 = load float, float* %temp, align 4
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %19 = load %struct.DataObject*, %struct.DataObject** %18, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %19, i32 0, i32 1
  %20 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %20, i64 %17
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %key = bitcast %union.anon* %value to float*
  store float %16, float* %key, align 4
  br label %if.end.50

if.else.34:                                       ; preds = %for.body
  %21 = load i64, i64* %returnCode, align 8
  %cmp35 = icmp eq i64 %21, 1
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else.34
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %24 = load %struct.DataObject*, %struct.DataObject** %23, align 8
  %attributes37 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %24, i32 0, i32 1
  %25 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes37, align 8
  %arrayidx38 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %25, i64 %22
  %value39 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx38, i32 0, i32 0
  %key40 = bitcast %union.anon* %value39 to float*
  store float 0xC7EFFFFFE0000000, float* %key40, align 4
  store i64 2, i64* %retval
  br label %return

if.else.41:                                       ; preds = %if.else.34
  %26 = load i64, i64* %returnCode, align 8
  %cmp42 = icmp eq i64 %26, 2
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.else.41
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %29 = load %struct.DataObject*, %struct.DataObject** %28, align 8
  %attributes44 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %29, i32 0, i32 1
  %30 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes44, align 8
  %arrayidx45 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %30, i64 %27
  %value46 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx45, i32 0, i32 0
  %key47 = bitcast %union.anon* %value46 to float*
  store float 0xC7EFFFFFE0000000, float* %key47, align 4
  store i64 1, i64* %retval
  br label %return

if.end.48:                                        ; preds = %if.else.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %31 = load i64, i64* %i, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 8, i64* %i, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.78, %for.end
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %numberOfAttributes, align 8
  %cmp52 = icmp slt i64 %32, %33
  br i1 %cmp52, label %for.body.53, label %for.end.80

for.body.53:                                      ; preds = %for.cond.51
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call55 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %34, i8** %temp54)
  store i64 %call55, i64* %returnCode, align 8
  %35 = load i64, i64* %returnCode, align 8
  %cmp56 = icmp eq i64 %35, 0
  br i1 %cmp56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %for.body.53
  %36 = load i8*, i8** %temp54, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %39 = load %struct.DataObject*, %struct.DataObject** %38, align 8
  %attributes58 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 1
  %40 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes58, align 8
  %arrayidx59 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %40, i64 %37
  %value60 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx59, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value60 to i8**
  store i8* %36, i8** %nonKey, align 8
  br label %if.end.77

if.else.61:                                       ; preds = %for.body.53
  %41 = load i64, i64* %returnCode, align 8
  %cmp62 = icmp eq i64 %41, 2
  br i1 %cmp62, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.else.61
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %44 = load %struct.DataObject*, %struct.DataObject** %43, align 8
  %attributes64 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %44, i32 0, i32 1
  %45 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes64, align 8
  %arrayidx65 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %45, i64 %42
  %value66 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx65, i32 0, i32 0
  %nonKey67 = bitcast %union.anon* %value66 to i8**
  store i8* null, i8** %nonKey67, align 8
  store i64 2, i64* %retval
  br label %return

if.else.68:                                       ; preds = %if.else.61
  %46 = load i64, i64* %returnCode, align 8
  %cmp69 = icmp eq i64 %46, 1
  br i1 %cmp69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.else.68
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %47 = load i64, i64* %i, align 8
  %48 = load %struct.DataObject**, %struct.DataObject*** %dataObject.addr, align 8
  %49 = load %struct.DataObject*, %struct.DataObject** %48, align 8
  %attributes71 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %49, i32 0, i32 1
  %50 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes71, align 8
  %arrayidx72 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %50, i64 %47
  %value73 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx72, i32 0, i32 0
  %nonKey74 = bitcast %union.anon* %value73 to i8**
  store i8* null, i8** %nonKey74, align 8
  store i64 4, i64* %retval
  br label %return

if.end.75:                                        ; preds = %if.else.68
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.57
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %51 = load i64, i64* %i, align 8
  %inc79 = add nsw i64 %51, 1
  store i64 %inc79, i64* %i, align 8
  br label %for.cond.51

for.end.80:                                       ; preds = %for.cond.51
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %for.end.80, %if.then.70, %if.then.63, %if.then.43, %if.then.36, %if.then.28, %if.else.23, %if.then.8, %if.then.5, %if.then.2
  %52 = load i64, i64* %retval
  ret i64 %52
}

declare i64 @getInt(%struct._IO_FILE*, i64*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare %struct.DataObject* @createDataObject(i32) #1

declare i64 @getKeyAttribute(%struct._IO_FILE*, float*) #1

declare i64 @getNonKeyAttribute(%struct._IO_FILE*, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
