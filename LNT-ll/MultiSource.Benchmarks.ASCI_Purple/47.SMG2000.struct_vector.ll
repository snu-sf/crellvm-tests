; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/47.SMG2000.struct_vector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
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
@.str.3 = private unnamed_addr constant [14 x i8] c"StructVector\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0AGrid:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0AData:\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %comm, %struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %vector = alloca %struct.hypre_StructVector_struct*, align 8
  %i = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 80)
  %0 = bitcast i8* %call to %struct.hypre_StructVector_struct*
  store %struct.hypre_StructVector_struct* %0, %struct.hypre_StructVector_struct** %vector, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %comm1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %grid2 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %4, i32 0, i32 1
  %call3 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid2)
  %5 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %5, i32 0, i32 4
  store i32 1, i32* %data_alloced, align 4
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 9
  store i32 1, i32* %ref_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %9, i32 0, i32 7
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  ret %struct.hypre_StructVector_struct* %11
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 9
  %1 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %ref_count, align 4
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  ret %struct.hypre_StructVector_struct* %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %tobool = icmp ne %struct.hypre_StructVector_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1, i32 0, i32 9
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %ref_count1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %ref_count1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %data_alloced, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %7 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %7, i32 0, i32 3
  %8 = load double*, double** %data, align 8
  %9 = bitcast double* %8 to i8*
  call void @hypre_Free(i8* %9)
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data5 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %10, i32 0, i32 3
  store double* null, double** %data5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 6
  %12 = load i32*, i32** %data_indices, align 8
  %13 = bitcast i32* %12 to i8*
  call void @hypre_Free(i8* %13)
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices6 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 6
  store i32* null, i32** %data_indices6, align 8
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %15, i32 0, i32 2
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %16)
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 1
  %18 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call7 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %18)
  %19 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %20 = bitcast %struct.hypre_StructVector_struct* %19 to i8*
  call void @hypre_Free(i8* %20)
  store %struct.hypre_StructVector_struct* null, %struct.hypre_StructVector_struct** %vector.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %21 = load i32, i32* %ierr, align 4
  ret i32 %21
}

declare void @hypre_Free(i8*) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %num_ghost = alloca i32*, align 8
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_indices = alloca i32*, align 8
  %data_size = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct** %grid, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space2 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 2
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space2, align 8
  %cmp = icmp eq %struct.hypre_BoxArray_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %num_ghost3 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %4, i32 0, i32 7
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost3, i32 0, i32 0
  store i32* %arraydecay, i32** %num_ghost, align 8
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %5, i32 0, i32 2
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes4, align 8
  store %struct.hypre_BoxArray_struct* %6, %struct.hypre_BoxArray_struct** %boxes, align 8
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %8)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %data_space, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size5, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 0
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes9 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes9, align 8
  %arrayidx10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i64 %idxprom8
  store %struct.hypre_Box_struct* %arrayidx10, %struct.hypre_Box_struct** %data_box, align 8
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %19 = load i32, i32* %arrayidx11, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imin12, i32 0, i64 0
  store i32 %19, i32* %arrayidx13, align 4
  %21 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %21, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imin14, i32 0, i64 1
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  store i32 %22, i32* %arrayidx17, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imin18, i32 0, i64 2
  %25 = load i32, i32* %arrayidx19, align 4
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imin20, i32 0, i64 2
  store i32 %25, i32* %arrayidx21, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %28 = load i32, i32* %arrayidx22, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax23, i32 0, i64 0
  store i32 %28, i32* %arrayidx24, align 4
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imax25, i32 0, i64 1
  %31 = load i32, i32* %arrayidx26, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imax27, i32 0, i64 1
  store i32 %31, i32* %arrayidx28, align 4
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 2
  %34 = load i32, i32* %arrayidx30, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 2
  store i32 %34, i32* %arrayidx32, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body
  %36 = load i32, i32* %d, align 4
  %cmp34 = icmp slt i32 %36, 3
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %37 = load i32, i32* %d, align 4
  %mul = mul nsw i32 2, %37
  %idxprom36 = sext i32 %mul to i64
  %38 = load i32*, i32** %num_ghost, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %38, i64 %idxprom36
  %39 = load i32, i32* %arrayidx37, align 4
  %40 = load i32, i32* %d, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %imin39, i32 0, i64 %idxprom38
  %42 = load i32, i32* %arrayidx40, align 4
  %sub = sub nsw i32 %42, %39
  store i32 %sub, i32* %arrayidx40, align 4
  %43 = load i32, i32* %d, align 4
  %mul41 = mul nsw i32 2, %43
  %add = add nsw i32 %mul41, 1
  %idxprom42 = sext i32 %add to i64
  %44 = load i32*, i32** %num_ghost, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %44, i64 %idxprom42
  %45 = load i32, i32* %arrayidx43, align 4
  %46 = load i32, i32* %d, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 %idxprom44
  %48 = load i32, i32* %arrayidx46, align 4
  %add47 = add nsw i32 %48, %45
  store i32 %add47, i32* %arrayidx46, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %49 = load i32, i32* %d, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %50, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %52 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space51 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %52, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* %51, %struct.hypre_BoxArray_struct** %data_space51, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.50, %entry
  %53 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices52 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %53, i32 0, i32 6
  %54 = load i32*, i32** %data_indices52, align 8
  %cmp53 = icmp eq i32* %54, null
  br i1 %cmp53, label %if.then.54, label %if.end.122

if.then.54:                                       ; preds = %if.end
  %55 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space55 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %55, i32 0, i32 2
  %56 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space55, align 8
  store %struct.hypre_BoxArray_struct* %56, %struct.hypre_BoxArray_struct** %data_space, align 8
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size56 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %size56, align 4
  %call57 = call i8* @hypre_CAlloc(i32 %58, i32 4)
  %59 = bitcast i8* %call57 to i32*
  store i32* %59, i32** %data_indices, align 8
  store i32 0, i32* %data_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.117, %if.then.54
  %60 = load i32, i32* %i, align 4
  %61 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size59 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %size59, align 4
  %cmp60 = icmp slt i32 %60, %62
  br i1 %cmp60, label %for.body.61, label %for.end.119

for.body.61:                                      ; preds = %for.cond.58
  %63 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %63 to i64
  %64 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes63 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %64, i32 0, i32 0
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i64 %idxprom62
  store %struct.hypre_Box_struct* %arrayidx64, %struct.hypre_Box_struct** %data_box, align 8
  %66 = load i32, i32* %data_size, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load i32*, i32** %data_indices, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %68, i64 %idxprom65
  store i32 %66, i32* %arrayidx66, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imax67, i32 0, i64 0
  %70 = load i32, i32* %arrayidx68, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %imin69, i32 0, i64 0
  %72 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %70, %72
  %add72 = add nsw i32 %sub71, 1
  %cmp73 = icmp slt i32 0, %add72
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.61
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i64 0
  %74 = load i32, i32* %arrayidx75, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 0
  %76 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %74, %76
  %add79 = add nsw i32 %sub78, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add79, %cond.true ], [ 0, %cond.false ]
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imax80, i32 0, i64 1
  %78 = load i32, i32* %arrayidx81, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imin82, i32 0, i64 1
  %80 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %78, %80
  %add85 = add nsw i32 %sub84, 1
  %cmp86 = icmp slt i32 0, %add85
  br i1 %cmp86, label %cond.true.87, label %cond.false.94

cond.true.87:                                     ; preds = %cond.end
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax88, i32 0, i64 1
  %82 = load i32, i32* %arrayidx89, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imin90, i32 0, i64 1
  %84 = load i32, i32* %arrayidx91, align 4
  %sub92 = sub nsw i32 %82, %84
  %add93 = add nsw i32 %sub92, 1
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.87
  %cond96 = phi i32 [ %add93, %cond.true.87 ], [ 0, %cond.false.94 ]
  %mul97 = mul nsw i32 %cond, %cond96
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax98 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %imax98, i32 0, i64 2
  %86 = load i32, i32* %arrayidx99, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin100, i32 0, i64 2
  %88 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %86, %88
  %add103 = add nsw i32 %sub102, 1
  %cmp104 = icmp slt i32 0, %add103
  br i1 %cmp104, label %cond.true.105, label %cond.false.112

cond.true.105:                                    ; preds = %cond.end.95
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %imax106, i32 0, i64 2
  %90 = load i32, i32* %arrayidx107, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin108, i32 0, i64 2
  %92 = load i32, i32* %arrayidx109, align 4
  %sub110 = sub nsw i32 %90, %92
  %add111 = add nsw i32 %sub110, 1
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end.95
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.105
  %cond114 = phi i32 [ %add111, %cond.true.105 ], [ 0, %cond.false.112 ]
  %mul115 = mul nsw i32 %mul97, %cond114
  %93 = load i32, i32* %data_size, align 4
  %add116 = add nsw i32 %93, %mul115
  store i32 %add116, i32* %data_size, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %cond.end.113
  %94 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %94, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.58

for.end.119:                                      ; preds = %for.cond.58
  %95 = load i32*, i32** %data_indices, align 8
  %96 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices120 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %96, i32 0, i32 6
  store i32* %95, i32** %data_indices120, align 8
  %97 = load i32, i32* %data_size, align 4
  %98 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_size121 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %98, i32 0, i32 5
  store i32 %97, i32* %data_size121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %for.end.119, %if.end
  %99 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %99, i32 0, i32 8
  %100 = load i32, i32* %global_size, align 4
  %101 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %global_size123 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %101, i32 0, i32 8
  store i32 %100, i32* %global_size123, align 4
  %102 = load i32, i32* %ierr, align 4
  ret i32 %102
}

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %vector, double* %data) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %data.addr = alloca double*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load double*, double** %data.addr, align 8
  %1 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1, i32 0, i32 3
  store double* %0, double** %data1, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 4
  store i32 0, i32* %data_alloced, align 4
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %data = alloca double*, align 8
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %call = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %0)
  store i32 %call, i32* %ierr, align 4
  %1 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_size = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1, i32 0, i32 5
  %2 = load i32, i32* %data_size, align 4
  %call1 = call i8* @hypre_CAlloc(i32 %2, i32 8)
  %3 = bitcast i8* %call1 to double*
  store double* %3, double** %data, align 8
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %5 = load double*, double** %data, align 8
  %call2 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %4, double* %5)
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 4
  store i32 1, i32* %data_alloced, align 4
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorSetValues(%struct.hypre_StructVector_struct* %vector, i32* %grid_index, double %values, i32 %add_to) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %grid_index.addr = alloca i32*, align 8
  %values.addr = alloca double, align 8
  %add_to.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %vecp = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32* %grid_index, i32** %grid_index.addr, align 8
  store double %values, double* %values.addr, align 8
  store i32 %add_to, i32* %add_to.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

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
  br i1 %cmp5, label %land.lhs.true, label %if.end.121

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %16 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sle i32 %14, %16
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.121

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %17 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %20 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sge i32 %18, %20
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.121

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %21 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 1
  %24 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp sle i32 %22, %24
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.121

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %25 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx20, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 2
  %28 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp sge i32 %26, %28
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.121

land.lhs.true.24:                                 ; preds = %land.lhs.true.19
  %29 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 2
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sle i32 %30, %32
  br i1 %cmp28, label %if.then, label %if.end.121

if.then:                                          ; preds = %land.lhs.true.24
  %33 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %33, i32 0, i32 3
  %34 = load double*, double** %data, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %36, i32 0, i32 6
  %37 = load i32*, i32** %data_indices, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %37, i64 %idxprom29
  %38 = load i32, i32* %arrayidx30, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds double, double* %34, i64 %idx.ext
  %39 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx31, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %41 to i64
  %42 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %42, i32 0, i32 2
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes33 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %43, i32 0, i32 0
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i64 %idxprom32
  %imin35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imin35, i32 0, i64 0
  %45 = load i32, i32* %arrayidx36, align 4
  %sub = sub nsw i32 %40, %45
  %46 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx37, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space39 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %49, i32 0, i32 2
  %50 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space39, align 8
  %boxes40 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %50, i32 0, i32 0
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes40, align 8
  %arrayidx41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i64 %idxprom38
  %imin42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imin42, i32 0, i64 1
  %52 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub nsw i32 %47, %52
  %53 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %arrayidx45, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space47 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %56, i32 0, i32 2
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space47, align 8
  %boxes48 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 0
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes48, align 8
  %arrayidx49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i64 %idxprom46
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 2
  %59 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %54, %59
  %60 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %60 to i64
  %61 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space54 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %61, i32 0, i32 2
  %62 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space54, align 8
  %boxes55 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %62, i32 0, i32 0
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes55, align 8
  %arrayidx56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i64 %idxprom53
  %imax57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx56, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imax57, i32 0, i64 1
  %64 = load i32, i32* %arrayidx58, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space60 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %66, i32 0, i32 2
  %67 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space60, align 8
  %boxes61 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %67, i32 0, i32 0
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes61, align 8
  %arrayidx62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i64 %idxprom59
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 1
  %69 = load i32, i32* %arrayidx64, align 4
  %sub65 = sub nsw i32 %64, %69
  %add = add nsw i32 %sub65, 1
  %cmp66 = icmp slt i32 0, %add
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %70 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space68 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %71, i32 0, i32 2
  %72 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space68, align 8
  %boxes69 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %72, i32 0, i32 0
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes69, align 8
  %arrayidx70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i64 %idxprom67
  %imax71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %imax71, i32 0, i64 1
  %74 = load i32, i32* %arrayidx72, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space74 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %76, i32 0, i32 2
  %77 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space74, align 8
  %boxes75 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %77, i32 0, i32 0
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes75, align 8
  %arrayidx76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i64 %idxprom73
  %imin77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx76, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imin77, i32 0, i64 1
  %79 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %74, %79
  %add80 = add nsw i32 %sub79, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add80, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub52, %cond
  %add81 = add nsw i32 %sub44, %mul
  %80 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %80 to i64
  %81 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space83 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %81, i32 0, i32 2
  %82 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space83, align 8
  %boxes84 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %82, i32 0, i32 0
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes84, align 8
  %arrayidx85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i64 %idxprom82
  %imax86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx85, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imax86, i32 0, i64 0
  %84 = load i32, i32* %arrayidx87, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %85 to i64
  %86 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space89 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %86, i32 0, i32 2
  %87 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space89, align 8
  %boxes90 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %87, i32 0, i32 0
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes90, align 8
  %arrayidx91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i64 %idxprom88
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx91, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i64 0
  %89 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %84, %89
  %add95 = add nsw i32 %sub94, 1
  %cmp96 = icmp slt i32 0, %add95
  br i1 %cmp96, label %cond.true.97, label %cond.false.112

cond.true.97:                                     ; preds = %cond.end
  %90 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %90 to i64
  %91 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space99 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %91, i32 0, i32 2
  %92 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space99, align 8
  %boxes100 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %92, i32 0, i32 0
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes100, align 8
  %arrayidx101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i64 %idxprom98
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 0
  %94 = load i32, i32* %arrayidx103, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %95 to i64
  %96 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space105 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %96, i32 0, i32 2
  %97 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space105, align 8
  %boxes106 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %97, i32 0, i32 0
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes106, align 8
  %arrayidx107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i64 %idxprom104
  %imin108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin108, i32 0, i64 0
  %99 = load i32, i32* %arrayidx109, align 4
  %sub110 = sub nsw i32 %94, %99
  %add111 = add nsw i32 %sub110, 1
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.97
  %cond114 = phi i32 [ %add111, %cond.true.97 ], [ 0, %cond.false.112 ]
  %mul115 = mul nsw i32 %add81, %cond114
  %add116 = add nsw i32 %sub, %mul115
  %idx.ext117 = sext i32 %add116 to i64
  %add.ptr118 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext117
  store double* %add.ptr118, double** %vecp, align 8
  %100 = load i32, i32* %add_to.addr, align 4
  %tobool = icmp ne i32 %100, 0
  br i1 %tobool, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %cond.end.113
  %101 = load double, double* %values.addr, align 8
  %102 = load double*, double** %vecp, align 8
  %103 = load double, double* %102, align 8
  %add120 = fadd double %103, %101
  store double %add120, double* %102, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.113
  %104 = load double, double* %values.addr, align 8
  %105 = load double*, double** %vecp, align 8
  store double %104, double* %105, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.119
  br label %if.end.121

if.end.121:                                       ; preds = %if.end, %land.lhs.true.24, %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %106 = load i32, i32* %i, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load i32, i32* %ierr, align 4
  ret i32 %107
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorSetBoxValues(%struct.hypre_StructVector_struct* %vector, %struct.hypre_Box_struct* %value_box, double* %values, i32 %add_to) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %value_box.addr = alloca %struct.hypre_Box_struct*, align 8
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
  %hypre__i1start399 = alloca i32, align 4
  %hypre__i2start450 = alloca i32, align 4
  %hypre__sx1501 = alloca i32, align 4
  %hypre__sy1503 = alloca i32, align 4
  %hypre__sz1523 = alloca i32, align 4
  %hypre__sx2561 = alloca i32, align 4
  %hypre__sy2563 = alloca i32, align 4
  %hypre__sz2583 = alloca i32, align 4
  %hypre__nx621 = alloca i32, align 4
  %hypre__ny623 = alloca i32, align 4
  %hypre__nz625 = alloca i32, align 4
  %hypre__mx627 = alloca i32, align 4
  %hypre__my628 = alloca i32, align 4
  %hypre__mz629 = alloca i32, align 4
  %hypre__dir630 = alloca i32, align 4
  %hypre__max631 = alloca i32, align 4
  %hypre__div632 = alloca i32, align 4
  %hypre__mod633 = alloca i32, align 4
  %hypre__block634 = alloca i32, align 4
  %hypre__num_blocks635 = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store %struct.hypre_Box_struct* %value_box, %struct.hypre_Box_struct** %value_box.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 %add_to, i32* %add_to.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
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
  br i1 %tobool, label %if.then, label %if.end.754

if.then:                                          ; preds = %for.end
  %47 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space46 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %47, i32 0, i32 2
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
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx53, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.750, %if.then
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size55 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %size55, align 4
  %cmp56 = icmp slt i32 %50, %52
  br i1 %cmp56, label %for.body.57, label %for.end.752

for.body.57:                                      ; preds = %for.cond.54
  %53 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %53 to i64
  %54 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes59 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %54, i32 0, i32 0
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes59, align 8
  %arrayidx60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i64 %idxprom58
  store %struct.hypre_Box_struct* %arrayidx60, %struct.hypre_Box_struct** %box, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %56 to i64
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes62 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 0
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes62, align 8
  %arrayidx63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i64 %idxprom61
  store %struct.hypre_Box_struct* %arrayidx63, %struct.hypre_Box_struct** %data_box, align 8
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %tobool64 = icmp ne %struct.hypre_Box_struct* %59, null
  br i1 %tobool64, label %if.then.65, label %if.end.749

if.then.65:                                       ; preds = %for.body.57
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i32 0
  store i32* %arraydecay, i32** %data_start, align 8
  %61 = load i32*, i32** %data_start, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  store i32 %62, i32* %arrayidx68, align 4
  %63 = load i32*, i32** %data_start, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %63, i64 1
  %64 = load i32, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  store i32 %64, i32* %arrayidx70, align 4
  %65 = load i32*, i32** %data_start, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %65, i64 2
  %66 = load i32, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  store i32 %66, i32* %arrayidx72, align 4
  %67 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %67, i32 0, i32 3
  %68 = load double*, double** %data, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %69 to i64
  %70 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %70, i32 0, i32 6
  %71 = load i32*, i32** %data_indices, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %71, i64 %idxprom73
  %72 = load i32, i32* %arrayidx74, align 4
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds double, double* %68, i64 %idx.ext
  store double* %add.ptr, double** %datap, align 8
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call76 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %73, i32* %arraydecay75)
  %74 = load i32, i32* %add_to.addr, align 4
  %tobool77 = icmp ne i32 %74, 0
  br i1 %tobool77, label %if.then.78, label %if.else.398

if.then.78:                                       ; preds = %if.then.65
  %75 = load i32*, i32** %data_start, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %75, i64 0
  %76 = load i32, i32* %arrayidx79, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imin80, i32 0, i64 0
  %78 = load i32, i32* %arrayidx81, align 4
  %sub = sub nsw i32 %76, %78
  %79 = load i32*, i32** %data_start, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %79, i64 1
  %80 = load i32, i32* %arrayidx82, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imin83, i32 0, i64 1
  %82 = load i32, i32* %arrayidx84, align 4
  %sub85 = sub nsw i32 %80, %82
  %83 = load i32*, i32** %data_start, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %83, i64 2
  %84 = load i32, i32* %arrayidx86, align 4
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imin87, i32 0, i64 2
  %86 = load i32, i32* %arrayidx88, align 4
  %sub89 = sub nsw i32 %84, %86
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imax90, i32 0, i64 1
  %88 = load i32, i32* %arrayidx91, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i64 1
  %90 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %88, %90
  %add = add nsw i32 %sub94, 1
  %cmp95 = icmp slt i32 0, %add
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.78
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imax96, i32 0, i64 1
  %92 = load i32, i32* %arrayidx97, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin98 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %imin98, i32 0, i64 1
  %94 = load i32, i32* %arrayidx99, align 4
  %sub100 = sub nsw i32 %92, %94
  %add101 = add nsw i32 %sub100, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add101, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub89, %cond
  %add102 = add nsw i32 %sub85, %mul
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imax103, i32 0, i64 0
  %96 = load i32, i32* %arrayidx104, align 4
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin105, i32 0, i64 0
  %98 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub nsw i32 %96, %98
  %add108 = add nsw i32 %sub107, 1
  %cmp109 = icmp slt i32 0, %add108
  br i1 %cmp109, label %cond.true.110, label %cond.false.117

cond.true.110:                                    ; preds = %cond.end
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax111, i32 0, i64 0
  %100 = load i32, i32* %arrayidx112, align 4
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin113, i32 0, i64 0
  %102 = load i32, i32* %arrayidx114, align 4
  %sub115 = sub nsw i32 %100, %102
  %add116 = add nsw i32 %sub115, 1
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.end
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.110
  %cond119 = phi i32 [ %add116, %cond.true.110 ], [ 0, %cond.false.117 ]
  %mul120 = mul nsw i32 %add102, %cond119
  %add121 = add nsw i32 %sub, %mul120
  store i32 %add121, i32* %hypre__i1start, align 4
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %103 = load i32, i32* %arrayidx122, align 4
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imin123, i32 0, i64 0
  %105 = load i32, i32* %arrayidx124, align 4
  %sub125 = sub nsw i32 %103, %105
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  %106 = load i32, i32* %arrayidx126, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin127, i32 0, i64 1
  %108 = load i32, i32* %arrayidx128, align 4
  %sub129 = sub nsw i32 %106, %108
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  %109 = load i32, i32* %arrayidx130, align 4
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin131, i32 0, i64 2
  %111 = load i32, i32* %arrayidx132, align 4
  %sub133 = sub nsw i32 %109, %111
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imax134, i32 0, i64 1
  %113 = load i32, i32* %arrayidx135, align 4
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %imin136, i32 0, i64 1
  %115 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %113, %115
  %add139 = add nsw i32 %sub138, 1
  %cmp140 = icmp slt i32 0, %add139
  br i1 %cmp140, label %cond.true.141, label %cond.false.148

cond.true.141:                                    ; preds = %cond.end.118
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 1
  %117 = load i32, i32* %arrayidx143, align 4
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %118, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 1
  %119 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %117, %119
  %add147 = add nsw i32 %sub146, 1
  br label %cond.end.149

cond.false.148:                                   ; preds = %cond.end.118
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.141
  %cond150 = phi i32 [ %add147, %cond.true.141 ], [ 0, %cond.false.148 ]
  %mul151 = mul nsw i32 %sub133, %cond150
  %add152 = add nsw i32 %sub129, %mul151
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 0
  %121 = load i32, i32* %arrayidx154, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin155, i32 0, i64 0
  %123 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %121, %123
  %add158 = add nsw i32 %sub157, 1
  %cmp159 = icmp slt i32 0, %add158
  br i1 %cmp159, label %cond.true.160, label %cond.false.167

cond.true.160:                                    ; preds = %cond.end.149
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 0
  %125 = load i32, i32* %arrayidx162, align 4
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 0
  %127 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %125, %127
  %add166 = add nsw i32 %sub165, 1
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.149
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.160
  %cond169 = phi i32 [ %add166, %cond.true.160 ], [ 0, %cond.false.167 ]
  %mul170 = mul nsw i32 %add152, %cond169
  %add171 = add nsw i32 %sub125, %mul170
  store i32 %add171, i32* %hypre__i2start, align 4
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  %128 = load i32, i32* %arrayidx172, align 4
  store i32 %128, i32* %hypre__sx1, align 4
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  %129 = load i32, i32* %arrayidx173, align 4
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %imax174, i32 0, i64 0
  %131 = load i32, i32* %arrayidx175, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %imin176, i32 0, i64 0
  %133 = load i32, i32* %arrayidx177, align 4
  %sub178 = sub nsw i32 %131, %133
  %add179 = add nsw i32 %sub178, 1
  %cmp180 = icmp slt i32 0, %add179
  br i1 %cmp180, label %cond.true.181, label %cond.false.188

cond.true.181:                                    ; preds = %cond.end.168
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imax182, i32 0, i64 0
  %135 = load i32, i32* %arrayidx183, align 4
  %136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin184 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %136, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [3 x i32], [3 x i32]* %imin184, i32 0, i64 0
  %137 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %135, %137
  %add187 = add nsw i32 %sub186, 1
  br label %cond.end.189

cond.false.188:                                   ; preds = %cond.end.168
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.188, %cond.true.181
  %cond190 = phi i32 [ %add187, %cond.true.181 ], [ 0, %cond.false.188 ]
  %mul191 = mul nsw i32 %129, %cond190
  store i32 %mul191, i32* %hypre__sy1, align 4
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  %138 = load i32, i32* %arrayidx192, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imax193, i32 0, i64 0
  %140 = load i32, i32* %arrayidx194, align 4
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin195 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %141, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %imin195, i32 0, i64 0
  %142 = load i32, i32* %arrayidx196, align 4
  %sub197 = sub nsw i32 %140, %142
  %add198 = add nsw i32 %sub197, 1
  %cmp199 = icmp slt i32 0, %add198
  br i1 %cmp199, label %cond.true.200, label %cond.false.207

cond.true.200:                                    ; preds = %cond.end.189
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 0
  %144 = load i32, i32* %arrayidx202, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin203, i32 0, i64 0
  %146 = load i32, i32* %arrayidx204, align 4
  %sub205 = sub nsw i32 %144, %146
  %add206 = add nsw i32 %sub205, 1
  br label %cond.end.208

cond.false.207:                                   ; preds = %cond.end.189
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.200
  %cond209 = phi i32 [ %add206, %cond.true.200 ], [ 0, %cond.false.207 ]
  %mul210 = mul nsw i32 %138, %cond209
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imax211, i32 0, i64 1
  %148 = load i32, i32* %arrayidx212, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin213 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [3 x i32], [3 x i32]* %imin213, i32 0, i64 1
  %150 = load i32, i32* %arrayidx214, align 4
  %sub215 = sub nsw i32 %148, %150
  %add216 = add nsw i32 %sub215, 1
  %cmp217 = icmp slt i32 0, %add216
  br i1 %cmp217, label %cond.true.218, label %cond.false.225

cond.true.218:                                    ; preds = %cond.end.208
  %151 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %151, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imax219, i32 0, i64 1
  %152 = load i32, i32* %arrayidx220, align 4
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin221 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %imin221, i32 0, i64 1
  %154 = load i32, i32* %arrayidx222, align 4
  %sub223 = sub nsw i32 %152, %154
  %add224 = add nsw i32 %sub223, 1
  br label %cond.end.226

cond.false.225:                                   ; preds = %cond.end.208
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.218
  %cond227 = phi i32 [ %add224, %cond.true.218 ], [ 0, %cond.false.225 ]
  %mul228 = mul nsw i32 %mul210, %cond227
  store i32 %mul228, i32* %hypre__sz1, align 4
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  %155 = load i32, i32* %arrayidx229, align 4
  store i32 %155, i32* %hypre__sx2, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  %156 = load i32, i32* %arrayidx230, align 4
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax231 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %imax231, i32 0, i64 0
  %158 = load i32, i32* %arrayidx232, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin233 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %imin233, i32 0, i64 0
  %160 = load i32, i32* %arrayidx234, align 4
  %sub235 = sub nsw i32 %158, %160
  %add236 = add nsw i32 %sub235, 1
  %cmp237 = icmp slt i32 0, %add236
  br i1 %cmp237, label %cond.true.238, label %cond.false.245

cond.true.238:                                    ; preds = %cond.end.226
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %imax239, i32 0, i64 0
  %162 = load i32, i32* %arrayidx240, align 4
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin241 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [3 x i32], [3 x i32]* %imin241, i32 0, i64 0
  %164 = load i32, i32* %arrayidx242, align 4
  %sub243 = sub nsw i32 %162, %164
  %add244 = add nsw i32 %sub243, 1
  br label %cond.end.246

cond.false.245:                                   ; preds = %cond.end.226
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.238
  %cond247 = phi i32 [ %add244, %cond.true.238 ], [ 0, %cond.false.245 ]
  %mul248 = mul nsw i32 %156, %cond247
  store i32 %mul248, i32* %hypre__sy2, align 4
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  %165 = load i32, i32* %arrayidx249, align 4
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imax250, i32 0, i64 0
  %167 = load i32, i32* %arrayidx251, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imin252, i32 0, i64 0
  %169 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %167, %169
  %add255 = add nsw i32 %sub254, 1
  %cmp256 = icmp slt i32 0, %add255
  br i1 %cmp256, label %cond.true.257, label %cond.false.264

cond.true.257:                                    ; preds = %cond.end.246
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax258, i32 0, i64 0
  %171 = load i32, i32* %arrayidx259, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin260, i32 0, i64 0
  %173 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %171, %173
  %add263 = add nsw i32 %sub262, 1
  br label %cond.end.265

cond.false.264:                                   ; preds = %cond.end.246
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.257
  %cond266 = phi i32 [ %add263, %cond.true.257 ], [ 0, %cond.false.264 ]
  %mul267 = mul nsw i32 %165, %cond266
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %imax268, i32 0, i64 1
  %175 = load i32, i32* %arrayidx269, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin270 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [3 x i32], [3 x i32]* %imin270, i32 0, i64 1
  %177 = load i32, i32* %arrayidx271, align 4
  %sub272 = sub nsw i32 %175, %177
  %add273 = add nsw i32 %sub272, 1
  %cmp274 = icmp slt i32 0, %add273
  br i1 %cmp274, label %cond.true.275, label %cond.false.282

cond.true.275:                                    ; preds = %cond.end.265
  %178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax276 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %178, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [3 x i32], [3 x i32]* %imax276, i32 0, i64 1
  %179 = load i32, i32* %arrayidx277, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [3 x i32], [3 x i32]* %imin278, i32 0, i64 1
  %181 = load i32, i32* %arrayidx279, align 4
  %sub280 = sub nsw i32 %179, %181
  %add281 = add nsw i32 %sub280, 1
  br label %cond.end.283

cond.false.282:                                   ; preds = %cond.end.265
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.282, %cond.true.275
  %cond284 = phi i32 [ %add281, %cond.true.275 ], [ 0, %cond.false.282 ]
  %mul285 = mul nsw i32 %mul267, %cond284
  store i32 %mul285, i32* %hypre__sz2, align 4
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %182 = load i32, i32* %arrayidx286, align 4
  store i32 %182, i32* %hypre__nx, align 4
  %arrayidx287 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %183 = load i32, i32* %arrayidx287, align 4
  store i32 %183, i32* %hypre__ny, align 4
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %184 = load i32, i32* %arrayidx288, align 4
  store i32 %184, i32* %hypre__nz, align 4
  %185 = load i32, i32* %hypre__nx, align 4
  store i32 %185, i32* %hypre__mx, align 4
  %186 = load i32, i32* %hypre__ny, align 4
  store i32 %186, i32* %hypre__my, align 4
  %187 = load i32, i32* %hypre__nz, align 4
  store i32 %187, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %188 = load i32, i32* %hypre__nx, align 4
  store i32 %188, i32* %hypre__max, align 4
  %189 = load i32, i32* %hypre__ny, align 4
  %190 = load i32, i32* %hypre__max, align 4
  %cmp289 = icmp sgt i32 %189, %190
  br i1 %cmp289, label %if.then.290, label %if.end

if.then.290:                                      ; preds = %cond.end.283
  store i32 1, i32* %hypre__dir, align 4
  %191 = load i32, i32* %hypre__ny, align 4
  store i32 %191, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.290, %cond.end.283
  %192 = load i32, i32* %hypre__nz, align 4
  %193 = load i32, i32* %hypre__max, align 4
  %cmp291 = icmp sgt i32 %192, %193
  br i1 %cmp291, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %194 = load i32, i32* %hypre__nz, align 4
  store i32 %194, i32* %hypre__max, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %195 = load i32, i32* %hypre__max, align 4
  %196 = load i32, i32* %hypre__num_blocks, align 4
  %cmp294 = icmp slt i32 %195, %196
  br i1 %cmp294, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.293
  %197 = load i32, i32* %hypre__max, align 4
  store i32 %197, i32* %hypre__num_blocks, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.end.293
  %198 = load i32, i32* %hypre__num_blocks, align 4
  %cmp297 = icmp sgt i32 %198, 0
  br i1 %cmp297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.296
  %199 = load i32, i32* %hypre__max, align 4
  %200 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %199, %200
  store i32 %div, i32* %hypre__div, align 4
  %201 = load i32, i32* %hypre__max, align 4
  %202 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %201, %202
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %if.end.296
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.395, %if.end.299
  %203 = load i32, i32* %hypre__block, align 4
  %204 = load i32, i32* %hypre__num_blocks, align 4
  %cmp301 = icmp slt i32 %203, %204
  br i1 %cmp301, label %for.body.302, label %for.end.397

for.body.302:                                     ; preds = %for.cond.300
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %205 = load i32, i32* %hypre__mx, align 4
  store i32 %205, i32* %hypre__nx, align 4
  %206 = load i32, i32* %hypre__my, align 4
  store i32 %206, i32* %hypre__ny, align 4
  %207 = load i32, i32* %hypre__mz, align 4
  store i32 %207, i32* %hypre__nz, align 4
  %208 = load i32, i32* %hypre__num_blocks, align 4
  %cmp303 = icmp sgt i32 %208, 1
  br i1 %cmp303, label %if.then.304, label %if.end.345

if.then.304:                                      ; preds = %for.body.302
  %209 = load i32, i32* %hypre__dir, align 4
  %cmp305 = icmp eq i32 %209, 0
  br i1 %cmp305, label %if.then.306, label %if.else

if.then.306:                                      ; preds = %if.then.304
  %210 = load i32, i32* %hypre__block, align 4
  %211 = load i32, i32* %hypre__div, align 4
  %mul307 = mul nsw i32 %210, %211
  %212 = load i32, i32* %hypre__mod, align 4
  %213 = load i32, i32* %hypre__block, align 4
  %cmp308 = icmp slt i32 %212, %213
  br i1 %cmp308, label %cond.true.309, label %cond.false.310

cond.true.309:                                    ; preds = %if.then.306
  %214 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.311

cond.false.310:                                   ; preds = %if.then.306
  %215 = load i32, i32* %hypre__block, align 4
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.false.310, %cond.true.309
  %cond312 = phi i32 [ %214, %cond.true.309 ], [ %215, %cond.false.310 ]
  %add313 = add nsw i32 %mul307, %cond312
  store i32 %add313, i32* %loopi, align 4
  %216 = load i32, i32* %hypre__div, align 4
  %217 = load i32, i32* %hypre__mod, align 4
  %218 = load i32, i32* %hypre__block, align 4
  %cmp314 = icmp sgt i32 %217, %218
  %cond315 = select i1 %cmp314, i32 1, i32 0
  %add316 = add nsw i32 %216, %cond315
  store i32 %add316, i32* %hypre__nx, align 4
  br label %if.end.344

if.else:                                          ; preds = %if.then.304
  %219 = load i32, i32* %hypre__dir, align 4
  %cmp317 = icmp eq i32 %219, 1
  br i1 %cmp317, label %if.then.318, label %if.else.329

if.then.318:                                      ; preds = %if.else
  %220 = load i32, i32* %hypre__block, align 4
  %221 = load i32, i32* %hypre__div, align 4
  %mul319 = mul nsw i32 %220, %221
  %222 = load i32, i32* %hypre__mod, align 4
  %223 = load i32, i32* %hypre__block, align 4
  %cmp320 = icmp slt i32 %222, %223
  br i1 %cmp320, label %cond.true.321, label %cond.false.322

cond.true.321:                                    ; preds = %if.then.318
  %224 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.323

cond.false.322:                                   ; preds = %if.then.318
  %225 = load i32, i32* %hypre__block, align 4
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.321
  %cond324 = phi i32 [ %224, %cond.true.321 ], [ %225, %cond.false.322 ]
  %add325 = add nsw i32 %mul319, %cond324
  store i32 %add325, i32* %loopj, align 4
  %226 = load i32, i32* %hypre__div, align 4
  %227 = load i32, i32* %hypre__mod, align 4
  %228 = load i32, i32* %hypre__block, align 4
  %cmp326 = icmp sgt i32 %227, %228
  %cond327 = select i1 %cmp326, i32 1, i32 0
  %add328 = add nsw i32 %226, %cond327
  store i32 %add328, i32* %hypre__ny, align 4
  br label %if.end.343

if.else.329:                                      ; preds = %if.else
  %229 = load i32, i32* %hypre__dir, align 4
  %cmp330 = icmp eq i32 %229, 2
  br i1 %cmp330, label %if.then.331, label %if.end.342

if.then.331:                                      ; preds = %if.else.329
  %230 = load i32, i32* %hypre__block, align 4
  %231 = load i32, i32* %hypre__div, align 4
  %mul332 = mul nsw i32 %230, %231
  %232 = load i32, i32* %hypre__mod, align 4
  %233 = load i32, i32* %hypre__block, align 4
  %cmp333 = icmp slt i32 %232, %233
  br i1 %cmp333, label %cond.true.334, label %cond.false.335

cond.true.334:                                    ; preds = %if.then.331
  %234 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.336

cond.false.335:                                   ; preds = %if.then.331
  %235 = load i32, i32* %hypre__block, align 4
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.335, %cond.true.334
  %cond337 = phi i32 [ %234, %cond.true.334 ], [ %235, %cond.false.335 ]
  %add338 = add nsw i32 %mul332, %cond337
  store i32 %add338, i32* %loopk, align 4
  %236 = load i32, i32* %hypre__div, align 4
  %237 = load i32, i32* %hypre__mod, align 4
  %238 = load i32, i32* %hypre__block, align 4
  %cmp339 = icmp sgt i32 %237, %238
  %cond340 = select i1 %cmp339, i32 1, i32 0
  %add341 = add nsw i32 %236, %cond340
  store i32 %add341, i32* %hypre__nz, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %cond.end.336, %if.else.329
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %cond.end.323
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %cond.end.311
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %for.body.302
  %239 = load i32, i32* %hypre__i1start, align 4
  %240 = load i32, i32* %loopi, align 4
  %241 = load i32, i32* %hypre__sx1, align 4
  %mul346 = mul nsw i32 %240, %241
  %add347 = add nsw i32 %239, %mul346
  %242 = load i32, i32* %loopj, align 4
  %243 = load i32, i32* %hypre__sy1, align 4
  %mul348 = mul nsw i32 %242, %243
  %add349 = add nsw i32 %add347, %mul348
  %244 = load i32, i32* %loopk, align 4
  %245 = load i32, i32* %hypre__sz1, align 4
  %mul350 = mul nsw i32 %244, %245
  %add351 = add nsw i32 %add349, %mul350
  store i32 %add351, i32* %datai, align 4
  %246 = load i32, i32* %hypre__i2start, align 4
  %247 = load i32, i32* %loopi, align 4
  %248 = load i32, i32* %hypre__sx2, align 4
  %mul352 = mul nsw i32 %247, %248
  %add353 = add nsw i32 %246, %mul352
  %249 = load i32, i32* %loopj, align 4
  %250 = load i32, i32* %hypre__sy2, align 4
  %mul354 = mul nsw i32 %249, %250
  %add355 = add nsw i32 %add353, %mul354
  %251 = load i32, i32* %loopk, align 4
  %252 = load i32, i32* %hypre__sz2, align 4
  %mul356 = mul nsw i32 %251, %252
  %add357 = add nsw i32 %add355, %mul356
  store i32 %add357, i32* %dvali, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.358

for.cond.358:                                     ; preds = %for.inc.392, %if.end.345
  %253 = load i32, i32* %loopk, align 4
  %254 = load i32, i32* %hypre__nz, align 4
  %cmp359 = icmp slt i32 %253, %254
  br i1 %cmp359, label %for.body.360, label %for.end.394

for.body.360:                                     ; preds = %for.cond.358
  store i32 0, i32* %loopj, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.383, %for.body.360
  %255 = load i32, i32* %loopj, align 4
  %256 = load i32, i32* %hypre__ny, align 4
  %cmp362 = icmp slt i32 %255, %256
  br i1 %cmp362, label %for.body.363, label %for.end.385

for.body.363:                                     ; preds = %for.cond.361
  store i32 0, i32* %loopi, align 4
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.374, %for.body.363
  %257 = load i32, i32* %loopi, align 4
  %258 = load i32, i32* %hypre__nx, align 4
  %cmp365 = icmp slt i32 %257, %258
  br i1 %cmp365, label %for.body.366, label %for.end.376

for.body.366:                                     ; preds = %for.cond.364
  %259 = load i32, i32* %dvali, align 4
  %idxprom367 = sext i32 %259 to i64
  %260 = load double*, double** %values.addr, align 8
  %arrayidx368 = getelementptr inbounds double, double* %260, i64 %idxprom367
  %261 = load double, double* %arrayidx368, align 8
  %262 = load i32, i32* %datai, align 4
  %idxprom369 = sext i32 %262 to i64
  %263 = load double*, double** %datap, align 8
  %arrayidx370 = getelementptr inbounds double, double* %263, i64 %idxprom369
  %264 = load double, double* %arrayidx370, align 8
  %add371 = fadd double %264, %261
  store double %add371, double* %arrayidx370, align 8
  %265 = load i32, i32* %hypre__sx1, align 4
  %266 = load i32, i32* %datai, align 4
  %add372 = add nsw i32 %266, %265
  store i32 %add372, i32* %datai, align 4
  %267 = load i32, i32* %hypre__sx2, align 4
  %268 = load i32, i32* %dvali, align 4
  %add373 = add nsw i32 %268, %267
  store i32 %add373, i32* %dvali, align 4
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.366
  %269 = load i32, i32* %loopi, align 4
  %inc375 = add nsw i32 %269, 1
  store i32 %inc375, i32* %loopi, align 4
  br label %for.cond.364

for.end.376:                                      ; preds = %for.cond.364
  %270 = load i32, i32* %hypre__sy1, align 4
  %271 = load i32, i32* %hypre__nx, align 4
  %272 = load i32, i32* %hypre__sx1, align 4
  %mul377 = mul nsw i32 %271, %272
  %sub378 = sub nsw i32 %270, %mul377
  %273 = load i32, i32* %datai, align 4
  %add379 = add nsw i32 %273, %sub378
  store i32 %add379, i32* %datai, align 4
  %274 = load i32, i32* %hypre__sy2, align 4
  %275 = load i32, i32* %hypre__nx, align 4
  %276 = load i32, i32* %hypre__sx2, align 4
  %mul380 = mul nsw i32 %275, %276
  %sub381 = sub nsw i32 %274, %mul380
  %277 = load i32, i32* %dvali, align 4
  %add382 = add nsw i32 %277, %sub381
  store i32 %add382, i32* %dvali, align 4
  br label %for.inc.383

for.inc.383:                                      ; preds = %for.end.376
  %278 = load i32, i32* %loopj, align 4
  %inc384 = add nsw i32 %278, 1
  store i32 %inc384, i32* %loopj, align 4
  br label %for.cond.361

for.end.385:                                      ; preds = %for.cond.361
  %279 = load i32, i32* %hypre__sz1, align 4
  %280 = load i32, i32* %hypre__ny, align 4
  %281 = load i32, i32* %hypre__sy1, align 4
  %mul386 = mul nsw i32 %280, %281
  %sub387 = sub nsw i32 %279, %mul386
  %282 = load i32, i32* %datai, align 4
  %add388 = add nsw i32 %282, %sub387
  store i32 %add388, i32* %datai, align 4
  %283 = load i32, i32* %hypre__sz2, align 4
  %284 = load i32, i32* %hypre__ny, align 4
  %285 = load i32, i32* %hypre__sy2, align 4
  %mul389 = mul nsw i32 %284, %285
  %sub390 = sub nsw i32 %283, %mul389
  %286 = load i32, i32* %dvali, align 4
  %add391 = add nsw i32 %286, %sub390
  store i32 %add391, i32* %dvali, align 4
  br label %for.inc.392

for.inc.392:                                      ; preds = %for.end.385
  %287 = load i32, i32* %loopk, align 4
  %inc393 = add nsw i32 %287, 1
  store i32 %inc393, i32* %loopk, align 4
  br label %for.cond.358

for.end.394:                                      ; preds = %for.cond.358
  br label %for.inc.395

for.inc.395:                                      ; preds = %for.end.394
  %288 = load i32, i32* %hypre__block, align 4
  %inc396 = add nsw i32 %288, 1
  store i32 %inc396, i32* %hypre__block, align 4
  br label %for.cond.300

for.end.397:                                      ; preds = %for.cond.300
  br label %if.end.748

if.else.398:                                      ; preds = %if.then.65
  %289 = load i32*, i32** %data_start, align 8
  %arrayidx400 = getelementptr inbounds i32, i32* %289, i64 0
  %290 = load i32, i32* %arrayidx400, align 4
  %291 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin401 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %291, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %imin401, i32 0, i64 0
  %292 = load i32, i32* %arrayidx402, align 4
  %sub403 = sub nsw i32 %290, %292
  %293 = load i32*, i32** %data_start, align 8
  %arrayidx404 = getelementptr inbounds i32, i32* %293, i64 1
  %294 = load i32, i32* %arrayidx404, align 4
  %295 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin405 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %295, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [3 x i32], [3 x i32]* %imin405, i32 0, i64 1
  %296 = load i32, i32* %arrayidx406, align 4
  %sub407 = sub nsw i32 %294, %296
  %297 = load i32*, i32** %data_start, align 8
  %arrayidx408 = getelementptr inbounds i32, i32* %297, i64 2
  %298 = load i32, i32* %arrayidx408, align 4
  %299 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin409 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %299, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [3 x i32], [3 x i32]* %imin409, i32 0, i64 2
  %300 = load i32, i32* %arrayidx410, align 4
  %sub411 = sub nsw i32 %298, %300
  %301 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax412 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %301, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [3 x i32], [3 x i32]* %imax412, i32 0, i64 1
  %302 = load i32, i32* %arrayidx413, align 4
  %303 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin414 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %303, i32 0, i32 0
  %arrayidx415 = getelementptr inbounds [3 x i32], [3 x i32]* %imin414, i32 0, i64 1
  %304 = load i32, i32* %arrayidx415, align 4
  %sub416 = sub nsw i32 %302, %304
  %add417 = add nsw i32 %sub416, 1
  %cmp418 = icmp slt i32 0, %add417
  br i1 %cmp418, label %cond.true.419, label %cond.false.426

cond.true.419:                                    ; preds = %if.else.398
  %305 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax420 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %305, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [3 x i32], [3 x i32]* %imax420, i32 0, i64 1
  %306 = load i32, i32* %arrayidx421, align 4
  %307 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin422 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %307, i32 0, i32 0
  %arrayidx423 = getelementptr inbounds [3 x i32], [3 x i32]* %imin422, i32 0, i64 1
  %308 = load i32, i32* %arrayidx423, align 4
  %sub424 = sub nsw i32 %306, %308
  %add425 = add nsw i32 %sub424, 1
  br label %cond.end.427

cond.false.426:                                   ; preds = %if.else.398
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.426, %cond.true.419
  %cond428 = phi i32 [ %add425, %cond.true.419 ], [ 0, %cond.false.426 ]
  %mul429 = mul nsw i32 %sub411, %cond428
  %add430 = add nsw i32 %sub407, %mul429
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax431 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [3 x i32], [3 x i32]* %imax431, i32 0, i64 0
  %310 = load i32, i32* %arrayidx432, align 4
  %311 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin433 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %311, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %imin433, i32 0, i64 0
  %312 = load i32, i32* %arrayidx434, align 4
  %sub435 = sub nsw i32 %310, %312
  %add436 = add nsw i32 %sub435, 1
  %cmp437 = icmp slt i32 0, %add436
  br i1 %cmp437, label %cond.true.438, label %cond.false.445

cond.true.438:                                    ; preds = %cond.end.427
  %313 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax439 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %313, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [3 x i32], [3 x i32]* %imax439, i32 0, i64 0
  %314 = load i32, i32* %arrayidx440, align 4
  %315 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %315, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %imin441, i32 0, i64 0
  %316 = load i32, i32* %arrayidx442, align 4
  %sub443 = sub nsw i32 %314, %316
  %add444 = add nsw i32 %sub443, 1
  br label %cond.end.446

cond.false.445:                                   ; preds = %cond.end.427
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.445, %cond.true.438
  %cond447 = phi i32 [ %add444, %cond.true.438 ], [ 0, %cond.false.445 ]
  %mul448 = mul nsw i32 %add430, %cond447
  %add449 = add nsw i32 %sub403, %mul448
  store i32 %add449, i32* %hypre__i1start399, align 4
  %arrayidx451 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %317 = load i32, i32* %arrayidx451, align 4
  %318 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin452 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %318, i32 0, i32 0
  %arrayidx453 = getelementptr inbounds [3 x i32], [3 x i32]* %imin452, i32 0, i64 0
  %319 = load i32, i32* %arrayidx453, align 4
  %sub454 = sub nsw i32 %317, %319
  %arrayidx455 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  %320 = load i32, i32* %arrayidx455, align 4
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin456 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %321, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds [3 x i32], [3 x i32]* %imin456, i32 0, i64 1
  %322 = load i32, i32* %arrayidx457, align 4
  %sub458 = sub nsw i32 %320, %322
  %arrayidx459 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  %323 = load i32, i32* %arrayidx459, align 4
  %324 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin460 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %324, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [3 x i32], [3 x i32]* %imin460, i32 0, i64 2
  %325 = load i32, i32* %arrayidx461, align 4
  %sub462 = sub nsw i32 %323, %325
  %326 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax463 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %326, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [3 x i32], [3 x i32]* %imax463, i32 0, i64 1
  %327 = load i32, i32* %arrayidx464, align 4
  %328 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin465 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %328, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [3 x i32], [3 x i32]* %imin465, i32 0, i64 1
  %329 = load i32, i32* %arrayidx466, align 4
  %sub467 = sub nsw i32 %327, %329
  %add468 = add nsw i32 %sub467, 1
  %cmp469 = icmp slt i32 0, %add468
  br i1 %cmp469, label %cond.true.470, label %cond.false.477

cond.true.470:                                    ; preds = %cond.end.446
  %330 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax471 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %330, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [3 x i32], [3 x i32]* %imax471, i32 0, i64 1
  %331 = load i32, i32* %arrayidx472, align 4
  %332 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin473 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %332, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %imin473, i32 0, i64 1
  %333 = load i32, i32* %arrayidx474, align 4
  %sub475 = sub nsw i32 %331, %333
  %add476 = add nsw i32 %sub475, 1
  br label %cond.end.478

cond.false.477:                                   ; preds = %cond.end.446
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.false.477, %cond.true.470
  %cond479 = phi i32 [ %add476, %cond.true.470 ], [ 0, %cond.false.477 ]
  %mul480 = mul nsw i32 %sub462, %cond479
  %add481 = add nsw i32 %sub458, %mul480
  %334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax482 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %334, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [3 x i32], [3 x i32]* %imax482, i32 0, i64 0
  %335 = load i32, i32* %arrayidx483, align 4
  %336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin484 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %336, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [3 x i32], [3 x i32]* %imin484, i32 0, i64 0
  %337 = load i32, i32* %arrayidx485, align 4
  %sub486 = sub nsw i32 %335, %337
  %add487 = add nsw i32 %sub486, 1
  %cmp488 = icmp slt i32 0, %add487
  br i1 %cmp488, label %cond.true.489, label %cond.false.496

cond.true.489:                                    ; preds = %cond.end.478
  %338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax490 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %338, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [3 x i32], [3 x i32]* %imax490, i32 0, i64 0
  %339 = load i32, i32* %arrayidx491, align 4
  %340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin492 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %340, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [3 x i32], [3 x i32]* %imin492, i32 0, i64 0
  %341 = load i32, i32* %arrayidx493, align 4
  %sub494 = sub nsw i32 %339, %341
  %add495 = add nsw i32 %sub494, 1
  br label %cond.end.497

cond.false.496:                                   ; preds = %cond.end.478
  br label %cond.end.497

cond.end.497:                                     ; preds = %cond.false.496, %cond.true.489
  %cond498 = phi i32 [ %add495, %cond.true.489 ], [ 0, %cond.false.496 ]
  %mul499 = mul nsw i32 %add481, %cond498
  %add500 = add nsw i32 %sub454, %mul499
  store i32 %add500, i32* %hypre__i2start450, align 4
  %arrayidx502 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  %342 = load i32, i32* %arrayidx502, align 4
  store i32 %342, i32* %hypre__sx1501, align 4
  %arrayidx504 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  %343 = load i32, i32* %arrayidx504, align 4
  %344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax505 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %344, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [3 x i32], [3 x i32]* %imax505, i32 0, i64 0
  %345 = load i32, i32* %arrayidx506, align 4
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin507 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 0
  %arrayidx508 = getelementptr inbounds [3 x i32], [3 x i32]* %imin507, i32 0, i64 0
  %347 = load i32, i32* %arrayidx508, align 4
  %sub509 = sub nsw i32 %345, %347
  %add510 = add nsw i32 %sub509, 1
  %cmp511 = icmp slt i32 0, %add510
  br i1 %cmp511, label %cond.true.512, label %cond.false.519

cond.true.512:                                    ; preds = %cond.end.497
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax513 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [3 x i32], [3 x i32]* %imax513, i32 0, i64 0
  %349 = load i32, i32* %arrayidx514, align 4
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin515 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 0
  %arrayidx516 = getelementptr inbounds [3 x i32], [3 x i32]* %imin515, i32 0, i64 0
  %351 = load i32, i32* %arrayidx516, align 4
  %sub517 = sub nsw i32 %349, %351
  %add518 = add nsw i32 %sub517, 1
  br label %cond.end.520

cond.false.519:                                   ; preds = %cond.end.497
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.519, %cond.true.512
  %cond521 = phi i32 [ %add518, %cond.true.512 ], [ 0, %cond.false.519 ]
  %mul522 = mul nsw i32 %343, %cond521
  store i32 %mul522, i32* %hypre__sy1503, align 4
  %arrayidx524 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  %352 = load i32, i32* %arrayidx524, align 4
  %353 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax525 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %353, i32 0, i32 1
  %arrayidx526 = getelementptr inbounds [3 x i32], [3 x i32]* %imax525, i32 0, i64 0
  %354 = load i32, i32* %arrayidx526, align 4
  %355 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin527 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %355, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [3 x i32], [3 x i32]* %imin527, i32 0, i64 0
  %356 = load i32, i32* %arrayidx528, align 4
  %sub529 = sub nsw i32 %354, %356
  %add530 = add nsw i32 %sub529, 1
  %cmp531 = icmp slt i32 0, %add530
  br i1 %cmp531, label %cond.true.532, label %cond.false.539

cond.true.532:                                    ; preds = %cond.end.520
  %357 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax533 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %357, i32 0, i32 1
  %arrayidx534 = getelementptr inbounds [3 x i32], [3 x i32]* %imax533, i32 0, i64 0
  %358 = load i32, i32* %arrayidx534, align 4
  %359 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin535 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %359, i32 0, i32 0
  %arrayidx536 = getelementptr inbounds [3 x i32], [3 x i32]* %imin535, i32 0, i64 0
  %360 = load i32, i32* %arrayidx536, align 4
  %sub537 = sub nsw i32 %358, %360
  %add538 = add nsw i32 %sub537, 1
  br label %cond.end.540

cond.false.539:                                   ; preds = %cond.end.520
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.539, %cond.true.532
  %cond541 = phi i32 [ %add538, %cond.true.532 ], [ 0, %cond.false.539 ]
  %mul542 = mul nsw i32 %352, %cond541
  %361 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax543 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %361, i32 0, i32 1
  %arrayidx544 = getelementptr inbounds [3 x i32], [3 x i32]* %imax543, i32 0, i64 1
  %362 = load i32, i32* %arrayidx544, align 4
  %363 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin545 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %363, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [3 x i32], [3 x i32]* %imin545, i32 0, i64 1
  %364 = load i32, i32* %arrayidx546, align 4
  %sub547 = sub nsw i32 %362, %364
  %add548 = add nsw i32 %sub547, 1
  %cmp549 = icmp slt i32 0, %add548
  br i1 %cmp549, label %cond.true.550, label %cond.false.557

cond.true.550:                                    ; preds = %cond.end.540
  %365 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax551 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %365, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [3 x i32], [3 x i32]* %imax551, i32 0, i64 1
  %366 = load i32, i32* %arrayidx552, align 4
  %367 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin553 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %367, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [3 x i32], [3 x i32]* %imin553, i32 0, i64 1
  %368 = load i32, i32* %arrayidx554, align 4
  %sub555 = sub nsw i32 %366, %368
  %add556 = add nsw i32 %sub555, 1
  br label %cond.end.558

cond.false.557:                                   ; preds = %cond.end.540
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.false.557, %cond.true.550
  %cond559 = phi i32 [ %add556, %cond.true.550 ], [ 0, %cond.false.557 ]
  %mul560 = mul nsw i32 %mul542, %cond559
  store i32 %mul560, i32* %hypre__sz1523, align 4
  %arrayidx562 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  %369 = load i32, i32* %arrayidx562, align 4
  store i32 %369, i32* %hypre__sx2561, align 4
  %arrayidx564 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  %370 = load i32, i32* %arrayidx564, align 4
  %371 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax565 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %371, i32 0, i32 1
  %arrayidx566 = getelementptr inbounds [3 x i32], [3 x i32]* %imax565, i32 0, i64 0
  %372 = load i32, i32* %arrayidx566, align 4
  %373 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin567 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %373, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [3 x i32], [3 x i32]* %imin567, i32 0, i64 0
  %374 = load i32, i32* %arrayidx568, align 4
  %sub569 = sub nsw i32 %372, %374
  %add570 = add nsw i32 %sub569, 1
  %cmp571 = icmp slt i32 0, %add570
  br i1 %cmp571, label %cond.true.572, label %cond.false.579

cond.true.572:                                    ; preds = %cond.end.558
  %375 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax573 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %375, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [3 x i32], [3 x i32]* %imax573, i32 0, i64 0
  %376 = load i32, i32* %arrayidx574, align 4
  %377 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %377, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [3 x i32], [3 x i32]* %imin575, i32 0, i64 0
  %378 = load i32, i32* %arrayidx576, align 4
  %sub577 = sub nsw i32 %376, %378
  %add578 = add nsw i32 %sub577, 1
  br label %cond.end.580

cond.false.579:                                   ; preds = %cond.end.558
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.579, %cond.true.572
  %cond581 = phi i32 [ %add578, %cond.true.572 ], [ 0, %cond.false.579 ]
  %mul582 = mul nsw i32 %370, %cond581
  store i32 %mul582, i32* %hypre__sy2563, align 4
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  %379 = load i32, i32* %arrayidx584, align 4
  %380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax585 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %380, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [3 x i32], [3 x i32]* %imax585, i32 0, i64 0
  %381 = load i32, i32* %arrayidx586, align 4
  %382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin587 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %382, i32 0, i32 0
  %arrayidx588 = getelementptr inbounds [3 x i32], [3 x i32]* %imin587, i32 0, i64 0
  %383 = load i32, i32* %arrayidx588, align 4
  %sub589 = sub nsw i32 %381, %383
  %add590 = add nsw i32 %sub589, 1
  %cmp591 = icmp slt i32 0, %add590
  br i1 %cmp591, label %cond.true.592, label %cond.false.599

cond.true.592:                                    ; preds = %cond.end.580
  %384 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax593 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %384, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [3 x i32], [3 x i32]* %imax593, i32 0, i64 0
  %385 = load i32, i32* %arrayidx594, align 4
  %386 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin595 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %386, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [3 x i32], [3 x i32]* %imin595, i32 0, i64 0
  %387 = load i32, i32* %arrayidx596, align 4
  %sub597 = sub nsw i32 %385, %387
  %add598 = add nsw i32 %sub597, 1
  br label %cond.end.600

cond.false.599:                                   ; preds = %cond.end.580
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.599, %cond.true.592
  %cond601 = phi i32 [ %add598, %cond.true.592 ], [ 0, %cond.false.599 ]
  %mul602 = mul nsw i32 %379, %cond601
  %388 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax603 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %388, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [3 x i32], [3 x i32]* %imax603, i32 0, i64 1
  %389 = load i32, i32* %arrayidx604, align 4
  %390 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin605 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %390, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [3 x i32], [3 x i32]* %imin605, i32 0, i64 1
  %391 = load i32, i32* %arrayidx606, align 4
  %sub607 = sub nsw i32 %389, %391
  %add608 = add nsw i32 %sub607, 1
  %cmp609 = icmp slt i32 0, %add608
  br i1 %cmp609, label %cond.true.610, label %cond.false.617

cond.true.610:                                    ; preds = %cond.end.600
  %392 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax611 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %392, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [3 x i32], [3 x i32]* %imax611, i32 0, i64 1
  %393 = load i32, i32* %arrayidx612, align 4
  %394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin613 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %394, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [3 x i32], [3 x i32]* %imin613, i32 0, i64 1
  %395 = load i32, i32* %arrayidx614, align 4
  %sub615 = sub nsw i32 %393, %395
  %add616 = add nsw i32 %sub615, 1
  br label %cond.end.618

cond.false.617:                                   ; preds = %cond.end.600
  br label %cond.end.618

cond.end.618:                                     ; preds = %cond.false.617, %cond.true.610
  %cond619 = phi i32 [ %add616, %cond.true.610 ], [ 0, %cond.false.617 ]
  %mul620 = mul nsw i32 %mul602, %cond619
  store i32 %mul620, i32* %hypre__sz2583, align 4
  %arrayidx622 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %396 = load i32, i32* %arrayidx622, align 4
  store i32 %396, i32* %hypre__nx621, align 4
  %arrayidx624 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %397 = load i32, i32* %arrayidx624, align 4
  store i32 %397, i32* %hypre__ny623, align 4
  %arrayidx626 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %398 = load i32, i32* %arrayidx626, align 4
  store i32 %398, i32* %hypre__nz625, align 4
  %399 = load i32, i32* %hypre__nx621, align 4
  store i32 %399, i32* %hypre__mx627, align 4
  %400 = load i32, i32* %hypre__ny623, align 4
  store i32 %400, i32* %hypre__my628, align 4
  %401 = load i32, i32* %hypre__nz625, align 4
  store i32 %401, i32* %hypre__mz629, align 4
  store i32 0, i32* %hypre__dir630, align 4
  %402 = load i32, i32* %hypre__nx621, align 4
  store i32 %402, i32* %hypre__max631, align 4
  %403 = load i32, i32* %hypre__ny623, align 4
  %404 = load i32, i32* %hypre__max631, align 4
  %cmp636 = icmp sgt i32 %403, %404
  br i1 %cmp636, label %if.then.637, label %if.end.638

if.then.637:                                      ; preds = %cond.end.618
  store i32 1, i32* %hypre__dir630, align 4
  %405 = load i32, i32* %hypre__ny623, align 4
  store i32 %405, i32* %hypre__max631, align 4
  br label %if.end.638

if.end.638:                                       ; preds = %if.then.637, %cond.end.618
  %406 = load i32, i32* %hypre__nz625, align 4
  %407 = load i32, i32* %hypre__max631, align 4
  %cmp639 = icmp sgt i32 %406, %407
  br i1 %cmp639, label %if.then.640, label %if.end.641

if.then.640:                                      ; preds = %if.end.638
  store i32 2, i32* %hypre__dir630, align 4
  %408 = load i32, i32* %hypre__nz625, align 4
  store i32 %408, i32* %hypre__max631, align 4
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.640, %if.end.638
  store i32 1, i32* %hypre__num_blocks635, align 4
  %409 = load i32, i32* %hypre__max631, align 4
  %410 = load i32, i32* %hypre__num_blocks635, align 4
  %cmp642 = icmp slt i32 %409, %410
  br i1 %cmp642, label %if.then.643, label %if.end.644

if.then.643:                                      ; preds = %if.end.641
  %411 = load i32, i32* %hypre__max631, align 4
  store i32 %411, i32* %hypre__num_blocks635, align 4
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.643, %if.end.641
  %412 = load i32, i32* %hypre__num_blocks635, align 4
  %cmp645 = icmp sgt i32 %412, 0
  br i1 %cmp645, label %if.then.646, label %if.end.649

if.then.646:                                      ; preds = %if.end.644
  %413 = load i32, i32* %hypre__max631, align 4
  %414 = load i32, i32* %hypre__num_blocks635, align 4
  %div647 = sdiv i32 %413, %414
  store i32 %div647, i32* %hypre__div632, align 4
  %415 = load i32, i32* %hypre__max631, align 4
  %416 = load i32, i32* %hypre__num_blocks635, align 4
  %rem648 = srem i32 %415, %416
  store i32 %rem648, i32* %hypre__mod633, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.646, %if.end.644
  store i32 0, i32* %hypre__block634, align 4
  br label %for.cond.650

for.cond.650:                                     ; preds = %for.inc.745, %if.end.649
  %417 = load i32, i32* %hypre__block634, align 4
  %418 = load i32, i32* %hypre__num_blocks635, align 4
  %cmp651 = icmp slt i32 %417, %418
  br i1 %cmp651, label %for.body.652, label %for.end.747

for.body.652:                                     ; preds = %for.cond.650
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %419 = load i32, i32* %hypre__mx627, align 4
  store i32 %419, i32* %hypre__nx621, align 4
  %420 = load i32, i32* %hypre__my628, align 4
  store i32 %420, i32* %hypre__ny623, align 4
  %421 = load i32, i32* %hypre__mz629, align 4
  store i32 %421, i32* %hypre__nz625, align 4
  %422 = load i32, i32* %hypre__num_blocks635, align 4
  %cmp653 = icmp sgt i32 %422, 1
  br i1 %cmp653, label %if.then.654, label %if.end.696

if.then.654:                                      ; preds = %for.body.652
  %423 = load i32, i32* %hypre__dir630, align 4
  %cmp655 = icmp eq i32 %423, 0
  br i1 %cmp655, label %if.then.656, label %if.else.667

if.then.656:                                      ; preds = %if.then.654
  %424 = load i32, i32* %hypre__block634, align 4
  %425 = load i32, i32* %hypre__div632, align 4
  %mul657 = mul nsw i32 %424, %425
  %426 = load i32, i32* %hypre__mod633, align 4
  %427 = load i32, i32* %hypre__block634, align 4
  %cmp658 = icmp slt i32 %426, %427
  br i1 %cmp658, label %cond.true.659, label %cond.false.660

cond.true.659:                                    ; preds = %if.then.656
  %428 = load i32, i32* %hypre__mod633, align 4
  br label %cond.end.661

cond.false.660:                                   ; preds = %if.then.656
  %429 = load i32, i32* %hypre__block634, align 4
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.false.660, %cond.true.659
  %cond662 = phi i32 [ %428, %cond.true.659 ], [ %429, %cond.false.660 ]
  %add663 = add nsw i32 %mul657, %cond662
  store i32 %add663, i32* %loopi, align 4
  %430 = load i32, i32* %hypre__div632, align 4
  %431 = load i32, i32* %hypre__mod633, align 4
  %432 = load i32, i32* %hypre__block634, align 4
  %cmp664 = icmp sgt i32 %431, %432
  %cond665 = select i1 %cmp664, i32 1, i32 0
  %add666 = add nsw i32 %430, %cond665
  store i32 %add666, i32* %hypre__nx621, align 4
  br label %if.end.695

if.else.667:                                      ; preds = %if.then.654
  %433 = load i32, i32* %hypre__dir630, align 4
  %cmp668 = icmp eq i32 %433, 1
  br i1 %cmp668, label %if.then.669, label %if.else.680

if.then.669:                                      ; preds = %if.else.667
  %434 = load i32, i32* %hypre__block634, align 4
  %435 = load i32, i32* %hypre__div632, align 4
  %mul670 = mul nsw i32 %434, %435
  %436 = load i32, i32* %hypre__mod633, align 4
  %437 = load i32, i32* %hypre__block634, align 4
  %cmp671 = icmp slt i32 %436, %437
  br i1 %cmp671, label %cond.true.672, label %cond.false.673

cond.true.672:                                    ; preds = %if.then.669
  %438 = load i32, i32* %hypre__mod633, align 4
  br label %cond.end.674

cond.false.673:                                   ; preds = %if.then.669
  %439 = load i32, i32* %hypre__block634, align 4
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.673, %cond.true.672
  %cond675 = phi i32 [ %438, %cond.true.672 ], [ %439, %cond.false.673 ]
  %add676 = add nsw i32 %mul670, %cond675
  store i32 %add676, i32* %loopj, align 4
  %440 = load i32, i32* %hypre__div632, align 4
  %441 = load i32, i32* %hypre__mod633, align 4
  %442 = load i32, i32* %hypre__block634, align 4
  %cmp677 = icmp sgt i32 %441, %442
  %cond678 = select i1 %cmp677, i32 1, i32 0
  %add679 = add nsw i32 %440, %cond678
  store i32 %add679, i32* %hypre__ny623, align 4
  br label %if.end.694

if.else.680:                                      ; preds = %if.else.667
  %443 = load i32, i32* %hypre__dir630, align 4
  %cmp681 = icmp eq i32 %443, 2
  br i1 %cmp681, label %if.then.682, label %if.end.693

if.then.682:                                      ; preds = %if.else.680
  %444 = load i32, i32* %hypre__block634, align 4
  %445 = load i32, i32* %hypre__div632, align 4
  %mul683 = mul nsw i32 %444, %445
  %446 = load i32, i32* %hypre__mod633, align 4
  %447 = load i32, i32* %hypre__block634, align 4
  %cmp684 = icmp slt i32 %446, %447
  br i1 %cmp684, label %cond.true.685, label %cond.false.686

cond.true.685:                                    ; preds = %if.then.682
  %448 = load i32, i32* %hypre__mod633, align 4
  br label %cond.end.687

cond.false.686:                                   ; preds = %if.then.682
  %449 = load i32, i32* %hypre__block634, align 4
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.686, %cond.true.685
  %cond688 = phi i32 [ %448, %cond.true.685 ], [ %449, %cond.false.686 ]
  %add689 = add nsw i32 %mul683, %cond688
  store i32 %add689, i32* %loopk, align 4
  %450 = load i32, i32* %hypre__div632, align 4
  %451 = load i32, i32* %hypre__mod633, align 4
  %452 = load i32, i32* %hypre__block634, align 4
  %cmp690 = icmp sgt i32 %451, %452
  %cond691 = select i1 %cmp690, i32 1, i32 0
  %add692 = add nsw i32 %450, %cond691
  store i32 %add692, i32* %hypre__nz625, align 4
  br label %if.end.693

if.end.693:                                       ; preds = %cond.end.687, %if.else.680
  br label %if.end.694

if.end.694:                                       ; preds = %if.end.693, %cond.end.674
  br label %if.end.695

if.end.695:                                       ; preds = %if.end.694, %cond.end.661
  br label %if.end.696

if.end.696:                                       ; preds = %if.end.695, %for.body.652
  %453 = load i32, i32* %hypre__i1start399, align 4
  %454 = load i32, i32* %loopi, align 4
  %455 = load i32, i32* %hypre__sx1501, align 4
  %mul697 = mul nsw i32 %454, %455
  %add698 = add nsw i32 %453, %mul697
  %456 = load i32, i32* %loopj, align 4
  %457 = load i32, i32* %hypre__sy1503, align 4
  %mul699 = mul nsw i32 %456, %457
  %add700 = add nsw i32 %add698, %mul699
  %458 = load i32, i32* %loopk, align 4
  %459 = load i32, i32* %hypre__sz1523, align 4
  %mul701 = mul nsw i32 %458, %459
  %add702 = add nsw i32 %add700, %mul701
  store i32 %add702, i32* %datai, align 4
  %460 = load i32, i32* %hypre__i2start450, align 4
  %461 = load i32, i32* %loopi, align 4
  %462 = load i32, i32* %hypre__sx2561, align 4
  %mul703 = mul nsw i32 %461, %462
  %add704 = add nsw i32 %460, %mul703
  %463 = load i32, i32* %loopj, align 4
  %464 = load i32, i32* %hypre__sy2563, align 4
  %mul705 = mul nsw i32 %463, %464
  %add706 = add nsw i32 %add704, %mul705
  %465 = load i32, i32* %loopk, align 4
  %466 = load i32, i32* %hypre__sz2583, align 4
  %mul707 = mul nsw i32 %465, %466
  %add708 = add nsw i32 %add706, %mul707
  store i32 %add708, i32* %dvali, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.709

for.cond.709:                                     ; preds = %for.inc.742, %if.end.696
  %467 = load i32, i32* %loopk, align 4
  %468 = load i32, i32* %hypre__nz625, align 4
  %cmp710 = icmp slt i32 %467, %468
  br i1 %cmp710, label %for.body.711, label %for.end.744

for.body.711:                                     ; preds = %for.cond.709
  store i32 0, i32* %loopj, align 4
  br label %for.cond.712

for.cond.712:                                     ; preds = %for.inc.733, %for.body.711
  %469 = load i32, i32* %loopj, align 4
  %470 = load i32, i32* %hypre__ny623, align 4
  %cmp713 = icmp slt i32 %469, %470
  br i1 %cmp713, label %for.body.714, label %for.end.735

for.body.714:                                     ; preds = %for.cond.712
  store i32 0, i32* %loopi, align 4
  br label %for.cond.715

for.cond.715:                                     ; preds = %for.inc.724, %for.body.714
  %471 = load i32, i32* %loopi, align 4
  %472 = load i32, i32* %hypre__nx621, align 4
  %cmp716 = icmp slt i32 %471, %472
  br i1 %cmp716, label %for.body.717, label %for.end.726

for.body.717:                                     ; preds = %for.cond.715
  %473 = load i32, i32* %dvali, align 4
  %idxprom718 = sext i32 %473 to i64
  %474 = load double*, double** %values.addr, align 8
  %arrayidx719 = getelementptr inbounds double, double* %474, i64 %idxprom718
  %475 = load double, double* %arrayidx719, align 8
  %476 = load i32, i32* %datai, align 4
  %idxprom720 = sext i32 %476 to i64
  %477 = load double*, double** %datap, align 8
  %arrayidx721 = getelementptr inbounds double, double* %477, i64 %idxprom720
  store double %475, double* %arrayidx721, align 8
  %478 = load i32, i32* %hypre__sx1501, align 4
  %479 = load i32, i32* %datai, align 4
  %add722 = add nsw i32 %479, %478
  store i32 %add722, i32* %datai, align 4
  %480 = load i32, i32* %hypre__sx2561, align 4
  %481 = load i32, i32* %dvali, align 4
  %add723 = add nsw i32 %481, %480
  store i32 %add723, i32* %dvali, align 4
  br label %for.inc.724

for.inc.724:                                      ; preds = %for.body.717
  %482 = load i32, i32* %loopi, align 4
  %inc725 = add nsw i32 %482, 1
  store i32 %inc725, i32* %loopi, align 4
  br label %for.cond.715

for.end.726:                                      ; preds = %for.cond.715
  %483 = load i32, i32* %hypre__sy1503, align 4
  %484 = load i32, i32* %hypre__nx621, align 4
  %485 = load i32, i32* %hypre__sx1501, align 4
  %mul727 = mul nsw i32 %484, %485
  %sub728 = sub nsw i32 %483, %mul727
  %486 = load i32, i32* %datai, align 4
  %add729 = add nsw i32 %486, %sub728
  store i32 %add729, i32* %datai, align 4
  %487 = load i32, i32* %hypre__sy2563, align 4
  %488 = load i32, i32* %hypre__nx621, align 4
  %489 = load i32, i32* %hypre__sx2561, align 4
  %mul730 = mul nsw i32 %488, %489
  %sub731 = sub nsw i32 %487, %mul730
  %490 = load i32, i32* %dvali, align 4
  %add732 = add nsw i32 %490, %sub731
  store i32 %add732, i32* %dvali, align 4
  br label %for.inc.733

for.inc.733:                                      ; preds = %for.end.726
  %491 = load i32, i32* %loopj, align 4
  %inc734 = add nsw i32 %491, 1
  store i32 %inc734, i32* %loopj, align 4
  br label %for.cond.712

for.end.735:                                      ; preds = %for.cond.712
  %492 = load i32, i32* %hypre__sz1523, align 4
  %493 = load i32, i32* %hypre__ny623, align 4
  %494 = load i32, i32* %hypre__sy1503, align 4
  %mul736 = mul nsw i32 %493, %494
  %sub737 = sub nsw i32 %492, %mul736
  %495 = load i32, i32* %datai, align 4
  %add738 = add nsw i32 %495, %sub737
  store i32 %add738, i32* %datai, align 4
  %496 = load i32, i32* %hypre__sz2583, align 4
  %497 = load i32, i32* %hypre__ny623, align 4
  %498 = load i32, i32* %hypre__sy2563, align 4
  %mul739 = mul nsw i32 %497, %498
  %sub740 = sub nsw i32 %496, %mul739
  %499 = load i32, i32* %dvali, align 4
  %add741 = add nsw i32 %499, %sub740
  store i32 %add741, i32* %dvali, align 4
  br label %for.inc.742

for.inc.742:                                      ; preds = %for.end.735
  %500 = load i32, i32* %loopk, align 4
  %inc743 = add nsw i32 %500, 1
  store i32 %inc743, i32* %loopk, align 4
  br label %for.cond.709

for.end.744:                                      ; preds = %for.cond.709
  br label %for.inc.745

for.inc.745:                                      ; preds = %for.end.744
  %501 = load i32, i32* %hypre__block634, align 4
  %inc746 = add nsw i32 %501, 1
  store i32 %inc746, i32* %hypre__block634, align 4
  br label %for.cond.650

for.end.747:                                      ; preds = %for.cond.650
  br label %if.end.748

if.end.748:                                       ; preds = %for.end.747, %for.end.397
  br label %if.end.749

if.end.749:                                       ; preds = %if.end.748, %for.body.57
  br label %for.inc.750

for.inc.750:                                      ; preds = %if.end.749
  %502 = load i32, i32* %i, align 4
  %inc751 = add nsw i32 %502, 1
  store i32 %inc751, i32* %i, align 4
  br label %for.cond.54

for.end.752:                                      ; preds = %for.cond.54
  %503 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %call753 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %503)
  br label %if.end.754

if.end.754:                                       ; preds = %for.end.752, %for.end
  %504 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %call755 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %504)
  %505 = load i32, i32* %ierr, align 4
  ret i32 %505
}

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct*, %struct.hypre_Box_struct*, %struct.hypre_Box_struct*) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct*) #1

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorGetValues(%struct.hypre_StructVector_struct* %vector, i32* %grid_index, double* %values_ptr) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %grid_index.addr = alloca i32*, align 8
  %values_ptr.addr = alloca double*, align 8
  %ierr = alloca i32, align 4
  %values = alloca double, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %vecp = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32* %grid_index, i32** %grid_index.addr, align 8
  store double* %values_ptr, double** %values_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

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
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %16 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sle i32 %14, %16
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %17 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %20 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sge i32 %18, %20
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %21 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 1
  %24 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp sle i32 %22, %24
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %25 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx20, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 2
  %28 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp sge i32 %26, %28
  br i1 %cmp23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.19
  %29 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 2
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sle i32 %30, %32
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.24
  %33 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %33, i32 0, i32 3
  %34 = load double*, double** %data, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %36, i32 0, i32 6
  %37 = load i32*, i32** %data_indices, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %37, i64 %idxprom29
  %38 = load i32, i32* %arrayidx30, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds double, double* %34, i64 %idx.ext
  %39 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx31, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %41 to i64
  %42 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %42, i32 0, i32 2
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes33 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %43, i32 0, i32 0
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i64 %idxprom32
  %imin35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imin35, i32 0, i64 0
  %45 = load i32, i32* %arrayidx36, align 4
  %sub = sub nsw i32 %40, %45
  %46 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx37, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space39 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %49, i32 0, i32 2
  %50 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space39, align 8
  %boxes40 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %50, i32 0, i32 0
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes40, align 8
  %arrayidx41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i64 %idxprom38
  %imin42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imin42, i32 0, i64 1
  %52 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub nsw i32 %47, %52
  %53 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %arrayidx45, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space47 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %56, i32 0, i32 2
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space47, align 8
  %boxes48 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 0
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes48, align 8
  %arrayidx49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i64 %idxprom46
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 2
  %59 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %54, %59
  %60 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %60 to i64
  %61 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space54 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %61, i32 0, i32 2
  %62 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space54, align 8
  %boxes55 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %62, i32 0, i32 0
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes55, align 8
  %arrayidx56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i64 %idxprom53
  %imax57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx56, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imax57, i32 0, i64 1
  %64 = load i32, i32* %arrayidx58, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space60 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %66, i32 0, i32 2
  %67 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space60, align 8
  %boxes61 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %67, i32 0, i32 0
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes61, align 8
  %arrayidx62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i64 %idxprom59
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 1
  %69 = load i32, i32* %arrayidx64, align 4
  %sub65 = sub nsw i32 %64, %69
  %add = add nsw i32 %sub65, 1
  %cmp66 = icmp slt i32 0, %add
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %70 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space68 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %71, i32 0, i32 2
  %72 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space68, align 8
  %boxes69 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %72, i32 0, i32 0
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes69, align 8
  %arrayidx70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i64 %idxprom67
  %imax71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %imax71, i32 0, i64 1
  %74 = load i32, i32* %arrayidx72, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space74 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %76, i32 0, i32 2
  %77 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space74, align 8
  %boxes75 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %77, i32 0, i32 0
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes75, align 8
  %arrayidx76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i64 %idxprom73
  %imin77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx76, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imin77, i32 0, i64 1
  %79 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %74, %79
  %add80 = add nsw i32 %sub79, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add80, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub52, %cond
  %add81 = add nsw i32 %sub44, %mul
  %80 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %80 to i64
  %81 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space83 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %81, i32 0, i32 2
  %82 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space83, align 8
  %boxes84 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %82, i32 0, i32 0
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes84, align 8
  %arrayidx85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i64 %idxprom82
  %imax86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx85, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imax86, i32 0, i64 0
  %84 = load i32, i32* %arrayidx87, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %85 to i64
  %86 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space89 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %86, i32 0, i32 2
  %87 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space89, align 8
  %boxes90 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %87, i32 0, i32 0
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes90, align 8
  %arrayidx91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i64 %idxprom88
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx91, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i64 0
  %89 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %84, %89
  %add95 = add nsw i32 %sub94, 1
  %cmp96 = icmp slt i32 0, %add95
  br i1 %cmp96, label %cond.true.97, label %cond.false.112

cond.true.97:                                     ; preds = %cond.end
  %90 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %90 to i64
  %91 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space99 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %91, i32 0, i32 2
  %92 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space99, align 8
  %boxes100 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %92, i32 0, i32 0
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes100, align 8
  %arrayidx101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i64 %idxprom98
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 0
  %94 = load i32, i32* %arrayidx103, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %95 to i64
  %96 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space105 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %96, i32 0, i32 2
  %97 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space105, align 8
  %boxes106 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %97, i32 0, i32 0
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes106, align 8
  %arrayidx107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i64 %idxprom104
  %imin108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin108, i32 0, i64 0
  %99 = load i32, i32* %arrayidx109, align 4
  %sub110 = sub nsw i32 %94, %99
  %add111 = add nsw i32 %sub110, 1
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.97
  %cond114 = phi i32 [ %add111, %cond.true.97 ], [ 0, %cond.false.112 ]
  %mul115 = mul nsw i32 %add81, %cond114
  %add116 = add nsw i32 %sub, %mul115
  %idx.ext117 = sext i32 %add116 to i64
  %add.ptr118 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext117
  store double* %add.ptr118, double** %vecp, align 8
  %100 = load double*, double** %vecp, align 8
  %101 = load double, double* %100, align 8
  store double %101, double* %values, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.113, %land.lhs.true.24, %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %102 = load i32, i32* %i, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %103 = load double, double* %values, align 8
  %104 = load double*, double** %values_ptr.addr, align 8
  store double %103, double* %104, align 8
  %105 = load i32, i32* %ierr, align 4
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorGetBoxValues(%struct.hypre_StructVector_struct* %vector, %struct.hypre_Box_struct* %value_box, double* %values) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %value_box.addr = alloca %struct.hypre_Box_struct*, align 8
  %values.addr = alloca double*, align 8
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
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store %struct.hypre_Box_struct* %value_box, %struct.hypre_Box_struct** %value_box.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
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
  br i1 %tobool, label %if.then, label %if.end.400

if.then:                                          ; preds = %for.end
  %47 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space46 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %47, i32 0, i32 2
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
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx53, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.396, %if.then
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size55 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %size55, align 4
  %cmp56 = icmp slt i32 %50, %52
  br i1 %cmp56, label %for.body.57, label %for.end.398

for.body.57:                                      ; preds = %for.cond.54
  %53 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %53 to i64
  %54 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes59 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %54, i32 0, i32 0
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes59, align 8
  %arrayidx60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i64 %idxprom58
  store %struct.hypre_Box_struct* %arrayidx60, %struct.hypre_Box_struct** %box, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %56 to i64
  %57 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes62 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %57, i32 0, i32 0
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes62, align 8
  %arrayidx63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i64 %idxprom61
  store %struct.hypre_Box_struct* %arrayidx63, %struct.hypre_Box_struct** %data_box, align 8
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %tobool64 = icmp ne %struct.hypre_Box_struct* %59, null
  br i1 %tobool64, label %if.then.65, label %if.end.395

if.then.65:                                       ; preds = %for.body.57
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i32 0
  store i32* %arraydecay, i32** %data_start, align 8
  %61 = load i32*, i32** %data_start, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  store i32 %62, i32* %arrayidx68, align 4
  %63 = load i32*, i32** %data_start, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %63, i64 1
  %64 = load i32, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  store i32 %64, i32* %arrayidx70, align 4
  %65 = load i32*, i32** %data_start, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %65, i64 2
  %66 = load i32, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  store i32 %66, i32* %arrayidx72, align 4
  %67 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %67, i32 0, i32 3
  %68 = load double*, double** %data, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %69 to i64
  %70 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %70, i32 0, i32 6
  %71 = load i32*, i32** %data_indices, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %71, i64 %idxprom73
  %72 = load i32, i32* %arrayidx74, align 4
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds double, double* %68, i64 %idx.ext
  store double* %add.ptr, double** %datap, align 8
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call76 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %73, i32* %arraydecay75)
  %74 = load i32*, i32** %data_start, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx77, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 0
  %77 = load i32, i32* %arrayidx79, align 4
  %sub = sub nsw i32 %75, %77
  %78 = load i32*, i32** %data_start, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx80, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %imin81, i32 0, i64 1
  %81 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %79, %81
  %82 = load i32*, i32** %data_start, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %82, i64 2
  %83 = load i32, i32* %arrayidx84, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 2
  %85 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %83, %85
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax88, i32 0, i64 1
  %87 = load i32, i32* %arrayidx89, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imin90, i32 0, i64 1
  %89 = load i32, i32* %arrayidx91, align 4
  %sub92 = sub nsw i32 %87, %89
  %add = add nsw i32 %sub92, 1
  %cmp93 = icmp slt i32 0, %add
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.65
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imax94, i32 0, i64 1
  %91 = load i32, i32* %arrayidx95, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imin96, i32 0, i64 1
  %93 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %91, %93
  %add99 = add nsw i32 %sub98, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add99, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub87, %cond
  %add100 = add nsw i32 %sub83, %mul
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imax101, i32 0, i64 0
  %95 = load i32, i32* %arrayidx102, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imin103, i32 0, i64 0
  %97 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %95, %97
  %add106 = add nsw i32 %sub105, 1
  %cmp107 = icmp slt i32 0, %add106
  br i1 %cmp107, label %cond.true.108, label %cond.false.115

cond.true.108:                                    ; preds = %cond.end
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imax109, i32 0, i64 0
  %99 = load i32, i32* %arrayidx110, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imin111, i32 0, i64 0
  %101 = load i32, i32* %arrayidx112, align 4
  %sub113 = sub nsw i32 %99, %101
  %add114 = add nsw i32 %sub113, 1
  br label %cond.end.116

cond.false.115:                                   ; preds = %cond.end
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.108
  %cond117 = phi i32 [ %add114, %cond.true.108 ], [ 0, %cond.false.115 ]
  %mul118 = mul nsw i32 %add100, %cond117
  %add119 = add nsw i32 %sub, %mul118
  store i32 %add119, i32* %hypre__i1start, align 4
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 0
  %102 = load i32, i32* %arrayidx120, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imin121, i32 0, i64 0
  %104 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %102, %104
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 1
  %105 = load i32, i32* %arrayidx124, align 4
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imin125, i32 0, i64 1
  %107 = load i32, i32* %arrayidx126, align 4
  %sub127 = sub nsw i32 %105, %107
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_start, i32 0, i64 2
  %108 = load i32, i32* %arrayidx128, align 4
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imin129, i32 0, i64 2
  %110 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %108, %110
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imax132, i32 0, i64 1
  %112 = load i32, i32* %arrayidx133, align 4
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 1
  %114 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %112, %114
  %add137 = add nsw i32 %sub136, 1
  %cmp138 = icmp slt i32 0, %add137
  br i1 %cmp138, label %cond.true.139, label %cond.false.146

cond.true.139:                                    ; preds = %cond.end.116
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %imax140, i32 0, i64 1
  %116 = load i32, i32* %arrayidx141, align 4
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 1
  %118 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %116, %118
  %add145 = add nsw i32 %sub144, 1
  br label %cond.end.147

cond.false.146:                                   ; preds = %cond.end.116
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.139
  %cond148 = phi i32 [ %add145, %cond.true.139 ], [ 0, %cond.false.146 ]
  %mul149 = mul nsw i32 %sub131, %cond148
  %add150 = add nsw i32 %sub127, %mul149
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax151 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %imax151, i32 0, i64 0
  %120 = load i32, i32* %arrayidx152, align 4
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imin153, i32 0, i64 0
  %122 = load i32, i32* %arrayidx154, align 4
  %sub155 = sub nsw i32 %120, %122
  %add156 = add nsw i32 %sub155, 1
  %cmp157 = icmp slt i32 0, %add156
  br i1 %cmp157, label %cond.true.158, label %cond.false.165

cond.true.158:                                    ; preds = %cond.end.147
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax159 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %123, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [3 x i32], [3 x i32]* %imax159, i32 0, i64 0
  %124 = load i32, i32* %arrayidx160, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imin161, i32 0, i64 0
  %126 = load i32, i32* %arrayidx162, align 4
  %sub163 = sub nsw i32 %124, %126
  %add164 = add nsw i32 %sub163, 1
  br label %cond.end.166

cond.false.165:                                   ; preds = %cond.end.147
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.158
  %cond167 = phi i32 [ %add164, %cond.true.158 ], [ 0, %cond.false.165 ]
  %mul168 = mul nsw i32 %add150, %cond167
  %add169 = add nsw i32 %sub123, %mul168
  store i32 %add169, i32* %hypre__i2start, align 4
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 0
  %127 = load i32, i32* %arrayidx170, align 4
  store i32 %127, i32* %hypre__sx1, align 4
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 1
  %128 = load i32, i32* %arrayidx171, align 4
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %imax172, i32 0, i64 0
  %130 = load i32, i32* %arrayidx173, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %imin174, i32 0, i64 0
  %132 = load i32, i32* %arrayidx175, align 4
  %sub176 = sub nsw i32 %130, %132
  %add177 = add nsw i32 %sub176, 1
  %cmp178 = icmp slt i32 0, %add177
  br i1 %cmp178, label %cond.true.179, label %cond.false.186

cond.true.179:                                    ; preds = %cond.end.166
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax180, i32 0, i64 0
  %134 = load i32, i32* %arrayidx181, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin182, i32 0, i64 0
  %136 = load i32, i32* %arrayidx183, align 4
  %sub184 = sub nsw i32 %134, %136
  %add185 = add nsw i32 %sub184, 1
  br label %cond.end.187

cond.false.186:                                   ; preds = %cond.end.166
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.179
  %cond188 = phi i32 [ %add185, %cond.true.179 ], [ 0, %cond.false.186 ]
  %mul189 = mul nsw i32 %128, %cond188
  store i32 %mul189, i32* %hypre__sy1, align 4
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %data_stride, i32 0, i64 2
  %137 = load i32, i32* %arrayidx190, align 4
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %imax191, i32 0, i64 0
  %139 = load i32, i32* %arrayidx192, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imin193, i32 0, i64 0
  %141 = load i32, i32* %arrayidx194, align 4
  %sub195 = sub nsw i32 %139, %141
  %add196 = add nsw i32 %sub195, 1
  %cmp197 = icmp slt i32 0, %add196
  br i1 %cmp197, label %cond.true.198, label %cond.false.205

cond.true.198:                                    ; preds = %cond.end.187
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 0
  %143 = load i32, i32* %arrayidx200, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 0
  %145 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %143, %145
  %add204 = add nsw i32 %sub203, 1
  br label %cond.end.206

cond.false.205:                                   ; preds = %cond.end.187
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.198
  %cond207 = phi i32 [ %add204, %cond.true.198 ], [ 0, %cond.false.205 ]
  %mul208 = mul nsw i32 %137, %cond207
  %146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %146, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imax209, i32 0, i64 1
  %147 = load i32, i32* %arrayidx210, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imin211, i32 0, i64 1
  %149 = load i32, i32* %arrayidx212, align 4
  %sub213 = sub nsw i32 %147, %149
  %add214 = add nsw i32 %sub213, 1
  %cmp215 = icmp slt i32 0, %add214
  br i1 %cmp215, label %cond.true.216, label %cond.false.223

cond.true.216:                                    ; preds = %cond.end.206
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax217 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %imax217, i32 0, i64 1
  %151 = load i32, i32* %arrayidx218, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imin219, i32 0, i64 1
  %153 = load i32, i32* %arrayidx220, align 4
  %sub221 = sub nsw i32 %151, %153
  %add222 = add nsw i32 %sub221, 1
  br label %cond.end.224

cond.false.223:                                   ; preds = %cond.end.206
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.216
  %cond225 = phi i32 [ %add222, %cond.true.216 ], [ 0, %cond.false.223 ]
  %mul226 = mul nsw i32 %mul208, %cond225
  store i32 %mul226, i32* %hypre__sz1, align 4
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 0
  %154 = load i32, i32* %arrayidx227, align 4
  store i32 %154, i32* %hypre__sx2, align 4
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 1
  %155 = load i32, i32* %arrayidx228, align 4
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %imax229, i32 0, i64 0
  %157 = load i32, i32* %arrayidx230, align 4
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin231 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %imin231, i32 0, i64 0
  %159 = load i32, i32* %arrayidx232, align 4
  %sub233 = sub nsw i32 %157, %159
  %add234 = add nsw i32 %sub233, 1
  %cmp235 = icmp slt i32 0, %add234
  br i1 %cmp235, label %cond.true.236, label %cond.false.243

cond.true.236:                                    ; preds = %cond.end.224
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax237 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [3 x i32], [3 x i32]* %imax237, i32 0, i64 0
  %161 = load i32, i32* %arrayidx238, align 4
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %imin239, i32 0, i64 0
  %163 = load i32, i32* %arrayidx240, align 4
  %sub241 = sub nsw i32 %161, %163
  %add242 = add nsw i32 %sub241, 1
  br label %cond.end.244

cond.false.243:                                   ; preds = %cond.end.224
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.236
  %cond245 = phi i32 [ %add242, %cond.true.236 ], [ 0, %cond.false.243 ]
  %mul246 = mul nsw i32 %155, %cond245
  store i32 %mul246, i32* %hypre__sy2, align 4
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %dval_stride, i32 0, i64 2
  %164 = load i32, i32* %arrayidx247, align 4
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %imax248, i32 0, i64 0
  %166 = load i32, i32* %arrayidx249, align 4
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imin250, i32 0, i64 0
  %168 = load i32, i32* %arrayidx251, align 4
  %sub252 = sub nsw i32 %166, %168
  %add253 = add nsw i32 %sub252, 1
  %cmp254 = icmp slt i32 0, %add253
  br i1 %cmp254, label %cond.true.255, label %cond.false.262

cond.true.255:                                    ; preds = %cond.end.244
  %169 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax256 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %169, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [3 x i32], [3 x i32]* %imax256, i32 0, i64 0
  %170 = load i32, i32* %arrayidx257, align 4
  %171 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %171, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imin258, i32 0, i64 0
  %172 = load i32, i32* %arrayidx259, align 4
  %sub260 = sub nsw i32 %170, %172
  %add261 = add nsw i32 %sub260, 1
  br label %cond.end.263

cond.false.262:                                   ; preds = %cond.end.244
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.255
  %cond264 = phi i32 [ %add261, %cond.true.255 ], [ 0, %cond.false.262 ]
  %mul265 = mul nsw i32 %164, %cond264
  %173 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax266 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %173, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %imax266, i32 0, i64 1
  %174 = load i32, i32* %arrayidx267, align 4
  %175 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %175, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %imin268, i32 0, i64 1
  %176 = load i32, i32* %arrayidx269, align 4
  %sub270 = sub nsw i32 %174, %176
  %add271 = add nsw i32 %sub270, 1
  %cmp272 = icmp slt i32 0, %add271
  br i1 %cmp272, label %cond.true.273, label %cond.false.280

cond.true.273:                                    ; preds = %cond.end.263
  %177 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imax274 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %177, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [3 x i32], [3 x i32]* %imax274, i32 0, i64 1
  %178 = load i32, i32* %arrayidx275, align 4
  %179 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %imin276 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %179, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [3 x i32], [3 x i32]* %imin276, i32 0, i64 1
  %180 = load i32, i32* %arrayidx277, align 4
  %sub278 = sub nsw i32 %178, %180
  %add279 = add nsw i32 %sub278, 1
  br label %cond.end.281

cond.false.280:                                   ; preds = %cond.end.263
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.280, %cond.true.273
  %cond282 = phi i32 [ %add279, %cond.true.273 ], [ 0, %cond.false.280 ]
  %mul283 = mul nsw i32 %mul265, %cond282
  store i32 %mul283, i32* %hypre__sz2, align 4
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %181 = load i32, i32* %arrayidx284, align 4
  store i32 %181, i32* %hypre__nx, align 4
  %arrayidx285 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %182 = load i32, i32* %arrayidx285, align 4
  store i32 %182, i32* %hypre__ny, align 4
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %183 = load i32, i32* %arrayidx286, align 4
  store i32 %183, i32* %hypre__nz, align 4
  %184 = load i32, i32* %hypre__nx, align 4
  store i32 %184, i32* %hypre__mx, align 4
  %185 = load i32, i32* %hypre__ny, align 4
  store i32 %185, i32* %hypre__my, align 4
  %186 = load i32, i32* %hypre__nz, align 4
  store i32 %186, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %187 = load i32, i32* %hypre__nx, align 4
  store i32 %187, i32* %hypre__max, align 4
  %188 = load i32, i32* %hypre__ny, align 4
  %189 = load i32, i32* %hypre__max, align 4
  %cmp287 = icmp sgt i32 %188, %189
  br i1 %cmp287, label %if.then.288, label %if.end

if.then.288:                                      ; preds = %cond.end.281
  store i32 1, i32* %hypre__dir, align 4
  %190 = load i32, i32* %hypre__ny, align 4
  store i32 %190, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.288, %cond.end.281
  %191 = load i32, i32* %hypre__nz, align 4
  %192 = load i32, i32* %hypre__max, align 4
  %cmp289 = icmp sgt i32 %191, %192
  br i1 %cmp289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %193 = load i32, i32* %hypre__nz, align 4
  store i32 %193, i32* %hypre__max, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %194 = load i32, i32* %hypre__max, align 4
  %195 = load i32, i32* %hypre__num_blocks, align 4
  %cmp292 = icmp slt i32 %194, %195
  br i1 %cmp292, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.291
  %196 = load i32, i32* %hypre__max, align 4
  store i32 %196, i32* %hypre__num_blocks, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.293, %if.end.291
  %197 = load i32, i32* %hypre__num_blocks, align 4
  %cmp295 = icmp sgt i32 %197, 0
  br i1 %cmp295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.end.294
  %198 = load i32, i32* %hypre__max, align 4
  %199 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %198, %199
  store i32 %div, i32* %hypre__div, align 4
  %200 = load i32, i32* %hypre__max, align 4
  %201 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %200, %201
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.end.294
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.392, %if.end.297
  %202 = load i32, i32* %hypre__block, align 4
  %203 = load i32, i32* %hypre__num_blocks, align 4
  %cmp299 = icmp slt i32 %202, %203
  br i1 %cmp299, label %for.body.300, label %for.end.394

for.body.300:                                     ; preds = %for.cond.298
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %204 = load i32, i32* %hypre__mx, align 4
  store i32 %204, i32* %hypre__nx, align 4
  %205 = load i32, i32* %hypre__my, align 4
  store i32 %205, i32* %hypre__ny, align 4
  %206 = load i32, i32* %hypre__mz, align 4
  store i32 %206, i32* %hypre__nz, align 4
  %207 = load i32, i32* %hypre__num_blocks, align 4
  %cmp301 = icmp sgt i32 %207, 1
  br i1 %cmp301, label %if.then.302, label %if.end.343

if.then.302:                                      ; preds = %for.body.300
  %208 = load i32, i32* %hypre__dir, align 4
  %cmp303 = icmp eq i32 %208, 0
  br i1 %cmp303, label %if.then.304, label %if.else

if.then.304:                                      ; preds = %if.then.302
  %209 = load i32, i32* %hypre__block, align 4
  %210 = load i32, i32* %hypre__div, align 4
  %mul305 = mul nsw i32 %209, %210
  %211 = load i32, i32* %hypre__mod, align 4
  %212 = load i32, i32* %hypre__block, align 4
  %cmp306 = icmp slt i32 %211, %212
  br i1 %cmp306, label %cond.true.307, label %cond.false.308

cond.true.307:                                    ; preds = %if.then.304
  %213 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.309

cond.false.308:                                   ; preds = %if.then.304
  %214 = load i32, i32* %hypre__block, align 4
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.308, %cond.true.307
  %cond310 = phi i32 [ %213, %cond.true.307 ], [ %214, %cond.false.308 ]
  %add311 = add nsw i32 %mul305, %cond310
  store i32 %add311, i32* %loopi, align 4
  %215 = load i32, i32* %hypre__div, align 4
  %216 = load i32, i32* %hypre__mod, align 4
  %217 = load i32, i32* %hypre__block, align 4
  %cmp312 = icmp sgt i32 %216, %217
  %cond313 = select i1 %cmp312, i32 1, i32 0
  %add314 = add nsw i32 %215, %cond313
  store i32 %add314, i32* %hypre__nx, align 4
  br label %if.end.342

if.else:                                          ; preds = %if.then.302
  %218 = load i32, i32* %hypre__dir, align 4
  %cmp315 = icmp eq i32 %218, 1
  br i1 %cmp315, label %if.then.316, label %if.else.327

if.then.316:                                      ; preds = %if.else
  %219 = load i32, i32* %hypre__block, align 4
  %220 = load i32, i32* %hypre__div, align 4
  %mul317 = mul nsw i32 %219, %220
  %221 = load i32, i32* %hypre__mod, align 4
  %222 = load i32, i32* %hypre__block, align 4
  %cmp318 = icmp slt i32 %221, %222
  br i1 %cmp318, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %if.then.316
  %223 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.321

cond.false.320:                                   ; preds = %if.then.316
  %224 = load i32, i32* %hypre__block, align 4
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.320, %cond.true.319
  %cond322 = phi i32 [ %223, %cond.true.319 ], [ %224, %cond.false.320 ]
  %add323 = add nsw i32 %mul317, %cond322
  store i32 %add323, i32* %loopj, align 4
  %225 = load i32, i32* %hypre__div, align 4
  %226 = load i32, i32* %hypre__mod, align 4
  %227 = load i32, i32* %hypre__block, align 4
  %cmp324 = icmp sgt i32 %226, %227
  %cond325 = select i1 %cmp324, i32 1, i32 0
  %add326 = add nsw i32 %225, %cond325
  store i32 %add326, i32* %hypre__ny, align 4
  br label %if.end.341

if.else.327:                                      ; preds = %if.else
  %228 = load i32, i32* %hypre__dir, align 4
  %cmp328 = icmp eq i32 %228, 2
  br i1 %cmp328, label %if.then.329, label %if.end.340

if.then.329:                                      ; preds = %if.else.327
  %229 = load i32, i32* %hypre__block, align 4
  %230 = load i32, i32* %hypre__div, align 4
  %mul330 = mul nsw i32 %229, %230
  %231 = load i32, i32* %hypre__mod, align 4
  %232 = load i32, i32* %hypre__block, align 4
  %cmp331 = icmp slt i32 %231, %232
  br i1 %cmp331, label %cond.true.332, label %cond.false.333

cond.true.332:                                    ; preds = %if.then.329
  %233 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.334

cond.false.333:                                   ; preds = %if.then.329
  %234 = load i32, i32* %hypre__block, align 4
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.false.333, %cond.true.332
  %cond335 = phi i32 [ %233, %cond.true.332 ], [ %234, %cond.false.333 ]
  %add336 = add nsw i32 %mul330, %cond335
  store i32 %add336, i32* %loopk, align 4
  %235 = load i32, i32* %hypre__div, align 4
  %236 = load i32, i32* %hypre__mod, align 4
  %237 = load i32, i32* %hypre__block, align 4
  %cmp337 = icmp sgt i32 %236, %237
  %cond338 = select i1 %cmp337, i32 1, i32 0
  %add339 = add nsw i32 %235, %cond338
  store i32 %add339, i32* %hypre__nz, align 4
  br label %if.end.340

if.end.340:                                       ; preds = %cond.end.334, %if.else.327
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %cond.end.321
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %cond.end.309
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %for.body.300
  %238 = load i32, i32* %hypre__i1start, align 4
  %239 = load i32, i32* %loopi, align 4
  %240 = load i32, i32* %hypre__sx1, align 4
  %mul344 = mul nsw i32 %239, %240
  %add345 = add nsw i32 %238, %mul344
  %241 = load i32, i32* %loopj, align 4
  %242 = load i32, i32* %hypre__sy1, align 4
  %mul346 = mul nsw i32 %241, %242
  %add347 = add nsw i32 %add345, %mul346
  %243 = load i32, i32* %loopk, align 4
  %244 = load i32, i32* %hypre__sz1, align 4
  %mul348 = mul nsw i32 %243, %244
  %add349 = add nsw i32 %add347, %mul348
  store i32 %add349, i32* %datai, align 4
  %245 = load i32, i32* %hypre__i2start, align 4
  %246 = load i32, i32* %loopi, align 4
  %247 = load i32, i32* %hypre__sx2, align 4
  %mul350 = mul nsw i32 %246, %247
  %add351 = add nsw i32 %245, %mul350
  %248 = load i32, i32* %loopj, align 4
  %249 = load i32, i32* %hypre__sy2, align 4
  %mul352 = mul nsw i32 %248, %249
  %add353 = add nsw i32 %add351, %mul352
  %250 = load i32, i32* %loopk, align 4
  %251 = load i32, i32* %hypre__sz2, align 4
  %mul354 = mul nsw i32 %250, %251
  %add355 = add nsw i32 %add353, %mul354
  store i32 %add355, i32* %dvali, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.389, %if.end.343
  %252 = load i32, i32* %loopk, align 4
  %253 = load i32, i32* %hypre__nz, align 4
  %cmp357 = icmp slt i32 %252, %253
  br i1 %cmp357, label %for.body.358, label %for.end.391

for.body.358:                                     ; preds = %for.cond.356
  store i32 0, i32* %loopj, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.380, %for.body.358
  %254 = load i32, i32* %loopj, align 4
  %255 = load i32, i32* %hypre__ny, align 4
  %cmp360 = icmp slt i32 %254, %255
  br i1 %cmp360, label %for.body.361, label %for.end.382

for.body.361:                                     ; preds = %for.cond.359
  store i32 0, i32* %loopi, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.371, %for.body.361
  %256 = load i32, i32* %loopi, align 4
  %257 = load i32, i32* %hypre__nx, align 4
  %cmp363 = icmp slt i32 %256, %257
  br i1 %cmp363, label %for.body.364, label %for.end.373

for.body.364:                                     ; preds = %for.cond.362
  %258 = load i32, i32* %datai, align 4
  %idxprom365 = sext i32 %258 to i64
  %259 = load double*, double** %datap, align 8
  %arrayidx366 = getelementptr inbounds double, double* %259, i64 %idxprom365
  %260 = load double, double* %arrayidx366, align 8
  %261 = load i32, i32* %dvali, align 4
  %idxprom367 = sext i32 %261 to i64
  %262 = load double*, double** %values.addr, align 8
  %arrayidx368 = getelementptr inbounds double, double* %262, i64 %idxprom367
  store double %260, double* %arrayidx368, align 8
  %263 = load i32, i32* %hypre__sx1, align 4
  %264 = load i32, i32* %datai, align 4
  %add369 = add nsw i32 %264, %263
  store i32 %add369, i32* %datai, align 4
  %265 = load i32, i32* %hypre__sx2, align 4
  %266 = load i32, i32* %dvali, align 4
  %add370 = add nsw i32 %266, %265
  store i32 %add370, i32* %dvali, align 4
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.body.364
  %267 = load i32, i32* %loopi, align 4
  %inc372 = add nsw i32 %267, 1
  store i32 %inc372, i32* %loopi, align 4
  br label %for.cond.362

for.end.373:                                      ; preds = %for.cond.362
  %268 = load i32, i32* %hypre__sy1, align 4
  %269 = load i32, i32* %hypre__nx, align 4
  %270 = load i32, i32* %hypre__sx1, align 4
  %mul374 = mul nsw i32 %269, %270
  %sub375 = sub nsw i32 %268, %mul374
  %271 = load i32, i32* %datai, align 4
  %add376 = add nsw i32 %271, %sub375
  store i32 %add376, i32* %datai, align 4
  %272 = load i32, i32* %hypre__sy2, align 4
  %273 = load i32, i32* %hypre__nx, align 4
  %274 = load i32, i32* %hypre__sx2, align 4
  %mul377 = mul nsw i32 %273, %274
  %sub378 = sub nsw i32 %272, %mul377
  %275 = load i32, i32* %dvali, align 4
  %add379 = add nsw i32 %275, %sub378
  store i32 %add379, i32* %dvali, align 4
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.end.373
  %276 = load i32, i32* %loopj, align 4
  %inc381 = add nsw i32 %276, 1
  store i32 %inc381, i32* %loopj, align 4
  br label %for.cond.359

for.end.382:                                      ; preds = %for.cond.359
  %277 = load i32, i32* %hypre__sz1, align 4
  %278 = load i32, i32* %hypre__ny, align 4
  %279 = load i32, i32* %hypre__sy1, align 4
  %mul383 = mul nsw i32 %278, %279
  %sub384 = sub nsw i32 %277, %mul383
  %280 = load i32, i32* %datai, align 4
  %add385 = add nsw i32 %280, %sub384
  store i32 %add385, i32* %datai, align 4
  %281 = load i32, i32* %hypre__sz2, align 4
  %282 = load i32, i32* %hypre__ny, align 4
  %283 = load i32, i32* %hypre__sy2, align 4
  %mul386 = mul nsw i32 %282, %283
  %sub387 = sub nsw i32 %281, %mul386
  %284 = load i32, i32* %dvali, align 4
  %add388 = add nsw i32 %284, %sub387
  store i32 %add388, i32* %dvali, align 4
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.end.382
  %285 = load i32, i32* %loopk, align 4
  %inc390 = add nsw i32 %285, 1
  store i32 %inc390, i32* %loopk, align 4
  br label %for.cond.356

for.end.391:                                      ; preds = %for.cond.356
  br label %for.inc.392

for.inc.392:                                      ; preds = %for.end.391
  %286 = load i32, i32* %hypre__block, align 4
  %inc393 = add nsw i32 %286, 1
  store i32 %inc393, i32* %hypre__block, align 4
  br label %for.cond.298

for.end.394:                                      ; preds = %for.cond.298
  br label %if.end.395

if.end.395:                                       ; preds = %for.end.394, %for.body.57
  br label %for.inc.396

for.inc.396:                                      ; preds = %if.end.395
  %287 = load i32, i32* %i, align 4
  %inc397 = add nsw i32 %287, 1
  store i32 %inc397, i32* %i, align 4
  br label %for.cond.54

for.end.398:                                      ; preds = %for.cond.54
  %288 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %dval_box, align 8
  %call399 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %288)
  br label %if.end.400

if.end.400:                                       ; preds = %for.end.398, %for.end
  %289 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %call401 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %289)
  %290 = load i32, i32* %ierr, align 4
  ret i32 %290
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %vector, i32* %num_ghost) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %num_ghost.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
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
  %5 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %num_ghost2 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %5, i32 0, i32 7
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
define i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %ierr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %vector, double %values) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %values.addr = alloca double, align 8
  %ierr = alloca i32, align 4
  %v_data_box = alloca %struct.hypre_Box_struct*, align 8
  %vi = alloca i32, align 4
  %vp = alloca double*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %unit_stride = alloca [3 x i32], align 4
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
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store double %values, double* %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes3, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.203, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.205

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx5, %struct.hypre_Box_struct** %box, align 8
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 2
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom6
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %v_data_box, align 8
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 3
  %15 = load double*, double** %data, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 6
  %18 = load i32*, i32** %data_indices, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  store double* %add.ptr, double** %vp, align 8
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay11 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %20, i32* %arraydecay11)
  %21 = load i32*, i32** %start, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx12, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 0
  %24 = load i32, i32* %arrayidx14, align 4
  %sub = sub nsw i32 %22, %24
  %25 = load i32*, i32** %start, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 1
  %26 = load i32, i32* %arrayidx15, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  %28 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %26, %28
  %29 = load i32*, i32** %start, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx19, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imin20, i32 0, i64 2
  %32 = load i32, i32* %arrayidx21, align 4
  %sub22 = sub nsw i32 %30, %32
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %34 = load i32, i32* %arrayidx23, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 1
  %36 = load i32, i32* %arrayidx25, align 4
  %sub26 = sub nsw i32 %34, %36
  %add = add nsw i32 %sub26, 1
  %cmp27 = icmp slt i32 0, %add
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %imax28, i32 0, i64 1
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imin30, i32 0, i64 1
  %40 = load i32, i32* %arrayidx31, align 4
  %sub32 = sub nsw i32 %38, %40
  %add33 = add nsw i32 %sub32, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add33, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub22, %cond
  %add34 = add nsw i32 %sub18, %mul
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 0
  %42 = load i32, i32* %arrayidx36, align 4
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 0
  %44 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %42, %44
  %add40 = add nsw i32 %sub39, 1
  %cmp41 = icmp slt i32 0, %add40
  br i1 %cmp41, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.end
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 0
  %46 = load i32, i32* %arrayidx44, align 4
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imin45, i32 0, i64 0
  %48 = load i32, i32* %arrayidx46, align 4
  %sub47 = sub nsw i32 %46, %48
  %add48 = add nsw i32 %sub47, 1
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.42
  %cond51 = phi i32 [ %add48, %cond.true.42 ], [ 0, %cond.false.49 ]
  %mul52 = mul nsw i32 %add34, %cond51
  %add53 = add nsw i32 %sub, %mul52
  store i32 %add53, i32* %hypre__i1start, align 4
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  %49 = load i32, i32* %arrayidx54, align 4
  store i32 %49, i32* %hypre__sx1, align 4
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  %50 = load i32, i32* %arrayidx55, align 4
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imax56, i32 0, i64 0
  %52 = load i32, i32* %arrayidx57, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 0
  %54 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %52, %54
  %add61 = add nsw i32 %sub60, 1
  %cmp62 = icmp slt i32 0, %add61
  br i1 %cmp62, label %cond.true.63, label %cond.false.70

cond.true.63:                                     ; preds = %cond.end.50
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 0
  %56 = load i32, i32* %arrayidx65, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i64 0
  %58 = load i32, i32* %arrayidx67, align 4
  %sub68 = sub nsw i32 %56, %58
  %add69 = add nsw i32 %sub68, 1
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.end.50
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.63
  %cond72 = phi i32 [ %add69, %cond.true.63 ], [ 0, %cond.false.70 ]
  %mul73 = mul nsw i32 %50, %cond72
  store i32 %mul73, i32* %hypre__sy1, align 4
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  %59 = load i32, i32* %arrayidx74, align 4
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imax75, i32 0, i64 0
  %61 = load i32, i32* %arrayidx76, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imin77, i32 0, i64 0
  %63 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %61, %63
  %add80 = add nsw i32 %sub79, 1
  %cmp81 = icmp slt i32 0, %add80
  br i1 %cmp81, label %cond.true.82, label %cond.false.89

cond.true.82:                                     ; preds = %cond.end.71
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 0
  %65 = load i32, i32* %arrayidx84, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 0
  %67 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %65, %67
  %add88 = add nsw i32 %sub87, 1
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.end.71
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.82
  %cond91 = phi i32 [ %add88, %cond.true.82 ], [ 0, %cond.false.89 ]
  %mul92 = mul nsw i32 %59, %cond91
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imax93, i32 0, i64 1
  %69 = load i32, i32* %arrayidx94, align 4
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %71 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %69, %71
  %add98 = add nsw i32 %sub97, 1
  %cmp99 = icmp slt i32 0, %add98
  br i1 %cmp99, label %cond.true.100, label %cond.false.107

cond.true.100:                                    ; preds = %cond.end.90
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imax101, i32 0, i64 1
  %73 = load i32, i32* %arrayidx102, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imin103, i32 0, i64 1
  %75 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %73, %75
  %add106 = add nsw i32 %sub105, 1
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.end.90
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.100
  %cond109 = phi i32 [ %add106, %cond.true.100 ], [ 0, %cond.false.107 ]
  %mul110 = mul nsw i32 %mul92, %cond109
  store i32 %mul110, i32* %hypre__sz1, align 4
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %76 = load i32, i32* %arrayidx111, align 4
  store i32 %76, i32* %hypre__nx, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %77 = load i32, i32* %arrayidx112, align 4
  store i32 %77, i32* %hypre__ny, align 4
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %78 = load i32, i32* %arrayidx113, align 4
  store i32 %78, i32* %hypre__nz, align 4
  %79 = load i32, i32* %hypre__nx, align 4
  store i32 %79, i32* %hypre__mx, align 4
  %80 = load i32, i32* %hypre__ny, align 4
  store i32 %80, i32* %hypre__my, align 4
  %81 = load i32, i32* %hypre__nz, align 4
  store i32 %81, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %82 = load i32, i32* %hypre__nx, align 4
  store i32 %82, i32* %hypre__max, align 4
  %83 = load i32, i32* %hypre__ny, align 4
  %84 = load i32, i32* %hypre__max, align 4
  %cmp114 = icmp sgt i32 %83, %84
  br i1 %cmp114, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.108
  store i32 1, i32* %hypre__dir, align 4
  %85 = load i32, i32* %hypre__ny, align 4
  store i32 %85, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.108
  %86 = load i32, i32* %hypre__nz, align 4
  %87 = load i32, i32* %hypre__max, align 4
  %cmp115 = icmp sgt i32 %86, %87
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %88 = load i32, i32* %hypre__nz, align 4
  store i32 %88, i32* %hypre__max, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %89 = load i32, i32* %hypre__max, align 4
  %90 = load i32, i32* %hypre__num_blocks, align 4
  %cmp118 = icmp slt i32 %89, %90
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  %91 = load i32, i32* %hypre__max, align 4
  store i32 %91, i32* %hypre__num_blocks, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  %92 = load i32, i32* %hypre__num_blocks, align 4
  %cmp121 = icmp sgt i32 %92, 0
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  %93 = load i32, i32* %hypre__max, align 4
  %94 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %93, %94
  store i32 %div, i32* %hypre__div, align 4
  %95 = load i32, i32* %hypre__max, align 4
  %96 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %95, %96
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.200, %if.end.123
  %97 = load i32, i32* %hypre__block, align 4
  %98 = load i32, i32* %hypre__num_blocks, align 4
  %cmp125 = icmp slt i32 %97, %98
  br i1 %cmp125, label %for.body.126, label %for.end.202

for.body.126:                                     ; preds = %for.cond.124
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %99 = load i32, i32* %hypre__mx, align 4
  store i32 %99, i32* %hypre__nx, align 4
  %100 = load i32, i32* %hypre__my, align 4
  store i32 %100, i32* %hypre__ny, align 4
  %101 = load i32, i32* %hypre__mz, align 4
  store i32 %101, i32* %hypre__nz, align 4
  %102 = load i32, i32* %hypre__num_blocks, align 4
  %cmp127 = icmp sgt i32 %102, 1
  br i1 %cmp127, label %if.then.128, label %if.end.169

if.then.128:                                      ; preds = %for.body.126
  %103 = load i32, i32* %hypre__dir, align 4
  %cmp129 = icmp eq i32 %103, 0
  br i1 %cmp129, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.then.128
  %104 = load i32, i32* %hypre__block, align 4
  %105 = load i32, i32* %hypre__div, align 4
  %mul131 = mul nsw i32 %104, %105
  %106 = load i32, i32* %hypre__mod, align 4
  %107 = load i32, i32* %hypre__block, align 4
  %cmp132 = icmp slt i32 %106, %107
  br i1 %cmp132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.130
  %108 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.then.130
  %109 = load i32, i32* %hypre__block, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %108, %cond.true.133 ], [ %109, %cond.false.134 ]
  %add137 = add nsw i32 %mul131, %cond136
  store i32 %add137, i32* %loopi, align 4
  %110 = load i32, i32* %hypre__div, align 4
  %111 = load i32, i32* %hypre__mod, align 4
  %112 = load i32, i32* %hypre__block, align 4
  %cmp138 = icmp sgt i32 %111, %112
  %cond139 = select i1 %cmp138, i32 1, i32 0
  %add140 = add nsw i32 %110, %cond139
  store i32 %add140, i32* %hypre__nx, align 4
  br label %if.end.168

if.else:                                          ; preds = %if.then.128
  %113 = load i32, i32* %hypre__dir, align 4
  %cmp141 = icmp eq i32 %113, 1
  br i1 %cmp141, label %if.then.142, label %if.else.153

if.then.142:                                      ; preds = %if.else
  %114 = load i32, i32* %hypre__block, align 4
  %115 = load i32, i32* %hypre__div, align 4
  %mul143 = mul nsw i32 %114, %115
  %116 = load i32, i32* %hypre__mod, align 4
  %117 = load i32, i32* %hypre__block, align 4
  %cmp144 = icmp slt i32 %116, %117
  br i1 %cmp144, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %if.then.142
  %118 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.147

cond.false.146:                                   ; preds = %if.then.142
  %119 = load i32, i32* %hypre__block, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.145
  %cond148 = phi i32 [ %118, %cond.true.145 ], [ %119, %cond.false.146 ]
  %add149 = add nsw i32 %mul143, %cond148
  store i32 %add149, i32* %loopj, align 4
  %120 = load i32, i32* %hypre__div, align 4
  %121 = load i32, i32* %hypre__mod, align 4
  %122 = load i32, i32* %hypre__block, align 4
  %cmp150 = icmp sgt i32 %121, %122
  %cond151 = select i1 %cmp150, i32 1, i32 0
  %add152 = add nsw i32 %120, %cond151
  store i32 %add152, i32* %hypre__ny, align 4
  br label %if.end.167

if.else.153:                                      ; preds = %if.else
  %123 = load i32, i32* %hypre__dir, align 4
  %cmp154 = icmp eq i32 %123, 2
  br i1 %cmp154, label %if.then.155, label %if.end.166

if.then.155:                                      ; preds = %if.else.153
  %124 = load i32, i32* %hypre__block, align 4
  %125 = load i32, i32* %hypre__div, align 4
  %mul156 = mul nsw i32 %124, %125
  %126 = load i32, i32* %hypre__mod, align 4
  %127 = load i32, i32* %hypre__block, align 4
  %cmp157 = icmp slt i32 %126, %127
  br i1 %cmp157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.then.155
  %128 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.then.155
  %129 = load i32, i32* %hypre__block, align 4
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi i32 [ %128, %cond.true.158 ], [ %129, %cond.false.159 ]
  %add162 = add nsw i32 %mul156, %cond161
  store i32 %add162, i32* %loopk, align 4
  %130 = load i32, i32* %hypre__div, align 4
  %131 = load i32, i32* %hypre__mod, align 4
  %132 = load i32, i32* %hypre__block, align 4
  %cmp163 = icmp sgt i32 %131, %132
  %cond164 = select i1 %cmp163, i32 1, i32 0
  %add165 = add nsw i32 %130, %cond164
  store i32 %add165, i32* %hypre__nz, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.160, %if.else.153
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %cond.end.147
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %cond.end.135
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.body.126
  %133 = load i32, i32* %hypre__i1start, align 4
  %134 = load i32, i32* %loopi, align 4
  %135 = load i32, i32* %hypre__sx1, align 4
  %mul170 = mul nsw i32 %134, %135
  %add171 = add nsw i32 %133, %mul170
  %136 = load i32, i32* %loopj, align 4
  %137 = load i32, i32* %hypre__sy1, align 4
  %mul172 = mul nsw i32 %136, %137
  %add173 = add nsw i32 %add171, %mul172
  %138 = load i32, i32* %loopk, align 4
  %139 = load i32, i32* %hypre__sz1, align 4
  %mul174 = mul nsw i32 %138, %139
  %add175 = add nsw i32 %add173, %mul174
  store i32 %add175, i32* %vi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.197, %if.end.169
  %140 = load i32, i32* %loopk, align 4
  %141 = load i32, i32* %hypre__nz, align 4
  %cmp177 = icmp slt i32 %140, %141
  br i1 %cmp177, label %for.body.178, label %for.end.199

for.body.178:                                     ; preds = %for.cond.176
  store i32 0, i32* %loopj, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.191, %for.body.178
  %142 = load i32, i32* %loopj, align 4
  %143 = load i32, i32* %hypre__ny, align 4
  %cmp180 = icmp slt i32 %142, %143
  br i1 %cmp180, label %for.body.181, label %for.end.193

for.body.181:                                     ; preds = %for.cond.179
  store i32 0, i32* %loopi, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc, %for.body.181
  %144 = load i32, i32* %loopi, align 4
  %145 = load i32, i32* %hypre__nx, align 4
  %cmp183 = icmp slt i32 %144, %145
  br i1 %cmp183, label %for.body.184, label %for.end

for.body.184:                                     ; preds = %for.cond.182
  %146 = load double, double* %values.addr, align 8
  %147 = load i32, i32* %vi, align 4
  %idxprom185 = sext i32 %147 to i64
  %148 = load double*, double** %vp, align 8
  %arrayidx186 = getelementptr inbounds double, double* %148, i64 %idxprom185
  store double %146, double* %arrayidx186, align 8
  %149 = load i32, i32* %hypre__sx1, align 4
  %150 = load i32, i32* %vi, align 4
  %add187 = add nsw i32 %150, %149
  store i32 %add187, i32* %vi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.184
  %151 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.182

for.end:                                          ; preds = %for.cond.182
  %152 = load i32, i32* %hypre__sy1, align 4
  %153 = load i32, i32* %hypre__nx, align 4
  %154 = load i32, i32* %hypre__sx1, align 4
  %mul188 = mul nsw i32 %153, %154
  %sub189 = sub nsw i32 %152, %mul188
  %155 = load i32, i32* %vi, align 4
  %add190 = add nsw i32 %155, %sub189
  store i32 %add190, i32* %vi, align 4
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.end
  %156 = load i32, i32* %loopj, align 4
  %inc192 = add nsw i32 %156, 1
  store i32 %inc192, i32* %loopj, align 4
  br label %for.cond.179

for.end.193:                                      ; preds = %for.cond.179
  %157 = load i32, i32* %hypre__sz1, align 4
  %158 = load i32, i32* %hypre__ny, align 4
  %159 = load i32, i32* %hypre__sy1, align 4
  %mul194 = mul nsw i32 %158, %159
  %sub195 = sub nsw i32 %157, %mul194
  %160 = load i32, i32* %vi, align 4
  %add196 = add nsw i32 %160, %sub195
  store i32 %add196, i32* %vi, align 4
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.193
  %161 = load i32, i32* %loopk, align 4
  %inc198 = add nsw i32 %161, 1
  store i32 %inc198, i32* %loopk, align 4
  br label %for.cond.176

for.end.199:                                      ; preds = %for.cond.176
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199
  %162 = load i32, i32* %hypre__block, align 4
  %inc201 = add nsw i32 %162, 1
  store i32 %inc201, i32* %hypre__block, align 4
  br label %for.cond.124

for.end.202:                                      ; preds = %for.cond.124
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.end.202
  %163 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %163, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond

for.end.205:                                      ; preds = %for.cond
  %164 = load i32, i32* %ierr, align 4
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorClearGhostValues(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %v_data_box = alloca %struct.hypre_Box_struct*, align 8
  %vi = alloca i32, align 4
  %vp = alloca double*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %diff_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %diff_box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %unit_stride = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes3, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %diff_boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.215, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.217

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx5, %struct.hypre_Box_struct** %box, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %10, i32 0, i32 2
  %11 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %11, i32 0, i32 0
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i64 %idxprom6
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %v_data_box, align 8
  %13 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %13, i32 0, i32 3
  %14 = load double*, double** %data, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %16, i32 0, i32 6
  %17 = load i32*, i32** %data_indices, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds double, double* %14, i64 %idx.ext
  store double* %add.ptr, double** %vp, align 8
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %21 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %diff_boxes, align 8
  %call11 = call i32 @hypre_SubtractBoxes(%struct.hypre_Box_struct* %19, %struct.hypre_Box_struct* %20, %struct.hypre_BoxArray_struct* %21)
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.212, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %diff_boxes, align 8
  %size13 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size13, align 4
  %cmp14 = icmp slt i32 %22, %24
  br i1 %cmp14, label %for.body.15, label %for.end.214

for.body.15:                                      ; preds = %for.cond.12
  %25 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %diff_boxes, align 8
  %boxes17 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes17, align 8
  %arrayidx18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom16
  store %struct.hypre_Box_struct* %arrayidx18, %struct.hypre_Box_struct** %diff_box, align 8
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %diff_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %diff_box, align 8
  %arraydecay19 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call20 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %29, i32* %arraydecay19)
  %30 = load i32*, i32** %start, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx21, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 0
  %33 = load i32, i32* %arrayidx23, align 4
  %sub = sub nsw i32 %31, %33
  %34 = load i32*, i32** %start, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 1
  %35 = load i32, i32* %arrayidx24, align 4
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 1
  %37 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub nsw i32 %35, %37
  %38 = load i32*, i32** %start, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %38, i64 2
  %39 = load i32, i32* %arrayidx28, align 4
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 2
  %41 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %39, %41
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %43 = load i32, i32* %arrayidx32, align 4
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imin33, i32 0, i64 1
  %45 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %43, %45
  %add = add nsw i32 %sub35, 1
  %cmp36 = icmp slt i32 0, %add
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imax37, i32 0, i64 1
  %47 = load i32, i32* %arrayidx38, align 4
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %imin39, i32 0, i64 1
  %49 = load i32, i32* %arrayidx40, align 4
  %sub41 = sub nsw i32 %47, %49
  %add42 = add nsw i32 %sub41, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add42, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub31, %cond
  %add43 = add nsw i32 %sub27, %mul
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imax44, i32 0, i64 0
  %51 = load i32, i32* %arrayidx45, align 4
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin46 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %imin46, i32 0, i64 0
  %53 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %51, %53
  %add49 = add nsw i32 %sub48, 1
  %cmp50 = icmp slt i32 0, %add49
  br i1 %cmp50, label %cond.true.51, label %cond.false.58

cond.true.51:                                     ; preds = %cond.end
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imax52, i32 0, i64 0
  %55 = load i32, i32* %arrayidx53, align 4
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 0
  %57 = load i32, i32* %arrayidx55, align 4
  %sub56 = sub nsw i32 %55, %57
  %add57 = add nsw i32 %sub56, 1
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.51
  %cond60 = phi i32 [ %add57, %cond.true.51 ], [ 0, %cond.false.58 ]
  %mul61 = mul nsw i32 %add43, %cond60
  %add62 = add nsw i32 %sub, %mul61
  store i32 %add62, i32* %hypre__i1start, align 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  %58 = load i32, i32* %arrayidx63, align 4
  store i32 %58, i32* %hypre__sx1, align 4
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  %59 = load i32, i32* %arrayidx64, align 4
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imax65, i32 0, i64 0
  %61 = load i32, i32* %arrayidx66, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 0
  %63 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %61, %63
  %add70 = add nsw i32 %sub69, 1
  %cmp71 = icmp slt i32 0, %add70
  br i1 %cmp71, label %cond.true.72, label %cond.false.79

cond.true.72:                                     ; preds = %cond.end.59
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imax73, i32 0, i64 0
  %65 = load i32, i32* %arrayidx74, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imin75, i32 0, i64 0
  %67 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %65, %67
  %add78 = add nsw i32 %sub77, 1
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.59
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.72
  %cond81 = phi i32 [ %add78, %cond.true.72 ], [ 0, %cond.false.79 ]
  %mul82 = mul nsw i32 %59, %cond81
  store i32 %mul82, i32* %hypre__sy1, align 4
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  %68 = load i32, i32* %arrayidx83, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 0
  %70 = load i32, i32* %arrayidx85, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 0
  %72 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %70, %72
  %add89 = add nsw i32 %sub88, 1
  %cmp90 = icmp slt i32 0, %add89
  br i1 %cmp90, label %cond.true.91, label %cond.false.98

cond.true.91:                                     ; preds = %cond.end.80
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 0
  %74 = load i32, i32* %arrayidx93, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imin94, i32 0, i64 0
  %76 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %74, %76
  %add97 = add nsw i32 %sub96, 1
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.end.80
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.91
  %cond100 = phi i32 [ %add97, %cond.true.91 ], [ 0, %cond.false.98 ]
  %mul101 = mul nsw i32 %68, %cond100
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 1
  %78 = load i32, i32* %arrayidx103, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 1
  %80 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %78, %80
  %add107 = add nsw i32 %sub106, 1
  %cmp108 = icmp slt i32 0, %add107
  br i1 %cmp108, label %cond.true.109, label %cond.false.116

cond.true.109:                                    ; preds = %cond.end.99
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax110, i32 0, i64 1
  %82 = load i32, i32* %arrayidx111, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin112, i32 0, i64 1
  %84 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %82, %84
  %add115 = add nsw i32 %sub114, 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.99
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.109
  %cond118 = phi i32 [ %add115, %cond.true.109 ], [ 0, %cond.false.116 ]
  %mul119 = mul nsw i32 %mul101, %cond118
  store i32 %mul119, i32* %hypre__sz1, align 4
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %85 = load i32, i32* %arrayidx120, align 4
  store i32 %85, i32* %hypre__nx, align 4
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %86 = load i32, i32* %arrayidx121, align 4
  store i32 %86, i32* %hypre__ny, align 4
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %87 = load i32, i32* %arrayidx122, align 4
  store i32 %87, i32* %hypre__nz, align 4
  %88 = load i32, i32* %hypre__nx, align 4
  store i32 %88, i32* %hypre__mx, align 4
  %89 = load i32, i32* %hypre__ny, align 4
  store i32 %89, i32* %hypre__my, align 4
  %90 = load i32, i32* %hypre__nz, align 4
  store i32 %90, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %91 = load i32, i32* %hypre__nx, align 4
  store i32 %91, i32* %hypre__max, align 4
  %92 = load i32, i32* %hypre__ny, align 4
  %93 = load i32, i32* %hypre__max, align 4
  %cmp123 = icmp sgt i32 %92, %93
  br i1 %cmp123, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.117
  store i32 1, i32* %hypre__dir, align 4
  %94 = load i32, i32* %hypre__ny, align 4
  store i32 %94, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.117
  %95 = load i32, i32* %hypre__nz, align 4
  %96 = load i32, i32* %hypre__max, align 4
  %cmp124 = icmp sgt i32 %95, %96
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %97 = load i32, i32* %hypre__nz, align 4
  store i32 %97, i32* %hypre__max, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %98 = load i32, i32* %hypre__max, align 4
  %99 = load i32, i32* %hypre__num_blocks, align 4
  %cmp127 = icmp slt i32 %98, %99
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.126
  %100 = load i32, i32* %hypre__max, align 4
  store i32 %100, i32* %hypre__num_blocks, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.126
  %101 = load i32, i32* %hypre__num_blocks, align 4
  %cmp130 = icmp sgt i32 %101, 0
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  %102 = load i32, i32* %hypre__max, align 4
  %103 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %102, %103
  store i32 %div, i32* %hypre__div, align 4
  %104 = load i32, i32* %hypre__max, align 4
  %105 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %104, %105
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.end.129
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.209, %if.end.132
  %106 = load i32, i32* %hypre__block, align 4
  %107 = load i32, i32* %hypre__num_blocks, align 4
  %cmp134 = icmp slt i32 %106, %107
  br i1 %cmp134, label %for.body.135, label %for.end.211

for.body.135:                                     ; preds = %for.cond.133
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %108 = load i32, i32* %hypre__mx, align 4
  store i32 %108, i32* %hypre__nx, align 4
  %109 = load i32, i32* %hypre__my, align 4
  store i32 %109, i32* %hypre__ny, align 4
  %110 = load i32, i32* %hypre__mz, align 4
  store i32 %110, i32* %hypre__nz, align 4
  %111 = load i32, i32* %hypre__num_blocks, align 4
  %cmp136 = icmp sgt i32 %111, 1
  br i1 %cmp136, label %if.then.137, label %if.end.178

if.then.137:                                      ; preds = %for.body.135
  %112 = load i32, i32* %hypre__dir, align 4
  %cmp138 = icmp eq i32 %112, 0
  br i1 %cmp138, label %if.then.139, label %if.else

if.then.139:                                      ; preds = %if.then.137
  %113 = load i32, i32* %hypre__block, align 4
  %114 = load i32, i32* %hypre__div, align 4
  %mul140 = mul nsw i32 %113, %114
  %115 = load i32, i32* %hypre__mod, align 4
  %116 = load i32, i32* %hypre__block, align 4
  %cmp141 = icmp slt i32 %115, %116
  br i1 %cmp141, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %if.then.139
  %117 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.144

cond.false.143:                                   ; preds = %if.then.139
  %118 = load i32, i32* %hypre__block, align 4
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi i32 [ %117, %cond.true.142 ], [ %118, %cond.false.143 ]
  %add146 = add nsw i32 %mul140, %cond145
  store i32 %add146, i32* %loopi, align 4
  %119 = load i32, i32* %hypre__div, align 4
  %120 = load i32, i32* %hypre__mod, align 4
  %121 = load i32, i32* %hypre__block, align 4
  %cmp147 = icmp sgt i32 %120, %121
  %cond148 = select i1 %cmp147, i32 1, i32 0
  %add149 = add nsw i32 %119, %cond148
  store i32 %add149, i32* %hypre__nx, align 4
  br label %if.end.177

if.else:                                          ; preds = %if.then.137
  %122 = load i32, i32* %hypre__dir, align 4
  %cmp150 = icmp eq i32 %122, 1
  br i1 %cmp150, label %if.then.151, label %if.else.162

if.then.151:                                      ; preds = %if.else
  %123 = load i32, i32* %hypre__block, align 4
  %124 = load i32, i32* %hypre__div, align 4
  %mul152 = mul nsw i32 %123, %124
  %125 = load i32, i32* %hypre__mod, align 4
  %126 = load i32, i32* %hypre__block, align 4
  %cmp153 = icmp slt i32 %125, %126
  br i1 %cmp153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.then.151
  %127 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.156

cond.false.155:                                   ; preds = %if.then.151
  %128 = load i32, i32* %hypre__block, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ %127, %cond.true.154 ], [ %128, %cond.false.155 ]
  %add158 = add nsw i32 %mul152, %cond157
  store i32 %add158, i32* %loopj, align 4
  %129 = load i32, i32* %hypre__div, align 4
  %130 = load i32, i32* %hypre__mod, align 4
  %131 = load i32, i32* %hypre__block, align 4
  %cmp159 = icmp sgt i32 %130, %131
  %cond160 = select i1 %cmp159, i32 1, i32 0
  %add161 = add nsw i32 %129, %cond160
  store i32 %add161, i32* %hypre__ny, align 4
  br label %if.end.176

if.else.162:                                      ; preds = %if.else
  %132 = load i32, i32* %hypre__dir, align 4
  %cmp163 = icmp eq i32 %132, 2
  br i1 %cmp163, label %if.then.164, label %if.end.175

if.then.164:                                      ; preds = %if.else.162
  %133 = load i32, i32* %hypre__block, align 4
  %134 = load i32, i32* %hypre__div, align 4
  %mul165 = mul nsw i32 %133, %134
  %135 = load i32, i32* %hypre__mod, align 4
  %136 = load i32, i32* %hypre__block, align 4
  %cmp166 = icmp slt i32 %135, %136
  br i1 %cmp166, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %if.then.164
  %137 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.169

cond.false.168:                                   ; preds = %if.then.164
  %138 = load i32, i32* %hypre__block, align 4
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.167
  %cond170 = phi i32 [ %137, %cond.true.167 ], [ %138, %cond.false.168 ]
  %add171 = add nsw i32 %mul165, %cond170
  store i32 %add171, i32* %loopk, align 4
  %139 = load i32, i32* %hypre__div, align 4
  %140 = load i32, i32* %hypre__mod, align 4
  %141 = load i32, i32* %hypre__block, align 4
  %cmp172 = icmp sgt i32 %140, %141
  %cond173 = select i1 %cmp172, i32 1, i32 0
  %add174 = add nsw i32 %139, %cond173
  store i32 %add174, i32* %hypre__nz, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.169, %if.else.162
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %cond.end.156
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %cond.end.144
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.body.135
  %142 = load i32, i32* %hypre__i1start, align 4
  %143 = load i32, i32* %loopi, align 4
  %144 = load i32, i32* %hypre__sx1, align 4
  %mul179 = mul nsw i32 %143, %144
  %add180 = add nsw i32 %142, %mul179
  %145 = load i32, i32* %loopj, align 4
  %146 = load i32, i32* %hypre__sy1, align 4
  %mul181 = mul nsw i32 %145, %146
  %add182 = add nsw i32 %add180, %mul181
  %147 = load i32, i32* %loopk, align 4
  %148 = load i32, i32* %hypre__sz1, align 4
  %mul183 = mul nsw i32 %147, %148
  %add184 = add nsw i32 %add182, %mul183
  store i32 %add184, i32* %vi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.206, %if.end.178
  %149 = load i32, i32* %loopk, align 4
  %150 = load i32, i32* %hypre__nz, align 4
  %cmp186 = icmp slt i32 %149, %150
  br i1 %cmp186, label %for.body.187, label %for.end.208

for.body.187:                                     ; preds = %for.cond.185
  store i32 0, i32* %loopj, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.200, %for.body.187
  %151 = load i32, i32* %loopj, align 4
  %152 = load i32, i32* %hypre__ny, align 4
  %cmp189 = icmp slt i32 %151, %152
  br i1 %cmp189, label %for.body.190, label %for.end.202

for.body.190:                                     ; preds = %for.cond.188
  store i32 0, i32* %loopi, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc, %for.body.190
  %153 = load i32, i32* %loopi, align 4
  %154 = load i32, i32* %hypre__nx, align 4
  %cmp192 = icmp slt i32 %153, %154
  br i1 %cmp192, label %for.body.193, label %for.end

for.body.193:                                     ; preds = %for.cond.191
  %155 = load i32, i32* %vi, align 4
  %idxprom194 = sext i32 %155 to i64
  %156 = load double*, double** %vp, align 8
  %arrayidx195 = getelementptr inbounds double, double* %156, i64 %idxprom194
  store double 0.000000e+00, double* %arrayidx195, align 8
  %157 = load i32, i32* %hypre__sx1, align 4
  %158 = load i32, i32* %vi, align 4
  %add196 = add nsw i32 %158, %157
  store i32 %add196, i32* %vi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.193
  %159 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %159, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.191

for.end:                                          ; preds = %for.cond.191
  %160 = load i32, i32* %hypre__sy1, align 4
  %161 = load i32, i32* %hypre__nx, align 4
  %162 = load i32, i32* %hypre__sx1, align 4
  %mul197 = mul nsw i32 %161, %162
  %sub198 = sub nsw i32 %160, %mul197
  %163 = load i32, i32* %vi, align 4
  %add199 = add nsw i32 %163, %sub198
  store i32 %add199, i32* %vi, align 4
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end
  %164 = load i32, i32* %loopj, align 4
  %inc201 = add nsw i32 %164, 1
  store i32 %inc201, i32* %loopj, align 4
  br label %for.cond.188

for.end.202:                                      ; preds = %for.cond.188
  %165 = load i32, i32* %hypre__sz1, align 4
  %166 = load i32, i32* %hypre__ny, align 4
  %167 = load i32, i32* %hypre__sy1, align 4
  %mul203 = mul nsw i32 %166, %167
  %sub204 = sub nsw i32 %165, %mul203
  %168 = load i32, i32* %vi, align 4
  %add205 = add nsw i32 %168, %sub204
  store i32 %add205, i32* %vi, align 4
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.202
  %169 = load i32, i32* %loopk, align 4
  %inc207 = add nsw i32 %169, 1
  store i32 %inc207, i32* %loopk, align 4
  br label %for.cond.185

for.end.208:                                      ; preds = %for.cond.185
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.end.208
  %170 = load i32, i32* %hypre__block, align 4
  %inc210 = add nsw i32 %170, 1
  store i32 %inc210, i32* %hypre__block, align 4
  br label %for.cond.133

for.end.211:                                      ; preds = %for.cond.133
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.211
  %171 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %171, 1
  store i32 %inc213, i32* %j, align 4
  br label %for.cond.12

for.end.214:                                      ; preds = %for.cond.12
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %172 = load i32, i32* %i, align 4
  %inc216 = add nsw i32 %172, 1
  store i32 %inc216, i32* %i, align 4
  br label %for.cond

for.end.217:                                      ; preds = %for.cond
  %173 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %diff_boxes, align 8
  %call218 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %173)
  %174 = load i32, i32* %ierr, align 4
  ret i32 %174
}

declare i32 @hypre_SubtractBoxes(%struct.hypre_Box_struct*, %struct.hypre_Box_struct*, %struct.hypre_BoxArray_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorClearAllValues(%struct.hypre_StructVector_struct* %vector) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %datai = alloca i32, align 4
  %data = alloca double*, align 8
  %imin = alloca [3 x i32], align 4
  %imax = alloca [3 x i32], align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
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
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %box, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_size = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %data_size, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  store i32 %1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  store i32 1, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 2
  store i32 1, i32* %arrayidx5, align 4
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i32 0
  %call7 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %2, i32* %arraydecay, i32* %arraydecay6)
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data8 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %3, i32 0, i32 3
  %4 = load double*, double** %data8, align 8
  store double* %4, double** %data, align 8
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay9 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call10 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %5, i32* %arraydecay9)
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %6 = load i32, i32* %arrayidx11, align 4
  %7 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %7, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imin12, i32 0, i64 0
  %8 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %6, %8
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 1
  %9 = load i32, i32* %arrayidx14, align 4
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %imin15, i32 0, i64 1
  %11 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %9, %11
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 2
  %12 = load i32, i32* %arrayidx18, align 4
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 2
  %14 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %12, %14
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imax22, i32 0, i64 1
  %16 = load i32, i32* %arrayidx23, align 4
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 1
  %18 = load i32, i32* %arrayidx25, align 4
  %sub26 = sub nsw i32 %16, %18
  %add = add nsw i32 %sub26, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imax27, i32 0, i64 1
  %20 = load i32, i32* %arrayidx28, align 4
  %21 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %21, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 1
  %22 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %20, %22
  %add32 = add nsw i32 %sub31, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add32, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub21, %cond
  %add33 = add nsw i32 %sub17, %mul
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 0
  %24 = load i32, i32* %arrayidx35, align 4
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imin36, i32 0, i64 0
  %26 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %24, %26
  %add39 = add nsw i32 %sub38, 1
  %cmp40 = icmp slt i32 0, %add39
  br i1 %cmp40, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %cond.end
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imax42, i32 0, i64 0
  %28 = load i32, i32* %arrayidx43, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imin44, i32 0, i64 0
  %30 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %28, %30
  %add47 = add nsw i32 %sub46, 1
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.41
  %cond50 = phi i32 [ %add47, %cond.true.41 ], [ 0, %cond.false.48 ]
  %mul51 = mul nsw i32 %add33, %cond50
  %add52 = add nsw i32 %sub, %mul51
  store i32 %add52, i32* %hypre__i1start, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %31 = load i32, i32* %arrayidx53, align 4
  store i32 %31, i32* %hypre__sx1, align 4
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 1
  %32 = load i32, i32* %arrayidx54, align 4
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imax55, i32 0, i64 0
  %34 = load i32, i32* %arrayidx56, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imin57, i32 0, i64 0
  %36 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 %34, %36
  %add60 = add nsw i32 %sub59, 1
  %cmp61 = icmp slt i32 0, %add60
  br i1 %cmp61, label %cond.true.62, label %cond.false.69

cond.true.62:                                     ; preds = %cond.end.49
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imax63, i32 0, i64 0
  %38 = load i32, i32* %arrayidx64, align 4
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imin65, i32 0, i64 0
  %40 = load i32, i32* %arrayidx66, align 4
  %sub67 = sub nsw i32 %38, %40
  %add68 = add nsw i32 %sub67, 1
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.49
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.62
  %cond71 = phi i32 [ %add68, %cond.true.62 ], [ 0, %cond.false.69 ]
  %mul72 = mul nsw i32 %32, %cond71
  store i32 %mul72, i32* %hypre__sy1, align 4
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 2
  %41 = load i32, i32* %arrayidx73, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i64 0
  %43 = load i32, i32* %arrayidx75, align 4
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 0
  %45 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %43, %45
  %add79 = add nsw i32 %sub78, 1
  %cmp80 = icmp slt i32 0, %add79
  br i1 %cmp80, label %cond.true.81, label %cond.false.88

cond.true.81:                                     ; preds = %cond.end.70
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imax82, i32 0, i64 0
  %47 = load i32, i32* %arrayidx83, align 4
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imin84, i32 0, i64 0
  %49 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %47, %49
  %add87 = add nsw i32 %sub86, 1
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.70
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.81
  %cond90 = phi i32 [ %add87, %cond.true.81 ], [ 0, %cond.false.88 ]
  %mul91 = mul nsw i32 %41, %cond90
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 1
  %51 = load i32, i32* %arrayidx93, align 4
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imin94, i32 0, i64 1
  %53 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %51, %53
  %add97 = add nsw i32 %sub96, 1
  %cmp98 = icmp slt i32 0, %add97
  br i1 %cmp98, label %cond.true.99, label %cond.false.106

cond.true.99:                                     ; preds = %cond.end.89
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imax100, i32 0, i64 1
  %55 = load i32, i32* %arrayidx101, align 4
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 1
  %57 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %55, %57
  %add105 = add nsw i32 %sub104, 1
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.89
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.99
  %cond108 = phi i32 [ %add105, %cond.true.99 ], [ 0, %cond.false.106 ]
  %mul109 = mul nsw i32 %mul91, %cond108
  store i32 %mul109, i32* %hypre__sz1, align 4
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %58 = load i32, i32* %arrayidx110, align 4
  store i32 %58, i32* %hypre__nx, align 4
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %59 = load i32, i32* %arrayidx111, align 4
  store i32 %59, i32* %hypre__ny, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %60 = load i32, i32* %arrayidx112, align 4
  store i32 %60, i32* %hypre__nz, align 4
  %61 = load i32, i32* %hypre__nx, align 4
  store i32 %61, i32* %hypre__mx, align 4
  %62 = load i32, i32* %hypre__ny, align 4
  store i32 %62, i32* %hypre__my, align 4
  %63 = load i32, i32* %hypre__nz, align 4
  store i32 %63, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %64 = load i32, i32* %hypre__nx, align 4
  store i32 %64, i32* %hypre__max, align 4
  %65 = load i32, i32* %hypre__ny, align 4
  %66 = load i32, i32* %hypre__max, align 4
  %cmp113 = icmp sgt i32 %65, %66
  br i1 %cmp113, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.107
  store i32 1, i32* %hypre__dir, align 4
  %67 = load i32, i32* %hypre__ny, align 4
  store i32 %67, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.107
  %68 = load i32, i32* %hypre__nz, align 4
  %69 = load i32, i32* %hypre__max, align 4
  %cmp114 = icmp sgt i32 %68, %69
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %70 = load i32, i32* %hypre__nz, align 4
  store i32 %70, i32* %hypre__max, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %71 = load i32, i32* %hypre__max, align 4
  %72 = load i32, i32* %hypre__num_blocks, align 4
  %cmp117 = icmp slt i32 %71, %72
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.116
  %73 = load i32, i32* %hypre__max, align 4
  store i32 %73, i32* %hypre__num_blocks, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.116
  %74 = load i32, i32* %hypre__num_blocks, align 4
  %cmp120 = icmp sgt i32 %74, 0
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.119
  %75 = load i32, i32* %hypre__max, align 4
  %76 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %75, %76
  store i32 %div, i32* %hypre__div, align 4
  %77 = load i32, i32* %hypre__max, align 4
  %78 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %77, %78
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.119
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.196, %if.end.122
  %79 = load i32, i32* %hypre__block, align 4
  %80 = load i32, i32* %hypre__num_blocks, align 4
  %cmp123 = icmp slt i32 %79, %80
  br i1 %cmp123, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %81 = load i32, i32* %hypre__mx, align 4
  store i32 %81, i32* %hypre__nx, align 4
  %82 = load i32, i32* %hypre__my, align 4
  store i32 %82, i32* %hypre__ny, align 4
  %83 = load i32, i32* %hypre__mz, align 4
  store i32 %83, i32* %hypre__nz, align 4
  %84 = load i32, i32* %hypre__num_blocks, align 4
  %cmp124 = icmp sgt i32 %84, 1
  br i1 %cmp124, label %if.then.125, label %if.end.166

if.then.125:                                      ; preds = %for.body
  %85 = load i32, i32* %hypre__dir, align 4
  %cmp126 = icmp eq i32 %85, 0
  br i1 %cmp126, label %if.then.127, label %if.else

if.then.127:                                      ; preds = %if.then.125
  %86 = load i32, i32* %hypre__block, align 4
  %87 = load i32, i32* %hypre__div, align 4
  %mul128 = mul nsw i32 %86, %87
  %88 = load i32, i32* %hypre__mod, align 4
  %89 = load i32, i32* %hypre__block, align 4
  %cmp129 = icmp slt i32 %88, %89
  br i1 %cmp129, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %if.then.127
  %90 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.then.127
  %91 = load i32, i32* %hypre__block, align 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.130
  %cond133 = phi i32 [ %90, %cond.true.130 ], [ %91, %cond.false.131 ]
  %add134 = add nsw i32 %mul128, %cond133
  store i32 %add134, i32* %loopi, align 4
  %92 = load i32, i32* %hypre__div, align 4
  %93 = load i32, i32* %hypre__mod, align 4
  %94 = load i32, i32* %hypre__block, align 4
  %cmp135 = icmp sgt i32 %93, %94
  %cond136 = select i1 %cmp135, i32 1, i32 0
  %add137 = add nsw i32 %92, %cond136
  store i32 %add137, i32* %hypre__nx, align 4
  br label %if.end.165

if.else:                                          ; preds = %if.then.125
  %95 = load i32, i32* %hypre__dir, align 4
  %cmp138 = icmp eq i32 %95, 1
  br i1 %cmp138, label %if.then.139, label %if.else.150

if.then.139:                                      ; preds = %if.else
  %96 = load i32, i32* %hypre__block, align 4
  %97 = load i32, i32* %hypre__div, align 4
  %mul140 = mul nsw i32 %96, %97
  %98 = load i32, i32* %hypre__mod, align 4
  %99 = load i32, i32* %hypre__block, align 4
  %cmp141 = icmp slt i32 %98, %99
  br i1 %cmp141, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %if.then.139
  %100 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.144

cond.false.143:                                   ; preds = %if.then.139
  %101 = load i32, i32* %hypre__block, align 4
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi i32 [ %100, %cond.true.142 ], [ %101, %cond.false.143 ]
  %add146 = add nsw i32 %mul140, %cond145
  store i32 %add146, i32* %loopj, align 4
  %102 = load i32, i32* %hypre__div, align 4
  %103 = load i32, i32* %hypre__mod, align 4
  %104 = load i32, i32* %hypre__block, align 4
  %cmp147 = icmp sgt i32 %103, %104
  %cond148 = select i1 %cmp147, i32 1, i32 0
  %add149 = add nsw i32 %102, %cond148
  store i32 %add149, i32* %hypre__ny, align 4
  br label %if.end.164

if.else.150:                                      ; preds = %if.else
  %105 = load i32, i32* %hypre__dir, align 4
  %cmp151 = icmp eq i32 %105, 2
  br i1 %cmp151, label %if.then.152, label %if.end.163

if.then.152:                                      ; preds = %if.else.150
  %106 = load i32, i32* %hypre__block, align 4
  %107 = load i32, i32* %hypre__div, align 4
  %mul153 = mul nsw i32 %106, %107
  %108 = load i32, i32* %hypre__mod, align 4
  %109 = load i32, i32* %hypre__block, align 4
  %cmp154 = icmp slt i32 %108, %109
  br i1 %cmp154, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %if.then.152
  %110 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.157

cond.false.156:                                   ; preds = %if.then.152
  %111 = load i32, i32* %hypre__block, align 4
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.155
  %cond158 = phi i32 [ %110, %cond.true.155 ], [ %111, %cond.false.156 ]
  %add159 = add nsw i32 %mul153, %cond158
  store i32 %add159, i32* %loopk, align 4
  %112 = load i32, i32* %hypre__div, align 4
  %113 = load i32, i32* %hypre__mod, align 4
  %114 = load i32, i32* %hypre__block, align 4
  %cmp160 = icmp sgt i32 %113, %114
  %cond161 = select i1 %cmp160, i32 1, i32 0
  %add162 = add nsw i32 %112, %cond161
  store i32 %add162, i32* %hypre__nz, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.157, %if.else.150
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %cond.end.144
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %cond.end.132
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %for.body
  %115 = load i32, i32* %hypre__i1start, align 4
  %116 = load i32, i32* %loopi, align 4
  %117 = load i32, i32* %hypre__sx1, align 4
  %mul167 = mul nsw i32 %116, %117
  %add168 = add nsw i32 %115, %mul167
  %118 = load i32, i32* %loopj, align 4
  %119 = load i32, i32* %hypre__sy1, align 4
  %mul169 = mul nsw i32 %118, %119
  %add170 = add nsw i32 %add168, %mul169
  %120 = load i32, i32* %loopk, align 4
  %121 = load i32, i32* %hypre__sz1, align 4
  %mul171 = mul nsw i32 %120, %121
  %add172 = add nsw i32 %add170, %mul171
  store i32 %add172, i32* %datai, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.193, %if.end.166
  %122 = load i32, i32* %loopk, align 4
  %123 = load i32, i32* %hypre__nz, align 4
  %cmp174 = icmp slt i32 %122, %123
  br i1 %cmp174, label %for.body.175, label %for.end.195

for.body.175:                                     ; preds = %for.cond.173
  store i32 0, i32* %loopj, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.187, %for.body.175
  %124 = load i32, i32* %loopj, align 4
  %125 = load i32, i32* %hypre__ny, align 4
  %cmp177 = icmp slt i32 %124, %125
  br i1 %cmp177, label %for.body.178, label %for.end.189

for.body.178:                                     ; preds = %for.cond.176
  store i32 0, i32* %loopi, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc, %for.body.178
  %126 = load i32, i32* %loopi, align 4
  %127 = load i32, i32* %hypre__nx, align 4
  %cmp180 = icmp slt i32 %126, %127
  br i1 %cmp180, label %for.body.181, label %for.end

for.body.181:                                     ; preds = %for.cond.179
  %128 = load i32, i32* %datai, align 4
  %idxprom = sext i32 %128 to i64
  %129 = load double*, double** %data, align 8
  %arrayidx182 = getelementptr inbounds double, double* %129, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx182, align 8
  %130 = load i32, i32* %hypre__sx1, align 4
  %131 = load i32, i32* %datai, align 4
  %add183 = add nsw i32 %131, %130
  store i32 %add183, i32* %datai, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.181
  %132 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.179

for.end:                                          ; preds = %for.cond.179
  %133 = load i32, i32* %hypre__sy1, align 4
  %134 = load i32, i32* %hypre__nx, align 4
  %135 = load i32, i32* %hypre__sx1, align 4
  %mul184 = mul nsw i32 %134, %135
  %sub185 = sub nsw i32 %133, %mul184
  %136 = load i32, i32* %datai, align 4
  %add186 = add nsw i32 %136, %sub185
  store i32 %add186, i32* %datai, align 4
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.end
  %137 = load i32, i32* %loopj, align 4
  %inc188 = add nsw i32 %137, 1
  store i32 %inc188, i32* %loopj, align 4
  br label %for.cond.176

for.end.189:                                      ; preds = %for.cond.176
  %138 = load i32, i32* %hypre__sz1, align 4
  %139 = load i32, i32* %hypre__ny, align 4
  %140 = load i32, i32* %hypre__sy1, align 4
  %mul190 = mul nsw i32 %139, %140
  %sub191 = sub nsw i32 %138, %mul190
  %141 = load i32, i32* %datai, align 4
  %add192 = add nsw i32 %141, %sub191
  store i32 %add192, i32* %datai, align 4
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.189
  %142 = load i32, i32* %loopk, align 4
  %inc194 = add nsw i32 %142, 1
  store i32 %inc194, i32* %loopk, align 4
  br label %for.cond.173

for.end.195:                                      ; preds = %for.cond.173
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %143 = load i32, i32* %hypre__block, align 4
  %inc197 = add nsw i32 %143, 1
  store i32 %inc197, i32* %hypre__block, align 4
  br label %for.cond

for.end.198:                                      ; preds = %for.cond
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call199 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %144)
  %145 = load i32, i32* %ierr, align 4
  ret i32 %145
}

declare i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_CommPkg_struct* @hypre_StructVectorGetMigrateCommPkg(%struct.hypre_StructVector_struct* %from_vector, %struct.hypre_StructVector_struct* %to_vector) #0 {
entry:
  %from_vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %to_vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %num_values = alloca i32, align 4
  %unit_stride = alloca [3 x i32], align 4
  %comm_pkg = alloca %struct.hypre_CommPkg_struct*, align 8
  store %struct.hypre_StructVector_struct* %from_vector, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  store %struct.hypre_StructVector_struct* %to_vector, %struct.hypre_StructVector_struct** %to_vector.addr, align 8
  store i32 1, i32* %num_values, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %to_vector.addr, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid3, align 8
  %call = call i32 @hypre_CreateCommInfoFromGrids(%struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct* %3, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes)
  %4 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %5 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 2
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %to_vector.addr, align 8
  %data_space5 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %8, i32 0, i32 2
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space5, align 8
  %10 = load i32**, i32*** %send_processes, align 8
  %11 = load i32**, i32*** %recv_processes, align 8
  %12 = load i32, i32* %num_values, align 4
  %13 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %comm, align 4
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  %grid6 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %15, i32 0, i32 1
  %16 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid6, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %16, i32 0, i32 9
  %arraydecay7 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i32 0
  %call8 = call %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct* %4, %struct.hypre_BoxArrayArray_struct* %5, i32* %arraydecay, i32* %arraydecay4, %struct.hypre_BoxArray_struct* %7, %struct.hypre_BoxArray_struct* %9, i32** %10, i32** %11, i32 %12, i32 %14, i32* %arraydecay7)
  store %struct.hypre_CommPkg_struct* %call8, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %17 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  ret %struct.hypre_CommPkg_struct* %17
}

declare i32 @hypre_CreateCommInfoFromGrids(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***) #1

declare %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32**, i32**, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorMigrate(%struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_StructVector_struct* %from_vector, %struct.hypre_StructVector_struct* %to_vector) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %from_vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %to_vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store %struct.hypre_StructVector_struct* %from_vector, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  store %struct.hypre_StructVector_struct* %to_vector, %struct.hypre_StructVector_struct** %to_vector.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %1 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %from_vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1, i32 0, i32 3
  %2 = load double*, double** %data, align 8
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %to_vector.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %3, i32 0, i32 3
  %4 = load double*, double** %data1, align 8
  %call = call i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct* %0, double* %2, double* %4, %struct.hypre_CommHandle_struct** %comm_handle)
  %5 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call2 = call i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct* %5)
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

declare i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct*, double*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructVectorPrint(i8* %filename, %struct.hypre_StructVector_struct* %vector, i32 %all) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %all.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %new_filename = alloca [255 x i8], align 16
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %myid = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.hypre_StructVector_struct* %vector, %struct.hypre_StructVector_struct** %vector.addr, align 8
  store i32 %all, i32* %all.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %comm, align 4
  %call = call i32 @hypre_MPI_Comm_rank(i32 %1, i32* %myid)
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i32, i32* %myid, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %2, i32 %3) #4
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
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %grid8 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 1
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid8, align 8
  store %struct.hypre_StructGrid_struct* %7, %struct.hypre_StructGrid_struct** %grid, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call9 = call i32 @hypre_StructGridPrint(%struct._IO_FILE* %8, %struct.hypre_StructGrid_struct* %9)
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space10 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %10, i32 0, i32 2
  %11 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space10, align 8
  store %struct.hypre_BoxArray_struct* %11, %struct.hypre_BoxArray_struct** %data_space, align 8
  %12 = load i32, i32* %all.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  store %struct.hypre_BoxArray_struct* %13, %struct.hypre_BoxArray_struct** %boxes, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %14 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes12 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %14, i32 0, i32 2
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes12, align 8
  store %struct.hypre_BoxArray_struct* %15, %struct.hypre_BoxArray_struct** %boxes, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %20 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %20, i32 0, i32 3
  %21 = load double*, double** %data, align 8
  %call15 = call i32 @hypre_PrintBoxArrayData(%struct._IO_FILE* %17, %struct.hypre_BoxArray_struct* %18, %struct.hypre_BoxArray_struct* %19, i32 1, double* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load i32, i32* %ierr, align 4
  ret i32 %24
}

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @hypre_StructGridPrint(%struct._IO_FILE*, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_PrintBoxArrayData(%struct._IO_FILE*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32, double*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructVector_struct* @hypre_StructVectorRead(i32 %comm, i8* %filename, i32* %num_ghost) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %num_ghost.addr = alloca i32*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %new_filename = alloca [255 x i8], align 16
  %vector = alloca %struct.hypre_StructVector_struct*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %myid = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %num_ghost, i32** %num_ghost.addr, align 8
  %0 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Comm_rank(i32 %0, i32* %myid)
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %myid, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %2) #4
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %new_filename, i32 0, i32 0
  %call3 = call %struct._IO_FILE* @fopen(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
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
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %5 = load i32, i32* %comm.addr, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 @hypre_StructGridRead(i32 %5, %struct._IO_FILE* %6, %struct.hypre_StructGrid_struct** %grid)
  %7 = load i32, i32* %comm.addr, align 4
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call9 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %7, %struct.hypre_StructGrid_struct* %8)
  store %struct.hypre_StructVector_struct* %call9, %struct.hypre_StructVector_struct** %vector, align 8
  %9 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %10 = load i32*, i32** %num_ghost.addr, align 8
  %call10 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %9, i32* %10)
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %call11 = call i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct* %11)
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes12 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %12, i32 0, i32 2
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes12, align 8
  store %struct.hypre_BoxArray_struct* %13, %struct.hypre_BoxArray_struct** %boxes, align 8
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %data_space13 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 2
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space13, align 8
  store %struct.hypre_BoxArray_struct* %15, %struct.hypre_BoxArray_struct** %data_space, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %20 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %20, i32 0, i32 3
  %21 = load double*, double** %data, align 8
  %call15 = call i32 @hypre_ReadBoxArrayData(%struct._IO_FILE* %17, %struct.hypre_BoxArray_struct* %18, %struct.hypre_BoxArray_struct* %19, i32 1, double* %21)
  %22 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %call16 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  ret %struct.hypre_StructVector_struct* %24
}

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @hypre_StructGridRead(i32, %struct._IO_FILE*, %struct.hypre_StructGrid_struct**) #1

declare i32 @hypre_ReadBoxArrayData(%struct._IO_FILE*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32, double*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
