; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/27.SMG2000.smg_relax.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SMGRelaxData = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32*, [3 x i32], [3 x i32], %struct.hypre_BoxArray_struct*, i32, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i8**, i8**, i32, i32, i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }

@.str = private unnamed_addr constant [9 x i8] c"SMGRelax\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_SMGRelaxCreate(i32 %comm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 208)
  %0 = bitcast i8* %call to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %0, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %1 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %1, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %4 = load i32, i32* %comm.addr, align 4
  %5 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %5, i32 0, i32 3
  store i32 %4, i32* %comm1, align 4
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 17
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %call2 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 28
  store i32 %call2, i32* %time_index, align 4
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 4
  store i32 0, i32* %memory_use, align 4
  %9 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %tol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %9, i32 0, i32 5
  store double 1.000000e-06, double* %tol, align 8
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %max_iter = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 6
  store i32 1000, i32* %max_iter, align 4
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %zero_guess = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 7
  store i32 0, i32* %zero_guess, align 4
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 8
  store i32 1, i32* %num_spaces, align 4
  %call3 = call i8* @hypre_MAlloc(i32 4)
  %13 = bitcast i8* %call3 to i32*
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 9
  store i32* %13, i32** %space_indices, align 8
  %call4 = call i8* @hypre_MAlloc(i32 4)
  %15 = bitcast i8* %call4 to i32*
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 10
  store i32* %15, i32** %space_strides, align 8
  %17 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %17, i32 0, i32 9
  %18 = load i32*, i32** %space_indices5, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %arrayidx, align 4
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 10
  %20 = load i32*, i32** %space_strides6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 1, i32* %arrayidx7, align 4
  %21 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %21, i32 0, i32 11
  store i32 0, i32* %num_pre_spaces, align 4
  %22 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_reg_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %22, i32 0, i32 12
  store i32 1, i32* %num_reg_spaces, align 4
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 13
  store i32* null, i32** %pre_space_ranks, align 8
  %call8 = call i8* @hypre_MAlloc(i32 4)
  %24 = bitcast i8* %call8 to i32*
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 14
  store i32* %24, i32** %reg_space_ranks, align 8
  %26 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks9 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %26, i32 0, i32 14
  %27 = load i32*, i32** %reg_space_ranks9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %arrayidx10, align 4
  %28 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %28, i32 0, i32 15
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 0, i32* %arrayidx11, align 4
  %29 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index12 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %29, i32 0, i32 15
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index12, i32 0, i64 1
  store i32 0, i32* %arrayidx13, align 4
  %30 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index14 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %30, i32 0, i32 15
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index14, i32 0, i64 2
  store i32 0, i32* %arrayidx15, align 4
  %31 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %31, i32 0, i32 16
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx16, align 4
  %32 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride17 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %32, i32 0, i32 16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride17, i32 0, i64 1
  store i32 1, i32* %arrayidx18, align 4
  %33 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride19 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %33, i32 0, i32 16
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride19, i32 0, i64 2
  store i32 1, i32* %arrayidx20, align 4
  %34 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %34, i32 0, i32 19
  store %struct.hypre_StructMatrix_struct* null, %struct.hypre_StructMatrix_struct** %A, align 8
  %35 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %b = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %35, i32 0, i32 20
  store %struct.hypre_StructVector_struct* null, %struct.hypre_StructVector_struct** %b, align 8
  %36 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %x = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %36, i32 0, i32 21
  store %struct.hypre_StructVector_struct* null, %struct.hypre_StructVector_struct** %x, align 8
  %37 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %37, i32 0, i32 22
  store %struct.hypre_StructVector_struct* null, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %38 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_relax = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %38, i32 0, i32 29
  store i32 1, i32* %num_pre_relax, align 4
  %39 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_post_relax = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %39, i32 0, i32 30
  store i32 1, i32* %num_post_relax, align 4
  %40 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %41 = bitcast %struct.hypre_SMGRelaxData* %40 to i8*
  ret i8* %41
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxDestroyTempVec(i8* %relax_vdata) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 22
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %call = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %3)
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %5 = load i32, i32* %ierr, align 4
  ret i32 %5
}

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxDestroyARem(i8* %relax_vdata) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 24
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %tobool = icmp ne %struct.hypre_StructMatrix_struct* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %5, i32 0, i32 8
  %6 = load i32, i32* %num_spaces, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %residual_data = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 25
  %9 = load i8**, i8*** %residual_data, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @hypre_SMGResidualDestroy(i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %residual_data1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 25
  %13 = load i8**, i8*** %residual_data1, align 8
  %14 = bitcast i8** %13 to i8*
  call void @hypre_Free(i8* %14)
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %residual_data2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 25
  store i8** null, i8*** %residual_data2, align 8
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_rem3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 24
  %17 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem3, align 8
  %call4 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %17)
  %18 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_rem5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %18, i32 0, i32 24
  store %struct.hypre_StructMatrix_struct* null, %struct.hypre_StructMatrix_struct** %A_rem5, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %20 = load i32, i32* %ierr, align 4
  ret i32 %20
}

declare i32 @hypre_SMGResidualDestroy(i8*) #1

declare void @hypre_Free(i8*) #1

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxDestroyASol(i8* %relax_vdata) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %stencil_dim = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 23
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %tobool = icmp ne %struct.hypre_StructMatrix_struct* %3, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %stencil_dim1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 18
  %5 = load i32, i32* %stencil_dim1, align 4
  store i32 %5, i32* %stencil_dim, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 8
  %8 = load i32, i32* %num_spaces, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %stencil_dim, align 4
  %cmp2 = icmp sgt i32 %9, 2
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 26
  %12 = load i8**, i8*** %solve_data, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @hypre_SMGDestroy(i8* %13)
  br label %if.end

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 26
  %16 = load i8**, i8*** %solve_data5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %16, i64 %idxprom4
  %17 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @hypre_CyclicReductionDestroy(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data8 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 26
  %20 = load i8**, i8*** %solve_data8, align 8
  %21 = bitcast i8** %20 to i8*
  call void @hypre_Free(i8* %21)
  %22 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data9 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %22, i32 0, i32 26
  store i8** null, i8*** %solve_data9, align 8
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_sol10 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 23
  %24 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol10, align 8
  %call11 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %24)
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_sol12 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 23
  store %struct.hypre_StructMatrix_struct* null, %struct.hypre_StructMatrix_struct** %A_sol12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %26 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %26, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %27 = load i32, i32* %ierr, align 4
  ret i32 %27
}

declare i32 @hypre_SMGDestroy(i8*) #1

declare i32 @hypre_CyclicReductionDestroy(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxDestroy(i8* %relax_vdata) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %tobool = icmp ne %struct.hypre_SMGRelaxData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 9
  %4 = load i32*, i32** %space_indices, align 8
  %5 = bitcast i32* %4 to i8*
  call void @hypre_Free(i8* %5)
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 9
  store i32* null, i32** %space_indices1, align 8
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 10
  %8 = load i32*, i32** %space_strides, align 8
  %9 = bitcast i32* %8 to i8*
  call void @hypre_Free(i8* %9)
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 10
  store i32* null, i32** %space_strides2, align 8
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 13
  %12 = load i32*, i32** %pre_space_ranks, align 8
  %13 = bitcast i32* %12 to i8*
  call void @hypre_Free(i8* %13)
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 13
  store i32* null, i32** %pre_space_ranks3, align 8
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 14
  %16 = load i32*, i32** %reg_space_ranks, align 8
  %17 = bitcast i32* %16 to i8*
  call void @hypre_Free(i8* %17)
  %18 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %18, i32 0, i32 14
  store i32* null, i32** %reg_space_ranks4, align 8
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 17
  %20 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %call = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %20)
  %21 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %21, i32 0, i32 19
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call5 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %22)
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %b = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 20
  %24 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call6 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %24)
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %x = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 21
  %26 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call7 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %26)
  %27 = load i8*, i8** %relax_vdata.addr, align 8
  %call8 = call i32 @hypre_SMGRelaxDestroyTempVec(i8* %27)
  %28 = load i8*, i8** %relax_vdata.addr, align 8
  %call9 = call i32 @hypre_SMGRelaxDestroyARem(i8* %28)
  %29 = load i8*, i8** %relax_vdata.addr, align 8
  %call10 = call i32 @hypre_SMGRelaxDestroyASol(i8* %29)
  %30 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %30, i32 0, i32 28
  %31 = load i32, i32* %time_index, align 4
  %call11 = call i32 @hypre_FinalizeTiming(i32 %31)
  %32 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %33 = bitcast %struct.hypre_SMGRelaxData* %32 to i8*
  call void @hypre_Free(i8* %33)
  store %struct.hypre_SMGRelaxData* null, %struct.hypre_SMGRelaxData** %relax_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load i32, i32* %ierr, align 4
  ret i32 %34
}

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelax(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %zero_guess = alloca i32, align 4
  %stencil_dim = alloca i32, align 4
  %temp_vec = alloca %struct.hypre_StructVector_struct*, align 8
  %A_sol = alloca %struct.hypre_StructMatrix_struct*, align 8
  %A_rem = alloca %struct.hypre_StructMatrix_struct*, align 8
  %residual_data = alloca i8**, align 8
  %solve_data = alloca i8**, align 8
  %base_stride = alloca i32*, align 8
  %base_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %zero = alloca double, align 8
  %max_iter = alloca i32, align 4
  %num_spaces = alloca i32, align 4
  %space_ranks = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %is = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store double 0.000000e+00, double* %zero, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 28
  %3 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %3)
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 2
  %5 = load i32, i32* %setup_a_sol, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 2
  store i32 2, i32* %setup_a_sol1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %relax_vdata.addr, align 8
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %9 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call2 = call i32 @hypre_SMGRelaxSetup(i8* %7, %struct.hypre_StructMatrix_struct* %8, %struct.hypre_StructVector_struct* %9, %struct.hypre_StructVector_struct* %10)
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %zero_guess3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 7
  %12 = load i32, i32* %zero_guess3, align 4
  store i32 %12, i32* %zero_guess, align 4
  %13 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %stencil_dim4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %13, i32 0, i32 18
  %14 = load i32, i32* %stencil_dim4, align 4
  store i32 %14, i32* %stencil_dim, align 4
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 22
  %16 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec5, align 8
  store %struct.hypre_StructVector_struct* %16, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %17 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_sol6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %17, i32 0, i32 23
  %18 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol6, align 8
  store %struct.hypre_StructMatrix_struct* %18, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_rem7 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 24
  %20 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem7, align 8
  store %struct.hypre_StructMatrix_struct* %20, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %21 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %residual_data8 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %21, i32 0, i32 25
  %22 = load i8**, i8*** %residual_data8, align 8
  store i8** %22, i8*** %residual_data, align 8
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data9 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 26
  %24 = load i8**, i8*** %solve_data9, align 8
  store i8** %24, i8*** %solve_data, align 8
  %25 = load i32, i32* %zero_guess, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride11 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %26, i32 0, i32 16
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride11, i32 0, i32 0
  store i32* %arraydecay, i32** %base_stride, align 8
  %27 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %27, i32 0, i32 17
  %28 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  store %struct.hypre_BoxArray_struct* %28, %struct.hypre_BoxArray_struct** %base_box_a, align 8
  %29 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %30 = load double, double* %zero, align 8
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_a, align 8
  %32 = load i32*, i32** %base_stride, align 8
  %call12 = call i32 @hypre_SMGSetStructVectorConstantValues(%struct.hypre_StructVector_struct* %29, double %30, %struct.hypre_BoxArray_struct* %31, i32* %32)
  store i32 %call12, i32* %ierr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end.13
  %33 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %33, 2
  br i1 %cmp14, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %k, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %for.body
  store i32 1, i32* %max_iter, align 4
  %35 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %35, i32 0, i32 11
  %36 = load i32, i32* %num_pre_spaces, align 4
  store i32 %36, i32* %num_spaces, align 4
  %37 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %37, i32 0, i32 13
  %38 = load i32*, i32** %pre_space_ranks, align 8
  store i32* %38, i32** %space_ranks, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %39 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %max_iter16 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %39, i32 0, i32 6
  %40 = load i32, i32* %max_iter16, align 4
  store i32 %40, i32* %max_iter, align 4
  %41 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_reg_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %41, i32 0, i32 12
  %42 = load i32, i32* %num_reg_spaces, align 4
  store i32 %42, i32* %num_spaces, align 4
  %43 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %43, i32 0, i32 14
  %44 = load i32*, i32** %reg_space_ranks, align 8
  store i32* %44, i32** %space_ranks, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.15, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.35, %sw.epilog
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %max_iter, align 4
  %cmp18 = icmp slt i32 %45, %46
  br i1 %cmp18, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body.19
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %num_spaces, align 4
  %cmp21 = icmp slt i32 %47, %48
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %49 = load i32, i32* %j, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load i32*, i32** %space_ranks, align 8
  %arrayidx = getelementptr inbounds i32, i32* %50, i64 %idxprom
  %51 = load i32, i32* %arrayidx, align 4
  store i32 %51, i32* %is, align 4
  %52 = load i32, i32* %is, align 4
  %idxprom23 = sext i32 %52 to i64
  %53 = load i8**, i8*** %residual_data, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %53, i64 %idxprom23
  %54 = load i8*, i8** %arrayidx24, align 8
  %55 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %56 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %57 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %58 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %call25 = call i32 @hypre_SMGResidual(i8* %54, %struct.hypre_StructMatrix_struct* %55, %struct.hypre_StructVector_struct* %56, %struct.hypre_StructVector_struct* %57, %struct.hypre_StructVector_struct* %58)
  %59 = load i32, i32* %stencil_dim, align 4
  %cmp26 = icmp sgt i32 %59, 2
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.body.22
  %60 = load i32, i32* %is, align 4
  %idxprom28 = sext i32 %60 to i64
  %61 = load i8**, i8*** %solve_data, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %61, i64 %idxprom28
  %62 = load i8*, i8** %arrayidx29, align 8
  %63 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %64 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %65 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call30 = call i32 @hypre_SMGSolve(i8* %62, %struct.hypre_StructMatrix_struct* %63, %struct.hypre_StructVector_struct* %64, %struct.hypre_StructVector_struct* %65)
  br label %if.end.34

if.else:                                          ; preds = %for.body.22
  %66 = load i32, i32* %is, align 4
  %idxprom31 = sext i32 %66 to i64
  %67 = load i8**, i8*** %solve_data, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %67, i64 %idxprom31
  %68 = load i8*, i8** %arrayidx32, align 8
  %69 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %70 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %71 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call33 = call i32 @hypre_CyclicReduction(i8* %68, %struct.hypre_StructMatrix_struct* %69, %struct.hypre_StructVector_struct* %70, %struct.hypre_StructVector_struct* %71)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %72 = load i32, i32* %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %73 = load i32, i32* %i, align 4
  %add = add nsw i32 %73, 1
  %74 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_iterations = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %74, i32 0, i32 27
  store i32 %add, i32* %num_iterations, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %75 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.17

for.end.37:                                       ; preds = %for.cond.17
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %76 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %76, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %77 = load i32, i32* %stencil_dim, align 4
  %sub = sub nsw i32 %77, 1
  %78 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %78, i32 0, i32 4
  %79 = load i32, i32* %memory_use, align 4
  %cmp41 = icmp sle i32 %sub, %79
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.end.40
  %80 = load i8*, i8** %relax_vdata.addr, align 8
  %call43 = call i32 @hypre_SMGRelaxDestroyASol(i8* %80)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.end.40
  %81 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %time_index45 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %81, i32 0, i32 28
  %82 = load i32, i32* %time_index45, align 4
  %call46 = call i32 @hypre_EndTiming(i32 %82)
  %83 = load i32, i32* %ierr, align 4
  ret i32 %83
}

declare i32 @hypre_BeginTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetup(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %stencil_dim = alloca i32, align 4
  %a_sol_test = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 3
  %3 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %dim, align 4
  store i32 %4, i32* %stencil_dim, align 4
  %5 = load i32, i32* %stencil_dim, align 4
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %stencil_dim1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 18
  store i32 %5, i32* %stencil_dim1, align 4
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 19
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A2, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %8)
  %9 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %b3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %9, i32 0, i32 20
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b3, align 8
  %call4 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %10)
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %x5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 21
  %12 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x5, align 8
  %call6 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %12)
  %13 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call7 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %13)
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A8 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 19
  store %struct.hypre_StructMatrix_struct* %call7, %struct.hypre_StructMatrix_struct** %A8, align 8
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call9 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %15)
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %b10 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 20
  store %struct.hypre_StructVector_struct* %call9, %struct.hypre_StructVector_struct** %b10, align 8
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call11 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %17)
  %18 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %x12 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %18, i32 0, i32 21
  store %struct.hypre_StructVector_struct* %call11, %struct.hypre_StructVector_struct** %x12, align 8
  %19 = load i32, i32* %stencil_dim, align 4
  %sub = sub nsw i32 %19, 1
  %20 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %20, i32 0, i32 4
  %21 = load i32, i32* %memory_use, align 4
  %cmp = icmp sle i32 %sub, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %a_sol_test, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %a_sol_test, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %22, i32 0, i32 0
  %23 = load i32, i32* %setup_temp_vec, align 4
  %cmp13 = icmp sgt i32 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %24 = load i8*, i8** %relax_vdata.addr, align 8
  %25 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %26 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %27 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call15 = call i32 @hypre_SMGRelaxSetupTempVec(i8* %24, %struct.hypre_StructMatrix_struct* %25, %struct.hypre_StructVector_struct* %26, %struct.hypre_StructVector_struct* %27)
  store i32 %call15, i32* %ierr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %28 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %28, i32 0, i32 1
  %29 = load i32, i32* %setup_a_rem, align 4
  %cmp17 = icmp sgt i32 %29, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %30 = load i8*, i8** %relax_vdata.addr, align 8
  %31 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %32 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %33 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call19 = call i32 @hypre_SMGRelaxSetupARem(i8* %30, %struct.hypre_StructMatrix_struct* %31, %struct.hypre_StructVector_struct* %32, %struct.hypre_StructVector_struct* %33)
  store i32 %call19, i32* %ierr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %34 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %34, i32 0, i32 2
  %35 = load i32, i32* %setup_a_sol, align 4
  %36 = load i32, i32* %a_sol_test, align 4
  %cmp21 = icmp sgt i32 %35, %36
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %37 = load i8*, i8** %relax_vdata.addr, align 8
  %38 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %39 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %40 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call23 = call i32 @hypre_SMGRelaxSetupASol(i8* %37, %struct.hypre_StructMatrix_struct* %38, %struct.hypre_StructVector_struct* %39, %struct.hypre_StructVector_struct* %40)
  store i32 %call23, i32* %ierr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %41 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %41, i32 0, i32 17
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %cmp25 = icmp eq %struct.hypre_BoxArray_struct* %42, null
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %43 = load i8*, i8** %relax_vdata.addr, align 8
  %44 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %45 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %46 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call27 = call i32 @hypre_SMGRelaxSetupBaseBoxArray(i8* %43, %struct.hypre_StructMatrix_struct* %44, %struct.hypre_StructVector_struct* %45, %struct.hypre_StructVector_struct* %46)
  store i32 %call27, i32* %ierr, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %47 = load i32, i32* %ierr, align 4
  ret i32 %47
}

declare i32 @hypre_SMGSetStructVectorConstantValues(%struct.hypre_StructVector_struct*, double, %struct.hypre_BoxArray_struct*, i32*) #1

declare i32 @hypre_SMGResidual(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_SMGSolve(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_CyclicReduction(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_EndTiming(i32) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetupTempVec(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %temp_vec = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 22
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec1, align 8
  store %struct.hypre_StructVector_struct* %3, %struct.hypre_StructVector_struct** %temp_vec, align 8
  store i32 0, i32* %ierr, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 22
  %5 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec2, align 8
  %cmp = icmp eq %struct.hypre_StructVector_struct* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %comm, align 4
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %8, i32 0, i32 1
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %7, %struct.hypre_StructGrid_struct* %9)
  store %struct.hypre_StructVector_struct* %call, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 7
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i32 0
  %call3 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %10, i32* %arraydecay)
  %12 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %call4 = call i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct* %12)
  %13 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %call5 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %13)
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 22
  store %struct.hypre_StructVector_struct* %14, %struct.hypre_StructVector_struct** %temp_vec6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 0
  store i32 0, i32* %setup_temp_vec, align 4
  %17 = load i32, i32* %ierr, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetupARem(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %num_spaces = alloca i32, align 4
  %space_indices = alloca i32*, align 8
  %space_strides = alloca i32*, align 8
  %temp_vec = alloca %struct.hypre_StructVector_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %stencil_dim = alloca i32, align 4
  %A_rem = alloca %struct.hypre_StructMatrix_struct*, align 8
  %residual_data = alloca i8**, align 8
  %base_index = alloca [3 x i32], align 4
  %base_stride = alloca [3 x i32], align 4
  %num_stencil_indices = alloca i32, align 4
  %stencil_indices = alloca i32*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 8
  %3 = load i32, i32* %num_spaces1, align 4
  store i32 %3, i32* %num_spaces, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 9
  %5 = load i32*, i32** %space_indices2, align 8
  store i32* %5, i32** %space_indices, align 8
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 10
  %7 = load i32*, i32** %space_strides3, align 8
  store i32* %7, i32** %space_strides, align 8
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 22
  %9 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec4, align 8
  store %struct.hypre_StructVector_struct* %9, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil5 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %10, i32 0, i32 3
  %11 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil5, align 8
  store %struct.hypre_StructStencil_struct* %11, %struct.hypre_StructStencil_struct** %stencil, align 8
  %12 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %12, i32 0, i32 0
  %13 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %13, [3 x i32]** %stencil_shape, align 8
  %14 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %14, i32 0, i32 1
  %15 = load i32, i32* %size, align 4
  store i32 %15, i32* %stencil_size, align 4
  %16 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %16, i32 0, i32 3
  %17 = load i32, i32* %dim, align 4
  store i32 %17, i32* %stencil_dim, align 4
  store i32 0, i32* %ierr, align 4
  %18 = load i8*, i8** %relax_vdata.addr, align 8
  %call = call i32 @hypre_SMGRelaxDestroyARem(i8* %18)
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 15
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %base_index6, i32 0, i64 0
  %20 = load i32, i32* %arrayidx, align 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 %20, i32* %arrayidx7, align 4
  %21 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index8 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %21, i32 0, i32 15
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index8, i32 0, i64 1
  %22 = load i32, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 1
  store i32 %22, i32* %arrayidx10, align 4
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index11 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 15
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index11, i32 0, i64 2
  %24 = load i32, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 2
  store i32 %24, i32* %arrayidx13, align 4
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride14 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 16
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride14, i32 0, i64 0
  %26 = load i32, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 %26, i32* %arrayidx16, align 4
  %27 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride17 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %27, i32 0, i32 16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride17, i32 0, i64 1
  %28 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 1
  store i32 %28, i32* %arrayidx19, align 4
  %29 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride20 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %29, i32 0, i32 16
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride20, i32 0, i64 2
  %30 = load i32, i32* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 2
  store i32 %30, i32* %arrayidx22, align 4
  %31 = load i32, i32* %stencil_size, align 4
  %conv = sext i32 %31 to i64
  %mul = mul i64 4, %conv
  %conv23 = trunc i64 %mul to i32
  %call24 = call i8* @hypre_MAlloc(i32 %conv23)
  %32 = bitcast i8* %call24 to i32*
  store i32* %32, i32** %stencil_indices, align 8
  store i32 0, i32* %num_stencil_indices, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %stencil_size, align 4
  %cmp = icmp slt i32 %33, %34
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %stencil_dim, align 4
  %sub = sub nsw i32 %35, 1
  %idxprom = sext i32 %sub to i64
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %37, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 %idxprom
  %38 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp ne i32 %38, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %num_stencil_indices, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load i32*, i32** %stencil_indices, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 %idxprom31
  store i32 %39, i32* %arrayidx32, align 4
  %42 = load i32, i32* %num_stencil_indices, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %num_stencil_indices, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %45 = load i32, i32* %num_stencil_indices, align 4
  %46 = load i32*, i32** %stencil_indices, align 8
  %call34 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct* %44, i32 %45, i32* %46)
  store %struct.hypre_StructMatrix_struct* %call34, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %47 = load i32*, i32** %stencil_indices, align 8
  %48 = bitcast i32* %47 to i8*
  call void @hypre_Free(i8* %48)
  store i32* null, i32** %stencil_indices, align 8
  %49 = load i32, i32* %num_spaces, align 4
  %conv35 = sext i32 %49 to i64
  %mul36 = mul i64 8, %conv35
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call i8* @hypre_MAlloc(i32 %conv37)
  %50 = bitcast i8* %call38 to i8**
  store i8** %50, i8*** %residual_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.63, %for.end
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %num_spaces, align 4
  %cmp40 = icmp slt i32 %51, %52
  br i1 %cmp40, label %for.body.42, label %for.end.65

for.body.42:                                      ; preds = %for.cond.39
  %53 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load i32*, i32** %space_indices, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 %idxprom43
  %55 = load i32, i32* %arrayidx44, align 4
  %56 = load i32, i32* %stencil_dim, align 4
  %sub45 = sub nsw i32 %56, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 %idxprom46
  store i32 %55, i32* %arrayidx47, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load i32*, i32** %space_strides, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %58, i64 %idxprom48
  %59 = load i32, i32* %arrayidx49, align 4
  %60 = load i32, i32* %stencil_dim, align 4
  %sub50 = sub nsw i32 %60, 1
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 %idxprom51
  store i32 %59, i32* %arrayidx52, align 4
  %call53 = call i8* @hypre_SMGResidualCreate()
  %61 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %61 to i64
  %62 = load i8**, i8*** %residual_data, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %62, i64 %idxprom54
  store i8* %call53, i8** %arrayidx55, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %63 to i64
  %64 = load i8**, i8*** %residual_data, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %64, i64 %idxprom56
  %65 = load i8*, i8** %arrayidx57, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i32 0
  %arraydecay58 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i32 0
  %call59 = call i32 @hypre_SMGResidualSetBase(i8* %65, i32* %arraydecay, i32* %arraydecay58)
  %66 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %66 to i64
  %67 = load i8**, i8*** %residual_data, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %67, i64 %idxprom60
  %68 = load i8*, i8** %arrayidx61, align 8
  %69 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %70 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %71 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %72 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %call62 = call i32 @hypre_SMGResidualSetup(i8* %68, %struct.hypre_StructMatrix_struct* %69, %struct.hypre_StructVector_struct* %70, %struct.hypre_StructVector_struct* %71, %struct.hypre_StructVector_struct* %72)
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.42
  %73 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %73, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.39

for.end.65:                                       ; preds = %for.cond.39
  %74 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_rem, align 8
  %75 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_rem66 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %75, i32 0, i32 24
  store %struct.hypre_StructMatrix_struct* %74, %struct.hypre_StructMatrix_struct** %A_rem66, align 8
  %76 = load i8**, i8*** %residual_data, align 8
  %77 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %residual_data67 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %77, i32 0, i32 25
  store i8** %76, i8*** %residual_data67, align 8
  %78 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %78, i32 0, i32 1
  store i32 0, i32* %setup_a_rem, align 4
  %79 = load i32, i32* %ierr, align 4
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetupASol(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %num_spaces = alloca i32, align 4
  %space_indices = alloca i32*, align 8
  %space_strides = alloca i32*, align 8
  %temp_vec = alloca %struct.hypre_StructVector_struct*, align 8
  %num_pre_relax = alloca i32, align 4
  %num_post_relax = alloca i32, align 4
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %stencil_dim = alloca i32, align 4
  %A_sol = alloca %struct.hypre_StructMatrix_struct*, align 8
  %solve_data = alloca i8**, align 8
  %base_index = alloca [3 x i32], align 4
  %base_stride = alloca [3 x i32], align 4
  %num_stencil_indices = alloca i32, align 4
  %stencil_indices = alloca i32*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %2, i32 0, i32 8
  %3 = load i32, i32* %num_spaces1, align 4
  store i32 %3, i32* %num_spaces, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 9
  %5 = load i32*, i32** %space_indices2, align 8
  store i32* %5, i32** %space_indices, align 8
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 10
  %7 = load i32*, i32** %space_strides3, align 8
  store i32* %7, i32** %space_strides, align 8
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 22
  %9 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec4, align 8
  store %struct.hypre_StructVector_struct* %9, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_relax5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 29
  %11 = load i32, i32* %num_pre_relax5, align 4
  store i32 %11, i32* %num_pre_relax, align 4
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_post_relax6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 30
  %13 = load i32, i32* %num_post_relax6, align 4
  store i32 %13, i32* %num_post_relax, align 4
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil7 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %14, i32 0, i32 3
  %15 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil7, align 8
  store %struct.hypre_StructStencil_struct* %15, %struct.hypre_StructStencil_struct** %stencil, align 8
  %16 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %16, i32 0, i32 0
  %17 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %17, [3 x i32]** %stencil_shape, align 8
  %18 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %size, align 4
  store i32 %19, i32* %stencil_size, align 4
  %20 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %20, i32 0, i32 3
  %21 = load i32, i32* %dim, align 4
  store i32 %21, i32* %stencil_dim, align 4
  store i32 0, i32* %ierr, align 4
  %22 = load i8*, i8** %relax_vdata.addr, align 8
  %call = call i32 @hypre_SMGRelaxDestroyASol(i8* %22)
  %23 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index8 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %23, i32 0, i32 15
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %base_index8, i32 0, i64 0
  %24 = load i32, i32* %arrayidx, align 4
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 %24, i32* %arrayidx9, align 4
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index10 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 15
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index10, i32 0, i64 1
  %26 = load i32, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 1
  store i32 %26, i32* %arrayidx12, align 4
  %27 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index13 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %27, i32 0, i32 15
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index13, i32 0, i64 2
  %28 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 2
  store i32 %28, i32* %arrayidx15, align 4
  %29 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride16 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %29, i32 0, i32 16
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride16, i32 0, i64 0
  %30 = load i32, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 %30, i32* %arrayidx18, align 4
  %31 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride19 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %31, i32 0, i32 16
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride19, i32 0, i64 1
  %32 = load i32, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 1
  store i32 %32, i32* %arrayidx21, align 4
  %33 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride22 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %33, i32 0, i32 16
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride22, i32 0, i64 2
  %34 = load i32, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 2
  store i32 %34, i32* %arrayidx24, align 4
  %35 = load i32, i32* %stencil_size, align 4
  %conv = sext i32 %35 to i64
  %mul = mul i64 4, %conv
  %conv25 = trunc i64 %mul to i32
  %call26 = call i8* @hypre_MAlloc(i32 %conv25)
  %36 = bitcast i8* %call26 to i32*
  store i32* %36, i32** %stencil_indices, align 8
  store i32 0, i32* %num_stencil_indices, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %stencil_size, align 4
  %cmp = icmp slt i32 %37, %38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %stencil_dim, align 4
  %sub = sub nsw i32 %39, 1
  %idxprom = sext i32 %sub to i64
  %40 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx29, i32 0, i64 %idxprom
  %42 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %42, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %num_stencil_indices, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load i32*, i32** %stencil_indices, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom33
  store i32 %43, i32* %arrayidx34, align 4
  %46 = load i32, i32* %num_stencil_indices, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %num_stencil_indices, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %49 = load i32, i32* %num_stencil_indices, align 4
  %50 = load i32*, i32** %stencil_indices, align 8
  %call36 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct* %48, i32 %49, i32* %50)
  store %struct.hypre_StructMatrix_struct* %call36, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %51 = load i32, i32* %stencil_dim, align 4
  %sub37 = sub nsw i32 %51, 1
  %52 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %stencil38 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %52, i32 0, i32 3
  %53 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil38, align 8
  %dim39 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %53, i32 0, i32 3
  store i32 %sub37, i32* %dim39, align 4
  %54 = load i32*, i32** %stencil_indices, align 8
  %55 = bitcast i32* %54 to i8*
  call void @hypre_Free(i8* %55)
  store i32* null, i32** %stencil_indices, align 8
  %56 = load i32, i32* %num_spaces, align 4
  %conv40 = sext i32 %56 to i64
  %mul41 = mul i64 8, %conv40
  %conv42 = trunc i64 %mul41 to i32
  %call43 = call i8* @hypre_MAlloc(i32 %conv42)
  %57 = bitcast i8* %call43 to i8**
  store i8** %57, i8*** %solve_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.99, %for.end
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %num_spaces, align 4
  %cmp45 = icmp slt i32 %58, %59
  br i1 %cmp45, label %for.body.47, label %for.end.101

for.body.47:                                      ; preds = %for.cond.44
  %60 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %60 to i64
  %61 = load i32*, i32** %space_indices, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %61, i64 %idxprom48
  %62 = load i32, i32* %arrayidx49, align 4
  %63 = load i32, i32* %stencil_dim, align 4
  %sub50 = sub nsw i32 %63, 1
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 %idxprom51
  store i32 %62, i32* %arrayidx52, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %64 to i64
  %65 = load i32*, i32** %space_strides, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %65, i64 %idxprom53
  %66 = load i32, i32* %arrayidx54, align 4
  %67 = load i32, i32* %stencil_dim, align 4
  %sub55 = sub nsw i32 %67, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 %idxprom56
  store i32 %66, i32* %arrayidx57, align 4
  %68 = load i32, i32* %stencil_dim, align 4
  %cmp58 = icmp sgt i32 %68, 2
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.body.47
  %69 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %comm = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %69, i32 0, i32 3
  %70 = load i32, i32* %comm, align 4
  %call61 = call i8* @hypre_SMGCreate(i32 %70)
  %71 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %71 to i64
  %72 = load i8**, i8*** %solve_data, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %72, i64 %idxprom62
  store i8* %call61, i8** %arrayidx63, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %73 to i64
  %74 = load i8**, i8*** %solve_data, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %74, i64 %idxprom64
  %75 = load i8*, i8** %arrayidx65, align 8
  %76 = load i32, i32* %num_pre_relax, align 4
  %call66 = call i32 @hypre_SMGSetNumPreRelax(i8* %75, i32 %76)
  %77 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %77 to i64
  %78 = load i8**, i8*** %solve_data, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %78, i64 %idxprom67
  %79 = load i8*, i8** %arrayidx68, align 8
  %80 = load i32, i32* %num_post_relax, align 4
  %call69 = call i32 @hypre_SMGSetNumPostRelax(i8* %79, i32 %80)
  %81 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %81 to i64
  %82 = load i8**, i8*** %solve_data, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %82, i64 %idxprom70
  %83 = load i8*, i8** %arrayidx71, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i32 0
  %call73 = call i32 @hypre_SMGSetBase(i8* %83, i32* %arraydecay, i32* %arraydecay72)
  %84 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %84 to i64
  %85 = load i8**, i8*** %solve_data, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %85, i64 %idxprom74
  %86 = load i8*, i8** %arrayidx75, align 8
  %87 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %87, i32 0, i32 4
  %88 = load i32, i32* %memory_use, align 4
  %call76 = call i32 @hypre_SMGSetMemoryUse(i8* %86, i32 %88)
  %89 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %89 to i64
  %90 = load i8**, i8*** %solve_data, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %90, i64 %idxprom77
  %91 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i32 @hypre_SMGSetTol(i8* %91, double 0.000000e+00)
  %92 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %92 to i64
  %93 = load i8**, i8*** %solve_data, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %93, i64 %idxprom80
  %94 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i32 @hypre_SMGSetMaxIter(i8* %94, i32 1)
  %95 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %95 to i64
  %96 = load i8**, i8*** %solve_data, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %96, i64 %idxprom83
  %97 = load i8*, i8** %arrayidx84, align 8
  %98 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %99 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %100 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call85 = call i32 @hypre_SMGSetup(i8* %97, %struct.hypre_StructMatrix_struct* %98, %struct.hypre_StructVector_struct* %99, %struct.hypre_StructVector_struct* %100)
  br label %if.end.98

if.else:                                          ; preds = %for.body.47
  %101 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %comm86 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %101, i32 0, i32 3
  %102 = load i32, i32* %comm86, align 4
  %call87 = call i8* @hypre_CyclicReductionCreate(i32 %102)
  %103 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %103 to i64
  %104 = load i8**, i8*** %solve_data, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %104, i64 %idxprom88
  store i8* %call87, i8** %arrayidx89, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %105 to i64
  %106 = load i8**, i8*** %solve_data, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %106, i64 %idxprom90
  %107 = load i8*, i8** %arrayidx91, align 8
  %arraydecay92 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i32 0
  %call94 = call i32 @hypre_CyclicReductionSetBase(i8* %107, i32* %arraydecay92, i32* %arraydecay93)
  %108 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %108 to i64
  %109 = load i8**, i8*** %solve_data, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %109, i64 %idxprom95
  %110 = load i8*, i8** %arrayidx96, align 8
  %111 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %112 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec, align 8
  %113 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call97 = call i32 @hypre_CyclicReductionSetup(i8* %110, %struct.hypre_StructMatrix_struct* %111, %struct.hypre_StructVector_struct* %112, %struct.hypre_StructVector_struct* %113)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.60
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %114 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %114, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.44

for.end.101:                                      ; preds = %for.cond.44
  %115 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_sol, align 8
  %116 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %A_sol102 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %116, i32 0, i32 23
  store %struct.hypre_StructMatrix_struct* %115, %struct.hypre_StructMatrix_struct** %A_sol102, align 8
  %117 = load i8**, i8*** %solve_data, align 8
  %118 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %solve_data103 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %118, i32 0, i32 26
  store i8** %117, i8*** %solve_data103, align 8
  %119 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %119, i32 0, i32 2
  store i32 0, i32* %setup_a_sol, align 4
  %120 = load i32, i32* %ierr, align 4
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetupBaseBoxArray(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %base_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid, align 8
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 2
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes2, align 8
  store %struct.hypre_BoxArray_struct* %5, %struct.hypre_BoxArray_struct** %boxes, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %6)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 15
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i32 0
  %9 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %9, i32 0, i32 16
  %arraydecay3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i32 0
  %call4 = call i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %7, i32* %arraydecay, i32* %arraydecay3)
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 17
  store %struct.hypre_BoxArray_struct* %10, %struct.hypre_BoxArray_struct** %base_box_array5, align 8
  %12 = load i32, i32* %ierr, align 4
  ret i32 %12
}

declare %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct*, i32*) #1

declare i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct*, i32, i32*) #1

declare i8* @hypre_SMGResidualCreate() #1

declare i32 @hypre_SMGResidualSetBase(i8*, i32*, i32*) #1

declare i32 @hypre_SMGResidualSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i8* @hypre_SMGCreate(i32) #1

declare i32 @hypre_SMGSetNumPreRelax(i8*, i32) #1

declare i32 @hypre_SMGSetNumPostRelax(i8*, i32) #1

declare i32 @hypre_SMGSetBase(i8*, i32*, i32*) #1

declare i32 @hypre_SMGSetMemoryUse(i8*, i32) #1

declare i32 @hypre_SMGSetTol(i8*, double) #1

declare i32 @hypre_SMGSetMaxIter(i8*, i32) #1

declare i32 @hypre_SMGSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i8* @hypre_CyclicReductionCreate(i32) #1

declare i32 @hypre_CyclicReductionSetBase(i8*, i32*, i32*) #1

declare i32 @hypre_CyclicReductionSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetTempVec(i8* %relax_vdata, %struct.hypre_StructVector_struct* %temp_vec) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %temp_vec.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructVector_struct* %temp_vec, %struct.hypre_StructVector_struct** %temp_vec.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i8*, i8** %relax_vdata.addr, align 8
  %call = call i32 @hypre_SMGRelaxDestroyTempVec(i8* %2)
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %temp_vec.addr, align 8
  %call1 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %3)
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %temp_vec2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 22
  store %struct.hypre_StructVector_struct* %call1, %struct.hypre_StructVector_struct** %temp_vec2, align 8
  %5 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %5, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %6 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %6, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %8 = load i32, i32* %ierr, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetMemoryUse(i8* %relax_vdata, i32 %memory_use) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %memory_use.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %memory_use, i32* %memory_use.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %memory_use.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %memory_use1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 4
  store i32 %2, i32* %memory_use1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetTol(i8* %relax_vdata, double %tol) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %tol.addr = alloca double, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %tol.addr, align 8
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 5
  store double %2, double* %tol1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetMaxIter(i8* %relax_vdata, i32 %max_iter) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %max_iter.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %max_iter.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 6
  store i32 %2, i32* %max_iter1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetZeroGuess(i8* %relax_vdata, i32 %zero_guess) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %zero_guess.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %zero_guess, i32* %zero_guess.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %zero_guess.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %zero_guess1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 7
  store i32 %2, i32* %zero_guess1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetNumSpaces(i8* %relax_vdata, i32 %num_spaces) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_spaces.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_spaces, i32* %num_spaces.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_spaces.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_spaces1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 8
  store i32 %2, i32* %num_spaces1, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 9
  %5 = load i32*, i32** %space_indices, align 8
  %6 = bitcast i32* %5 to i8*
  call void @hypre_Free(i8* %6)
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 9
  store i32* null, i32** %space_indices2, align 8
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 10
  %9 = load i32*, i32** %space_strides, align 8
  %10 = bitcast i32* %9 to i8*
  call void @hypre_Free(i8* %10)
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides3 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 10
  store i32* null, i32** %space_strides3, align 8
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 13
  %13 = load i32*, i32** %pre_space_ranks, align 8
  %14 = bitcast i32* %13 to i8*
  call void @hypre_Free(i8* %14)
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 13
  store i32* null, i32** %pre_space_ranks4, align 8
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 14
  %17 = load i32*, i32** %reg_space_ranks, align 8
  %18 = bitcast i32* %17 to i8*
  call void @hypre_Free(i8* %18)
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks5 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 14
  store i32* null, i32** %reg_space_ranks5, align 8
  %20 = load i32, i32* %num_spaces.addr, align 4
  %conv = sext i32 %20 to i64
  %mul = mul i64 4, %conv
  %conv6 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv6)
  %21 = bitcast i8* %call to i32*
  %22 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices7 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %22, i32 0, i32 9
  store i32* %21, i32** %space_indices7, align 8
  %23 = load i32, i32* %num_spaces.addr, align 4
  %conv8 = sext i32 %23 to i64
  %mul9 = mul i64 4, %conv8
  %conv10 = trunc i64 %mul9 to i32
  %call11 = call i8* @hypre_MAlloc(i32 %conv10)
  %24 = bitcast i8* %call11 to i32*
  %25 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides12 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %25, i32 0, i32 10
  store i32* %24, i32** %space_strides12, align 8
  %26 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %26, i32 0, i32 11
  store i32 0, i32* %num_pre_spaces, align 4
  %27 = load i32, i32* %num_spaces.addr, align 4
  %28 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_reg_spaces = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %28, i32 0, i32 12
  store i32 %27, i32* %num_reg_spaces, align 4
  %29 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks13 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %29, i32 0, i32 13
  store i32* null, i32** %pre_space_ranks13, align 8
  %30 = load i32, i32* %num_spaces.addr, align 4
  %conv14 = sext i32 %30 to i64
  %mul15 = mul i64 4, %conv14
  %conv16 = trunc i64 %mul15 to i32
  %call17 = call i8* @hypre_MAlloc(i32 %conv16)
  %31 = bitcast i8* %call17 to i32*
  %32 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks18 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %32, i32 0, i32 14
  store i32* %31, i32** %reg_space_ranks18, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %num_spaces.addr, align 4
  %cmp = icmp slt i32 %33, %34
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices20 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %36, i32 0, i32 9
  %37 = load i32*, i32** %space_indices20, align 8
  %arrayidx = getelementptr inbounds i32, i32* %37, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides22 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %39, i32 0, i32 10
  %40 = load i32*, i32** %space_strides22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom21
  store i32 1, i32* %arrayidx23, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %42 to i64
  %43 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks25 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %43, i32 0, i32 14
  %44 = load i32*, i32** %reg_space_ranks25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %44, i64 %idxprom24
  store i32 %41, i32* %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %46, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %47 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %47, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %48 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %48, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %49 = load i32, i32* %ierr, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetNumPreSpaces(i8* %relax_vdata, i32 %num_pre_spaces) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_pre_spaces.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_pre_spaces, i32* %num_pre_spaces.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_pre_spaces.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_spaces1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 11
  store i32 %2, i32* %num_pre_spaces1, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 13
  %5 = load i32*, i32** %pre_space_ranks, align 8
  %6 = bitcast i32* %5 to i8*
  call void @hypre_Free(i8* %6)
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 13
  store i32* null, i32** %pre_space_ranks2, align 8
  %8 = load i32, i32* %num_pre_spaces.addr, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 4, %conv
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv3)
  %9 = bitcast i8* %call to i32*
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 13
  store i32* %9, i32** %pre_space_ranks4, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_pre_spaces.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 13
  %15 = load i32*, i32** %pre_space_ranks6, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
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
define i32 @hypre_SMGRelaxSetNumRegSpaces(i8* %relax_vdata, i32 %num_reg_spaces) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_reg_spaces.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_reg_spaces, i32* %num_reg_spaces.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_reg_spaces.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_reg_spaces1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 12
  store i32 %2, i32* %num_reg_spaces1, align 4
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 14
  %5 = load i32*, i32** %reg_space_ranks, align 8
  %6 = bitcast i32* %5 to i8*
  call void @hypre_Free(i8* %6)
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 14
  store i32* null, i32** %reg_space_ranks2, align 8
  %8 = load i32, i32* %num_reg_spaces.addr, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 4, %conv
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv3)
  %9 = bitcast i8* %call to i32*
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks4 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 14
  store i32* %9, i32** %reg_space_ranks4, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_reg_spaces.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks6 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 14
  %15 = load i32*, i32** %reg_space_ranks6, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
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
define i32 @hypre_SMGRelaxSetSpace(i8* %relax_vdata, i32 %i, i32 %space_index, i32 %space_stride) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %space_index.addr = alloca i32, align 4
  %space_stride.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %space_index, i32* %space_index.addr, align 4
  store i32 %space_stride, i32* %space_stride.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %space_index.addr, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_indices = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 9
  %5 = load i32*, i32** %space_indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %6 = load i32, i32* %space_stride.addr, align 4
  %7 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %space_strides = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %8, i32 0, i32 10
  %9 = load i32*, i32** %space_strides, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4
  %10 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %10, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %11 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %11, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %relax_vdata, i32 %i, i32 %reg_space_rank) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %reg_space_rank.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %reg_space_rank, i32* %reg_space_rank.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %reg_space_rank.addr, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %reg_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 14
  %5 = load i32*, i32** %reg_space_ranks, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetPreSpaceRank(i8* %relax_vdata, i32 %i, i32 %pre_space_rank) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %pre_space_rank.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %pre_space_rank, i32* %pre_space_rank.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %pre_space_rank.addr, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %pre_space_ranks = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 13
  %5 = load i32*, i32** %pre_space_ranks, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetBase(i8* %relax_vdata, i32* %base_index, i32* %base_stride) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %base_index.addr = alloca i32*, align 8
  %base_stride.addr = alloca i32*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32* %base_index, i32** %base_index.addr, align 8
  store i32* %base_stride, i32** %base_stride.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %d, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %base_index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %d, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %7, i32 0, i32 15
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i64 %idxprom1
  store i32 %5, i32* %arrayidx3, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_stride7 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %12, i32 0, i32 16
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride7, i32 0, i64 %idxprom6
  store i32 %10, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %d, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 17
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array, align 8
  %cmp9 = icmp ne %struct.hypre_BoxArray_struct* %15, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array10 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %16, i32 0, i32 17
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_box_array10, align 8
  %call = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %17)
  %18 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %base_box_array11 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %18, i32 0, i32 17
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %base_box_array11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %19 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_temp_vec = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %19, i32 0, i32 0
  store i32 1, i32* %setup_temp_vec, align 4
  %20 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %20, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  %21 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %21, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  %22 = load i32, i32* %ierr, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetNumPreRelax(i8* %relax_vdata, i32 %num_pre_relax) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_pre_relax.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_pre_relax, i32* %num_pre_relax.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_pre_relax.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %num_pre_relax.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %3, %cond.false ]
  %4 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_pre_relax1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %4, i32 0, i32 29
  store i32 %cond, i32* %num_pre_relax1, align 4
  %5 = load i32, i32* %ierr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetNumPostRelax(i8* %relax_vdata, i32 %num_post_relax) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_post_relax.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_post_relax, i32* %num_post_relax.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_post_relax.addr, align 4
  %3 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %num_post_relax1 = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %3, i32 0, i32 30
  store i32 %2, i32* %num_post_relax1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGRelaxSetNewMatrixStencil(i8* %relax_vdata, %struct.hypre_StructStencil_struct* %diff_stencil) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %diff_stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %relax_data = alloca %struct.hypre_SMGRelaxData*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %stencil_dim = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructStencil_struct* %diff_stencil, %struct.hypre_StructStencil_struct** %diff_stencil.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGRelaxData*
  store %struct.hypre_SMGRelaxData* %1, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %diff_stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 0
  %3 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %3, [3 x i32]** %stencil_shape, align 8
  %4 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %diff_stencil.addr, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  store i32 %5, i32* %stencil_size, align 4
  %6 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %diff_stencil.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %dim, align 4
  store i32 %7, i32* %stencil_dim, align 4
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %stencil_size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %stencil_dim, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %13, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_rem = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %14, i32 0, i32 1
  store i32 1, i32* %setup_a_rem, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.hypre_SMGRelaxData*, %struct.hypre_SMGRelaxData** %relax_data, align 8
  %setup_a_sol = getelementptr inbounds %struct.hypre_SMGRelaxData, %struct.hypre_SMGRelaxData* %15, i32 0, i32 2
  store i32 1, i32* %setup_a_sol, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %ierr, align 4
  ret i32 %17
}

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
