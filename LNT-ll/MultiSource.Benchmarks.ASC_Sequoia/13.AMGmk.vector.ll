; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/13.AMGmk.vector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%d vectors of size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"vector %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%.14e\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %vector = alloca %struct.hypre_Vector*, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 32)
  %0 = bitcast i8* %call to %struct.hypre_Vector*
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %vector, align 8
  %1 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %1, i32 0, i32 0
  store double* null, double** %data, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %3, i32 0, i32 1
  store i32 %2, i32* %size1, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 3
  store i32 1, i32* %num_vectors, align 4
  %5 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %multivec_storage_method = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %5, i32 0, i32 4
  store i32 0, i32* %multivec_storage_method, align 4
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %owns_data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 2
  store i32 1, i32* %owns_data, align 4
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  ret %struct.hypre_Vector* %7
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %size, i32 %num_vectors) #0 {
entry:
  %size.addr = alloca i32, align 4
  %num_vectors.addr = alloca i32, align 4
  %vector = alloca %struct.hypre_Vector*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num_vectors, i32* %num_vectors.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %0)
  store %struct.hypre_Vector* %call, %struct.hypre_Vector** %vector, align 8
  %1 = load i32, i32* %num_vectors.addr, align 4
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %num_vectors1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 3
  store i32 %1, i32* %num_vectors1, align 4
  %3 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  ret %struct.hypre_Vector* %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_Vector*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_Vector* %vector, %struct.hypre_Vector** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %tobool = icmp ne %struct.hypre_Vector* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %owns_data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %1, i32 0, i32 2
  %2 = load i32, i32* %owns_data, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %3, i32 0, i32 0
  %4 = load double*, double** %data, align 8
  %5 = bitcast double* %4 to i8*
  call void @hypre_Free(i8* %5)
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 0
  store double* null, double** %data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %8 = bitcast %struct.hypre_Vector* %7 to i8*
  call void @hypre_Free(i8* %8)
  store %struct.hypre_Vector* null, %struct.hypre_Vector** %vector.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %ierr, align 4
  ret i32 %9
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_Vector*, align 8
  %size = alloca i32, align 4
  %ierr = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %multivec_storage_method = alloca i32, align 4
  store %struct.hypre_Vector* %vector, %struct.hypre_Vector** %vector.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %num_vectors2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 3
  %3 = load i32, i32* %num_vectors2, align 4
  store i32 %3, i32* %num_vectors, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %multivec_storage_method3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 4
  %5 = load i32, i32* %multivec_storage_method3, align 4
  store i32 %5, i32* %multivec_storage_method, align 4
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 0
  %7 = load double*, double** %data, align 8
  %tobool = icmp ne double* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %num_vectors, align 4
  %9 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %8, %9
  %call = call i8* @hypre_CAlloc(i32 %mul, i32 8)
  %10 = bitcast i8* %call to double*
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 0
  store double* %10, double** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %multivec_storage_method, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %size, align 4
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %vecstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 5
  store i32 %13, i32* %vecstride, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %idxstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 6
  store i32 1, i32* %idxstride, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %multivec_storage_method, align 4
  %cmp6 = icmp eq i32 %16, 1
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %vecstride8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %17, i32 0, i32 5
  store i32 1, i32* %vecstride8, align 4
  %18 = load i32, i32* %num_vectors, align 4
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %idxstride9 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %19, i32 0, i32 6
  store i32 %18, i32* %idxstride9, align 4
  br label %if.end.11

if.else.10:                                       ; preds = %if.else
  %20 = load i32, i32* %ierr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ierr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %21 = load i32, i32* %ierr, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorSetDataOwner(%struct.hypre_Vector* %vector, i32 %owns_data) #0 {
entry:
  %vector.addr = alloca %struct.hypre_Vector*, align 8
  %owns_data.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_Vector* %vector, %struct.hypre_Vector** %vector.addr, align 8
  store i32 %owns_data, i32* %owns_data.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %owns_data.addr, align 4
  %1 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %owns_data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %1, i32 0, i32 2
  store i32 %0, i32* %owns_data1, align 4
  %2 = load i32, i32* %ierr, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define %struct.hypre_Vector* @hypre_SeqVectorRead(i8* %file_name) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %vector = alloca %struct.hypre_Vector*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %data = alloca double*, align 8
  %size = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  %0 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %size)
  %2 = load i32, i32* %size, align 4
  %call2 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %2)
  store %struct.hypre_Vector* %call2, %struct.hypre_Vector** %vector, align 8
  %3 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %call3 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %3)
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 0
  %5 = load double*, double** %data4, align 8
  store double* %5, double** %data, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %data, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %12)
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector, align 8
  ret %struct.hypre_Vector* %13
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorPrint(%struct.hypre_Vector* %vector, i8* %file_name) #0 {
entry:
  %vector.addr = alloca %struct.hypre_Vector*, align 8
  %file_name.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %data = alloca double*, align 8
  %size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %vecstride = alloca i32, align 4
  %idxstride = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_Vector* %vector, %struct.hypre_Vector** %vector.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %num_vectors1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 3
  %1 = load i32, i32* %num_vectors1, align 4
  store i32 %1, i32* %num_vectors, align 4
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %vecstride2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 5
  %3 = load i32, i32* %vecstride2, align 4
  store i32 %3, i32* %vecstride, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %idxstride3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 6
  %5 = load i32, i32* %idxstride3, align 4
  store i32 %5, i32* %idxstride, align 4
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 0
  %7 = load double*, double** %data4, align 8
  store double* %7, double** %data, align 8
  %8 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %size5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %8, i32 0, i32 1
  %9 = load i32, i32* %size5, align 4
  store i32 %9, i32* %size, align 4
  %10 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %num_vectors6 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 3
  %12 = load i32, i32* %num_vectors6, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load i32, i32* %size, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %16 = load i32, i32* %num_vectors, align 4
  %17 = load i32, i32* %size, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %16, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %num_vectors, align 4
  %cmp9 = icmp sgt i32 %18, 1
  br i1 %cmp9, label %if.then.10, label %if.else.21

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.then.10
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %num_vectors, align 4
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %22 = load i32, i32* %j, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %22)
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %size, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %vecstride, align 4
  %mul = mul nsw i32 %26, %27
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %idxstride, align 4
  %mul16 = mul nsw i32 %28, %29
  %add = add nsw i32 %mul, %mul16
  %idxprom = sext i32 %add to i64
  %30 = load double*, double** %data, align 8
  %arrayidx = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %33 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %33, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  br label %if.end.31

if.else.21:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %if.else.21
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %size, align 4
  %cmp23 = icmp slt i32 %34, %35
  br i1 %cmp23, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.22
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %37 to i64
  %38 = load double*, double** %data, align 8
  %arrayidx26 = getelementptr inbounds double, double* %38, i64 %idxprom25
  %39 = load double, double* %arrayidx26, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %39)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %40 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %40, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %for.end.20
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* %41)
  %42 = load i32, i32* %ierr, align 4
  ret i32 %42
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %v, double %value) #0 {
entry:
  %v.addr = alloca %struct.hypre_Vector*, align 8
  %value.addr = alloca double, align 8
  %vector_data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_Vector* %v, %struct.hypre_Vector** %v.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %v.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %vector_data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %v.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4
  store i32 %3, i32* %size, align 4
  store i32 0, i32* %ierr, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %v.addr, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 3
  %5 = load i32, i32* %num_vectors, align 4
  %6 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %6, %5
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load double, double* %value.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %vector_data, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %9, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorCopy(%struct.hypre_Vector* %x, %struct.hypre_Vector* %y) #0 {
entry:
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %x_data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 0
  %3 = load double*, double** %data1, align 8
  store double* %3, double** %y_data, align 8
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4
  store i32 %5, i32* %size, align 4
  store i32 0, i32* %ierr, align 4
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 3
  %7 = load i32, i32* %num_vectors, align 4
  %8 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %8, %7
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load double*, double** %x_data, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load double*, double** %y_data, align 8
  %arrayidx4 = getelementptr inbounds double, double* %15, i64 %idxprom3
  store double %13, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %ierr, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define %struct.hypre_Vector* @hypre_SeqVectorCloneDeep(%struct.hypre_Vector* %x) #0 {
entry:
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %y = alloca %struct.hypre_Vector*, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 3
  %3 = load i32, i32* %num_vectors2, align 4
  store i32 %3, i32* %num_vectors, align 4
  %4 = load i32, i32* %size, align 4
  %5 = load i32, i32* %num_vectors, align 4
  %call = call %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %4, i32 %5)
  store %struct.hypre_Vector* %call, %struct.hypre_Vector** %y, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %multivec_storage_method = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 4
  %7 = load i32, i32* %multivec_storage_method, align 4
  %8 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %multivec_storage_method3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %8, i32 0, i32 4
  store i32 %7, i32* %multivec_storage_method3, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %vecstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 5
  %10 = load i32, i32* %vecstride, align 4
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %vecstride4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 5
  store i32 %10, i32* %vecstride4, align 4
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %idxstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 6
  %13 = load i32, i32* %idxstride, align 4
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %idxstride5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 6
  store i32 %13, i32* %idxstride5, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call6 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %15)
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call7 = call i32 @hypre_SeqVectorCopy(%struct.hypre_Vector* %16, %struct.hypre_Vector* %17)
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  ret %struct.hypre_Vector* %18
}

; Function Attrs: nounwind uwtable
define %struct.hypre_Vector* @hypre_SeqVectorCloneShallow(%struct.hypre_Vector* %x) #0 {
entry:
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %y = alloca %struct.hypre_Vector*, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 3
  %3 = load i32, i32* %num_vectors2, align 4
  store i32 %3, i32* %num_vectors, align 4
  %4 = load i32, i32* %size, align 4
  %5 = load i32, i32* %num_vectors, align 4
  %call = call %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %4, i32 %5)
  store %struct.hypre_Vector* %call, %struct.hypre_Vector** %y, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %multivec_storage_method = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 4
  %7 = load i32, i32* %multivec_storage_method, align 4
  %8 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %multivec_storage_method3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %8, i32 0, i32 4
  store i32 %7, i32* %multivec_storage_method3, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %vecstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 5
  %10 = load i32, i32* %vecstride, align 4
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %vecstride4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 5
  store i32 %10, i32* %vecstride4, align 4
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %idxstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 6
  %13 = load i32, i32* %idxstride, align 4
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %idxstride5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 6
  store i32 %13, i32* %idxstride5, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 0
  %16 = load double*, double** %data, align 8
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %data6 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %17, i32 0, i32 0
  store double* %16, double** %data6, align 8
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call7 = call i32 @hypre_SeqVectorSetDataOwner(%struct.hypre_Vector* %18, i32 0)
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call8 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %19)
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  ret %struct.hypre_Vector* %20
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorScale(double %alpha, %struct.hypre_Vector* %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %y_data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %y_data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4
  store i32 %3, i32* %size, align 4
  store i32 0, i32* %ierr, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 3
  %5 = load i32, i32* %num_vectors, align 4
  %6 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %6, %5
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load double, double* %alpha.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %y_data, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %mul2 = fmul double %12, %9
  store double %mul2, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %ierr, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SeqVectorAxpy(double %alpha, %struct.hypre_Vector* %x, %struct.hypre_Vector* %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %x_data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 0
  %3 = load double*, double** %data1, align 8
  store double* %3, double** %y_data, align 8
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4
  store i32 %5, i32* %size, align 4
  store i32 0, i32* %ierr, align 4
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 3
  %7 = load i32, i32* %num_vectors, align 4
  %8 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %8, %7
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load double, double* %alpha.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load double*, double** %x_data, align 8
  %arrayidx = getelementptr inbounds double, double* %13, i64 %idxprom
  %14 = load double, double* %arrayidx, align 8
  %mul3 = fmul double %11, %14
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load double*, double** %y_data, align 8
  %arrayidx5 = getelementptr inbounds double, double* %16, i64 %idxprom4
  %17 = load double, double* %arrayidx5, align 8
  %add = fadd double %17, %mul3
  store double %add, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %ierr, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define double @hypre_SeqVectorInnerProd(%struct.hypre_Vector* %x, %struct.hypre_Vector* %y) #0 {
entry:
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca double, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %x_data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 0
  %3 = load double*, double** %data1, align 8
  store double* %3, double** %y_data, align 8
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i32 0, i32 1
  %5 = load i32, i32* %size2, align 4
  store i32 %5, i32* %size, align 4
  store double 0.000000e+00, double* %result, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 3
  %7 = load i32, i32* %num_vectors, align 4
  %8 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %8, %7
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load double*, double** %y_data, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load double*, double** %x_data, align 8
  %arrayidx4 = getelementptr inbounds double, double* %15, i64 %idxprom3
  %16 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %13, %16
  %17 = load double, double* %result, align 8
  %add = fadd double %17, %mul5
  store double %add, double* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load double, double* %result, align 8
  ret double %19
}

; Function Attrs: nounwind uwtable
define double @hypre_VectorSumElts(%struct.hypre_Vector* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_Vector*, align 8
  %sum = alloca double, align 8
  %data = alloca double*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_Vector* %vector, %struct.hypre_Vector** %vector.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  %0 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %0, i32 0, i32 0
  %1 = load double*, double** %data1, align 8
  store double* %1, double** %data, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %vector.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i32 0, i32 1
  %3 = load i32, i32* %size2, align 4
  store i32 %3, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*, double** %data, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %9 = load double, double* %sum, align 8
  %add = fadd double %9, %8
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %sum, align 8
  ret double %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
