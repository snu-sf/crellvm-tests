; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/4.SMG2000.struct_matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s.%05d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error: can't open output file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"StructMatrix\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0ASymmetric: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0AGrid:\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\0AStencil:\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%d: %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0AData:\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %matrix, i32 %b, i32* %index) #0 {
entry:
  %retval = alloca double*, align 8
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca i32, align 4
  %index.addr = alloca i32*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %rank = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32* %index, i32** %index.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil1, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %3 = load i32*, i32** %index.addr, align 8
  %call = call i32 @hypre_StructStencilElementRank(%struct.hypre_StructStencil_struct* %2, i32* %3)
  store i32 %call, i32* %rank, align 4
  %4 = load i32, i32* %rank, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 6
  %6 = load double*, double** %data, align 8
  %7 = load i32, i32* %rank, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %b.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 9
  %10 = load i32**, i32*** %data_indices, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %10, i64 %idxprom2
  %11 = load i32*, i32** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx3, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds double, double* %6, i64 %idx.ext
  store double* %add.ptr, double** %retval
  br label %return

if.else:                                          ; preds = %entry
  store double* null, double** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load double*, double** %retval
  ret double* %13
}

declare i32 @hypre_StructStencilElementRank(%struct.hypre_StructStencil_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %comm, %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructStencil_struct* %user_stencil) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %user_stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %matrix = alloca %struct.hypre_StructMatrix_struct*, align 8
  %i = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_StructStencil_struct* %user_stencil, %struct.hypre_StructStencil_struct** %user_stencil.addr, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 136)
  %0 = bitcast i8* %call to %struct.hypre_StructMatrix_struct*
  store %struct.hypre_StructMatrix_struct* %0, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %comm1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %grid2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 1
  %call3 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid2)
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %user_stencil.addr, align 8
  %call4 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilRef(%struct.hypre_StructStencil_struct* %5)
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %user_stencil5 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 2
  store %struct.hypre_StructStencil_struct* %call4, %struct.hypre_StructStencil_struct** %user_stencil5, align 8
  %7 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %7, i32 0, i32 7
  store i32 1, i32* %data_alloced, align 4
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %8, i32 0, i32 15
  store i32 1, i32* %ref_count, align 4
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 10
  store i32 0, i32* %symmetric, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %12, i32 0, i32 12
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  ret %struct.hypre_StructMatrix_struct* %14
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #1

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilRef(%struct.hypre_StructStencil_struct*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 15
  %1 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %ref_count, align 4
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  ret %struct.hypre_StructMatrix_struct* %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %tobool = icmp ne %struct.hypre_StructMatrix_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 15
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %ref_count1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3, i32 0, i32 15
  %4 = load i32, i32* %ref_count1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 7
  %6 = load i32, i32* %data_alloced, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %7 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %7, i32 0, i32 6
  %8 = load double*, double** %data, align 8
  %9 = bitcast double* %8 to i8*
  call void @hypre_Free(i8* %9)
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data5 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %10, i32 0, i32 6
  store double* null, double** %data5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %11 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm_pkg = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %11, i32 0, i32 14
  %12 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %call = call i32 @hypre_CommPkgDestroy(%struct.hypre_CommPkg_struct* %12)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %14, i32 0, i32 5
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 1
  %16 = load i32, i32* %size, align 4
  %cmp6 = icmp slt i32 %13, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %18, i32 0, i32 9
  %19 = load i32**, i32*** %data_indices, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %19, i64 %idxprom
  %20 = load i32*, i32** %arrayidx, align 8
  %21 = bitcast i32* %20 to i8*
  call void @hypre_Free(i8* %21)
  %22 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices8 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %23, i32 0, i32 9
  %24 = load i32**, i32*** %data_indices8, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %24, i64 %idxprom7
  store i32* null, i32** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices10 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %26, i32 0, i32 9
  %27 = load i32**, i32*** %data_indices10, align 8
  %28 = bitcast i32** %27 to i8*
  call void @hypre_Free(i8* %28)
  %29 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices11 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %29, i32 0, i32 9
  store i32** null, i32*** %data_indices11, align 8
  %30 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space12 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %30, i32 0, i32 5
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space12, align 8
  %call13 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %31)
  %32 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %32, i32 0, i32 11
  %33 = load i32*, i32** %symm_elements, align 8
  %34 = bitcast i32* %33 to i8*
  call void @hypre_Free(i8* %34)
  %35 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements14 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %35, i32 0, i32 11
  store i32* null, i32** %symm_elements14, align 8
  %36 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %user_stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %36, i32 0, i32 2
  %37 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %user_stencil, align 8
  %call15 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %37)
  %38 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %38, i32 0, i32 3
  %39 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call16 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %39)
  %40 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %40, i32 0, i32 1
  %41 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call17 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %41)
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %43 = bitcast %struct.hypre_StructMatrix_struct* %42 to i8*
  call void @hypre_Free(i8* %43)
  store %struct.hypre_StructMatrix_struct* null, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %44 = load i32, i32* %ierr, align 4
  ret i32 %44
}

declare void @hypre_Free(i8*) #1

declare i32 @hypre_CommPkgDestroy(%struct.hypre_CommPkg_struct*) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #1

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %ierr = alloca i32, align 4
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %user_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %num_values = alloca i32, align 4
  %symm_elements = alloca i32*, align 8
  %num_ghost = alloca i32*, align 8
  %extra_ghost = alloca [6 x i32], align 16
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_indices = alloca i32**, align 8
  %data_size = alloca i32, align 4
  %data_box_volume = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = bitcast [6 x i32]* %extra_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %2, %struct.hypre_StructGrid_struct** %grid, align 8
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3, i32 0, i32 3
  %4 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil2, align 8
  %cmp = icmp eq %struct.hypre_StructStencil_struct* %4, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %user_stencil3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 2
  %6 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %user_stencil3, align 8
  store %struct.hypre_StructStencil_struct* %6, %struct.hypre_StructStencil_struct** %user_stencil, align 8
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %user_stencil, align 8
  %call = call i32 @hypre_StructStencilSymmetrize(%struct.hypre_StructStencil_struct* %7, %struct.hypre_StructStencil_struct** %stencil, i32** %symm_elements)
  %8 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %8, i32 0, i32 0
  %9 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %9, [3 x i32]** %stencil_shape, align 8
  %10 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 4
  store i32 %11, i32* %stencil_size, align 4
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %12, i32 0, i32 10
  %13 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %stencil_size, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %symm_elements, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %stencil_size, align 4
  store i32 %19, i32* %num_values, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %stencil_size, align 4
  %add = add nsw i32 %20, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %num_values, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %21 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %22, i32 0, i32 3
  store %struct.hypre_StructStencil_struct* %21, %struct.hypre_StructStencil_struct** %stencil6, align 8
  %23 = load i32*, i32** %symm_elements, align 8
  %24 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements7 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %24, i32 0, i32 11
  store i32* %23, i32** %symm_elements7, align 8
  %25 = load i32, i32* %num_values, align 4
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_values8 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %26, i32 0, i32 4
  store i32 %25, i32* %num_values8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %27 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_ghost10 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %27, i32 0, i32 12
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost10, i32 0, i32 0
  store i32* %arraydecay, i32** %num_ghost, align 8
  %28 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil11 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %28, i32 0, i32 3
  %29 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil11, align 8
  store %struct.hypre_StructStencil_struct* %29, %struct.hypre_StructStencil_struct** %stencil, align 8
  %30 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape12 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %30, i32 0, i32 0
  %31 = load [3 x i32]*, [3 x i32]** %shape12, align 8
  store [3 x i32]* %31, [3 x i32]** %stencil_shape, align 8
  %32 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size13 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %32, i32 0, i32 1
  %33 = load i32, i32* %size13, align 4
  store i32 %33, i32* %stencil_size, align 4
  %34 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements14 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %34, i32 0, i32 11
  %35 = load i32*, i32** %symm_elements14, align 8
  store i32* %35, i32** %symm_elements, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.72, %if.end.9
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %stencil_size, align 4
  %cmp16 = icmp slt i32 %36, %37
  br i1 %cmp16, label %for.body.17, label %for.end.74

for.body.17:                                      ; preds = %for.cond.15
  %38 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %38 to i64
  %39 = load i32*, i32** %symm_elements, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %39, i64 %idxprom18
  %40 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp sge i32 %40, 0
  br i1 %cmp20, label %if.then.21, label %if.end.71

if.then.21:                                       ; preds = %for.body.17
  store i32 0, i32* %d, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.68, %if.then.21
  %41 = load i32, i32* %d, align 4
  %cmp23 = icmp slt i32 %41, 3
  br i1 %cmp23, label %for.body.24, label %for.end.70

for.body.24:                                      ; preds = %for.cond.22
  %42 = load i32, i32* %d, align 4
  %mul = mul nsw i32 2, %42
  %idxprom25 = sext i32 %mul to i64
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom25
  %43 = load i32, i32* %arrayidx26, align 4
  %44 = load i32, i32* %d, align 4
  %idxprom27 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %45 to i64
  %46 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %46, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx29, i32 0, i64 %idxprom27
  %47 = load i32, i32* %arrayidx30, align 4
  %sub = sub nsw i32 0, %47
  %cmp31 = icmp slt i32 %43, %sub
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.24
  %48 = load i32, i32* %d, align 4
  %idxprom32 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %49 to i64
  %50 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %50, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx34, i32 0, i64 %idxprom32
  %51 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 0, %51
  br label %cond.end

cond.false:                                       ; preds = %for.body.24
  %52 = load i32, i32* %d, align 4
  %mul37 = mul nsw i32 2, %52
  %idxprom38 = sext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom38
  %53 = load i32, i32* %arrayidx39, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub36, %cond.true ], [ %53, %cond.false ]
  %54 = load i32, i32* %d, align 4
  %mul40 = mul nsw i32 2, %54
  %idxprom41 = sext i32 %mul40 to i64
  %arrayidx42 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom41
  store i32 %cond, i32* %arrayidx42, align 4
  %55 = load i32, i32* %d, align 4
  %mul43 = mul nsw i32 2, %55
  %add44 = add nsw i32 %mul43, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom45
  %56 = load i32, i32* %arrayidx46, align 4
  %57 = load i32, i32* %d, align 4
  %idxprom47 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx49, i32 0, i64 %idxprom47
  %60 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp slt i32 %56, %60
  br i1 %cmp51, label %cond.true.52, label %cond.false.57

cond.true.52:                                     ; preds = %cond.end
  %61 = load i32, i32* %d, align 4
  %idxprom53 = sext i32 %61 to i64
  %62 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %62 to i64
  %63 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %63, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx55, i32 0, i64 %idxprom53
  %64 = load i32, i32* %arrayidx56, align 4
  br label %cond.end.62

cond.false.57:                                    ; preds = %cond.end
  %65 = load i32, i32* %d, align 4
  %mul58 = mul nsw i32 2, %65
  %add59 = add nsw i32 %mul58, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom60
  %66 = load i32, i32* %arrayidx61, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.57, %cond.true.52
  %cond63 = phi i32 [ %64, %cond.true.52 ], [ %66, %cond.false.57 ]
  %67 = load i32, i32* %d, align 4
  %mul64 = mul nsw i32 2, %67
  %add65 = add nsw i32 %mul64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom66
  store i32 %cond63, i32* %arrayidx67, align 4
  br label %for.inc.68

for.inc.68:                                       ; preds = %cond.end.62
  %68 = load i32, i32* %d, align 4
  %inc69 = add nsw i32 %68, 1
  store i32 %inc69, i32* %d, align 4
  br label %for.cond.22

for.end.70:                                       ; preds = %for.cond.22
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %for.body.17
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %69 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %69, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.15

for.end.74:                                       ; preds = %for.cond.15
  store i32 0, i32* %d, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.94, %for.end.74
  %70 = load i32, i32* %d, align 4
  %cmp76 = icmp slt i32 %70, 3
  br i1 %cmp76, label %for.body.77, label %for.end.96

for.body.77:                                      ; preds = %for.cond.75
  %71 = load i32, i32* %d, align 4
  %mul78 = mul nsw i32 2, %71
  %idxprom79 = sext i32 %mul78 to i64
  %arrayidx80 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom79
  %72 = load i32, i32* %arrayidx80, align 4
  %73 = load i32, i32* %d, align 4
  %mul81 = mul nsw i32 2, %73
  %idxprom82 = sext i32 %mul81 to i64
  %74 = load i32*, i32** %num_ghost, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %74, i64 %idxprom82
  %75 = load i32, i32* %arrayidx83, align 4
  %add84 = add nsw i32 %75, %72
  store i32 %add84, i32* %arrayidx83, align 4
  %76 = load i32, i32* %d, align 4
  %mul85 = mul nsw i32 2, %76
  %add86 = add nsw i32 %mul85, 1
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [6 x i32], [6 x i32]* %extra_ghost, i32 0, i64 %idxprom87
  %77 = load i32, i32* %arrayidx88, align 4
  %78 = load i32, i32* %d, align 4
  %mul89 = mul nsw i32 2, %78
  %add90 = add nsw i32 %mul89, 1
  %idxprom91 = sext i32 %add90 to i64
  %79 = load i32*, i32** %num_ghost, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %79, i64 %idxprom91
  %80 = load i32, i32* %arrayidx92, align 4
  %add93 = add nsw i32 %80, %77
  store i32 %add93, i32* %arrayidx92, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.77
  %81 = load i32, i32* %d, align 4
  %inc95 = add nsw i32 %81, 1
  store i32 %inc95, i32* %d, align 4
  br label %for.cond.75

for.end.96:                                       ; preds = %for.cond.75
  %82 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space97 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %82, i32 0, i32 5
  %83 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space97, align 8
  %cmp98 = icmp eq %struct.hypre_BoxArray_struct* %83, null
  br i1 %cmp98, label %if.then.99, label %if.end.160

if.then.99:                                       ; preds = %for.end.96
  %84 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes100 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %84, i32 0, i32 2
  %85 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes100, align 8
  store %struct.hypre_BoxArray_struct* %85, %struct.hypre_BoxArray_struct** %boxes, align 8
  %86 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size101 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %86, i32 0, i32 1
  %87 = load i32, i32* %size101, align 4
  %call102 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %87)
  store %struct.hypre_BoxArray_struct* %call102, %struct.hypre_BoxArray_struct** %data_space, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.156, %if.then.99
  %88 = load i32, i32* %i, align 4
  %89 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size104 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %89, i32 0, i32 1
  %90 = load i32, i32* %size104, align 4
  %cmp105 = icmp slt i32 %88, %90
  br i1 %cmp105, label %for.body.106, label %for.end.158

for.body.106:                                     ; preds = %for.cond.103
  %91 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %91 to i64
  %92 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes108 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %92, i32 0, i32 0
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes108, align 8
  %arrayidx109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i64 %idxprom107
  store %struct.hypre_Box_struct* %arrayidx109, %struct.hypre_Box_struct** %box, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %94 to i64
  %95 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes111 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %95, i32 0, i32 0
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes111, align 8
  %arrayidx112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i64 %idxprom110
  store %struct.hypre_Box_struct* %arrayidx112, %struct.hypre_Box_struct** %data_box, align 8
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %98 = load i32, i32* %arrayidx113, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imin114, i32 0, i64 0
  store i32 %98, i32* %arrayidx115, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imin116, i32 0, i64 1
  %101 = load i32, i32* %arrayidx117, align 4
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin118 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %imin118, i32 0, i64 1
  store i32 %101, i32* %arrayidx119, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin120 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %imin120, i32 0, i64 2
  %104 = load i32, i32* %arrayidx121, align 4
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imin122, i32 0, i64 2
  store i32 %104, i32* %arrayidx123, align 4
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %107 = load i32, i32* %arrayidx124, align 4
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax125, i32 0, i64 0
  store i32 %107, i32* %arrayidx126, align 4
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imax127, i32 0, i64 1
  %110 = load i32, i32* %arrayidx128, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imax129, i32 0, i64 1
  store i32 %110, i32* %arrayidx130, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imax131, i32 0, i64 2
  %113 = load i32, i32* %arrayidx132, align 4
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imax133, i32 0, i64 2
  store i32 %113, i32* %arrayidx134, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.153, %for.body.106
  %115 = load i32, i32* %d, align 4
  %cmp136 = icmp slt i32 %115, 3
  br i1 %cmp136, label %for.body.137, label %for.end.155

for.body.137:                                     ; preds = %for.cond.135
  %116 = load i32, i32* %d, align 4
  %mul138 = mul nsw i32 2, %116
  %idxprom139 = sext i32 %mul138 to i64
  %117 = load i32*, i32** %num_ghost, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %117, i64 %idxprom139
  %118 = load i32, i32* %arrayidx140, align 4
  %119 = load i32, i32* %d, align 4
  %idxprom141 = sext i32 %119 to i64
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 %idxprom141
  %121 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %121, %118
  store i32 %sub144, i32* %arrayidx143, align 4
  %122 = load i32, i32* %d, align 4
  %mul145 = mul nsw i32 2, %122
  %add146 = add nsw i32 %mul145, 1
  %idxprom147 = sext i32 %add146 to i64
  %123 = load i32*, i32** %num_ghost, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %123, i64 %idxprom147
  %124 = load i32, i32* %arrayidx148, align 4
  %125 = load i32, i32* %d, align 4
  %idxprom149 = sext i32 %125 to i64
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 %idxprom149
  %127 = load i32, i32* %arrayidx151, align 4
  %add152 = add nsw i32 %127, %124
  store i32 %add152, i32* %arrayidx151, align 4
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.137
  %128 = load i32, i32* %d, align 4
  %inc154 = add nsw i32 %128, 1
  store i32 %inc154, i32* %d, align 4
  br label %for.cond.135

for.end.155:                                      ; preds = %for.cond.135
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.end.155
  %129 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %129, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.103

for.end.158:                                      ; preds = %for.cond.103
  %130 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %131 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space159 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %131, i32 0, i32 5
  store %struct.hypre_BoxArray_struct* %130, %struct.hypre_BoxArray_struct** %data_space159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.158, %for.end.96
  %132 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices161 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %132, i32 0, i32 9
  %133 = load i32**, i32*** %data_indices161, align 8
  %cmp162 = icmp eq i32** %133, null
  br i1 %cmp162, label %if.then.163, label %if.end.320

if.then.163:                                      ; preds = %if.end.160
  %134 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space164 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %134, i32 0, i32 5
  %135 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space164, align 8
  store %struct.hypre_BoxArray_struct* %135, %struct.hypre_BoxArray_struct** %data_space, align 8
  %136 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size165 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %136, i32 0, i32 1
  %137 = load i32, i32* %size165, align 4
  %call166 = call i8* @hypre_CAlloc(i32 %137, i32 8)
  %138 = bitcast i8* %call166 to i32**
  store i32** %138, i32*** %data_indices, align 8
  store i32 0, i32* %data_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.315, %if.then.163
  %139 = load i32, i32* %i, align 4
  %140 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size168 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %140, i32 0, i32 1
  %141 = load i32, i32* %size168, align 4
  %cmp169 = icmp slt i32 %139, %141
  br i1 %cmp169, label %for.body.170, label %for.end.317

for.body.170:                                     ; preds = %for.cond.167
  %142 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %142 to i64
  %143 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes172 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %143, i32 0, i32 0
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes172, align 8
  %arrayidx173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i64 %idxprom171
  store %struct.hypre_Box_struct* %arrayidx173, %struct.hypre_Box_struct** %data_box, align 8
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %imax174, i32 0, i64 0
  %146 = load i32, i32* %arrayidx175, align 4
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %imin176, i32 0, i64 0
  %148 = load i32, i32* %arrayidx177, align 4
  %sub178 = sub nsw i32 %146, %148
  %add179 = add nsw i32 %sub178, 1
  %cmp180 = icmp slt i32 0, %add179
  br i1 %cmp180, label %cond.true.181, label %cond.false.188

cond.true.181:                                    ; preds = %for.body.170
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imax182, i32 0, i64 0
  %150 = load i32, i32* %arrayidx183, align 4
  %151 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin184 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %151, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [3 x i32], [3 x i32]* %imin184, i32 0, i64 0
  %152 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %150, %152
  %add187 = add nsw i32 %sub186, 1
  br label %cond.end.189

cond.false.188:                                   ; preds = %for.body.170
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.188, %cond.true.181
  %cond190 = phi i32 [ %add187, %cond.true.181 ], [ 0, %cond.false.188 ]
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %imax191, i32 0, i64 1
  %154 = load i32, i32* %arrayidx192, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imin193, i32 0, i64 1
  %156 = load i32, i32* %arrayidx194, align 4
  %sub195 = sub nsw i32 %154, %156
  %add196 = add nsw i32 %sub195, 1
  %cmp197 = icmp slt i32 0, %add196
  br i1 %cmp197, label %cond.true.198, label %cond.false.205

cond.true.198:                                    ; preds = %cond.end.189
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 1
  %158 = load i32, i32* %arrayidx200, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 1
  %160 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %158, %160
  %add204 = add nsw i32 %sub203, 1
  br label %cond.end.206

cond.false.205:                                   ; preds = %cond.end.189
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.198
  %cond207 = phi i32 [ %add204, %cond.true.198 ], [ 0, %cond.false.205 ]
  %mul208 = mul nsw i32 %cond190, %cond207
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imax209, i32 0, i64 2
  %162 = load i32, i32* %arrayidx210, align 4
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imin211, i32 0, i64 2
  %164 = load i32, i32* %arrayidx212, align 4
  %sub213 = sub nsw i32 %162, %164
  %add214 = add nsw i32 %sub213, 1
  %cmp215 = icmp slt i32 0, %add214
  br i1 %cmp215, label %cond.true.216, label %cond.false.223

cond.true.216:                                    ; preds = %cond.end.206
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax217 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %imax217, i32 0, i64 2
  %166 = load i32, i32* %arrayidx218, align 4
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imin219, i32 0, i64 2
  %168 = load i32, i32* %arrayidx220, align 4
  %sub221 = sub nsw i32 %166, %168
  %add222 = add nsw i32 %sub221, 1
  br label %cond.end.224

cond.false.223:                                   ; preds = %cond.end.206
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.216
  %cond225 = phi i32 [ %add222, %cond.true.216 ], [ 0, %cond.false.223 ]
  %mul226 = mul nsw i32 %mul208, %cond225
  store i32 %mul226, i32* %data_box_volume, align 4
  %169 = load i32, i32* %stencil_size, align 4
  %call227 = call i8* @hypre_CAlloc(i32 %169, i32 4)
  %170 = bitcast i8* %call227 to i32*
  %171 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %171 to i64
  %172 = load i32**, i32*** %data_indices, align 8
  %arrayidx229 = getelementptr inbounds i32*, i32** %172, i64 %idxprom228
  store i32* %170, i32** %arrayidx229, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.243, %cond.end.224
  %173 = load i32, i32* %j, align 4
  %174 = load i32, i32* %stencil_size, align 4
  %cmp231 = icmp slt i32 %173, %174
  br i1 %cmp231, label %for.body.232, label %for.end.245

for.body.232:                                     ; preds = %for.cond.230
  %175 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %175 to i64
  %176 = load i32*, i32** %symm_elements, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %176, i64 %idxprom233
  %177 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp slt i32 %177, 0
  br i1 %cmp235, label %if.then.236, label %if.end.242

if.then.236:                                      ; preds = %for.body.232
  %178 = load i32, i32* %data_size, align 4
  %179 = load i32, i32* %j, align 4
  %idxprom237 = sext i32 %179 to i64
  %180 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %180 to i64
  %181 = load i32**, i32*** %data_indices, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %181, i64 %idxprom238
  %182 = load i32*, i32** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %182, i64 %idxprom237
  store i32 %178, i32* %arrayidx240, align 4
  %183 = load i32, i32* %data_box_volume, align 4
  %184 = load i32, i32* %data_size, align 4
  %add241 = add nsw i32 %184, %183
  store i32 %add241, i32* %data_size, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.236, %for.body.232
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %185 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %185, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.230

for.end.245:                                      ; preds = %for.cond.230
  store i32 0, i32* %j, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.312, %for.end.245
  %186 = load i32, i32* %j, align 4
  %187 = load i32, i32* %stencil_size, align 4
  %cmp247 = icmp slt i32 %186, %187
  br i1 %cmp247, label %for.body.248, label %for.end.314

for.body.248:                                     ; preds = %for.cond.246
  %188 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %188 to i64
  %189 = load i32*, i32** %symm_elements, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %189, i64 %idxprom249
  %190 = load i32, i32* %arrayidx250, align 4
  %cmp251 = icmp sge i32 %190, 0
  br i1 %cmp251, label %if.then.252, label %if.end.311

if.then.252:                                      ; preds = %for.body.248
  %191 = load i32, i32* %j, align 4
  %idxprom253 = sext i32 %191 to i64
  %192 = load i32*, i32** %symm_elements, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %192, i64 %idxprom253
  %193 = load i32, i32* %arrayidx254, align 4
  %idxprom255 = sext i32 %193 to i64
  %194 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %194 to i64
  %195 = load i32**, i32*** %data_indices, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %195, i64 %idxprom256
  %196 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %196, i64 %idxprom255
  %197 = load i32, i32* %arrayidx258, align 4
  %198 = load i32, i32* %j, align 4
  %idxprom259 = sext i32 %198 to i64
  %199 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %199, i64 %idxprom259
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx260, i32 0, i64 0
  %200 = load i32, i32* %arrayidx261, align 4
  %201 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %201 to i64
  %202 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %202, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx263, i32 0, i64 1
  %203 = load i32, i32* %arrayidx264, align 4
  %204 = load i32, i32* %j, align 4
  %idxprom265 = sext i32 %204 to i64
  %205 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %205, i64 %idxprom265
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx266, i32 0, i64 2
  %206 = load i32, i32* %arrayidx267, align 4
  %207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %207, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %imax268, i32 0, i64 1
  %208 = load i32, i32* %arrayidx269, align 4
  %209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin270 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %209, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [3 x i32], [3 x i32]* %imin270, i32 0, i64 1
  %210 = load i32, i32* %arrayidx271, align 4
  %sub272 = sub nsw i32 %208, %210
  %add273 = add nsw i32 %sub272, 1
  %cmp274 = icmp slt i32 0, %add273
  br i1 %cmp274, label %cond.true.275, label %cond.false.282

cond.true.275:                                    ; preds = %if.then.252
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax276 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [3 x i32], [3 x i32]* %imax276, i32 0, i64 1
  %212 = load i32, i32* %arrayidx277, align 4
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %213, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [3 x i32], [3 x i32]* %imin278, i32 0, i64 1
  %214 = load i32, i32* %arrayidx279, align 4
  %sub280 = sub nsw i32 %212, %214
  %add281 = add nsw i32 %sub280, 1
  br label %cond.end.283

cond.false.282:                                   ; preds = %if.then.252
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.282, %cond.true.275
  %cond284 = phi i32 [ %add281, %cond.true.275 ], [ 0, %cond.false.282 ]
  %mul285 = mul nsw i32 %206, %cond284
  %add286 = add nsw i32 %203, %mul285
  %215 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %215, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imax287, i32 0, i64 0
  %216 = load i32, i32* %arrayidx288, align 4
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imin289, i32 0, i64 0
  %218 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %216, %218
  %add292 = add nsw i32 %sub291, 1
  %cmp293 = icmp slt i32 0, %add292
  br i1 %cmp293, label %cond.true.294, label %cond.false.301

cond.true.294:                                    ; preds = %cond.end.283
  %219 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax295 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %219, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [3 x i32], [3 x i32]* %imax295, i32 0, i64 0
  %220 = load i32, i32* %arrayidx296, align 4
  %221 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %221, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %imin297, i32 0, i64 0
  %222 = load i32, i32* %arrayidx298, align 4
  %sub299 = sub nsw i32 %220, %222
  %add300 = add nsw i32 %sub299, 1
  br label %cond.end.302

cond.false.301:                                   ; preds = %cond.end.283
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.301, %cond.true.294
  %cond303 = phi i32 [ %add300, %cond.true.294 ], [ 0, %cond.false.301 ]
  %mul304 = mul nsw i32 %add286, %cond303
  %add305 = add nsw i32 %200, %mul304
  %add306 = add nsw i32 %197, %add305
  %223 = load i32, i32* %j, align 4
  %idxprom307 = sext i32 %223 to i64
  %224 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %224 to i64
  %225 = load i32**, i32*** %data_indices, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %225, i64 %idxprom308
  %226 = load i32*, i32** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %226, i64 %idxprom307
  store i32 %add306, i32* %arrayidx310, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %cond.end.302, %for.body.248
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.311
  %227 = load i32, i32* %j, align 4
  %inc313 = add nsw i32 %227, 1
  store i32 %inc313, i32* %j, align 4
  br label %for.cond.246

for.end.314:                                      ; preds = %for.cond.246
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.end.314
  %228 = load i32, i32* %i, align 4
  %inc316 = add nsw i32 %228, 1
  store i32 %inc316, i32* %i, align 4
  br label %for.cond.167

for.end.317:                                      ; preds = %for.cond.167
  %229 = load i32**, i32*** %data_indices, align 8
  %230 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices318 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %230, i32 0, i32 9
  store i32** %229, i32*** %data_indices318, align 8
  %231 = load i32, i32* %data_size, align 4
  %232 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_size319 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %232, i32 0, i32 8
  store i32 %231, i32* %data_size319, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %for.end.317, %if.end.160
  %233 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %233, i32 0, i32 8
  %234 = load i32, i32* %global_size, align 4
  %235 = load i32, i32* %stencil_size, align 4
  %mul321 = mul nsw i32 %234, %235
  %236 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %global_size322 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %236, i32 0, i32 13
  store i32 %mul321, i32* %global_size322, align 4
  %237 = load i32, i32* %ierr, align 4
  ret i32 %237
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @hypre_StructStencilSymmetrize(%struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct**, i32**) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct* %matrix, double* %data) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %data.addr = alloca double*, align 8
  %ierr = alloca i32, align 4
  %data_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %index = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stride = alloca [3 x i32], align 4
  %datap = alloca double*, align 8
  %datai = alloca i32, align 4
  %i = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__nx = alloca i32, align 4
  %hypre__ny = alloca i32, align 4
  %hypre__nz = alloca i32, align 4
  %hypre__mx = alloca i32, align 4
  %hypre__my = alloca i32, align 4
  %hypre__mz = alloca i32, align 4
  %hypre__dir = alloca i32, align 4
  %hypre__max = alloca i32, align 4
  %hypre__div = alloca i32, align 4
  %hypre__mod = alloca i32, align 4
  %hypre__block = alloca i32, align 4
  %hypre__num_blocks = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load double*, double** %data.addr, align 8
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 6
  store double* %0, double** %data1, align 8
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 7
  store i32 0, i32* %data_alloced, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx6, align 4
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3, i32 0, i32 5
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  store %struct.hypre_BoxArray_struct* %4, %struct.hypre_BoxArray_struct** %data_boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.204, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.206

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %9 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %8, i32 %9, i32* %arraydecay)
  store double* %call, double** %datap, align 8
  %10 = load double*, double** %datap, align 8
  %tobool = icmp ne double* %10, null
  br i1 %tobool, label %if.then, label %if.end.203

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_boxes, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx7 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx7, %struct.hypre_Box_struct** %data_box, align 8
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay8, i32** %start, align 8
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %arraydecay9 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call10 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %15, i32* %arraydecay9)
  %16 = load i32*, i32** %start, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imin12, i32 0, i64 0
  %19 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %17, %19
  %20 = load i32*, i32** %start, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx14, align 4
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %imin15, i32 0, i64 1
  %23 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %21, %23
  %24 = load i32*, i32** %start, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 2
  %25 = load i32, i32* %arrayidx18, align 4
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 2
  %27 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %25, %27
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %29 = load i32, i32* %arrayidx22, align 4
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 1
  %31 = load i32, i32* %arrayidx24, align 4
  %sub25 = sub nsw i32 %29, %31
  %add = add nsw i32 %sub25, 1
  %cmp26 = icmp slt i32 0, %add
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imax27, i32 0, i64 1
  %33 = load i32, i32* %arrayidx28, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 1
  %35 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %33, %35
  %add32 = add nsw i32 %sub31, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add32, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub21, %cond
  %add33 = add nsw i32 %sub17, %mul
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 0
  %37 = load i32, i32* %arrayidx35, align 4
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imin36, i32 0, i64 0
  %39 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %37, %39
  %add39 = add nsw i32 %sub38, 1
  %cmp40 = icmp slt i32 0, %add39
  br i1 %cmp40, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %cond.end
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imax42, i32 0, i64 0
  %41 = load i32, i32* %arrayidx43, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imin44, i32 0, i64 0
  %43 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %41, %43
  %add47 = add nsw i32 %sub46, 1
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.41
  %cond50 = phi i32 [ %add47, %cond.true.41 ], [ 0, %cond.false.48 ]
  %mul51 = mul nsw i32 %add33, %cond50
  %add52 = add nsw i32 %sub, %mul51
  store i32 %add52, i32* %hypre__i1start, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %44 = load i32, i32* %arrayidx53, align 4
  store i32 %44, i32* %hypre__sx1, align 4
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %45 = load i32, i32* %arrayidx54, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imax55, i32 0, i64 0
  %47 = load i32, i32* %arrayidx56, align 4
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imin57, i32 0, i64 0
  %49 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 %47, %49
  %add60 = add nsw i32 %sub59, 1
  %cmp61 = icmp slt i32 0, %add60
  br i1 %cmp61, label %cond.true.62, label %cond.false.69

cond.true.62:                                     ; preds = %cond.end.49
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imax63, i32 0, i64 0
  %51 = load i32, i32* %arrayidx64, align 4
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imin65, i32 0, i64 0
  %53 = load i32, i32* %arrayidx66, align 4
  %sub67 = sub nsw i32 %51, %53
  %add68 = add nsw i32 %sub67, 1
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.49
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.62
  %cond71 = phi i32 [ %add68, %cond.true.62 ], [ 0, %cond.false.69 ]
  %mul72 = mul nsw i32 %45, %cond71
  store i32 %mul72, i32* %hypre__sy1, align 4
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %54 = load i32, i32* %arrayidx73, align 4
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i64 0
  %56 = load i32, i32* %arrayidx75, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 0
  %58 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %56, %58
  %add79 = add nsw i32 %sub78, 1
  %cmp80 = icmp slt i32 0, %add79
  br i1 %cmp80, label %cond.true.81, label %cond.false.88

cond.true.81:                                     ; preds = %cond.end.70
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imax82, i32 0, i64 0
  %60 = load i32, i32* %arrayidx83, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imin84, i32 0, i64 0
  %62 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %60, %62
  %add87 = add nsw i32 %sub86, 1
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.70
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.81
  %cond90 = phi i32 [ %add87, %cond.true.81 ], [ 0, %cond.false.88 ]
  %mul91 = mul nsw i32 %54, %cond90
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 1
  %64 = load i32, i32* %arrayidx93, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imin94, i32 0, i64 1
  %66 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %64, %66
  %add97 = add nsw i32 %sub96, 1
  %cmp98 = icmp slt i32 0, %add97
  br i1 %cmp98, label %cond.true.99, label %cond.false.106

cond.true.99:                                     ; preds = %cond.end.89
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imax100, i32 0, i64 1
  %68 = load i32, i32* %arrayidx101, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 1
  %70 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %68, %70
  %add105 = add nsw i32 %sub104, 1
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.89
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.99
  %cond108 = phi i32 [ %add105, %cond.true.99 ], [ 0, %cond.false.106 ]
  %mul109 = mul nsw i32 %mul91, %cond108
  store i32 %mul109, i32* %hypre__sz1, align 4
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %71 = load i32, i32* %arrayidx110, align 4
  store i32 %71, i32* %hypre__nx, align 4
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %72 = load i32, i32* %arrayidx111, align 4
  store i32 %72, i32* %hypre__ny, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %73 = load i32, i32* %arrayidx112, align 4
  store i32 %73, i32* %hypre__nz, align 4
  %74 = load i32, i32* %hypre__nx, align 4
  store i32 %74, i32* %hypre__mx, align 4
  %75 = load i32, i32* %hypre__ny, align 4
  store i32 %75, i32* %hypre__my, align 4
  %76 = load i32, i32* %hypre__nz, align 4
  store i32 %76, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %77 = load i32, i32* %hypre__nx, align 4
  store i32 %77, i32* %hypre__max, align 4
  %78 = load i32, i32* %hypre__ny, align 4
  %79 = load i32, i32* %hypre__max, align 4
  %cmp113 = icmp sgt i32 %78, %79
  br i1 %cmp113, label %if.then.114, label %if.end

if.then.114:                                      ; preds = %cond.end.107
  store i32 1, i32* %hypre__dir, align 4
  %80 = load i32, i32* %hypre__ny, align 4
  store i32 %80, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.114, %cond.end.107
  %81 = load i32, i32* %hypre__nz, align 4
  %82 = load i32, i32* %hypre__max, align 4
  %cmp115 = icmp sgt i32 %81, %82
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %83 = load i32, i32* %hypre__nz, align 4
  store i32 %83, i32* %hypre__max, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %84 = load i32, i32* %hypre__max, align 4
  %85 = load i32, i32* %hypre__num_blocks, align 4
  %cmp118 = icmp slt i32 %84, %85
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  %86 = load i32, i32* %hypre__max, align 4
  store i32 %86, i32* %hypre__num_blocks, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  %87 = load i32, i32* %hypre__num_blocks, align 4
  %cmp121 = icmp sgt i32 %87, 0
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  %88 = load i32, i32* %hypre__max, align 4
  %89 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %88, %89
  store i32 %div, i32* %hypre__div, align 4
  %90 = load i32, i32* %hypre__max, align 4
  %91 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %90, %91
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.200, %if.end.123
  %92 = load i32, i32* %hypre__block, align 4
  %93 = load i32, i32* %hypre__num_blocks, align 4
  %cmp125 = icmp slt i32 %92, %93
  br i1 %cmp125, label %for.body.126, label %for.end.202

for.body.126:                                     ; preds = %for.cond.124
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %94 = load i32, i32* %hypre__mx, align 4
  store i32 %94, i32* %hypre__nx, align 4
  %95 = load i32, i32* %hypre__my, align 4
  store i32 %95, i32* %hypre__ny, align 4
  %96 = load i32, i32* %hypre__mz, align 4
  store i32 %96, i32* %hypre__nz, align 4
  %97 = load i32, i32* %hypre__num_blocks, align 4
  %cmp127 = icmp sgt i32 %97, 1
  br i1 %cmp127, label %if.then.128, label %if.end.169

if.then.128:                                      ; preds = %for.body.126
  %98 = load i32, i32* %hypre__dir, align 4
  %cmp129 = icmp eq i32 %98, 0
  br i1 %cmp129, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.then.128
  %99 = load i32, i32* %hypre__block, align 4
  %100 = load i32, i32* %hypre__div, align 4
  %mul131 = mul nsw i32 %99, %100
  %101 = load i32, i32* %hypre__mod, align 4
  %102 = load i32, i32* %hypre__block, align 4
  %cmp132 = icmp slt i32 %101, %102
  br i1 %cmp132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.130
  %103 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.then.130
  %104 = load i32, i32* %hypre__block, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %103, %cond.true.133 ], [ %104, %cond.false.134 ]
  %add137 = add nsw i32 %mul131, %cond136
  store i32 %add137, i32* %loopi, align 4
  %105 = load i32, i32* %hypre__div, align 4
  %106 = load i32, i32* %hypre__mod, align 4
  %107 = load i32, i32* %hypre__block, align 4
  %cmp138 = icmp sgt i32 %106, %107
  %cond139 = select i1 %cmp138, i32 1, i32 0
  %add140 = add nsw i32 %105, %cond139
  store i32 %add140, i32* %hypre__nx, align 4
  br label %if.end.168

if.else:                                          ; preds = %if.then.128
  %108 = load i32, i32* %hypre__dir, align 4
  %cmp141 = icmp eq i32 %108, 1
  br i1 %cmp141, label %if.then.142, label %if.else.153

if.then.142:                                      ; preds = %if.else
  %109 = load i32, i32* %hypre__block, align 4
  %110 = load i32, i32* %hypre__div, align 4
  %mul143 = mul nsw i32 %109, %110
  %111 = load i32, i32* %hypre__mod, align 4
  %112 = load i32, i32* %hypre__block, align 4
  %cmp144 = icmp slt i32 %111, %112
  br i1 %cmp144, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %if.then.142
  %113 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.147

cond.false.146:                                   ; preds = %if.then.142
  %114 = load i32, i32* %hypre__block, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.145
  %cond148 = phi i32 [ %113, %cond.true.145 ], [ %114, %cond.false.146 ]
  %add149 = add nsw i32 %mul143, %cond148
  store i32 %add149, i32* %loopj, align 4
  %115 = load i32, i32* %hypre__div, align 4
  %116 = load i32, i32* %hypre__mod, align 4
  %117 = load i32, i32* %hypre__block, align 4
  %cmp150 = icmp sgt i32 %116, %117
  %cond151 = select i1 %cmp150, i32 1, i32 0
  %add152 = add nsw i32 %115, %cond151
  store i32 %add152, i32* %hypre__ny, align 4
  br label %if.end.167

if.else.153:                                      ; preds = %if.else
  %118 = load i32, i32* %hypre__dir, align 4
  %cmp154 = icmp eq i32 %118, 2
  br i1 %cmp154, label %if.then.155, label %if.end.166

if.then.155:                                      ; preds = %if.else.153
  %119 = load i32, i32* %hypre__block, align 4
  %120 = load i32, i32* %hypre__div, align 4
  %mul156 = mul nsw i32 %119, %120
  %121 = load i32, i32* %hypre__mod, align 4
  %122 = load i32, i32* %hypre__block, align 4
  %cmp157 = icmp slt i32 %121, %122
  br i1 %cmp157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.then.155
  %123 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.then.155
  %124 = load i32, i32* %hypre__block, align 4
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi i32 [ %123, %cond.true.158 ], [ %124, %cond.false.159 ]
  %add162 = add nsw i32 %mul156, %cond161
  store i32 %add162, i32* %loopk, align 4
  %125 = load i32, i32* %hypre__div, align 4
  %126 = load i32, i32* %hypre__mod, align 4
  %127 = load i32, i32* %hypre__block, align 4
  %cmp163 = icmp sgt i32 %126, %127
  %cond164 = select i1 %cmp163, i32 1, i32 0
  %add165 = add nsw i32 %125, %cond164
  store i32 %add165, i32* %hypre__nz, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.160, %if.else.153
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %cond.end.147
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %cond.end.135
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.body.126
  %128 = load i32, i32* %hypre__i1start, align 4
  %129 = load i32, i32* %loopi, align 4
  %130 = load i32, i32* %hypre__sx1, align 4
  %mul170 = mul nsw i32 %129, %130
  %add171 = add nsw i32 %128, %mul170
  %131 = load i32, i32* %loopj, align 4
  %132 = load i32, i32* %hypre__sy1, align 4
  %mul172 = mul nsw i32 %131, %132
  %add173 = add nsw i32 %add171, %mul172
  %133 = load i32, i32* %loopk, align 4
  %134 = load i32, i32* %hypre__sz1, align 4
  %mul174 = mul nsw i32 %133, %134
  %add175 = add nsw i32 %add173, %mul174
  store i32 %add175, i32* %datai, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.197, %if.end.169
  %135 = load i32, i32* %loopk, align 4
  %136 = load i32, i32* %hypre__nz, align 4
  %cmp177 = icmp slt i32 %135, %136
  br i1 %cmp177, label %for.body.178, label %for.end.199

for.body.178:                                     ; preds = %for.cond.176
  store i32 0, i32* %loopj, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.191, %for.body.178
  %137 = load i32, i32* %loopj, align 4
  %138 = load i32, i32* %hypre__ny, align 4
  %cmp180 = icmp slt i32 %137, %138
  br i1 %cmp180, label %for.body.181, label %for.end.193

for.body.181:                                     ; preds = %for.cond.179
  store i32 0, i32* %loopi, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc, %for.body.181
  %139 = load i32, i32* %loopi, align 4
  %140 = load i32, i32* %hypre__nx, align 4
  %cmp183 = icmp slt i32 %139, %140
  br i1 %cmp183, label %for.body.184, label %for.end

for.body.184:                                     ; preds = %for.cond.182
  %141 = load i32, i32* %datai, align 4
  %idxprom185 = sext i32 %141 to i64
  %142 = load double*, double** %datap, align 8
  %arrayidx186 = getelementptr inbounds double, double* %142, i64 %idxprom185
  store double 1.000000e+00, double* %arrayidx186, align 8
  %143 = load i32, i32* %hypre__sx1, align 4
  %144 = load i32, i32* %datai, align 4
  %add187 = add nsw i32 %144, %143
  store i32 %add187, i32* %datai, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.184
  %145 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.182

for.end:                                          ; preds = %for.cond.182
  %146 = load i32, i32* %hypre__sy1, align 4
  %147 = load i32, i32* %hypre__nx, align 4
  %148 = load i32, i32* %hypre__sx1, align 4
  %mul188 = mul nsw i32 %147, %148
  %sub189 = sub nsw i32 %146, %mul188
  %149 = load i32, i32* %datai, align 4
  %add190 = add nsw i32 %149, %sub189
  store i32 %add190, i32* %datai, align 4
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.end
  %150 = load i32, i32* %loopj, align 4
  %inc192 = add nsw i32 %150, 1
  store i32 %inc192, i32* %loopj, align 4
  br label %for.cond.179

for.end.193:                                      ; preds = %for.cond.179
  %151 = load i32, i32* %hypre__sz1, align 4
  %152 = load i32, i32* %hypre__ny, align 4
  %153 = load i32, i32* %hypre__sy1, align 4
  %mul194 = mul nsw i32 %152, %153
  %sub195 = sub nsw i32 %151, %mul194
  %154 = load i32, i32* %datai, align 4
  %add196 = add nsw i32 %154, %sub195
  store i32 %add196, i32* %datai, align 4
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.193
  %155 = load i32, i32* %loopk, align 4
  %inc198 = add nsw i32 %155, 1
  store i32 %inc198, i32* %loopk, align 4
  br label %for.cond.176

for.end.199:                                      ; preds = %for.cond.176
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199
  %156 = load i32, i32* %hypre__block, align 4
  %inc201 = add nsw i32 %156, 1
  store i32 %inc201, i32* %hypre__block, align 4
  br label %for.cond.124

for.end.202:                                      ; preds = %for.cond.124
  br label %if.end.203

if.end.203:                                       ; preds = %for.end.202, %for.body
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %157 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %157, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond

for.end.206:                                      ; preds = %for.cond
  %158 = load i32, i32* %ierr, align 4
  ret i32 %158
}

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixInitialize(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %ierr = alloca i32, align 4
  %data = alloca double*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %call = call i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct* %0)
  store i32 %call, i32* %ierr, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_size = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 8
  %2 = load i32, i32* %data_size, align 4
  %call1 = call i8* @hypre_CAlloc(i32 %2, i32 8)
  %3 = bitcast i8* %call1 to double*
  store double* %3, double** %data, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %5 = load double*, double** %data, align 8
  %call2 = call i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct* %4, double* %5)
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 7
  store i32 1, i32* %data_alloced, align 4
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixSetValues(%struct.hypre_StructMatrix_struct* %matrix, i32* %grid_index, i32 %num_stencil_indices, i32* %stencil_indices, double* %values, i32 %add_to) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %grid_index.addr = alloca i32*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %add_to.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %matp = alloca double*, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %grid_index, i32** %grid_index.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 %add_to, i32* %add_to.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.245, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.247

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %9 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %12 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sge i32 %10, %12
  br i1 %cmp5, label %land.lhs.true, label %if.end.244

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %16 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sle i32 %14, %16
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.244

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %17 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %20 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sge i32 %18, %20
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.244

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %21 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 1
  %24 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp sle i32 %22, %24
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.244

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %25 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx20, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 2
  %28 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp sge i32 %26, %28
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.244

land.lhs.true.24:                                 ; preds = %land.lhs.true.19
  %29 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 2
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sle i32 %30, %32
  br i1 %cmp28, label %if.then, label %if.end.244

if.then:                                          ; preds = %land.lhs.true.24
  %33 = load i32, i32* %add_to.addr, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  store i32 0, i32* %s, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.29
  %34 = load i32, i32* %s, align 4
  %35 = load i32, i32* %num_stencil_indices.addr, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %36 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %36, i32 0, i32 6
  %37 = load double*, double** %data, align 8
  %38 = load i32, i32* %s, align 4
  %idxprom33 = sext i32 %38 to i64
  %39 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %41 to i64
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %42, i32 0, i32 9
  %43 = load i32**, i32*** %data_indices, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %43, i64 %idxprom36
  %44 = load i32*, i32** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %44, i64 %idxprom35
  %45 = load i32, i32* %arrayidx38, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds double, double* %37, i64 %idx.ext
  %46 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx39, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %49, i32 0, i32 5
  %50 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes41 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %50, i32 0, i32 0
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i64 %idxprom40
  %imin43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imin43, i32 0, i64 0
  %52 = load i32, i32* %arrayidx44, align 4
  %sub = sub nsw i32 %47, %52
  %53 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %53, i64 1
  %54 = load i32, i32* %arrayidx45, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space47 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %56, i32 0, i32 5
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space47, align 8
  %boxes48 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 0
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes48, align 8
  %arrayidx49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i64 %idxprom46
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 1
  %59 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %54, %59
  %60 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %60, i64 2
  %61 = load i32, i32* %arrayidx53, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %62 to i64
  %63 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space55 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %63, i32 0, i32 5
  %64 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space55, align 8
  %boxes56 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %64, i32 0, i32 0
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes56, align 8
  %arrayidx57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i64 %idxprom54
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 2
  %66 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %61, %66
  %67 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %67 to i64
  %68 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space62 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %68, i32 0, i32 5
  %69 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space62, align 8
  %boxes63 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %69, i32 0, i32 0
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i64 %idxprom61
  %imax65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx64, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imax65, i32 0, i64 1
  %71 = load i32, i32* %arrayidx66, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %72 to i64
  %73 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space68 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %73, i32 0, i32 5
  %74 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space68, align 8
  %boxes69 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %74, i32 0, i32 0
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes69, align 8
  %arrayidx70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i64 %idxprom67
  %imin71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %imin71, i32 0, i64 1
  %76 = load i32, i32* %arrayidx72, align 4
  %sub73 = sub nsw i32 %71, %76
  %add = add nsw i32 %sub73, 1
  %cmp74 = icmp slt i32 0, %add
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.32
  %77 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %77 to i64
  %78 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space76 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %78, i32 0, i32 5
  %79 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space76, align 8
  %boxes77 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %79, i32 0, i32 0
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes77, align 8
  %arrayidx78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i64 %idxprom75
  %imax79 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx78, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %imax79, i32 0, i64 1
  %81 = load i32, i32* %arrayidx80, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %82 to i64
  %83 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space82 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %83, i32 0, i32 5
  %84 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space82, align 8
  %boxes83 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %84, i32 0, i32 0
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes83, align 8
  %arrayidx84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i64 %idxprom81
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 1
  %86 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %81, %86
  %add88 = add nsw i32 %sub87, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add88, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub60, %cond
  %add89 = add nsw i32 %sub52, %mul
  %87 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %87 to i64
  %88 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space91 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %88, i32 0, i32 5
  %89 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space91, align 8
  %boxes92 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %89, i32 0, i32 0
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes92, align 8
  %arrayidx93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i64 %idxprom90
  %imax94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx93, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imax94, i32 0, i64 0
  %91 = load i32, i32* %arrayidx95, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %92 to i64
  %93 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space97 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %93, i32 0, i32 5
  %94 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space97, align 8
  %boxes98 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %94, i32 0, i32 0
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes98, align 8
  %arrayidx99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i64 %idxprom96
  %imin100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin100, i32 0, i64 0
  %96 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %91, %96
  %add103 = add nsw i32 %sub102, 1
  %cmp104 = icmp slt i32 0, %add103
  br i1 %cmp104, label %cond.true.105, label %cond.false.120

cond.true.105:                                    ; preds = %cond.end
  %97 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %97 to i64
  %98 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space107 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %98, i32 0, i32 5
  %99 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space107, align 8
  %boxes108 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %99, i32 0, i32 0
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes108, align 8
  %arrayidx109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i64 %idxprom106
  %imax110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx109, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax110, i32 0, i64 0
  %101 = load i32, i32* %arrayidx111, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %102 to i64
  %103 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space113 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %103, i32 0, i32 5
  %104 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space113, align 8
  %boxes114 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %104, i32 0, i32 0
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes114, align 8
  %arrayidx115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i64 %idxprom112
  %imin116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imin116, i32 0, i64 0
  %106 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %101, %106
  %add119 = add nsw i32 %sub118, 1
  br label %cond.end.121

cond.false.120:                                   ; preds = %cond.end
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.105
  %cond122 = phi i32 [ %add119, %cond.true.105 ], [ 0, %cond.false.120 ]
  %mul123 = mul nsw i32 %add89, %cond122
  %add124 = add nsw i32 %sub, %mul123
  %idx.ext125 = sext i32 %add124 to i64
  %add.ptr126 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext125
  store double* %add.ptr126, double** %matp, align 8
  %107 = load i32, i32* %s, align 4
  %idxprom127 = sext i32 %107 to i64
  %108 = load double*, double** %values.addr, align 8
  %arrayidx128 = getelementptr inbounds double, double* %108, i64 %idxprom127
  %109 = load double, double* %arrayidx128, align 8
  %110 = load double*, double** %matp, align 8
  %111 = load double, double* %110, align 8
  %add129 = fadd double %111, %109
  store double %add129, double* %110, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.121
  %112 = load i32, i32* %s, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %s, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.241, %if.else
  %113 = load i32, i32* %s, align 4
  %114 = load i32, i32* %num_stencil_indices.addr, align 4
  %cmp131 = icmp slt i32 %113, %114
  br i1 %cmp131, label %for.body.132, label %for.end.243

for.body.132:                                     ; preds = %for.cond.130
  %115 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data133 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %115, i32 0, i32 6
  %116 = load double*, double** %data133, align 8
  %117 = load i32, i32* %s, align 4
  %idxprom134 = sext i32 %117 to i64
  %118 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %118, i64 %idxprom134
  %119 = load i32, i32* %arrayidx135, align 4
  %idxprom136 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %120 to i64
  %121 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices138 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %121, i32 0, i32 9
  %122 = load i32**, i32*** %data_indices138, align 8
  %arrayidx139 = getelementptr inbounds i32*, i32** %122, i64 %idxprom137
  %123 = load i32*, i32** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %123, i64 %idxprom136
  %124 = load i32, i32* %arrayidx140, align 4
  %idx.ext141 = sext i32 %124 to i64
  %add.ptr142 = getelementptr inbounds double, double* %116, i64 %idx.ext141
  %125 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx143, align 4
  %127 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %127 to i64
  %128 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space145 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %128, i32 0, i32 5
  %129 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space145, align 8
  %boxes146 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %129, i32 0, i32 0
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes146, align 8
  %arrayidx147 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i64 %idxprom144
  %imin148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %imin148, i32 0, i64 0
  %131 = load i32, i32* %arrayidx149, align 4
  %sub150 = sub nsw i32 %126, %131
  %132 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %132, i64 1
  %133 = load i32, i32* %arrayidx151, align 4
  %134 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %134 to i64
  %135 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space153 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %135, i32 0, i32 5
  %136 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space153, align 8
  %boxes154 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %136, i32 0, i32 0
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes154, align 8
  %arrayidx155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i64 %idxprom152
  %imin156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin156, i32 0, i64 1
  %138 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %133, %138
  %139 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %139, i64 2
  %140 = load i32, i32* %arrayidx159, align 4
  %141 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %141 to i64
  %142 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space161 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %142, i32 0, i32 5
  %143 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space161, align 8
  %boxes162 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %143, i32 0, i32 0
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes162, align 8
  %arrayidx163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i64 %idxprom160
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 2
  %145 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %140, %145
  %146 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %146 to i64
  %147 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space168 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %147, i32 0, i32 5
  %148 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space168, align 8
  %boxes169 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %148, i32 0, i32 0
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes169, align 8
  %arrayidx170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i64 %idxprom167
  %imax171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx170, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imax171, i32 0, i64 1
  %150 = load i32, i32* %arrayidx172, align 4
  %151 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %151 to i64
  %152 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space174 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %152, i32 0, i32 5
  %153 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space174, align 8
  %boxes175 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %153, i32 0, i32 0
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes175, align 8
  %arrayidx176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i64 %idxprom173
  %imin177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin177, i32 0, i64 1
  %155 = load i32, i32* %arrayidx178, align 4
  %sub179 = sub nsw i32 %150, %155
  %add180 = add nsw i32 %sub179, 1
  %cmp181 = icmp slt i32 0, %add180
  br i1 %cmp181, label %cond.true.182, label %cond.false.197

cond.true.182:                                    ; preds = %for.body.132
  %156 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %156 to i64
  %157 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space184 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %157, i32 0, i32 5
  %158 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space184, align 8
  %boxes185 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %158, i32 0, i32 0
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes185, align 8
  %arrayidx186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i64 %idxprom183
  %imax187 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx186, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %imax187, i32 0, i64 1
  %160 = load i32, i32* %arrayidx188, align 4
  %161 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %161 to i64
  %162 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space190 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %162, i32 0, i32 5
  %163 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space190, align 8
  %boxes191 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %163, i32 0, i32 0
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes191, align 8
  %arrayidx192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i64 %idxprom189
  %imin193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imin193, i32 0, i64 1
  %165 = load i32, i32* %arrayidx194, align 4
  %sub195 = sub nsw i32 %160, %165
  %add196 = add nsw i32 %sub195, 1
  br label %cond.end.198

cond.false.197:                                   ; preds = %for.body.132
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.182
  %cond199 = phi i32 [ %add196, %cond.true.182 ], [ 0, %cond.false.197 ]
  %mul200 = mul nsw i32 %sub166, %cond199
  %add201 = add nsw i32 %sub158, %mul200
  %166 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %166 to i64
  %167 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space203 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %167, i32 0, i32 5
  %168 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space203, align 8
  %boxes204 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %168, i32 0, i32 0
  %169 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes204, align 8
  %arrayidx205 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %169, i64 %idxprom202
  %imax206 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx205, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %imax206, i32 0, i64 0
  %170 = load i32, i32* %arrayidx207, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %171 to i64
  %172 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space209 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %172, i32 0, i32 5
  %173 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space209, align 8
  %boxes210 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %173, i32 0, i32 0
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes210, align 8
  %arrayidx211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i64 %idxprom208
  %imin212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imin212, i32 0, i64 0
  %175 = load i32, i32* %arrayidx213, align 4
  %sub214 = sub nsw i32 %170, %175
  %add215 = add nsw i32 %sub214, 1
  %cmp216 = icmp slt i32 0, %add215
  br i1 %cmp216, label %cond.true.217, label %cond.false.232

cond.true.217:                                    ; preds = %cond.end.198
  %176 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %176 to i64
  %177 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space219 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %177, i32 0, i32 5
  %178 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space219, align 8
  %boxes220 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %178, i32 0, i32 0
  %179 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes220, align 8
  %arrayidx221 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %179, i64 %idxprom218
  %imax222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx221, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imax222, i32 0, i64 0
  %180 = load i32, i32* %arrayidx223, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %181 to i64
  %182 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space225 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %182, i32 0, i32 5
  %183 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space225, align 8
  %boxes226 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %183, i32 0, i32 0
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes226, align 8
  %arrayidx227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i64 %idxprom224
  %imin228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx227, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %imin228, i32 0, i64 0
  %185 = load i32, i32* %arrayidx229, align 4
  %sub230 = sub nsw i32 %180, %185
  %add231 = add nsw i32 %sub230, 1
  br label %cond.end.233

cond.false.232:                                   ; preds = %cond.end.198
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.217
  %cond234 = phi i32 [ %add231, %cond.true.217 ], [ 0, %cond.false.232 ]
  %mul235 = mul nsw i32 %add201, %cond234
  %add236 = add nsw i32 %sub150, %mul235
  %idx.ext237 = sext i32 %add236 to i64
  %add.ptr238 = getelementptr inbounds double, double* %add.ptr142, i64 %idx.ext237
  store double* %add.ptr238, double** %matp, align 8
  %186 = load i32, i32* %s, align 4
  %idxprom239 = sext i32 %186 to i64
  %187 = load double*, double** %values.addr, align 8
  %arrayidx240 = getelementptr inbounds double, double* %187, i64 %idxprom239
  %188 = load double, double* %arrayidx240, align 8
  %189 = load double*, double** %matp, align 8
  store double %188, double* %189, align 8
  br label %for.inc.241

for.inc.241:                                      ; preds = %cond.end.233
  %190 = load i32, i32* %s, align 4
  %inc242 = add nsw i32 %190, 1
  store i32 %inc242, i32* %s, align 4
  br label %for.cond.130

for.end.243:                                      ; preds = %for.cond.130
  br label %if.end

if.end:                                           ; preds = %for.end.243, %for.end
  br label %if.end.244

if.end.244:                                       ; preds = %if.end, %land.lhs.true.24, %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %191 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %191, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond

for.end.247:                                      ; preds = %for.cond
  %192 = load i32, i32* %ierr, align 4
  ret i32 %192
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_Box_struct* %value_box, i32 %num_stencil_indices, i32* %stencil_indices, double* %values, i32 %add_to) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %value_box.addr = alloca %struct.hypre_Box_struct*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %add_to.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %grid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %grid_box = alloca %struct.hypre_Box_struct*, align 8
  %box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_start = alloca i32*, align 8
  %data_stride = alloca [3 x i32], align 4
  %datai = alloca i32, align 4
  %datap = alloca double*, align 8
  %dval_box = alloca %struct.hypre_Box_struct*, align 8
  %dval_start = alloca [3 x i32], align 4
  %dval_stride = alloca [3 x i32], align 4
  %dvali = alloca i32, align 4
  %loop_size = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__nx = alloca i32, align 4
  %hypre__ny = alloca i32, align 4
  %hypre__nz = alloca i32, align 4
  %hypre__mx = alloca i32, align 4
  %hypre__my = alloca i32, align 4
  %hypre__mz = alloca i32, align 4
  %hypre__dir = alloca i32, align 4
  %hypre__max = alloca i32, align 4
  %hypre__div = alloca i32, align 4
  %hypre__mod = alloca i32, align 4
  %hypre__block = alloca i32, align 4
  %hypre__num_blocks = alloca i32, align 4
  %hypre__i1start418 = alloca i32, align 4
  %hypre__i2start469 = alloca i32, align 4
  %hypre__sx1520 = alloca i32, align 4
  %hypre__sy1522 = alloca i32, align 4
  %hypre__sz1542 = alloca i32, align 4
  %hypre__sx2580 = alloca i32, align 4
  %hypre__sy2582 = alloca i32, align 4
  %hypre__sz2602 = alloca i32, align 4
  %hypre__nx640 = alloca i32, align 4
  %hypre__ny642 = alloca i32, align 4
  %hypre__nz644 = alloca i32, align 4
  %hypre__mx646 = alloca i32, align 4
  %hypre__my647 = alloca i32, align 4
  %hypre__mz648 = alloca i32, align 4
  %hypre__dir649 = alloca i32, align 4
  %hypre__max650 = alloca i32, align 4
  %hypre__div651 = alloca i32, align 4
  %hypre__mod652 = alloca i32, align 4
  %hypre__block653 = alloca i32, align 4
  %hypre__num_blocks654 = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store %struct.hypre_Box_struct* %value_box, %struct.hypre_Box_struct** %value_box.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 %add_to, i32* %add_to.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %grid_boxes, align 8
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %grid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %4)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %box_array, align 8
  %call1 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call1, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %grid_boxes, align 8
  %size2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %grid_boxes, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %9, i32 0, i32 0
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes3, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %grid_box, align 8
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %value_box.addr, align 8
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grid_box, align 8
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call4 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %11, %struct.hypre_Box_struct* %12, %struct.hypre_Box_struct* %13)
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %15 = load i32, i32* %arrayidx5, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %17, i32 0, i32 0
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i64 %idxprom6
  %imin9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 0
  store i32 %15, i32* %arrayidx10, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %20 = load i32, i32* %arrayidx12, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom13
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  store i32 %20, i32* %arrayidx17, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imin18, i32 0, i64 2
  %25 = load i32, i32* %arrayidx19, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes21 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %27, i32 0, i32 0
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i64 %idxprom20
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 2
  store i32 %25, i32* %arrayidx24, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes27 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %32, i32 0, i32 0
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i64 %idxprom26
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 0
  store i32 %30, i32* %arrayidx30, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 1
  %35 = load i32, i32* %arrayidx32, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes34 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %37, i32 0, i32 0
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes34, align 8
  %arrayidx35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i64 %idxprom33
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 1
  store i32 %35, i32* %arrayidx37, align 4
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 2
  %40 = load i32, i32* %arrayidx39, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes41 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %42, i32 0, i32 0
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i64 %idxprom40
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 2
  store i32 %40, i32* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call45 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %45)
  %46 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %tobool = icmp ne %struct.hypre_BoxArray_struct* %46, null
  br i1 %tobool, label %if.then, label %if.end.778

if.then:                                          ; preds = %for.end
  %47 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space46 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %47, i32 0, i32 5
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space46, align 8
  store %struct.hypre_BoxArray_struct* %48, %struct.hypre_BoxArray_struct** %data_space, align 8
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx49, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %value_box.addr, align 8
  %call50 = call %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct* %49)
  store %struct.hypre_Box_struct* %call50, %struct.hypre_Box_struct** %dval_box, align 8
  %50 = load i32, i32* %num_stencil_indices.addr, align 4
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %imin51, i32 0, i64 0
  %52 = load i32, i32* %arrayidx52, align 4
  %mul = mul nsw i32 %52, %50
  store i32 %mul, i32* %arrayidx52, align 4
  %53 = load i32, i32* %num_stencil_indices.addr, align 4
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imax53, i32 0, i64 0
  %55 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %55, %53
  store i32 %mul55, i32* %arrayidx54, align 4
  %56 = load i32, i32* %num_stencil_indices.addr, align 4
  %sub = sub nsw i32 %56, 1
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imax56, i32 0, i64 0
  %58 = load i32, i32* %arrayidx57, align 4
  %add = add nsw i32 %58, %sub
  store i32 %add, i32* %arrayidx57, align 4
  %59 = load i32, i32* %num_stencil_indices.addr, align 4
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  store i32 %59, i32* %arrayidx58, align 4
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx60, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.774, %if.then
  %60 = load i32, i32* %i, align 4
  %61 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size62 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %size62, align 4
  %cmp63 = icmp slt i32 %60, %62
  br i1 %cmp63, label %for.body.64, label %for.end.776

for.body.64:                                      ; preds = %for.cond.61
  %63 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %63 to i64
  %64 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes66 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %64, i32 0, i32 0
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i64 %idxprom65
  store %struct.hypre_Box_struct* %arrayidx67, %struct.hypre_Box_struct** %box, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %66 to i64
  %67 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes69 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %67, i32 0, i32 0
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes69, align 8
  %arrayidx70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i64 %idxprom68
  store %struct.hypre_Box_struct* %arrayidx70, %struct.hypre_Box_struct** %data_box, align 8
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %tobool71 = icmp ne %struct.hypre_Box_struct* %69, null
  br i1 %tobool71, label %if.then.72, label %if.end.773

if.then.72:                                       ; preds = %for.body.64
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i32 0
  store i32* %arraydecay, i32** %data_start, align 8
  %71 = load i32*, i32** %data_start, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  store i32 %72, i32* %arrayidx75, align 4
  %73 = load i32*, i32** %data_start, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %73, i64 1
  %74 = load i32, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  store i32 %74, i32* %arrayidx77, align 4
  %75 = load i32*, i32** %data_start, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %75, i64 2
  %76 = load i32, i32* %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  store i32 %76, i32* %arrayidx79, align 4
  %77 = load i32, i32* %num_stencil_indices.addr, align 4
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %78 = load i32, i32* %arrayidx80, align 4
  %mul81 = mul nsw i32 %78, %77
  store i32 %mul81, i32* %arrayidx80, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.770, %if.then.72
  %79 = load i32, i32* %s, align 4
  %80 = load i32, i32* %num_stencil_indices.addr, align 4
  %cmp83 = icmp slt i32 %79, %80
  br i1 %cmp83, label %for.body.84, label %for.end.772

for.body.84:                                      ; preds = %for.cond.82
  %81 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %81, i32 0, i32 6
  %82 = load double*, double** %data, align 8
  %83 = load i32, i32* %s, align 4
  %idxprom85 = sext i32 %83 to i64
  %84 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %84, i64 %idxprom85
  %85 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %85 to i64
  %86 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %86 to i64
  %87 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %87, i32 0, i32 9
  %88 = load i32**, i32*** %data_indices, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %88, i64 %idxprom88
  %89 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %89, i64 %idxprom87
  %90 = load i32, i32* %arrayidx90, align 4
  %idx.ext = sext i32 %90 to i64
  %add.ptr = getelementptr inbounds double, double* %82, i64 %idx.ext
  store double* %add.ptr, double** %datap, align 8
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay91 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call92 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %91, i32* %arraydecay91)
  %92 = load i32, i32* %add_to.addr, align 4
  %tobool93 = icmp ne i32 %92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.417

if.then.94:                                       ; preds = %for.body.84
  %93 = load i32*, i32** %data_start, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx95, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imin96, i32 0, i64 0
  %96 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %94, %96
  %97 = load i32*, i32** %data_start, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx99, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin100, i32 0, i64 1
  %100 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %98, %100
  %101 = load i32*, i32** %data_start, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %101, i64 2
  %102 = load i32, i32* %arrayidx103, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 2
  %104 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %102, %104
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imax107, i32 0, i64 1
  %106 = load i32, i32* %arrayidx108, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imin109, i32 0, i64 1
  %108 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %106, %108
  %add112 = add nsw i32 %sub111, 1
  %cmp113 = icmp slt i32 0, %add112
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.94
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imax114, i32 0, i64 1
  %110 = load i32, i32* %arrayidx115, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imin116, i32 0, i64 1
  %112 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %110, %112
  %add119 = add nsw i32 %sub118, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add119, %cond.true ], [ 0, %cond.false ]
  %mul120 = mul nsw i32 %sub106, %cond
  %add121 = add nsw i32 %sub102, %mul120
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imax122, i32 0, i64 0
  %114 = load i32, i32* %arrayidx123, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imin124, i32 0, i64 0
  %116 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %114, %116
  %add127 = add nsw i32 %sub126, 1
  %cmp128 = icmp slt i32 0, %add127
  br i1 %cmp128, label %cond.true.129, label %cond.false.136

cond.true.129:                                    ; preds = %cond.end
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %imax130, i32 0, i64 0
  %118 = load i32, i32* %arrayidx131, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i64 0
  %120 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub nsw i32 %118, %120
  %add135 = add nsw i32 %sub134, 1
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.129
  %cond138 = phi i32 [ %add135, %cond.true.129 ], [ 0, %cond.false.136 ]
  %mul139 = mul nsw i32 %add121, %cond138
  %add140 = add nsw i32 %sub98, %mul139
  store i32 %add140, i32* %hypre__i1start, align 4
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %121 = load i32, i32* %arrayidx141, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 0
  %123 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %121, %123
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  %124 = load i32, i32* %arrayidx145, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin146, i32 0, i64 1
  %126 = load i32, i32* %arrayidx147, align 4
  %sub148 = sub nsw i32 %124, %126
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  %127 = load i32, i32* %arrayidx149, align 4
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin150, i32 0, i64 2
  %129 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %127, %129
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 1
  %131 = load i32, i32* %arrayidx154, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin155, i32 0, i64 1
  %133 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %131, %133
  %add158 = add nsw i32 %sub157, 1
  %cmp159 = icmp slt i32 0, %add158
  br i1 %cmp159, label %cond.true.160, label %cond.false.167

cond.true.160:                                    ; preds = %cond.end.137
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 1
  %135 = load i32, i32* %arrayidx162, align 4
  %136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %136, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 1
  %137 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %135, %137
  %add166 = add nsw i32 %sub165, 1
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.137
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.160
  %cond169 = phi i32 [ %add166, %cond.true.160 ], [ 0, %cond.false.167 ]
  %mul170 = mul nsw i32 %sub152, %cond169
  %add171 = add nsw i32 %sub148, %mul170
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %imax172, i32 0, i64 0
  %139 = load i32, i32* %arrayidx173, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %imin174, i32 0, i64 0
  %141 = load i32, i32* %arrayidx175, align 4
  %sub176 = sub nsw i32 %139, %141
  %add177 = add nsw i32 %sub176, 1
  %cmp178 = icmp slt i32 0, %add177
  br i1 %cmp178, label %cond.true.179, label %cond.false.186

cond.true.179:                                    ; preds = %cond.end.168
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax180, i32 0, i64 0
  %143 = load i32, i32* %arrayidx181, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin182, i32 0, i64 0
  %145 = load i32, i32* %arrayidx183, align 4
  %sub184 = sub nsw i32 %143, %145
  %add185 = add nsw i32 %sub184, 1
  br label %cond.end.187

cond.false.186:                                   ; preds = %cond.end.168
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.179
  %cond188 = phi i32 [ %add185, %cond.true.179 ], [ 0, %cond.false.186 ]
  %mul189 = mul nsw i32 %add171, %cond188
  %add190 = add nsw i32 %sub144, %mul189
  store i32 %add190, i32* %hypre__i2start, align 4
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  %146 = load i32, i32* %arrayidx191, align 4
  store i32 %146, i32* %hypre__sx1, align 4
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  %147 = load i32, i32* %arrayidx192, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imax193, i32 0, i64 0
  %149 = load i32, i32* %arrayidx194, align 4
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin195 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %imin195, i32 0, i64 0
  %151 = load i32, i32* %arrayidx196, align 4
  %sub197 = sub nsw i32 %149, %151
  %add198 = add nsw i32 %sub197, 1
  %cmp199 = icmp slt i32 0, %add198
  br i1 %cmp199, label %cond.true.200, label %cond.false.207

cond.true.200:                                    ; preds = %cond.end.187
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 0
  %153 = load i32, i32* %arrayidx202, align 4
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin203, i32 0, i64 0
  %155 = load i32, i32* %arrayidx204, align 4
  %sub205 = sub nsw i32 %153, %155
  %add206 = add nsw i32 %sub205, 1
  br label %cond.end.208

cond.false.207:                                   ; preds = %cond.end.187
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.200
  %cond209 = phi i32 [ %add206, %cond.true.200 ], [ 0, %cond.false.207 ]
  %mul210 = mul nsw i32 %147, %cond209
  store i32 %mul210, i32* %hypre__sy1, align 4
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  %156 = load i32, i32* %arrayidx211, align 4
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imax212, i32 0, i64 0
  %158 = load i32, i32* %arrayidx213, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imin214, i32 0, i64 0
  %160 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 %158, %160
  %add217 = add nsw i32 %sub216, 1
  %cmp218 = icmp slt i32 0, %add217
  br i1 %cmp218, label %cond.true.219, label %cond.false.226

cond.true.219:                                    ; preds = %cond.end.208
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imax220, i32 0, i64 0
  %162 = load i32, i32* %arrayidx221, align 4
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imin222, i32 0, i64 0
  %164 = load i32, i32* %arrayidx223, align 4
  %sub224 = sub nsw i32 %162, %164
  %add225 = add nsw i32 %sub224, 1
  br label %cond.end.227

cond.false.226:                                   ; preds = %cond.end.208
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.226, %cond.true.219
  %cond228 = phi i32 [ %add225, %cond.true.219 ], [ 0, %cond.false.226 ]
  %mul229 = mul nsw i32 %156, %cond228
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %imax230, i32 0, i64 1
  %166 = load i32, i32* %arrayidx231, align 4
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %imin232, i32 0, i64 1
  %168 = load i32, i32* %arrayidx233, align 4
  %sub234 = sub nsw i32 %166, %168
  %add235 = add nsw i32 %sub234, 1
  %cmp236 = icmp slt i32 0, %add235
  br i1 %cmp236, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %cond.end.227
  %169 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %169, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imax238, i32 0, i64 1
  %170 = load i32, i32* %arrayidx239, align 4
  %171 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %171, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imin240, i32 0, i64 1
  %172 = load i32, i32* %arrayidx241, align 4
  %sub242 = sub nsw i32 %170, %172
  %add243 = add nsw i32 %sub242, 1
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.227
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.237
  %cond246 = phi i32 [ %add243, %cond.true.237 ], [ 0, %cond.false.244 ]
  %mul247 = mul nsw i32 %mul229, %cond246
  store i32 %mul247, i32* %hypre__sz1, align 4
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  %173 = load i32, i32* %arrayidx248, align 4
  store i32 %173, i32* %hypre__sx2, align 4
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  %174 = load i32, i32* %arrayidx249, align 4
  %175 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %175, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imax250, i32 0, i64 0
  %176 = load i32, i32* %arrayidx251, align 4
  %177 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %177, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imin252, i32 0, i64 0
  %178 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %176, %178
  %add255 = add nsw i32 %sub254, 1
  %cmp256 = icmp slt i32 0, %add255
  br i1 %cmp256, label %cond.true.257, label %cond.false.264

cond.true.257:                                    ; preds = %cond.end.245
  %179 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %179, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax258, i32 0, i64 0
  %180 = load i32, i32* %arrayidx259, align 4
  %181 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %181, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin260, i32 0, i64 0
  %182 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %180, %182
  %add263 = add nsw i32 %sub262, 1
  br label %cond.end.265

cond.false.264:                                   ; preds = %cond.end.245
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.257
  %cond266 = phi i32 [ %add263, %cond.true.257 ], [ 0, %cond.false.264 ]
  %mul267 = mul nsw i32 %174, %cond266
  store i32 %mul267, i32* %hypre__sy2, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  %183 = load i32, i32* %arrayidx268, align 4
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imax269, i32 0, i64 0
  %185 = load i32, i32* %arrayidx270, align 4
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %imin271, i32 0, i64 0
  %187 = load i32, i32* %arrayidx272, align 4
  %sub273 = sub nsw i32 %185, %187
  %add274 = add nsw i32 %sub273, 1
  %cmp275 = icmp slt i32 0, %add274
  br i1 %cmp275, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %cond.end.265
  %188 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %188, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imax277, i32 0, i64 0
  %189 = load i32, i32* %arrayidx278, align 4
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 0
  %191 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %189, %191
  %add282 = add nsw i32 %sub281, 1
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.265
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.276
  %cond285 = phi i32 [ %add282, %cond.true.276 ], [ 0, %cond.false.283 ]
  %mul286 = mul nsw i32 %183, %cond285
  %192 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %192, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imax287, i32 0, i64 1
  %193 = load i32, i32* %arrayidx288, align 4
  %194 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %194, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imin289, i32 0, i64 1
  %195 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %193, %195
  %add292 = add nsw i32 %sub291, 1
  %cmp293 = icmp slt i32 0, %add292
  br i1 %cmp293, label %cond.true.294, label %cond.false.301

cond.true.294:                                    ; preds = %cond.end.284
  %196 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax295 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %196, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [3 x i32], [3 x i32]* %imax295, i32 0, i64 1
  %197 = load i32, i32* %arrayidx296, align 4
  %198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %198, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %imin297, i32 0, i64 1
  %199 = load i32, i32* %arrayidx298, align 4
  %sub299 = sub nsw i32 %197, %199
  %add300 = add nsw i32 %sub299, 1
  br label %cond.end.302

cond.false.301:                                   ; preds = %cond.end.284
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.301, %cond.true.294
  %cond303 = phi i32 [ %add300, %cond.true.294 ], [ 0, %cond.false.301 ]
  %mul304 = mul nsw i32 %mul286, %cond303
  store i32 %mul304, i32* %hypre__sz2, align 4
  %arrayidx305 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %200 = load i32, i32* %arrayidx305, align 4
  store i32 %200, i32* %hypre__nx, align 4
  %arrayidx306 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %201 = load i32, i32* %arrayidx306, align 4
  store i32 %201, i32* %hypre__ny, align 4
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %202 = load i32, i32* %arrayidx307, align 4
  store i32 %202, i32* %hypre__nz, align 4
  %203 = load i32, i32* %hypre__nx, align 4
  store i32 %203, i32* %hypre__mx, align 4
  %204 = load i32, i32* %hypre__ny, align 4
  store i32 %204, i32* %hypre__my, align 4
  %205 = load i32, i32* %hypre__nz, align 4
  store i32 %205, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %206 = load i32, i32* %hypre__nx, align 4
  store i32 %206, i32* %hypre__max, align 4
  %207 = load i32, i32* %hypre__ny, align 4
  %208 = load i32, i32* %hypre__max, align 4
  %cmp308 = icmp sgt i32 %207, %208
  br i1 %cmp308, label %if.then.309, label %if.end

if.then.309:                                      ; preds = %cond.end.302
  store i32 1, i32* %hypre__dir, align 4
  %209 = load i32, i32* %hypre__ny, align 4
  store i32 %209, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.309, %cond.end.302
  %210 = load i32, i32* %hypre__nz, align 4
  %211 = load i32, i32* %hypre__max, align 4
  %cmp310 = icmp sgt i32 %210, %211
  br i1 %cmp310, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %212 = load i32, i32* %hypre__nz, align 4
  store i32 %212, i32* %hypre__max, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %213 = load i32, i32* %hypre__max, align 4
  %214 = load i32, i32* %hypre__num_blocks, align 4
  %cmp313 = icmp slt i32 %213, %214
  br i1 %cmp313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.312
  %215 = load i32, i32* %hypre__max, align 4
  store i32 %215, i32* %hypre__num_blocks, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.end.312
  %216 = load i32, i32* %hypre__num_blocks, align 4
  %cmp316 = icmp sgt i32 %216, 0
  br i1 %cmp316, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.end.315
  %217 = load i32, i32* %hypre__max, align 4
  %218 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %217, %218
  store i32 %div, i32* %hypre__div, align 4
  %219 = load i32, i32* %hypre__max, align 4
  %220 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %219, %220
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.317, %if.end.315
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.414, %if.end.318
  %221 = load i32, i32* %hypre__block, align 4
  %222 = load i32, i32* %hypre__num_blocks, align 4
  %cmp320 = icmp slt i32 %221, %222
  br i1 %cmp320, label %for.body.321, label %for.end.416

for.body.321:                                     ; preds = %for.cond.319
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %223 = load i32, i32* %hypre__mx, align 4
  store i32 %223, i32* %hypre__nx, align 4
  %224 = load i32, i32* %hypre__my, align 4
  store i32 %224, i32* %hypre__ny, align 4
  %225 = load i32, i32* %hypre__mz, align 4
  store i32 %225, i32* %hypre__nz, align 4
  %226 = load i32, i32* %hypre__num_blocks, align 4
  %cmp322 = icmp sgt i32 %226, 1
  br i1 %cmp322, label %if.then.323, label %if.end.364

if.then.323:                                      ; preds = %for.body.321
  %227 = load i32, i32* %hypre__dir, align 4
  %cmp324 = icmp eq i32 %227, 0
  br i1 %cmp324, label %if.then.325, label %if.else

if.then.325:                                      ; preds = %if.then.323
  %228 = load i32, i32* %hypre__block, align 4
  %229 = load i32, i32* %hypre__div, align 4
  %mul326 = mul nsw i32 %228, %229
  %230 = load i32, i32* %hypre__mod, align 4
  %231 = load i32, i32* %hypre__block, align 4
  %cmp327 = icmp slt i32 %230, %231
  br i1 %cmp327, label %cond.true.328, label %cond.false.329

cond.true.328:                                    ; preds = %if.then.325
  %232 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.330

cond.false.329:                                   ; preds = %if.then.325
  %233 = load i32, i32* %hypre__block, align 4
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.329, %cond.true.328
  %cond331 = phi i32 [ %232, %cond.true.328 ], [ %233, %cond.false.329 ]
  %add332 = add nsw i32 %mul326, %cond331
  store i32 %add332, i32* %loopi, align 4
  %234 = load i32, i32* %hypre__div, align 4
  %235 = load i32, i32* %hypre__mod, align 4
  %236 = load i32, i32* %hypre__block, align 4
  %cmp333 = icmp sgt i32 %235, %236
  %cond334 = select i1 %cmp333, i32 1, i32 0
  %add335 = add nsw i32 %234, %cond334
  store i32 %add335, i32* %hypre__nx, align 4
  br label %if.end.363

if.else:                                          ; preds = %if.then.323
  %237 = load i32, i32* %hypre__dir, align 4
  %cmp336 = icmp eq i32 %237, 1
  br i1 %cmp336, label %if.then.337, label %if.else.348

if.then.337:                                      ; preds = %if.else
  %238 = load i32, i32* %hypre__block, align 4
  %239 = load i32, i32* %hypre__div, align 4
  %mul338 = mul nsw i32 %238, %239
  %240 = load i32, i32* %hypre__mod, align 4
  %241 = load i32, i32* %hypre__block, align 4
  %cmp339 = icmp slt i32 %240, %241
  br i1 %cmp339, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %if.then.337
  %242 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.342

cond.false.341:                                   ; preds = %if.then.337
  %243 = load i32, i32* %hypre__block, align 4
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.340
  %cond343 = phi i32 [ %242, %cond.true.340 ], [ %243, %cond.false.341 ]
  %add344 = add nsw i32 %mul338, %cond343
  store i32 %add344, i32* %loopj, align 4
  %244 = load i32, i32* %hypre__div, align 4
  %245 = load i32, i32* %hypre__mod, align 4
  %246 = load i32, i32* %hypre__block, align 4
  %cmp345 = icmp sgt i32 %245, %246
  %cond346 = select i1 %cmp345, i32 1, i32 0
  %add347 = add nsw i32 %244, %cond346
  store i32 %add347, i32* %hypre__ny, align 4
  br label %if.end.362

if.else.348:                                      ; preds = %if.else
  %247 = load i32, i32* %hypre__dir, align 4
  %cmp349 = icmp eq i32 %247, 2
  br i1 %cmp349, label %if.then.350, label %if.end.361

if.then.350:                                      ; preds = %if.else.348
  %248 = load i32, i32* %hypre__block, align 4
  %249 = load i32, i32* %hypre__div, align 4
  %mul351 = mul nsw i32 %248, %249
  %250 = load i32, i32* %hypre__mod, align 4
  %251 = load i32, i32* %hypre__block, align 4
  %cmp352 = icmp slt i32 %250, %251
  br i1 %cmp352, label %cond.true.353, label %cond.false.354

cond.true.353:                                    ; preds = %if.then.350
  %252 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.355

cond.false.354:                                   ; preds = %if.then.350
  %253 = load i32, i32* %hypre__block, align 4
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.354, %cond.true.353
  %cond356 = phi i32 [ %252, %cond.true.353 ], [ %253, %cond.false.354 ]
  %add357 = add nsw i32 %mul351, %cond356
  store i32 %add357, i32* %loopk, align 4
  %254 = load i32, i32* %hypre__div, align 4
  %255 = load i32, i32* %hypre__mod, align 4
  %256 = load i32, i32* %hypre__block, align 4
  %cmp358 = icmp sgt i32 %255, %256
  %cond359 = select i1 %cmp358, i32 1, i32 0
  %add360 = add nsw i32 %254, %cond359
  store i32 %add360, i32* %hypre__nz, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %cond.end.355, %if.else.348
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %cond.end.342
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %cond.end.330
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %for.body.321
  %257 = load i32, i32* %hypre__i1start, align 4
  %258 = load i32, i32* %loopi, align 4
  %259 = load i32, i32* %hypre__sx1, align 4
  %mul365 = mul nsw i32 %258, %259
  %add366 = add nsw i32 %257, %mul365
  %260 = load i32, i32* %loopj, align 4
  %261 = load i32, i32* %hypre__sy1, align 4
  %mul367 = mul nsw i32 %260, %261
  %add368 = add nsw i32 %add366, %mul367
  %262 = load i32, i32* %loopk, align 4
  %263 = load i32, i32* %hypre__sz1, align 4
  %mul369 = mul nsw i32 %262, %263
  %add370 = add nsw i32 %add368, %mul369
  store i32 %add370, i32* %datai, align 4
  %264 = load i32, i32* %hypre__i2start, align 4
  %265 = load i32, i32* %loopi, align 4
  %266 = load i32, i32* %hypre__sx2, align 4
  %mul371 = mul nsw i32 %265, %266
  %add372 = add nsw i32 %264, %mul371
  %267 = load i32, i32* %loopj, align 4
  %268 = load i32, i32* %hypre__sy2, align 4
  %mul373 = mul nsw i32 %267, %268
  %add374 = add nsw i32 %add372, %mul373
  %269 = load i32, i32* %loopk, align 4
  %270 = load i32, i32* %hypre__sz2, align 4
  %mul375 = mul nsw i32 %269, %270
  %add376 = add nsw i32 %add374, %mul375
  store i32 %add376, i32* %dvali, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.411, %if.end.364
  %271 = load i32, i32* %loopk, align 4
  %272 = load i32, i32* %hypre__nz, align 4
  %cmp378 = icmp slt i32 %271, %272
  br i1 %cmp378, label %for.body.379, label %for.end.413

for.body.379:                                     ; preds = %for.cond.377
  store i32 0, i32* %loopj, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.402, %for.body.379
  %273 = load i32, i32* %loopj, align 4
  %274 = load i32, i32* %hypre__ny, align 4
  %cmp381 = icmp slt i32 %273, %274
  br i1 %cmp381, label %for.body.382, label %for.end.404

for.body.382:                                     ; preds = %for.cond.380
  store i32 0, i32* %loopi, align 4
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.393, %for.body.382
  %275 = load i32, i32* %loopi, align 4
  %276 = load i32, i32* %hypre__nx, align 4
  %cmp384 = icmp slt i32 %275, %276
  br i1 %cmp384, label %for.body.385, label %for.end.395

for.body.385:                                     ; preds = %for.cond.383
  %277 = load i32, i32* %dvali, align 4
  %idxprom386 = sext i32 %277 to i64
  %278 = load double*, double** %values.addr, align 8
  %arrayidx387 = getelementptr inbounds double, double* %278, i64 %idxprom386
  %279 = load double, double* %arrayidx387, align 8
  %280 = load i32, i32* %datai, align 4
  %idxprom388 = sext i32 %280 to i64
  %281 = load double*, double** %datap, align 8
  %arrayidx389 = getelementptr inbounds double, double* %281, i64 %idxprom388
  %282 = load double, double* %arrayidx389, align 8
  %add390 = fadd double %282, %279
  store double %add390, double* %arrayidx389, align 8
  %283 = load i32, i32* %hypre__sx1, align 4
  %284 = load i32, i32* %datai, align 4
  %add391 = add nsw i32 %284, %283
  store i32 %add391, i32* %datai, align 4
  %285 = load i32, i32* %hypre__sx2, align 4
  %286 = load i32, i32* %dvali, align 4
  %add392 = add nsw i32 %286, %285
  store i32 %add392, i32* %dvali, align 4
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.body.385
  %287 = load i32, i32* %loopi, align 4
  %inc394 = add nsw i32 %287, 1
  store i32 %inc394, i32* %loopi, align 4
  br label %for.cond.383

for.end.395:                                      ; preds = %for.cond.383
  %288 = load i32, i32* %hypre__sy1, align 4
  %289 = load i32, i32* %hypre__nx, align 4
  %290 = load i32, i32* %hypre__sx1, align 4
  %mul396 = mul nsw i32 %289, %290
  %sub397 = sub nsw i32 %288, %mul396
  %291 = load i32, i32* %datai, align 4
  %add398 = add nsw i32 %291, %sub397
  store i32 %add398, i32* %datai, align 4
  %292 = load i32, i32* %hypre__sy2, align 4
  %293 = load i32, i32* %hypre__nx, align 4
  %294 = load i32, i32* %hypre__sx2, align 4
  %mul399 = mul nsw i32 %293, %294
  %sub400 = sub nsw i32 %292, %mul399
  %295 = load i32, i32* %dvali, align 4
  %add401 = add nsw i32 %295, %sub400
  store i32 %add401, i32* %dvali, align 4
  br label %for.inc.402

for.inc.402:                                      ; preds = %for.end.395
  %296 = load i32, i32* %loopj, align 4
  %inc403 = add nsw i32 %296, 1
  store i32 %inc403, i32* %loopj, align 4
  br label %for.cond.380

for.end.404:                                      ; preds = %for.cond.380
  %297 = load i32, i32* %hypre__sz1, align 4
  %298 = load i32, i32* %hypre__ny, align 4
  %299 = load i32, i32* %hypre__sy1, align 4
  %mul405 = mul nsw i32 %298, %299
  %sub406 = sub nsw i32 %297, %mul405
  %300 = load i32, i32* %datai, align 4
  %add407 = add nsw i32 %300, %sub406
  store i32 %add407, i32* %datai, align 4
  %301 = load i32, i32* %hypre__sz2, align 4
  %302 = load i32, i32* %hypre__ny, align 4
  %303 = load i32, i32* %hypre__sy2, align 4
  %mul408 = mul nsw i32 %302, %303
  %sub409 = sub nsw i32 %301, %mul408
  %304 = load i32, i32* %dvali, align 4
  %add410 = add nsw i32 %304, %sub409
  store i32 %add410, i32* %dvali, align 4
  br label %for.inc.411

for.inc.411:                                      ; preds = %for.end.404
  %305 = load i32, i32* %loopk, align 4
  %inc412 = add nsw i32 %305, 1
  store i32 %inc412, i32* %loopk, align 4
  br label %for.cond.377

for.end.413:                                      ; preds = %for.cond.377
  br label %for.inc.414

for.inc.414:                                      ; preds = %for.end.413
  %306 = load i32, i32* %hypre__block, align 4
  %inc415 = add nsw i32 %306, 1
  store i32 %inc415, i32* %hypre__block, align 4
  br label %for.cond.319

for.end.416:                                      ; preds = %for.cond.319
  br label %if.end.767

if.else.417:                                      ; preds = %for.body.84
  %307 = load i32*, i32** %data_start, align 8
  %arrayidx419 = getelementptr inbounds i32, i32* %307, i64 0
  %308 = load i32, i32* %arrayidx419, align 4
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin420 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [3 x i32], [3 x i32]* %imin420, i32 0, i64 0
  %310 = load i32, i32* %arrayidx421, align 4
  %sub422 = sub nsw i32 %308, %310
  %311 = load i32*, i32** %data_start, align 8
  %arrayidx423 = getelementptr inbounds i32, i32* %311, i64 1
  %312 = load i32, i32* %arrayidx423, align 4
  %313 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin424 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %313, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [3 x i32], [3 x i32]* %imin424, i32 0, i64 1
  %314 = load i32, i32* %arrayidx425, align 4
  %sub426 = sub nsw i32 %312, %314
  %315 = load i32*, i32** %data_start, align 8
  %arrayidx427 = getelementptr inbounds i32, i32* %315, i64 2
  %316 = load i32, i32* %arrayidx427, align 4
  %317 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin428 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %317, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [3 x i32], [3 x i32]* %imin428, i32 0, i64 2
  %318 = load i32, i32* %arrayidx429, align 4
  %sub430 = sub nsw i32 %316, %318
  %319 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax431 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %319, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [3 x i32], [3 x i32]* %imax431, i32 0, i64 1
  %320 = load i32, i32* %arrayidx432, align 4
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin433 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %321, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %imin433, i32 0, i64 1
  %322 = load i32, i32* %arrayidx434, align 4
  %sub435 = sub nsw i32 %320, %322
  %add436 = add nsw i32 %sub435, 1
  %cmp437 = icmp slt i32 0, %add436
  br i1 %cmp437, label %cond.true.438, label %cond.false.445

cond.true.438:                                    ; preds = %if.else.417
  %323 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax439 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %323, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [3 x i32], [3 x i32]* %imax439, i32 0, i64 1
  %324 = load i32, i32* %arrayidx440, align 4
  %325 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %325, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %imin441, i32 0, i64 1
  %326 = load i32, i32* %arrayidx442, align 4
  %sub443 = sub nsw i32 %324, %326
  %add444 = add nsw i32 %sub443, 1
  br label %cond.end.446

cond.false.445:                                   ; preds = %if.else.417
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.445, %cond.true.438
  %cond447 = phi i32 [ %add444, %cond.true.438 ], [ 0, %cond.false.445 ]
  %mul448 = mul nsw i32 %sub430, %cond447
  %add449 = add nsw i32 %sub426, %mul448
  %327 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax450 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %327, i32 0, i32 1
  %arrayidx451 = getelementptr inbounds [3 x i32], [3 x i32]* %imax450, i32 0, i64 0
  %328 = load i32, i32* %arrayidx451, align 4
  %329 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin452 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %329, i32 0, i32 0
  %arrayidx453 = getelementptr inbounds [3 x i32], [3 x i32]* %imin452, i32 0, i64 0
  %330 = load i32, i32* %arrayidx453, align 4
  %sub454 = sub nsw i32 %328, %330
  %add455 = add nsw i32 %sub454, 1
  %cmp456 = icmp slt i32 0, %add455
  br i1 %cmp456, label %cond.true.457, label %cond.false.464

cond.true.457:                                    ; preds = %cond.end.446
  %331 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax458 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %331, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [3 x i32], [3 x i32]* %imax458, i32 0, i64 0
  %332 = load i32, i32* %arrayidx459, align 4
  %333 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin460 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %333, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [3 x i32], [3 x i32]* %imin460, i32 0, i64 0
  %334 = load i32, i32* %arrayidx461, align 4
  %sub462 = sub nsw i32 %332, %334
  %add463 = add nsw i32 %sub462, 1
  br label %cond.end.465

cond.false.464:                                   ; preds = %cond.end.446
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.464, %cond.true.457
  %cond466 = phi i32 [ %add463, %cond.true.457 ], [ 0, %cond.false.464 ]
  %mul467 = mul nsw i32 %add449, %cond466
  %add468 = add nsw i32 %sub422, %mul467
  store i32 %add468, i32* %hypre__i1start418, align 4
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %335 = load i32, i32* %arrayidx470, align 4
  %336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin471 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %336, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [3 x i32], [3 x i32]* %imin471, i32 0, i64 0
  %337 = load i32, i32* %arrayidx472, align 4
  %sub473 = sub nsw i32 %335, %337
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  %338 = load i32, i32* %arrayidx474, align 4
  %339 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %339, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %imin475, i32 0, i64 1
  %340 = load i32, i32* %arrayidx476, align 4
  %sub477 = sub nsw i32 %338, %340
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  %341 = load i32, i32* %arrayidx478, align 4
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin479 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [3 x i32], [3 x i32]* %imin479, i32 0, i64 2
  %343 = load i32, i32* %arrayidx480, align 4
  %sub481 = sub nsw i32 %341, %343
  %344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax482 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %344, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [3 x i32], [3 x i32]* %imax482, i32 0, i64 1
  %345 = load i32, i32* %arrayidx483, align 4
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin484 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [3 x i32], [3 x i32]* %imin484, i32 0, i64 1
  %347 = load i32, i32* %arrayidx485, align 4
  %sub486 = sub nsw i32 %345, %347
  %add487 = add nsw i32 %sub486, 1
  %cmp488 = icmp slt i32 0, %add487
  br i1 %cmp488, label %cond.true.489, label %cond.false.496

cond.true.489:                                    ; preds = %cond.end.465
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax490 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [3 x i32], [3 x i32]* %imax490, i32 0, i64 1
  %349 = load i32, i32* %arrayidx491, align 4
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin492 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [3 x i32], [3 x i32]* %imin492, i32 0, i64 1
  %351 = load i32, i32* %arrayidx493, align 4
  %sub494 = sub nsw i32 %349, %351
  %add495 = add nsw i32 %sub494, 1
  br label %cond.end.497

cond.false.496:                                   ; preds = %cond.end.465
  br label %cond.end.497

cond.end.497:                                     ; preds = %cond.false.496, %cond.true.489
  %cond498 = phi i32 [ %add495, %cond.true.489 ], [ 0, %cond.false.496 ]
  %mul499 = mul nsw i32 %sub481, %cond498
  %add500 = add nsw i32 %sub477, %mul499
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax501 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %352, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [3 x i32], [3 x i32]* %imax501, i32 0, i64 0
  %353 = load i32, i32* %arrayidx502, align 4
  %354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin503 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %354, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [3 x i32], [3 x i32]* %imin503, i32 0, i64 0
  %355 = load i32, i32* %arrayidx504, align 4
  %sub505 = sub nsw i32 %353, %355
  %add506 = add nsw i32 %sub505, 1
  %cmp507 = icmp slt i32 0, %add506
  br i1 %cmp507, label %cond.true.508, label %cond.false.515

cond.true.508:                                    ; preds = %cond.end.497
  %356 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax509 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %356, i32 0, i32 1
  %arrayidx510 = getelementptr inbounds [3 x i32], [3 x i32]* %imax509, i32 0, i64 0
  %357 = load i32, i32* %arrayidx510, align 4
  %358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin511 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %358, i32 0, i32 0
  %arrayidx512 = getelementptr inbounds [3 x i32], [3 x i32]* %imin511, i32 0, i64 0
  %359 = load i32, i32* %arrayidx512, align 4
  %sub513 = sub nsw i32 %357, %359
  %add514 = add nsw i32 %sub513, 1
  br label %cond.end.516

cond.false.515:                                   ; preds = %cond.end.497
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.false.515, %cond.true.508
  %cond517 = phi i32 [ %add514, %cond.true.508 ], [ 0, %cond.false.515 ]
  %mul518 = mul nsw i32 %add500, %cond517
  %add519 = add nsw i32 %sub473, %mul518
  store i32 %add519, i32* %hypre__i2start469, align 4
  %arrayidx521 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  %360 = load i32, i32* %arrayidx521, align 4
  store i32 %360, i32* %hypre__sx1520, align 4
  %arrayidx523 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  %361 = load i32, i32* %arrayidx523, align 4
  %362 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax524 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %362, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %imax524, i32 0, i64 0
  %363 = load i32, i32* %arrayidx525, align 4
  %364 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %364, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imin526, i32 0, i64 0
  %365 = load i32, i32* %arrayidx527, align 4
  %sub528 = sub nsw i32 %363, %365
  %add529 = add nsw i32 %sub528, 1
  %cmp530 = icmp slt i32 0, %add529
  br i1 %cmp530, label %cond.true.531, label %cond.false.538

cond.true.531:                                    ; preds = %cond.end.516
  %366 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax532 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %366, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %imax532, i32 0, i64 0
  %367 = load i32, i32* %arrayidx533, align 4
  %368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %368, i32 0, i32 0
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %imin534, i32 0, i64 0
  %369 = load i32, i32* %arrayidx535, align 4
  %sub536 = sub nsw i32 %367, %369
  %add537 = add nsw i32 %sub536, 1
  br label %cond.end.539

cond.false.538:                                   ; preds = %cond.end.516
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.538, %cond.true.531
  %cond540 = phi i32 [ %add537, %cond.true.531 ], [ 0, %cond.false.538 ]
  %mul541 = mul nsw i32 %361, %cond540
  store i32 %mul541, i32* %hypre__sy1522, align 4
  %arrayidx543 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  %370 = load i32, i32* %arrayidx543, align 4
  %371 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax544 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %371, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [3 x i32], [3 x i32]* %imax544, i32 0, i64 0
  %372 = load i32, i32* %arrayidx545, align 4
  %373 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin546 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %373, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [3 x i32], [3 x i32]* %imin546, i32 0, i64 0
  %374 = load i32, i32* %arrayidx547, align 4
  %sub548 = sub nsw i32 %372, %374
  %add549 = add nsw i32 %sub548, 1
  %cmp550 = icmp slt i32 0, %add549
  br i1 %cmp550, label %cond.true.551, label %cond.false.558

cond.true.551:                                    ; preds = %cond.end.539
  %375 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax552 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %375, i32 0, i32 1
  %arrayidx553 = getelementptr inbounds [3 x i32], [3 x i32]* %imax552, i32 0, i64 0
  %376 = load i32, i32* %arrayidx553, align 4
  %377 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin554 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %377, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [3 x i32], [3 x i32]* %imin554, i32 0, i64 0
  %378 = load i32, i32* %arrayidx555, align 4
  %sub556 = sub nsw i32 %376, %378
  %add557 = add nsw i32 %sub556, 1
  br label %cond.end.559

cond.false.558:                                   ; preds = %cond.end.539
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.558, %cond.true.551
  %cond560 = phi i32 [ %add557, %cond.true.551 ], [ 0, %cond.false.558 ]
  %mul561 = mul nsw i32 %370, %cond560
  %379 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax562 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %379, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [3 x i32], [3 x i32]* %imax562, i32 0, i64 1
  %380 = load i32, i32* %arrayidx563, align 4
  %381 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin564 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %381, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [3 x i32], [3 x i32]* %imin564, i32 0, i64 1
  %382 = load i32, i32* %arrayidx565, align 4
  %sub566 = sub nsw i32 %380, %382
  %add567 = add nsw i32 %sub566, 1
  %cmp568 = icmp slt i32 0, %add567
  br i1 %cmp568, label %cond.true.569, label %cond.false.576

cond.true.569:                                    ; preds = %cond.end.559
  %383 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax570 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %383, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [3 x i32], [3 x i32]* %imax570, i32 0, i64 1
  %384 = load i32, i32* %arrayidx571, align 4
  %385 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin572 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %385, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [3 x i32], [3 x i32]* %imin572, i32 0, i64 1
  %386 = load i32, i32* %arrayidx573, align 4
  %sub574 = sub nsw i32 %384, %386
  %add575 = add nsw i32 %sub574, 1
  br label %cond.end.577

cond.false.576:                                   ; preds = %cond.end.559
  br label %cond.end.577

cond.end.577:                                     ; preds = %cond.false.576, %cond.true.569
  %cond578 = phi i32 [ %add575, %cond.true.569 ], [ 0, %cond.false.576 ]
  %mul579 = mul nsw i32 %mul561, %cond578
  store i32 %mul579, i32* %hypre__sz1542, align 4
  %arrayidx581 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  %387 = load i32, i32* %arrayidx581, align 4
  store i32 %387, i32* %hypre__sx2580, align 4
  %arrayidx583 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  %388 = load i32, i32* %arrayidx583, align 4
  %389 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax584 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %389, i32 0, i32 1
  %arrayidx585 = getelementptr inbounds [3 x i32], [3 x i32]* %imax584, i32 0, i64 0
  %390 = load i32, i32* %arrayidx585, align 4
  %391 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin586 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %391, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [3 x i32], [3 x i32]* %imin586, i32 0, i64 0
  %392 = load i32, i32* %arrayidx587, align 4
  %sub588 = sub nsw i32 %390, %392
  %add589 = add nsw i32 %sub588, 1
  %cmp590 = icmp slt i32 0, %add589
  br i1 %cmp590, label %cond.true.591, label %cond.false.598

cond.true.591:                                    ; preds = %cond.end.577
  %393 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax592 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %393, i32 0, i32 1
  %arrayidx593 = getelementptr inbounds [3 x i32], [3 x i32]* %imax592, i32 0, i64 0
  %394 = load i32, i32* %arrayidx593, align 4
  %395 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin594 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %395, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [3 x i32], [3 x i32]* %imin594, i32 0, i64 0
  %396 = load i32, i32* %arrayidx595, align 4
  %sub596 = sub nsw i32 %394, %396
  %add597 = add nsw i32 %sub596, 1
  br label %cond.end.599

cond.false.598:                                   ; preds = %cond.end.577
  br label %cond.end.599

cond.end.599:                                     ; preds = %cond.false.598, %cond.true.591
  %cond600 = phi i32 [ %add597, %cond.true.591 ], [ 0, %cond.false.598 ]
  %mul601 = mul nsw i32 %388, %cond600
  store i32 %mul601, i32* %hypre__sy2582, align 4
  %arrayidx603 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  %397 = load i32, i32* %arrayidx603, align 4
  %398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax604 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %398, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [3 x i32], [3 x i32]* %imax604, i32 0, i64 0
  %399 = load i32, i32* %arrayidx605, align 4
  %400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %400, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x i32], [3 x i32]* %imin606, i32 0, i64 0
  %401 = load i32, i32* %arrayidx607, align 4
  %sub608 = sub nsw i32 %399, %401
  %add609 = add nsw i32 %sub608, 1
  %cmp610 = icmp slt i32 0, %add609
  br i1 %cmp610, label %cond.true.611, label %cond.false.618

cond.true.611:                                    ; preds = %cond.end.599
  %402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax612 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %402, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [3 x i32], [3 x i32]* %imax612, i32 0, i64 0
  %403 = load i32, i32* %arrayidx613, align 4
  %404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %404, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [3 x i32], [3 x i32]* %imin614, i32 0, i64 0
  %405 = load i32, i32* %arrayidx615, align 4
  %sub616 = sub nsw i32 %403, %405
  %add617 = add nsw i32 %sub616, 1
  br label %cond.end.619

cond.false.618:                                   ; preds = %cond.end.599
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.618, %cond.true.611
  %cond620 = phi i32 [ %add617, %cond.true.611 ], [ 0, %cond.false.618 ]
  %mul621 = mul nsw i32 %397, %cond620
  %406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax622 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %406, i32 0, i32 1
  %arrayidx623 = getelementptr inbounds [3 x i32], [3 x i32]* %imax622, i32 0, i64 1
  %407 = load i32, i32* %arrayidx623, align 4
  %408 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %408, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [3 x i32], [3 x i32]* %imin624, i32 0, i64 1
  %409 = load i32, i32* %arrayidx625, align 4
  %sub626 = sub nsw i32 %407, %409
  %add627 = add nsw i32 %sub626, 1
  %cmp628 = icmp slt i32 0, %add627
  br i1 %cmp628, label %cond.true.629, label %cond.false.636

cond.true.629:                                    ; preds = %cond.end.619
  %410 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax630 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %410, i32 0, i32 1
  %arrayidx631 = getelementptr inbounds [3 x i32], [3 x i32]* %imax630, i32 0, i64 1
  %411 = load i32, i32* %arrayidx631, align 4
  %412 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin632 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %412, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [3 x i32], [3 x i32]* %imin632, i32 0, i64 1
  %413 = load i32, i32* %arrayidx633, align 4
  %sub634 = sub nsw i32 %411, %413
  %add635 = add nsw i32 %sub634, 1
  br label %cond.end.637

cond.false.636:                                   ; preds = %cond.end.619
  br label %cond.end.637

cond.end.637:                                     ; preds = %cond.false.636, %cond.true.629
  %cond638 = phi i32 [ %add635, %cond.true.629 ], [ 0, %cond.false.636 ]
  %mul639 = mul nsw i32 %mul621, %cond638
  store i32 %mul639, i32* %hypre__sz2602, align 4
  %arrayidx641 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %414 = load i32, i32* %arrayidx641, align 4
  store i32 %414, i32* %hypre__nx640, align 4
  %arrayidx643 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %415 = load i32, i32* %arrayidx643, align 4
  store i32 %415, i32* %hypre__ny642, align 4
  %arrayidx645 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %416 = load i32, i32* %arrayidx645, align 4
  store i32 %416, i32* %hypre__nz644, align 4
  %417 = load i32, i32* %hypre__nx640, align 4
  store i32 %417, i32* %hypre__mx646, align 4
  %418 = load i32, i32* %hypre__ny642, align 4
  store i32 %418, i32* %hypre__my647, align 4
  %419 = load i32, i32* %hypre__nz644, align 4
  store i32 %419, i32* %hypre__mz648, align 4
  store i32 0, i32* %hypre__dir649, align 4
  %420 = load i32, i32* %hypre__nx640, align 4
  store i32 %420, i32* %hypre__max650, align 4
  %421 = load i32, i32* %hypre__ny642, align 4
  %422 = load i32, i32* %hypre__max650, align 4
  %cmp655 = icmp sgt i32 %421, %422
  br i1 %cmp655, label %if.then.656, label %if.end.657

if.then.656:                                      ; preds = %cond.end.637
  store i32 1, i32* %hypre__dir649, align 4
  %423 = load i32, i32* %hypre__ny642, align 4
  store i32 %423, i32* %hypre__max650, align 4
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.656, %cond.end.637
  %424 = load i32, i32* %hypre__nz644, align 4
  %425 = load i32, i32* %hypre__max650, align 4
  %cmp658 = icmp sgt i32 %424, %425
  br i1 %cmp658, label %if.then.659, label %if.end.660

if.then.659:                                      ; preds = %if.end.657
  store i32 2, i32* %hypre__dir649, align 4
  %426 = load i32, i32* %hypre__nz644, align 4
  store i32 %426, i32* %hypre__max650, align 4
  br label %if.end.660

if.end.660:                                       ; preds = %if.then.659, %if.end.657
  store i32 1, i32* %hypre__num_blocks654, align 4
  %427 = load i32, i32* %hypre__max650, align 4
  %428 = load i32, i32* %hypre__num_blocks654, align 4
  %cmp661 = icmp slt i32 %427, %428
  br i1 %cmp661, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.660
  %429 = load i32, i32* %hypre__max650, align 4
  store i32 %429, i32* %hypre__num_blocks654, align 4
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.662, %if.end.660
  %430 = load i32, i32* %hypre__num_blocks654, align 4
  %cmp664 = icmp sgt i32 %430, 0
  br i1 %cmp664, label %if.then.665, label %if.end.668

if.then.665:                                      ; preds = %if.end.663
  %431 = load i32, i32* %hypre__max650, align 4
  %432 = load i32, i32* %hypre__num_blocks654, align 4
  %div666 = sdiv i32 %431, %432
  store i32 %div666, i32* %hypre__div651, align 4
  %433 = load i32, i32* %hypre__max650, align 4
  %434 = load i32, i32* %hypre__num_blocks654, align 4
  %rem667 = srem i32 %433, %434
  store i32 %rem667, i32* %hypre__mod652, align 4
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.665, %if.end.663
  store i32 0, i32* %hypre__block653, align 4
  br label %for.cond.669

for.cond.669:                                     ; preds = %for.inc.764, %if.end.668
  %435 = load i32, i32* %hypre__block653, align 4
  %436 = load i32, i32* %hypre__num_blocks654, align 4
  %cmp670 = icmp slt i32 %435, %436
  br i1 %cmp670, label %for.body.671, label %for.end.766

for.body.671:                                     ; preds = %for.cond.669
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %437 = load i32, i32* %hypre__mx646, align 4
  store i32 %437, i32* %hypre__nx640, align 4
  %438 = load i32, i32* %hypre__my647, align 4
  store i32 %438, i32* %hypre__ny642, align 4
  %439 = load i32, i32* %hypre__mz648, align 4
  store i32 %439, i32* %hypre__nz644, align 4
  %440 = load i32, i32* %hypre__num_blocks654, align 4
  %cmp672 = icmp sgt i32 %440, 1
  br i1 %cmp672, label %if.then.673, label %if.end.715

if.then.673:                                      ; preds = %for.body.671
  %441 = load i32, i32* %hypre__dir649, align 4
  %cmp674 = icmp eq i32 %441, 0
  br i1 %cmp674, label %if.then.675, label %if.else.686

if.then.675:                                      ; preds = %if.then.673
  %442 = load i32, i32* %hypre__block653, align 4
  %443 = load i32, i32* %hypre__div651, align 4
  %mul676 = mul nsw i32 %442, %443
  %444 = load i32, i32* %hypre__mod652, align 4
  %445 = load i32, i32* %hypre__block653, align 4
  %cmp677 = icmp slt i32 %444, %445
  br i1 %cmp677, label %cond.true.678, label %cond.false.679

cond.true.678:                                    ; preds = %if.then.675
  %446 = load i32, i32* %hypre__mod652, align 4
  br label %cond.end.680

cond.false.679:                                   ; preds = %if.then.675
  %447 = load i32, i32* %hypre__block653, align 4
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.679, %cond.true.678
  %cond681 = phi i32 [ %446, %cond.true.678 ], [ %447, %cond.false.679 ]
  %add682 = add nsw i32 %mul676, %cond681
  store i32 %add682, i32* %loopi, align 4
  %448 = load i32, i32* %hypre__div651, align 4
  %449 = load i32, i32* %hypre__mod652, align 4
  %450 = load i32, i32* %hypre__block653, align 4
  %cmp683 = icmp sgt i32 %449, %450
  %cond684 = select i1 %cmp683, i32 1, i32 0
  %add685 = add nsw i32 %448, %cond684
  store i32 %add685, i32* %hypre__nx640, align 4
  br label %if.end.714

if.else.686:                                      ; preds = %if.then.673
  %451 = load i32, i32* %hypre__dir649, align 4
  %cmp687 = icmp eq i32 %451, 1
  br i1 %cmp687, label %if.then.688, label %if.else.699

if.then.688:                                      ; preds = %if.else.686
  %452 = load i32, i32* %hypre__block653, align 4
  %453 = load i32, i32* %hypre__div651, align 4
  %mul689 = mul nsw i32 %452, %453
  %454 = load i32, i32* %hypre__mod652, align 4
  %455 = load i32, i32* %hypre__block653, align 4
  %cmp690 = icmp slt i32 %454, %455
  br i1 %cmp690, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %if.then.688
  %456 = load i32, i32* %hypre__mod652, align 4
  br label %cond.end.693

cond.false.692:                                   ; preds = %if.then.688
  %457 = load i32, i32* %hypre__block653, align 4
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.692, %cond.true.691
  %cond694 = phi i32 [ %456, %cond.true.691 ], [ %457, %cond.false.692 ]
  %add695 = add nsw i32 %mul689, %cond694
  store i32 %add695, i32* %loopj, align 4
  %458 = load i32, i32* %hypre__div651, align 4
  %459 = load i32, i32* %hypre__mod652, align 4
  %460 = load i32, i32* %hypre__block653, align 4
  %cmp696 = icmp sgt i32 %459, %460
  %cond697 = select i1 %cmp696, i32 1, i32 0
  %add698 = add nsw i32 %458, %cond697
  store i32 %add698, i32* %hypre__ny642, align 4
  br label %if.end.713

if.else.699:                                      ; preds = %if.else.686
  %461 = load i32, i32* %hypre__dir649, align 4
  %cmp700 = icmp eq i32 %461, 2
  br i1 %cmp700, label %if.then.701, label %if.end.712

if.then.701:                                      ; preds = %if.else.699
  %462 = load i32, i32* %hypre__block653, align 4
  %463 = load i32, i32* %hypre__div651, align 4
  %mul702 = mul nsw i32 %462, %463
  %464 = load i32, i32* %hypre__mod652, align 4
  %465 = load i32, i32* %hypre__block653, align 4
  %cmp703 = icmp slt i32 %464, %465
  br i1 %cmp703, label %cond.true.704, label %cond.false.705

cond.true.704:                                    ; preds = %if.then.701
  %466 = load i32, i32* %hypre__mod652, align 4
  br label %cond.end.706

cond.false.705:                                   ; preds = %if.then.701
  %467 = load i32, i32* %hypre__block653, align 4
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.705, %cond.true.704
  %cond707 = phi i32 [ %466, %cond.true.704 ], [ %467, %cond.false.705 ]
  %add708 = add nsw i32 %mul702, %cond707
  store i32 %add708, i32* %loopk, align 4
  %468 = load i32, i32* %hypre__div651, align 4
  %469 = load i32, i32* %hypre__mod652, align 4
  %470 = load i32, i32* %hypre__block653, align 4
  %cmp709 = icmp sgt i32 %469, %470
  %cond710 = select i1 %cmp709, i32 1, i32 0
  %add711 = add nsw i32 %468, %cond710
  store i32 %add711, i32* %hypre__nz644, align 4
  br label %if.end.712

if.end.712:                                       ; preds = %cond.end.706, %if.else.699
  br label %if.end.713

if.end.713:                                       ; preds = %if.end.712, %cond.end.693
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %cond.end.680
  br label %if.end.715

if.end.715:                                       ; preds = %if.end.714, %for.body.671
  %471 = load i32, i32* %hypre__i1start418, align 4
  %472 = load i32, i32* %loopi, align 4
  %473 = load i32, i32* %hypre__sx1520, align 4
  %mul716 = mul nsw i32 %472, %473
  %add717 = add nsw i32 %471, %mul716
  %474 = load i32, i32* %loopj, align 4
  %475 = load i32, i32* %hypre__sy1522, align 4
  %mul718 = mul nsw i32 %474, %475
  %add719 = add nsw i32 %add717, %mul718
  %476 = load i32, i32* %loopk, align 4
  %477 = load i32, i32* %hypre__sz1542, align 4
  %mul720 = mul nsw i32 %476, %477
  %add721 = add nsw i32 %add719, %mul720
  store i32 %add721, i32* %datai, align 4
  %478 = load i32, i32* %hypre__i2start469, align 4
  %479 = load i32, i32* %loopi, align 4
  %480 = load i32, i32* %hypre__sx2580, align 4
  %mul722 = mul nsw i32 %479, %480
  %add723 = add nsw i32 %478, %mul722
  %481 = load i32, i32* %loopj, align 4
  %482 = load i32, i32* %hypre__sy2582, align 4
  %mul724 = mul nsw i32 %481, %482
  %add725 = add nsw i32 %add723, %mul724
  %483 = load i32, i32* %loopk, align 4
  %484 = load i32, i32* %hypre__sz2602, align 4
  %mul726 = mul nsw i32 %483, %484
  %add727 = add nsw i32 %add725, %mul726
  store i32 %add727, i32* %dvali, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.728

for.cond.728:                                     ; preds = %for.inc.761, %if.end.715
  %485 = load i32, i32* %loopk, align 4
  %486 = load i32, i32* %hypre__nz644, align 4
  %cmp729 = icmp slt i32 %485, %486
  br i1 %cmp729, label %for.body.730, label %for.end.763

for.body.730:                                     ; preds = %for.cond.728
  store i32 0, i32* %loopj, align 4
  br label %for.cond.731

for.cond.731:                                     ; preds = %for.inc.752, %for.body.730
  %487 = load i32, i32* %loopj, align 4
  %488 = load i32, i32* %hypre__ny642, align 4
  %cmp732 = icmp slt i32 %487, %488
  br i1 %cmp732, label %for.body.733, label %for.end.754

for.body.733:                                     ; preds = %for.cond.731
  store i32 0, i32* %loopi, align 4
  br label %for.cond.734

for.cond.734:                                     ; preds = %for.inc.743, %for.body.733
  %489 = load i32, i32* %loopi, align 4
  %490 = load i32, i32* %hypre__nx640, align 4
  %cmp735 = icmp slt i32 %489, %490
  br i1 %cmp735, label %for.body.736, label %for.end.745

for.body.736:                                     ; preds = %for.cond.734
  %491 = load i32, i32* %dvali, align 4
  %idxprom737 = sext i32 %491 to i64
  %492 = load double*, double** %values.addr, align 8
  %arrayidx738 = getelementptr inbounds double, double* %492, i64 %idxprom737
  %493 = load double, double* %arrayidx738, align 8
  %494 = load i32, i32* %datai, align 4
  %idxprom739 = sext i32 %494 to i64
  %495 = load double*, double** %datap, align 8
  %arrayidx740 = getelementptr inbounds double, double* %495, i64 %idxprom739
  store double %493, double* %arrayidx740, align 8
  %496 = load i32, i32* %hypre__sx1520, align 4
  %497 = load i32, i32* %datai, align 4
  %add741 = add nsw i32 %497, %496
  store i32 %add741, i32* %datai, align 4
  %498 = load i32, i32* %hypre__sx2580, align 4
  %499 = load i32, i32* %dvali, align 4
  %add742 = add nsw i32 %499, %498
  store i32 %add742, i32* %dvali, align 4
  br label %for.inc.743

for.inc.743:                                      ; preds = %for.body.736
  %500 = load i32, i32* %loopi, align 4
  %inc744 = add nsw i32 %500, 1
  store i32 %inc744, i32* %loopi, align 4
  br label %for.cond.734

for.end.745:                                      ; preds = %for.cond.734
  %501 = load i32, i32* %hypre__sy1522, align 4
  %502 = load i32, i32* %hypre__nx640, align 4
  %503 = load i32, i32* %hypre__sx1520, align 4
  %mul746 = mul nsw i32 %502, %503
  %sub747 = sub nsw i32 %501, %mul746
  %504 = load i32, i32* %datai, align 4
  %add748 = add nsw i32 %504, %sub747
  store i32 %add748, i32* %datai, align 4
  %505 = load i32, i32* %hypre__sy2582, align 4
  %506 = load i32, i32* %hypre__nx640, align 4
  %507 = load i32, i32* %hypre__sx2580, align 4
  %mul749 = mul nsw i32 %506, %507
  %sub750 = sub nsw i32 %505, %mul749
  %508 = load i32, i32* %dvali, align 4
  %add751 = add nsw i32 %508, %sub750
  store i32 %add751, i32* %dvali, align 4
  br label %for.inc.752

for.inc.752:                                      ; preds = %for.end.745
  %509 = load i32, i32* %loopj, align 4
  %inc753 = add nsw i32 %509, 1
  store i32 %inc753, i32* %loopj, align 4
  br label %for.cond.731

for.end.754:                                      ; preds = %for.cond.731
  %510 = load i32, i32* %hypre__sz1542, align 4
  %511 = load i32, i32* %hypre__ny642, align 4
  %512 = load i32, i32* %hypre__sy1522, align 4
  %mul755 = mul nsw i32 %511, %512
  %sub756 = sub nsw i32 %510, %mul755
  %513 = load i32, i32* %datai, align 4
  %add757 = add nsw i32 %513, %sub756
  store i32 %add757, i32* %datai, align 4
  %514 = load i32, i32* %hypre__sz2602, align 4
  %515 = load i32, i32* %hypre__ny642, align 4
  %516 = load i32, i32* %hypre__sy2582, align 4
  %mul758 = mul nsw i32 %515, %516
  %sub759 = sub nsw i32 %514, %mul758
  %517 = load i32, i32* %dvali, align 4
  %add760 = add nsw i32 %517, %sub759
  store i32 %add760, i32* %dvali, align 4
  br label %for.inc.761

for.inc.761:                                      ; preds = %for.end.754
  %518 = load i32, i32* %loopk, align 4
  %inc762 = add nsw i32 %518, 1
  store i32 %inc762, i32* %loopk, align 4
  br label %for.cond.728

for.end.763:                                      ; preds = %for.cond.728
  br label %for.inc.764

for.inc.764:                                      ; preds = %for.end.763
  %519 = load i32, i32* %hypre__block653, align 4
  %inc765 = add nsw i32 %519, 1
  store i32 %inc765, i32* %hypre__block653, align 4
  br label %for.cond.669

for.end.766:                                      ; preds = %for.cond.669
  br label %if.end.767

if.end.767:                                       ; preds = %for.end.766, %for.end.416
  %arrayidx768 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %520 = load i32, i32* %arrayidx768, align 4
  %inc769 = add nsw i32 %520, 1
  store i32 %inc769, i32* %arrayidx768, align 4
  br label %for.inc.770

for.inc.770:                                      ; preds = %if.end.767
  %521 = load i32, i32* %s, align 4
  %inc771 = add nsw i32 %521, 1
  store i32 %inc771, i32* %s, align 4
  br label %for.cond.82

for.end.772:                                      ; preds = %for.cond.82
  br label %if.end.773

if.end.773:                                       ; preds = %for.end.772, %for.body.64
  br label %for.inc.774

for.inc.774:                                      ; preds = %if.end.773
  %522 = load i32, i32* %i, align 4
  %inc775 = add nsw i32 %522, 1
  store i32 %inc775, i32* %i, align 4
  br label %for.cond.61

for.end.776:                                      ; preds = %for.cond.61
  %523 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %call777 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %523)
  br label %if.end.778

if.end.778:                                       ; preds = %for.end.776, %for.end
  %524 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %call779 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %524)
  %525 = load i32, i32* %ierr, align 4
  ret i32 %525
}

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct*, %struct.hypre_Box_struct*, %struct.hypre_Box_struct*) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %ierr = alloca i32, align 4
  %num_ghost = alloca i32*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %unit_stride = alloca [3 x i32], align 4
  %comm_pkg = alloca %struct.hypre_CommPkg_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_ghost1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 12
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost1, i32 0, i32 0
  store i32* %arraydecay, i32** %num_ghost, align 8
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm_pkg2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 14
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg2, align 8
  store %struct.hypre_CommPkg_struct* %2, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %3 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %tobool = icmp ne %struct.hypre_CommPkg_struct* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx4, align 4
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 1
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %6 = load i32*, i32** %num_ghost, align 8
  %call = call i32 @hypre_CreateCommInfoFromNumGhost(%struct.hypre_StructGrid_struct* %5, i32* %6, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes)
  %7 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %8 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 5
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %11 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space7 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %11, i32 0, i32 5
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space7, align 8
  %13 = load i32**, i32*** %send_processes, align 8
  %14 = load i32**, i32*** %recv_processes, align 8
  %15 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_values = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %15, i32 0, i32 4
  %16 = load i32, i32* %num_values, align 4
  %17 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %comm, align 4
  %19 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid8 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %19, i32 0, i32 1
  %20 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid8, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %20, i32 0, i32 9
  %arraydecay9 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i32 0
  %call10 = call %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct* %7, %struct.hypre_BoxArrayArray_struct* %8, i32* %arraydecay5, i32* %arraydecay6, %struct.hypre_BoxArray_struct* %10, %struct.hypre_BoxArray_struct* %12, i32** %13, i32** %14, i32 %16, i32 %18, i32* %arraydecay9)
  store %struct.hypre_CommPkg_struct* %call10, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %21 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm_pkg11 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %22, i32 0, i32 14
  store %struct.hypre_CommPkg_struct* %21, %struct.hypre_CommPkg_struct** %comm_pkg11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %24 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %24, i32 0, i32 6
  %25 = load double*, double** %data, align 8
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data12 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %26, i32 0, i32 6
  %27 = load double*, double** %data12, align 8
  %call13 = call i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct* %23, double* %25, double* %27, %struct.hypre_CommHandle_struct** %comm_handle)
  %28 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call14 = call i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct* %28)
  %29 = load i32, i32* %ierr, align 4
  ret i32 %29
}

declare i32 @hypre_CreateCommInfoFromNumGhost(%struct.hypre_StructGrid_struct*, i32*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***) #1

declare %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32**, i32**, i32, i32, i32*) #1

declare i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct*, double*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %matrix, i32* %num_ghost) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %num_ghost.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %num_ghost, i32** %num_ghost.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %num_ghost.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_ghost2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 12
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost2, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixPrint(i8* %filename, %struct.hypre_StructMatrix_struct* %matrix, i32 %all) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %all.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %new_filename = alloca [255 x i8], align 16
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %num_values = alloca i32, align 4
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %symm_elements = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %myid = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 %all, i32* %all.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %comm, align 4
  %call = call i32 @hypre_MPI_Comm_rank(i32 %1, i32* %myid)
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i32, i32* %myid, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %2, i32 %3) #2
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %call3 = call %struct._IO_FILE* @fopen(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 10
  %7 = load i32, i32* %symmetric, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid9 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 1
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid9, align 8
  store %struct.hypre_StructGrid_struct* %10, %struct.hypre_StructGrid_struct** %grid, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call10 = call i32 @hypre_StructGridPrint(%struct._IO_FILE* %11, %struct.hypre_StructGrid_struct* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil12 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %14, i32 0, i32 3
  %15 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil12, align 8
  store %struct.hypre_StructStencil_struct* %15, %struct.hypre_StructStencil_struct** %stencil, align 8
  %16 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %16, i32 0, i32 0
  %17 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %17, [3 x i32]** %stencil_shape, align 8
  %18 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_values13 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %18, i32 0, i32 4
  %19 = load i32, i32* %num_values13, align 4
  store i32 %19, i32* %num_values, align 4
  %20 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements14 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %20, i32 0, i32 11
  %21 = load i32*, i32** %symm_elements14, align 8
  store i32* %21, i32** %symm_elements, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %23 = load i32, i32* %num_values, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %23)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %25, i32 0, i32 1
  %26 = load i32, i32* %size, align 4
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i32*, i32** %symm_elements, align 8
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4
  %cmp17 = icmp slt i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %for.body
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %33, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 0
  %34 = load i32, i32* %arrayidx21, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i64 1
  %37 = load i32, i32* %arrayidx24, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i64 2
  %40 = load i32, i32* %arrayidx27, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %31, i32 %34, i32 %37, i32 %40)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %41 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %41, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space31 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %42, i32 0, i32 5
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space31, align 8
  store %struct.hypre_BoxArray_struct* %43, %struct.hypre_BoxArray_struct** %data_space, align 8
  %44 = load i32, i32* %all.addr, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.end
  %45 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  store %struct.hypre_BoxArray_struct* %45, %struct.hypre_BoxArray_struct** %boxes, align 8
  br label %if.end.34

if.else:                                          ; preds = %for.end
  %46 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes33 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %46, i32 0, i32 2
  %47 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes33, align 8
  store %struct.hypre_BoxArray_struct* %47, %struct.hypre_BoxArray_struct** %boxes, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %50 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %52 = load i32, i32* %num_values, align 4
  %53 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %53, i32 0, i32 6
  %54 = load double*, double** %data, align 8
  %call36 = call i32 @hypre_PrintBoxArrayData(%struct._IO_FILE* %49, %struct.hypre_BoxArray_struct* %50, %struct.hypre_BoxArray_struct* %51, i32 %52, double* %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %56)
  %57 = load i32, i32* %ierr, align 4
  ret i32 %57
}

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @hypre_StructGridPrint(%struct._IO_FILE*, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_PrintBoxArrayData(%struct._IO_FILE*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32, double*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatrixMigrate(%struct.hypre_StructMatrix_struct* %from_matrix, %struct.hypre_StructMatrix_struct* %to_matrix) #0 {
entry:
  %from_matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %to_matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %unit_stride = alloca [3 x i32], align 4
  %comm_pkg = alloca %struct.hypre_CommPkg_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %from_matrix, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  store %struct.hypre_StructMatrix_struct* %to_matrix, %struct.hypre_StructMatrix_struct** %to_matrix.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %to_matrix.addr, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid3, align 8
  %call = call i32 @hypre_CreateCommInfoFromGrids(%struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct* %3, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes)
  %4 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %5 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 5
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %to_matrix.addr, align 8
  %data_space5 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %8, i32 0, i32 5
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space5, align 8
  %10 = load i32**, i32*** %send_processes, align 8
  %11 = load i32**, i32*** %recv_processes, align 8
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %num_values = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %num_values, align 4
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %comm, align 4
  %16 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %grid6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %16, i32 0, i32 1
  %17 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid6, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %17, i32 0, i32 9
  %arraydecay7 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i32 0
  %call8 = call %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct* %4, %struct.hypre_BoxArrayArray_struct* %5, i32* %arraydecay, i32* %arraydecay4, %struct.hypre_BoxArray_struct* %7, %struct.hypre_BoxArray_struct* %9, i32** %10, i32** %11, i32 %13, i32 %15, i32* %arraydecay7)
  store %struct.hypre_CommPkg_struct* %call8, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %18 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %19 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %from_matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %19, i32 0, i32 6
  %20 = load double*, double** %data, align 8
  %21 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %to_matrix.addr, align 8
  %data9 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %21, i32 0, i32 6
  %22 = load double*, double** %data9, align 8
  %call10 = call i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct* %18, double* %20, double* %22, %struct.hypre_CommHandle_struct** %comm_handle)
  %23 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call11 = call i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct* %23)
  %24 = load i32, i32* %ierr, align 4
  ret i32 %24
}

declare i32 @hypre_CreateCommInfoFromGrids(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRead(i32 %comm, i8* %filename, i32* %num_ghost) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %num_ghost.addr = alloca i32*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %new_filename = alloca [255 x i8], align 16
  %matrix = alloca %struct.hypre_StructMatrix_struct*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %dim = alloca i32, align 4
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %num_values = alloca i32, align 4
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %symmetric = alloca i32, align 4
  %i = alloca i32, align 4
  %idummy = alloca i32, align 4
  %myid = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %num_ghost, i32** %num_ghost.addr, align 8
  %0 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Comm_rank(i32 %0, i32* %myid)
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %myid, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %2) #2
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %call3 = call %struct._IO_FILE* @fopen(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32* %symmetric)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %6 = load i32, i32* %comm.addr, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call9 = call i32 @hypre_StructGridRead(i32 %6, %struct._IO_FILE* %7, %struct.hypre_StructGrid_struct** %grid)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim11 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %dim11, align 4
  store i32 %10, i32* %dim, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32* %stencil_size)
  %12 = load i32, i32* %stencil_size, align 4
  %call13 = call i8* @hypre_CAlloc(i32 %12, i32 12)
  %13 = bitcast i8* %call13 to [3 x i32]*
  store [3 x i32]* %13, [3 x i32]** %stencil_shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %stencil_size, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 %idxprom
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17, i32 0, i64 1
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 2
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32* %idummy, i32* %arrayidx15, i32* %arrayidx18, i32* %arrayidx21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %dim, align 4
  %25 = load i32, i32* %stencil_size, align 4
  %26 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %call23 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %24, i32 %25, [3 x i32]* %26)
  store %struct.hypre_StructStencil_struct* %call23, %struct.hypre_StructStencil_struct** %stencil, align 8
  %27 = load i32, i32* %comm.addr, align 4
  %28 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %29 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call24 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %27, %struct.hypre_StructGrid_struct* %28, %struct.hypre_StructStencil_struct* %29)
  store %struct.hypre_StructMatrix_struct* %call24, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %30 = load i32, i32* %symmetric, align 4
  %31 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %symmetric25 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %31, i32 0, i32 10
  store i32 %30, i32* %symmetric25, align 4
  %32 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %33 = load i32*, i32** %num_ghost.addr, align 8
  %call26 = call i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %32, i32* %33)
  %34 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %call27 = call i32 @hypre_StructMatrixInitialize(%struct.hypre_StructMatrix_struct* %34)
  %35 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes28 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %35, i32 0, i32 2
  %36 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes28, align 8
  store %struct.hypre_BoxArray_struct* %36, %struct.hypre_BoxArray_struct** %boxes, align 8
  %37 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %data_space29 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %37, i32 0, i32 5
  %38 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space29, align 8
  store %struct.hypre_BoxArray_struct* %38, %struct.hypre_BoxArray_struct** %data_space, align 8
  %39 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %num_values30 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %39, i32 0, i32 4
  %40 = load i32, i32* %num_values30, align 4
  store i32 %40, i32* %num_values, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %44 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %45 = load i32, i32* %num_values, align 4
  %46 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %46, i32 0, i32 6
  %47 = load double*, double** %data, align 8
  %call32 = call i32 @hypre_ReadBoxArrayData(%struct._IO_FILE* %42, %struct.hypre_BoxArray_struct* %43, %struct.hypre_BoxArray_struct* %44, i32 %45, double* %47)
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  %call33 = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %49)
  %50 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix, align 8
  ret %struct.hypre_StructMatrix_struct* %50
}

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @hypre_StructGridRead(i32, %struct._IO_FILE*, %struct.hypre_StructGrid_struct**) #1

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #1

declare i32 @hypre_ReadBoxArrayData(%struct._IO_FILE*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32, double*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
