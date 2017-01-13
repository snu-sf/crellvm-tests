; ModuleID = './MultiSource.Benchmarks.VersaBench/14.dbms.outputQuery.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@outputQuery.temp = internal global [51 x i8] zeroinitializer, align 16
@outputQuery.dataObjectString = internal global [44484 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outputBuffer = internal global [88967 x i8] zeroinitializer, align 16
@outputFile = internal global %struct._IO_FILE* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @outputQuery(%struct.DataObject* %dataObject) #0 {
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
  store i64 17, i64* %numberOfAttributes, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %2 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %type1 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i64 24, i64* %numberOfAttributes, align 8
  br label %if.end.8

if.else.4:                                        ; preds = %if.else
  %4 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %type5 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %4, i32 0, i32 0
  %5 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else.4
  store i64 50, i64* %numberOfAttributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  store i8 0, i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i64 0), align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %6 = load i64, i64* %i, align 8
  %cmp10 = icmp slt i64 %6, 8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes = getelementptr inbounds %struct.DataObject, %struct.DataObject* %8, i32 0, i32 1
  %9 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes, align 8
  %arrayidx = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %9, i64 %7
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx, i32 0, i32 0
  %key = bitcast %union.anon* %value to float*
  %10 = load float, float* %key, align 4
  %conv = fpext float %10 to double
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), double %conv) #4
  %call11 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i32 0, i32 0)) #4
  %call12 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 8, i64* %i, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.22, %for.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %numberOfAttributes, align 8
  %cmp14 = icmp slt i64 %12, %13
  br i1 %cmp14, label %for.body.16, label %for.end.24

for.body.16:                                      ; preds = %for.cond.13
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes17 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 1
  %16 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes17, align 8
  %arrayidx18 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %16, i64 %14
  %value19 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx18, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value19 to i8**
  %17 = load i8*, i8** %nonKey, align 8
  %call20 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* %17) #4
  %call21 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.16
  %18 = load i64, i64* %i, align 8
  %inc23 = add nsw i64 %18, 1
  store i64 %inc23, i64* %i, align 8
  br label %for.cond.13

for.end.24:                                       ; preds = %for.cond.13
  %19 = load i64, i64* %numberOfAttributes, align 8
  %20 = load %struct.DataObject*, %struct.DataObject** %dataObject.addr, align 8
  %attributes25 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %20, i32 0, i32 1
  %21 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %attributes25, align 8
  %arrayidx26 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %21, i64 %19
  %value27 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %arrayidx26, i32 0, i32 0
  %nonKey28 = bitcast %union.anon* %value27 to i8**
  %22 = load i8*, i8** %nonKey28, align 8
  %call29 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* %22) #4
  %call30 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #4
  %call31 = call i64 @strlen(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0)) #5
  %call32 = call i64 @strlen(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i32 0, i32 0)) #5
  %add = add i64 %call31, %call32
  %cmp33 = icmp ugt i64 %add, 88966
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.end.24
  call void @flushOutputBuffer()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.end.24
  %call37 = call i8* @strcat(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i32 0, i32 0), i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @flushOutputBuffer() #0 {
entry:
  %call = call i64 @strlen(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i32 0, i32 0)) #5
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i32 0, i64 0), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @initOutputBuffer(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @outputFile, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
