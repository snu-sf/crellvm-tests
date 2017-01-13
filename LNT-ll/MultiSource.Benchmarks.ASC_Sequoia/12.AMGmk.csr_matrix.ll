; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/12.AMGmk.csr_matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%.14e\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Warning: No matrix data!\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %num_rows, i32 %num_cols, i32 %num_nonzeros) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %num_nonzeros.addr = alloca i32, align 4
  %matrix = alloca %struct.hypre_CSRMatrix*, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store i32 %num_nonzeros, i32* %num_nonzeros.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 56)
  %0 = bitcast i8* %call to %struct.hypre_CSRMatrix*
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %matrix, align 8
  %1 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i32 0, i32 0
  store double* null, double** %data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  store i32* null, i32** %i, align 8
  %3 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %3, i32 0, i32 2
  store i32* null, i32** %j, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 6
  store i32* null, i32** %rownnz, align 8
  %5 = load i32, i32* %num_rows.addr, align 4
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  store i32 %5, i32* %num_rows1, align 4
  %7 = load i32, i32* %num_cols.addr, align 4
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 4
  store i32 %7, i32* %num_cols2, align 4
  %9 = load i32, i32* %num_nonzeros.addr, align 4
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_nonzeros3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 5
  store i32 %9, i32* %num_nonzeros3, align 4
  %11 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %owns_data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %11, i32 0, i32 8
  store i32 1, i32* %owns_data, align 4
  %12 = load i32, i32* %num_rows.addr, align 4
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 7
  store i32 %12, i32* %num_rownnz, align 4
  %14 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  ret %struct.hypre_CSRMatrix* %14
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %matrix, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %tobool = icmp ne %struct.hypre_CSRMatrix* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i32 0, i32 1
  %2 = load i32*, i32** %i, align 8
  %3 = bitcast i32* %2 to i8*
  call void @hypre_Free(i8* %3)
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 1
  store i32* null, i32** %i1, align 8
  %5 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %5, i32 0, i32 6
  %6 = load i32*, i32** %rownnz, align 8
  %tobool2 = icmp ne i32* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %rownnz4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %7, i32 0, i32 6
  %8 = load i32*, i32** %rownnz4, align 8
  %9 = bitcast i32* %8 to i8*
  call void @hypre_Free(i8* %9)
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %rownnz5 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 6
  store i32* null, i32** %rownnz5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %owns_data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %11, i32 0, i32 8
  %12 = load i32, i32* %owns_data, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 0
  %14 = load double*, double** %data, align 8
  %15 = bitcast double* %14 to i8*
  call void @hypre_Free(i8* %15)
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %data8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 0
  store double* null, double** %data8, align 8
  %17 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %17, i32 0, i32 2
  %18 = load i32*, i32** %j, align 8
  %19 = bitcast i32* %18 to i8*
  call void @hypre_Free(i8* %19)
  %20 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %j9 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %20, i32 0, i32 2
  store i32* null, i32** %j9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %21 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %22 = bitcast %struct.hypre_CSRMatrix* %21 to i8*
  call void @hypre_Free(i8* %22)
  store %struct.hypre_CSRMatrix* null, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %23 = load i32, i32* %ierr, align 4
  ret i32 %23
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %num_rows = alloca i32, align 4
  %num_nonzeros = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %matrix, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 3
  %1 = load i32, i32* %num_rows1, align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %num_nonzeros2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 5
  %3 = load i32, i32* %num_nonzeros2, align 4
  store i32 %3, i32* %num_nonzeros, align 4
  store i32 0, i32* %ierr, align 4
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 0
  %5 = load double*, double** %data, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %num_nonzeros, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %num_nonzeros, align 4
  %call = call i8* @hypre_CAlloc(i32 %7, i32 8)
  %8 = bitcast i8* %call to double*
  %9 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %9, i32 0, i32 0
  store double* %8, double** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 1
  %11 = load i32*, i32** %i, align 8
  %tobool5 = icmp ne i32* %11, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %num_rows, align 4
  %add = add nsw i32 %12, 1
  %call7 = call i8* @hypre_CAlloc(i32 %add, i32 4)
  %13 = bitcast i8* %call7 to i32*
  %14 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %14, i32 0, i32 1
  store i32* %13, i32** %i8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %15 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %15, i32 0, i32 2
  %16 = load i32*, i32** %j, align 8
  %tobool10 = icmp ne i32* %16, null
  br i1 %tobool10, label %if.end.16, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end.9
  %17 = load i32, i32* %num_nonzeros, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.11
  %18 = load i32, i32* %num_nonzeros, align 4
  %call14 = call i8* @hypre_CAlloc(i32 %18, i32 4)
  %19 = bitcast i8* %call14 to i32*
  %20 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %j15 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %20, i32 0, i32 2
  store i32* %19, i32** %j15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.end.9
  %21 = load i32, i32* %ierr, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixSetDataOwner(%struct.hypre_CSRMatrix* %matrix, i32 %owns_data) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %owns_data.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %matrix, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  store i32 %owns_data, i32* %owns_data.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %owns_data.addr, align 4
  %1 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %owns_data1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i32 0, i32 8
  store i32 %0, i32* %owns_data1, align 4
  %2 = load i32, i32* %ierr, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %ierr = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %A_i = alloca i32*, align 8
  %Arownnz = alloca i32*, align 8
  %i2 = alloca i32, align 4
  %adiag = alloca i32, align 4
  %irownnz = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %matrix, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 3
  %1 = load i32, i32* %num_rows1, align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_i, align 8
  store i32 0, i32* %irownnz, align 4
  store i32 0, i32* %i2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i2, align 4
  %5 = load i32, i32* %num_rows, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i2, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %7 = load i32*, i32** %A_i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %i2, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** %A_i, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %sub = sub nsw i32 %8, %11
  store i32 %sub, i32* %adiag, align 4
  %12 = load i32, i32* %adiag, align 4
  %cmp5 = icmp sgt i32 %12, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %irownnz, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %irownnz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i2, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %i2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %irownnz, align 4
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %num_rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 7
  store i32 %15, i32* %num_rownnz, align 4
  %17 = load i32, i32* %irownnz, align 4
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %18 = load i32, i32* %irownnz, align 4
  %19 = load i32, i32* %num_rows, align 4
  %cmp8 = icmp eq i32 %18, %19
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %for.end
  %20 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %20, i32 0, i32 6
  store i32* null, i32** %rownnz, align 8
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %irownnz, align 4
  %call = call i8* @hypre_CAlloc(i32 %21, i32 4)
  %22 = bitcast i8* %call to i32*
  store i32* %22, i32** %Arownnz, align 8
  store i32 0, i32* %irownnz, align 4
  store i32 0, i32* %i2, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %if.else
  %23 = load i32, i32* %i2, align 4
  %24 = load i32, i32* %num_rows, align 4
  %cmp11 = icmp slt i32 %23, %24
  br i1 %cmp11, label %for.body.12, label %for.end.27

for.body.12:                                      ; preds = %for.cond.10
  %25 = load i32, i32* %i2, align 4
  %add13 = add nsw i32 %25, 1
  %idxprom14 = sext i32 %add13 to i64
  %26 = load i32*, i32** %A_i, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  %27 = load i32, i32* %arrayidx15, align 4
  %28 = load i32, i32* %i2, align 4
  %idxprom16 = sext i32 %28 to i64
  %29 = load i32*, i32** %A_i, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 %idxprom16
  %30 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %27, %30
  store i32 %sub18, i32* %adiag, align 4
  %31 = load i32, i32* %adiag, align 4
  %cmp19 = icmp sgt i32 %31, 0
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %for.body.12
  %32 = load i32, i32* %i2, align 4
  %33 = load i32, i32* %irownnz, align 4
  %inc21 = add nsw i32 %33, 1
  store i32 %inc21, i32* %irownnz, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load i32*, i32** %Arownnz, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  store i32 %32, i32* %arrayidx23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.body.12
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %35 = load i32, i32* %i2, align 4
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, i32* %i2, align 4
  br label %for.cond.10

for.end.27:                                       ; preds = %for.cond.10
  %36 = load i32*, i32** %Arownnz, align 8
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %rownnz28 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 6
  store i32* %36, i32** %rownnz28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.27, %if.then.9
  %38 = load i32, i32* %ierr, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define %struct.hypre_CSRMatrix* @hypre_CSRMatrixRead(i8* %file_name) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %matrix = alloca %struct.hypre_CSRMatrix*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %matrix_data = alloca double*, align 8
  %matrix_i = alloca i32*, align 8
  %matrix_j = alloca i32*, align 8
  %num_rows = alloca i32, align 4
  %num_nonzeros = alloca i32, align 4
  %max_col = alloca i32, align 4
  %file_base = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 0, i32* %max_col, align 4
  store i32 1, i32* %file_base, align 4
  %0 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %num_rows)
  %2 = load i32, i32* %num_rows, align 4
  %add = add nsw i32 %2, 1
  %call2 = call i8* @hypre_CAlloc(i32 %add, i32 4)
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** %matrix_i, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %num_rows, align 4
  %add3 = add nsw i32 %5, 1
  %cmp = icmp slt i32 %4, %add3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %matrix_i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %arrayidx)
  %9 = load i32, i32* %file_base, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %matrix_i, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %sub = sub nsw i32 %12, %9
  store i32 %sub, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %num_rows, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** %matrix_i, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  store i32 %16, i32* %num_nonzeros, align 4
  %17 = load i32, i32* %num_rows, align 4
  %18 = load i32, i32* %num_rows, align 4
  %19 = load i32, i32* %num_rows, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load i32*, i32** %matrix_i, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx10, align 4
  %call11 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %17, i32 %18, i32 %21)
  store %struct.hypre_CSRMatrix* %call11, %struct.hypre_CSRMatrix** %matrix, align 8
  %22 = load i32*, i32** %matrix_i, align 8
  %23 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %23, i32 0, i32 1
  store i32* %22, i32** %i, align 8
  %24 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %call12 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %24)
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %j13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 2
  %26 = load i32*, i32** %j13, align 8
  store i32* %26, i32** %matrix_j, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.28, %for.end
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %num_nonzeros, align 4
  %cmp15 = icmp slt i32 %27, %28
  br i1 %cmp15, label %for.body.16, label %for.end.30

for.body.16:                                      ; preds = %for.cond.14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load i32*, i32** %matrix_j, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %31, i64 %idxprom17
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %arrayidx18)
  %32 = load i32, i32* %file_base, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load i32*, i32** %matrix_j, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %34, i64 %idxprom20
  %35 = load i32, i32* %arrayidx21, align 4
  %sub22 = sub nsw i32 %35, %32
  store i32 %sub22, i32* %arrayidx21, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load i32*, i32** %matrix_j, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %37, i64 %idxprom23
  %38 = load i32, i32* %arrayidx24, align 4
  %39 = load i32, i32* %max_col, align 4
  %cmp25 = icmp sgt i32 %38, %39
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  %40 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %40 to i64
  %41 = load i32*, i32** %matrix_j, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %41, i64 %idxprom26
  %42 = load i32, i32* %arrayidx27, align 4
  store i32 %42, i32* %max_col, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.16
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end
  %43 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %43, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.14

for.end.30:                                       ; preds = %for.cond.14
  %44 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %44, i32 0, i32 0
  %45 = load double*, double** %data, align 8
  store double* %45, double** %matrix_data, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.39, %for.end.30
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %num_rows, align 4
  %idxprom32 = sext i32 %47 to i64
  %48 = load i32*, i32** %matrix_i, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %48, i64 %idxprom32
  %49 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp slt i32 %46, %49
  br i1 %cmp34, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.31
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %51 to i64
  %52 = load double*, double** %matrix_data, align 8
  %arrayidx37 = getelementptr inbounds double, double* %52, i64 %idxprom36
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double* %arrayidx37)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.35
  %53 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %53, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call42 = call i32 @fclose(%struct._IO_FILE* %54)
  %55 = load i32, i32* %num_nonzeros, align 4
  %56 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_nonzeros43 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %56, i32 0, i32 5
  store i32 %55, i32* %num_nonzeros43, align 4
  %57 = load i32, i32* %max_col, align 4
  %inc44 = add nsw i32 %57, 1
  store i32 %inc44, i32* %max_col, align 4
  %58 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %58, i32 0, i32 4
  store i32 %inc44, i32* %num_cols, align 4
  %59 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix, align 8
  ret %struct.hypre_CSRMatrix* %59
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixPrint(%struct.hypre_CSRMatrix* %matrix, i8* %file_name) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %file_name.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %matrix_data = alloca double*, align 8
  %matrix_i = alloca i32*, align 8
  %matrix_j = alloca i32*, align 8
  %num_rows = alloca i32, align 4
  %file_base = alloca i32, align 4
  %j = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %matrix, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 1, i32* %file_base, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %matrix_data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %matrix_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %j1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j1, align 8
  store i32* %5, i32** %matrix_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %matrix.addr, align 8
  %num_rows2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %7 = load i32, i32* %num_rows2, align 4
  store i32 %7, i32* %num_rows, align 4
  %8 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load i32, i32* %num_rows, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %10)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %num_rows, align 4
  %cmp = icmp sle i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %matrix_i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load i32, i32* %file_base, align 4
  %add = add nsw i32 %16, %17
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.14, %for.end
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %num_rows, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load i32*, i32** %matrix_i, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %21, i64 %idxprom6
  %22 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %19, %22
  br i1 %cmp8, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %24 to i64
  %25 = load i32*, i32** %matrix_j, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4
  %27 = load i32, i32* %file_base, align 4
  %add12 = add nsw i32 %26, %27
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %add12)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.9
  %28 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %28, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.5

for.end.16:                                       ; preds = %for.cond.5
  %29 = load double*, double** %matrix_data, align 8
  %tobool = icmp ne double* %29, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.16
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %if.then
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %num_rows, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load i32*, i32** %matrix_i, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %32, i64 %idxprom18
  %33 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp slt i32 %30, %33
  br i1 %cmp20, label %for.body.21, label %for.end.27

for.body.21:                                      ; preds = %for.cond.17
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load double*, double** %matrix_data, align 8
  %arrayidx23 = getelementptr inbounds double, double* %36, i64 %idxprom22
  %37 = load double, double* %arrayidx23, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), double %37)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.21
  %38 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  br label %if.end

if.else:                                          ; preds = %for.end.16
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.27
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %40)
  %41 = load i32, i32* %ierr, align 4
  ret i32 %41
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixCopy(%struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix* %B, i32 %copy_data) #0 {
entry:
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %B.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %copy_data.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %A_data = alloca double*, align 8
  %B_i = alloca i32*, align 8
  %B_j = alloca i32*, align 8
  %B_data = alloca double*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_CSRMatrix* %B, %struct.hypre_CSRMatrix** %B.addr, align 8
  store i32 %copy_data, i32* %copy_data.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 3
  %1 = load i32, i32* %num_rows1, align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j, align 8
  store i32* %5, i32** %A_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %i2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 1
  %7 = load i32*, i32** %i2, align 8
  store i32* %7, i32** %B_i, align 8
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %j3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 2
  %9 = load i32*, i32** %j3, align 8
  store i32* %9, i32** %B_j, align 8
  store i32 0, i32* %i4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %10 = load i32, i32* %i4, align 4
  %11 = load i32, i32* %num_rows, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i4, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %A_i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %i4, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i32*, i32** %B_i, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  store i32 %14, i32* %arrayidx7, align 4
  %17 = load i32, i32* %i4, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i32*, i32** %A_i, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %19 = load i32, i32* %arrayidx9, align 4
  store i32 %19, i32* %j5, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j5, align 4
  %21 = load i32, i32* %i4, align 4
  %add = add nsw i32 %21, 1
  %idxprom11 = sext i32 %add to i64
  %22 = load i32*, i32** %A_i, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %22, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %20, %23
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %24 = load i32, i32* %j5, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32*, i32** %A_j, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %26 = load i32, i32* %arrayidx16, align 4
  %27 = load i32, i32* %j5, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load i32*, i32** %B_j, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %28, i64 %idxprom17
  store i32 %26, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %29 = load i32, i32* %j5, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j5, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %30 = load i32, i32* %i4, align 4
  %inc20 = add nsw i32 %30, 1
  store i32 %inc20, i32* %i4, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %31 = load i32, i32* %num_rows, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load i32*, i32** %A_i, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %32, i64 %idxprom22
  %33 = load i32, i32* %arrayidx23, align 4
  %34 = load i32, i32* %num_rows, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load i32*, i32** %B_i, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %35, i64 %idxprom24
  store i32 %33, i32* %arrayidx25, align 4
  %36 = load i32, i32* %copy_data.addr, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.21
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 0
  %38 = load double*, double** %data, align 8
  store double* %38, double** %A_data, align 8
  %39 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %data26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %39, i32 0, i32 0
  %40 = load double*, double** %data26, align 8
  store double* %40, double** %B_data, align 8
  store i32 0, i32* %i4, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.45, %if.then
  %41 = load i32, i32* %i4, align 4
  %42 = load i32, i32* %num_rows, align 4
  %cmp28 = icmp slt i32 %41, %42
  br i1 %cmp28, label %for.body.29, label %for.end.47

for.body.29:                                      ; preds = %for.cond.27
  %43 = load i32, i32* %i4, align 4
  %idxprom30 = sext i32 %43 to i64
  %44 = load i32*, i32** %A_i, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %44, i64 %idxprom30
  %45 = load i32, i32* %arrayidx31, align 4
  store i32 %45, i32* %j5, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.42, %for.body.29
  %46 = load i32, i32* %j5, align 4
  %47 = load i32, i32* %i4, align 4
  %add33 = add nsw i32 %47, 1
  %idxprom34 = sext i32 %add33 to i64
  %48 = load i32*, i32** %A_i, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %48, i64 %idxprom34
  %49 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp slt i32 %46, %49
  br i1 %cmp36, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.32
  %50 = load i32, i32* %j5, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load double*, double** %A_data, align 8
  %arrayidx39 = getelementptr inbounds double, double* %51, i64 %idxprom38
  %52 = load double, double* %arrayidx39, align 8
  %53 = load i32, i32* %j5, align 4
  %idxprom40 = sext i32 %53 to i64
  %54 = load double*, double** %B_data, align 8
  %arrayidx41 = getelementptr inbounds double, double* %54, i64 %idxprom40
  store double %52, double* %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.37
  %55 = load i32, i32* %j5, align 4
  %inc43 = add nsw i32 %55, 1
  store i32 %inc43, i32* %j5, align 4
  br label %for.cond.32

for.end.44:                                       ; preds = %for.cond.32
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %56 = load i32, i32* %i4, align 4
  %inc46 = add nsw i32 %56, 1
  store i32 %inc46, i32* %i4, align 4
  br label %for.cond.27

for.end.47:                                       ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end.47, %for.end.21
  %57 = load i32, i32* %ierr, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define %struct.hypre_CSRMatrix* @hypre_CSRMatrixClone(%struct.hypre_CSRMatrix* %A) #0 {
entry:
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %num_nonzeros = alloca i32, align 4
  %B = alloca %struct.hypre_CSRMatrix*, align 8
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %B_i = alloca i32*, align 8
  %B_j = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 3
  %1 = load i32, i32* %num_rows1, align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 4
  %3 = load i32, i32* %num_cols2, align 4
  store i32 %3, i32* %num_cols, align 4
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_nonzeros3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 5
  %5 = load i32, i32* %num_nonzeros3, align 4
  store i32 %5, i32* %num_nonzeros, align 4
  %6 = load i32, i32* %num_rows, align 4
  %7 = load i32, i32* %num_cols, align 4
  %8 = load i32, i32* %num_nonzeros, align 4
  %call = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %6, i32 %7, i32 %8)
  store %struct.hypre_CSRMatrix* %call, %struct.hypre_CSRMatrix** %B, align 8
  %9 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  %call4 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %9)
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i5 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 1
  %11 = load i32*, i32** %i5, align 8
  store i32* %11, i32** %A_i, align 8
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 2
  %13 = load i32*, i32** %j6, align 8
  store i32* %13, i32** %A_j, align 8
  %14 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  %i7 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %14, i32 0, i32 1
  %15 = load i32*, i32** %i7, align 8
  store i32* %15, i32** %B_i, align 8
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  %j8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 2
  %17 = load i32*, i32** %j8, align 8
  store i32* %17, i32** %B_j, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %num_rows, align 4
  %add = add nsw i32 %19, 1
  %cmp = icmp slt i32 %18, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** %A_i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %23 to i64
  %24 = load i32*, i32** %B_i, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 %idxprom9
  store i32 %22, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %num_nonzeros, align 4
  %cmp12 = icmp slt i32 %26, %27
  br i1 %cmp12, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.11
  %28 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load i32*, i32** %A_j, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  %30 = load i32, i32* %arrayidx15, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load i32*, i32** %B_j, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %32, i64 %idxprom16
  store i32 %30, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.13
  %33 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %33, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 7
  %35 = load i32, i32* %num_rownnz, align 4
  %36 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  %num_rownnz21 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %36, i32 0, i32 7
  store i32 %35, i32* %num_rownnz21, align 4
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 6
  %38 = load i32*, i32** %rownnz, align 8
  %tobool = icmp ne i32* %38, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.20
  %39 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  %call22 = call i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* %39)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.20
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B, align 8
  ret %struct.hypre_CSRMatrix* %40
}

; Function Attrs: nounwind uwtable
define %struct.hypre_CSRMatrix* @hypre_CSRMatrixUnion(%struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix* %B, i32* %col_map_offd_A, i32* %col_map_offd_B, i32** %col_map_offd_C) #0 {
entry:
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %B.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %col_map_offd_A.addr = alloca i32*, align 8
  %col_map_offd_B.addr = alloca i32*, align 8
  %col_map_offd_C.addr = alloca i32**, align 8
  %num_rows = alloca i32, align 4
  %num_cols_A = alloca i32, align 4
  %num_cols_B = alloca i32, align 4
  %num_cols3 = alloca i32, align 4
  %num_nonzeros = alloca i32, align 4
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %B_i = alloca i32*, align 8
  %B_j = alloca i32*, align 8
  %C_i = alloca i32*, align 8
  %C_j = alloca i32*, align 8
  %jC = alloca i32*, align 8
  %i6 = alloca i32, align 4
  %jA = alloca i32, align 4
  %jB = alloca i32, align 4
  %jBg = alloca i32, align 4
  %ma = alloca i32, align 4
  %mb = alloca i32, align 4
  %mc = alloca i32, align 4
  %ma_min = alloca i32, align 4
  %ma_max = alloca i32, align 4
  %match = alloca i32, align 4
  %C = alloca %struct.hypre_CSRMatrix*, align 8
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_CSRMatrix* %B, %struct.hypre_CSRMatrix** %B.addr, align 8
  store i32* %col_map_offd_A, i32** %col_map_offd_A.addr, align 8
  store i32* %col_map_offd_B, i32** %col_map_offd_B.addr, align 8
  store i32** %col_map_offd_C, i32*** %col_map_offd_C.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 3
  %1 = load i32, i32* %num_rows1, align 4
  store i32 %1, i32* %num_rows, align 4
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 4
  %3 = load i32, i32* %num_cols, align 4
  store i32 %3, i32* %num_cols_A, align 4
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 4
  %5 = load i32, i32* %num_cols2, align 4
  store i32 %5, i32* %num_cols_B, align 4
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 1
  %7 = load i32*, i32** %i, align 8
  store i32* %7, i32** %A_i, align 8
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 2
  %9 = load i32*, i32** %j, align 8
  store i32* %9, i32** %A_j, align 8
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %i4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 1
  %11 = load i32*, i32** %i4, align 8
  store i32* %11, i32** %B_i, align 8
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %B.addr, align 8
  %j5 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 2
  %13 = load i32*, i32** %j5, align 8
  store i32* %13, i32** %B_j, align 8
  store i32* null, i32** %jC, align 8
  %14 = load i32*, i32** %col_map_offd_B.addr, align 8
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32*, i32** %col_map_offd_A.addr, align 8
  %tobool7 = icmp ne i32* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %16 = load i32*, i32** %col_map_offd_A.addr, align 8
  %cmp = icmp eq i32* %16, null
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %17 = load i32, i32* %num_cols_A, align 4
  %18 = load i32, i32* %num_cols_B, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %19 = load i32, i32* %num_cols_B, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %20 = load i32, i32* %num_cols_A, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %num_cols3, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end.9
  %21 = load i32, i32* %num_cols_B, align 4
  %call = call i8* @hypre_CAlloc(i32 %21, i32 4)
  %22 = bitcast i8* %call to i32*
  store i32* %22, i32** %jC, align 8
  %23 = load i32, i32* %num_cols_A, align 4
  store i32 %23, i32* %num_cols3, align 4
  store i32 0, i32* %jB, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.else
  %24 = load i32, i32* %jB, align 4
  %25 = load i32, i32* %num_cols_B, align 4
  %cmp12 = icmp slt i32 %24, %25
  br i1 %cmp12, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %match, align 4
  %26 = load i32, i32* %jB, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i32*, i32** %col_map_offd_B.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  store i32 %28, i32* %jBg, align 4
  store i32 0, i32* %ma, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %ma, align 4
  %30 = load i32, i32* %num_cols_A, align 4
  %cmp14 = icmp slt i32 %29, %30
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %31 = load i32, i32* %ma, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load i32*, i32** %col_map_offd_A.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %32, i64 %idxprom16
  %33 = load i32, i32* %arrayidx17, align 4
  %34 = load i32, i32* %jBg, align 4
  %cmp18 = icmp eq i32 %33, %34
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.15
  store i32 1, i32* %match, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %35 = load i32, i32* %ma, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %ma, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %36 = load i32, i32* %match, align 4
  %cmp21 = icmp eq i32 %36, 0
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.end
  %37 = load i32, i32* %num_cols3, align 4
  %38 = load i32, i32* %jB, align 4
  %idxprom23 = sext i32 %38 to i64
  %39 = load i32*, i32** %jC, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %39, i64 %idxprom23
  store i32 %37, i32* %arrayidx24, align 4
  %40 = load i32, i32* %num_cols3, align 4
  %inc25 = add nsw i32 %40, 1
  store i32 %inc25, i32* %num_cols3, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %for.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %41 = load i32, i32* %jB, align 4
  %inc28 = add nsw i32 %41, 1
  store i32 %inc28, i32* %jB, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %cond.end
  %42 = load i32*, i32** %col_map_offd_A.addr, align 8
  %tobool31 = icmp ne i32* %42, null
  br i1 %tobool31, label %if.then.32, label %if.end.70

if.then.32:                                       ; preds = %if.end.30
  %43 = load i32, i32* %num_cols3, align 4
  %call33 = call i8* @hypre_CAlloc(i32 %43, i32 4)
  %44 = bitcast i8* %call33 to i32*
  %45 = load i32**, i32*** %col_map_offd_C.addr, align 8
  store i32* %44, i32** %45, align 8
  store i32 0, i32* %jA, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.41, %if.then.32
  %46 = load i32, i32* %jA, align 4
  %47 = load i32, i32* %num_cols_A, align 4
  %cmp35 = icmp slt i32 %46, %47
  br i1 %cmp35, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.34
  %48 = load i32, i32* %jA, align 4
  %idxprom37 = sext i32 %48 to i64
  %49 = load i32*, i32** %col_map_offd_A.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %49, i64 %idxprom37
  %50 = load i32, i32* %arrayidx38, align 4
  %51 = load i32, i32* %jA, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load i32**, i32*** %col_map_offd_C.addr, align 8
  %53 = load i32*, i32** %52, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %53, i64 %idxprom39
  store i32 %50, i32* %arrayidx40, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %54 = load i32, i32* %jA, align 4
  %inc42 = add nsw i32 %54, 1
  store i32 %inc42, i32* %jA, align 4
  br label %for.cond.34

for.end.43:                                       ; preds = %for.cond.34
  store i32 0, i32* %jB, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.67, %for.end.43
  %55 = load i32, i32* %jB, align 4
  %56 = load i32, i32* %num_cols_B, align 4
  %cmp45 = icmp slt i32 %55, %56
  br i1 %cmp45, label %for.body.46, label %for.end.69

for.body.46:                                      ; preds = %for.cond.44
  store i32 0, i32* %match, align 4
  %57 = load i32, i32* %jB, align 4
  %idxprom47 = sext i32 %57 to i64
  %58 = load i32*, i32** %col_map_offd_B.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %58, i64 %idxprom47
  %59 = load i32, i32* %arrayidx48, align 4
  store i32 %59, i32* %jBg, align 4
  store i32 0, i32* %ma, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.57, %for.body.46
  %60 = load i32, i32* %ma, align 4
  %61 = load i32, i32* %num_cols_A, align 4
  %cmp50 = icmp slt i32 %60, %61
  br i1 %cmp50, label %for.body.51, label %for.end.59

for.body.51:                                      ; preds = %for.cond.49
  %62 = load i32, i32* %ma, align 4
  %idxprom52 = sext i32 %62 to i64
  %63 = load i32*, i32** %col_map_offd_A.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %63, i64 %idxprom52
  %64 = load i32, i32* %arrayidx53, align 4
  %65 = load i32, i32* %jBg, align 4
  %cmp54 = icmp eq i32 %64, %65
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body.51
  store i32 1, i32* %match, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.body.51
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %66 = load i32, i32* %ma, align 4
  %inc58 = add nsw i32 %66, 1
  store i32 %inc58, i32* %ma, align 4
  br label %for.cond.49

for.end.59:                                       ; preds = %for.cond.49
  %67 = load i32, i32* %match, align 4
  %cmp60 = icmp eq i32 %67, 0
  br i1 %cmp60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %for.end.59
  %68 = load i32, i32* %jBg, align 4
  %69 = load i32, i32* %jB, align 4
  %idxprom62 = sext i32 %69 to i64
  %70 = load i32*, i32** %jC, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 %idxprom62
  %71 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %71 to i64
  %72 = load i32**, i32*** %col_map_offd_C.addr, align 8
  %73 = load i32*, i32** %72, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %73, i64 %idxprom64
  store i32 %68, i32* %arrayidx65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %for.end.59
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %74 = load i32, i32* %jB, align 4
  %inc68 = add nsw i32 %74, 1
  store i32 %inc68, i32* %jB, align 4
  br label %for.cond.44

for.end.69:                                       ; preds = %for.cond.44
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.end.30
  %75 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_nonzeros71 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %75, i32 0, i32 5
  %76 = load i32, i32* %num_nonzeros71, align 4
  store i32 %76, i32* %num_nonzeros, align 4
  store i32 0, i32* %i6, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.121, %if.end.70
  %77 = load i32, i32* %i6, align 4
  %78 = load i32, i32* %num_rows, align 4
  %cmp73 = icmp slt i32 %77, %78
  br i1 %cmp73, label %for.body.74, label %for.end.123

for.body.74:                                      ; preds = %for.cond.72
  %79 = load i32, i32* %i6, align 4
  %idxprom75 = sext i32 %79 to i64
  %80 = load i32*, i32** %A_i, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %80, i64 %idxprom75
  %81 = load i32, i32* %arrayidx76, align 4
  store i32 %81, i32* %ma_min, align 4
  %82 = load i32, i32* %i6, align 4
  %add = add nsw i32 %82, 1
  %idxprom77 = sext i32 %add to i64
  %83 = load i32*, i32** %A_i, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %83, i64 %idxprom77
  %84 = load i32, i32* %arrayidx78, align 4
  store i32 %84, i32* %ma_max, align 4
  %85 = load i32, i32* %i6, align 4
  %idxprom79 = sext i32 %85 to i64
  %86 = load i32*, i32** %B_i, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %86, i64 %idxprom79
  %87 = load i32, i32* %arrayidx80, align 4
  store i32 %87, i32* %mb, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.118, %for.body.74
  %88 = load i32, i32* %mb, align 4
  %89 = load i32, i32* %i6, align 4
  %add82 = add nsw i32 %89, 1
  %idxprom83 = sext i32 %add82 to i64
  %90 = load i32*, i32** %B_i, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %90, i64 %idxprom83
  %91 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp slt i32 %88, %91
  br i1 %cmp85, label %for.body.86, label %for.end.120

for.body.86:                                      ; preds = %for.cond.81
  %92 = load i32, i32* %mb, align 4
  %idxprom87 = sext i32 %92 to i64
  %93 = load i32*, i32** %B_j, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %93, i64 %idxprom87
  %94 = load i32, i32* %arrayidx88, align 4
  store i32 %94, i32* %jB, align 4
  %95 = load i32*, i32** %col_map_offd_B.addr, align 8
  %tobool89 = icmp ne i32* %95, null
  br i1 %tobool89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %for.body.86
  %96 = load i32, i32* %jB, align 4
  %idxprom91 = sext i32 %96 to i64
  %97 = load i32*, i32** %col_map_offd_B.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %97, i64 %idxprom91
  %98 = load i32, i32* %arrayidx92, align 4
  store i32 %98, i32* %jB, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %for.body.86
  store i32 0, i32* %match, align 4
  %99 = load i32, i32* %ma_min, align 4
  store i32 %99, i32* %ma, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.111, %if.end.93
  %100 = load i32, i32* %ma, align 4
  %101 = load i32, i32* %ma_max, align 4
  %cmp95 = icmp slt i32 %100, %101
  br i1 %cmp95, label %for.body.96, label %for.end.113

for.body.96:                                      ; preds = %for.cond.94
  %102 = load i32, i32* %ma, align 4
  %idxprom97 = sext i32 %102 to i64
  %103 = load i32*, i32** %A_j, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %103, i64 %idxprom97
  %104 = load i32, i32* %arrayidx98, align 4
  store i32 %104, i32* %jA, align 4
  %105 = load i32*, i32** %col_map_offd_A.addr, align 8
  %tobool99 = icmp ne i32* %105, null
  br i1 %tobool99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %for.body.96
  %106 = load i32, i32* %jA, align 4
  %idxprom101 = sext i32 %106 to i64
  %107 = load i32*, i32** %col_map_offd_A.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %107, i64 %idxprom101
  %108 = load i32, i32* %arrayidx102, align 4
  store i32 %108, i32* %jA, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %for.body.96
  %109 = load i32, i32* %jB, align 4
  %110 = load i32, i32* %jA, align 4
  %cmp104 = icmp eq i32 %109, %110
  br i1 %cmp104, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %if.end.103
  store i32 1, i32* %match, align 4
  %111 = load i32, i32* %ma, align 4
  %112 = load i32, i32* %ma_min, align 4
  %cmp106 = icmp eq i32 %111, %112
  br i1 %cmp106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.then.105
  %113 = load i32, i32* %ma_min, align 4
  %inc108 = add nsw i32 %113, 1
  store i32 %inc108, i32* %ma_min, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.then.105
  br label %for.end.113

if.end.110:                                       ; preds = %if.end.103
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %114 = load i32, i32* %ma, align 4
  %inc112 = add nsw i32 %114, 1
  store i32 %inc112, i32* %ma, align 4
  br label %for.cond.94

for.end.113:                                      ; preds = %if.end.109, %for.cond.94
  %115 = load i32, i32* %match, align 4
  %cmp114 = icmp eq i32 %115, 0
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %for.end.113
  %116 = load i32, i32* %num_nonzeros, align 4
  %inc116 = add nsw i32 %116, 1
  store i32 %inc116, i32* %num_nonzeros, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %for.end.113
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %117 = load i32, i32* %mb, align 4
  %inc119 = add nsw i32 %117, 1
  store i32 %inc119, i32* %mb, align 4
  br label %for.cond.81

for.end.120:                                      ; preds = %for.cond.81
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %118 = load i32, i32* %i6, align 4
  %inc122 = add nsw i32 %118, 1
  store i32 %inc122, i32* %i6, align 4
  br label %for.cond.72

for.end.123:                                      ; preds = %for.cond.72
  %119 = load i32, i32* %num_rows, align 4
  %120 = load i32, i32* %num_cols3, align 4
  %121 = load i32, i32* %num_nonzeros, align 4
  %call124 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %119, i32 %120, i32 %121)
  store %struct.hypre_CSRMatrix* %call124, %struct.hypre_CSRMatrix** %C, align 8
  %122 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %C, align 8
  %call125 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %122)
  %123 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %C, align 8
  %i126 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %123, i32 0, i32 1
  %124 = load i32*, i32** %i126, align 8
  store i32* %124, i32** %C_i, align 8
  %125 = load i32*, i32** %C_i, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 0, i32* %arrayidx127, align 4
  %126 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %C, align 8
  %j128 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %126, i32 0, i32 2
  %127 = load i32*, i32** %j128, align 8
  store i32* %127, i32** %C_j, align 8
  store i32 0, i32* %mc, align 4
  store i32 0, i32* %i6, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.199, %for.end.123
  %128 = load i32, i32* %i6, align 4
  %129 = load i32, i32* %num_rows, align 4
  %cmp130 = icmp slt i32 %128, %129
  br i1 %cmp130, label %for.body.131, label %for.end.201

for.body.131:                                     ; preds = %for.cond.129
  %130 = load i32, i32* %i6, align 4
  %idxprom132 = sext i32 %130 to i64
  %131 = load i32*, i32** %A_i, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %131, i64 %idxprom132
  %132 = load i32, i32* %arrayidx133, align 4
  store i32 %132, i32* %ma_min, align 4
  %133 = load i32, i32* %i6, align 4
  %add134 = add nsw i32 %133, 1
  %idxprom135 = sext i32 %add134 to i64
  %134 = load i32*, i32** %A_i, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %134, i64 %idxprom135
  %135 = load i32, i32* %arrayidx136, align 4
  store i32 %135, i32* %ma_max, align 4
  %136 = load i32, i32* %ma_min, align 4
  store i32 %136, i32* %ma, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.145, %for.body.131
  %137 = load i32, i32* %ma, align 4
  %138 = load i32, i32* %ma_max, align 4
  %cmp138 = icmp slt i32 %137, %138
  br i1 %cmp138, label %for.body.139, label %for.end.147

for.body.139:                                     ; preds = %for.cond.137
  %139 = load i32, i32* %ma, align 4
  %idxprom140 = sext i32 %139 to i64
  %140 = load i32*, i32** %A_j, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %140, i64 %idxprom140
  %141 = load i32, i32* %arrayidx141, align 4
  %142 = load i32, i32* %mc, align 4
  %idxprom142 = sext i32 %142 to i64
  %143 = load i32*, i32** %C_j, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %143, i64 %idxprom142
  store i32 %141, i32* %arrayidx143, align 4
  %144 = load i32, i32* %mc, align 4
  %inc144 = add nsw i32 %144, 1
  store i32 %inc144, i32* %mc, align 4
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.139
  %145 = load i32, i32* %ma, align 4
  %inc146 = add nsw i32 %145, 1
  store i32 %inc146, i32* %ma, align 4
  br label %for.cond.137

for.end.147:                                      ; preds = %for.cond.137
  %146 = load i32, i32* %i6, align 4
  %idxprom148 = sext i32 %146 to i64
  %147 = load i32*, i32** %B_i, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %147, i64 %idxprom148
  %148 = load i32, i32* %arrayidx149, align 4
  store i32 %148, i32* %mb, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.193, %for.end.147
  %149 = load i32, i32* %mb, align 4
  %150 = load i32, i32* %i6, align 4
  %add151 = add nsw i32 %150, 1
  %idxprom152 = sext i32 %add151 to i64
  %151 = load i32*, i32** %B_i, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %151, i64 %idxprom152
  %152 = load i32, i32* %arrayidx153, align 4
  %cmp154 = icmp slt i32 %149, %152
  br i1 %cmp154, label %for.body.155, label %for.end.195

for.body.155:                                     ; preds = %for.cond.150
  %153 = load i32, i32* %mb, align 4
  %idxprom156 = sext i32 %153 to i64
  %154 = load i32*, i32** %B_j, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %154, i64 %idxprom156
  %155 = load i32, i32* %arrayidx157, align 4
  store i32 %155, i32* %jB, align 4
  %156 = load i32*, i32** %col_map_offd_B.addr, align 8
  %tobool158 = icmp ne i32* %156, null
  br i1 %tobool158, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %for.body.155
  %157 = load i32, i32* %jB, align 4
  %idxprom160 = sext i32 %157 to i64
  %158 = load i32*, i32** %col_map_offd_B.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %158, i64 %idxprom160
  %159 = load i32, i32* %arrayidx161, align 4
  store i32 %159, i32* %jB, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %for.body.155
  store i32 0, i32* %match, align 4
  %160 = load i32, i32* %ma_min, align 4
  store i32 %160, i32* %ma, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.180, %if.end.162
  %161 = load i32, i32* %ma, align 4
  %162 = load i32, i32* %ma_max, align 4
  %cmp164 = icmp slt i32 %161, %162
  br i1 %cmp164, label %for.body.165, label %for.end.182

for.body.165:                                     ; preds = %for.cond.163
  %163 = load i32, i32* %ma, align 4
  %idxprom166 = sext i32 %163 to i64
  %164 = load i32*, i32** %A_j, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %164, i64 %idxprom166
  %165 = load i32, i32* %arrayidx167, align 4
  store i32 %165, i32* %jA, align 4
  %166 = load i32*, i32** %col_map_offd_A.addr, align 8
  %tobool168 = icmp ne i32* %166, null
  br i1 %tobool168, label %if.then.169, label %if.end.172

if.then.169:                                      ; preds = %for.body.165
  %167 = load i32, i32* %jA, align 4
  %idxprom170 = sext i32 %167 to i64
  %168 = load i32*, i32** %col_map_offd_A.addr, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %168, i64 %idxprom170
  %169 = load i32, i32* %arrayidx171, align 4
  store i32 %169, i32* %jA, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.169, %for.body.165
  %170 = load i32, i32* %jB, align 4
  %171 = load i32, i32* %jA, align 4
  %cmp173 = icmp eq i32 %170, %171
  br i1 %cmp173, label %if.then.174, label %if.end.179

if.then.174:                                      ; preds = %if.end.172
  store i32 1, i32* %match, align 4
  %172 = load i32, i32* %ma, align 4
  %173 = load i32, i32* %ma_min, align 4
  %cmp175 = icmp eq i32 %172, %173
  br i1 %cmp175, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %if.then.174
  %174 = load i32, i32* %ma_min, align 4
  %inc177 = add nsw i32 %174, 1
  store i32 %inc177, i32* %ma_min, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %if.then.174
  br label %for.end.182

if.end.179:                                       ; preds = %if.end.172
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %175 = load i32, i32* %ma, align 4
  %inc181 = add nsw i32 %175, 1
  store i32 %inc181, i32* %ma, align 4
  br label %for.cond.163

for.end.182:                                      ; preds = %if.end.178, %for.cond.163
  %176 = load i32, i32* %match, align 4
  %cmp183 = icmp eq i32 %176, 0
  br i1 %cmp183, label %if.then.184, label %if.end.192

if.then.184:                                      ; preds = %for.end.182
  %177 = load i32, i32* %mb, align 4
  %idxprom185 = sext i32 %177 to i64
  %178 = load i32*, i32** %B_j, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %178, i64 %idxprom185
  %179 = load i32, i32* %arrayidx186, align 4
  %idxprom187 = sext i32 %179 to i64
  %180 = load i32*, i32** %jC, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %180, i64 %idxprom187
  %181 = load i32, i32* %arrayidx188, align 4
  %182 = load i32, i32* %mc, align 4
  %idxprom189 = sext i32 %182 to i64
  %183 = load i32*, i32** %C_j, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %183, i64 %idxprom189
  store i32 %181, i32* %arrayidx190, align 4
  %184 = load i32, i32* %mc, align 4
  %inc191 = add nsw i32 %184, 1
  store i32 %inc191, i32* %mc, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.184, %for.end.182
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %185 = load i32, i32* %mb, align 4
  %inc194 = add nsw i32 %185, 1
  store i32 %inc194, i32* %mb, align 4
  br label %for.cond.150

for.end.195:                                      ; preds = %for.cond.150
  %186 = load i32, i32* %mc, align 4
  %187 = load i32, i32* %i6, align 4
  %add196 = add nsw i32 %187, 1
  %idxprom197 = sext i32 %add196 to i64
  %188 = load i32*, i32** %C_i, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %188, i64 %idxprom197
  store i32 %186, i32* %arrayidx198, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.end.195
  %189 = load i32, i32* %i6, align 4
  %inc200 = add nsw i32 %189, 1
  store i32 %inc200, i32* %i6, align 4
  br label %for.cond.129

for.end.201:                                      ; preds = %for.cond.129
  %190 = load i32*, i32** %jC, align 8
  %tobool202 = icmp ne i32* %190, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %for.end.201
  %191 = load i32*, i32** %jC, align 8
  %192 = bitcast i32* %191 to i8*
  call void @hypre_Free(i8* %192)
  store i32* null, i32** %jC, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %for.end.201
  %193 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %C, align 8
  ret %struct.hypre_CSRMatrix* %193
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
