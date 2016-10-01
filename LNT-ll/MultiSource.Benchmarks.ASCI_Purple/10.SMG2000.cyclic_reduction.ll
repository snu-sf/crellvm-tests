; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/10.SMG2000.cyclic_reduction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CyclicReductionData = type { i32, i32, i32, [3 x i32], [3 x i32], %struct.hypre_StructGrid_struct**, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct**, double*, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct**, i32, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"CyclicReduction\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_CyclicReductionCreate(i32 %comm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %cyc_red_data = alloca %struct.hypre_CyclicReductionData*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 112)
  %0 = bitcast i8* %call to %struct.hypre_CyclicReductionData*
  store %struct.hypre_CyclicReductionData* %0, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %3 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %cdir = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %3, i32 0, i32 2
  store i32 0, i32* %cdir, align 4
  %call2 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %4 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %4, i32 0, i32 13
  store i32 %call2, i32* %time_index, align 4
  %5 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %6 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index3 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %6, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index3, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %7 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index5 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %7, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index5, i32 0, i64 2
  store i32 0, i32* %arrayidx6, align 4
  %8 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %8, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx7, align 4
  %9 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride8 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %9, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride8, i32 0, i64 1
  store i32 1, i32* %arrayidx9, align 4
  %10 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride10 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %10, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride10, i32 0, i64 2
  store i32 1, i32* %arrayidx11, align 4
  %11 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %12 = bitcast %struct.hypre_CyclicReductionData* %11 to i8*
  ret i8* %12
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_CycRedCreateCoarseOp(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructGrid_struct* %coarse_grid, i32 %cdir) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %coarse_grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %cdir.addr = alloca i32, align 4
  %Ac = alloca %struct.hypre_StructMatrix_struct*, align 8
  %Ac_stencil_shape = alloca [3 x i32]*, align 8
  %Ac_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %Ac_stencil_size = alloca i32, align 4
  %Ac_stencil_dim = alloca i32, align 4
  %Ac_num_ghost = alloca [6 x i32], align 16
  %i = alloca i32, align 4
  %stencil_rank = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructGrid_struct* %coarse_grid, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  store i32 %cdir, i32* %cdir.addr, align 4
  %0 = bitcast [6 x i32]* %Ac_num_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  store i32 1, i32* %Ac_stencil_dim, align 4
  store i32 0, i32* %stencil_rank, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 10
  %2 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 3, i32* %Ac_stencil_size, align 4
  %3 = load i32, i32* %Ac_stencil_size, align 4
  %call = call i8* @hypre_CAlloc(i32 %3, i32 12)
  %4 = bitcast i8* %call to [3 x i32]*
  store [3 x i32]* %4, [3 x i32]** %Ac_stencil_shape, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %stencil_rank, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  store i32 %6, i32* %arrayidx1, align 4
  %9 = load i32, i32* %stencil_rank, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %11 = load i32, i32* %stencil_rank, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 2
  store i32 0, i32* %arrayidx7, align 4
  %13 = load i32, i32* %stencil_rank, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %stencil_rank, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, i32* %Ac_stencil_size, align 4
  %15 = load i32, i32* %Ac_stencil_size, align 4
  %call9 = call i8* @hypre_CAlloc(i32 %15, i32 12)
  %16 = bitcast i8* %call9 to [3 x i32]*
  store [3 x i32]* %16, [3 x i32]** %Ac_stencil_shape, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %if.else
  %17 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %17, 1
  br i1 %cmp11, label %for.body.12, label %for.end.25

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %stencil_rank, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 0
  store i32 %18, i32* %arrayidx15, align 4
  %21 = load i32, i32* %stencil_rank, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17, i32 0, i64 1
  store i32 0, i32* %arrayidx18, align 4
  %23 = load i32, i32* %stencil_rank, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 2
  store i32 0, i32* %arrayidx21, align 4
  %25 = load i32, i32* %stencil_rank, align 4
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %stencil_rank, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.12
  %26 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  br label %if.end

if.end:                                           ; preds = %for.end.25, %for.end
  %27 = load i32, i32* %Ac_stencil_dim, align 4
  %28 = load i32, i32* %Ac_stencil_size, align 4
  %29 = load [3 x i32]*, [3 x i32]** %Ac_stencil_shape, align 8
  %call26 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %27, i32 %28, [3 x i32]* %29)
  store %struct.hypre_StructStencil_struct* %call26, %struct.hypre_StructStencil_struct** %Ac_stencil, align 8
  %30 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %comm, align 4
  %32 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %33 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %Ac_stencil, align 8
  %call27 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %31, %struct.hypre_StructGrid_struct* %32, %struct.hypre_StructStencil_struct* %33)
  store %struct.hypre_StructMatrix_struct* %call27, %struct.hypre_StructMatrix_struct** %Ac, align 8
  %34 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %Ac_stencil, align 8
  %call28 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %34)
  %35 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric29 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %35, i32 0, i32 10
  %36 = load i32, i32* %symmetric29, align 4
  %37 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac, align 8
  %symmetric30 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %37, i32 0, i32 10
  store i32 %36, i32* %symmetric30, align 4
  %38 = load i32, i32* %cdir.addr, align 4
  %mul = mul nsw i32 2, %38
  %idxprom31 = sext i32 %mul to i64
  %arrayidx32 = getelementptr inbounds [6 x i32], [6 x i32]* %Ac_num_ghost, i32 0, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4
  %39 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric33 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %39, i32 0, i32 10
  %40 = load i32, i32* %symmetric33, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %if.end.39, label %if.then.35

if.then.35:                                       ; preds = %if.end
  %41 = load i32, i32* %cdir.addr, align 4
  %mul36 = mul nsw i32 2, %41
  %add = add nsw i32 %mul36, 1
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [6 x i32], [6 x i32]* %Ac_num_ghost, i32 0, i64 %idxprom37
  store i32 1, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac, align 8
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %Ac_num_ghost, i32 0, i32 0
  %call40 = call i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %42, i32* %arraydecay)
  %43 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac, align 8
  %call41 = call i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct* %43)
  %44 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac, align 8
  ret %struct.hypre_StructMatrix_struct* %44
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*) #1

declare i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #1

declare i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct*, i32*) #1

declare i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CycRedSetupCoarseOp(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %Ac, i32* %cindex, i32* %cstride) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %Ac.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %index = alloca [3 x i32], align 4
  %fgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %fgrid_ids = alloca i32*, align 8
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cgrid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cgrid_ids = alloca i32*, align 8
  %cgrid_box = alloca %struct.hypre_Box_struct*, align 8
  %cstart = alloca i32*, align 8
  %stridec = alloca [3 x i32], align 4
  %fstart = alloca [3 x i32], align 4
  %stridef = alloca i32*, align 8
  %loop_size = alloca [3 x i32], align 4
  %fi = alloca i32, align 4
  %ci = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %A_dbox = alloca %struct.hypre_Box_struct*, align 8
  %Ac_dbox = alloca %struct.hypre_Box_struct*, align 8
  %a_cc = alloca double*, align 8
  %a_cw = alloca double*, align 8
  %a_ce = alloca double*, align 8
  %ac_cc = alloca double*, align 8
  %ac_cw = alloca double*, align 8
  %ac_ce = alloca double*, align 8
  %iA = alloca i32, align 4
  %iAm1 = alloca i32, align 4
  %iAp1 = alloca i32, align 4
  %iAc = alloca i32, align 4
  %xOffsetA = alloca i32, align 4
  %ierr = alloca i32, align 4
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
  %hypre__i1start460 = alloca i32, align 4
  %hypre__i2start511 = alloca i32, align 4
  %hypre__sx1562 = alloca i32, align 4
  %hypre__sy1564 = alloca i32, align 4
  %hypre__sz1584 = alloca i32, align 4
  %hypre__sx2622 = alloca i32, align 4
  %hypre__sy2624 = alloca i32, align 4
  %hypre__sz2644 = alloca i32, align 4
  %hypre__nx682 = alloca i32, align 4
  %hypre__ny684 = alloca i32, align 4
  %hypre__nz686 = alloca i32, align 4
  %hypre__mx688 = alloca i32, align 4
  %hypre__my689 = alloca i32, align 4
  %hypre__mz690 = alloca i32, align 4
  %hypre__dir691 = alloca i32, align 4
  %hypre__max692 = alloca i32, align 4
  %hypre__div693 = alloca i32, align 4
  %hypre__mod694 = alloca i32, align 4
  %hypre__block695 = alloca i32, align 4
  %hypre__num_blocks696 = alloca i32, align 4
  %hypre__i1start885 = alloca i32, align 4
  %hypre__sx1936 = alloca i32, align 4
  %hypre__sy1938 = alloca i32, align 4
  %hypre__sz1958 = alloca i32, align 4
  %hypre__nx996 = alloca i32, align 4
  %hypre__ny998 = alloca i32, align 4
  %hypre__nz1000 = alloca i32, align 4
  %hypre__mx1002 = alloca i32, align 4
  %hypre__my1003 = alloca i32, align 4
  %hypre__mz1004 = alloca i32, align 4
  %hypre__dir1005 = alloca i32, align 4
  %hypre__max1006 = alloca i32, align 4
  %hypre__div1007 = alloca i32, align 4
  %hypre__mod1008 = alloca i32, align 4
  %hypre__block1009 = alloca i32, align 4
  %hypre__num_blocks1010 = alloca i32, align 4
  %hypre__i1start1121 = alloca i32, align 4
  %hypre__sx11172 = alloca i32, align 4
  %hypre__sy11174 = alloca i32, align 4
  %hypre__sz11194 = alloca i32, align 4
  %hypre__nx1232 = alloca i32, align 4
  %hypre__ny1234 = alloca i32, align 4
  %hypre__nz1236 = alloca i32, align 4
  %hypre__mx1238 = alloca i32, align 4
  %hypre__my1239 = alloca i32, align 4
  %hypre__mz1240 = alloca i32, align 4
  %hypre__dir1241 = alloca i32, align 4
  %hypre__max1242 = alloca i32, align 4
  %hypre__div1243 = alloca i32, align 4
  %hypre__mod1244 = alloca i32, align 4
  %hypre__block1245 = alloca i32, align 4
  %hypre__num_blocks1246 = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %Ac, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32*, i32** %cstride.addr, align 8
  store i32* %0, i32** %stridef, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %2, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %3, i32 0, i32 3
  %4 = load i32*, i32** %ids, align 8
  store i32* %4, i32** %fgrid_ids, align 8
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 1
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid3, align 8
  store %struct.hypre_StructGrid_struct* %6, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 2
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %8, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %9, i32 0, i32 3
  %10 = load i32*, i32** %ids4, align 8
  store i32* %10, i32** %cgrid_ids, align 8
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.841, %entry
  %11 = load i32, i32* %ci, align 4
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end.843

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx5, align 4
  %17 = load i32, i32* %ci, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %idxprom6
  %19 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ne i32 %16, %19
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %fi, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %ci, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes10 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes10, align 8
  %arrayidx11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom9
  store %struct.hypre_Box_struct* %arrayidx11, %struct.hypre_Box_struct** %cgrid_box, align 8
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %cstart, align 8
  %25 = load i32*, i32** %cstart, align 8
  %26 = load i32*, i32** %cindex.addr, align 8
  %27 = load i32*, i32** %cstride.addr, align 8
  %arraydecay12 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i32 0
  %call = call i32 @hypre_StructMapCoarseToFine(i32* %25, i32* %26, i32* %27, i32* %arraydecay12)
  %28 = load i32, i32* %fi, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %29, i32 0, i32 5
  %30 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %30, i32 0, i32 0
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i64 %idxprom13
  store %struct.hypre_Box_struct* %arrayidx15, %struct.hypre_Box_struct** %A_dbox, align 8
  %32 = load i32, i32* %ci, align 4
  %idxprom16 = sext i32 %32 to i64
  %33 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %data_space17 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %33, i32 0, i32 5
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space17, align 8
  %boxes18 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes18, align 8
  %arrayidx19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom16
  store %struct.hypre_Box_struct* %arrayidx19, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx22, align 4
  %36 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %37 = load i32, i32* %fi, align 4
  %arraydecay23 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call24 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %36, i32 %37, i32* %arraydecay23)
  store double* %call24, double** %a_cc, align 8
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx27, align 4
  %38 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %39 = load i32, i32* %fi, align 4
  %arraydecay28 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call29 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %38, i32 %39, i32* %arraydecay28)
  store double* %call29, double** %a_cw, align 8
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx32, align 4
  %40 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %41 = load i32, i32* %fi, align 4
  %arraydecay33 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call34 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %40, i32 %41, i32* %arraydecay33)
  store double* %call34, double** %a_ce, align 8
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx36, align 4
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx37, align 4
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %43 = load i32, i32* %ci, align 4
  %arraydecay38 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call39 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %42, i32 %43, i32* %arraydecay38)
  store double* %call39, double** %ac_cc, align 8
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx42, align 4
  %44 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %45 = load i32, i32* %ci, align 4
  %arraydecay43 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call44 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %44, i32 %45, i32* %arraydecay43)
  store double* %call44, double** %ac_cw, align 8
  %46 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %46, i32 0, i32 10
  %47 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx47, align 4
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %49 = load i32, i32* %ci, align 4
  %arraydecay48 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call49 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %48, i32 %49, i32* %arraydecay48)
  store double* %call49, double** %ac_ce, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %50 = load i32, i32* %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %51 = load i32, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %52 = load i32, i32* %arrayidx55, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %54 = load i32, i32* %arrayidx56, align 4
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imin57, i32 0, i64 1
  %56 = load i32, i32* %arrayidx58, align 4
  %sub = sub nsw i32 %54, %56
  %add = add nsw i32 %sub, 1
  %cmp59 = icmp slt i32 0, %add
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imax60, i32 0, i64 1
  %58 = load i32, i32* %arrayidx61, align 4
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imin62, i32 0, i64 1
  %60 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %58, %60
  %add65 = add nsw i32 %sub64, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add65, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %52, %cond
  %add66 = add nsw i32 %51, %mul
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imax67, i32 0, i64 0
  %62 = load i32, i32* %arrayidx68, align 4
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %imin69, i32 0, i64 0
  %64 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %62, %64
  %add72 = add nsw i32 %sub71, 1
  %cmp73 = icmp slt i32 0, %add72
  br i1 %cmp73, label %cond.true.74, label %cond.false.81

cond.true.74:                                     ; preds = %cond.end
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imax75, i32 0, i64 0
  %66 = load i32, i32* %arrayidx76, align 4
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imin77, i32 0, i64 0
  %68 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %66, %68
  %add80 = add nsw i32 %sub79, 1
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.end
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.74
  %cond83 = phi i32 [ %add80, %cond.true.74 ], [ 0, %cond.false.81 ]
  %mul84 = mul nsw i32 %add66, %cond83
  %add85 = add nsw i32 %50, %mul84
  store i32 %add85, i32* %xOffsetA, align 4
  %69 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric86 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %69, i32 0, i32 10
  %70 = load i32, i32* %symmetric86, align 4
  %tobool87 = icmp ne i32 %70, 0
  br i1 %tobool87, label %if.else.457, label %if.then.88

if.then.88:                                       ; preds = %cond.end.82
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay89 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call90 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %71, i32* %arraydecay89)
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %72 = load i32, i32* %arrayidx91, align 4
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i64 0
  %74 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %72, %74
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %75 = load i32, i32* %arrayidx95, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imin96, i32 0, i64 1
  %77 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %75, %77
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %78 = load i32, i32* %arrayidx99, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin100, i32 0, i64 2
  %80 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %78, %80
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imax103, i32 0, i64 1
  %82 = load i32, i32* %arrayidx104, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin105, i32 0, i64 1
  %84 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub nsw i32 %82, %84
  %add108 = add nsw i32 %sub107, 1
  %cmp109 = icmp slt i32 0, %add108
  br i1 %cmp109, label %cond.true.110, label %cond.false.117

cond.true.110:                                    ; preds = %if.then.88
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax111, i32 0, i64 1
  %86 = load i32, i32* %arrayidx112, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin113, i32 0, i64 1
  %88 = load i32, i32* %arrayidx114, align 4
  %sub115 = sub nsw i32 %86, %88
  %add116 = add nsw i32 %sub115, 1
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.88
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.110
  %cond119 = phi i32 [ %add116, %cond.true.110 ], [ 0, %cond.false.117 ]
  %mul120 = mul nsw i32 %sub102, %cond119
  %add121 = add nsw i32 %sub98, %mul120
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imax122, i32 0, i64 0
  %90 = load i32, i32* %arrayidx123, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imin124, i32 0, i64 0
  %92 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %90, %92
  %add127 = add nsw i32 %sub126, 1
  %cmp128 = icmp slt i32 0, %add127
  br i1 %cmp128, label %cond.true.129, label %cond.false.136

cond.true.129:                                    ; preds = %cond.end.118
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %imax130, i32 0, i64 0
  %94 = load i32, i32* %arrayidx131, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i64 0
  %96 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub nsw i32 %94, %96
  %add135 = add nsw i32 %sub134, 1
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end.118
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.129
  %cond138 = phi i32 [ %add135, %cond.true.129 ], [ 0, %cond.false.136 ]
  %mul139 = mul nsw i32 %add121, %cond138
  %add140 = add nsw i32 %sub94, %mul139
  store i32 %add140, i32* %hypre__i1start, align 4
  %97 = load i32*, i32** %cstart, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx141, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 0
  %100 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %98, %100
  %101 = load i32*, i32** %cstart, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %101, i64 1
  %102 = load i32, i32* %arrayidx145, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin146, i32 0, i64 1
  %104 = load i32, i32* %arrayidx147, align 4
  %sub148 = sub nsw i32 %102, %104
  %105 = load i32*, i32** %cstart, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %105, i64 2
  %106 = load i32, i32* %arrayidx149, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin150, i32 0, i64 2
  %108 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %106, %108
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 1
  %110 = load i32, i32* %arrayidx154, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin155, i32 0, i64 1
  %112 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %110, %112
  %add158 = add nsw i32 %sub157, 1
  %cmp159 = icmp slt i32 0, %add158
  br i1 %cmp159, label %cond.true.160, label %cond.false.167

cond.true.160:                                    ; preds = %cond.end.137
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 1
  %114 = load i32, i32* %arrayidx162, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 1
  %116 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %114, %116
  %add166 = add nsw i32 %sub165, 1
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.137
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.160
  %cond169 = phi i32 [ %add166, %cond.true.160 ], [ 0, %cond.false.167 ]
  %mul170 = mul nsw i32 %sub152, %cond169
  %add171 = add nsw i32 %sub148, %mul170
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %imax172, i32 0, i64 0
  %118 = load i32, i32* %arrayidx173, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %imin174, i32 0, i64 0
  %120 = load i32, i32* %arrayidx175, align 4
  %sub176 = sub nsw i32 %118, %120
  %add177 = add nsw i32 %sub176, 1
  %cmp178 = icmp slt i32 0, %add177
  br i1 %cmp178, label %cond.true.179, label %cond.false.186

cond.true.179:                                    ; preds = %cond.end.168
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax180, i32 0, i64 0
  %122 = load i32, i32* %arrayidx181, align 4
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %123, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin182, i32 0, i64 0
  %124 = load i32, i32* %arrayidx183, align 4
  %sub184 = sub nsw i32 %122, %124
  %add185 = add nsw i32 %sub184, 1
  br label %cond.end.187

cond.false.186:                                   ; preds = %cond.end.168
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.179
  %cond188 = phi i32 [ %add185, %cond.true.179 ], [ 0, %cond.false.186 ]
  %mul189 = mul nsw i32 %add171, %cond188
  %add190 = add nsw i32 %sub144, %mul189
  store i32 %add190, i32* %hypre__i2start, align 4
  %125 = load i32*, i32** %stridef, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx191, align 4
  store i32 %126, i32* %hypre__sx1, align 4
  %127 = load i32*, i32** %stridef, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %127, i64 1
  %128 = load i32, i32* %arrayidx192, align 4
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imax193, i32 0, i64 0
  %130 = load i32, i32* %arrayidx194, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin195 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %imin195, i32 0, i64 0
  %132 = load i32, i32* %arrayidx196, align 4
  %sub197 = sub nsw i32 %130, %132
  %add198 = add nsw i32 %sub197, 1
  %cmp199 = icmp slt i32 0, %add198
  br i1 %cmp199, label %cond.true.200, label %cond.false.207

cond.true.200:                                    ; preds = %cond.end.187
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 0
  %134 = load i32, i32* %arrayidx202, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin203, i32 0, i64 0
  %136 = load i32, i32* %arrayidx204, align 4
  %sub205 = sub nsw i32 %134, %136
  %add206 = add nsw i32 %sub205, 1
  br label %cond.end.208

cond.false.207:                                   ; preds = %cond.end.187
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.200
  %cond209 = phi i32 [ %add206, %cond.true.200 ], [ 0, %cond.false.207 ]
  %mul210 = mul nsw i32 %128, %cond209
  store i32 %mul210, i32* %hypre__sy1, align 4
  %137 = load i32*, i32** %stridef, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %137, i64 2
  %138 = load i32, i32* %arrayidx211, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imax212, i32 0, i64 0
  %140 = load i32, i32* %arrayidx213, align 4
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %141, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imin214, i32 0, i64 0
  %142 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 %140, %142
  %add217 = add nsw i32 %sub216, 1
  %cmp218 = icmp slt i32 0, %add217
  br i1 %cmp218, label %cond.true.219, label %cond.false.226

cond.true.219:                                    ; preds = %cond.end.208
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imax220, i32 0, i64 0
  %144 = load i32, i32* %arrayidx221, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imin222, i32 0, i64 0
  %146 = load i32, i32* %arrayidx223, align 4
  %sub224 = sub nsw i32 %144, %146
  %add225 = add nsw i32 %sub224, 1
  br label %cond.end.227

cond.false.226:                                   ; preds = %cond.end.208
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.226, %cond.true.219
  %cond228 = phi i32 [ %add225, %cond.true.219 ], [ 0, %cond.false.226 ]
  %mul229 = mul nsw i32 %138, %cond228
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %imax230, i32 0, i64 1
  %148 = load i32, i32* %arrayidx231, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %imin232, i32 0, i64 1
  %150 = load i32, i32* %arrayidx233, align 4
  %sub234 = sub nsw i32 %148, %150
  %add235 = add nsw i32 %sub234, 1
  %cmp236 = icmp slt i32 0, %add235
  br i1 %cmp236, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %cond.end.227
  %151 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %151, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imax238, i32 0, i64 1
  %152 = load i32, i32* %arrayidx239, align 4
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imin240, i32 0, i64 1
  %154 = load i32, i32* %arrayidx241, align 4
  %sub242 = sub nsw i32 %152, %154
  %add243 = add nsw i32 %sub242, 1
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.227
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.237
  %cond246 = phi i32 [ %add243, %cond.true.237 ], [ 0, %cond.false.244 ]
  %mul247 = mul nsw i32 %mul229, %cond246
  store i32 %mul247, i32* %hypre__sz1, align 4
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %155 = load i32, i32* %arrayidx248, align 4
  store i32 %155, i32* %hypre__sx2, align 4
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %156 = load i32, i32* %arrayidx249, align 4
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imax250, i32 0, i64 0
  %158 = load i32, i32* %arrayidx251, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imin252, i32 0, i64 0
  %160 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %158, %160
  %add255 = add nsw i32 %sub254, 1
  %cmp256 = icmp slt i32 0, %add255
  br i1 %cmp256, label %cond.true.257, label %cond.false.264

cond.true.257:                                    ; preds = %cond.end.245
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax258, i32 0, i64 0
  %162 = load i32, i32* %arrayidx259, align 4
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin260, i32 0, i64 0
  %164 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %162, %164
  %add263 = add nsw i32 %sub262, 1
  br label %cond.end.265

cond.false.264:                                   ; preds = %cond.end.245
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.257
  %cond266 = phi i32 [ %add263, %cond.true.257 ], [ 0, %cond.false.264 ]
  %mul267 = mul nsw i32 %156, %cond266
  store i32 %mul267, i32* %hypre__sy2, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %165 = load i32, i32* %arrayidx268, align 4
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imax269, i32 0, i64 0
  %167 = load i32, i32* %arrayidx270, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %imin271, i32 0, i64 0
  %169 = load i32, i32* %arrayidx272, align 4
  %sub273 = sub nsw i32 %167, %169
  %add274 = add nsw i32 %sub273, 1
  %cmp275 = icmp slt i32 0, %add274
  br i1 %cmp275, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %cond.end.265
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imax277, i32 0, i64 0
  %171 = load i32, i32* %arrayidx278, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 0
  %173 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %171, %173
  %add282 = add nsw i32 %sub281, 1
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.265
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.276
  %cond285 = phi i32 [ %add282, %cond.true.276 ], [ 0, %cond.false.283 ]
  %mul286 = mul nsw i32 %165, %cond285
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imax287, i32 0, i64 1
  %175 = load i32, i32* %arrayidx288, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imin289, i32 0, i64 1
  %177 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %175, %177
  %add292 = add nsw i32 %sub291, 1
  %cmp293 = icmp slt i32 0, %add292
  br i1 %cmp293, label %cond.true.294, label %cond.false.301

cond.true.294:                                    ; preds = %cond.end.284
  %178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax295 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %178, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [3 x i32], [3 x i32]* %imax295, i32 0, i64 1
  %179 = load i32, i32* %arrayidx296, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %imin297, i32 0, i64 1
  %181 = load i32, i32* %arrayidx298, align 4
  %sub299 = sub nsw i32 %179, %181
  %add300 = add nsw i32 %sub299, 1
  br label %cond.end.302

cond.false.301:                                   ; preds = %cond.end.284
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.301, %cond.true.294
  %cond303 = phi i32 [ %add300, %cond.true.294 ], [ 0, %cond.false.301 ]
  %mul304 = mul nsw i32 %mul286, %cond303
  store i32 %mul304, i32* %hypre__sz2, align 4
  %arrayidx305 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %182 = load i32, i32* %arrayidx305, align 4
  store i32 %182, i32* %hypre__nx, align 4
  %arrayidx306 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %183 = load i32, i32* %arrayidx306, align 4
  store i32 %183, i32* %hypre__ny, align 4
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %184 = load i32, i32* %arrayidx307, align 4
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
  %cmp308 = icmp sgt i32 %189, %190
  br i1 %cmp308, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %cond.end.302
  store i32 1, i32* %hypre__dir, align 4
  %191 = load i32, i32* %hypre__ny, align 4
  store i32 %191, i32* %hypre__max, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.309, %cond.end.302
  %192 = load i32, i32* %hypre__nz, align 4
  %193 = load i32, i32* %hypre__max, align 4
  %cmp311 = icmp sgt i32 %192, %193
  br i1 %cmp311, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.end.310
  store i32 2, i32* %hypre__dir, align 4
  %194 = load i32, i32* %hypre__nz, align 4
  store i32 %194, i32* %hypre__max, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.end.310
  store i32 1, i32* %hypre__num_blocks, align 4
  %195 = load i32, i32* %hypre__max, align 4
  %196 = load i32, i32* %hypre__num_blocks, align 4
  %cmp314 = icmp slt i32 %195, %196
  br i1 %cmp314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.end.313
  %197 = load i32, i32* %hypre__max, align 4
  store i32 %197, i32* %hypre__num_blocks, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.end.313
  %198 = load i32, i32* %hypre__num_blocks, align 4
  %cmp317 = icmp sgt i32 %198, 0
  br i1 %cmp317, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.end.316
  %199 = load i32, i32* %hypre__max, align 4
  %200 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %199, %200
  store i32 %div, i32* %hypre__div, align 4
  %201 = load i32, i32* %hypre__max, align 4
  %202 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %201, %202
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %if.end.316
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.454, %if.end.319
  %203 = load i32, i32* %hypre__block, align 4
  %204 = load i32, i32* %hypre__num_blocks, align 4
  %cmp321 = icmp slt i32 %203, %204
  br i1 %cmp321, label %for.body.322, label %for.end.456

for.body.322:                                     ; preds = %for.cond.320
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
  %cmp323 = icmp sgt i32 %208, 1
  br i1 %cmp323, label %if.then.324, label %if.end.365

if.then.324:                                      ; preds = %for.body.322
  %209 = load i32, i32* %hypre__dir, align 4
  %cmp325 = icmp eq i32 %209, 0
  br i1 %cmp325, label %if.then.326, label %if.else

if.then.326:                                      ; preds = %if.then.324
  %210 = load i32, i32* %hypre__block, align 4
  %211 = load i32, i32* %hypre__div, align 4
  %mul327 = mul nsw i32 %210, %211
  %212 = load i32, i32* %hypre__mod, align 4
  %213 = load i32, i32* %hypre__block, align 4
  %cmp328 = icmp slt i32 %212, %213
  br i1 %cmp328, label %cond.true.329, label %cond.false.330

cond.true.329:                                    ; preds = %if.then.326
  %214 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.331

cond.false.330:                                   ; preds = %if.then.326
  %215 = load i32, i32* %hypre__block, align 4
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.329
  %cond332 = phi i32 [ %214, %cond.true.329 ], [ %215, %cond.false.330 ]
  %add333 = add nsw i32 %mul327, %cond332
  store i32 %add333, i32* %loopi, align 4
  %216 = load i32, i32* %hypre__div, align 4
  %217 = load i32, i32* %hypre__mod, align 4
  %218 = load i32, i32* %hypre__block, align 4
  %cmp334 = icmp sgt i32 %217, %218
  %cond335 = select i1 %cmp334, i32 1, i32 0
  %add336 = add nsw i32 %216, %cond335
  store i32 %add336, i32* %hypre__nx, align 4
  br label %if.end.364

if.else:                                          ; preds = %if.then.324
  %219 = load i32, i32* %hypre__dir, align 4
  %cmp337 = icmp eq i32 %219, 1
  br i1 %cmp337, label %if.then.338, label %if.else.349

if.then.338:                                      ; preds = %if.else
  %220 = load i32, i32* %hypre__block, align 4
  %221 = load i32, i32* %hypre__div, align 4
  %mul339 = mul nsw i32 %220, %221
  %222 = load i32, i32* %hypre__mod, align 4
  %223 = load i32, i32* %hypre__block, align 4
  %cmp340 = icmp slt i32 %222, %223
  br i1 %cmp340, label %cond.true.341, label %cond.false.342

cond.true.341:                                    ; preds = %if.then.338
  %224 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.343

cond.false.342:                                   ; preds = %if.then.338
  %225 = load i32, i32* %hypre__block, align 4
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.342, %cond.true.341
  %cond344 = phi i32 [ %224, %cond.true.341 ], [ %225, %cond.false.342 ]
  %add345 = add nsw i32 %mul339, %cond344
  store i32 %add345, i32* %loopj, align 4
  %226 = load i32, i32* %hypre__div, align 4
  %227 = load i32, i32* %hypre__mod, align 4
  %228 = load i32, i32* %hypre__block, align 4
  %cmp346 = icmp sgt i32 %227, %228
  %cond347 = select i1 %cmp346, i32 1, i32 0
  %add348 = add nsw i32 %226, %cond347
  store i32 %add348, i32* %hypre__ny, align 4
  br label %if.end.363

if.else.349:                                      ; preds = %if.else
  %229 = load i32, i32* %hypre__dir, align 4
  %cmp350 = icmp eq i32 %229, 2
  br i1 %cmp350, label %if.then.351, label %if.end.362

if.then.351:                                      ; preds = %if.else.349
  %230 = load i32, i32* %hypre__block, align 4
  %231 = load i32, i32* %hypre__div, align 4
  %mul352 = mul nsw i32 %230, %231
  %232 = load i32, i32* %hypre__mod, align 4
  %233 = load i32, i32* %hypre__block, align 4
  %cmp353 = icmp slt i32 %232, %233
  br i1 %cmp353, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %if.then.351
  %234 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.356

cond.false.355:                                   ; preds = %if.then.351
  %235 = load i32, i32* %hypre__block, align 4
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.354
  %cond357 = phi i32 [ %234, %cond.true.354 ], [ %235, %cond.false.355 ]
  %add358 = add nsw i32 %mul352, %cond357
  store i32 %add358, i32* %loopk, align 4
  %236 = load i32, i32* %hypre__div, align 4
  %237 = load i32, i32* %hypre__mod, align 4
  %238 = load i32, i32* %hypre__block, align 4
  %cmp359 = icmp sgt i32 %237, %238
  %cond360 = select i1 %cmp359, i32 1, i32 0
  %add361 = add nsw i32 %236, %cond360
  store i32 %add361, i32* %hypre__nz, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %cond.end.356, %if.else.349
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %cond.end.343
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %cond.end.331
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %for.body.322
  %239 = load i32, i32* %hypre__i1start, align 4
  %240 = load i32, i32* %loopi, align 4
  %241 = load i32, i32* %hypre__sx1, align 4
  %mul366 = mul nsw i32 %240, %241
  %add367 = add nsw i32 %239, %mul366
  %242 = load i32, i32* %loopj, align 4
  %243 = load i32, i32* %hypre__sy1, align 4
  %mul368 = mul nsw i32 %242, %243
  %add369 = add nsw i32 %add367, %mul368
  %244 = load i32, i32* %loopk, align 4
  %245 = load i32, i32* %hypre__sz1, align 4
  %mul370 = mul nsw i32 %244, %245
  %add371 = add nsw i32 %add369, %mul370
  store i32 %add371, i32* %iA, align 4
  %246 = load i32, i32* %hypre__i2start, align 4
  %247 = load i32, i32* %loopi, align 4
  %248 = load i32, i32* %hypre__sx2, align 4
  %mul372 = mul nsw i32 %247, %248
  %add373 = add nsw i32 %246, %mul372
  %249 = load i32, i32* %loopj, align 4
  %250 = load i32, i32* %hypre__sy2, align 4
  %mul374 = mul nsw i32 %249, %250
  %add375 = add nsw i32 %add373, %mul374
  %251 = load i32, i32* %loopk, align 4
  %252 = load i32, i32* %hypre__sz2, align 4
  %mul376 = mul nsw i32 %251, %252
  %add377 = add nsw i32 %add375, %mul376
  store i32 %add377, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.451, %if.end.365
  %253 = load i32, i32* %loopk, align 4
  %254 = load i32, i32* %hypre__nz, align 4
  %cmp379 = icmp slt i32 %253, %254
  br i1 %cmp379, label %for.body.380, label %for.end.453

for.body.380:                                     ; preds = %for.cond.378
  store i32 0, i32* %loopj, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.442, %for.body.380
  %255 = load i32, i32* %loopj, align 4
  %256 = load i32, i32* %hypre__ny, align 4
  %cmp382 = icmp slt i32 %255, %256
  br i1 %cmp382, label %for.body.383, label %for.end.444

for.body.383:                                     ; preds = %for.cond.381
  store i32 0, i32* %loopi, align 4
  br label %for.cond.384

for.cond.384:                                     ; preds = %for.inc, %for.body.383
  %257 = load i32, i32* %loopi, align 4
  %258 = load i32, i32* %hypre__nx, align 4
  %cmp385 = icmp slt i32 %257, %258
  br i1 %cmp385, label %for.body.386, label %for.end

for.body.386:                                     ; preds = %for.cond.384
  %259 = load i32, i32* %iA, align 4
  %260 = load i32, i32* %xOffsetA, align 4
  %sub387 = sub nsw i32 %259, %260
  store i32 %sub387, i32* %iAm1, align 4
  %261 = load i32, i32* %iA, align 4
  %262 = load i32, i32* %xOffsetA, align 4
  %add388 = add nsw i32 %261, %262
  store i32 %add388, i32* %iAp1, align 4
  %263 = load i32, i32* %iA, align 4
  %idxprom389 = sext i32 %263 to i64
  %264 = load double*, double** %a_cw, align 8
  %arrayidx390 = getelementptr inbounds double, double* %264, i64 %idxprom389
  %265 = load double, double* %arrayidx390, align 8
  %sub391 = fsub double -0.000000e+00, %265
  %266 = load i32, i32* %iAm1, align 4
  %idxprom392 = sext i32 %266 to i64
  %267 = load double*, double** %a_cw, align 8
  %arrayidx393 = getelementptr inbounds double, double* %267, i64 %idxprom392
  %268 = load double, double* %arrayidx393, align 8
  %mul394 = fmul double %sub391, %268
  %269 = load i32, i32* %iAm1, align 4
  %idxprom395 = sext i32 %269 to i64
  %270 = load double*, double** %a_cc, align 8
  %arrayidx396 = getelementptr inbounds double, double* %270, i64 %idxprom395
  %271 = load double, double* %arrayidx396, align 8
  %div397 = fdiv double %mul394, %271
  %272 = load i32, i32* %iAc, align 4
  %idxprom398 = sext i32 %272 to i64
  %273 = load double*, double** %ac_cw, align 8
  %arrayidx399 = getelementptr inbounds double, double* %273, i64 %idxprom398
  store double %div397, double* %arrayidx399, align 8
  %274 = load i32, i32* %iA, align 4
  %idxprom400 = sext i32 %274 to i64
  %275 = load double*, double** %a_cc, align 8
  %arrayidx401 = getelementptr inbounds double, double* %275, i64 %idxprom400
  %276 = load double, double* %arrayidx401, align 8
  %277 = load i32, i32* %iA, align 4
  %idxprom402 = sext i32 %277 to i64
  %278 = load double*, double** %a_cw, align 8
  %arrayidx403 = getelementptr inbounds double, double* %278, i64 %idxprom402
  %279 = load double, double* %arrayidx403, align 8
  %280 = load i32, i32* %iAm1, align 4
  %idxprom404 = sext i32 %280 to i64
  %281 = load double*, double** %a_ce, align 8
  %arrayidx405 = getelementptr inbounds double, double* %281, i64 %idxprom404
  %282 = load double, double* %arrayidx405, align 8
  %mul406 = fmul double %279, %282
  %283 = load i32, i32* %iAm1, align 4
  %idxprom407 = sext i32 %283 to i64
  %284 = load double*, double** %a_cc, align 8
  %arrayidx408 = getelementptr inbounds double, double* %284, i64 %idxprom407
  %285 = load double, double* %arrayidx408, align 8
  %div409 = fdiv double %mul406, %285
  %sub410 = fsub double %276, %div409
  %286 = load i32, i32* %iA, align 4
  %idxprom411 = sext i32 %286 to i64
  %287 = load double*, double** %a_ce, align 8
  %arrayidx412 = getelementptr inbounds double, double* %287, i64 %idxprom411
  %288 = load double, double* %arrayidx412, align 8
  %289 = load i32, i32* %iAp1, align 4
  %idxprom413 = sext i32 %289 to i64
  %290 = load double*, double** %a_cw, align 8
  %arrayidx414 = getelementptr inbounds double, double* %290, i64 %idxprom413
  %291 = load double, double* %arrayidx414, align 8
  %mul415 = fmul double %288, %291
  %292 = load i32, i32* %iAp1, align 4
  %idxprom416 = sext i32 %292 to i64
  %293 = load double*, double** %a_cc, align 8
  %arrayidx417 = getelementptr inbounds double, double* %293, i64 %idxprom416
  %294 = load double, double* %arrayidx417, align 8
  %div418 = fdiv double %mul415, %294
  %sub419 = fsub double %sub410, %div418
  %295 = load i32, i32* %iAc, align 4
  %idxprom420 = sext i32 %295 to i64
  %296 = load double*, double** %ac_cc, align 8
  %arrayidx421 = getelementptr inbounds double, double* %296, i64 %idxprom420
  store double %sub419, double* %arrayidx421, align 8
  %297 = load i32, i32* %iA, align 4
  %idxprom422 = sext i32 %297 to i64
  %298 = load double*, double** %a_ce, align 8
  %arrayidx423 = getelementptr inbounds double, double* %298, i64 %idxprom422
  %299 = load double, double* %arrayidx423, align 8
  %sub424 = fsub double -0.000000e+00, %299
  %300 = load i32, i32* %iAp1, align 4
  %idxprom425 = sext i32 %300 to i64
  %301 = load double*, double** %a_ce, align 8
  %arrayidx426 = getelementptr inbounds double, double* %301, i64 %idxprom425
  %302 = load double, double* %arrayidx426, align 8
  %mul427 = fmul double %sub424, %302
  %303 = load i32, i32* %iAp1, align 4
  %idxprom428 = sext i32 %303 to i64
  %304 = load double*, double** %a_cc, align 8
  %arrayidx429 = getelementptr inbounds double, double* %304, i64 %idxprom428
  %305 = load double, double* %arrayidx429, align 8
  %div430 = fdiv double %mul427, %305
  %306 = load i32, i32* %iAc, align 4
  %idxprom431 = sext i32 %306 to i64
  %307 = load double*, double** %ac_ce, align 8
  %arrayidx432 = getelementptr inbounds double, double* %307, i64 %idxprom431
  store double %div430, double* %arrayidx432, align 8
  %308 = load i32, i32* %hypre__sx1, align 4
  %309 = load i32, i32* %iA, align 4
  %add433 = add nsw i32 %309, %308
  store i32 %add433, i32* %iA, align 4
  %310 = load i32, i32* %hypre__sx2, align 4
  %311 = load i32, i32* %iAc, align 4
  %add434 = add nsw i32 %311, %310
  store i32 %add434, i32* %iAc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.386
  %312 = load i32, i32* %loopi, align 4
  %inc435 = add nsw i32 %312, 1
  store i32 %inc435, i32* %loopi, align 4
  br label %for.cond.384

for.end:                                          ; preds = %for.cond.384
  %313 = load i32, i32* %hypre__sy1, align 4
  %314 = load i32, i32* %hypre__nx, align 4
  %315 = load i32, i32* %hypre__sx1, align 4
  %mul436 = mul nsw i32 %314, %315
  %sub437 = sub nsw i32 %313, %mul436
  %316 = load i32, i32* %iA, align 4
  %add438 = add nsw i32 %316, %sub437
  store i32 %add438, i32* %iA, align 4
  %317 = load i32, i32* %hypre__sy2, align 4
  %318 = load i32, i32* %hypre__nx, align 4
  %319 = load i32, i32* %hypre__sx2, align 4
  %mul439 = mul nsw i32 %318, %319
  %sub440 = sub nsw i32 %317, %mul439
  %320 = load i32, i32* %iAc, align 4
  %add441 = add nsw i32 %320, %sub440
  store i32 %add441, i32* %iAc, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.end
  %321 = load i32, i32* %loopj, align 4
  %inc443 = add nsw i32 %321, 1
  store i32 %inc443, i32* %loopj, align 4
  br label %for.cond.381

for.end.444:                                      ; preds = %for.cond.381
  %322 = load i32, i32* %hypre__sz1, align 4
  %323 = load i32, i32* %hypre__ny, align 4
  %324 = load i32, i32* %hypre__sy1, align 4
  %mul445 = mul nsw i32 %323, %324
  %sub446 = sub nsw i32 %322, %mul445
  %325 = load i32, i32* %iA, align 4
  %add447 = add nsw i32 %325, %sub446
  store i32 %add447, i32* %iA, align 4
  %326 = load i32, i32* %hypre__sz2, align 4
  %327 = load i32, i32* %hypre__ny, align 4
  %328 = load i32, i32* %hypre__sy2, align 4
  %mul448 = mul nsw i32 %327, %328
  %sub449 = sub nsw i32 %326, %mul448
  %329 = load i32, i32* %iAc, align 4
  %add450 = add nsw i32 %329, %sub449
  store i32 %add450, i32* %iAc, align 4
  br label %for.inc.451

for.inc.451:                                      ; preds = %for.end.444
  %330 = load i32, i32* %loopk, align 4
  %inc452 = add nsw i32 %330, 1
  store i32 %inc452, i32* %loopk, align 4
  br label %for.cond.378

for.end.453:                                      ; preds = %for.cond.378
  br label %for.inc.454

for.inc.454:                                      ; preds = %for.end.453
  %331 = load i32, i32* %hypre__block, align 4
  %inc455 = add nsw i32 %331, 1
  store i32 %inc455, i32* %hypre__block, align 4
  br label %for.cond.320

for.end.456:                                      ; preds = %for.cond.320
  br label %if.end.840

if.else.457:                                      ; preds = %cond.end.82
  %332 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay458 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call459 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %332, i32* %arraydecay458)
  %arrayidx461 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %333 = load i32, i32* %arrayidx461, align 4
  %334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin462 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %334, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [3 x i32], [3 x i32]* %imin462, i32 0, i64 0
  %335 = load i32, i32* %arrayidx463, align 4
  %sub464 = sub nsw i32 %333, %335
  %arrayidx465 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %336 = load i32, i32* %arrayidx465, align 4
  %337 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin466 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %337, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [3 x i32], [3 x i32]* %imin466, i32 0, i64 1
  %338 = load i32, i32* %arrayidx467, align 4
  %sub468 = sub nsw i32 %336, %338
  %arrayidx469 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %339 = load i32, i32* %arrayidx469, align 4
  %340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin470 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %340, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [3 x i32], [3 x i32]* %imin470, i32 0, i64 2
  %341 = load i32, i32* %arrayidx471, align 4
  %sub472 = sub nsw i32 %339, %341
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax473 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %imax473, i32 0, i64 1
  %343 = load i32, i32* %arrayidx474, align 4
  %344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %344, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %imin475, i32 0, i64 1
  %345 = load i32, i32* %arrayidx476, align 4
  %sub477 = sub nsw i32 %343, %345
  %add478 = add nsw i32 %sub477, 1
  %cmp479 = icmp slt i32 0, %add478
  br i1 %cmp479, label %cond.true.480, label %cond.false.487

cond.true.480:                                    ; preds = %if.else.457
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax481 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [3 x i32], [3 x i32]* %imax481, i32 0, i64 1
  %347 = load i32, i32* %arrayidx482, align 4
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin483 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 0
  %arrayidx484 = getelementptr inbounds [3 x i32], [3 x i32]* %imin483, i32 0, i64 1
  %349 = load i32, i32* %arrayidx484, align 4
  %sub485 = sub nsw i32 %347, %349
  %add486 = add nsw i32 %sub485, 1
  br label %cond.end.488

cond.false.487:                                   ; preds = %if.else.457
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.false.487, %cond.true.480
  %cond489 = phi i32 [ %add486, %cond.true.480 ], [ 0, %cond.false.487 ]
  %mul490 = mul nsw i32 %sub472, %cond489
  %add491 = add nsw i32 %sub468, %mul490
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax492 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [3 x i32], [3 x i32]* %imax492, i32 0, i64 0
  %351 = load i32, i32* %arrayidx493, align 4
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin494 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %352, i32 0, i32 0
  %arrayidx495 = getelementptr inbounds [3 x i32], [3 x i32]* %imin494, i32 0, i64 0
  %353 = load i32, i32* %arrayidx495, align 4
  %sub496 = sub nsw i32 %351, %353
  %add497 = add nsw i32 %sub496, 1
  %cmp498 = icmp slt i32 0, %add497
  br i1 %cmp498, label %cond.true.499, label %cond.false.506

cond.true.499:                                    ; preds = %cond.end.488
  %354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax500 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %354, i32 0, i32 1
  %arrayidx501 = getelementptr inbounds [3 x i32], [3 x i32]* %imax500, i32 0, i64 0
  %355 = load i32, i32* %arrayidx501, align 4
  %356 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin502 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %356, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [3 x i32], [3 x i32]* %imin502, i32 0, i64 0
  %357 = load i32, i32* %arrayidx503, align 4
  %sub504 = sub nsw i32 %355, %357
  %add505 = add nsw i32 %sub504, 1
  br label %cond.end.507

cond.false.506:                                   ; preds = %cond.end.488
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.false.506, %cond.true.499
  %cond508 = phi i32 [ %add505, %cond.true.499 ], [ 0, %cond.false.506 ]
  %mul509 = mul nsw i32 %add491, %cond508
  %add510 = add nsw i32 %sub464, %mul509
  store i32 %add510, i32* %hypre__i1start460, align 4
  %358 = load i32*, i32** %cstart, align 8
  %arrayidx512 = getelementptr inbounds i32, i32* %358, i64 0
  %359 = load i32, i32* %arrayidx512, align 4
  %360 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin513 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %360, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [3 x i32], [3 x i32]* %imin513, i32 0, i64 0
  %361 = load i32, i32* %arrayidx514, align 4
  %sub515 = sub nsw i32 %359, %361
  %362 = load i32*, i32** %cstart, align 8
  %arrayidx516 = getelementptr inbounds i32, i32* %362, i64 1
  %363 = load i32, i32* %arrayidx516, align 4
  %364 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin517 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %364, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [3 x i32], [3 x i32]* %imin517, i32 0, i64 1
  %365 = load i32, i32* %arrayidx518, align 4
  %sub519 = sub nsw i32 %363, %365
  %366 = load i32*, i32** %cstart, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %366, i64 2
  %367 = load i32, i32* %arrayidx520, align 4
  %368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin521 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %368, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [3 x i32], [3 x i32]* %imin521, i32 0, i64 2
  %369 = load i32, i32* %arrayidx522, align 4
  %sub523 = sub nsw i32 %367, %369
  %370 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax524 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %370, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %imax524, i32 0, i64 1
  %371 = load i32, i32* %arrayidx525, align 4
  %372 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %372, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imin526, i32 0, i64 1
  %373 = load i32, i32* %arrayidx527, align 4
  %sub528 = sub nsw i32 %371, %373
  %add529 = add nsw i32 %sub528, 1
  %cmp530 = icmp slt i32 0, %add529
  br i1 %cmp530, label %cond.true.531, label %cond.false.538

cond.true.531:                                    ; preds = %cond.end.507
  %374 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax532 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %374, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %imax532, i32 0, i64 1
  %375 = load i32, i32* %arrayidx533, align 4
  %376 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %376, i32 0, i32 0
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %imin534, i32 0, i64 1
  %377 = load i32, i32* %arrayidx535, align 4
  %sub536 = sub nsw i32 %375, %377
  %add537 = add nsw i32 %sub536, 1
  br label %cond.end.539

cond.false.538:                                   ; preds = %cond.end.507
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.538, %cond.true.531
  %cond540 = phi i32 [ %add537, %cond.true.531 ], [ 0, %cond.false.538 ]
  %mul541 = mul nsw i32 %sub523, %cond540
  %add542 = add nsw i32 %sub519, %mul541
  %378 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax543 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %378, i32 0, i32 1
  %arrayidx544 = getelementptr inbounds [3 x i32], [3 x i32]* %imax543, i32 0, i64 0
  %379 = load i32, i32* %arrayidx544, align 4
  %380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin545 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %380, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [3 x i32], [3 x i32]* %imin545, i32 0, i64 0
  %381 = load i32, i32* %arrayidx546, align 4
  %sub547 = sub nsw i32 %379, %381
  %add548 = add nsw i32 %sub547, 1
  %cmp549 = icmp slt i32 0, %add548
  br i1 %cmp549, label %cond.true.550, label %cond.false.557

cond.true.550:                                    ; preds = %cond.end.539
  %382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax551 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %382, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [3 x i32], [3 x i32]* %imax551, i32 0, i64 0
  %383 = load i32, i32* %arrayidx552, align 4
  %384 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin553 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %384, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [3 x i32], [3 x i32]* %imin553, i32 0, i64 0
  %385 = load i32, i32* %arrayidx554, align 4
  %sub555 = sub nsw i32 %383, %385
  %add556 = add nsw i32 %sub555, 1
  br label %cond.end.558

cond.false.557:                                   ; preds = %cond.end.539
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.false.557, %cond.true.550
  %cond559 = phi i32 [ %add556, %cond.true.550 ], [ 0, %cond.false.557 ]
  %mul560 = mul nsw i32 %add542, %cond559
  %add561 = add nsw i32 %sub515, %mul560
  store i32 %add561, i32* %hypre__i2start511, align 4
  %386 = load i32*, i32** %stridef, align 8
  %arrayidx563 = getelementptr inbounds i32, i32* %386, i64 0
  %387 = load i32, i32* %arrayidx563, align 4
  store i32 %387, i32* %hypre__sx1562, align 4
  %388 = load i32*, i32** %stridef, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %388, i64 1
  %389 = load i32, i32* %arrayidx565, align 4
  %390 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax566 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %390, i32 0, i32 1
  %arrayidx567 = getelementptr inbounds [3 x i32], [3 x i32]* %imax566, i32 0, i64 0
  %391 = load i32, i32* %arrayidx567, align 4
  %392 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin568 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %392, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [3 x i32], [3 x i32]* %imin568, i32 0, i64 0
  %393 = load i32, i32* %arrayidx569, align 4
  %sub570 = sub nsw i32 %391, %393
  %add571 = add nsw i32 %sub570, 1
  %cmp572 = icmp slt i32 0, %add571
  br i1 %cmp572, label %cond.true.573, label %cond.false.580

cond.true.573:                                    ; preds = %cond.end.558
  %394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax574 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %394, i32 0, i32 1
  %arrayidx575 = getelementptr inbounds [3 x i32], [3 x i32]* %imax574, i32 0, i64 0
  %395 = load i32, i32* %arrayidx575, align 4
  %396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin576 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %396, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [3 x i32], [3 x i32]* %imin576, i32 0, i64 0
  %397 = load i32, i32* %arrayidx577, align 4
  %sub578 = sub nsw i32 %395, %397
  %add579 = add nsw i32 %sub578, 1
  br label %cond.end.581

cond.false.580:                                   ; preds = %cond.end.558
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.false.580, %cond.true.573
  %cond582 = phi i32 [ %add579, %cond.true.573 ], [ 0, %cond.false.580 ]
  %mul583 = mul nsw i32 %389, %cond582
  store i32 %mul583, i32* %hypre__sy1564, align 4
  %398 = load i32*, i32** %stridef, align 8
  %arrayidx585 = getelementptr inbounds i32, i32* %398, i64 2
  %399 = load i32, i32* %arrayidx585, align 4
  %400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax586 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %400, i32 0, i32 1
  %arrayidx587 = getelementptr inbounds [3 x i32], [3 x i32]* %imax586, i32 0, i64 0
  %401 = load i32, i32* %arrayidx587, align 4
  %402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %402, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [3 x i32], [3 x i32]* %imin588, i32 0, i64 0
  %403 = load i32, i32* %arrayidx589, align 4
  %sub590 = sub nsw i32 %401, %403
  %add591 = add nsw i32 %sub590, 1
  %cmp592 = icmp slt i32 0, %add591
  br i1 %cmp592, label %cond.true.593, label %cond.false.600

cond.true.593:                                    ; preds = %cond.end.581
  %404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax594 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %404, i32 0, i32 1
  %arrayidx595 = getelementptr inbounds [3 x i32], [3 x i32]* %imax594, i32 0, i64 0
  %405 = load i32, i32* %arrayidx595, align 4
  %406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin596 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %406, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [3 x i32], [3 x i32]* %imin596, i32 0, i64 0
  %407 = load i32, i32* %arrayidx597, align 4
  %sub598 = sub nsw i32 %405, %407
  %add599 = add nsw i32 %sub598, 1
  br label %cond.end.601

cond.false.600:                                   ; preds = %cond.end.581
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.600, %cond.true.593
  %cond602 = phi i32 [ %add599, %cond.true.593 ], [ 0, %cond.false.600 ]
  %mul603 = mul nsw i32 %399, %cond602
  %408 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax604 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %408, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [3 x i32], [3 x i32]* %imax604, i32 0, i64 1
  %409 = load i32, i32* %arrayidx605, align 4
  %410 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %410, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x i32], [3 x i32]* %imin606, i32 0, i64 1
  %411 = load i32, i32* %arrayidx607, align 4
  %sub608 = sub nsw i32 %409, %411
  %add609 = add nsw i32 %sub608, 1
  %cmp610 = icmp slt i32 0, %add609
  br i1 %cmp610, label %cond.true.611, label %cond.false.618

cond.true.611:                                    ; preds = %cond.end.601
  %412 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax612 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %412, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [3 x i32], [3 x i32]* %imax612, i32 0, i64 1
  %413 = load i32, i32* %arrayidx613, align 4
  %414 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %414, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [3 x i32], [3 x i32]* %imin614, i32 0, i64 1
  %415 = load i32, i32* %arrayidx615, align 4
  %sub616 = sub nsw i32 %413, %415
  %add617 = add nsw i32 %sub616, 1
  br label %cond.end.619

cond.false.618:                                   ; preds = %cond.end.601
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.618, %cond.true.611
  %cond620 = phi i32 [ %add617, %cond.true.611 ], [ 0, %cond.false.618 ]
  %mul621 = mul nsw i32 %mul603, %cond620
  store i32 %mul621, i32* %hypre__sz1584, align 4
  %arrayidx623 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %416 = load i32, i32* %arrayidx623, align 4
  store i32 %416, i32* %hypre__sx2622, align 4
  %arrayidx625 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %417 = load i32, i32* %arrayidx625, align 4
  %418 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax626 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %418, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [3 x i32], [3 x i32]* %imax626, i32 0, i64 0
  %419 = load i32, i32* %arrayidx627, align 4
  %420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin628 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %420, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [3 x i32], [3 x i32]* %imin628, i32 0, i64 0
  %421 = load i32, i32* %arrayidx629, align 4
  %sub630 = sub nsw i32 %419, %421
  %add631 = add nsw i32 %sub630, 1
  %cmp632 = icmp slt i32 0, %add631
  br i1 %cmp632, label %cond.true.633, label %cond.false.640

cond.true.633:                                    ; preds = %cond.end.619
  %422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax634 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %422, i32 0, i32 1
  %arrayidx635 = getelementptr inbounds [3 x i32], [3 x i32]* %imax634, i32 0, i64 0
  %423 = load i32, i32* %arrayidx635, align 4
  %424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin636 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %424, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [3 x i32], [3 x i32]* %imin636, i32 0, i64 0
  %425 = load i32, i32* %arrayidx637, align 4
  %sub638 = sub nsw i32 %423, %425
  %add639 = add nsw i32 %sub638, 1
  br label %cond.end.641

cond.false.640:                                   ; preds = %cond.end.619
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.false.640, %cond.true.633
  %cond642 = phi i32 [ %add639, %cond.true.633 ], [ 0, %cond.false.640 ]
  %mul643 = mul nsw i32 %417, %cond642
  store i32 %mul643, i32* %hypre__sy2624, align 4
  %arrayidx645 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %426 = load i32, i32* %arrayidx645, align 4
  %427 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %427, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [3 x i32], [3 x i32]* %imax646, i32 0, i64 0
  %428 = load i32, i32* %arrayidx647, align 4
  %429 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin648 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %429, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [3 x i32], [3 x i32]* %imin648, i32 0, i64 0
  %430 = load i32, i32* %arrayidx649, align 4
  %sub650 = sub nsw i32 %428, %430
  %add651 = add nsw i32 %sub650, 1
  %cmp652 = icmp slt i32 0, %add651
  br i1 %cmp652, label %cond.true.653, label %cond.false.660

cond.true.653:                                    ; preds = %cond.end.641
  %431 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax654 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %431, i32 0, i32 1
  %arrayidx655 = getelementptr inbounds [3 x i32], [3 x i32]* %imax654, i32 0, i64 0
  %432 = load i32, i32* %arrayidx655, align 4
  %433 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin656 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %433, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [3 x i32], [3 x i32]* %imin656, i32 0, i64 0
  %434 = load i32, i32* %arrayidx657, align 4
  %sub658 = sub nsw i32 %432, %434
  %add659 = add nsw i32 %sub658, 1
  br label %cond.end.661

cond.false.660:                                   ; preds = %cond.end.641
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.false.660, %cond.true.653
  %cond662 = phi i32 [ %add659, %cond.true.653 ], [ 0, %cond.false.660 ]
  %mul663 = mul nsw i32 %426, %cond662
  %435 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax664 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %435, i32 0, i32 1
  %arrayidx665 = getelementptr inbounds [3 x i32], [3 x i32]* %imax664, i32 0, i64 1
  %436 = load i32, i32* %arrayidx665, align 4
  %437 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin666 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %437, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [3 x i32], [3 x i32]* %imin666, i32 0, i64 1
  %438 = load i32, i32* %arrayidx667, align 4
  %sub668 = sub nsw i32 %436, %438
  %add669 = add nsw i32 %sub668, 1
  %cmp670 = icmp slt i32 0, %add669
  br i1 %cmp670, label %cond.true.671, label %cond.false.678

cond.true.671:                                    ; preds = %cond.end.661
  %439 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %439, i32 0, i32 1
  %arrayidx673 = getelementptr inbounds [3 x i32], [3 x i32]* %imax672, i32 0, i64 1
  %440 = load i32, i32* %arrayidx673, align 4
  %441 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin674 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %441, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [3 x i32], [3 x i32]* %imin674, i32 0, i64 1
  %442 = load i32, i32* %arrayidx675, align 4
  %sub676 = sub nsw i32 %440, %442
  %add677 = add nsw i32 %sub676, 1
  br label %cond.end.679

cond.false.678:                                   ; preds = %cond.end.661
  br label %cond.end.679

cond.end.679:                                     ; preds = %cond.false.678, %cond.true.671
  %cond680 = phi i32 [ %add677, %cond.true.671 ], [ 0, %cond.false.678 ]
  %mul681 = mul nsw i32 %mul663, %cond680
  store i32 %mul681, i32* %hypre__sz2644, align 4
  %arrayidx683 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %443 = load i32, i32* %arrayidx683, align 4
  store i32 %443, i32* %hypre__nx682, align 4
  %arrayidx685 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %444 = load i32, i32* %arrayidx685, align 4
  store i32 %444, i32* %hypre__ny684, align 4
  %arrayidx687 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %445 = load i32, i32* %arrayidx687, align 4
  store i32 %445, i32* %hypre__nz686, align 4
  %446 = load i32, i32* %hypre__nx682, align 4
  store i32 %446, i32* %hypre__mx688, align 4
  %447 = load i32, i32* %hypre__ny684, align 4
  store i32 %447, i32* %hypre__my689, align 4
  %448 = load i32, i32* %hypre__nz686, align 4
  store i32 %448, i32* %hypre__mz690, align 4
  store i32 0, i32* %hypre__dir691, align 4
  %449 = load i32, i32* %hypre__nx682, align 4
  store i32 %449, i32* %hypre__max692, align 4
  %450 = load i32, i32* %hypre__ny684, align 4
  %451 = load i32, i32* %hypre__max692, align 4
  %cmp697 = icmp sgt i32 %450, %451
  br i1 %cmp697, label %if.then.698, label %if.end.699

if.then.698:                                      ; preds = %cond.end.679
  store i32 1, i32* %hypre__dir691, align 4
  %452 = load i32, i32* %hypre__ny684, align 4
  store i32 %452, i32* %hypre__max692, align 4
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.698, %cond.end.679
  %453 = load i32, i32* %hypre__nz686, align 4
  %454 = load i32, i32* %hypre__max692, align 4
  %cmp700 = icmp sgt i32 %453, %454
  br i1 %cmp700, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %if.end.699
  store i32 2, i32* %hypre__dir691, align 4
  %455 = load i32, i32* %hypre__nz686, align 4
  store i32 %455, i32* %hypre__max692, align 4
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.701, %if.end.699
  store i32 1, i32* %hypre__num_blocks696, align 4
  %456 = load i32, i32* %hypre__max692, align 4
  %457 = load i32, i32* %hypre__num_blocks696, align 4
  %cmp703 = icmp slt i32 %456, %457
  br i1 %cmp703, label %if.then.704, label %if.end.705

if.then.704:                                      ; preds = %if.end.702
  %458 = load i32, i32* %hypre__max692, align 4
  store i32 %458, i32* %hypre__num_blocks696, align 4
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.704, %if.end.702
  %459 = load i32, i32* %hypre__num_blocks696, align 4
  %cmp706 = icmp sgt i32 %459, 0
  br i1 %cmp706, label %if.then.707, label %if.end.710

if.then.707:                                      ; preds = %if.end.705
  %460 = load i32, i32* %hypre__max692, align 4
  %461 = load i32, i32* %hypre__num_blocks696, align 4
  %div708 = sdiv i32 %460, %461
  store i32 %div708, i32* %hypre__div693, align 4
  %462 = load i32, i32* %hypre__max692, align 4
  %463 = load i32, i32* %hypre__num_blocks696, align 4
  %rem709 = srem i32 %462, %463
  store i32 %rem709, i32* %hypre__mod694, align 4
  br label %if.end.710

if.end.710:                                       ; preds = %if.then.707, %if.end.705
  store i32 0, i32* %hypre__block695, align 4
  br label %for.cond.711

for.cond.711:                                     ; preds = %for.inc.837, %if.end.710
  %464 = load i32, i32* %hypre__block695, align 4
  %465 = load i32, i32* %hypre__num_blocks696, align 4
  %cmp712 = icmp slt i32 %464, %465
  br i1 %cmp712, label %for.body.713, label %for.end.839

for.body.713:                                     ; preds = %for.cond.711
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %466 = load i32, i32* %hypre__mx688, align 4
  store i32 %466, i32* %hypre__nx682, align 4
  %467 = load i32, i32* %hypre__my689, align 4
  store i32 %467, i32* %hypre__ny684, align 4
  %468 = load i32, i32* %hypre__mz690, align 4
  store i32 %468, i32* %hypre__nz686, align 4
  %469 = load i32, i32* %hypre__num_blocks696, align 4
  %cmp714 = icmp sgt i32 %469, 1
  br i1 %cmp714, label %if.then.715, label %if.end.757

if.then.715:                                      ; preds = %for.body.713
  %470 = load i32, i32* %hypre__dir691, align 4
  %cmp716 = icmp eq i32 %470, 0
  br i1 %cmp716, label %if.then.717, label %if.else.728

if.then.717:                                      ; preds = %if.then.715
  %471 = load i32, i32* %hypre__block695, align 4
  %472 = load i32, i32* %hypre__div693, align 4
  %mul718 = mul nsw i32 %471, %472
  %473 = load i32, i32* %hypre__mod694, align 4
  %474 = load i32, i32* %hypre__block695, align 4
  %cmp719 = icmp slt i32 %473, %474
  br i1 %cmp719, label %cond.true.720, label %cond.false.721

cond.true.720:                                    ; preds = %if.then.717
  %475 = load i32, i32* %hypre__mod694, align 4
  br label %cond.end.722

cond.false.721:                                   ; preds = %if.then.717
  %476 = load i32, i32* %hypre__block695, align 4
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.721, %cond.true.720
  %cond723 = phi i32 [ %475, %cond.true.720 ], [ %476, %cond.false.721 ]
  %add724 = add nsw i32 %mul718, %cond723
  store i32 %add724, i32* %loopi, align 4
  %477 = load i32, i32* %hypre__div693, align 4
  %478 = load i32, i32* %hypre__mod694, align 4
  %479 = load i32, i32* %hypre__block695, align 4
  %cmp725 = icmp sgt i32 %478, %479
  %cond726 = select i1 %cmp725, i32 1, i32 0
  %add727 = add nsw i32 %477, %cond726
  store i32 %add727, i32* %hypre__nx682, align 4
  br label %if.end.756

if.else.728:                                      ; preds = %if.then.715
  %480 = load i32, i32* %hypre__dir691, align 4
  %cmp729 = icmp eq i32 %480, 1
  br i1 %cmp729, label %if.then.730, label %if.else.741

if.then.730:                                      ; preds = %if.else.728
  %481 = load i32, i32* %hypre__block695, align 4
  %482 = load i32, i32* %hypre__div693, align 4
  %mul731 = mul nsw i32 %481, %482
  %483 = load i32, i32* %hypre__mod694, align 4
  %484 = load i32, i32* %hypre__block695, align 4
  %cmp732 = icmp slt i32 %483, %484
  br i1 %cmp732, label %cond.true.733, label %cond.false.734

cond.true.733:                                    ; preds = %if.then.730
  %485 = load i32, i32* %hypre__mod694, align 4
  br label %cond.end.735

cond.false.734:                                   ; preds = %if.then.730
  %486 = load i32, i32* %hypre__block695, align 4
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.734, %cond.true.733
  %cond736 = phi i32 [ %485, %cond.true.733 ], [ %486, %cond.false.734 ]
  %add737 = add nsw i32 %mul731, %cond736
  store i32 %add737, i32* %loopj, align 4
  %487 = load i32, i32* %hypre__div693, align 4
  %488 = load i32, i32* %hypre__mod694, align 4
  %489 = load i32, i32* %hypre__block695, align 4
  %cmp738 = icmp sgt i32 %488, %489
  %cond739 = select i1 %cmp738, i32 1, i32 0
  %add740 = add nsw i32 %487, %cond739
  store i32 %add740, i32* %hypre__ny684, align 4
  br label %if.end.755

if.else.741:                                      ; preds = %if.else.728
  %490 = load i32, i32* %hypre__dir691, align 4
  %cmp742 = icmp eq i32 %490, 2
  br i1 %cmp742, label %if.then.743, label %if.end.754

if.then.743:                                      ; preds = %if.else.741
  %491 = load i32, i32* %hypre__block695, align 4
  %492 = load i32, i32* %hypre__div693, align 4
  %mul744 = mul nsw i32 %491, %492
  %493 = load i32, i32* %hypre__mod694, align 4
  %494 = load i32, i32* %hypre__block695, align 4
  %cmp745 = icmp slt i32 %493, %494
  br i1 %cmp745, label %cond.true.746, label %cond.false.747

cond.true.746:                                    ; preds = %if.then.743
  %495 = load i32, i32* %hypre__mod694, align 4
  br label %cond.end.748

cond.false.747:                                   ; preds = %if.then.743
  %496 = load i32, i32* %hypre__block695, align 4
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.false.747, %cond.true.746
  %cond749 = phi i32 [ %495, %cond.true.746 ], [ %496, %cond.false.747 ]
  %add750 = add nsw i32 %mul744, %cond749
  store i32 %add750, i32* %loopk, align 4
  %497 = load i32, i32* %hypre__div693, align 4
  %498 = load i32, i32* %hypre__mod694, align 4
  %499 = load i32, i32* %hypre__block695, align 4
  %cmp751 = icmp sgt i32 %498, %499
  %cond752 = select i1 %cmp751, i32 1, i32 0
  %add753 = add nsw i32 %497, %cond752
  store i32 %add753, i32* %hypre__nz686, align 4
  br label %if.end.754

if.end.754:                                       ; preds = %cond.end.748, %if.else.741
  br label %if.end.755

if.end.755:                                       ; preds = %if.end.754, %cond.end.735
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %cond.end.722
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756, %for.body.713
  %500 = load i32, i32* %hypre__i1start460, align 4
  %501 = load i32, i32* %loopi, align 4
  %502 = load i32, i32* %hypre__sx1562, align 4
  %mul758 = mul nsw i32 %501, %502
  %add759 = add nsw i32 %500, %mul758
  %503 = load i32, i32* %loopj, align 4
  %504 = load i32, i32* %hypre__sy1564, align 4
  %mul760 = mul nsw i32 %503, %504
  %add761 = add nsw i32 %add759, %mul760
  %505 = load i32, i32* %loopk, align 4
  %506 = load i32, i32* %hypre__sz1584, align 4
  %mul762 = mul nsw i32 %505, %506
  %add763 = add nsw i32 %add761, %mul762
  store i32 %add763, i32* %iA, align 4
  %507 = load i32, i32* %hypre__i2start511, align 4
  %508 = load i32, i32* %loopi, align 4
  %509 = load i32, i32* %hypre__sx2622, align 4
  %mul764 = mul nsw i32 %508, %509
  %add765 = add nsw i32 %507, %mul764
  %510 = load i32, i32* %loopj, align 4
  %511 = load i32, i32* %hypre__sy2624, align 4
  %mul766 = mul nsw i32 %510, %511
  %add767 = add nsw i32 %add765, %mul766
  %512 = load i32, i32* %loopk, align 4
  %513 = load i32, i32* %hypre__sz2644, align 4
  %mul768 = mul nsw i32 %512, %513
  %add769 = add nsw i32 %add767, %mul768
  store i32 %add769, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.770

for.cond.770:                                     ; preds = %for.inc.834, %if.end.757
  %514 = load i32, i32* %loopk, align 4
  %515 = load i32, i32* %hypre__nz686, align 4
  %cmp771 = icmp slt i32 %514, %515
  br i1 %cmp771, label %for.body.772, label %for.end.836

for.body.772:                                     ; preds = %for.cond.770
  store i32 0, i32* %loopj, align 4
  br label %for.cond.773

for.cond.773:                                     ; preds = %for.inc.825, %for.body.772
  %516 = load i32, i32* %loopj, align 4
  %517 = load i32, i32* %hypre__ny684, align 4
  %cmp774 = icmp slt i32 %516, %517
  br i1 %cmp774, label %for.body.775, label %for.end.827

for.body.775:                                     ; preds = %for.cond.773
  store i32 0, i32* %loopi, align 4
  br label %for.cond.776

for.cond.776:                                     ; preds = %for.inc.816, %for.body.775
  %518 = load i32, i32* %loopi, align 4
  %519 = load i32, i32* %hypre__nx682, align 4
  %cmp777 = icmp slt i32 %518, %519
  br i1 %cmp777, label %for.body.778, label %for.end.818

for.body.778:                                     ; preds = %for.cond.776
  %520 = load i32, i32* %iA, align 4
  %521 = load i32, i32* %xOffsetA, align 4
  %sub779 = sub nsw i32 %520, %521
  store i32 %sub779, i32* %iAm1, align 4
  %522 = load i32, i32* %iA, align 4
  %523 = load i32, i32* %xOffsetA, align 4
  %add780 = add nsw i32 %522, %523
  store i32 %add780, i32* %iAp1, align 4
  %524 = load i32, i32* %iA, align 4
  %idxprom781 = sext i32 %524 to i64
  %525 = load double*, double** %a_cw, align 8
  %arrayidx782 = getelementptr inbounds double, double* %525, i64 %idxprom781
  %526 = load double, double* %arrayidx782, align 8
  %sub783 = fsub double -0.000000e+00, %526
  %527 = load i32, i32* %iAm1, align 4
  %idxprom784 = sext i32 %527 to i64
  %528 = load double*, double** %a_cw, align 8
  %arrayidx785 = getelementptr inbounds double, double* %528, i64 %idxprom784
  %529 = load double, double* %arrayidx785, align 8
  %mul786 = fmul double %sub783, %529
  %530 = load i32, i32* %iAm1, align 4
  %idxprom787 = sext i32 %530 to i64
  %531 = load double*, double** %a_cc, align 8
  %arrayidx788 = getelementptr inbounds double, double* %531, i64 %idxprom787
  %532 = load double, double* %arrayidx788, align 8
  %div789 = fdiv double %mul786, %532
  %533 = load i32, i32* %iAc, align 4
  %idxprom790 = sext i32 %533 to i64
  %534 = load double*, double** %ac_cw, align 8
  %arrayidx791 = getelementptr inbounds double, double* %534, i64 %idxprom790
  store double %div789, double* %arrayidx791, align 8
  %535 = load i32, i32* %iA, align 4
  %idxprom792 = sext i32 %535 to i64
  %536 = load double*, double** %a_cc, align 8
  %arrayidx793 = getelementptr inbounds double, double* %536, i64 %idxprom792
  %537 = load double, double* %arrayidx793, align 8
  %538 = load i32, i32* %iA, align 4
  %idxprom794 = sext i32 %538 to i64
  %539 = load double*, double** %a_cw, align 8
  %arrayidx795 = getelementptr inbounds double, double* %539, i64 %idxprom794
  %540 = load double, double* %arrayidx795, align 8
  %541 = load i32, i32* %iAm1, align 4
  %idxprom796 = sext i32 %541 to i64
  %542 = load double*, double** %a_ce, align 8
  %arrayidx797 = getelementptr inbounds double, double* %542, i64 %idxprom796
  %543 = load double, double* %arrayidx797, align 8
  %mul798 = fmul double %540, %543
  %544 = load i32, i32* %iAm1, align 4
  %idxprom799 = sext i32 %544 to i64
  %545 = load double*, double** %a_cc, align 8
  %arrayidx800 = getelementptr inbounds double, double* %545, i64 %idxprom799
  %546 = load double, double* %arrayidx800, align 8
  %div801 = fdiv double %mul798, %546
  %sub802 = fsub double %537, %div801
  %547 = load i32, i32* %iA, align 4
  %idxprom803 = sext i32 %547 to i64
  %548 = load double*, double** %a_ce, align 8
  %arrayidx804 = getelementptr inbounds double, double* %548, i64 %idxprom803
  %549 = load double, double* %arrayidx804, align 8
  %550 = load i32, i32* %iAp1, align 4
  %idxprom805 = sext i32 %550 to i64
  %551 = load double*, double** %a_cw, align 8
  %arrayidx806 = getelementptr inbounds double, double* %551, i64 %idxprom805
  %552 = load double, double* %arrayidx806, align 8
  %mul807 = fmul double %549, %552
  %553 = load i32, i32* %iAp1, align 4
  %idxprom808 = sext i32 %553 to i64
  %554 = load double*, double** %a_cc, align 8
  %arrayidx809 = getelementptr inbounds double, double* %554, i64 %idxprom808
  %555 = load double, double* %arrayidx809, align 8
  %div810 = fdiv double %mul807, %555
  %sub811 = fsub double %sub802, %div810
  %556 = load i32, i32* %iAc, align 4
  %idxprom812 = sext i32 %556 to i64
  %557 = load double*, double** %ac_cc, align 8
  %arrayidx813 = getelementptr inbounds double, double* %557, i64 %idxprom812
  store double %sub811, double* %arrayidx813, align 8
  %558 = load i32, i32* %hypre__sx1562, align 4
  %559 = load i32, i32* %iA, align 4
  %add814 = add nsw i32 %559, %558
  store i32 %add814, i32* %iA, align 4
  %560 = load i32, i32* %hypre__sx2622, align 4
  %561 = load i32, i32* %iAc, align 4
  %add815 = add nsw i32 %561, %560
  store i32 %add815, i32* %iAc, align 4
  br label %for.inc.816

for.inc.816:                                      ; preds = %for.body.778
  %562 = load i32, i32* %loopi, align 4
  %inc817 = add nsw i32 %562, 1
  store i32 %inc817, i32* %loopi, align 4
  br label %for.cond.776

for.end.818:                                      ; preds = %for.cond.776
  %563 = load i32, i32* %hypre__sy1564, align 4
  %564 = load i32, i32* %hypre__nx682, align 4
  %565 = load i32, i32* %hypre__sx1562, align 4
  %mul819 = mul nsw i32 %564, %565
  %sub820 = sub nsw i32 %563, %mul819
  %566 = load i32, i32* %iA, align 4
  %add821 = add nsw i32 %566, %sub820
  store i32 %add821, i32* %iA, align 4
  %567 = load i32, i32* %hypre__sy2624, align 4
  %568 = load i32, i32* %hypre__nx682, align 4
  %569 = load i32, i32* %hypre__sx2622, align 4
  %mul822 = mul nsw i32 %568, %569
  %sub823 = sub nsw i32 %567, %mul822
  %570 = load i32, i32* %iAc, align 4
  %add824 = add nsw i32 %570, %sub823
  store i32 %add824, i32* %iAc, align 4
  br label %for.inc.825

for.inc.825:                                      ; preds = %for.end.818
  %571 = load i32, i32* %loopj, align 4
  %inc826 = add nsw i32 %571, 1
  store i32 %inc826, i32* %loopj, align 4
  br label %for.cond.773

for.end.827:                                      ; preds = %for.cond.773
  %572 = load i32, i32* %hypre__sz1584, align 4
  %573 = load i32, i32* %hypre__ny684, align 4
  %574 = load i32, i32* %hypre__sy1564, align 4
  %mul828 = mul nsw i32 %573, %574
  %sub829 = sub nsw i32 %572, %mul828
  %575 = load i32, i32* %iA, align 4
  %add830 = add nsw i32 %575, %sub829
  store i32 %add830, i32* %iA, align 4
  %576 = load i32, i32* %hypre__sz2644, align 4
  %577 = load i32, i32* %hypre__ny684, align 4
  %578 = load i32, i32* %hypre__sy2624, align 4
  %mul831 = mul nsw i32 %577, %578
  %sub832 = sub nsw i32 %576, %mul831
  %579 = load i32, i32* %iAc, align 4
  %add833 = add nsw i32 %579, %sub832
  store i32 %add833, i32* %iAc, align 4
  br label %for.inc.834

for.inc.834:                                      ; preds = %for.end.827
  %580 = load i32, i32* %loopk, align 4
  %inc835 = add nsw i32 %580, 1
  store i32 %inc835, i32* %loopk, align 4
  br label %for.cond.770

for.end.836:                                      ; preds = %for.cond.770
  br label %for.inc.837

for.inc.837:                                      ; preds = %for.end.836
  %581 = load i32, i32* %hypre__block695, align 4
  %inc838 = add nsw i32 %581, 1
  store i32 %inc838, i32* %hypre__block695, align 4
  br label %for.cond.711

for.end.839:                                      ; preds = %for.cond.711
  br label %if.end.840

if.end.840:                                       ; preds = %for.end.839, %for.end.456
  br label %for.inc.841

for.inc.841:                                      ; preds = %if.end.840
  %582 = load i32, i32* %ci, align 4
  %inc842 = add nsw i32 %582, 1
  store i32 %inc842, i32* %ci, align 4
  br label %for.cond

for.end.843:                                      ; preds = %for.cond
  %583 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %call844 = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %583)
  %584 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %584, i32 0, i32 9
  %arrayidx845 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 0
  %585 = load i32, i32* %arrayidx845, align 4
  %cmp846 = icmp eq i32 %585, 1
  br i1 %cmp846, label %if.then.847, label %if.end.1354

if.then.847:                                      ; preds = %for.end.843
  store i32 0, i32* %ci, align 4
  br label %for.cond.848

for.cond.848:                                     ; preds = %for.inc.1351, %if.then.847
  %586 = load i32, i32* %ci, align 4
  %587 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size849 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %587, i32 0, i32 1
  %588 = load i32, i32* %size849, align 4
  %cmp850 = icmp slt i32 %586, %588
  br i1 %cmp850, label %for.body.851, label %for.end.1353

for.body.851:                                     ; preds = %for.cond.848
  %589 = load i32, i32* %ci, align 4
  %idxprom852 = sext i32 %589 to i64
  %590 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes853 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %590, i32 0, i32 0
  %591 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes853, align 8
  %arrayidx854 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %591, i64 %idxprom852
  store %struct.hypre_Box_struct* %arrayidx854, %struct.hypre_Box_struct** %cgrid_box, align 8
  %592 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin855 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %592, i32 0, i32 0
  %arraydecay856 = getelementptr inbounds [3 x i32], [3 x i32]* %imin855, i32 0, i32 0
  store i32* %arraydecay856, i32** %cstart, align 8
  %593 = load i32, i32* %ci, align 4
  %idxprom857 = sext i32 %593 to i64
  %594 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %data_space858 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %594, i32 0, i32 5
  %595 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space858, align 8
  %boxes859 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %595, i32 0, i32 0
  %596 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes859, align 8
  %arrayidx860 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %596, i64 %idxprom857
  store %struct.hypre_Box_struct* %arrayidx860, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %arrayidx861 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx861, align 4
  %arrayidx862 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx862, align 4
  %arrayidx863 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx863, align 4
  %597 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %598 = load i32, i32* %ci, align 4
  %arraydecay864 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call865 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %597, i32 %598, i32* %arraydecay864)
  store double* %call865, double** %ac_cc, align 8
  %arrayidx866 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx866, align 4
  %arrayidx867 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx867, align 4
  %arrayidx868 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx868, align 4
  %599 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %600 = load i32, i32* %ci, align 4
  %arraydecay869 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call870 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %599, i32 %600, i32* %arraydecay869)
  store double* %call870, double** %ac_cw, align 8
  %601 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric871 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %601, i32 0, i32 10
  %602 = load i32, i32* %symmetric871, align 4
  %tobool872 = icmp ne i32 %602, 0
  br i1 %tobool872, label %if.end.879, label %if.then.873

if.then.873:                                      ; preds = %for.body.851
  %arrayidx874 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx874, align 4
  %arrayidx875 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx875, align 4
  %arrayidx876 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx876, align 4
  %603 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %604 = load i32, i32* %ci, align 4
  %arraydecay877 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call878 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %603, i32 %604, i32* %arraydecay877)
  store double* %call878, double** %ac_ce, align 8
  br label %if.end.879

if.end.879:                                       ; preds = %if.then.873, %for.body.851
  %605 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric880 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %605, i32 0, i32 10
  %606 = load i32, i32* %symmetric880, align 4
  %tobool881 = icmp ne i32 %606, 0
  br i1 %tobool881, label %if.else.1118, label %if.then.882

if.then.882:                                      ; preds = %if.end.879
  %607 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay883 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call884 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %607, i32* %arraydecay883)
  %608 = load i32*, i32** %cstart, align 8
  %arrayidx886 = getelementptr inbounds i32, i32* %608, i64 0
  %609 = load i32, i32* %arrayidx886, align 4
  %610 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin887 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %610, i32 0, i32 0
  %arrayidx888 = getelementptr inbounds [3 x i32], [3 x i32]* %imin887, i32 0, i64 0
  %611 = load i32, i32* %arrayidx888, align 4
  %sub889 = sub nsw i32 %609, %611
  %612 = load i32*, i32** %cstart, align 8
  %arrayidx890 = getelementptr inbounds i32, i32* %612, i64 1
  %613 = load i32, i32* %arrayidx890, align 4
  %614 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin891 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %614, i32 0, i32 0
  %arrayidx892 = getelementptr inbounds [3 x i32], [3 x i32]* %imin891, i32 0, i64 1
  %615 = load i32, i32* %arrayidx892, align 4
  %sub893 = sub nsw i32 %613, %615
  %616 = load i32*, i32** %cstart, align 8
  %arrayidx894 = getelementptr inbounds i32, i32* %616, i64 2
  %617 = load i32, i32* %arrayidx894, align 4
  %618 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin895 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %618, i32 0, i32 0
  %arrayidx896 = getelementptr inbounds [3 x i32], [3 x i32]* %imin895, i32 0, i64 2
  %619 = load i32, i32* %arrayidx896, align 4
  %sub897 = sub nsw i32 %617, %619
  %620 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax898 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %620, i32 0, i32 1
  %arrayidx899 = getelementptr inbounds [3 x i32], [3 x i32]* %imax898, i32 0, i64 1
  %621 = load i32, i32* %arrayidx899, align 4
  %622 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin900 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %622, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [3 x i32], [3 x i32]* %imin900, i32 0, i64 1
  %623 = load i32, i32* %arrayidx901, align 4
  %sub902 = sub nsw i32 %621, %623
  %add903 = add nsw i32 %sub902, 1
  %cmp904 = icmp slt i32 0, %add903
  br i1 %cmp904, label %cond.true.905, label %cond.false.912

cond.true.905:                                    ; preds = %if.then.882
  %624 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax906 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %624, i32 0, i32 1
  %arrayidx907 = getelementptr inbounds [3 x i32], [3 x i32]* %imax906, i32 0, i64 1
  %625 = load i32, i32* %arrayidx907, align 4
  %626 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin908 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %626, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [3 x i32], [3 x i32]* %imin908, i32 0, i64 1
  %627 = load i32, i32* %arrayidx909, align 4
  %sub910 = sub nsw i32 %625, %627
  %add911 = add nsw i32 %sub910, 1
  br label %cond.end.913

cond.false.912:                                   ; preds = %if.then.882
  br label %cond.end.913

cond.end.913:                                     ; preds = %cond.false.912, %cond.true.905
  %cond914 = phi i32 [ %add911, %cond.true.905 ], [ 0, %cond.false.912 ]
  %mul915 = mul nsw i32 %sub897, %cond914
  %add916 = add nsw i32 %sub893, %mul915
  %628 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax917 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %628, i32 0, i32 1
  %arrayidx918 = getelementptr inbounds [3 x i32], [3 x i32]* %imax917, i32 0, i64 0
  %629 = load i32, i32* %arrayidx918, align 4
  %630 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin919 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %630, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [3 x i32], [3 x i32]* %imin919, i32 0, i64 0
  %631 = load i32, i32* %arrayidx920, align 4
  %sub921 = sub nsw i32 %629, %631
  %add922 = add nsw i32 %sub921, 1
  %cmp923 = icmp slt i32 0, %add922
  br i1 %cmp923, label %cond.true.924, label %cond.false.931

cond.true.924:                                    ; preds = %cond.end.913
  %632 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax925 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %632, i32 0, i32 1
  %arrayidx926 = getelementptr inbounds [3 x i32], [3 x i32]* %imax925, i32 0, i64 0
  %633 = load i32, i32* %arrayidx926, align 4
  %634 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin927 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %634, i32 0, i32 0
  %arrayidx928 = getelementptr inbounds [3 x i32], [3 x i32]* %imin927, i32 0, i64 0
  %635 = load i32, i32* %arrayidx928, align 4
  %sub929 = sub nsw i32 %633, %635
  %add930 = add nsw i32 %sub929, 1
  br label %cond.end.932

cond.false.931:                                   ; preds = %cond.end.913
  br label %cond.end.932

cond.end.932:                                     ; preds = %cond.false.931, %cond.true.924
  %cond933 = phi i32 [ %add930, %cond.true.924 ], [ 0, %cond.false.931 ]
  %mul934 = mul nsw i32 %add916, %cond933
  %add935 = add nsw i32 %sub889, %mul934
  store i32 %add935, i32* %hypre__i1start885, align 4
  %arrayidx937 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %636 = load i32, i32* %arrayidx937, align 4
  store i32 %636, i32* %hypre__sx1936, align 4
  %arrayidx939 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %637 = load i32, i32* %arrayidx939, align 4
  %638 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax940 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %638, i32 0, i32 1
  %arrayidx941 = getelementptr inbounds [3 x i32], [3 x i32]* %imax940, i32 0, i64 0
  %639 = load i32, i32* %arrayidx941, align 4
  %640 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin942 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %640, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [3 x i32], [3 x i32]* %imin942, i32 0, i64 0
  %641 = load i32, i32* %arrayidx943, align 4
  %sub944 = sub nsw i32 %639, %641
  %add945 = add nsw i32 %sub944, 1
  %cmp946 = icmp slt i32 0, %add945
  br i1 %cmp946, label %cond.true.947, label %cond.false.954

cond.true.947:                                    ; preds = %cond.end.932
  %642 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax948 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %642, i32 0, i32 1
  %arrayidx949 = getelementptr inbounds [3 x i32], [3 x i32]* %imax948, i32 0, i64 0
  %643 = load i32, i32* %arrayidx949, align 4
  %644 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin950 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %644, i32 0, i32 0
  %arrayidx951 = getelementptr inbounds [3 x i32], [3 x i32]* %imin950, i32 0, i64 0
  %645 = load i32, i32* %arrayidx951, align 4
  %sub952 = sub nsw i32 %643, %645
  %add953 = add nsw i32 %sub952, 1
  br label %cond.end.955

cond.false.954:                                   ; preds = %cond.end.932
  br label %cond.end.955

cond.end.955:                                     ; preds = %cond.false.954, %cond.true.947
  %cond956 = phi i32 [ %add953, %cond.true.947 ], [ 0, %cond.false.954 ]
  %mul957 = mul nsw i32 %637, %cond956
  store i32 %mul957, i32* %hypre__sy1938, align 4
  %arrayidx959 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %646 = load i32, i32* %arrayidx959, align 4
  %647 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax960 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %647, i32 0, i32 1
  %arrayidx961 = getelementptr inbounds [3 x i32], [3 x i32]* %imax960, i32 0, i64 0
  %648 = load i32, i32* %arrayidx961, align 4
  %649 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin962 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %649, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [3 x i32], [3 x i32]* %imin962, i32 0, i64 0
  %650 = load i32, i32* %arrayidx963, align 4
  %sub964 = sub nsw i32 %648, %650
  %add965 = add nsw i32 %sub964, 1
  %cmp966 = icmp slt i32 0, %add965
  br i1 %cmp966, label %cond.true.967, label %cond.false.974

cond.true.967:                                    ; preds = %cond.end.955
  %651 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax968 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %651, i32 0, i32 1
  %arrayidx969 = getelementptr inbounds [3 x i32], [3 x i32]* %imax968, i32 0, i64 0
  %652 = load i32, i32* %arrayidx969, align 4
  %653 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin970 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %653, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [3 x i32], [3 x i32]* %imin970, i32 0, i64 0
  %654 = load i32, i32* %arrayidx971, align 4
  %sub972 = sub nsw i32 %652, %654
  %add973 = add nsw i32 %sub972, 1
  br label %cond.end.975

cond.false.974:                                   ; preds = %cond.end.955
  br label %cond.end.975

cond.end.975:                                     ; preds = %cond.false.974, %cond.true.967
  %cond976 = phi i32 [ %add973, %cond.true.967 ], [ 0, %cond.false.974 ]
  %mul977 = mul nsw i32 %646, %cond976
  %655 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax978 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %655, i32 0, i32 1
  %arrayidx979 = getelementptr inbounds [3 x i32], [3 x i32]* %imax978, i32 0, i64 1
  %656 = load i32, i32* %arrayidx979, align 4
  %657 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin980 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %657, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [3 x i32], [3 x i32]* %imin980, i32 0, i64 1
  %658 = load i32, i32* %arrayidx981, align 4
  %sub982 = sub nsw i32 %656, %658
  %add983 = add nsw i32 %sub982, 1
  %cmp984 = icmp slt i32 0, %add983
  br i1 %cmp984, label %cond.true.985, label %cond.false.992

cond.true.985:                                    ; preds = %cond.end.975
  %659 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax986 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %659, i32 0, i32 1
  %arrayidx987 = getelementptr inbounds [3 x i32], [3 x i32]* %imax986, i32 0, i64 1
  %660 = load i32, i32* %arrayidx987, align 4
  %661 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin988 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %661, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [3 x i32], [3 x i32]* %imin988, i32 0, i64 1
  %662 = load i32, i32* %arrayidx989, align 4
  %sub990 = sub nsw i32 %660, %662
  %add991 = add nsw i32 %sub990, 1
  br label %cond.end.993

cond.false.992:                                   ; preds = %cond.end.975
  br label %cond.end.993

cond.end.993:                                     ; preds = %cond.false.992, %cond.true.985
  %cond994 = phi i32 [ %add991, %cond.true.985 ], [ 0, %cond.false.992 ]
  %mul995 = mul nsw i32 %mul977, %cond994
  store i32 %mul995, i32* %hypre__sz1958, align 4
  %arrayidx997 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %663 = load i32, i32* %arrayidx997, align 4
  store i32 %663, i32* %hypre__nx996, align 4
  %arrayidx999 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %664 = load i32, i32* %arrayidx999, align 4
  store i32 %664, i32* %hypre__ny998, align 4
  %arrayidx1001 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %665 = load i32, i32* %arrayidx1001, align 4
  store i32 %665, i32* %hypre__nz1000, align 4
  %666 = load i32, i32* %hypre__nx996, align 4
  store i32 %666, i32* %hypre__mx1002, align 4
  %667 = load i32, i32* %hypre__ny998, align 4
  store i32 %667, i32* %hypre__my1003, align 4
  %668 = load i32, i32* %hypre__nz1000, align 4
  store i32 %668, i32* %hypre__mz1004, align 4
  store i32 0, i32* %hypre__dir1005, align 4
  %669 = load i32, i32* %hypre__nx996, align 4
  store i32 %669, i32* %hypre__max1006, align 4
  %670 = load i32, i32* %hypre__ny998, align 4
  %671 = load i32, i32* %hypre__max1006, align 4
  %cmp1011 = icmp sgt i32 %670, %671
  br i1 %cmp1011, label %if.then.1012, label %if.end.1013

if.then.1012:                                     ; preds = %cond.end.993
  store i32 1, i32* %hypre__dir1005, align 4
  %672 = load i32, i32* %hypre__ny998, align 4
  store i32 %672, i32* %hypre__max1006, align 4
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.then.1012, %cond.end.993
  %673 = load i32, i32* %hypre__nz1000, align 4
  %674 = load i32, i32* %hypre__max1006, align 4
  %cmp1014 = icmp sgt i32 %673, %674
  br i1 %cmp1014, label %if.then.1015, label %if.end.1016

if.then.1015:                                     ; preds = %if.end.1013
  store i32 2, i32* %hypre__dir1005, align 4
  %675 = load i32, i32* %hypre__nz1000, align 4
  store i32 %675, i32* %hypre__max1006, align 4
  br label %if.end.1016

if.end.1016:                                      ; preds = %if.then.1015, %if.end.1013
  store i32 1, i32* %hypre__num_blocks1010, align 4
  %676 = load i32, i32* %hypre__max1006, align 4
  %677 = load i32, i32* %hypre__num_blocks1010, align 4
  %cmp1017 = icmp slt i32 %676, %677
  br i1 %cmp1017, label %if.then.1018, label %if.end.1019

if.then.1018:                                     ; preds = %if.end.1016
  %678 = load i32, i32* %hypre__max1006, align 4
  store i32 %678, i32* %hypre__num_blocks1010, align 4
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.then.1018, %if.end.1016
  %679 = load i32, i32* %hypre__num_blocks1010, align 4
  %cmp1020 = icmp sgt i32 %679, 0
  br i1 %cmp1020, label %if.then.1021, label %if.end.1024

if.then.1021:                                     ; preds = %if.end.1019
  %680 = load i32, i32* %hypre__max1006, align 4
  %681 = load i32, i32* %hypre__num_blocks1010, align 4
  %div1022 = sdiv i32 %680, %681
  store i32 %div1022, i32* %hypre__div1007, align 4
  %682 = load i32, i32* %hypre__max1006, align 4
  %683 = load i32, i32* %hypre__num_blocks1010, align 4
  %rem1023 = srem i32 %682, %683
  store i32 %rem1023, i32* %hypre__mod1008, align 4
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.then.1021, %if.end.1019
  store i32 0, i32* %hypre__block1009, align 4
  br label %for.cond.1025

for.cond.1025:                                    ; preds = %for.inc.1115, %if.end.1024
  %684 = load i32, i32* %hypre__block1009, align 4
  %685 = load i32, i32* %hypre__num_blocks1010, align 4
  %cmp1026 = icmp slt i32 %684, %685
  br i1 %cmp1026, label %for.body.1027, label %for.end.1117

for.body.1027:                                    ; preds = %for.cond.1025
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %686 = load i32, i32* %hypre__mx1002, align 4
  store i32 %686, i32* %hypre__nx996, align 4
  %687 = load i32, i32* %hypre__my1003, align 4
  store i32 %687, i32* %hypre__ny998, align 4
  %688 = load i32, i32* %hypre__mz1004, align 4
  store i32 %688, i32* %hypre__nz1000, align 4
  %689 = load i32, i32* %hypre__num_blocks1010, align 4
  %cmp1028 = icmp sgt i32 %689, 1
  br i1 %cmp1028, label %if.then.1029, label %if.end.1071

if.then.1029:                                     ; preds = %for.body.1027
  %690 = load i32, i32* %hypre__dir1005, align 4
  %cmp1030 = icmp eq i32 %690, 0
  br i1 %cmp1030, label %if.then.1031, label %if.else.1042

if.then.1031:                                     ; preds = %if.then.1029
  %691 = load i32, i32* %hypre__block1009, align 4
  %692 = load i32, i32* %hypre__div1007, align 4
  %mul1032 = mul nsw i32 %691, %692
  %693 = load i32, i32* %hypre__mod1008, align 4
  %694 = load i32, i32* %hypre__block1009, align 4
  %cmp1033 = icmp slt i32 %693, %694
  br i1 %cmp1033, label %cond.true.1034, label %cond.false.1035

cond.true.1034:                                   ; preds = %if.then.1031
  %695 = load i32, i32* %hypre__mod1008, align 4
  br label %cond.end.1036

cond.false.1035:                                  ; preds = %if.then.1031
  %696 = load i32, i32* %hypre__block1009, align 4
  br label %cond.end.1036

cond.end.1036:                                    ; preds = %cond.false.1035, %cond.true.1034
  %cond1037 = phi i32 [ %695, %cond.true.1034 ], [ %696, %cond.false.1035 ]
  %add1038 = add nsw i32 %mul1032, %cond1037
  store i32 %add1038, i32* %loopi, align 4
  %697 = load i32, i32* %hypre__div1007, align 4
  %698 = load i32, i32* %hypre__mod1008, align 4
  %699 = load i32, i32* %hypre__block1009, align 4
  %cmp1039 = icmp sgt i32 %698, %699
  %cond1040 = select i1 %cmp1039, i32 1, i32 0
  %add1041 = add nsw i32 %697, %cond1040
  store i32 %add1041, i32* %hypre__nx996, align 4
  br label %if.end.1070

if.else.1042:                                     ; preds = %if.then.1029
  %700 = load i32, i32* %hypre__dir1005, align 4
  %cmp1043 = icmp eq i32 %700, 1
  br i1 %cmp1043, label %if.then.1044, label %if.else.1055

if.then.1044:                                     ; preds = %if.else.1042
  %701 = load i32, i32* %hypre__block1009, align 4
  %702 = load i32, i32* %hypre__div1007, align 4
  %mul1045 = mul nsw i32 %701, %702
  %703 = load i32, i32* %hypre__mod1008, align 4
  %704 = load i32, i32* %hypre__block1009, align 4
  %cmp1046 = icmp slt i32 %703, %704
  br i1 %cmp1046, label %cond.true.1047, label %cond.false.1048

cond.true.1047:                                   ; preds = %if.then.1044
  %705 = load i32, i32* %hypre__mod1008, align 4
  br label %cond.end.1049

cond.false.1048:                                  ; preds = %if.then.1044
  %706 = load i32, i32* %hypre__block1009, align 4
  br label %cond.end.1049

cond.end.1049:                                    ; preds = %cond.false.1048, %cond.true.1047
  %cond1050 = phi i32 [ %705, %cond.true.1047 ], [ %706, %cond.false.1048 ]
  %add1051 = add nsw i32 %mul1045, %cond1050
  store i32 %add1051, i32* %loopj, align 4
  %707 = load i32, i32* %hypre__div1007, align 4
  %708 = load i32, i32* %hypre__mod1008, align 4
  %709 = load i32, i32* %hypre__block1009, align 4
  %cmp1052 = icmp sgt i32 %708, %709
  %cond1053 = select i1 %cmp1052, i32 1, i32 0
  %add1054 = add nsw i32 %707, %cond1053
  store i32 %add1054, i32* %hypre__ny998, align 4
  br label %if.end.1069

if.else.1055:                                     ; preds = %if.else.1042
  %710 = load i32, i32* %hypre__dir1005, align 4
  %cmp1056 = icmp eq i32 %710, 2
  br i1 %cmp1056, label %if.then.1057, label %if.end.1068

if.then.1057:                                     ; preds = %if.else.1055
  %711 = load i32, i32* %hypre__block1009, align 4
  %712 = load i32, i32* %hypre__div1007, align 4
  %mul1058 = mul nsw i32 %711, %712
  %713 = load i32, i32* %hypre__mod1008, align 4
  %714 = load i32, i32* %hypre__block1009, align 4
  %cmp1059 = icmp slt i32 %713, %714
  br i1 %cmp1059, label %cond.true.1060, label %cond.false.1061

cond.true.1060:                                   ; preds = %if.then.1057
  %715 = load i32, i32* %hypre__mod1008, align 4
  br label %cond.end.1062

cond.false.1061:                                  ; preds = %if.then.1057
  %716 = load i32, i32* %hypre__block1009, align 4
  br label %cond.end.1062

cond.end.1062:                                    ; preds = %cond.false.1061, %cond.true.1060
  %cond1063 = phi i32 [ %715, %cond.true.1060 ], [ %716, %cond.false.1061 ]
  %add1064 = add nsw i32 %mul1058, %cond1063
  store i32 %add1064, i32* %loopk, align 4
  %717 = load i32, i32* %hypre__div1007, align 4
  %718 = load i32, i32* %hypre__mod1008, align 4
  %719 = load i32, i32* %hypre__block1009, align 4
  %cmp1065 = icmp sgt i32 %718, %719
  %cond1066 = select i1 %cmp1065, i32 1, i32 0
  %add1067 = add nsw i32 %717, %cond1066
  store i32 %add1067, i32* %hypre__nz1000, align 4
  br label %if.end.1068

if.end.1068:                                      ; preds = %cond.end.1062, %if.else.1055
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.end.1068, %cond.end.1049
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.end.1069, %cond.end.1036
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.end.1070, %for.body.1027
  %720 = load i32, i32* %hypre__i1start885, align 4
  %721 = load i32, i32* %loopi, align 4
  %722 = load i32, i32* %hypre__sx1936, align 4
  %mul1072 = mul nsw i32 %721, %722
  %add1073 = add nsw i32 %720, %mul1072
  %723 = load i32, i32* %loopj, align 4
  %724 = load i32, i32* %hypre__sy1938, align 4
  %mul1074 = mul nsw i32 %723, %724
  %add1075 = add nsw i32 %add1073, %mul1074
  %725 = load i32, i32* %loopk, align 4
  %726 = load i32, i32* %hypre__sz1958, align 4
  %mul1076 = mul nsw i32 %725, %726
  %add1077 = add nsw i32 %add1075, %mul1076
  store i32 %add1077, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1078

for.cond.1078:                                    ; preds = %for.inc.1112, %if.end.1071
  %727 = load i32, i32* %loopk, align 4
  %728 = load i32, i32* %hypre__nz1000, align 4
  %cmp1079 = icmp slt i32 %727, %728
  br i1 %cmp1079, label %for.body.1080, label %for.end.1114

for.body.1080:                                    ; preds = %for.cond.1078
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1081

for.cond.1081:                                    ; preds = %for.inc.1106, %for.body.1080
  %729 = load i32, i32* %loopj, align 4
  %730 = load i32, i32* %hypre__ny998, align 4
  %cmp1082 = icmp slt i32 %729, %730
  br i1 %cmp1082, label %for.body.1083, label %for.end.1108

for.body.1083:                                    ; preds = %for.cond.1081
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1084

for.cond.1084:                                    ; preds = %for.inc.1100, %for.body.1083
  %731 = load i32, i32* %loopi, align 4
  %732 = load i32, i32* %hypre__nx996, align 4
  %cmp1085 = icmp slt i32 %731, %732
  br i1 %cmp1085, label %for.body.1086, label %for.end.1102

for.body.1086:                                    ; preds = %for.cond.1084
  %733 = load i32, i32* %iAc, align 4
  %idxprom1087 = sext i32 %733 to i64
  %734 = load double*, double** %ac_cw, align 8
  %arrayidx1088 = getelementptr inbounds double, double* %734, i64 %idxprom1087
  %735 = load double, double* %arrayidx1088, align 8
  %736 = load i32, i32* %iAc, align 4
  %idxprom1089 = sext i32 %736 to i64
  %737 = load double*, double** %ac_ce, align 8
  %arrayidx1090 = getelementptr inbounds double, double* %737, i64 %idxprom1089
  %738 = load double, double* %arrayidx1090, align 8
  %add1091 = fadd double %735, %738
  %739 = load i32, i32* %iAc, align 4
  %idxprom1092 = sext i32 %739 to i64
  %740 = load double*, double** %ac_cc, align 8
  %arrayidx1093 = getelementptr inbounds double, double* %740, i64 %idxprom1092
  %741 = load double, double* %arrayidx1093, align 8
  %add1094 = fadd double %741, %add1091
  store double %add1094, double* %arrayidx1093, align 8
  %742 = load i32, i32* %iAc, align 4
  %idxprom1095 = sext i32 %742 to i64
  %743 = load double*, double** %ac_cw, align 8
  %arrayidx1096 = getelementptr inbounds double, double* %743, i64 %idxprom1095
  store double 0.000000e+00, double* %arrayidx1096, align 8
  %744 = load i32, i32* %iAc, align 4
  %idxprom1097 = sext i32 %744 to i64
  %745 = load double*, double** %ac_ce, align 8
  %arrayidx1098 = getelementptr inbounds double, double* %745, i64 %idxprom1097
  store double 0.000000e+00, double* %arrayidx1098, align 8
  %746 = load i32, i32* %hypre__sx1936, align 4
  %747 = load i32, i32* %iAc, align 4
  %add1099 = add nsw i32 %747, %746
  store i32 %add1099, i32* %iAc, align 4
  br label %for.inc.1100

for.inc.1100:                                     ; preds = %for.body.1086
  %748 = load i32, i32* %loopi, align 4
  %inc1101 = add nsw i32 %748, 1
  store i32 %inc1101, i32* %loopi, align 4
  br label %for.cond.1084

for.end.1102:                                     ; preds = %for.cond.1084
  %749 = load i32, i32* %hypre__sy1938, align 4
  %750 = load i32, i32* %hypre__nx996, align 4
  %751 = load i32, i32* %hypre__sx1936, align 4
  %mul1103 = mul nsw i32 %750, %751
  %sub1104 = sub nsw i32 %749, %mul1103
  %752 = load i32, i32* %iAc, align 4
  %add1105 = add nsw i32 %752, %sub1104
  store i32 %add1105, i32* %iAc, align 4
  br label %for.inc.1106

for.inc.1106:                                     ; preds = %for.end.1102
  %753 = load i32, i32* %loopj, align 4
  %inc1107 = add nsw i32 %753, 1
  store i32 %inc1107, i32* %loopj, align 4
  br label %for.cond.1081

for.end.1108:                                     ; preds = %for.cond.1081
  %754 = load i32, i32* %hypre__sz1958, align 4
  %755 = load i32, i32* %hypre__ny998, align 4
  %756 = load i32, i32* %hypre__sy1938, align 4
  %mul1109 = mul nsw i32 %755, %756
  %sub1110 = sub nsw i32 %754, %mul1109
  %757 = load i32, i32* %iAc, align 4
  %add1111 = add nsw i32 %757, %sub1110
  store i32 %add1111, i32* %iAc, align 4
  br label %for.inc.1112

for.inc.1112:                                     ; preds = %for.end.1108
  %758 = load i32, i32* %loopk, align 4
  %inc1113 = add nsw i32 %758, 1
  store i32 %inc1113, i32* %loopk, align 4
  br label %for.cond.1078

for.end.1114:                                     ; preds = %for.cond.1078
  br label %for.inc.1115

for.inc.1115:                                     ; preds = %for.end.1114
  %759 = load i32, i32* %hypre__block1009, align 4
  %inc1116 = add nsw i32 %759, 1
  store i32 %inc1116, i32* %hypre__block1009, align 4
  br label %for.cond.1025

for.end.1117:                                     ; preds = %for.cond.1025
  br label %if.end.1350

if.else.1118:                                     ; preds = %if.end.879
  %760 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay1119 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call1120 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %760, i32* %arraydecay1119)
  %761 = load i32*, i32** %cstart, align 8
  %arrayidx1122 = getelementptr inbounds i32, i32* %761, i64 0
  %762 = load i32, i32* %arrayidx1122, align 4
  %763 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %763, i32 0, i32 0
  %arrayidx1124 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1123, i32 0, i64 0
  %764 = load i32, i32* %arrayidx1124, align 4
  %sub1125 = sub nsw i32 %762, %764
  %765 = load i32*, i32** %cstart, align 8
  %arrayidx1126 = getelementptr inbounds i32, i32* %765, i64 1
  %766 = load i32, i32* %arrayidx1126, align 4
  %767 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %767, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1127, i32 0, i64 1
  %768 = load i32, i32* %arrayidx1128, align 4
  %sub1129 = sub nsw i32 %766, %768
  %769 = load i32*, i32** %cstart, align 8
  %arrayidx1130 = getelementptr inbounds i32, i32* %769, i64 2
  %770 = load i32, i32* %arrayidx1130, align 4
  %771 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %771, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1131, i32 0, i64 2
  %772 = load i32, i32* %arrayidx1132, align 4
  %sub1133 = sub nsw i32 %770, %772
  %773 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %773, i32 0, i32 1
  %arrayidx1135 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1134, i32 0, i64 1
  %774 = load i32, i32* %arrayidx1135, align 4
  %775 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %775, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1136, i32 0, i64 1
  %776 = load i32, i32* %arrayidx1137, align 4
  %sub1138 = sub nsw i32 %774, %776
  %add1139 = add nsw i32 %sub1138, 1
  %cmp1140 = icmp slt i32 0, %add1139
  br i1 %cmp1140, label %cond.true.1141, label %cond.false.1148

cond.true.1141:                                   ; preds = %if.else.1118
  %777 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %777, i32 0, i32 1
  %arrayidx1143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1142, i32 0, i64 1
  %778 = load i32, i32* %arrayidx1143, align 4
  %779 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %779, i32 0, i32 0
  %arrayidx1145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1144, i32 0, i64 1
  %780 = load i32, i32* %arrayidx1145, align 4
  %sub1146 = sub nsw i32 %778, %780
  %add1147 = add nsw i32 %sub1146, 1
  br label %cond.end.1149

cond.false.1148:                                  ; preds = %if.else.1118
  br label %cond.end.1149

cond.end.1149:                                    ; preds = %cond.false.1148, %cond.true.1141
  %cond1150 = phi i32 [ %add1147, %cond.true.1141 ], [ 0, %cond.false.1148 ]
  %mul1151 = mul nsw i32 %sub1133, %cond1150
  %add1152 = add nsw i32 %sub1129, %mul1151
  %781 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %781, i32 0, i32 1
  %arrayidx1154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1153, i32 0, i64 0
  %782 = load i32, i32* %arrayidx1154, align 4
  %783 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %783, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1155, i32 0, i64 0
  %784 = load i32, i32* %arrayidx1156, align 4
  %sub1157 = sub nsw i32 %782, %784
  %add1158 = add nsw i32 %sub1157, 1
  %cmp1159 = icmp slt i32 0, %add1158
  br i1 %cmp1159, label %cond.true.1160, label %cond.false.1167

cond.true.1160:                                   ; preds = %cond.end.1149
  %785 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %785, i32 0, i32 1
  %arrayidx1162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1161, i32 0, i64 0
  %786 = load i32, i32* %arrayidx1162, align 4
  %787 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %787, i32 0, i32 0
  %arrayidx1164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1163, i32 0, i64 0
  %788 = load i32, i32* %arrayidx1164, align 4
  %sub1165 = sub nsw i32 %786, %788
  %add1166 = add nsw i32 %sub1165, 1
  br label %cond.end.1168

cond.false.1167:                                  ; preds = %cond.end.1149
  br label %cond.end.1168

cond.end.1168:                                    ; preds = %cond.false.1167, %cond.true.1160
  %cond1169 = phi i32 [ %add1166, %cond.true.1160 ], [ 0, %cond.false.1167 ]
  %mul1170 = mul nsw i32 %add1152, %cond1169
  %add1171 = add nsw i32 %sub1125, %mul1170
  store i32 %add1171, i32* %hypre__i1start1121, align 4
  %arrayidx1173 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %789 = load i32, i32* %arrayidx1173, align 4
  store i32 %789, i32* %hypre__sx11172, align 4
  %arrayidx1175 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %790 = load i32, i32* %arrayidx1175, align 4
  %791 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %791, i32 0, i32 1
  %arrayidx1177 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1176, i32 0, i64 0
  %792 = load i32, i32* %arrayidx1177, align 4
  %793 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1178 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %793, i32 0, i32 0
  %arrayidx1179 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1178, i32 0, i64 0
  %794 = load i32, i32* %arrayidx1179, align 4
  %sub1180 = sub nsw i32 %792, %794
  %add1181 = add nsw i32 %sub1180, 1
  %cmp1182 = icmp slt i32 0, %add1181
  br i1 %cmp1182, label %cond.true.1183, label %cond.false.1190

cond.true.1183:                                   ; preds = %cond.end.1168
  %795 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1184 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %795, i32 0, i32 1
  %arrayidx1185 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1184, i32 0, i64 0
  %796 = load i32, i32* %arrayidx1185, align 4
  %797 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %797, i32 0, i32 0
  %arrayidx1187 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1186, i32 0, i64 0
  %798 = load i32, i32* %arrayidx1187, align 4
  %sub1188 = sub nsw i32 %796, %798
  %add1189 = add nsw i32 %sub1188, 1
  br label %cond.end.1191

cond.false.1190:                                  ; preds = %cond.end.1168
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1190, %cond.true.1183
  %cond1192 = phi i32 [ %add1189, %cond.true.1183 ], [ 0, %cond.false.1190 ]
  %mul1193 = mul nsw i32 %790, %cond1192
  store i32 %mul1193, i32* %hypre__sy11174, align 4
  %arrayidx1195 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %799 = load i32, i32* %arrayidx1195, align 4
  %800 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1196 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %800, i32 0, i32 1
  %arrayidx1197 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1196, i32 0, i64 0
  %801 = load i32, i32* %arrayidx1197, align 4
  %802 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1198 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %802, i32 0, i32 0
  %arrayidx1199 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1198, i32 0, i64 0
  %803 = load i32, i32* %arrayidx1199, align 4
  %sub1200 = sub nsw i32 %801, %803
  %add1201 = add nsw i32 %sub1200, 1
  %cmp1202 = icmp slt i32 0, %add1201
  br i1 %cmp1202, label %cond.true.1203, label %cond.false.1210

cond.true.1203:                                   ; preds = %cond.end.1191
  %804 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1204 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %804, i32 0, i32 1
  %arrayidx1205 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1204, i32 0, i64 0
  %805 = load i32, i32* %arrayidx1205, align 4
  %806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1206 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %806, i32 0, i32 0
  %arrayidx1207 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1206, i32 0, i64 0
  %807 = load i32, i32* %arrayidx1207, align 4
  %sub1208 = sub nsw i32 %805, %807
  %add1209 = add nsw i32 %sub1208, 1
  br label %cond.end.1211

cond.false.1210:                                  ; preds = %cond.end.1191
  br label %cond.end.1211

cond.end.1211:                                    ; preds = %cond.false.1210, %cond.true.1203
  %cond1212 = phi i32 [ %add1209, %cond.true.1203 ], [ 0, %cond.false.1210 ]
  %mul1213 = mul nsw i32 %799, %cond1212
  %808 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %808, i32 0, i32 1
  %arrayidx1215 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1214, i32 0, i64 1
  %809 = load i32, i32* %arrayidx1215, align 4
  %810 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %810, i32 0, i32 0
  %arrayidx1217 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1216, i32 0, i64 1
  %811 = load i32, i32* %arrayidx1217, align 4
  %sub1218 = sub nsw i32 %809, %811
  %add1219 = add nsw i32 %sub1218, 1
  %cmp1220 = icmp slt i32 0, %add1219
  br i1 %cmp1220, label %cond.true.1221, label %cond.false.1228

cond.true.1221:                                   ; preds = %cond.end.1211
  %812 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imax1222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %812, i32 0, i32 1
  %arrayidx1223 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1222, i32 0, i64 1
  %813 = load i32, i32* %arrayidx1223, align 4
  %814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %Ac_dbox, align 8
  %imin1224 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %814, i32 0, i32 0
  %arrayidx1225 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1224, i32 0, i64 1
  %815 = load i32, i32* %arrayidx1225, align 4
  %sub1226 = sub nsw i32 %813, %815
  %add1227 = add nsw i32 %sub1226, 1
  br label %cond.end.1229

cond.false.1228:                                  ; preds = %cond.end.1211
  br label %cond.end.1229

cond.end.1229:                                    ; preds = %cond.false.1228, %cond.true.1221
  %cond1230 = phi i32 [ %add1227, %cond.true.1221 ], [ 0, %cond.false.1228 ]
  %mul1231 = mul nsw i32 %mul1213, %cond1230
  store i32 %mul1231, i32* %hypre__sz11194, align 4
  %arrayidx1233 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %816 = load i32, i32* %arrayidx1233, align 4
  store i32 %816, i32* %hypre__nx1232, align 4
  %arrayidx1235 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %817 = load i32, i32* %arrayidx1235, align 4
  store i32 %817, i32* %hypre__ny1234, align 4
  %arrayidx1237 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %818 = load i32, i32* %arrayidx1237, align 4
  store i32 %818, i32* %hypre__nz1236, align 4
  %819 = load i32, i32* %hypre__nx1232, align 4
  store i32 %819, i32* %hypre__mx1238, align 4
  %820 = load i32, i32* %hypre__ny1234, align 4
  store i32 %820, i32* %hypre__my1239, align 4
  %821 = load i32, i32* %hypre__nz1236, align 4
  store i32 %821, i32* %hypre__mz1240, align 4
  store i32 0, i32* %hypre__dir1241, align 4
  %822 = load i32, i32* %hypre__nx1232, align 4
  store i32 %822, i32* %hypre__max1242, align 4
  %823 = load i32, i32* %hypre__ny1234, align 4
  %824 = load i32, i32* %hypre__max1242, align 4
  %cmp1247 = icmp sgt i32 %823, %824
  br i1 %cmp1247, label %if.then.1248, label %if.end.1249

if.then.1248:                                     ; preds = %cond.end.1229
  store i32 1, i32* %hypre__dir1241, align 4
  %825 = load i32, i32* %hypre__ny1234, align 4
  store i32 %825, i32* %hypre__max1242, align 4
  br label %if.end.1249

if.end.1249:                                      ; preds = %if.then.1248, %cond.end.1229
  %826 = load i32, i32* %hypre__nz1236, align 4
  %827 = load i32, i32* %hypre__max1242, align 4
  %cmp1250 = icmp sgt i32 %826, %827
  br i1 %cmp1250, label %if.then.1251, label %if.end.1252

if.then.1251:                                     ; preds = %if.end.1249
  store i32 2, i32* %hypre__dir1241, align 4
  %828 = load i32, i32* %hypre__nz1236, align 4
  store i32 %828, i32* %hypre__max1242, align 4
  br label %if.end.1252

if.end.1252:                                      ; preds = %if.then.1251, %if.end.1249
  store i32 1, i32* %hypre__num_blocks1246, align 4
  %829 = load i32, i32* %hypre__max1242, align 4
  %830 = load i32, i32* %hypre__num_blocks1246, align 4
  %cmp1253 = icmp slt i32 %829, %830
  br i1 %cmp1253, label %if.then.1254, label %if.end.1255

if.then.1254:                                     ; preds = %if.end.1252
  %831 = load i32, i32* %hypre__max1242, align 4
  store i32 %831, i32* %hypre__num_blocks1246, align 4
  br label %if.end.1255

if.end.1255:                                      ; preds = %if.then.1254, %if.end.1252
  %832 = load i32, i32* %hypre__num_blocks1246, align 4
  %cmp1256 = icmp sgt i32 %832, 0
  br i1 %cmp1256, label %if.then.1257, label %if.end.1260

if.then.1257:                                     ; preds = %if.end.1255
  %833 = load i32, i32* %hypre__max1242, align 4
  %834 = load i32, i32* %hypre__num_blocks1246, align 4
  %div1258 = sdiv i32 %833, %834
  store i32 %div1258, i32* %hypre__div1243, align 4
  %835 = load i32, i32* %hypre__max1242, align 4
  %836 = load i32, i32* %hypre__num_blocks1246, align 4
  %rem1259 = srem i32 %835, %836
  store i32 %rem1259, i32* %hypre__mod1244, align 4
  br label %if.end.1260

if.end.1260:                                      ; preds = %if.then.1257, %if.end.1255
  store i32 0, i32* %hypre__block1245, align 4
  br label %for.cond.1261

for.cond.1261:                                    ; preds = %for.inc.1347, %if.end.1260
  %837 = load i32, i32* %hypre__block1245, align 4
  %838 = load i32, i32* %hypre__num_blocks1246, align 4
  %cmp1262 = icmp slt i32 %837, %838
  br i1 %cmp1262, label %for.body.1263, label %for.end.1349

for.body.1263:                                    ; preds = %for.cond.1261
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %839 = load i32, i32* %hypre__mx1238, align 4
  store i32 %839, i32* %hypre__nx1232, align 4
  %840 = load i32, i32* %hypre__my1239, align 4
  store i32 %840, i32* %hypre__ny1234, align 4
  %841 = load i32, i32* %hypre__mz1240, align 4
  store i32 %841, i32* %hypre__nz1236, align 4
  %842 = load i32, i32* %hypre__num_blocks1246, align 4
  %cmp1264 = icmp sgt i32 %842, 1
  br i1 %cmp1264, label %if.then.1265, label %if.end.1307

if.then.1265:                                     ; preds = %for.body.1263
  %843 = load i32, i32* %hypre__dir1241, align 4
  %cmp1266 = icmp eq i32 %843, 0
  br i1 %cmp1266, label %if.then.1267, label %if.else.1278

if.then.1267:                                     ; preds = %if.then.1265
  %844 = load i32, i32* %hypre__block1245, align 4
  %845 = load i32, i32* %hypre__div1243, align 4
  %mul1268 = mul nsw i32 %844, %845
  %846 = load i32, i32* %hypre__mod1244, align 4
  %847 = load i32, i32* %hypre__block1245, align 4
  %cmp1269 = icmp slt i32 %846, %847
  br i1 %cmp1269, label %cond.true.1270, label %cond.false.1271

cond.true.1270:                                   ; preds = %if.then.1267
  %848 = load i32, i32* %hypre__mod1244, align 4
  br label %cond.end.1272

cond.false.1271:                                  ; preds = %if.then.1267
  %849 = load i32, i32* %hypre__block1245, align 4
  br label %cond.end.1272

cond.end.1272:                                    ; preds = %cond.false.1271, %cond.true.1270
  %cond1273 = phi i32 [ %848, %cond.true.1270 ], [ %849, %cond.false.1271 ]
  %add1274 = add nsw i32 %mul1268, %cond1273
  store i32 %add1274, i32* %loopi, align 4
  %850 = load i32, i32* %hypre__div1243, align 4
  %851 = load i32, i32* %hypre__mod1244, align 4
  %852 = load i32, i32* %hypre__block1245, align 4
  %cmp1275 = icmp sgt i32 %851, %852
  %cond1276 = select i1 %cmp1275, i32 1, i32 0
  %add1277 = add nsw i32 %850, %cond1276
  store i32 %add1277, i32* %hypre__nx1232, align 4
  br label %if.end.1306

if.else.1278:                                     ; preds = %if.then.1265
  %853 = load i32, i32* %hypre__dir1241, align 4
  %cmp1279 = icmp eq i32 %853, 1
  br i1 %cmp1279, label %if.then.1280, label %if.else.1291

if.then.1280:                                     ; preds = %if.else.1278
  %854 = load i32, i32* %hypre__block1245, align 4
  %855 = load i32, i32* %hypre__div1243, align 4
  %mul1281 = mul nsw i32 %854, %855
  %856 = load i32, i32* %hypre__mod1244, align 4
  %857 = load i32, i32* %hypre__block1245, align 4
  %cmp1282 = icmp slt i32 %856, %857
  br i1 %cmp1282, label %cond.true.1283, label %cond.false.1284

cond.true.1283:                                   ; preds = %if.then.1280
  %858 = load i32, i32* %hypre__mod1244, align 4
  br label %cond.end.1285

cond.false.1284:                                  ; preds = %if.then.1280
  %859 = load i32, i32* %hypre__block1245, align 4
  br label %cond.end.1285

cond.end.1285:                                    ; preds = %cond.false.1284, %cond.true.1283
  %cond1286 = phi i32 [ %858, %cond.true.1283 ], [ %859, %cond.false.1284 ]
  %add1287 = add nsw i32 %mul1281, %cond1286
  store i32 %add1287, i32* %loopj, align 4
  %860 = load i32, i32* %hypre__div1243, align 4
  %861 = load i32, i32* %hypre__mod1244, align 4
  %862 = load i32, i32* %hypre__block1245, align 4
  %cmp1288 = icmp sgt i32 %861, %862
  %cond1289 = select i1 %cmp1288, i32 1, i32 0
  %add1290 = add nsw i32 %860, %cond1289
  store i32 %add1290, i32* %hypre__ny1234, align 4
  br label %if.end.1305

if.else.1291:                                     ; preds = %if.else.1278
  %863 = load i32, i32* %hypre__dir1241, align 4
  %cmp1292 = icmp eq i32 %863, 2
  br i1 %cmp1292, label %if.then.1293, label %if.end.1304

if.then.1293:                                     ; preds = %if.else.1291
  %864 = load i32, i32* %hypre__block1245, align 4
  %865 = load i32, i32* %hypre__div1243, align 4
  %mul1294 = mul nsw i32 %864, %865
  %866 = load i32, i32* %hypre__mod1244, align 4
  %867 = load i32, i32* %hypre__block1245, align 4
  %cmp1295 = icmp slt i32 %866, %867
  br i1 %cmp1295, label %cond.true.1296, label %cond.false.1297

cond.true.1296:                                   ; preds = %if.then.1293
  %868 = load i32, i32* %hypre__mod1244, align 4
  br label %cond.end.1298

cond.false.1297:                                  ; preds = %if.then.1293
  %869 = load i32, i32* %hypre__block1245, align 4
  br label %cond.end.1298

cond.end.1298:                                    ; preds = %cond.false.1297, %cond.true.1296
  %cond1299 = phi i32 [ %868, %cond.true.1296 ], [ %869, %cond.false.1297 ]
  %add1300 = add nsw i32 %mul1294, %cond1299
  store i32 %add1300, i32* %loopk, align 4
  %870 = load i32, i32* %hypre__div1243, align 4
  %871 = load i32, i32* %hypre__mod1244, align 4
  %872 = load i32, i32* %hypre__block1245, align 4
  %cmp1301 = icmp sgt i32 %871, %872
  %cond1302 = select i1 %cmp1301, i32 1, i32 0
  %add1303 = add nsw i32 %870, %cond1302
  store i32 %add1303, i32* %hypre__nz1236, align 4
  br label %if.end.1304

if.end.1304:                                      ; preds = %cond.end.1298, %if.else.1291
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.end.1304, %cond.end.1285
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.end.1305, %cond.end.1272
  br label %if.end.1307

if.end.1307:                                      ; preds = %if.end.1306, %for.body.1263
  %873 = load i32, i32* %hypre__i1start1121, align 4
  %874 = load i32, i32* %loopi, align 4
  %875 = load i32, i32* %hypre__sx11172, align 4
  %mul1308 = mul nsw i32 %874, %875
  %add1309 = add nsw i32 %873, %mul1308
  %876 = load i32, i32* %loopj, align 4
  %877 = load i32, i32* %hypre__sy11174, align 4
  %mul1310 = mul nsw i32 %876, %877
  %add1311 = add nsw i32 %add1309, %mul1310
  %878 = load i32, i32* %loopk, align 4
  %879 = load i32, i32* %hypre__sz11194, align 4
  %mul1312 = mul nsw i32 %878, %879
  %add1313 = add nsw i32 %add1311, %mul1312
  store i32 %add1313, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1314

for.cond.1314:                                    ; preds = %for.inc.1344, %if.end.1307
  %880 = load i32, i32* %loopk, align 4
  %881 = load i32, i32* %hypre__nz1236, align 4
  %cmp1315 = icmp slt i32 %880, %881
  br i1 %cmp1315, label %for.body.1316, label %for.end.1346

for.body.1316:                                    ; preds = %for.cond.1314
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1317

for.cond.1317:                                    ; preds = %for.inc.1338, %for.body.1316
  %882 = load i32, i32* %loopj, align 4
  %883 = load i32, i32* %hypre__ny1234, align 4
  %cmp1318 = icmp slt i32 %882, %883
  br i1 %cmp1318, label %for.body.1319, label %for.end.1340

for.body.1319:                                    ; preds = %for.cond.1317
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1320

for.cond.1320:                                    ; preds = %for.inc.1332, %for.body.1319
  %884 = load i32, i32* %loopi, align 4
  %885 = load i32, i32* %hypre__nx1232, align 4
  %cmp1321 = icmp slt i32 %884, %885
  br i1 %cmp1321, label %for.body.1322, label %for.end.1334

for.body.1322:                                    ; preds = %for.cond.1320
  %886 = load i32, i32* %iAc, align 4
  %idxprom1323 = sext i32 %886 to i64
  %887 = load double*, double** %ac_cw, align 8
  %arrayidx1324 = getelementptr inbounds double, double* %887, i64 %idxprom1323
  %888 = load double, double* %arrayidx1324, align 8
  %mul1325 = fmul double 2.000000e+00, %888
  %889 = load i32, i32* %iAc, align 4
  %idxprom1326 = sext i32 %889 to i64
  %890 = load double*, double** %ac_cc, align 8
  %arrayidx1327 = getelementptr inbounds double, double* %890, i64 %idxprom1326
  %891 = load double, double* %arrayidx1327, align 8
  %add1328 = fadd double %891, %mul1325
  store double %add1328, double* %arrayidx1327, align 8
  %892 = load i32, i32* %iAc, align 4
  %idxprom1329 = sext i32 %892 to i64
  %893 = load double*, double** %ac_cw, align 8
  %arrayidx1330 = getelementptr inbounds double, double* %893, i64 %idxprom1329
  store double 0.000000e+00, double* %arrayidx1330, align 8
  %894 = load i32, i32* %hypre__sx11172, align 4
  %895 = load i32, i32* %iAc, align 4
  %add1331 = add nsw i32 %895, %894
  store i32 %add1331, i32* %iAc, align 4
  br label %for.inc.1332

for.inc.1332:                                     ; preds = %for.body.1322
  %896 = load i32, i32* %loopi, align 4
  %inc1333 = add nsw i32 %896, 1
  store i32 %inc1333, i32* %loopi, align 4
  br label %for.cond.1320

for.end.1334:                                     ; preds = %for.cond.1320
  %897 = load i32, i32* %hypre__sy11174, align 4
  %898 = load i32, i32* %hypre__nx1232, align 4
  %899 = load i32, i32* %hypre__sx11172, align 4
  %mul1335 = mul nsw i32 %898, %899
  %sub1336 = sub nsw i32 %897, %mul1335
  %900 = load i32, i32* %iAc, align 4
  %add1337 = add nsw i32 %900, %sub1336
  store i32 %add1337, i32* %iAc, align 4
  br label %for.inc.1338

for.inc.1338:                                     ; preds = %for.end.1334
  %901 = load i32, i32* %loopj, align 4
  %inc1339 = add nsw i32 %901, 1
  store i32 %inc1339, i32* %loopj, align 4
  br label %for.cond.1317

for.end.1340:                                     ; preds = %for.cond.1317
  %902 = load i32, i32* %hypre__sz11194, align 4
  %903 = load i32, i32* %hypre__ny1234, align 4
  %904 = load i32, i32* %hypre__sy11174, align 4
  %mul1341 = mul nsw i32 %903, %904
  %sub1342 = sub nsw i32 %902, %mul1341
  %905 = load i32, i32* %iAc, align 4
  %add1343 = add nsw i32 %905, %sub1342
  store i32 %add1343, i32* %iAc, align 4
  br label %for.inc.1344

for.inc.1344:                                     ; preds = %for.end.1340
  %906 = load i32, i32* %loopk, align 4
  %inc1345 = add nsw i32 %906, 1
  store i32 %inc1345, i32* %loopk, align 4
  br label %for.cond.1314

for.end.1346:                                     ; preds = %for.cond.1314
  br label %for.inc.1347

for.inc.1347:                                     ; preds = %for.end.1346
  %907 = load i32, i32* %hypre__block1245, align 4
  %inc1348 = add nsw i32 %907, 1
  store i32 %inc1348, i32* %hypre__block1245, align 4
  br label %for.cond.1261

for.end.1349:                                     ; preds = %for.cond.1261
  br label %if.end.1350

if.end.1350:                                      ; preds = %for.end.1349, %for.end.1117
  br label %for.inc.1351

for.inc.1351:                                     ; preds = %if.end.1350
  %908 = load i32, i32* %ci, align 4
  %inc1352 = add nsw i32 %908, 1
  store i32 %inc1352, i32* %ci, align 4
  br label %for.cond.848

for.end.1353:                                     ; preds = %for.cond.848
  br label %if.end.1354

if.end.1354:                                      ; preds = %for.end.1353, %for.end.843
  %909 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %call1355 = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %909)
  %910 = load i32, i32* %ierr, align 4
  ret i32 %910
}

declare i32 @hypre_StructMapCoarseToFine(i32*, i32*, i32*, i32*) #1

declare double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct*, i32, i32*) #1

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

declare i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CyclicReductionSetup(i8* %cyc_red_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %cyc_red_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %cyc_red_data = alloca %struct.hypre_CyclicReductionData*, align 8
  %comm = alloca i32, align 4
  %cdir = alloca i32, align 4
  %base_index = alloca i32*, align 8
  %base_stride = alloca i32*, align 8
  %num_levels = alloca i32, align 4
  %grid_l = alloca %struct.hypre_StructGrid_struct**, align 8
  %base_points = alloca %struct.hypre_BoxArray_struct*, align 8
  %fine_points_l = alloca %struct.hypre_BoxArray_struct**, align 8
  %data = alloca double*, align 8
  %data_size = alloca i32, align 4
  %A_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %x_l = alloca %struct.hypre_StructVector_struct**, align 8
  %down_compute_pkg_l = alloca %struct.hypre_ComputePkg_struct**, align 8
  %up_compute_pkg_l = alloca %struct.hypre_ComputePkg_struct**, align 8
  %cindex = alloca [3 x i32], align 4
  %findex = alloca [3 x i32], align 4
  %stride = alloca [3 x i32], align 4
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cbox = alloca %struct.hypre_Box_struct*, align 8
  %l = alloca i32, align 4
  %flop_divisor = alloca i32, align 4
  %x_num_ghost = alloca [6 x i32], align 16
  %ierr = alloca i32, align 4
  store i8* %cyc_red_vdata, i8** %cyc_red_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %cyc_red_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_CyclicReductionData*
  store %struct.hypre_CyclicReductionData* %1, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %2 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %2, i32 0, i32 0
  %3 = load i32, i32* %comm1, align 4
  store i32 %3, i32* %comm, align 4
  %4 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %cdir2 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %4, i32 0, i32 2
  %5 = load i32, i32* %cdir2, align 4
  store i32 %5, i32* %cdir, align 4
  %6 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index3 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index3, i32 0, i32 0
  store i32* %arraydecay, i32** %base_index, align 8
  %7 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride4 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %7, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride4, i32 0, i32 0
  store i32* %arraydecay5, i32** %base_stride, align 8
  store i32 0, i32* %data_size, align 4
  %8 = bitcast [6 x i32]* %x_num_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 16, i1 false)
  store i32 0, i32* %ierr, align 4
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 1
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid6, align 8
  store %struct.hypre_StructGrid_struct* %10, %struct.hypre_StructGrid_struct** %grid, align 8
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %bounding_box = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %11, i32 0, i32 6
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %call = call %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct* %12)
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %cbox, align 8
  %13 = load i32, i32* %cdir, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %16 = load i32, i32* %cdir, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  %sub = sub nsw i32 %15, %18
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %cdir, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imax10, i32 0, i64 %idxprom9
  %21 = load i32, i32* %arrayidx11, align 4
  %22 = load i32, i32* %cdir, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 %idxprom12
  %24 = load i32, i32* %arrayidx14, align 4
  %sub15 = sub nsw i32 %21, %24
  %add16 = add nsw i32 %sub15, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add16, %cond.true ], [ 0, %cond.false ]
  %call17 = call i32 @hypre_Log2(i32 %cond)
  %add18 = add nsw i32 %call17, 2
  store i32 %add18, i32* %num_levels, align 4
  %25 = load i32, i32* %num_levels, align 4
  %conv = sext i32 %25 to i64
  %mul = mul i64 8, %conv
  %conv19 = trunc i64 %mul to i32
  %call20 = call i8* @hypre_MAlloc(i32 %conv19)
  %26 = bitcast i8* %call20 to %struct.hypre_StructGrid_struct**
  store %struct.hypre_StructGrid_struct** %26, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %27 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %28 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx21 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %28, i64 0
  %call22 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %27, %struct.hypre_StructGrid_struct** %arrayidx21)
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %29 = load i32, i32* %l, align 4
  %cmp23 = icmp sgt i32 %29, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx27, align 4
  br label %if.end

if.else:                                          ; preds = %for.cond
  %30 = load i32*, i32** %base_index, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %31, i32* %arrayidx29, align 4
  %32 = load i32*, i32** %base_index, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %32, i64 1
  %33 = load i32, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %33, i32* %arrayidx31, align 4
  %34 = load i32*, i32** %base_index, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %34, i64 2
  %35 = load i32, i32* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %35, i32* %arrayidx33, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %36 = load i32, i32* %cdir, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom34
  %37 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %37, 0
  store i32 %add36, i32* %arrayidx35, align 4
  %38 = load i32, i32* %l, align 4
  %cmp37 = icmp sgt i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.end
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx42, align 4
  br label %if.end.50

if.else.43:                                       ; preds = %if.end
  %39 = load i32*, i32** %base_stride, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %40, i32* %arrayidx45, align 4
  %41 = load i32*, i32** %base_stride, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %42, i32* %arrayidx47, align 4
  %43 = load i32*, i32** %base_stride, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %44, i32* %arrayidx49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.43, %if.then.39
  %45 = load i32, i32* %cdir, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom51
  %46 = load i32, i32* %arrayidx52, align 4
  %mul53 = mul nsw i32 %46, 2
  store i32 %mul53, i32* %arrayidx52, align 4
  %47 = load i32, i32* %cdir, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imin55, i32 0, i64 %idxprom54
  %49 = load i32, i32* %arrayidx56, align 4
  %50 = load i32, i32* %cdir, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax58, i32 0, i64 %idxprom57
  %52 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp eq i32 %49, %52
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.50
  br label %for.end

if.end.63:                                        ; preds = %if.end.50
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %arraydecay64 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay65 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call66 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %53, i32* %arraydecay64, i32* %arraydecay65)
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [3 x i32], [3 x i32]* %imin71, i32 0, i32 0
  %call73 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay68, i32* %arraydecay69, i32* %arraydecay70, i32* %arraydecay72)
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 1
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 1
  %arraydecay79 = getelementptr inbounds [3 x i32], [3 x i32]* %imax78, i32 0, i32 0
  %call80 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay75, i32* %arraydecay76, i32* %arraydecay77, i32* %arraydecay79)
  %58 = load i32, i32* %l, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx82 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %59, i64 %idxprom81
  %60 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx82, align 8
  %arraydecay83 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %61 = load i32, i32* %l, align 4
  %add85 = add nsw i32 %61, 1
  %idxprom86 = sext i32 %add85 to i64
  %62 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx87 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %62, i64 %idxprom86
  %call88 = call i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct* %60, i32* %arraydecay83, i32* %arraydecay84, i32 1, %struct.hypre_StructGrid_struct** %arrayidx87)
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %63 = load i32, i32* %l, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.62
  %64 = load i32, i32* %l, align 4
  %add89 = add nsw i32 %64, 1
  store i32 %add89, i32* %num_levels, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %call90 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %65)
  %66 = load i32, i32* %num_levels, align 4
  %67 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %num_levels91 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %67, i32 0, i32 1
  store i32 %66, i32* %num_levels91, align 4
  %68 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %69 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %grid_l92 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %69, i32 0, i32 5
  store %struct.hypre_StructGrid_struct** %68, %struct.hypre_StructGrid_struct*** %grid_l92, align 8
  %70 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx93 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %70, i64 0
  %71 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx93, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %71, i32 0, i32 2
  %72 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call94 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %72)
  store %struct.hypre_BoxArray_struct* %call94, %struct.hypre_BoxArray_struct** %base_points, align 8
  %73 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %74 = load i32*, i32** %base_index, align 8
  %75 = load i32*, i32** %base_stride, align 8
  %call95 = call i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %73, i32* %74, i32* %75)
  %76 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %77 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_points96 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %77, i32 0, i32 6
  store %struct.hypre_BoxArray_struct* %76, %struct.hypre_BoxArray_struct** %base_points96, align 8
  %78 = load i32, i32* %num_levels, align 4
  %conv97 = sext i32 %78 to i64
  %mul98 = mul i64 8, %conv97
  %conv99 = trunc i64 %mul98 to i32
  %call100 = call i8* @hypre_MAlloc(i32 %conv99)
  %79 = bitcast i8* %call100 to %struct.hypre_BoxArray_struct**
  store %struct.hypre_BoxArray_struct** %79, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.167, %for.end
  %80 = load i32, i32* %l, align 4
  %81 = load i32, i32* %num_levels, align 4
  %sub102 = sub nsw i32 %81, 1
  %cmp103 = icmp slt i32 %80, %sub102
  br i1 %cmp103, label %for.body, label %for.end.169

for.body:                                         ; preds = %for.cond.101
  %82 = load i32, i32* %l, align 4
  %cmp105 = icmp sgt i32 %82, 0
  br i1 %cmp105, label %if.then.107, label %if.else.111

if.then.107:                                      ; preds = %for.body
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx108, align 4
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx109, align 4
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx110, align 4
  br label %if.end.118

if.else.111:                                      ; preds = %for.body
  %83 = load i32*, i32** %base_index, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %84, i32* %arrayidx113, align 4
  %85 = load i32*, i32** %base_index, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %85, i64 1
  %86 = load i32, i32* %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %86, i32* %arrayidx115, align 4
  %87 = load i32*, i32** %base_index, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %87, i64 2
  %88 = load i32, i32* %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %88, i32* %arrayidx117, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.111, %if.then.107
  %89 = load i32, i32* %cdir, align 4
  %idxprom119 = sext i32 %89 to i64
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom119
  %90 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %90, 0
  store i32 %add121, i32* %arrayidx120, align 4
  %91 = load i32, i32* %l, align 4
  %cmp122 = icmp sgt i32 %91, 0
  br i1 %cmp122, label %if.then.124, label %if.else.128

if.then.124:                                      ; preds = %if.end.118
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 0, i32* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 0, i32* %arrayidx126, align 4
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 0, i32* %arrayidx127, align 4
  br label %if.end.135

if.else.128:                                      ; preds = %if.end.118
  %92 = load i32*, i32** %base_index, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx129, align 4
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 %93, i32* %arrayidx130, align 4
  %94 = load i32*, i32** %base_index, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %94, i64 1
  %95 = load i32, i32* %arrayidx131, align 4
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 %95, i32* %arrayidx132, align 4
  %96 = load i32*, i32** %base_index, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %96, i64 2
  %97 = load i32, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 %97, i32* %arrayidx134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.128, %if.then.124
  %98 = load i32, i32* %cdir, align 4
  %idxprom136 = sext i32 %98 to i64
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 %idxprom136
  %99 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %99, 1
  store i32 %add138, i32* %arrayidx137, align 4
  %100 = load i32, i32* %l, align 4
  %cmp139 = icmp sgt i32 %100, 0
  br i1 %cmp139, label %if.then.141, label %if.else.145

if.then.141:                                      ; preds = %if.end.135
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx143, align 4
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx144, align 4
  br label %if.end.152

if.else.145:                                      ; preds = %if.end.135
  %101 = load i32*, i32** %base_stride, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %102, i32* %arrayidx147, align 4
  %103 = load i32*, i32** %base_stride, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %103, i64 1
  %104 = load i32, i32* %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %104, i32* %arrayidx149, align 4
  %105 = load i32*, i32** %base_stride, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %105, i64 2
  %106 = load i32, i32* %arrayidx150, align 4
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %106, i32* %arrayidx151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.145, %if.then.141
  %107 = load i32, i32* %cdir, align 4
  %idxprom153 = sext i32 %107 to i64
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom153
  %108 = load i32, i32* %arrayidx154, align 4
  %mul155 = mul nsw i32 %108, 2
  store i32 %mul155, i32* %arrayidx154, align 4
  %109 = load i32, i32* %l, align 4
  %idxprom156 = sext i32 %109 to i64
  %110 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx157 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %110, i64 %idxprom156
  %111 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx157, align 8
  %boxes158 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %111, i32 0, i32 2
  %112 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes158, align 8
  %call159 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %112)
  %113 = load i32, i32* %l, align 4
  %idxprom160 = sext i32 %113 to i64
  %114 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx161 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %114, i64 %idxprom160
  store %struct.hypre_BoxArray_struct* %call159, %struct.hypre_BoxArray_struct** %arrayidx161, align 8
  %115 = load i32, i32* %l, align 4
  %idxprom162 = sext i32 %115 to i64
  %116 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx163 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %116, i64 %idxprom162
  %117 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx163, align 8
  %arraydecay164 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay165 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call166 = call i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %117, i32* %arraydecay164, i32* %arraydecay165)
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.152
  %118 = load i32, i32* %l, align 4
  %inc168 = add nsw i32 %118, 1
  store i32 %inc168, i32* %l, align 4
  br label %for.cond.101

for.end.169:                                      ; preds = %for.cond.101
  %119 = load i32, i32* %l, align 4
  %idxprom170 = sext i32 %119 to i64
  %120 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx171 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %120, i64 %idxprom170
  %121 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx171, align 8
  %boxes172 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %121, i32 0, i32 2
  %122 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes172, align 8
  %call173 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %122)
  %123 = load i32, i32* %l, align 4
  %idxprom174 = sext i32 %123 to i64
  %124 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx175 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %124, i64 %idxprom174
  store %struct.hypre_BoxArray_struct* %call173, %struct.hypre_BoxArray_struct** %arrayidx175, align 8
  %125 = load i32, i32* %num_levels, align 4
  %cmp176 = icmp eq i32 %125, 1
  br i1 %cmp176, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %for.end.169
  %126 = load i32, i32* %l, align 4
  %idxprom179 = sext i32 %126 to i64
  %127 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx180 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %127, i64 %idxprom179
  %128 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx180, align 8
  %129 = load i32*, i32** %base_index, align 8
  %130 = load i32*, i32** %base_stride, align 8
  %call181 = call i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %128, i32* %129, i32* %130)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %for.end.169
  %131 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %132 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l183 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %132, i32 0, i32 7
  store %struct.hypre_BoxArray_struct** %131, %struct.hypre_BoxArray_struct*** %fine_points_l183, align 8
  %133 = load i32, i32* %num_levels, align 4
  %conv184 = sext i32 %133 to i64
  %mul185 = mul i64 8, %conv184
  %conv186 = trunc i64 %mul185 to i32
  %call187 = call i8* @hypre_MAlloc(i32 %conv186)
  %134 = bitcast i8* %call187 to %struct.hypre_StructMatrix_struct**
  store %struct.hypre_StructMatrix_struct** %134, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %135 = load i32, i32* %num_levels, align 4
  %conv188 = sext i32 %135 to i64
  %mul189 = mul i64 8, %conv188
  %conv190 = trunc i64 %mul189 to i32
  %call191 = call i8* @hypre_MAlloc(i32 %conv190)
  %136 = bitcast i8* %call191 to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %136, %struct.hypre_StructVector_struct*** %x_l, align 8
  %137 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call192 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %137)
  %138 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx193 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %138, i64 0
  store %struct.hypre_StructMatrix_struct* %call192, %struct.hypre_StructMatrix_struct** %arrayidx193, align 8
  %139 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call194 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %139)
  %140 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx195 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %140, i64 0
  store %struct.hypre_StructVector_struct* %call194, %struct.hypre_StructVector_struct** %arrayidx195, align 8
  %141 = load i32, i32* %cdir, align 4
  %mul196 = mul nsw i32 2, %141
  %idxprom197 = sext i32 %mul196 to i64
  %arrayidx198 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i64 %idxprom197
  store i32 1, i32* %arrayidx198, align 4
  %142 = load i32, i32* %cdir, align 4
  %mul199 = mul nsw i32 2, %142
  %add200 = add nsw i32 %mul199, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i64 %idxprom201
  store i32 1, i32* %arrayidx202, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.243, %if.end.182
  %143 = load i32, i32* %l, align 4
  %144 = load i32, i32* %num_levels, align 4
  %sub204 = sub nsw i32 %144, 1
  %cmp205 = icmp slt i32 %143, %sub204
  br i1 %cmp205, label %for.body.207, label %for.end.245

for.body.207:                                     ; preds = %for.cond.203
  %145 = load i32, i32* %l, align 4
  %idxprom208 = sext i32 %145 to i64
  %146 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx209 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %146, i64 %idxprom208
  %147 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx209, align 8
  %148 = load i32, i32* %l, align 4
  %add210 = add nsw i32 %148, 1
  %idxprom211 = sext i32 %add210 to i64
  %149 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx212 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %149, i64 %idxprom211
  %150 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx212, align 8
  %151 = load i32, i32* %cdir, align 4
  %call213 = call %struct.hypre_StructMatrix_struct* @hypre_CycRedCreateCoarseOp(%struct.hypre_StructMatrix_struct* %147, %struct.hypre_StructGrid_struct* %150, i32 %151)
  %152 = load i32, i32* %l, align 4
  %add214 = add nsw i32 %152, 1
  %idxprom215 = sext i32 %add214 to i64
  %153 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx216 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %153, i64 %idxprom215
  store %struct.hypre_StructMatrix_struct* %call213, %struct.hypre_StructMatrix_struct** %arrayidx216, align 8
  %154 = load i32, i32* %l, align 4
  %add217 = add nsw i32 %154, 1
  %idxprom218 = sext i32 %add217 to i64
  %155 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx219 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %155, i64 %idxprom218
  %156 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx219, align 8
  %data_size220 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %156, i32 0, i32 8
  %157 = load i32, i32* %data_size220, align 4
  %158 = load i32, i32* %data_size, align 4
  %add221 = add nsw i32 %158, %157
  store i32 %add221, i32* %data_size, align 4
  %159 = load i32, i32* %comm, align 4
  %160 = load i32, i32* %l, align 4
  %add222 = add nsw i32 %160, 1
  %idxprom223 = sext i32 %add222 to i64
  %161 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx224 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %161, i64 %idxprom223
  %162 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx224, align 8
  %call225 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %159, %struct.hypre_StructGrid_struct* %162)
  %163 = load i32, i32* %l, align 4
  %add226 = add nsw i32 %163, 1
  %idxprom227 = sext i32 %add226 to i64
  %164 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx228 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %164, i64 %idxprom227
  store %struct.hypre_StructVector_struct* %call225, %struct.hypre_StructVector_struct** %arrayidx228, align 8
  %165 = load i32, i32* %l, align 4
  %add229 = add nsw i32 %165, 1
  %idxprom230 = sext i32 %add229 to i64
  %166 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx231 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %166, i64 %idxprom230
  %167 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx231, align 8
  %arraydecay232 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i32 0
  %call233 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %167, i32* %arraydecay232)
  %168 = load i32, i32* %l, align 4
  %add234 = add nsw i32 %168, 1
  %idxprom235 = sext i32 %add234 to i64
  %169 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx236 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %169, i64 %idxprom235
  %170 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx236, align 8
  %call237 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %170)
  %171 = load i32, i32* %l, align 4
  %add238 = add nsw i32 %171, 1
  %idxprom239 = sext i32 %add238 to i64
  %172 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx240 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %172, i64 %idxprom239
  %173 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx240, align 8
  %data_size241 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %173, i32 0, i32 5
  %174 = load i32, i32* %data_size241, align 4
  %175 = load i32, i32* %data_size, align 4
  %add242 = add nsw i32 %175, %174
  store i32 %add242, i32* %data_size, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.body.207
  %176 = load i32, i32* %l, align 4
  %inc244 = add nsw i32 %176, 1
  store i32 %inc244, i32* %l, align 4
  br label %for.cond.203

for.end.245:                                      ; preds = %for.cond.203
  %177 = load i32, i32* %data_size, align 4
  %call246 = call i8* @hypre_CAlloc(i32 %177, i32 8)
  %178 = bitcast i8* %call246 to double*
  store double* %178, double** %data, align 8
  %179 = load double*, double** %data, align 8
  %180 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %data247 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %180, i32 0, i32 8
  store double* %179, double** %data247, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.275, %for.end.245
  %181 = load i32, i32* %l, align 4
  %182 = load i32, i32* %num_levels, align 4
  %sub249 = sub nsw i32 %182, 1
  %cmp250 = icmp slt i32 %181, %sub249
  br i1 %cmp250, label %for.body.252, label %for.end.277

for.body.252:                                     ; preds = %for.cond.248
  %183 = load i32, i32* %l, align 4
  %add253 = add nsw i32 %183, 1
  %idxprom254 = sext i32 %add253 to i64
  %184 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx255 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %184, i64 %idxprom254
  %185 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx255, align 8
  %186 = load double*, double** %data, align 8
  %call256 = call i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct* %185, double* %186)
  %187 = load i32, i32* %l, align 4
  %add257 = add nsw i32 %187, 1
  %idxprom258 = sext i32 %add257 to i64
  %188 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx259 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %188, i64 %idxprom258
  %189 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx259, align 8
  %data_size260 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %189, i32 0, i32 8
  %190 = load i32, i32* %data_size260, align 4
  %191 = load double*, double** %data, align 8
  %idx.ext = sext i32 %190 to i64
  %add.ptr = getelementptr inbounds double, double* %191, i64 %idx.ext
  store double* %add.ptr, double** %data, align 8
  %192 = load i32, i32* %l, align 4
  %add261 = add nsw i32 %192, 1
  %idxprom262 = sext i32 %add261 to i64
  %193 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx263 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %193, i64 %idxprom262
  %194 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx263, align 8
  %195 = load double*, double** %data, align 8
  %call264 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %194, double* %195)
  %196 = load i32, i32* %l, align 4
  %add265 = add nsw i32 %196, 1
  %idxprom266 = sext i32 %add265 to i64
  %197 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx267 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %197, i64 %idxprom266
  %198 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx267, align 8
  %call268 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %198)
  %199 = load i32, i32* %l, align 4
  %add269 = add nsw i32 %199, 1
  %idxprom270 = sext i32 %add269 to i64
  %200 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx271 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %200, i64 %idxprom270
  %201 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx271, align 8
  %data_size272 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %201, i32 0, i32 5
  %202 = load i32, i32* %data_size272, align 4
  %203 = load double*, double** %data, align 8
  %idx.ext273 = sext i32 %202 to i64
  %add.ptr274 = getelementptr inbounds double, double* %203, i64 %idx.ext273
  store double* %add.ptr274, double** %data, align 8
  br label %for.inc.275

for.inc.275:                                      ; preds = %for.body.252
  %204 = load i32, i32* %l, align 4
  %inc276 = add nsw i32 %204, 1
  store i32 %inc276, i32* %l, align 4
  br label %for.cond.248

for.end.277:                                      ; preds = %for.cond.248
  %205 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %206 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l278 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %206, i32 0, i32 9
  store %struct.hypre_StructMatrix_struct** %205, %struct.hypre_StructMatrix_struct*** %A_l278, align 8
  %207 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %208 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l279 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %208, i32 0, i32 10
  store %struct.hypre_StructVector_struct** %207, %struct.hypre_StructVector_struct*** %x_l279, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.327, %for.end.277
  %209 = load i32, i32* %l, align 4
  %210 = load i32, i32* %num_levels, align 4
  %sub281 = sub nsw i32 %210, 1
  %cmp282 = icmp slt i32 %209, %sub281
  br i1 %cmp282, label %for.body.284, label %for.end.329

for.body.284:                                     ; preds = %for.cond.280
  %211 = load i32, i32* %l, align 4
  %cmp285 = icmp sgt i32 %211, 0
  br i1 %cmp285, label %if.then.287, label %if.else.291

if.then.287:                                      ; preds = %for.body.284
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx288, align 4
  %arrayidx289 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx289, align 4
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx290, align 4
  br label %if.end.298

if.else.291:                                      ; preds = %for.body.284
  %212 = load i32*, i32** %base_index, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %212, i64 0
  %213 = load i32, i32* %arrayidx292, align 4
  %arrayidx293 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %213, i32* %arrayidx293, align 4
  %214 = load i32*, i32** %base_index, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %214, i64 1
  %215 = load i32, i32* %arrayidx294, align 4
  %arrayidx295 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %215, i32* %arrayidx295, align 4
  %216 = load i32*, i32** %base_index, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %216, i64 2
  %217 = load i32, i32* %arrayidx296, align 4
  %arrayidx297 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %217, i32* %arrayidx297, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.291, %if.then.287
  %218 = load i32, i32* %cdir, align 4
  %idxprom299 = sext i32 %218 to i64
  %arrayidx300 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom299
  %219 = load i32, i32* %arrayidx300, align 4
  %add301 = add nsw i32 %219, 0
  store i32 %add301, i32* %arrayidx300, align 4
  %220 = load i32, i32* %l, align 4
  %cmp302 = icmp sgt i32 %220, 0
  br i1 %cmp302, label %if.then.304, label %if.else.308

if.then.304:                                      ; preds = %if.end.298
  %arrayidx305 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx305, align 4
  %arrayidx306 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx306, align 4
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx307, align 4
  br label %if.end.315

if.else.308:                                      ; preds = %if.end.298
  %221 = load i32*, i32** %base_stride, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %221, i64 0
  %222 = load i32, i32* %arrayidx309, align 4
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %222, i32* %arrayidx310, align 4
  %223 = load i32*, i32** %base_stride, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %223, i64 1
  %224 = load i32, i32* %arrayidx311, align 4
  %arrayidx312 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %224, i32* %arrayidx312, align 4
  %225 = load i32*, i32** %base_stride, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %225, i64 2
  %226 = load i32, i32* %arrayidx313, align 4
  %arrayidx314 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %226, i32* %arrayidx314, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.308, %if.then.304
  %227 = load i32, i32* %cdir, align 4
  %idxprom316 = sext i32 %227 to i64
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom316
  %228 = load i32, i32* %arrayidx317, align 4
  %mul318 = mul nsw i32 %228, 2
  store i32 %mul318, i32* %arrayidx317, align 4
  %229 = load i32, i32* %l, align 4
  %idxprom319 = sext i32 %229 to i64
  %230 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx320 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %230, i64 %idxprom319
  %231 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx320, align 8
  %232 = load i32, i32* %l, align 4
  %add321 = add nsw i32 %232, 1
  %idxprom322 = sext i32 %add321 to i64
  %233 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx323 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %233, i64 %idxprom322
  %234 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx323, align 8
  %arraydecay324 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay325 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call326 = call i32 @hypre_CycRedSetupCoarseOp(%struct.hypre_StructMatrix_struct* %231, %struct.hypre_StructMatrix_struct* %234, i32* %arraydecay324, i32* %arraydecay325)
  br label %for.inc.327

for.inc.327:                                      ; preds = %if.end.315
  %235 = load i32, i32* %l, align 4
  %inc328 = add nsw i32 %235, 1
  store i32 %inc328, i32* %l, align 4
  br label %for.cond.280

for.end.329:                                      ; preds = %for.cond.280
  %236 = load i32, i32* %num_levels, align 4
  %sub330 = sub nsw i32 %236, 1
  %conv331 = sext i32 %sub330 to i64
  %mul332 = mul i64 8, %conv331
  %conv333 = trunc i64 %mul332 to i32
  %call334 = call i8* @hypre_MAlloc(i32 %conv333)
  %237 = bitcast i8* %call334 to %struct.hypre_ComputePkg_struct**
  store %struct.hypre_ComputePkg_struct** %237, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %238 = load i32, i32* %num_levels, align 4
  %sub335 = sub nsw i32 %238, 1
  %conv336 = sext i32 %sub335 to i64
  %mul337 = mul i64 8, %conv336
  %conv338 = trunc i64 %mul337 to i32
  %call339 = call i8* @hypre_MAlloc(i32 %conv338)
  %239 = bitcast i8* %call339 to %struct.hypre_ComputePkg_struct**
  store %struct.hypre_ComputePkg_struct** %239, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.452, %for.end.329
  %240 = load i32, i32* %l, align 4
  %241 = load i32, i32* %num_levels, align 4
  %sub341 = sub nsw i32 %241, 1
  %cmp342 = icmp slt i32 %240, %sub341
  br i1 %cmp342, label %for.body.344, label %for.end.454

for.body.344:                                     ; preds = %for.cond.340
  %242 = load i32, i32* %l, align 4
  %cmp345 = icmp sgt i32 %242, 0
  br i1 %cmp345, label %if.then.347, label %if.else.351

if.then.347:                                      ; preds = %for.body.344
  %arrayidx348 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx348, align 4
  %arrayidx349 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx349, align 4
  %arrayidx350 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx350, align 4
  br label %if.end.358

if.else.351:                                      ; preds = %for.body.344
  %243 = load i32*, i32** %base_index, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %243, i64 0
  %244 = load i32, i32* %arrayidx352, align 4
  %arrayidx353 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %244, i32* %arrayidx353, align 4
  %245 = load i32*, i32** %base_index, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %245, i64 1
  %246 = load i32, i32* %arrayidx354, align 4
  %arrayidx355 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %246, i32* %arrayidx355, align 4
  %247 = load i32*, i32** %base_index, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %247, i64 2
  %248 = load i32, i32* %arrayidx356, align 4
  %arrayidx357 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %248, i32* %arrayidx357, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.351, %if.then.347
  %249 = load i32, i32* %cdir, align 4
  %idxprom359 = sext i32 %249 to i64
  %arrayidx360 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom359
  %250 = load i32, i32* %arrayidx360, align 4
  %add361 = add nsw i32 %250, 0
  store i32 %add361, i32* %arrayidx360, align 4
  %251 = load i32, i32* %l, align 4
  %cmp362 = icmp sgt i32 %251, 0
  br i1 %cmp362, label %if.then.364, label %if.else.368

if.then.364:                                      ; preds = %if.end.358
  %arrayidx365 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 0, i32* %arrayidx365, align 4
  %arrayidx366 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 0, i32* %arrayidx366, align 4
  %arrayidx367 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 0, i32* %arrayidx367, align 4
  br label %if.end.375

if.else.368:                                      ; preds = %if.end.358
  %252 = load i32*, i32** %base_index, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %252, i64 0
  %253 = load i32, i32* %arrayidx369, align 4
  %arrayidx370 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 %253, i32* %arrayidx370, align 4
  %254 = load i32*, i32** %base_index, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %254, i64 1
  %255 = load i32, i32* %arrayidx371, align 4
  %arrayidx372 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 %255, i32* %arrayidx372, align 4
  %256 = load i32*, i32** %base_index, align 8
  %arrayidx373 = getelementptr inbounds i32, i32* %256, i64 2
  %257 = load i32, i32* %arrayidx373, align 4
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 %257, i32* %arrayidx374, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.368, %if.then.364
  %258 = load i32, i32* %cdir, align 4
  %idxprom376 = sext i32 %258 to i64
  %arrayidx377 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 %idxprom376
  %259 = load i32, i32* %arrayidx377, align 4
  %add378 = add nsw i32 %259, 1
  store i32 %add378, i32* %arrayidx377, align 4
  %260 = load i32, i32* %l, align 4
  %cmp379 = icmp sgt i32 %260, 0
  br i1 %cmp379, label %if.then.381, label %if.else.385

if.then.381:                                      ; preds = %if.end.375
  %arrayidx382 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx382, align 4
  %arrayidx383 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx383, align 4
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx384, align 4
  br label %if.end.392

if.else.385:                                      ; preds = %if.end.375
  %261 = load i32*, i32** %base_stride, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %261, i64 0
  %262 = load i32, i32* %arrayidx386, align 4
  %arrayidx387 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %262, i32* %arrayidx387, align 4
  %263 = load i32*, i32** %base_stride, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %263, i64 1
  %264 = load i32, i32* %arrayidx388, align 4
  %arrayidx389 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %264, i32* %arrayidx389, align 4
  %265 = load i32*, i32** %base_stride, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %265, i64 2
  %266 = load i32, i32* %arrayidx390, align 4
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %266, i32* %arrayidx391, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.else.385, %if.then.381
  %267 = load i32, i32* %cdir, align 4
  %idxprom393 = sext i32 %267 to i64
  %arrayidx394 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom393
  %268 = load i32, i32* %arrayidx394, align 4
  %mul395 = mul nsw i32 %268, 2
  store i32 %mul395, i32* %arrayidx394, align 4
  %269 = load i32, i32* %l, align 4
  %idxprom396 = sext i32 %269 to i64
  %270 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx397 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %270, i64 %idxprom396
  %271 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx397, align 8
  %272 = load i32, i32* %l, align 4
  %idxprom398 = sext i32 %272 to i64
  %273 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx399 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %273, i64 %idxprom398
  %274 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx399, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %274, i32 0, i32 3
  %275 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call400 = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %271, %struct.hypre_StructStencil_struct* %275, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %276 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %arraydecay401 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay402 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call403 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %276, i32* %arraydecay401, i32* %arraydecay402)
  %277 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay404 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay405 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call406 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %277, i32* %arraydecay404, i32* %arraydecay405)
  %278 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %arraydecay407 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay408 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call409 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %278, i32* %arraydecay407, i32* %arraydecay408)
  %279 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %arraydecay410 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay411 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call412 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %279, i32* %arraydecay410, i32* %arraydecay411)
  %280 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %281 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay413 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay414 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %282 = load i32**, i32*** %send_processes, align 8
  %283 = load i32**, i32*** %recv_processes, align 8
  %284 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %285 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %arraydecay415 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %286 = load i32, i32* %l, align 4
  %idxprom416 = sext i32 %286 to i64
  %287 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx417 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %287, i64 %idxprom416
  %288 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx417, align 8
  %289 = load i32, i32* %l, align 4
  %idxprom418 = sext i32 %289 to i64
  %290 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx419 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %290, i64 %idxprom418
  %291 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx419, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %291, i32 0, i32 2
  %292 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %293 = load i32, i32* %l, align 4
  %idxprom420 = sext i32 %293 to i64
  %294 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %arrayidx421 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %294, i64 %idxprom420
  %call422 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %280, %struct.hypre_BoxArrayArray_struct* %281, i32* %arraydecay413, i32* %arraydecay414, i32** %282, i32** %283, %struct.hypre_BoxArrayArray_struct* %284, %struct.hypre_BoxArrayArray_struct* %285, i32* %arraydecay415, %struct.hypre_StructGrid_struct* %288, %struct.hypre_BoxArray_struct* %292, i32 1, %struct.hypre_ComputePkg_struct** %arrayidx421)
  %295 = load i32, i32* %l, align 4
  %idxprom423 = sext i32 %295 to i64
  %296 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx424 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %296, i64 %idxprom423
  %297 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx424, align 8
  %298 = load i32, i32* %l, align 4
  %idxprom425 = sext i32 %298 to i64
  %299 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx426 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %299, i64 %idxprom425
  %300 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx426, align 8
  %stencil427 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %300, i32 0, i32 3
  %301 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil427, align 8
  %call428 = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %297, %struct.hypre_StructStencil_struct* %301, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %302 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %arraydecay429 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay430 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call431 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %302, i32* %arraydecay429, i32* %arraydecay430)
  %303 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay432 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay433 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call434 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %303, i32* %arraydecay432, i32* %arraydecay433)
  %304 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %arraydecay435 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay436 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call437 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %304, i32* %arraydecay435, i32* %arraydecay436)
  %305 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %arraydecay438 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay439 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call440 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %305, i32* %arraydecay438, i32* %arraydecay439)
  %306 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %307 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay441 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay442 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %308 = load i32**, i32*** %send_processes, align 8
  %309 = load i32**, i32*** %recv_processes, align 8
  %310 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %311 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %arraydecay443 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %312 = load i32, i32* %l, align 4
  %idxprom444 = sext i32 %312 to i64
  %313 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx445 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %313, i64 %idxprom444
  %314 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx445, align 8
  %315 = load i32, i32* %l, align 4
  %idxprom446 = sext i32 %315 to i64
  %316 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx447 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %316, i64 %idxprom446
  %317 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx447, align 8
  %data_space448 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %317, i32 0, i32 2
  %318 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space448, align 8
  %319 = load i32, i32* %l, align 4
  %idxprom449 = sext i32 %319 to i64
  %320 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %arrayidx450 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %320, i64 %idxprom449
  %call451 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %306, %struct.hypre_BoxArrayArray_struct* %307, i32* %arraydecay441, i32* %arraydecay442, i32** %308, i32** %309, %struct.hypre_BoxArrayArray_struct* %310, %struct.hypre_BoxArrayArray_struct* %311, i32* %arraydecay443, %struct.hypre_StructGrid_struct* %314, %struct.hypre_BoxArray_struct* %318, i32 1, %struct.hypre_ComputePkg_struct** %arrayidx450)
  br label %for.inc.452

for.inc.452:                                      ; preds = %if.end.392
  %321 = load i32, i32* %l, align 4
  %inc453 = add nsw i32 %321, 1
  store i32 %inc453, i32* %l, align 4
  br label %for.cond.340

for.end.454:                                      ; preds = %for.cond.340
  %322 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %323 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %down_compute_pkg_l455 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %323, i32 0, i32 11
  store %struct.hypre_ComputePkg_struct** %322, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l455, align 8
  %324 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %325 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %up_compute_pkg_l456 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %325, i32 0, i32 12
  store %struct.hypre_ComputePkg_struct** %324, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l456, align 8
  %326 = load i32*, i32** %base_stride, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %326, i64 0
  %327 = load i32, i32* %arrayidx457, align 4
  %328 = load i32*, i32** %base_stride, align 8
  %arrayidx458 = getelementptr inbounds i32, i32* %328, i64 1
  %329 = load i32, i32* %arrayidx458, align 4
  %mul459 = mul nsw i32 %327, %329
  %330 = load i32*, i32** %base_stride, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %330, i64 2
  %331 = load i32, i32* %arrayidx460, align 4
  %mul461 = mul nsw i32 %mul459, %331
  store i32 %mul461, i32* %flop_divisor, align 4
  %332 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx462 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %332, i64 0
  %333 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx462, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %333, i32 0, i32 8
  %334 = load i32, i32* %global_size, align 4
  %div = sdiv i32 %334, 2
  %335 = load i32, i32* %flop_divisor, align 4
  %div463 = sdiv i32 %div, %335
  %336 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %solve_flops = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %336, i32 0, i32 14
  store i32 %div463, i32* %solve_flops, align 4
  %337 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx464 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %337, i64 0
  %338 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx464, align 8
  %global_size465 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %338, i32 0, i32 8
  %339 = load i32, i32* %global_size465, align 4
  %mul466 = mul nsw i32 5, %339
  %div467 = sdiv i32 %mul466, 2
  %340 = load i32, i32* %flop_divisor, align 4
  %div468 = sdiv i32 %div467, %340
  %341 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %solve_flops469 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %341, i32 0, i32 14
  %342 = load i32, i32* %solve_flops469, align 4
  %add470 = add nsw i32 %342, %div468
  store i32 %add470, i32* %solve_flops469, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.471

for.cond.471:                                     ; preds = %for.inc.483, %for.end.454
  %343 = load i32, i32* %l, align 4
  %344 = load i32, i32* %num_levels, align 4
  %sub472 = sub nsw i32 %344, 1
  %cmp473 = icmp slt i32 %343, %sub472
  br i1 %cmp473, label %for.body.475, label %for.end.485

for.body.475:                                     ; preds = %for.cond.471
  %345 = load i32, i32* %l, align 4
  %idxprom476 = sext i32 %345 to i64
  %346 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx477 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %346, i64 %idxprom476
  %347 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx477, align 8
  %global_size478 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %347, i32 0, i32 8
  %348 = load i32, i32* %global_size478, align 4
  %mul479 = mul nsw i32 10, %348
  %div480 = sdiv i32 %mul479, 2
  %349 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %solve_flops481 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %349, i32 0, i32 14
  %350 = load i32, i32* %solve_flops481, align 4
  %add482 = add nsw i32 %350, %div480
  store i32 %add482, i32* %solve_flops481, align 4
  br label %for.inc.483

for.inc.483:                                      ; preds = %for.body.475
  %351 = load i32, i32* %l, align 4
  %inc484 = add nsw i32 %351, 1
  store i32 %inc484, i32* %l, align 4
  br label %for.cond.471

for.end.485:                                      ; preds = %for.cond.471
  %352 = load i32, i32* %num_levels, align 4
  %cmp486 = icmp sgt i32 %352, 1
  br i1 %cmp486, label %if.then.488, label %if.end.495

if.then.488:                                      ; preds = %for.end.485
  %353 = load i32, i32* %l, align 4
  %idxprom489 = sext i32 %353 to i64
  %354 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx490 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %354, i64 %idxprom489
  %355 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx490, align 8
  %global_size491 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %355, i32 0, i32 8
  %356 = load i32, i32* %global_size491, align 4
  %div492 = sdiv i32 %356, 2
  %357 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %solve_flops493 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %357, i32 0, i32 14
  %358 = load i32, i32* %solve_flops493, align 4
  %add494 = add nsw i32 %358, %div492
  store i32 %add494, i32* %solve_flops493, align 4
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.488, %for.end.485
  %359 = load i32, i32* %ierr, align 4
  ret i32 %359
}

declare %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct*) #1

declare i32 @hypre_Log2(i32) #1

declare i8* @hypre_MAlloc(i32) #1

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #1

declare i32 @hypre_ProjectBox(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_StructMapFineToCoarse(i32*, i32*, i32*, i32*) #1

declare i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct*, i32*, i32*, i32, %struct.hypre_StructGrid_struct**) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct*, i32*, i32*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct*, i32*) #1

declare i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct*, double*) #1

declare i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct*, double*) #1

declare i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct*, i32*, i32*) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CyclicReduction(i8* %cyc_red_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %cyc_red_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %cyc_red_data = alloca %struct.hypre_CyclicReductionData*, align 8
  %num_levels = alloca i32, align 4
  %cdir = alloca i32, align 4
  %base_index = alloca i32*, align 8
  %base_stride = alloca i32*, align 8
  %base_points = alloca %struct.hypre_BoxArray_struct*, align 8
  %fine_points_l = alloca %struct.hypre_BoxArray_struct**, align 8
  %A_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %x_l = alloca %struct.hypre_StructVector_struct**, align 8
  %down_compute_pkg_l = alloca %struct.hypre_ComputePkg_struct**, align 8
  %up_compute_pkg_l = alloca %struct.hypre_ComputePkg_struct**, align 8
  %fgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %fgrid_ids = alloca i32*, align 8
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cgrid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cgrid_ids = alloca i32*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %A_dbox = alloca %struct.hypre_Box_struct*, align 8
  %x_dbox = alloca %struct.hypre_Box_struct*, align 8
  %b_dbox = alloca %struct.hypre_Box_struct*, align 8
  %xc_dbox = alloca %struct.hypre_Box_struct*, align 8
  %Ap = alloca double*, align 8
  %Awp = alloca double*, align 8
  %Aep = alloca double*, align 8
  %xp = alloca double*, align 8
  %xwp = alloca double*, align 8
  %xep = alloca double*, align 8
  %bp = alloca double*, align 8
  %xcp = alloca double*, align 8
  %Ai = alloca i32, align 4
  %xi = alloca i32, align 4
  %bi = alloca i32, align 4
  %xci = alloca i32, align 4
  %cindex = alloca [3 x i32], align 4
  %stride = alloca [3 x i32], align 4
  %index = alloca [3 x i32], align 4
  %loop_size = alloca [3 x i32], align 4
  %start = alloca [3 x i32], align 4
  %startc = alloca [3 x i32], align 4
  %stridec = alloca [3 x i32], align 4
  %compute_i = alloca i32, align 4
  %fi = alloca i32, align 4
  %ci = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %ierr = alloca i32, align 4
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
  %hypre__i1start447 = alloca i32, align 4
  %hypre__i2start498 = alloca i32, align 4
  %hypre__sx1549 = alloca i32, align 4
  %hypre__sy1551 = alloca i32, align 4
  %hypre__sz1571 = alloca i32, align 4
  %hypre__sx2609 = alloca i32, align 4
  %hypre__sy2611 = alloca i32, align 4
  %hypre__sz2631 = alloca i32, align 4
  %hypre__nx669 = alloca i32, align 4
  %hypre__ny671 = alloca i32, align 4
  %hypre__nz673 = alloca i32, align 4
  %hypre__mx675 = alloca i32, align 4
  %hypre__my676 = alloca i32, align 4
  %hypre__mz677 = alloca i32, align 4
  %hypre__dir678 = alloca i32, align 4
  %hypre__max679 = alloca i32, align 4
  %hypre__div680 = alloca i32, align 4
  %hypre__mod681 = alloca i32, align 4
  %hypre__block682 = alloca i32, align 4
  %hypre__num_blocks683 = alloca i32, align 4
  %hypre__i1start1024 = alloca i32, align 4
  %hypre__i2start1075 = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__sx11176 = alloca i32, align 4
  %hypre__sy11178 = alloca i32, align 4
  %hypre__sz11198 = alloca i32, align 4
  %hypre__sx21236 = alloca i32, align 4
  %hypre__sy21238 = alloca i32, align 4
  %hypre__sz21258 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__nx1353 = alloca i32, align 4
  %hypre__ny1355 = alloca i32, align 4
  %hypre__nz1357 = alloca i32, align 4
  %hypre__mx1359 = alloca i32, align 4
  %hypre__my1360 = alloca i32, align 4
  %hypre__mz1361 = alloca i32, align 4
  %hypre__dir1362 = alloca i32, align 4
  %hypre__max1363 = alloca i32, align 4
  %hypre__div1364 = alloca i32, align 4
  %hypre__mod1365 = alloca i32, align 4
  %hypre__block1366 = alloca i32, align 4
  %hypre__num_blocks1367 = alloca i32, align 4
  %hypre__i1start1630 = alloca i32, align 4
  %hypre__i2start1681 = alloca i32, align 4
  %hypre__sx11732 = alloca i32, align 4
  %hypre__sy11734 = alloca i32, align 4
  %hypre__sz11754 = alloca i32, align 4
  %hypre__sx21792 = alloca i32, align 4
  %hypre__sy21794 = alloca i32, align 4
  %hypre__sz21814 = alloca i32, align 4
  %hypre__nx1852 = alloca i32, align 4
  %hypre__ny1854 = alloca i32, align 4
  %hypre__nz1856 = alloca i32, align 4
  %hypre__mx1858 = alloca i32, align 4
  %hypre__my1859 = alloca i32, align 4
  %hypre__mz1860 = alloca i32, align 4
  %hypre__dir1861 = alloca i32, align 4
  %hypre__max1862 = alloca i32, align 4
  %hypre__div1863 = alloca i32, align 4
  %hypre__mod1864 = alloca i32, align 4
  %hypre__block1865 = alloca i32, align 4
  %hypre__num_blocks1866 = alloca i32, align 4
  %hypre__i1start2176 = alloca i32, align 4
  %hypre__i2start2227 = alloca i32, align 4
  %hypre__sx12278 = alloca i32, align 4
  %hypre__sy12280 = alloca i32, align 4
  %hypre__sz12300 = alloca i32, align 4
  %hypre__sx22338 = alloca i32, align 4
  %hypre__sy22340 = alloca i32, align 4
  %hypre__sz22360 = alloca i32, align 4
  %hypre__nx2398 = alloca i32, align 4
  %hypre__ny2400 = alloca i32, align 4
  %hypre__nz2402 = alloca i32, align 4
  %hypre__mx2404 = alloca i32, align 4
  %hypre__my2405 = alloca i32, align 4
  %hypre__mz2406 = alloca i32, align 4
  %hypre__dir2407 = alloca i32, align 4
  %hypre__max2408 = alloca i32, align 4
  %hypre__div2409 = alloca i32, align 4
  %hypre__mod2410 = alloca i32, align 4
  %hypre__block2411 = alloca i32, align 4
  %hypre__num_blocks2412 = alloca i32, align 4
  store i8* %cyc_red_vdata, i8** %cyc_red_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %cyc_red_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_CyclicReductionData*
  store %struct.hypre_CyclicReductionData* %1, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %2 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %num_levels1 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %2, i32 0, i32 1
  %3 = load i32, i32* %num_levels1, align 4
  store i32 %3, i32* %num_levels, align 4
  %4 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %cdir2 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %4, i32 0, i32 2
  %5 = load i32, i32* %cdir2, align 4
  store i32 %5, i32* %cdir, align 4
  %6 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index3 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index3, i32 0, i32 0
  store i32* %arraydecay, i32** %base_index, align 8
  %7 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride4 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %7, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride4, i32 0, i32 0
  store i32* %arraydecay5, i32** %base_stride, align 8
  %8 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_points6 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %8, i32 0, i32 6
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points6, align 8
  store %struct.hypre_BoxArray_struct* %9, %struct.hypre_BoxArray_struct** %base_points, align 8
  %10 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l7 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %10, i32 0, i32 7
  %11 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l7, align 8
  store %struct.hypre_BoxArray_struct** %11, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %12 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l8 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %12, i32 0, i32 9
  %13 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l8, align 8
  store %struct.hypre_StructMatrix_struct** %13, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %14 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l9 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %14, i32 0, i32 10
  %15 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l9, align 8
  store %struct.hypre_StructVector_struct** %15, %struct.hypre_StructVector_struct*** %x_l, align 8
  %16 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %down_compute_pkg_l10 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %16, i32 0, i32 11
  %17 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l10, align 8
  store %struct.hypre_ComputePkg_struct** %17, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %18 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %up_compute_pkg_l11 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %18, i32 0, i32 12
  %19 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l11, align 8
  store %struct.hypre_ComputePkg_struct** %19, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  store i32 0, i32* %ierr, align 4
  %20 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %20, i32 0, i32 13
  %21 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %21)
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx13, align 4
  %22 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx14 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %22, i64 0
  %23 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx14, align 8
  %call15 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %23)
  %24 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %24, i64 0
  %25 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx16, align 8
  %call17 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %25)
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call18 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %26)
  %27 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx19 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %27, i64 0
  store %struct.hypre_StructMatrix_struct* %call18, %struct.hypre_StructMatrix_struct** %arrayidx19, align 8
  %28 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call20 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %28)
  %29 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx21 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %29, i64 0
  store %struct.hypre_StructVector_struct* %call20, %struct.hypre_StructVector_struct** %arrayidx21, align 8
  %30 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  store %struct.hypre_BoxArray_struct* %30, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  store i32 0, i32* %fi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.361, %entry
  %31 = load i32, i32* %fi, align 4
  %32 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %32, i32 0, i32 1
  %33 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %31, %33
  br i1 %cmp, label %for.body, label %for.end.363

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %35, i32 0, i32 0
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx22, %struct.hypre_Box_struct** %compute_box, align 8
  %37 = load i32, i32* %fi, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %38, i32 0, i32 2
  %39 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes24 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %39, i32 0, i32 0
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes24, align 8
  %arrayidx25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i64 %idxprom23
  store %struct.hypre_Box_struct* %arrayidx25, %struct.hypre_Box_struct** %x_dbox, align 8
  %41 = load i32, i32* %fi, align 4
  %idxprom26 = sext i32 %41 to i64
  %42 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_space27 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %42, i32 0, i32 2
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space27, align 8
  %boxes28 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %43, i32 0, i32 0
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes28, align 8
  %arrayidx29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i64 %idxprom26
  store %struct.hypre_Box_struct* %arrayidx29, %struct.hypre_Box_struct** %b_dbox, align 8
  %45 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %45, i32 0, i32 3
  %46 = load double*, double** %data, align 8
  %47 = load i32, i32* %fi, align 4
  %idxprom30 = sext i32 %47 to i64
  %48 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %48, i32 0, i32 6
  %49 = load i32*, i32** %data_indices, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %49, i64 %idxprom30
  %50 = load i32, i32* %arrayidx31, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds double, double* %46, i64 %idx.ext
  store double* %add.ptr, double** %xp, align 8
  %51 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data32 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %51, i32 0, i32 3
  %52 = load double*, double** %data32, align 8
  %53 = load i32, i32* %fi, align 4
  %idxprom33 = sext i32 %53 to i64
  %54 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_indices34 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %54, i32 0, i32 6
  %55 = load i32*, i32** %data_indices34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %55, i64 %idxprom33
  %56 = load i32, i32* %arrayidx35, align 4
  %idx.ext36 = sext i32 %56 to i64
  %add.ptr37 = getelementptr inbounds double, double* %52, i64 %idx.ext36
  store double* %add.ptr37, double** %bp, align 8
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %58 = load i32, i32* %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %58, i32* %arrayidx39, align 4
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imin40, i32 0, i64 1
  %60 = load i32, i32* %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %60, i32* %arrayidx42, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imin43, i32 0, i64 2
  %62 = load i32, i32* %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %62, i32* %arrayidx45, align 4
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %64 = load i32*, i32** %base_stride, align 8
  %arraydecay46 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call47 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %63, i32* %64, i32* %arraydecay46)
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %65 = load i32, i32* %arrayidx48, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %imin49, i32 0, i64 0
  %67 = load i32, i32* %arrayidx50, align 4
  %sub = sub nsw i32 %65, %67
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %68 = load i32, i32* %arrayidx51, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imin52, i32 0, i64 1
  %70 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub nsw i32 %68, %70
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %71 = load i32, i32* %arrayidx55, align 4
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imin56, i32 0, i64 2
  %73 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub nsw i32 %71, %73
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %75 = load i32, i32* %arrayidx59, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imin60, i32 0, i64 1
  %77 = load i32, i32* %arrayidx61, align 4
  %sub62 = sub nsw i32 %75, %77
  %add = add nsw i32 %sub62, 1
  %cmp63 = icmp slt i32 0, %add
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 1
  %79 = load i32, i32* %arrayidx65, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i64 1
  %81 = load i32, i32* %arrayidx67, align 4
  %sub68 = sub nsw i32 %79, %81
  %add69 = add nsw i32 %sub68, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add69, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub58, %cond
  %add70 = add nsw i32 %sub54, %mul
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %imax71, i32 0, i64 0
  %83 = load i32, i32* %arrayidx72, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i64 0
  %85 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %83, %85
  %add76 = add nsw i32 %sub75, 1
  %cmp77 = icmp slt i32 0, %add76
  br i1 %cmp77, label %cond.true.78, label %cond.false.85

cond.true.78:                                     ; preds = %cond.end
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax79 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %imax79, i32 0, i64 0
  %87 = load i32, i32* %arrayidx80, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %imin81, i32 0, i64 0
  %89 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %87, %89
  %add84 = add nsw i32 %sub83, 1
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.78
  %cond87 = phi i32 [ %add84, %cond.true.78 ], [ 0, %cond.false.85 ]
  %mul88 = mul nsw i32 %add70, %cond87
  %add89 = add nsw i32 %sub, %mul88
  store i32 %add89, i32* %hypre__i1start, align 4
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %90 = load i32, i32* %arrayidx90, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imin91, i32 0, i64 0
  %92 = load i32, i32* %arrayidx92, align 4
  %sub93 = sub nsw i32 %90, %92
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %93 = load i32, i32* %arrayidx94, align 4
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %95 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %93, %95
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %96 = load i32, i32* %arrayidx98, align 4
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imin99, i32 0, i64 2
  %98 = load i32, i32* %arrayidx100, align 4
  %sub101 = sub nsw i32 %96, %98
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 1
  %100 = load i32, i32* %arrayidx103, align 4
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 1
  %102 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %100, %102
  %add107 = add nsw i32 %sub106, 1
  %cmp108 = icmp slt i32 0, %add107
  br i1 %cmp108, label %cond.true.109, label %cond.false.116

cond.true.109:                                    ; preds = %cond.end.86
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax110, i32 0, i64 1
  %104 = load i32, i32* %arrayidx111, align 4
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin112, i32 0, i64 1
  %106 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %104, %106
  %add115 = add nsw i32 %sub114, 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.86
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.109
  %cond118 = phi i32 [ %add115, %cond.true.109 ], [ 0, %cond.false.116 ]
  %mul119 = mul nsw i32 %sub101, %cond118
  %add120 = add nsw i32 %sub97, %mul119
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imax121, i32 0, i64 0
  %108 = load i32, i32* %arrayidx122, align 4
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imin123, i32 0, i64 0
  %110 = load i32, i32* %arrayidx124, align 4
  %sub125 = sub nsw i32 %108, %110
  %add126 = add nsw i32 %sub125, 1
  %cmp127 = icmp slt i32 0, %add126
  br i1 %cmp127, label %cond.true.128, label %cond.false.135

cond.true.128:                                    ; preds = %cond.end.117
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imax129, i32 0, i64 0
  %112 = load i32, i32* %arrayidx130, align 4
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin131, i32 0, i64 0
  %114 = load i32, i32* %arrayidx132, align 4
  %sub133 = sub nsw i32 %112, %114
  %add134 = add nsw i32 %sub133, 1
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.end.117
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.128
  %cond137 = phi i32 [ %add134, %cond.true.128 ], [ 0, %cond.false.135 ]
  %mul138 = mul nsw i32 %add120, %cond137
  %add139 = add nsw i32 %sub93, %mul138
  store i32 %add139, i32* %hypre__i2start, align 4
  %115 = load i32*, i32** %base_stride, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %115, i64 0
  %116 = load i32, i32* %arrayidx140, align 4
  store i32 %116, i32* %hypre__sx1, align 4
  %117 = load i32*, i32** %base_stride, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %117, i64 1
  %118 = load i32, i32* %arrayidx141, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 0
  %120 = load i32, i32* %arrayidx143, align 4
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 0
  %122 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %120, %122
  %add147 = add nsw i32 %sub146, 1
  %cmp148 = icmp slt i32 0, %add147
  br i1 %cmp148, label %cond.true.149, label %cond.false.156

cond.true.149:                                    ; preds = %cond.end.136
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %123, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 0
  %124 = load i32, i32* %arrayidx151, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin152, i32 0, i64 0
  %126 = load i32, i32* %arrayidx153, align 4
  %sub154 = sub nsw i32 %124, %126
  %add155 = add nsw i32 %sub154, 1
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.136
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.149
  %cond158 = phi i32 [ %add155, %cond.true.149 ], [ 0, %cond.false.156 ]
  %mul159 = mul nsw i32 %118, %cond158
  store i32 %mul159, i32* %hypre__sy1, align 4
  %127 = load i32*, i32** %base_stride, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %127, i64 2
  %128 = load i32, i32* %arrayidx160, align 4
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 0
  %130 = load i32, i32* %arrayidx162, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 0
  %132 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %130, %132
  %add166 = add nsw i32 %sub165, 1
  %cmp167 = icmp slt i32 0, %add166
  br i1 %cmp167, label %cond.true.168, label %cond.false.175

cond.true.168:                                    ; preds = %cond.end.157
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax169 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %imax169, i32 0, i64 0
  %134 = load i32, i32* %arrayidx170, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imin171, i32 0, i64 0
  %136 = load i32, i32* %arrayidx172, align 4
  %sub173 = sub nsw i32 %134, %136
  %add174 = add nsw i32 %sub173, 1
  br label %cond.end.176

cond.false.175:                                   ; preds = %cond.end.157
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.175, %cond.true.168
  %cond177 = phi i32 [ %add174, %cond.true.168 ], [ 0, %cond.false.175 ]
  %mul178 = mul nsw i32 %128, %cond177
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imax179, i32 0, i64 1
  %138 = load i32, i32* %arrayidx180, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imin181, i32 0, i64 1
  %140 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub nsw i32 %138, %140
  %add184 = add nsw i32 %sub183, 1
  %cmp185 = icmp slt i32 0, %add184
  br i1 %cmp185, label %cond.true.186, label %cond.false.193

cond.true.186:                                    ; preds = %cond.end.176
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax187 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %141, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %imax187, i32 0, i64 1
  %142 = load i32, i32* %arrayidx188, align 4
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin189 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %imin189, i32 0, i64 1
  %144 = load i32, i32* %arrayidx190, align 4
  %sub191 = sub nsw i32 %142, %144
  %add192 = add nsw i32 %sub191, 1
  br label %cond.end.194

cond.false.193:                                   ; preds = %cond.end.176
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.186
  %cond195 = phi i32 [ %add192, %cond.true.186 ], [ 0, %cond.false.193 ]
  %mul196 = mul nsw i32 %mul178, %cond195
  store i32 %mul196, i32* %hypre__sz1, align 4
  %145 = load i32*, i32** %base_stride, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %145, i64 0
  %146 = load i32, i32* %arrayidx197, align 4
  store i32 %146, i32* %hypre__sx2, align 4
  %147 = load i32*, i32** %base_stride, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %147, i64 1
  %148 = load i32, i32* %arrayidx198, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 0
  %150 = load i32, i32* %arrayidx200, align 4
  %151 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %151, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 0
  %152 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %150, %152
  %add204 = add nsw i32 %sub203, 1
  %cmp205 = icmp slt i32 0, %add204
  br i1 %cmp205, label %cond.true.206, label %cond.false.213

cond.true.206:                                    ; preds = %cond.end.194
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax207, i32 0, i64 0
  %154 = load i32, i32* %arrayidx208, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imin209, i32 0, i64 0
  %156 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %154, %156
  %add212 = add nsw i32 %sub211, 1
  br label %cond.end.214

cond.false.213:                                   ; preds = %cond.end.194
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.true.206
  %cond215 = phi i32 [ %add212, %cond.true.206 ], [ 0, %cond.false.213 ]
  %mul216 = mul nsw i32 %148, %cond215
  store i32 %mul216, i32* %hypre__sy2, align 4
  %157 = load i32*, i32** %base_stride, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %157, i64 2
  %158 = load i32, i32* %arrayidx217, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %imax218, i32 0, i64 0
  %160 = load i32, i32* %arrayidx219, align 4
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin220, i32 0, i64 0
  %162 = load i32, i32* %arrayidx221, align 4
  %sub222 = sub nsw i32 %160, %162
  %add223 = add nsw i32 %sub222, 1
  %cmp224 = icmp slt i32 0, %add223
  br i1 %cmp224, label %cond.true.225, label %cond.false.232

cond.true.225:                                    ; preds = %cond.end.214
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax226 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %imax226, i32 0, i64 0
  %164 = load i32, i32* %arrayidx227, align 4
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %imin228, i32 0, i64 0
  %166 = load i32, i32* %arrayidx229, align 4
  %sub230 = sub nsw i32 %164, %166
  %add231 = add nsw i32 %sub230, 1
  br label %cond.end.233

cond.false.232:                                   ; preds = %cond.end.214
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.225
  %cond234 = phi i32 [ %add231, %cond.true.225 ], [ 0, %cond.false.232 ]
  %mul235 = mul nsw i32 %158, %cond234
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax236 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %imax236, i32 0, i64 1
  %168 = load i32, i32* %arrayidx237, align 4
  %169 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %169, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imin238, i32 0, i64 1
  %170 = load i32, i32* %arrayidx239, align 4
  %sub240 = sub nsw i32 %168, %170
  %add241 = add nsw i32 %sub240, 1
  %cmp242 = icmp slt i32 0, %add241
  br i1 %cmp242, label %cond.true.243, label %cond.false.250

cond.true.243:                                    ; preds = %cond.end.233
  %171 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imax244 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %171, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %imax244, i32 0, i64 1
  %172 = load i32, i32* %arrayidx245, align 4
  %173 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_dbox, align 8
  %imin246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %173, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %imin246, i32 0, i64 1
  %174 = load i32, i32* %arrayidx247, align 4
  %sub248 = sub nsw i32 %172, %174
  %add249 = add nsw i32 %sub248, 1
  br label %cond.end.251

cond.false.250:                                   ; preds = %cond.end.233
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.243
  %cond252 = phi i32 [ %add249, %cond.true.243 ], [ 0, %cond.false.250 ]
  %mul253 = mul nsw i32 %mul235, %cond252
  store i32 %mul253, i32* %hypre__sz2, align 4
  %arrayidx254 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %175 = load i32, i32* %arrayidx254, align 4
  store i32 %175, i32* %hypre__nx, align 4
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %176 = load i32, i32* %arrayidx255, align 4
  store i32 %176, i32* %hypre__ny, align 4
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %177 = load i32, i32* %arrayidx256, align 4
  store i32 %177, i32* %hypre__nz, align 4
  %178 = load i32, i32* %hypre__nx, align 4
  store i32 %178, i32* %hypre__mx, align 4
  %179 = load i32, i32* %hypre__ny, align 4
  store i32 %179, i32* %hypre__my, align 4
  %180 = load i32, i32* %hypre__nz, align 4
  store i32 %180, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %181 = load i32, i32* %hypre__nx, align 4
  store i32 %181, i32* %hypre__max, align 4
  %182 = load i32, i32* %hypre__ny, align 4
  %183 = load i32, i32* %hypre__max, align 4
  %cmp257 = icmp sgt i32 %182, %183
  br i1 %cmp257, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.251
  store i32 1, i32* %hypre__dir, align 4
  %184 = load i32, i32* %hypre__ny, align 4
  store i32 %184, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.251
  %185 = load i32, i32* %hypre__nz, align 4
  %186 = load i32, i32* %hypre__max, align 4
  %cmp258 = icmp sgt i32 %185, %186
  br i1 %cmp258, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %187 = load i32, i32* %hypre__nz, align 4
  store i32 %187, i32* %hypre__max, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %188 = load i32, i32* %hypre__max, align 4
  %189 = load i32, i32* %hypre__num_blocks, align 4
  %cmp261 = icmp slt i32 %188, %189
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.260
  %190 = load i32, i32* %hypre__max, align 4
  store i32 %190, i32* %hypre__num_blocks, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.end.260
  %191 = load i32, i32* %hypre__num_blocks, align 4
  %cmp264 = icmp sgt i32 %191, 0
  br i1 %cmp264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.263
  %192 = load i32, i32* %hypre__max, align 4
  %193 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %192, %193
  store i32 %div, i32* %hypre__div, align 4
  %194 = load i32, i32* %hypre__max, align 4
  %195 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %194, %195
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.end.263
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.358, %if.end.266
  %196 = load i32, i32* %hypre__block, align 4
  %197 = load i32, i32* %hypre__num_blocks, align 4
  %cmp268 = icmp slt i32 %196, %197
  br i1 %cmp268, label %for.body.269, label %for.end.360

for.body.269:                                     ; preds = %for.cond.267
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %198 = load i32, i32* %hypre__mx, align 4
  store i32 %198, i32* %hypre__nx, align 4
  %199 = load i32, i32* %hypre__my, align 4
  store i32 %199, i32* %hypre__ny, align 4
  %200 = load i32, i32* %hypre__mz, align 4
  store i32 %200, i32* %hypre__nz, align 4
  %201 = load i32, i32* %hypre__num_blocks, align 4
  %cmp270 = icmp sgt i32 %201, 1
  br i1 %cmp270, label %if.then.271, label %if.end.312

if.then.271:                                      ; preds = %for.body.269
  %202 = load i32, i32* %hypre__dir, align 4
  %cmp272 = icmp eq i32 %202, 0
  br i1 %cmp272, label %if.then.273, label %if.else

if.then.273:                                      ; preds = %if.then.271
  %203 = load i32, i32* %hypre__block, align 4
  %204 = load i32, i32* %hypre__div, align 4
  %mul274 = mul nsw i32 %203, %204
  %205 = load i32, i32* %hypre__mod, align 4
  %206 = load i32, i32* %hypre__block, align 4
  %cmp275 = icmp slt i32 %205, %206
  br i1 %cmp275, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %if.then.273
  %207 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.278

cond.false.277:                                   ; preds = %if.then.273
  %208 = load i32, i32* %hypre__block, align 4
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi i32 [ %207, %cond.true.276 ], [ %208, %cond.false.277 ]
  %add280 = add nsw i32 %mul274, %cond279
  store i32 %add280, i32* %loopi, align 4
  %209 = load i32, i32* %hypre__div, align 4
  %210 = load i32, i32* %hypre__mod, align 4
  %211 = load i32, i32* %hypre__block, align 4
  %cmp281 = icmp sgt i32 %210, %211
  %cond282 = select i1 %cmp281, i32 1, i32 0
  %add283 = add nsw i32 %209, %cond282
  store i32 %add283, i32* %hypre__nx, align 4
  br label %if.end.311

if.else:                                          ; preds = %if.then.271
  %212 = load i32, i32* %hypre__dir, align 4
  %cmp284 = icmp eq i32 %212, 1
  br i1 %cmp284, label %if.then.285, label %if.else.296

if.then.285:                                      ; preds = %if.else
  %213 = load i32, i32* %hypre__block, align 4
  %214 = load i32, i32* %hypre__div, align 4
  %mul286 = mul nsw i32 %213, %214
  %215 = load i32, i32* %hypre__mod, align 4
  %216 = load i32, i32* %hypre__block, align 4
  %cmp287 = icmp slt i32 %215, %216
  br i1 %cmp287, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.then.285
  %217 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.then.285
  %218 = load i32, i32* %hypre__block, align 4
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ %217, %cond.true.288 ], [ %218, %cond.false.289 ]
  %add292 = add nsw i32 %mul286, %cond291
  store i32 %add292, i32* %loopj, align 4
  %219 = load i32, i32* %hypre__div, align 4
  %220 = load i32, i32* %hypre__mod, align 4
  %221 = load i32, i32* %hypre__block, align 4
  %cmp293 = icmp sgt i32 %220, %221
  %cond294 = select i1 %cmp293, i32 1, i32 0
  %add295 = add nsw i32 %219, %cond294
  store i32 %add295, i32* %hypre__ny, align 4
  br label %if.end.310

if.else.296:                                      ; preds = %if.else
  %222 = load i32, i32* %hypre__dir, align 4
  %cmp297 = icmp eq i32 %222, 2
  br i1 %cmp297, label %if.then.298, label %if.end.309

if.then.298:                                      ; preds = %if.else.296
  %223 = load i32, i32* %hypre__block, align 4
  %224 = load i32, i32* %hypre__div, align 4
  %mul299 = mul nsw i32 %223, %224
  %225 = load i32, i32* %hypre__mod, align 4
  %226 = load i32, i32* %hypre__block, align 4
  %cmp300 = icmp slt i32 %225, %226
  br i1 %cmp300, label %cond.true.301, label %cond.false.302

cond.true.301:                                    ; preds = %if.then.298
  %227 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.303

cond.false.302:                                   ; preds = %if.then.298
  %228 = load i32, i32* %hypre__block, align 4
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.true.301
  %cond304 = phi i32 [ %227, %cond.true.301 ], [ %228, %cond.false.302 ]
  %add305 = add nsw i32 %mul299, %cond304
  store i32 %add305, i32* %loopk, align 4
  %229 = load i32, i32* %hypre__div, align 4
  %230 = load i32, i32* %hypre__mod, align 4
  %231 = load i32, i32* %hypre__block, align 4
  %cmp306 = icmp sgt i32 %230, %231
  %cond307 = select i1 %cmp306, i32 1, i32 0
  %add308 = add nsw i32 %229, %cond307
  store i32 %add308, i32* %hypre__nz, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %cond.end.303, %if.else.296
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %cond.end.290
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %cond.end.278
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %for.body.269
  %232 = load i32, i32* %hypre__i1start, align 4
  %233 = load i32, i32* %loopi, align 4
  %234 = load i32, i32* %hypre__sx1, align 4
  %mul313 = mul nsw i32 %233, %234
  %add314 = add nsw i32 %232, %mul313
  %235 = load i32, i32* %loopj, align 4
  %236 = load i32, i32* %hypre__sy1, align 4
  %mul315 = mul nsw i32 %235, %236
  %add316 = add nsw i32 %add314, %mul315
  %237 = load i32, i32* %loopk, align 4
  %238 = load i32, i32* %hypre__sz1, align 4
  %mul317 = mul nsw i32 %237, %238
  %add318 = add nsw i32 %add316, %mul317
  store i32 %add318, i32* %xi, align 4
  %239 = load i32, i32* %hypre__i2start, align 4
  %240 = load i32, i32* %loopi, align 4
  %241 = load i32, i32* %hypre__sx2, align 4
  %mul319 = mul nsw i32 %240, %241
  %add320 = add nsw i32 %239, %mul319
  %242 = load i32, i32* %loopj, align 4
  %243 = load i32, i32* %hypre__sy2, align 4
  %mul321 = mul nsw i32 %242, %243
  %add322 = add nsw i32 %add320, %mul321
  %244 = load i32, i32* %loopk, align 4
  %245 = load i32, i32* %hypre__sz2, align 4
  %mul323 = mul nsw i32 %244, %245
  %add324 = add nsw i32 %add322, %mul323
  store i32 %add324, i32* %bi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.355, %if.end.312
  %246 = load i32, i32* %loopk, align 4
  %247 = load i32, i32* %hypre__nz, align 4
  %cmp326 = icmp slt i32 %246, %247
  br i1 %cmp326, label %for.body.327, label %for.end.357

for.body.327:                                     ; preds = %for.cond.325
  store i32 0, i32* %loopj, align 4
  br label %for.cond.328

for.cond.328:                                     ; preds = %for.inc.346, %for.body.327
  %248 = load i32, i32* %loopj, align 4
  %249 = load i32, i32* %hypre__ny, align 4
  %cmp329 = icmp slt i32 %248, %249
  br i1 %cmp329, label %for.body.330, label %for.end.348

for.body.330:                                     ; preds = %for.cond.328
  store i32 0, i32* %loopi, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc, %for.body.330
  %250 = load i32, i32* %loopi, align 4
  %251 = load i32, i32* %hypre__nx, align 4
  %cmp332 = icmp slt i32 %250, %251
  br i1 %cmp332, label %for.body.333, label %for.end

for.body.333:                                     ; preds = %for.cond.331
  %252 = load i32, i32* %bi, align 4
  %idxprom334 = sext i32 %252 to i64
  %253 = load double*, double** %bp, align 8
  %arrayidx335 = getelementptr inbounds double, double* %253, i64 %idxprom334
  %254 = load double, double* %arrayidx335, align 8
  %255 = load i32, i32* %xi, align 4
  %idxprom336 = sext i32 %255 to i64
  %256 = load double*, double** %xp, align 8
  %arrayidx337 = getelementptr inbounds double, double* %256, i64 %idxprom336
  store double %254, double* %arrayidx337, align 8
  %257 = load i32, i32* %hypre__sx1, align 4
  %258 = load i32, i32* %xi, align 4
  %add338 = add nsw i32 %258, %257
  store i32 %add338, i32* %xi, align 4
  %259 = load i32, i32* %hypre__sx2, align 4
  %260 = load i32, i32* %bi, align 4
  %add339 = add nsw i32 %260, %259
  store i32 %add339, i32* %bi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.333
  %261 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %261, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.331

for.end:                                          ; preds = %for.cond.331
  %262 = load i32, i32* %hypre__sy1, align 4
  %263 = load i32, i32* %hypre__nx, align 4
  %264 = load i32, i32* %hypre__sx1, align 4
  %mul340 = mul nsw i32 %263, %264
  %sub341 = sub nsw i32 %262, %mul340
  %265 = load i32, i32* %xi, align 4
  %add342 = add nsw i32 %265, %sub341
  store i32 %add342, i32* %xi, align 4
  %266 = load i32, i32* %hypre__sy2, align 4
  %267 = load i32, i32* %hypre__nx, align 4
  %268 = load i32, i32* %hypre__sx2, align 4
  %mul343 = mul nsw i32 %267, %268
  %sub344 = sub nsw i32 %266, %mul343
  %269 = load i32, i32* %bi, align 4
  %add345 = add nsw i32 %269, %sub344
  store i32 %add345, i32* %bi, align 4
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.end
  %270 = load i32, i32* %loopj, align 4
  %inc347 = add nsw i32 %270, 1
  store i32 %inc347, i32* %loopj, align 4
  br label %for.cond.328

for.end.348:                                      ; preds = %for.cond.328
  %271 = load i32, i32* %hypre__sz1, align 4
  %272 = load i32, i32* %hypre__ny, align 4
  %273 = load i32, i32* %hypre__sy1, align 4
  %mul349 = mul nsw i32 %272, %273
  %sub350 = sub nsw i32 %271, %mul349
  %274 = load i32, i32* %xi, align 4
  %add351 = add nsw i32 %274, %sub350
  store i32 %add351, i32* %xi, align 4
  %275 = load i32, i32* %hypre__sz2, align 4
  %276 = load i32, i32* %hypre__ny, align 4
  %277 = load i32, i32* %hypre__sy2, align 4
  %mul352 = mul nsw i32 %276, %277
  %sub353 = sub nsw i32 %275, %mul352
  %278 = load i32, i32* %bi, align 4
  %add354 = add nsw i32 %278, %sub353
  store i32 %add354, i32* %bi, align 4
  br label %for.inc.355

for.inc.355:                                      ; preds = %for.end.348
  %279 = load i32, i32* %loopk, align 4
  %inc356 = add nsw i32 %279, 1
  store i32 %inc356, i32* %loopk, align 4
  br label %for.cond.325

for.end.357:                                      ; preds = %for.cond.325
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.end.357
  %280 = load i32, i32* %hypre__block, align 4
  %inc359 = add nsw i32 %280, 1
  store i32 %inc359, i32* %hypre__block, align 4
  br label %for.cond.267

for.end.360:                                      ; preds = %for.cond.267
  br label %for.inc.361

for.inc.361:                                      ; preds = %for.end.360
  %281 = load i32, i32* %fi, align 4
  %inc362 = add nsw i32 %281, 1
  store i32 %inc362, i32* %fi, align 4
  br label %for.cond

for.end.363:                                      ; preds = %for.cond
  store i32 0, i32* %l, align 4
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.1514, %for.end.363
  %282 = load i32, i32* %l, align 4
  %cmp365 = icmp sgt i32 %282, 0
  br i1 %cmp365, label %if.then.366, label %if.else.370

if.then.366:                                      ; preds = %for.cond.364
  %arrayidx367 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx367, align 4
  %arrayidx368 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx368, align 4
  %arrayidx369 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx369, align 4
  br label %if.end.377

if.else.370:                                      ; preds = %for.cond.364
  %283 = load i32*, i32** %base_index, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %283, i64 0
  %284 = load i32, i32* %arrayidx371, align 4
  %arrayidx372 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %284, i32* %arrayidx372, align 4
  %285 = load i32*, i32** %base_index, align 8
  %arrayidx373 = getelementptr inbounds i32, i32* %285, i64 1
  %286 = load i32, i32* %arrayidx373, align 4
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %286, i32* %arrayidx374, align 4
  %287 = load i32*, i32** %base_index, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %287, i64 2
  %288 = load i32, i32* %arrayidx375, align 4
  %arrayidx376 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %288, i32* %arrayidx376, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.370, %if.then.366
  %289 = load i32, i32* %cdir, align 4
  %idxprom378 = sext i32 %289 to i64
  %arrayidx379 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom378
  %290 = load i32, i32* %arrayidx379, align 4
  %add380 = add nsw i32 %290, 0
  store i32 %add380, i32* %arrayidx379, align 4
  %291 = load i32, i32* %l, align 4
  %cmp381 = icmp sgt i32 %291, 0
  br i1 %cmp381, label %if.then.382, label %if.else.386

if.then.382:                                      ; preds = %if.end.377
  %arrayidx383 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx383, align 4
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx384, align 4
  %arrayidx385 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx385, align 4
  br label %if.end.393

if.else.386:                                      ; preds = %if.end.377
  %292 = load i32*, i32** %base_stride, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %292, i64 0
  %293 = load i32, i32* %arrayidx387, align 4
  %arrayidx388 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %293, i32* %arrayidx388, align 4
  %294 = load i32*, i32** %base_stride, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %294, i64 1
  %295 = load i32, i32* %arrayidx389, align 4
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %295, i32* %arrayidx390, align 4
  %296 = load i32*, i32** %base_stride, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %296, i64 2
  %297 = load i32, i32* %arrayidx391, align 4
  %arrayidx392 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %297, i32* %arrayidx392, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.else.386, %if.then.382
  %298 = load i32, i32* %cdir, align 4
  %idxprom394 = sext i32 %298 to i64
  %arrayidx395 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom394
  %299 = load i32, i32* %arrayidx395, align 4
  %mul396 = mul nsw i32 %299, 2
  store i32 %mul396, i32* %arrayidx395, align 4
  %300 = load i32, i32* %l, align 4
  %idxprom397 = sext i32 %300 to i64
  %301 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx398 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %301, i64 %idxprom397
  %302 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx398, align 8
  store %struct.hypre_BoxArray_struct* %302, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  store i32 0, i32* %fi, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.797, %if.end.393
  %303 = load i32, i32* %fi, align 4
  %304 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size400 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %304, i32 0, i32 1
  %305 = load i32, i32* %size400, align 4
  %cmp401 = icmp slt i32 %303, %305
  br i1 %cmp401, label %for.body.402, label %for.end.799

for.body.402:                                     ; preds = %for.cond.399
  %306 = load i32, i32* %fi, align 4
  %idxprom403 = sext i32 %306 to i64
  %307 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes404 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %307, i32 0, i32 0
  %308 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes404, align 8
  %arrayidx405 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %308, i64 %idxprom403
  store %struct.hypre_Box_struct* %arrayidx405, %struct.hypre_Box_struct** %compute_box, align 8
  %309 = load i32, i32* %fi, align 4
  %idxprom406 = sext i32 %309 to i64
  %310 = load i32, i32* %l, align 4
  %idxprom407 = sext i32 %310 to i64
  %311 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx408 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %311, i64 %idxprom407
  %312 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx408, align 8
  %data_space409 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %312, i32 0, i32 5
  %313 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space409, align 8
  %boxes410 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %313, i32 0, i32 0
  %314 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes410, align 8
  %arrayidx411 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %314, i64 %idxprom406
  store %struct.hypre_Box_struct* %arrayidx411, %struct.hypre_Box_struct** %A_dbox, align 8
  %315 = load i32, i32* %fi, align 4
  %idxprom412 = sext i32 %315 to i64
  %316 = load i32, i32* %l, align 4
  %idxprom413 = sext i32 %316 to i64
  %317 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx414 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %317, i64 %idxprom413
  %318 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx414, align 8
  %data_space415 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %318, i32 0, i32 2
  %319 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space415, align 8
  %boxes416 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %319, i32 0, i32 0
  %320 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes416, align 8
  %arrayidx417 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %320, i64 %idxprom412
  store %struct.hypre_Box_struct* %arrayidx417, %struct.hypre_Box_struct** %x_dbox, align 8
  %arrayidx418 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx418, align 4
  %arrayidx419 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx419, align 4
  %arrayidx420 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx420, align 4
  %321 = load i32, i32* %l, align 4
  %idxprom421 = sext i32 %321 to i64
  %322 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx422 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %322, i64 %idxprom421
  %323 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx422, align 8
  %324 = load i32, i32* %fi, align 4
  %arraydecay423 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call424 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %323, i32 %324, i32* %arraydecay423)
  store double* %call424, double** %Ap, align 8
  %325 = load i32, i32* %l, align 4
  %idxprom425 = sext i32 %325 to i64
  %326 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx426 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %326, i64 %idxprom425
  %327 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx426, align 8
  %data427 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %327, i32 0, i32 3
  %328 = load double*, double** %data427, align 8
  %329 = load i32, i32* %fi, align 4
  %idxprom428 = sext i32 %329 to i64
  %330 = load i32, i32* %l, align 4
  %idxprom429 = sext i32 %330 to i64
  %331 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx430 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %331, i64 %idxprom429
  %332 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx430, align 8
  %data_indices431 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %332, i32 0, i32 6
  %333 = load i32*, i32** %data_indices431, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %333, i64 %idxprom428
  %334 = load i32, i32* %arrayidx432, align 4
  %idx.ext433 = sext i32 %334 to i64
  %add.ptr434 = getelementptr inbounds double, double* %328, i64 %idx.ext433
  store double* %add.ptr434, double** %xp, align 8
  %335 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin435 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %335, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x i32], [3 x i32]* %imin435, i32 0, i64 0
  %336 = load i32, i32* %arrayidx436, align 4
  %arrayidx437 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %336, i32* %arrayidx437, align 4
  %337 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin438 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %337, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [3 x i32], [3 x i32]* %imin438, i32 0, i64 1
  %338 = load i32, i32* %arrayidx439, align 4
  %arrayidx440 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %338, i32* %arrayidx440, align 4
  %339 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %339, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %imin441, i32 0, i64 2
  %340 = load i32, i32* %arrayidx442, align 4
  %arrayidx443 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %340, i32* %arrayidx443, align 4
  %341 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay444 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay445 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call446 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %341, i32* %arraydecay444, i32* %arraydecay445)
  %arrayidx448 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %342 = load i32, i32* %arrayidx448, align 4
  %343 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin449 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %343, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %imin449, i32 0, i64 0
  %344 = load i32, i32* %arrayidx450, align 4
  %sub451 = sub nsw i32 %342, %344
  %arrayidx452 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %345 = load i32, i32* %arrayidx452, align 4
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin453 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [3 x i32], [3 x i32]* %imin453, i32 0, i64 1
  %347 = load i32, i32* %arrayidx454, align 4
  %sub455 = sub nsw i32 %345, %347
  %arrayidx456 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %348 = load i32, i32* %arrayidx456, align 4
  %349 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin457 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %349, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [3 x i32], [3 x i32]* %imin457, i32 0, i64 2
  %350 = load i32, i32* %arrayidx458, align 4
  %sub459 = sub nsw i32 %348, %350
  %351 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax460 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %351, i32 0, i32 1
  %arrayidx461 = getelementptr inbounds [3 x i32], [3 x i32]* %imax460, i32 0, i64 1
  %352 = load i32, i32* %arrayidx461, align 4
  %353 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin462 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %353, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [3 x i32], [3 x i32]* %imin462, i32 0, i64 1
  %354 = load i32, i32* %arrayidx463, align 4
  %sub464 = sub nsw i32 %352, %354
  %add465 = add nsw i32 %sub464, 1
  %cmp466 = icmp slt i32 0, %add465
  br i1 %cmp466, label %cond.true.467, label %cond.false.474

cond.true.467:                                    ; preds = %for.body.402
  %355 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax468 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %355, i32 0, i32 1
  %arrayidx469 = getelementptr inbounds [3 x i32], [3 x i32]* %imax468, i32 0, i64 1
  %356 = load i32, i32* %arrayidx469, align 4
  %357 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin470 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %357, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [3 x i32], [3 x i32]* %imin470, i32 0, i64 1
  %358 = load i32, i32* %arrayidx471, align 4
  %sub472 = sub nsw i32 %356, %358
  %add473 = add nsw i32 %sub472, 1
  br label %cond.end.475

cond.false.474:                                   ; preds = %for.body.402
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.474, %cond.true.467
  %cond476 = phi i32 [ %add473, %cond.true.467 ], [ 0, %cond.false.474 ]
  %mul477 = mul nsw i32 %sub459, %cond476
  %add478 = add nsw i32 %sub455, %mul477
  %359 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax479 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %359, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [3 x i32], [3 x i32]* %imax479, i32 0, i64 0
  %360 = load i32, i32* %arrayidx480, align 4
  %361 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin481 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %361, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [3 x i32], [3 x i32]* %imin481, i32 0, i64 0
  %362 = load i32, i32* %arrayidx482, align 4
  %sub483 = sub nsw i32 %360, %362
  %add484 = add nsw i32 %sub483, 1
  %cmp485 = icmp slt i32 0, %add484
  br i1 %cmp485, label %cond.true.486, label %cond.false.493

cond.true.486:                                    ; preds = %cond.end.475
  %363 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax487 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %363, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [3 x i32], [3 x i32]* %imax487, i32 0, i64 0
  %364 = load i32, i32* %arrayidx488, align 4
  %365 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin489 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %365, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [3 x i32], [3 x i32]* %imin489, i32 0, i64 0
  %366 = load i32, i32* %arrayidx490, align 4
  %sub491 = sub nsw i32 %364, %366
  %add492 = add nsw i32 %sub491, 1
  br label %cond.end.494

cond.false.493:                                   ; preds = %cond.end.475
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.false.493, %cond.true.486
  %cond495 = phi i32 [ %add492, %cond.true.486 ], [ 0, %cond.false.493 ]
  %mul496 = mul nsw i32 %add478, %cond495
  %add497 = add nsw i32 %sub451, %mul496
  store i32 %add497, i32* %hypre__i1start447, align 4
  %arrayidx499 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %367 = load i32, i32* %arrayidx499, align 4
  %368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin500 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %368, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [3 x i32], [3 x i32]* %imin500, i32 0, i64 0
  %369 = load i32, i32* %arrayidx501, align 4
  %sub502 = sub nsw i32 %367, %369
  %arrayidx503 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %370 = load i32, i32* %arrayidx503, align 4
  %371 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin504 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %371, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [3 x i32], [3 x i32]* %imin504, i32 0, i64 1
  %372 = load i32, i32* %arrayidx505, align 4
  %sub506 = sub nsw i32 %370, %372
  %arrayidx507 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %373 = load i32, i32* %arrayidx507, align 4
  %374 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin508 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %374, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [3 x i32], [3 x i32]* %imin508, i32 0, i64 2
  %375 = load i32, i32* %arrayidx509, align 4
  %sub510 = sub nsw i32 %373, %375
  %376 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax511 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %376, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [3 x i32], [3 x i32]* %imax511, i32 0, i64 1
  %377 = load i32, i32* %arrayidx512, align 4
  %378 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin513 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %378, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [3 x i32], [3 x i32]* %imin513, i32 0, i64 1
  %379 = load i32, i32* %arrayidx514, align 4
  %sub515 = sub nsw i32 %377, %379
  %add516 = add nsw i32 %sub515, 1
  %cmp517 = icmp slt i32 0, %add516
  br i1 %cmp517, label %cond.true.518, label %cond.false.525

cond.true.518:                                    ; preds = %cond.end.494
  %380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax519 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %380, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [3 x i32], [3 x i32]* %imax519, i32 0, i64 1
  %381 = load i32, i32* %arrayidx520, align 4
  %382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin521 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %382, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [3 x i32], [3 x i32]* %imin521, i32 0, i64 1
  %383 = load i32, i32* %arrayidx522, align 4
  %sub523 = sub nsw i32 %381, %383
  %add524 = add nsw i32 %sub523, 1
  br label %cond.end.526

cond.false.525:                                   ; preds = %cond.end.494
  br label %cond.end.526

cond.end.526:                                     ; preds = %cond.false.525, %cond.true.518
  %cond527 = phi i32 [ %add524, %cond.true.518 ], [ 0, %cond.false.525 ]
  %mul528 = mul nsw i32 %sub510, %cond527
  %add529 = add nsw i32 %sub506, %mul528
  %384 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax530 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %384, i32 0, i32 1
  %arrayidx531 = getelementptr inbounds [3 x i32], [3 x i32]* %imax530, i32 0, i64 0
  %385 = load i32, i32* %arrayidx531, align 4
  %386 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin532 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %386, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %imin532, i32 0, i64 0
  %387 = load i32, i32* %arrayidx533, align 4
  %sub534 = sub nsw i32 %385, %387
  %add535 = add nsw i32 %sub534, 1
  %cmp536 = icmp slt i32 0, %add535
  br i1 %cmp536, label %cond.true.537, label %cond.false.544

cond.true.537:                                    ; preds = %cond.end.526
  %388 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax538 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %388, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [3 x i32], [3 x i32]* %imax538, i32 0, i64 0
  %389 = load i32, i32* %arrayidx539, align 4
  %390 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin540 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %390, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [3 x i32], [3 x i32]* %imin540, i32 0, i64 0
  %391 = load i32, i32* %arrayidx541, align 4
  %sub542 = sub nsw i32 %389, %391
  %add543 = add nsw i32 %sub542, 1
  br label %cond.end.545

cond.false.544:                                   ; preds = %cond.end.526
  br label %cond.end.545

cond.end.545:                                     ; preds = %cond.false.544, %cond.true.537
  %cond546 = phi i32 [ %add543, %cond.true.537 ], [ 0, %cond.false.544 ]
  %mul547 = mul nsw i32 %add529, %cond546
  %add548 = add nsw i32 %sub502, %mul547
  store i32 %add548, i32* %hypre__i2start498, align 4
  %arrayidx550 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %392 = load i32, i32* %arrayidx550, align 4
  store i32 %392, i32* %hypre__sx1549, align 4
  %arrayidx552 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %393 = load i32, i32* %arrayidx552, align 4
  %394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax553 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %394, i32 0, i32 1
  %arrayidx554 = getelementptr inbounds [3 x i32], [3 x i32]* %imax553, i32 0, i64 0
  %395 = load i32, i32* %arrayidx554, align 4
  %396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin555 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %396, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [3 x i32], [3 x i32]* %imin555, i32 0, i64 0
  %397 = load i32, i32* %arrayidx556, align 4
  %sub557 = sub nsw i32 %395, %397
  %add558 = add nsw i32 %sub557, 1
  %cmp559 = icmp slt i32 0, %add558
  br i1 %cmp559, label %cond.true.560, label %cond.false.567

cond.true.560:                                    ; preds = %cond.end.545
  %398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax561 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %398, i32 0, i32 1
  %arrayidx562 = getelementptr inbounds [3 x i32], [3 x i32]* %imax561, i32 0, i64 0
  %399 = load i32, i32* %arrayidx562, align 4
  %400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin563 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %400, i32 0, i32 0
  %arrayidx564 = getelementptr inbounds [3 x i32], [3 x i32]* %imin563, i32 0, i64 0
  %401 = load i32, i32* %arrayidx564, align 4
  %sub565 = sub nsw i32 %399, %401
  %add566 = add nsw i32 %sub565, 1
  br label %cond.end.568

cond.false.567:                                   ; preds = %cond.end.545
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.567, %cond.true.560
  %cond569 = phi i32 [ %add566, %cond.true.560 ], [ 0, %cond.false.567 ]
  %mul570 = mul nsw i32 %393, %cond569
  store i32 %mul570, i32* %hypre__sy1551, align 4
  %arrayidx572 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %402 = load i32, i32* %arrayidx572, align 4
  %403 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax573 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %403, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [3 x i32], [3 x i32]* %imax573, i32 0, i64 0
  %404 = load i32, i32* %arrayidx574, align 4
  %405 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %405, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [3 x i32], [3 x i32]* %imin575, i32 0, i64 0
  %406 = load i32, i32* %arrayidx576, align 4
  %sub577 = sub nsw i32 %404, %406
  %add578 = add nsw i32 %sub577, 1
  %cmp579 = icmp slt i32 0, %add578
  br i1 %cmp579, label %cond.true.580, label %cond.false.587

cond.true.580:                                    ; preds = %cond.end.568
  %407 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax581 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %407, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [3 x i32], [3 x i32]* %imax581, i32 0, i64 0
  %408 = load i32, i32* %arrayidx582, align 4
  %409 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin583 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %409, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %imin583, i32 0, i64 0
  %410 = load i32, i32* %arrayidx584, align 4
  %sub585 = sub nsw i32 %408, %410
  %add586 = add nsw i32 %sub585, 1
  br label %cond.end.588

cond.false.587:                                   ; preds = %cond.end.568
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.false.587, %cond.true.580
  %cond589 = phi i32 [ %add586, %cond.true.580 ], [ 0, %cond.false.587 ]
  %mul590 = mul nsw i32 %402, %cond589
  %411 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax591 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %411, i32 0, i32 1
  %arrayidx592 = getelementptr inbounds [3 x i32], [3 x i32]* %imax591, i32 0, i64 1
  %412 = load i32, i32* %arrayidx592, align 4
  %413 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin593 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %413, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [3 x i32], [3 x i32]* %imin593, i32 0, i64 1
  %414 = load i32, i32* %arrayidx594, align 4
  %sub595 = sub nsw i32 %412, %414
  %add596 = add nsw i32 %sub595, 1
  %cmp597 = icmp slt i32 0, %add596
  br i1 %cmp597, label %cond.true.598, label %cond.false.605

cond.true.598:                                    ; preds = %cond.end.588
  %415 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %415, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [3 x i32], [3 x i32]* %imax599, i32 0, i64 1
  %416 = load i32, i32* %arrayidx600, align 4
  %417 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin601 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %417, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [3 x i32], [3 x i32]* %imin601, i32 0, i64 1
  %418 = load i32, i32* %arrayidx602, align 4
  %sub603 = sub nsw i32 %416, %418
  %add604 = add nsw i32 %sub603, 1
  br label %cond.end.606

cond.false.605:                                   ; preds = %cond.end.588
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.605, %cond.true.598
  %cond607 = phi i32 [ %add604, %cond.true.598 ], [ 0, %cond.false.605 ]
  %mul608 = mul nsw i32 %mul590, %cond607
  store i32 %mul608, i32* %hypre__sz1571, align 4
  %arrayidx610 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %419 = load i32, i32* %arrayidx610, align 4
  store i32 %419, i32* %hypre__sx2609, align 4
  %arrayidx612 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %420 = load i32, i32* %arrayidx612, align 4
  %421 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax613 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %421, i32 0, i32 1
  %arrayidx614 = getelementptr inbounds [3 x i32], [3 x i32]* %imax613, i32 0, i64 0
  %422 = load i32, i32* %arrayidx614, align 4
  %423 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin615 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %423, i32 0, i32 0
  %arrayidx616 = getelementptr inbounds [3 x i32], [3 x i32]* %imin615, i32 0, i64 0
  %424 = load i32, i32* %arrayidx616, align 4
  %sub617 = sub nsw i32 %422, %424
  %add618 = add nsw i32 %sub617, 1
  %cmp619 = icmp slt i32 0, %add618
  br i1 %cmp619, label %cond.true.620, label %cond.false.627

cond.true.620:                                    ; preds = %cond.end.606
  %425 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax621 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %425, i32 0, i32 1
  %arrayidx622 = getelementptr inbounds [3 x i32], [3 x i32]* %imax621, i32 0, i64 0
  %426 = load i32, i32* %arrayidx622, align 4
  %427 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin623 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %427, i32 0, i32 0
  %arrayidx624 = getelementptr inbounds [3 x i32], [3 x i32]* %imin623, i32 0, i64 0
  %428 = load i32, i32* %arrayidx624, align 4
  %sub625 = sub nsw i32 %426, %428
  %add626 = add nsw i32 %sub625, 1
  br label %cond.end.628

cond.false.627:                                   ; preds = %cond.end.606
  br label %cond.end.628

cond.end.628:                                     ; preds = %cond.false.627, %cond.true.620
  %cond629 = phi i32 [ %add626, %cond.true.620 ], [ 0, %cond.false.627 ]
  %mul630 = mul nsw i32 %420, %cond629
  store i32 %mul630, i32* %hypre__sy2611, align 4
  %arrayidx632 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %429 = load i32, i32* %arrayidx632, align 4
  %430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax633 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %430, i32 0, i32 1
  %arrayidx634 = getelementptr inbounds [3 x i32], [3 x i32]* %imax633, i32 0, i64 0
  %431 = load i32, i32* %arrayidx634, align 4
  %432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin635 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %432, i32 0, i32 0
  %arrayidx636 = getelementptr inbounds [3 x i32], [3 x i32]* %imin635, i32 0, i64 0
  %433 = load i32, i32* %arrayidx636, align 4
  %sub637 = sub nsw i32 %431, %433
  %add638 = add nsw i32 %sub637, 1
  %cmp639 = icmp slt i32 0, %add638
  br i1 %cmp639, label %cond.true.640, label %cond.false.647

cond.true.640:                                    ; preds = %cond.end.628
  %434 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax641 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %434, i32 0, i32 1
  %arrayidx642 = getelementptr inbounds [3 x i32], [3 x i32]* %imax641, i32 0, i64 0
  %435 = load i32, i32* %arrayidx642, align 4
  %436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %436, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [3 x i32], [3 x i32]* %imin643, i32 0, i64 0
  %437 = load i32, i32* %arrayidx644, align 4
  %sub645 = sub nsw i32 %435, %437
  %add646 = add nsw i32 %sub645, 1
  br label %cond.end.648

cond.false.647:                                   ; preds = %cond.end.628
  br label %cond.end.648

cond.end.648:                                     ; preds = %cond.false.647, %cond.true.640
  %cond649 = phi i32 [ %add646, %cond.true.640 ], [ 0, %cond.false.647 ]
  %mul650 = mul nsw i32 %429, %cond649
  %438 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax651 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %438, i32 0, i32 1
  %arrayidx652 = getelementptr inbounds [3 x i32], [3 x i32]* %imax651, i32 0, i64 1
  %439 = load i32, i32* %arrayidx652, align 4
  %440 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin653 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %440, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [3 x i32], [3 x i32]* %imin653, i32 0, i64 1
  %441 = load i32, i32* %arrayidx654, align 4
  %sub655 = sub nsw i32 %439, %441
  %add656 = add nsw i32 %sub655, 1
  %cmp657 = icmp slt i32 0, %add656
  br i1 %cmp657, label %cond.true.658, label %cond.false.665

cond.true.658:                                    ; preds = %cond.end.648
  %442 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax659 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %442, i32 0, i32 1
  %arrayidx660 = getelementptr inbounds [3 x i32], [3 x i32]* %imax659, i32 0, i64 1
  %443 = load i32, i32* %arrayidx660, align 4
  %444 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin661 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %444, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [3 x i32], [3 x i32]* %imin661, i32 0, i64 1
  %445 = load i32, i32* %arrayidx662, align 4
  %sub663 = sub nsw i32 %443, %445
  %add664 = add nsw i32 %sub663, 1
  br label %cond.end.666

cond.false.665:                                   ; preds = %cond.end.648
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.665, %cond.true.658
  %cond667 = phi i32 [ %add664, %cond.true.658 ], [ 0, %cond.false.665 ]
  %mul668 = mul nsw i32 %mul650, %cond667
  store i32 %mul668, i32* %hypre__sz2631, align 4
  %arrayidx670 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %446 = load i32, i32* %arrayidx670, align 4
  store i32 %446, i32* %hypre__nx669, align 4
  %arrayidx672 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %447 = load i32, i32* %arrayidx672, align 4
  store i32 %447, i32* %hypre__ny671, align 4
  %arrayidx674 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %448 = load i32, i32* %arrayidx674, align 4
  store i32 %448, i32* %hypre__nz673, align 4
  %449 = load i32, i32* %hypre__nx669, align 4
  store i32 %449, i32* %hypre__mx675, align 4
  %450 = load i32, i32* %hypre__ny671, align 4
  store i32 %450, i32* %hypre__my676, align 4
  %451 = load i32, i32* %hypre__nz673, align 4
  store i32 %451, i32* %hypre__mz677, align 4
  store i32 0, i32* %hypre__dir678, align 4
  %452 = load i32, i32* %hypre__nx669, align 4
  store i32 %452, i32* %hypre__max679, align 4
  %453 = load i32, i32* %hypre__ny671, align 4
  %454 = load i32, i32* %hypre__max679, align 4
  %cmp684 = icmp sgt i32 %453, %454
  br i1 %cmp684, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %cond.end.666
  store i32 1, i32* %hypre__dir678, align 4
  %455 = load i32, i32* %hypre__ny671, align 4
  store i32 %455, i32* %hypre__max679, align 4
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.685, %cond.end.666
  %456 = load i32, i32* %hypre__nz673, align 4
  %457 = load i32, i32* %hypre__max679, align 4
  %cmp687 = icmp sgt i32 %456, %457
  br i1 %cmp687, label %if.then.688, label %if.end.689

if.then.688:                                      ; preds = %if.end.686
  store i32 2, i32* %hypre__dir678, align 4
  %458 = load i32, i32* %hypre__nz673, align 4
  store i32 %458, i32* %hypre__max679, align 4
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.688, %if.end.686
  store i32 1, i32* %hypre__num_blocks683, align 4
  %459 = load i32, i32* %hypre__max679, align 4
  %460 = load i32, i32* %hypre__num_blocks683, align 4
  %cmp690 = icmp slt i32 %459, %460
  br i1 %cmp690, label %if.then.691, label %if.end.692

if.then.691:                                      ; preds = %if.end.689
  %461 = load i32, i32* %hypre__max679, align 4
  store i32 %461, i32* %hypre__num_blocks683, align 4
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.691, %if.end.689
  %462 = load i32, i32* %hypre__num_blocks683, align 4
  %cmp693 = icmp sgt i32 %462, 0
  br i1 %cmp693, label %if.then.694, label %if.end.697

if.then.694:                                      ; preds = %if.end.692
  %463 = load i32, i32* %hypre__max679, align 4
  %464 = load i32, i32* %hypre__num_blocks683, align 4
  %div695 = sdiv i32 %463, %464
  store i32 %div695, i32* %hypre__div680, align 4
  %465 = load i32, i32* %hypre__max679, align 4
  %466 = load i32, i32* %hypre__num_blocks683, align 4
  %rem696 = srem i32 %465, %466
  store i32 %rem696, i32* %hypre__mod681, align 4
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.694, %if.end.692
  store i32 0, i32* %hypre__block682, align 4
  br label %for.cond.698

for.cond.698:                                     ; preds = %for.inc.794, %if.end.697
  %467 = load i32, i32* %hypre__block682, align 4
  %468 = load i32, i32* %hypre__num_blocks683, align 4
  %cmp699 = icmp slt i32 %467, %468
  br i1 %cmp699, label %for.body.700, label %for.end.796

for.body.700:                                     ; preds = %for.cond.698
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %469 = load i32, i32* %hypre__mx675, align 4
  store i32 %469, i32* %hypre__nx669, align 4
  %470 = load i32, i32* %hypre__my676, align 4
  store i32 %470, i32* %hypre__ny671, align 4
  %471 = load i32, i32* %hypre__mz677, align 4
  store i32 %471, i32* %hypre__nz673, align 4
  %472 = load i32, i32* %hypre__num_blocks683, align 4
  %cmp701 = icmp sgt i32 %472, 1
  br i1 %cmp701, label %if.then.702, label %if.end.744

if.then.702:                                      ; preds = %for.body.700
  %473 = load i32, i32* %hypre__dir678, align 4
  %cmp703 = icmp eq i32 %473, 0
  br i1 %cmp703, label %if.then.704, label %if.else.715

if.then.704:                                      ; preds = %if.then.702
  %474 = load i32, i32* %hypre__block682, align 4
  %475 = load i32, i32* %hypre__div680, align 4
  %mul705 = mul nsw i32 %474, %475
  %476 = load i32, i32* %hypre__mod681, align 4
  %477 = load i32, i32* %hypre__block682, align 4
  %cmp706 = icmp slt i32 %476, %477
  br i1 %cmp706, label %cond.true.707, label %cond.false.708

cond.true.707:                                    ; preds = %if.then.704
  %478 = load i32, i32* %hypre__mod681, align 4
  br label %cond.end.709

cond.false.708:                                   ; preds = %if.then.704
  %479 = load i32, i32* %hypre__block682, align 4
  br label %cond.end.709

cond.end.709:                                     ; preds = %cond.false.708, %cond.true.707
  %cond710 = phi i32 [ %478, %cond.true.707 ], [ %479, %cond.false.708 ]
  %add711 = add nsw i32 %mul705, %cond710
  store i32 %add711, i32* %loopi, align 4
  %480 = load i32, i32* %hypre__div680, align 4
  %481 = load i32, i32* %hypre__mod681, align 4
  %482 = load i32, i32* %hypre__block682, align 4
  %cmp712 = icmp sgt i32 %481, %482
  %cond713 = select i1 %cmp712, i32 1, i32 0
  %add714 = add nsw i32 %480, %cond713
  store i32 %add714, i32* %hypre__nx669, align 4
  br label %if.end.743

if.else.715:                                      ; preds = %if.then.702
  %483 = load i32, i32* %hypre__dir678, align 4
  %cmp716 = icmp eq i32 %483, 1
  br i1 %cmp716, label %if.then.717, label %if.else.728

if.then.717:                                      ; preds = %if.else.715
  %484 = load i32, i32* %hypre__block682, align 4
  %485 = load i32, i32* %hypre__div680, align 4
  %mul718 = mul nsw i32 %484, %485
  %486 = load i32, i32* %hypre__mod681, align 4
  %487 = load i32, i32* %hypre__block682, align 4
  %cmp719 = icmp slt i32 %486, %487
  br i1 %cmp719, label %cond.true.720, label %cond.false.721

cond.true.720:                                    ; preds = %if.then.717
  %488 = load i32, i32* %hypre__mod681, align 4
  br label %cond.end.722

cond.false.721:                                   ; preds = %if.then.717
  %489 = load i32, i32* %hypre__block682, align 4
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.721, %cond.true.720
  %cond723 = phi i32 [ %488, %cond.true.720 ], [ %489, %cond.false.721 ]
  %add724 = add nsw i32 %mul718, %cond723
  store i32 %add724, i32* %loopj, align 4
  %490 = load i32, i32* %hypre__div680, align 4
  %491 = load i32, i32* %hypre__mod681, align 4
  %492 = load i32, i32* %hypre__block682, align 4
  %cmp725 = icmp sgt i32 %491, %492
  %cond726 = select i1 %cmp725, i32 1, i32 0
  %add727 = add nsw i32 %490, %cond726
  store i32 %add727, i32* %hypre__ny671, align 4
  br label %if.end.742

if.else.728:                                      ; preds = %if.else.715
  %493 = load i32, i32* %hypre__dir678, align 4
  %cmp729 = icmp eq i32 %493, 2
  br i1 %cmp729, label %if.then.730, label %if.end.741

if.then.730:                                      ; preds = %if.else.728
  %494 = load i32, i32* %hypre__block682, align 4
  %495 = load i32, i32* %hypre__div680, align 4
  %mul731 = mul nsw i32 %494, %495
  %496 = load i32, i32* %hypre__mod681, align 4
  %497 = load i32, i32* %hypre__block682, align 4
  %cmp732 = icmp slt i32 %496, %497
  br i1 %cmp732, label %cond.true.733, label %cond.false.734

cond.true.733:                                    ; preds = %if.then.730
  %498 = load i32, i32* %hypre__mod681, align 4
  br label %cond.end.735

cond.false.734:                                   ; preds = %if.then.730
  %499 = load i32, i32* %hypre__block682, align 4
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.734, %cond.true.733
  %cond736 = phi i32 [ %498, %cond.true.733 ], [ %499, %cond.false.734 ]
  %add737 = add nsw i32 %mul731, %cond736
  store i32 %add737, i32* %loopk, align 4
  %500 = load i32, i32* %hypre__div680, align 4
  %501 = load i32, i32* %hypre__mod681, align 4
  %502 = load i32, i32* %hypre__block682, align 4
  %cmp738 = icmp sgt i32 %501, %502
  %cond739 = select i1 %cmp738, i32 1, i32 0
  %add740 = add nsw i32 %500, %cond739
  store i32 %add740, i32* %hypre__nz673, align 4
  br label %if.end.741

if.end.741:                                       ; preds = %cond.end.735, %if.else.728
  br label %if.end.742

if.end.742:                                       ; preds = %if.end.741, %cond.end.722
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %cond.end.709
  br label %if.end.744

if.end.744:                                       ; preds = %if.end.743, %for.body.700
  %503 = load i32, i32* %hypre__i1start447, align 4
  %504 = load i32, i32* %loopi, align 4
  %505 = load i32, i32* %hypre__sx1549, align 4
  %mul745 = mul nsw i32 %504, %505
  %add746 = add nsw i32 %503, %mul745
  %506 = load i32, i32* %loopj, align 4
  %507 = load i32, i32* %hypre__sy1551, align 4
  %mul747 = mul nsw i32 %506, %507
  %add748 = add nsw i32 %add746, %mul747
  %508 = load i32, i32* %loopk, align 4
  %509 = load i32, i32* %hypre__sz1571, align 4
  %mul749 = mul nsw i32 %508, %509
  %add750 = add nsw i32 %add748, %mul749
  store i32 %add750, i32* %Ai, align 4
  %510 = load i32, i32* %hypre__i2start498, align 4
  %511 = load i32, i32* %loopi, align 4
  %512 = load i32, i32* %hypre__sx2609, align 4
  %mul751 = mul nsw i32 %511, %512
  %add752 = add nsw i32 %510, %mul751
  %513 = load i32, i32* %loopj, align 4
  %514 = load i32, i32* %hypre__sy2611, align 4
  %mul753 = mul nsw i32 %513, %514
  %add754 = add nsw i32 %add752, %mul753
  %515 = load i32, i32* %loopk, align 4
  %516 = load i32, i32* %hypre__sz2631, align 4
  %mul755 = mul nsw i32 %515, %516
  %add756 = add nsw i32 %add754, %mul755
  store i32 %add756, i32* %xi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.757

for.cond.757:                                     ; preds = %for.inc.791, %if.end.744
  %517 = load i32, i32* %loopk, align 4
  %518 = load i32, i32* %hypre__nz673, align 4
  %cmp758 = icmp slt i32 %517, %518
  br i1 %cmp758, label %for.body.759, label %for.end.793

for.body.759:                                     ; preds = %for.cond.757
  store i32 0, i32* %loopj, align 4
  br label %for.cond.760

for.cond.760:                                     ; preds = %for.inc.782, %for.body.759
  %519 = load i32, i32* %loopj, align 4
  %520 = load i32, i32* %hypre__ny671, align 4
  %cmp761 = icmp slt i32 %519, %520
  br i1 %cmp761, label %for.body.762, label %for.end.784

for.body.762:                                     ; preds = %for.cond.760
  store i32 0, i32* %loopi, align 4
  br label %for.cond.763

for.cond.763:                                     ; preds = %for.inc.773, %for.body.762
  %521 = load i32, i32* %loopi, align 4
  %522 = load i32, i32* %hypre__nx669, align 4
  %cmp764 = icmp slt i32 %521, %522
  br i1 %cmp764, label %for.body.765, label %for.end.775

for.body.765:                                     ; preds = %for.cond.763
  %523 = load i32, i32* %Ai, align 4
  %idxprom766 = sext i32 %523 to i64
  %524 = load double*, double** %Ap, align 8
  %arrayidx767 = getelementptr inbounds double, double* %524, i64 %idxprom766
  %525 = load double, double* %arrayidx767, align 8
  %526 = load i32, i32* %xi, align 4
  %idxprom768 = sext i32 %526 to i64
  %527 = load double*, double** %xp, align 8
  %arrayidx769 = getelementptr inbounds double, double* %527, i64 %idxprom768
  %528 = load double, double* %arrayidx769, align 8
  %div770 = fdiv double %528, %525
  store double %div770, double* %arrayidx769, align 8
  %529 = load i32, i32* %hypre__sx1549, align 4
  %530 = load i32, i32* %Ai, align 4
  %add771 = add nsw i32 %530, %529
  store i32 %add771, i32* %Ai, align 4
  %531 = load i32, i32* %hypre__sx2609, align 4
  %532 = load i32, i32* %xi, align 4
  %add772 = add nsw i32 %532, %531
  store i32 %add772, i32* %xi, align 4
  br label %for.inc.773

for.inc.773:                                      ; preds = %for.body.765
  %533 = load i32, i32* %loopi, align 4
  %inc774 = add nsw i32 %533, 1
  store i32 %inc774, i32* %loopi, align 4
  br label %for.cond.763

for.end.775:                                      ; preds = %for.cond.763
  %534 = load i32, i32* %hypre__sy1551, align 4
  %535 = load i32, i32* %hypre__nx669, align 4
  %536 = load i32, i32* %hypre__sx1549, align 4
  %mul776 = mul nsw i32 %535, %536
  %sub777 = sub nsw i32 %534, %mul776
  %537 = load i32, i32* %Ai, align 4
  %add778 = add nsw i32 %537, %sub777
  store i32 %add778, i32* %Ai, align 4
  %538 = load i32, i32* %hypre__sy2611, align 4
  %539 = load i32, i32* %hypre__nx669, align 4
  %540 = load i32, i32* %hypre__sx2609, align 4
  %mul779 = mul nsw i32 %539, %540
  %sub780 = sub nsw i32 %538, %mul779
  %541 = load i32, i32* %xi, align 4
  %add781 = add nsw i32 %541, %sub780
  store i32 %add781, i32* %xi, align 4
  br label %for.inc.782

for.inc.782:                                      ; preds = %for.end.775
  %542 = load i32, i32* %loopj, align 4
  %inc783 = add nsw i32 %542, 1
  store i32 %inc783, i32* %loopj, align 4
  br label %for.cond.760

for.end.784:                                      ; preds = %for.cond.760
  %543 = load i32, i32* %hypre__sz1571, align 4
  %544 = load i32, i32* %hypre__ny671, align 4
  %545 = load i32, i32* %hypre__sy1551, align 4
  %mul785 = mul nsw i32 %544, %545
  %sub786 = sub nsw i32 %543, %mul785
  %546 = load i32, i32* %Ai, align 4
  %add787 = add nsw i32 %546, %sub786
  store i32 %add787, i32* %Ai, align 4
  %547 = load i32, i32* %hypre__sz2631, align 4
  %548 = load i32, i32* %hypre__ny671, align 4
  %549 = load i32, i32* %hypre__sy2611, align 4
  %mul788 = mul nsw i32 %548, %549
  %sub789 = sub nsw i32 %547, %mul788
  %550 = load i32, i32* %xi, align 4
  %add790 = add nsw i32 %550, %sub789
  store i32 %add790, i32* %xi, align 4
  br label %for.inc.791

for.inc.791:                                      ; preds = %for.end.784
  %551 = load i32, i32* %loopk, align 4
  %inc792 = add nsw i32 %551, 1
  store i32 %inc792, i32* %loopk, align 4
  br label %for.cond.757

for.end.793:                                      ; preds = %for.cond.757
  br label %for.inc.794

for.inc.794:                                      ; preds = %for.end.793
  %552 = load i32, i32* %hypre__block682, align 4
  %inc795 = add nsw i32 %552, 1
  store i32 %inc795, i32* %hypre__block682, align 4
  br label %for.cond.698

for.end.796:                                      ; preds = %for.cond.698
  br label %for.inc.797

for.inc.797:                                      ; preds = %for.end.796
  %553 = load i32, i32* %fi, align 4
  %inc798 = add nsw i32 %553, 1
  store i32 %inc798, i32* %fi, align 4
  br label %for.cond.399

for.end.799:                                      ; preds = %for.cond.399
  %554 = load i32, i32* %l, align 4
  %555 = load i32, i32* %num_levels, align 4
  %sub800 = sub nsw i32 %555, 1
  %cmp801 = icmp eq i32 %554, %sub800
  br i1 %cmp801, label %if.then.802, label %if.end.803

if.then.802:                                      ; preds = %for.end.799
  br label %for.end.1516

if.end.803:                                       ; preds = %for.end.799
  %556 = load i32, i32* %l, align 4
  %idxprom804 = sext i32 %556 to i64
  %557 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx805 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %557, i64 %idxprom804
  %558 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx805, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %558, i32 0, i32 1
  %559 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %559, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %560 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %560, i32 0, i32 3
  %561 = load i32*, i32** %ids, align 8
  store i32* %561, i32** %fgrid_ids, align 8
  %562 = load i32, i32* %l, align 4
  %add806 = add nsw i32 %562, 1
  %idxprom807 = sext i32 %add806 to i64
  %563 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx808 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %563, i64 %idxprom807
  %564 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx808, align 8
  %grid809 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %564, i32 0, i32 1
  %565 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid809, align 8
  store %struct.hypre_StructGrid_struct* %565, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %566 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes810 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %566, i32 0, i32 2
  %567 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes810, align 8
  store %struct.hypre_BoxArray_struct* %567, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %568 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids811 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %568, i32 0, i32 3
  %569 = load i32*, i32** %ids811, align 8
  store i32* %569, i32** %cgrid_ids, align 8
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.812

for.cond.812:                                     ; preds = %for.inc.1511, %if.end.803
  %570 = load i32, i32* %compute_i, align 4
  %cmp813 = icmp slt i32 %570, 2
  br i1 %cmp813, label %for.body.814, label %for.end.1513

for.body.814:                                     ; preds = %for.cond.812
  %571 = load i32, i32* %compute_i, align 4
  switch i32 %571, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.823
  ]

sw.bb:                                            ; preds = %for.body.814
  %572 = load i32, i32* %l, align 4
  %idxprom815 = sext i32 %572 to i64
  %573 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx816 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %573, i64 %idxprom815
  %574 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx816, align 8
  %data817 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %574, i32 0, i32 3
  %575 = load double*, double** %data817, align 8
  store double* %575, double** %xp, align 8
  %576 = load i32, i32* %l, align 4
  %idxprom818 = sext i32 %576 to i64
  %577 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %arrayidx819 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %577, i64 %idxprom818
  %578 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx819, align 8
  %579 = load double*, double** %xp, align 8
  %call820 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %578, double* %579, %struct.hypre_CommHandle_struct** %comm_handle)
  %580 = load i32, i32* %l, align 4
  %idxprom821 = sext i32 %580 to i64
  %581 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %arrayidx822 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %581, i64 %idxprom821
  %582 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx822, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %582, i32 0, i32 1
  %583 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %583, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.bb.823:                                        ; preds = %for.body.814
  %584 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call824 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %584)
  %585 = load i32, i32* %l, align 4
  %idxprom825 = sext i32 %585 to i64
  %586 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %arrayidx826 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %586, i64 %idxprom825
  %587 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx826, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %587, i32 0, i32 2
  %588 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %588, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.814, %sw.bb.823, %sw.bb
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.827

for.cond.827:                                     ; preds = %for.inc.1508, %sw.epilog
  %589 = load i32, i32* %ci, align 4
  %590 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size828 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %590, i32 0, i32 1
  %591 = load i32, i32* %size828, align 4
  %cmp829 = icmp slt i32 %589, %591
  br i1 %cmp829, label %for.body.830, label %for.end.1510

for.body.830:                                     ; preds = %for.cond.827
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.830
  %592 = load i32, i32* %fi, align 4
  %idxprom831 = sext i32 %592 to i64
  %593 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx832 = getelementptr inbounds i32, i32* %593, i64 %idxprom831
  %594 = load i32, i32* %arrayidx832, align 4
  %595 = load i32, i32* %ci, align 4
  %idxprom833 = sext i32 %595 to i64
  %596 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx834 = getelementptr inbounds i32, i32* %596, i64 %idxprom833
  %597 = load i32, i32* %arrayidx834, align 4
  %cmp835 = icmp ne i32 %594, %597
  br i1 %cmp835, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %598 = load i32, i32* %fi, align 4
  %inc836 = add nsw i32 %598, 1
  store i32 %inc836, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %599 = load i32, i32* %fi, align 4
  %idxprom837 = sext i32 %599 to i64
  %600 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %600, i32 0, i32 0
  %601 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx838 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %601, i64 %idxprom837
  %602 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx838, align 8
  store %struct.hypre_BoxArray_struct* %602, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %603 = load i32, i32* %fi, align 4
  %idxprom839 = sext i32 %603 to i64
  %604 = load i32, i32* %l, align 4
  %idxprom840 = sext i32 %604 to i64
  %605 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx841 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %605, i64 %idxprom840
  %606 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx841, align 8
  %data_space842 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %606, i32 0, i32 5
  %607 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space842, align 8
  %boxes843 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %607, i32 0, i32 0
  %608 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes843, align 8
  %arrayidx844 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %608, i64 %idxprom839
  store %struct.hypre_Box_struct* %arrayidx844, %struct.hypre_Box_struct** %A_dbox, align 8
  %609 = load i32, i32* %fi, align 4
  %idxprom845 = sext i32 %609 to i64
  %610 = load i32, i32* %l, align 4
  %idxprom846 = sext i32 %610 to i64
  %611 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx847 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %611, i64 %idxprom846
  %612 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx847, align 8
  %data_space848 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %612, i32 0, i32 2
  %613 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space848, align 8
  %boxes849 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %613, i32 0, i32 0
  %614 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes849, align 8
  %arrayidx850 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %614, i64 %idxprom845
  store %struct.hypre_Box_struct* %arrayidx850, %struct.hypre_Box_struct** %x_dbox, align 8
  %615 = load i32, i32* %ci, align 4
  %idxprom851 = sext i32 %615 to i64
  %616 = load i32, i32* %l, align 4
  %add852 = add nsw i32 %616, 1
  %idxprom853 = sext i32 %add852 to i64
  %617 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx854 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %617, i64 %idxprom853
  %618 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx854, align 8
  %data_space855 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %618, i32 0, i32 2
  %619 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space855, align 8
  %boxes856 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %619, i32 0, i32 0
  %620 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes856, align 8
  %arrayidx857 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %620, i64 %idxprom851
  store %struct.hypre_Box_struct* %arrayidx857, %struct.hypre_Box_struct** %xc_dbox, align 8
  %621 = load i32, i32* %l, align 4
  %idxprom858 = sext i32 %621 to i64
  %622 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx859 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %622, i64 %idxprom858
  %623 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx859, align 8
  %data860 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %623, i32 0, i32 3
  %624 = load double*, double** %data860, align 8
  %625 = load i32, i32* %fi, align 4
  %idxprom861 = sext i32 %625 to i64
  %626 = load i32, i32* %l, align 4
  %idxprom862 = sext i32 %626 to i64
  %627 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx863 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %627, i64 %idxprom862
  %628 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx863, align 8
  %data_indices864 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %628, i32 0, i32 6
  %629 = load i32*, i32** %data_indices864, align 8
  %arrayidx865 = getelementptr inbounds i32, i32* %629, i64 %idxprom861
  %630 = load i32, i32* %arrayidx865, align 4
  %idx.ext866 = sext i32 %630 to i64
  %add.ptr867 = getelementptr inbounds double, double* %624, i64 %idx.ext866
  store double* %add.ptr867, double** %xp, align 8
  %631 = load i32, i32* %l, align 4
  %add868 = add nsw i32 %631, 1
  %idxprom869 = sext i32 %add868 to i64
  %632 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx870 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %632, i64 %idxprom869
  %633 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx870, align 8
  %data871 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %633, i32 0, i32 3
  %634 = load double*, double** %data871, align 8
  %635 = load i32, i32* %ci, align 4
  %idxprom872 = sext i32 %635 to i64
  %636 = load i32, i32* %l, align 4
  %add873 = add nsw i32 %636, 1
  %idxprom874 = sext i32 %add873 to i64
  %637 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx875 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %637, i64 %idxprom874
  %638 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx875, align 8
  %data_indices876 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %638, i32 0, i32 6
  %639 = load i32*, i32** %data_indices876, align 8
  %arrayidx877 = getelementptr inbounds i32, i32* %639, i64 %idxprom872
  %640 = load i32, i32* %arrayidx877, align 4
  %idx.ext878 = sext i32 %640 to i64
  %add.ptr879 = getelementptr inbounds double, double* %634, i64 %idx.ext878
  store double* %add.ptr879, double** %xcp, align 8
  %arrayidx880 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx880, align 4
  %arrayidx881 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx881, align 4
  %arrayidx882 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx882, align 4
  %641 = load i32, i32* %l, align 4
  %idxprom883 = sext i32 %641 to i64
  %642 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx884 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %642, i64 %idxprom883
  %643 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx884, align 8
  %644 = load i32, i32* %fi, align 4
  %arraydecay885 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call886 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %643, i32 %644, i32* %arraydecay885)
  store double* %call886, double** %Awp, align 8
  %645 = load i32, i32* %l, align 4
  %idxprom887 = sext i32 %645 to i64
  %646 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx888 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %646, i64 %idxprom887
  %647 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx888, align 8
  %data889 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %647, i32 0, i32 3
  %648 = load double*, double** %data889, align 8
  %649 = load i32, i32* %fi, align 4
  %idxprom890 = sext i32 %649 to i64
  %650 = load i32, i32* %l, align 4
  %idxprom891 = sext i32 %650 to i64
  %651 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx892 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %651, i64 %idxprom891
  %652 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx892, align 8
  %data_indices893 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %652, i32 0, i32 6
  %653 = load i32*, i32** %data_indices893, align 8
  %arrayidx894 = getelementptr inbounds i32, i32* %653, i64 %idxprom890
  %654 = load i32, i32* %arrayidx894, align 4
  %idx.ext895 = sext i32 %654 to i64
  %add.ptr896 = getelementptr inbounds double, double* %648, i64 %idx.ext895
  %arrayidx897 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %655 = load i32, i32* %arrayidx897, align 4
  %arrayidx898 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %656 = load i32, i32* %arrayidx898, align 4
  %arrayidx899 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %657 = load i32, i32* %arrayidx899, align 4
  %658 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax900 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %658, i32 0, i32 1
  %arrayidx901 = getelementptr inbounds [3 x i32], [3 x i32]* %imax900, i32 0, i64 1
  %659 = load i32, i32* %arrayidx901, align 4
  %660 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin902 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %660, i32 0, i32 0
  %arrayidx903 = getelementptr inbounds [3 x i32], [3 x i32]* %imin902, i32 0, i64 1
  %661 = load i32, i32* %arrayidx903, align 4
  %sub904 = sub nsw i32 %659, %661
  %add905 = add nsw i32 %sub904, 1
  %cmp906 = icmp slt i32 0, %add905
  br i1 %cmp906, label %cond.true.907, label %cond.false.914

cond.true.907:                                    ; preds = %while.end
  %662 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax908 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %662, i32 0, i32 1
  %arrayidx909 = getelementptr inbounds [3 x i32], [3 x i32]* %imax908, i32 0, i64 1
  %663 = load i32, i32* %arrayidx909, align 4
  %664 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin910 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %664, i32 0, i32 0
  %arrayidx911 = getelementptr inbounds [3 x i32], [3 x i32]* %imin910, i32 0, i64 1
  %665 = load i32, i32* %arrayidx911, align 4
  %sub912 = sub nsw i32 %663, %665
  %add913 = add nsw i32 %sub912, 1
  br label %cond.end.915

cond.false.914:                                   ; preds = %while.end
  br label %cond.end.915

cond.end.915:                                     ; preds = %cond.false.914, %cond.true.907
  %cond916 = phi i32 [ %add913, %cond.true.907 ], [ 0, %cond.false.914 ]
  %mul917 = mul nsw i32 %657, %cond916
  %add918 = add nsw i32 %656, %mul917
  %666 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax919 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %666, i32 0, i32 1
  %arrayidx920 = getelementptr inbounds [3 x i32], [3 x i32]* %imax919, i32 0, i64 0
  %667 = load i32, i32* %arrayidx920, align 4
  %668 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin921 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %668, i32 0, i32 0
  %arrayidx922 = getelementptr inbounds [3 x i32], [3 x i32]* %imin921, i32 0, i64 0
  %669 = load i32, i32* %arrayidx922, align 4
  %sub923 = sub nsw i32 %667, %669
  %add924 = add nsw i32 %sub923, 1
  %cmp925 = icmp slt i32 0, %add924
  br i1 %cmp925, label %cond.true.926, label %cond.false.933

cond.true.926:                                    ; preds = %cond.end.915
  %670 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax927 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %670, i32 0, i32 1
  %arrayidx928 = getelementptr inbounds [3 x i32], [3 x i32]* %imax927, i32 0, i64 0
  %671 = load i32, i32* %arrayidx928, align 4
  %672 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin929 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %672, i32 0, i32 0
  %arrayidx930 = getelementptr inbounds [3 x i32], [3 x i32]* %imin929, i32 0, i64 0
  %673 = load i32, i32* %arrayidx930, align 4
  %sub931 = sub nsw i32 %671, %673
  %add932 = add nsw i32 %sub931, 1
  br label %cond.end.934

cond.false.933:                                   ; preds = %cond.end.915
  br label %cond.end.934

cond.end.934:                                     ; preds = %cond.false.933, %cond.true.926
  %cond935 = phi i32 [ %add932, %cond.true.926 ], [ 0, %cond.false.933 ]
  %mul936 = mul nsw i32 %add918, %cond935
  %add937 = add nsw i32 %655, %mul936
  %idx.ext938 = sext i32 %add937 to i64
  %add.ptr939 = getelementptr inbounds double, double* %add.ptr896, i64 %idx.ext938
  store double* %add.ptr939, double** %xwp, align 8
  %arrayidx940 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx940, align 4
  %arrayidx941 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx941, align 4
  %arrayidx942 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx942, align 4
  %674 = load i32, i32* %l, align 4
  %idxprom943 = sext i32 %674 to i64
  %675 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx944 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %675, i64 %idxprom943
  %676 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx944, align 8
  %677 = load i32, i32* %fi, align 4
  %arraydecay945 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call946 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %676, i32 %677, i32* %arraydecay945)
  store double* %call946, double** %Aep, align 8
  %678 = load i32, i32* %l, align 4
  %idxprom947 = sext i32 %678 to i64
  %679 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx948 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %679, i64 %idxprom947
  %680 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx948, align 8
  %data949 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %680, i32 0, i32 3
  %681 = load double*, double** %data949, align 8
  %682 = load i32, i32* %fi, align 4
  %idxprom950 = sext i32 %682 to i64
  %683 = load i32, i32* %l, align 4
  %idxprom951 = sext i32 %683 to i64
  %684 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx952 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %684, i64 %idxprom951
  %685 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx952, align 8
  %data_indices953 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %685, i32 0, i32 6
  %686 = load i32*, i32** %data_indices953, align 8
  %arrayidx954 = getelementptr inbounds i32, i32* %686, i64 %idxprom950
  %687 = load i32, i32* %arrayidx954, align 4
  %idx.ext955 = sext i32 %687 to i64
  %add.ptr956 = getelementptr inbounds double, double* %681, i64 %idx.ext955
  %arrayidx957 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %688 = load i32, i32* %arrayidx957, align 4
  %arrayidx958 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %689 = load i32, i32* %arrayidx958, align 4
  %arrayidx959 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %690 = load i32, i32* %arrayidx959, align 4
  %691 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax960 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %691, i32 0, i32 1
  %arrayidx961 = getelementptr inbounds [3 x i32], [3 x i32]* %imax960, i32 0, i64 1
  %692 = load i32, i32* %arrayidx961, align 4
  %693 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin962 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %693, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [3 x i32], [3 x i32]* %imin962, i32 0, i64 1
  %694 = load i32, i32* %arrayidx963, align 4
  %sub964 = sub nsw i32 %692, %694
  %add965 = add nsw i32 %sub964, 1
  %cmp966 = icmp slt i32 0, %add965
  br i1 %cmp966, label %cond.true.967, label %cond.false.974

cond.true.967:                                    ; preds = %cond.end.934
  %695 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax968 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %695, i32 0, i32 1
  %arrayidx969 = getelementptr inbounds [3 x i32], [3 x i32]* %imax968, i32 0, i64 1
  %696 = load i32, i32* %arrayidx969, align 4
  %697 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin970 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %697, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [3 x i32], [3 x i32]* %imin970, i32 0, i64 1
  %698 = load i32, i32* %arrayidx971, align 4
  %sub972 = sub nsw i32 %696, %698
  %add973 = add nsw i32 %sub972, 1
  br label %cond.end.975

cond.false.974:                                   ; preds = %cond.end.934
  br label %cond.end.975

cond.end.975:                                     ; preds = %cond.false.974, %cond.true.967
  %cond976 = phi i32 [ %add973, %cond.true.967 ], [ 0, %cond.false.974 ]
  %mul977 = mul nsw i32 %690, %cond976
  %add978 = add nsw i32 %689, %mul977
  %699 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax979 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %699, i32 0, i32 1
  %arrayidx980 = getelementptr inbounds [3 x i32], [3 x i32]* %imax979, i32 0, i64 0
  %700 = load i32, i32* %arrayidx980, align 4
  %701 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin981 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %701, i32 0, i32 0
  %arrayidx982 = getelementptr inbounds [3 x i32], [3 x i32]* %imin981, i32 0, i64 0
  %702 = load i32, i32* %arrayidx982, align 4
  %sub983 = sub nsw i32 %700, %702
  %add984 = add nsw i32 %sub983, 1
  %cmp985 = icmp slt i32 0, %add984
  br i1 %cmp985, label %cond.true.986, label %cond.false.993

cond.true.986:                                    ; preds = %cond.end.975
  %703 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax987 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %703, i32 0, i32 1
  %arrayidx988 = getelementptr inbounds [3 x i32], [3 x i32]* %imax987, i32 0, i64 0
  %704 = load i32, i32* %arrayidx988, align 4
  %705 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin989 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %705, i32 0, i32 0
  %arrayidx990 = getelementptr inbounds [3 x i32], [3 x i32]* %imin989, i32 0, i64 0
  %706 = load i32, i32* %arrayidx990, align 4
  %sub991 = sub nsw i32 %704, %706
  %add992 = add nsw i32 %sub991, 1
  br label %cond.end.994

cond.false.993:                                   ; preds = %cond.end.975
  br label %cond.end.994

cond.end.994:                                     ; preds = %cond.false.993, %cond.true.986
  %cond995 = phi i32 [ %add992, %cond.true.986 ], [ 0, %cond.false.993 ]
  %mul996 = mul nsw i32 %add978, %cond995
  %add997 = add nsw i32 %688, %mul996
  %idx.ext998 = sext i32 %add997 to i64
  %add.ptr999 = getelementptr inbounds double, double* %add.ptr956, i64 %idx.ext998
  store double* %add.ptr999, double** %xep, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1000

for.cond.1000:                                    ; preds = %for.inc.1505, %cond.end.994
  %707 = load i32, i32* %j, align 4
  %708 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size1001 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %708, i32 0, i32 1
  %709 = load i32, i32* %size1001, align 4
  %cmp1002 = icmp slt i32 %707, %709
  br i1 %cmp1002, label %for.body.1003, label %for.end.1507

for.body.1003:                                    ; preds = %for.cond.1000
  %710 = load i32, i32* %j, align 4
  %idxprom1004 = sext i32 %710 to i64
  %711 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes1005 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %711, i32 0, i32 0
  %712 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes1005, align 8
  %arrayidx1006 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %712, i64 %idxprom1004
  store %struct.hypre_Box_struct* %arrayidx1006, %struct.hypre_Box_struct** %compute_box, align 8
  %713 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1007 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %713, i32 0, i32 0
  %arrayidx1008 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1007, i32 0, i64 0
  %714 = load i32, i32* %arrayidx1008, align 4
  %arrayidx1009 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %714, i32* %arrayidx1009, align 4
  %715 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1010 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %715, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1010, i32 0, i64 1
  %716 = load i32, i32* %arrayidx1011, align 4
  %arrayidx1012 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %716, i32* %arrayidx1012, align 4
  %717 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1013 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %717, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1013, i32 0, i64 2
  %718 = load i32, i32* %arrayidx1014, align 4
  %arrayidx1015 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %718, i32* %arrayidx1015, align 4
  %arraydecay1016 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i32 0
  %arraydecay1017 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay1018 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay1019 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %call1020 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay1016, i32* %arraydecay1017, i32* %arraydecay1018, i32* %arraydecay1019)
  %719 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay1021 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay1022 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call1023 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %719, i32* %arraydecay1021, i32* %arraydecay1022)
  %arrayidx1025 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %720 = load i32, i32* %arrayidx1025, align 4
  %721 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1026 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %721, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1026, i32 0, i64 0
  %722 = load i32, i32* %arrayidx1027, align 4
  %sub1028 = sub nsw i32 %720, %722
  %arrayidx1029 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %723 = load i32, i32* %arrayidx1029, align 4
  %724 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1030 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %724, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1030, i32 0, i64 1
  %725 = load i32, i32* %arrayidx1031, align 4
  %sub1032 = sub nsw i32 %723, %725
  %arrayidx1033 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %726 = load i32, i32* %arrayidx1033, align 4
  %727 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1034 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %727, i32 0, i32 0
  %arrayidx1035 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1034, i32 0, i64 2
  %728 = load i32, i32* %arrayidx1035, align 4
  %sub1036 = sub nsw i32 %726, %728
  %729 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1037 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %729, i32 0, i32 1
  %arrayidx1038 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1037, i32 0, i64 1
  %730 = load i32, i32* %arrayidx1038, align 4
  %731 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1039 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %731, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1039, i32 0, i64 1
  %732 = load i32, i32* %arrayidx1040, align 4
  %sub1041 = sub nsw i32 %730, %732
  %add1042 = add nsw i32 %sub1041, 1
  %cmp1043 = icmp slt i32 0, %add1042
  br i1 %cmp1043, label %cond.true.1044, label %cond.false.1051

cond.true.1044:                                   ; preds = %for.body.1003
  %733 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1045 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %733, i32 0, i32 1
  %arrayidx1046 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1045, i32 0, i64 1
  %734 = load i32, i32* %arrayidx1046, align 4
  %735 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1047 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %735, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1047, i32 0, i64 1
  %736 = load i32, i32* %arrayidx1048, align 4
  %sub1049 = sub nsw i32 %734, %736
  %add1050 = add nsw i32 %sub1049, 1
  br label %cond.end.1052

cond.false.1051:                                  ; preds = %for.body.1003
  br label %cond.end.1052

cond.end.1052:                                    ; preds = %cond.false.1051, %cond.true.1044
  %cond1053 = phi i32 [ %add1050, %cond.true.1044 ], [ 0, %cond.false.1051 ]
  %mul1054 = mul nsw i32 %sub1036, %cond1053
  %add1055 = add nsw i32 %sub1032, %mul1054
  %737 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1056 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %737, i32 0, i32 1
  %arrayidx1057 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1056, i32 0, i64 0
  %738 = load i32, i32* %arrayidx1057, align 4
  %739 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1058 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %739, i32 0, i32 0
  %arrayidx1059 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1058, i32 0, i64 0
  %740 = load i32, i32* %arrayidx1059, align 4
  %sub1060 = sub nsw i32 %738, %740
  %add1061 = add nsw i32 %sub1060, 1
  %cmp1062 = icmp slt i32 0, %add1061
  br i1 %cmp1062, label %cond.true.1063, label %cond.false.1070

cond.true.1063:                                   ; preds = %cond.end.1052
  %741 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1064 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %741, i32 0, i32 1
  %arrayidx1065 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1064, i32 0, i64 0
  %742 = load i32, i32* %arrayidx1065, align 4
  %743 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1066 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %743, i32 0, i32 0
  %arrayidx1067 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1066, i32 0, i64 0
  %744 = load i32, i32* %arrayidx1067, align 4
  %sub1068 = sub nsw i32 %742, %744
  %add1069 = add nsw i32 %sub1068, 1
  br label %cond.end.1071

cond.false.1070:                                  ; preds = %cond.end.1052
  br label %cond.end.1071

cond.end.1071:                                    ; preds = %cond.false.1070, %cond.true.1063
  %cond1072 = phi i32 [ %add1069, %cond.true.1063 ], [ 0, %cond.false.1070 ]
  %mul1073 = mul nsw i32 %add1055, %cond1072
  %add1074 = add nsw i32 %sub1028, %mul1073
  store i32 %add1074, i32* %hypre__i1start1024, align 4
  %arrayidx1076 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %745 = load i32, i32* %arrayidx1076, align 4
  %746 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1077 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %746, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1077, i32 0, i64 0
  %747 = load i32, i32* %arrayidx1078, align 4
  %sub1079 = sub nsw i32 %745, %747
  %arrayidx1080 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %748 = load i32, i32* %arrayidx1080, align 4
  %749 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1081 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %749, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1081, i32 0, i64 1
  %750 = load i32, i32* %arrayidx1082, align 4
  %sub1083 = sub nsw i32 %748, %750
  %arrayidx1084 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %751 = load i32, i32* %arrayidx1084, align 4
  %752 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1085 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %752, i32 0, i32 0
  %arrayidx1086 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1085, i32 0, i64 2
  %753 = load i32, i32* %arrayidx1086, align 4
  %sub1087 = sub nsw i32 %751, %753
  %754 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1088 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %754, i32 0, i32 1
  %arrayidx1089 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1088, i32 0, i64 1
  %755 = load i32, i32* %arrayidx1089, align 4
  %756 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1090 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %756, i32 0, i32 0
  %arrayidx1091 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1090, i32 0, i64 1
  %757 = load i32, i32* %arrayidx1091, align 4
  %sub1092 = sub nsw i32 %755, %757
  %add1093 = add nsw i32 %sub1092, 1
  %cmp1094 = icmp slt i32 0, %add1093
  br i1 %cmp1094, label %cond.true.1095, label %cond.false.1102

cond.true.1095:                                   ; preds = %cond.end.1071
  %758 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1096 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %758, i32 0, i32 1
  %arrayidx1097 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1096, i32 0, i64 1
  %759 = load i32, i32* %arrayidx1097, align 4
  %760 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1098 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %760, i32 0, i32 0
  %arrayidx1099 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1098, i32 0, i64 1
  %761 = load i32, i32* %arrayidx1099, align 4
  %sub1100 = sub nsw i32 %759, %761
  %add1101 = add nsw i32 %sub1100, 1
  br label %cond.end.1103

cond.false.1102:                                  ; preds = %cond.end.1071
  br label %cond.end.1103

cond.end.1103:                                    ; preds = %cond.false.1102, %cond.true.1095
  %cond1104 = phi i32 [ %add1101, %cond.true.1095 ], [ 0, %cond.false.1102 ]
  %mul1105 = mul nsw i32 %sub1087, %cond1104
  %add1106 = add nsw i32 %sub1083, %mul1105
  %762 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %762, i32 0, i32 1
  %arrayidx1108 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1107, i32 0, i64 0
  %763 = load i32, i32* %arrayidx1108, align 4
  %764 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %764, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1109, i32 0, i64 0
  %765 = load i32, i32* %arrayidx1110, align 4
  %sub1111 = sub nsw i32 %763, %765
  %add1112 = add nsw i32 %sub1111, 1
  %cmp1113 = icmp slt i32 0, %add1112
  br i1 %cmp1113, label %cond.true.1114, label %cond.false.1121

cond.true.1114:                                   ; preds = %cond.end.1103
  %766 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %766, i32 0, i32 1
  %arrayidx1116 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1115, i32 0, i64 0
  %767 = load i32, i32* %arrayidx1116, align 4
  %768 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %768, i32 0, i32 0
  %arrayidx1118 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1117, i32 0, i64 0
  %769 = load i32, i32* %arrayidx1118, align 4
  %sub1119 = sub nsw i32 %767, %769
  %add1120 = add nsw i32 %sub1119, 1
  br label %cond.end.1122

cond.false.1121:                                  ; preds = %cond.end.1103
  br label %cond.end.1122

cond.end.1122:                                    ; preds = %cond.false.1121, %cond.true.1114
  %cond1123 = phi i32 [ %add1120, %cond.true.1114 ], [ 0, %cond.false.1121 ]
  %mul1124 = mul nsw i32 %add1106, %cond1123
  %add1125 = add nsw i32 %sub1079, %mul1124
  store i32 %add1125, i32* %hypre__i2start1075, align 4
  %arrayidx1126 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %770 = load i32, i32* %arrayidx1126, align 4
  %771 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %771, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1127, i32 0, i64 0
  %772 = load i32, i32* %arrayidx1128, align 4
  %sub1129 = sub nsw i32 %770, %772
  %arrayidx1130 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %773 = load i32, i32* %arrayidx1130, align 4
  %774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %774, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1131, i32 0, i64 1
  %775 = load i32, i32* %arrayidx1132, align 4
  %sub1133 = sub nsw i32 %773, %775
  %arrayidx1134 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %776 = load i32, i32* %arrayidx1134, align 4
  %777 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %777, i32 0, i32 0
  %arrayidx1136 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1135, i32 0, i64 2
  %778 = load i32, i32* %arrayidx1136, align 4
  %sub1137 = sub nsw i32 %776, %778
  %779 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %779, i32 0, i32 1
  %arrayidx1139 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1138, i32 0, i64 1
  %780 = load i32, i32* %arrayidx1139, align 4
  %781 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %781, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1140, i32 0, i64 1
  %782 = load i32, i32* %arrayidx1141, align 4
  %sub1142 = sub nsw i32 %780, %782
  %add1143 = add nsw i32 %sub1142, 1
  %cmp1144 = icmp slt i32 0, %add1143
  br i1 %cmp1144, label %cond.true.1145, label %cond.false.1152

cond.true.1145:                                   ; preds = %cond.end.1122
  %783 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %783, i32 0, i32 1
  %arrayidx1147 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1146, i32 0, i64 1
  %784 = load i32, i32* %arrayidx1147, align 4
  %785 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %785, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1148, i32 0, i64 1
  %786 = load i32, i32* %arrayidx1149, align 4
  %sub1150 = sub nsw i32 %784, %786
  %add1151 = add nsw i32 %sub1150, 1
  br label %cond.end.1153

cond.false.1152:                                  ; preds = %cond.end.1122
  br label %cond.end.1153

cond.end.1153:                                    ; preds = %cond.false.1152, %cond.true.1145
  %cond1154 = phi i32 [ %add1151, %cond.true.1145 ], [ 0, %cond.false.1152 ]
  %mul1155 = mul nsw i32 %sub1137, %cond1154
  %add1156 = add nsw i32 %sub1133, %mul1155
  %787 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1157 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %787, i32 0, i32 1
  %arrayidx1158 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1157, i32 0, i64 0
  %788 = load i32, i32* %arrayidx1158, align 4
  %789 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1159 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %789, i32 0, i32 0
  %arrayidx1160 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1159, i32 0, i64 0
  %790 = load i32, i32* %arrayidx1160, align 4
  %sub1161 = sub nsw i32 %788, %790
  %add1162 = add nsw i32 %sub1161, 1
  %cmp1163 = icmp slt i32 0, %add1162
  br i1 %cmp1163, label %cond.true.1164, label %cond.false.1171

cond.true.1164:                                   ; preds = %cond.end.1153
  %791 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1165 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %791, i32 0, i32 1
  %arrayidx1166 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1165, i32 0, i64 0
  %792 = load i32, i32* %arrayidx1166, align 4
  %793 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1167 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %793, i32 0, i32 0
  %arrayidx1168 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1167, i32 0, i64 0
  %794 = load i32, i32* %arrayidx1168, align 4
  %sub1169 = sub nsw i32 %792, %794
  %add1170 = add nsw i32 %sub1169, 1
  br label %cond.end.1172

cond.false.1171:                                  ; preds = %cond.end.1153
  br label %cond.end.1172

cond.end.1172:                                    ; preds = %cond.false.1171, %cond.true.1164
  %cond1173 = phi i32 [ %add1170, %cond.true.1164 ], [ 0, %cond.false.1171 ]
  %mul1174 = mul nsw i32 %add1156, %cond1173
  %add1175 = add nsw i32 %sub1129, %mul1174
  store i32 %add1175, i32* %hypre__i3start, align 4
  %arrayidx1177 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %795 = load i32, i32* %arrayidx1177, align 4
  store i32 %795, i32* %hypre__sx11176, align 4
  %arrayidx1179 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %796 = load i32, i32* %arrayidx1179, align 4
  %797 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %797, i32 0, i32 1
  %arrayidx1181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1180, i32 0, i64 0
  %798 = load i32, i32* %arrayidx1181, align 4
  %799 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %799, i32 0, i32 0
  %arrayidx1183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1182, i32 0, i64 0
  %800 = load i32, i32* %arrayidx1183, align 4
  %sub1184 = sub nsw i32 %798, %800
  %add1185 = add nsw i32 %sub1184, 1
  %cmp1186 = icmp slt i32 0, %add1185
  br i1 %cmp1186, label %cond.true.1187, label %cond.false.1194

cond.true.1187:                                   ; preds = %cond.end.1172
  %801 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %801, i32 0, i32 1
  %arrayidx1189 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1188, i32 0, i64 0
  %802 = load i32, i32* %arrayidx1189, align 4
  %803 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %803, i32 0, i32 0
  %arrayidx1191 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1190, i32 0, i64 0
  %804 = load i32, i32* %arrayidx1191, align 4
  %sub1192 = sub nsw i32 %802, %804
  %add1193 = add nsw i32 %sub1192, 1
  br label %cond.end.1195

cond.false.1194:                                  ; preds = %cond.end.1172
  br label %cond.end.1195

cond.end.1195:                                    ; preds = %cond.false.1194, %cond.true.1187
  %cond1196 = phi i32 [ %add1193, %cond.true.1187 ], [ 0, %cond.false.1194 ]
  %mul1197 = mul nsw i32 %796, %cond1196
  store i32 %mul1197, i32* %hypre__sy11178, align 4
  %arrayidx1199 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %805 = load i32, i32* %arrayidx1199, align 4
  %806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1200 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %806, i32 0, i32 1
  %arrayidx1201 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1200, i32 0, i64 0
  %807 = load i32, i32* %arrayidx1201, align 4
  %808 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1202 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %808, i32 0, i32 0
  %arrayidx1203 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1202, i32 0, i64 0
  %809 = load i32, i32* %arrayidx1203, align 4
  %sub1204 = sub nsw i32 %807, %809
  %add1205 = add nsw i32 %sub1204, 1
  %cmp1206 = icmp slt i32 0, %add1205
  br i1 %cmp1206, label %cond.true.1207, label %cond.false.1214

cond.true.1207:                                   ; preds = %cond.end.1195
  %810 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1208 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %810, i32 0, i32 1
  %arrayidx1209 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1208, i32 0, i64 0
  %811 = load i32, i32* %arrayidx1209, align 4
  %812 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %812, i32 0, i32 0
  %arrayidx1211 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1210, i32 0, i64 0
  %813 = load i32, i32* %arrayidx1211, align 4
  %sub1212 = sub nsw i32 %811, %813
  %add1213 = add nsw i32 %sub1212, 1
  br label %cond.end.1215

cond.false.1214:                                  ; preds = %cond.end.1195
  br label %cond.end.1215

cond.end.1215:                                    ; preds = %cond.false.1214, %cond.true.1207
  %cond1216 = phi i32 [ %add1213, %cond.true.1207 ], [ 0, %cond.false.1214 ]
  %mul1217 = mul nsw i32 %805, %cond1216
  %814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %814, i32 0, i32 1
  %arrayidx1219 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1218, i32 0, i64 1
  %815 = load i32, i32* %arrayidx1219, align 4
  %816 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %816, i32 0, i32 0
  %arrayidx1221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1220, i32 0, i64 1
  %817 = load i32, i32* %arrayidx1221, align 4
  %sub1222 = sub nsw i32 %815, %817
  %add1223 = add nsw i32 %sub1222, 1
  %cmp1224 = icmp slt i32 0, %add1223
  br i1 %cmp1224, label %cond.true.1225, label %cond.false.1232

cond.true.1225:                                   ; preds = %cond.end.1215
  %818 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1226 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %818, i32 0, i32 1
  %arrayidx1227 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1226, i32 0, i64 1
  %819 = load i32, i32* %arrayidx1227, align 4
  %820 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %820, i32 0, i32 0
  %arrayidx1229 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1228, i32 0, i64 1
  %821 = load i32, i32* %arrayidx1229, align 4
  %sub1230 = sub nsw i32 %819, %821
  %add1231 = add nsw i32 %sub1230, 1
  br label %cond.end.1233

cond.false.1232:                                  ; preds = %cond.end.1215
  br label %cond.end.1233

cond.end.1233:                                    ; preds = %cond.false.1232, %cond.true.1225
  %cond1234 = phi i32 [ %add1231, %cond.true.1225 ], [ 0, %cond.false.1232 ]
  %mul1235 = mul nsw i32 %mul1217, %cond1234
  store i32 %mul1235, i32* %hypre__sz11198, align 4
  %arrayidx1237 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %822 = load i32, i32* %arrayidx1237, align 4
  store i32 %822, i32* %hypre__sx21236, align 4
  %arrayidx1239 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %823 = load i32, i32* %arrayidx1239, align 4
  %824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %824, i32 0, i32 1
  %arrayidx1241 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1240, i32 0, i64 0
  %825 = load i32, i32* %arrayidx1241, align 4
  %826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1242 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %826, i32 0, i32 0
  %arrayidx1243 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1242, i32 0, i64 0
  %827 = load i32, i32* %arrayidx1243, align 4
  %sub1244 = sub nsw i32 %825, %827
  %add1245 = add nsw i32 %sub1244, 1
  %cmp1246 = icmp slt i32 0, %add1245
  br i1 %cmp1246, label %cond.true.1247, label %cond.false.1254

cond.true.1247:                                   ; preds = %cond.end.1233
  %828 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %828, i32 0, i32 1
  %arrayidx1249 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1248, i32 0, i64 0
  %829 = load i32, i32* %arrayidx1249, align 4
  %830 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %830, i32 0, i32 0
  %arrayidx1251 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1250, i32 0, i64 0
  %831 = load i32, i32* %arrayidx1251, align 4
  %sub1252 = sub nsw i32 %829, %831
  %add1253 = add nsw i32 %sub1252, 1
  br label %cond.end.1255

cond.false.1254:                                  ; preds = %cond.end.1233
  br label %cond.end.1255

cond.end.1255:                                    ; preds = %cond.false.1254, %cond.true.1247
  %cond1256 = phi i32 [ %add1253, %cond.true.1247 ], [ 0, %cond.false.1254 ]
  %mul1257 = mul nsw i32 %823, %cond1256
  store i32 %mul1257, i32* %hypre__sy21238, align 4
  %arrayidx1259 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %832 = load i32, i32* %arrayidx1259, align 4
  %833 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %833, i32 0, i32 1
  %arrayidx1261 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1260, i32 0, i64 0
  %834 = load i32, i32* %arrayidx1261, align 4
  %835 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1262 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %835, i32 0, i32 0
  %arrayidx1263 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1262, i32 0, i64 0
  %836 = load i32, i32* %arrayidx1263, align 4
  %sub1264 = sub nsw i32 %834, %836
  %add1265 = add nsw i32 %sub1264, 1
  %cmp1266 = icmp slt i32 0, %add1265
  br i1 %cmp1266, label %cond.true.1267, label %cond.false.1274

cond.true.1267:                                   ; preds = %cond.end.1255
  %837 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %837, i32 0, i32 1
  %arrayidx1269 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1268, i32 0, i64 0
  %838 = load i32, i32* %arrayidx1269, align 4
  %839 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1270 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %839, i32 0, i32 0
  %arrayidx1271 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1270, i32 0, i64 0
  %840 = load i32, i32* %arrayidx1271, align 4
  %sub1272 = sub nsw i32 %838, %840
  %add1273 = add nsw i32 %sub1272, 1
  br label %cond.end.1275

cond.false.1274:                                  ; preds = %cond.end.1255
  br label %cond.end.1275

cond.end.1275:                                    ; preds = %cond.false.1274, %cond.true.1267
  %cond1276 = phi i32 [ %add1273, %cond.true.1267 ], [ 0, %cond.false.1274 ]
  %mul1277 = mul nsw i32 %832, %cond1276
  %841 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %841, i32 0, i32 1
  %arrayidx1279 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1278, i32 0, i64 1
  %842 = load i32, i32* %arrayidx1279, align 4
  %843 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1280 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %843, i32 0, i32 0
  %arrayidx1281 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1280, i32 0, i64 1
  %844 = load i32, i32* %arrayidx1281, align 4
  %sub1282 = sub nsw i32 %842, %844
  %add1283 = add nsw i32 %sub1282, 1
  %cmp1284 = icmp slt i32 0, %add1283
  br i1 %cmp1284, label %cond.true.1285, label %cond.false.1292

cond.true.1285:                                   ; preds = %cond.end.1275
  %845 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1286 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %845, i32 0, i32 1
  %arrayidx1287 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1286, i32 0, i64 1
  %846 = load i32, i32* %arrayidx1287, align 4
  %847 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1288 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %847, i32 0, i32 0
  %arrayidx1289 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1288, i32 0, i64 1
  %848 = load i32, i32* %arrayidx1289, align 4
  %sub1290 = sub nsw i32 %846, %848
  %add1291 = add nsw i32 %sub1290, 1
  br label %cond.end.1293

cond.false.1292:                                  ; preds = %cond.end.1275
  br label %cond.end.1293

cond.end.1293:                                    ; preds = %cond.false.1292, %cond.true.1285
  %cond1294 = phi i32 [ %add1291, %cond.true.1285 ], [ 0, %cond.false.1292 ]
  %mul1295 = mul nsw i32 %mul1277, %cond1294
  store i32 %mul1295, i32* %hypre__sz21258, align 4
  %arrayidx1296 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %849 = load i32, i32* %arrayidx1296, align 4
  store i32 %849, i32* %hypre__sx3, align 4
  %arrayidx1297 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %850 = load i32, i32* %arrayidx1297, align 4
  %851 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1298 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %851, i32 0, i32 1
  %arrayidx1299 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1298, i32 0, i64 0
  %852 = load i32, i32* %arrayidx1299, align 4
  %853 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %853, i32 0, i32 0
  %arrayidx1301 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1300, i32 0, i64 0
  %854 = load i32, i32* %arrayidx1301, align 4
  %sub1302 = sub nsw i32 %852, %854
  %add1303 = add nsw i32 %sub1302, 1
  %cmp1304 = icmp slt i32 0, %add1303
  br i1 %cmp1304, label %cond.true.1305, label %cond.false.1312

cond.true.1305:                                   ; preds = %cond.end.1293
  %855 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1306 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %855, i32 0, i32 1
  %arrayidx1307 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1306, i32 0, i64 0
  %856 = load i32, i32* %arrayidx1307, align 4
  %857 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %857, i32 0, i32 0
  %arrayidx1309 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1308, i32 0, i64 0
  %858 = load i32, i32* %arrayidx1309, align 4
  %sub1310 = sub nsw i32 %856, %858
  %add1311 = add nsw i32 %sub1310, 1
  br label %cond.end.1313

cond.false.1312:                                  ; preds = %cond.end.1293
  br label %cond.end.1313

cond.end.1313:                                    ; preds = %cond.false.1312, %cond.true.1305
  %cond1314 = phi i32 [ %add1311, %cond.true.1305 ], [ 0, %cond.false.1312 ]
  %mul1315 = mul nsw i32 %850, %cond1314
  store i32 %mul1315, i32* %hypre__sy3, align 4
  %arrayidx1316 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %859 = load i32, i32* %arrayidx1316, align 4
  %860 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1317 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %860, i32 0, i32 1
  %arrayidx1318 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1317, i32 0, i64 0
  %861 = load i32, i32* %arrayidx1318, align 4
  %862 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1319 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %862, i32 0, i32 0
  %arrayidx1320 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1319, i32 0, i64 0
  %863 = load i32, i32* %arrayidx1320, align 4
  %sub1321 = sub nsw i32 %861, %863
  %add1322 = add nsw i32 %sub1321, 1
  %cmp1323 = icmp slt i32 0, %add1322
  br i1 %cmp1323, label %cond.true.1324, label %cond.false.1331

cond.true.1324:                                   ; preds = %cond.end.1313
  %864 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1325 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %864, i32 0, i32 1
  %arrayidx1326 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1325, i32 0, i64 0
  %865 = load i32, i32* %arrayidx1326, align 4
  %866 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1327 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %866, i32 0, i32 0
  %arrayidx1328 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1327, i32 0, i64 0
  %867 = load i32, i32* %arrayidx1328, align 4
  %sub1329 = sub nsw i32 %865, %867
  %add1330 = add nsw i32 %sub1329, 1
  br label %cond.end.1332

cond.false.1331:                                  ; preds = %cond.end.1313
  br label %cond.end.1332

cond.end.1332:                                    ; preds = %cond.false.1331, %cond.true.1324
  %cond1333 = phi i32 [ %add1330, %cond.true.1324 ], [ 0, %cond.false.1331 ]
  %mul1334 = mul nsw i32 %859, %cond1333
  %868 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1335 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %868, i32 0, i32 1
  %arrayidx1336 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1335, i32 0, i64 1
  %869 = load i32, i32* %arrayidx1336, align 4
  %870 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1337 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %870, i32 0, i32 0
  %arrayidx1338 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1337, i32 0, i64 1
  %871 = load i32, i32* %arrayidx1338, align 4
  %sub1339 = sub nsw i32 %869, %871
  %add1340 = add nsw i32 %sub1339, 1
  %cmp1341 = icmp slt i32 0, %add1340
  br i1 %cmp1341, label %cond.true.1342, label %cond.false.1349

cond.true.1342:                                   ; preds = %cond.end.1332
  %872 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1343 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %872, i32 0, i32 1
  %arrayidx1344 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1343, i32 0, i64 1
  %873 = load i32, i32* %arrayidx1344, align 4
  %874 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1345 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %874, i32 0, i32 0
  %arrayidx1346 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1345, i32 0, i64 1
  %875 = load i32, i32* %arrayidx1346, align 4
  %sub1347 = sub nsw i32 %873, %875
  %add1348 = add nsw i32 %sub1347, 1
  br label %cond.end.1350

cond.false.1349:                                  ; preds = %cond.end.1332
  br label %cond.end.1350

cond.end.1350:                                    ; preds = %cond.false.1349, %cond.true.1342
  %cond1351 = phi i32 [ %add1348, %cond.true.1342 ], [ 0, %cond.false.1349 ]
  %mul1352 = mul nsw i32 %mul1334, %cond1351
  store i32 %mul1352, i32* %hypre__sz3, align 4
  %arrayidx1354 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %876 = load i32, i32* %arrayidx1354, align 4
  store i32 %876, i32* %hypre__nx1353, align 4
  %arrayidx1356 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %877 = load i32, i32* %arrayidx1356, align 4
  store i32 %877, i32* %hypre__ny1355, align 4
  %arrayidx1358 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %878 = load i32, i32* %arrayidx1358, align 4
  store i32 %878, i32* %hypre__nz1357, align 4
  %879 = load i32, i32* %hypre__nx1353, align 4
  store i32 %879, i32* %hypre__mx1359, align 4
  %880 = load i32, i32* %hypre__ny1355, align 4
  store i32 %880, i32* %hypre__my1360, align 4
  %881 = load i32, i32* %hypre__nz1357, align 4
  store i32 %881, i32* %hypre__mz1361, align 4
  store i32 0, i32* %hypre__dir1362, align 4
  %882 = load i32, i32* %hypre__nx1353, align 4
  store i32 %882, i32* %hypre__max1363, align 4
  %883 = load i32, i32* %hypre__ny1355, align 4
  %884 = load i32, i32* %hypre__max1363, align 4
  %cmp1368 = icmp sgt i32 %883, %884
  br i1 %cmp1368, label %if.then.1369, label %if.end.1370

if.then.1369:                                     ; preds = %cond.end.1350
  store i32 1, i32* %hypre__dir1362, align 4
  %885 = load i32, i32* %hypre__ny1355, align 4
  store i32 %885, i32* %hypre__max1363, align 4
  br label %if.end.1370

if.end.1370:                                      ; preds = %if.then.1369, %cond.end.1350
  %886 = load i32, i32* %hypre__nz1357, align 4
  %887 = load i32, i32* %hypre__max1363, align 4
  %cmp1371 = icmp sgt i32 %886, %887
  br i1 %cmp1371, label %if.then.1372, label %if.end.1373

if.then.1372:                                     ; preds = %if.end.1370
  store i32 2, i32* %hypre__dir1362, align 4
  %888 = load i32, i32* %hypre__nz1357, align 4
  store i32 %888, i32* %hypre__max1363, align 4
  br label %if.end.1373

if.end.1373:                                      ; preds = %if.then.1372, %if.end.1370
  store i32 1, i32* %hypre__num_blocks1367, align 4
  %889 = load i32, i32* %hypre__max1363, align 4
  %890 = load i32, i32* %hypre__num_blocks1367, align 4
  %cmp1374 = icmp slt i32 %889, %890
  br i1 %cmp1374, label %if.then.1375, label %if.end.1376

if.then.1375:                                     ; preds = %if.end.1373
  %891 = load i32, i32* %hypre__max1363, align 4
  store i32 %891, i32* %hypre__num_blocks1367, align 4
  br label %if.end.1376

if.end.1376:                                      ; preds = %if.then.1375, %if.end.1373
  %892 = load i32, i32* %hypre__num_blocks1367, align 4
  %cmp1377 = icmp sgt i32 %892, 0
  br i1 %cmp1377, label %if.then.1378, label %if.end.1381

if.then.1378:                                     ; preds = %if.end.1376
  %893 = load i32, i32* %hypre__max1363, align 4
  %894 = load i32, i32* %hypre__num_blocks1367, align 4
  %div1379 = sdiv i32 %893, %894
  store i32 %div1379, i32* %hypre__div1364, align 4
  %895 = load i32, i32* %hypre__max1363, align 4
  %896 = load i32, i32* %hypre__num_blocks1367, align 4
  %rem1380 = srem i32 %895, %896
  store i32 %rem1380, i32* %hypre__mod1365, align 4
  br label %if.end.1381

if.end.1381:                                      ; preds = %if.then.1378, %if.end.1376
  store i32 0, i32* %hypre__block1366, align 4
  br label %for.cond.1382

for.cond.1382:                                    ; preds = %for.inc.1502, %if.end.1381
  %897 = load i32, i32* %hypre__block1366, align 4
  %898 = load i32, i32* %hypre__num_blocks1367, align 4
  %cmp1383 = icmp slt i32 %897, %898
  br i1 %cmp1383, label %for.body.1384, label %for.end.1504

for.body.1384:                                    ; preds = %for.cond.1382
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %899 = load i32, i32* %hypre__mx1359, align 4
  store i32 %899, i32* %hypre__nx1353, align 4
  %900 = load i32, i32* %hypre__my1360, align 4
  store i32 %900, i32* %hypre__ny1355, align 4
  %901 = load i32, i32* %hypre__mz1361, align 4
  store i32 %901, i32* %hypre__nz1357, align 4
  %902 = load i32, i32* %hypre__num_blocks1367, align 4
  %cmp1385 = icmp sgt i32 %902, 1
  br i1 %cmp1385, label %if.then.1386, label %if.end.1428

if.then.1386:                                     ; preds = %for.body.1384
  %903 = load i32, i32* %hypre__dir1362, align 4
  %cmp1387 = icmp eq i32 %903, 0
  br i1 %cmp1387, label %if.then.1388, label %if.else.1399

if.then.1388:                                     ; preds = %if.then.1386
  %904 = load i32, i32* %hypre__block1366, align 4
  %905 = load i32, i32* %hypre__div1364, align 4
  %mul1389 = mul nsw i32 %904, %905
  %906 = load i32, i32* %hypre__mod1365, align 4
  %907 = load i32, i32* %hypre__block1366, align 4
  %cmp1390 = icmp slt i32 %906, %907
  br i1 %cmp1390, label %cond.true.1391, label %cond.false.1392

cond.true.1391:                                   ; preds = %if.then.1388
  %908 = load i32, i32* %hypre__mod1365, align 4
  br label %cond.end.1393

cond.false.1392:                                  ; preds = %if.then.1388
  %909 = load i32, i32* %hypre__block1366, align 4
  br label %cond.end.1393

cond.end.1393:                                    ; preds = %cond.false.1392, %cond.true.1391
  %cond1394 = phi i32 [ %908, %cond.true.1391 ], [ %909, %cond.false.1392 ]
  %add1395 = add nsw i32 %mul1389, %cond1394
  store i32 %add1395, i32* %loopi, align 4
  %910 = load i32, i32* %hypre__div1364, align 4
  %911 = load i32, i32* %hypre__mod1365, align 4
  %912 = load i32, i32* %hypre__block1366, align 4
  %cmp1396 = icmp sgt i32 %911, %912
  %cond1397 = select i1 %cmp1396, i32 1, i32 0
  %add1398 = add nsw i32 %910, %cond1397
  store i32 %add1398, i32* %hypre__nx1353, align 4
  br label %if.end.1427

if.else.1399:                                     ; preds = %if.then.1386
  %913 = load i32, i32* %hypre__dir1362, align 4
  %cmp1400 = icmp eq i32 %913, 1
  br i1 %cmp1400, label %if.then.1401, label %if.else.1412

if.then.1401:                                     ; preds = %if.else.1399
  %914 = load i32, i32* %hypre__block1366, align 4
  %915 = load i32, i32* %hypre__div1364, align 4
  %mul1402 = mul nsw i32 %914, %915
  %916 = load i32, i32* %hypre__mod1365, align 4
  %917 = load i32, i32* %hypre__block1366, align 4
  %cmp1403 = icmp slt i32 %916, %917
  br i1 %cmp1403, label %cond.true.1404, label %cond.false.1405

cond.true.1404:                                   ; preds = %if.then.1401
  %918 = load i32, i32* %hypre__mod1365, align 4
  br label %cond.end.1406

cond.false.1405:                                  ; preds = %if.then.1401
  %919 = load i32, i32* %hypre__block1366, align 4
  br label %cond.end.1406

cond.end.1406:                                    ; preds = %cond.false.1405, %cond.true.1404
  %cond1407 = phi i32 [ %918, %cond.true.1404 ], [ %919, %cond.false.1405 ]
  %add1408 = add nsw i32 %mul1402, %cond1407
  store i32 %add1408, i32* %loopj, align 4
  %920 = load i32, i32* %hypre__div1364, align 4
  %921 = load i32, i32* %hypre__mod1365, align 4
  %922 = load i32, i32* %hypre__block1366, align 4
  %cmp1409 = icmp sgt i32 %921, %922
  %cond1410 = select i1 %cmp1409, i32 1, i32 0
  %add1411 = add nsw i32 %920, %cond1410
  store i32 %add1411, i32* %hypre__ny1355, align 4
  br label %if.end.1426

if.else.1412:                                     ; preds = %if.else.1399
  %923 = load i32, i32* %hypre__dir1362, align 4
  %cmp1413 = icmp eq i32 %923, 2
  br i1 %cmp1413, label %if.then.1414, label %if.end.1425

if.then.1414:                                     ; preds = %if.else.1412
  %924 = load i32, i32* %hypre__block1366, align 4
  %925 = load i32, i32* %hypre__div1364, align 4
  %mul1415 = mul nsw i32 %924, %925
  %926 = load i32, i32* %hypre__mod1365, align 4
  %927 = load i32, i32* %hypre__block1366, align 4
  %cmp1416 = icmp slt i32 %926, %927
  br i1 %cmp1416, label %cond.true.1417, label %cond.false.1418

cond.true.1417:                                   ; preds = %if.then.1414
  %928 = load i32, i32* %hypre__mod1365, align 4
  br label %cond.end.1419

cond.false.1418:                                  ; preds = %if.then.1414
  %929 = load i32, i32* %hypre__block1366, align 4
  br label %cond.end.1419

cond.end.1419:                                    ; preds = %cond.false.1418, %cond.true.1417
  %cond1420 = phi i32 [ %928, %cond.true.1417 ], [ %929, %cond.false.1418 ]
  %add1421 = add nsw i32 %mul1415, %cond1420
  store i32 %add1421, i32* %loopk, align 4
  %930 = load i32, i32* %hypre__div1364, align 4
  %931 = load i32, i32* %hypre__mod1365, align 4
  %932 = load i32, i32* %hypre__block1366, align 4
  %cmp1422 = icmp sgt i32 %931, %932
  %cond1423 = select i1 %cmp1422, i32 1, i32 0
  %add1424 = add nsw i32 %930, %cond1423
  store i32 %add1424, i32* %hypre__nz1357, align 4
  br label %if.end.1425

if.end.1425:                                      ; preds = %cond.end.1419, %if.else.1412
  br label %if.end.1426

if.end.1426:                                      ; preds = %if.end.1425, %cond.end.1406
  br label %if.end.1427

if.end.1427:                                      ; preds = %if.end.1426, %cond.end.1393
  br label %if.end.1428

if.end.1428:                                      ; preds = %if.end.1427, %for.body.1384
  %933 = load i32, i32* %hypre__i1start1024, align 4
  %934 = load i32, i32* %loopi, align 4
  %935 = load i32, i32* %hypre__sx11176, align 4
  %mul1429 = mul nsw i32 %934, %935
  %add1430 = add nsw i32 %933, %mul1429
  %936 = load i32, i32* %loopj, align 4
  %937 = load i32, i32* %hypre__sy11178, align 4
  %mul1431 = mul nsw i32 %936, %937
  %add1432 = add nsw i32 %add1430, %mul1431
  %938 = load i32, i32* %loopk, align 4
  %939 = load i32, i32* %hypre__sz11198, align 4
  %mul1433 = mul nsw i32 %938, %939
  %add1434 = add nsw i32 %add1432, %mul1433
  store i32 %add1434, i32* %Ai, align 4
  %940 = load i32, i32* %hypre__i2start1075, align 4
  %941 = load i32, i32* %loopi, align 4
  %942 = load i32, i32* %hypre__sx21236, align 4
  %mul1435 = mul nsw i32 %941, %942
  %add1436 = add nsw i32 %940, %mul1435
  %943 = load i32, i32* %loopj, align 4
  %944 = load i32, i32* %hypre__sy21238, align 4
  %mul1437 = mul nsw i32 %943, %944
  %add1438 = add nsw i32 %add1436, %mul1437
  %945 = load i32, i32* %loopk, align 4
  %946 = load i32, i32* %hypre__sz21258, align 4
  %mul1439 = mul nsw i32 %945, %946
  %add1440 = add nsw i32 %add1438, %mul1439
  store i32 %add1440, i32* %xi, align 4
  %947 = load i32, i32* %hypre__i3start, align 4
  %948 = load i32, i32* %loopi, align 4
  %949 = load i32, i32* %hypre__sx3, align 4
  %mul1441 = mul nsw i32 %948, %949
  %add1442 = add nsw i32 %947, %mul1441
  %950 = load i32, i32* %loopj, align 4
  %951 = load i32, i32* %hypre__sy3, align 4
  %mul1443 = mul nsw i32 %950, %951
  %add1444 = add nsw i32 %add1442, %mul1443
  %952 = load i32, i32* %loopk, align 4
  %953 = load i32, i32* %hypre__sz3, align 4
  %mul1445 = mul nsw i32 %952, %953
  %add1446 = add nsw i32 %add1444, %mul1445
  store i32 %add1446, i32* %xci, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1447

for.cond.1447:                                    ; preds = %for.inc.1499, %if.end.1428
  %954 = load i32, i32* %loopk, align 4
  %955 = load i32, i32* %hypre__nz1357, align 4
  %cmp1448 = icmp slt i32 %954, %955
  br i1 %cmp1448, label %for.body.1449, label %for.end.1501

for.body.1449:                                    ; preds = %for.cond.1447
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1450

for.cond.1450:                                    ; preds = %for.inc.1487, %for.body.1449
  %956 = load i32, i32* %loopj, align 4
  %957 = load i32, i32* %hypre__ny1355, align 4
  %cmp1451 = icmp slt i32 %956, %957
  br i1 %cmp1451, label %for.body.1452, label %for.end.1489

for.body.1452:                                    ; preds = %for.cond.1450
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1453

for.cond.1453:                                    ; preds = %for.inc.1475, %for.body.1452
  %958 = load i32, i32* %loopi, align 4
  %959 = load i32, i32* %hypre__nx1353, align 4
  %cmp1454 = icmp slt i32 %958, %959
  br i1 %cmp1454, label %for.body.1455, label %for.end.1477

for.body.1455:                                    ; preds = %for.cond.1453
  %960 = load i32, i32* %xi, align 4
  %idxprom1456 = sext i32 %960 to i64
  %961 = load double*, double** %xp, align 8
  %arrayidx1457 = getelementptr inbounds double, double* %961, i64 %idxprom1456
  %962 = load double, double* %arrayidx1457, align 8
  %963 = load i32, i32* %Ai, align 4
  %idxprom1458 = sext i32 %963 to i64
  %964 = load double*, double** %Awp, align 8
  %arrayidx1459 = getelementptr inbounds double, double* %964, i64 %idxprom1458
  %965 = load double, double* %arrayidx1459, align 8
  %966 = load i32, i32* %xi, align 4
  %idxprom1460 = sext i32 %966 to i64
  %967 = load double*, double** %xwp, align 8
  %arrayidx1461 = getelementptr inbounds double, double* %967, i64 %idxprom1460
  %968 = load double, double* %arrayidx1461, align 8
  %mul1462 = fmul double %965, %968
  %sub1463 = fsub double %962, %mul1462
  %969 = load i32, i32* %Ai, align 4
  %idxprom1464 = sext i32 %969 to i64
  %970 = load double*, double** %Aep, align 8
  %arrayidx1465 = getelementptr inbounds double, double* %970, i64 %idxprom1464
  %971 = load double, double* %arrayidx1465, align 8
  %972 = load i32, i32* %xi, align 4
  %idxprom1466 = sext i32 %972 to i64
  %973 = load double*, double** %xep, align 8
  %arrayidx1467 = getelementptr inbounds double, double* %973, i64 %idxprom1466
  %974 = load double, double* %arrayidx1467, align 8
  %mul1468 = fmul double %971, %974
  %sub1469 = fsub double %sub1463, %mul1468
  %975 = load i32, i32* %xci, align 4
  %idxprom1470 = sext i32 %975 to i64
  %976 = load double*, double** %xcp, align 8
  %arrayidx1471 = getelementptr inbounds double, double* %976, i64 %idxprom1470
  store double %sub1469, double* %arrayidx1471, align 8
  %977 = load i32, i32* %hypre__sx11176, align 4
  %978 = load i32, i32* %Ai, align 4
  %add1472 = add nsw i32 %978, %977
  store i32 %add1472, i32* %Ai, align 4
  %979 = load i32, i32* %hypre__sx21236, align 4
  %980 = load i32, i32* %xi, align 4
  %add1473 = add nsw i32 %980, %979
  store i32 %add1473, i32* %xi, align 4
  %981 = load i32, i32* %hypre__sx3, align 4
  %982 = load i32, i32* %xci, align 4
  %add1474 = add nsw i32 %982, %981
  store i32 %add1474, i32* %xci, align 4
  br label %for.inc.1475

for.inc.1475:                                     ; preds = %for.body.1455
  %983 = load i32, i32* %loopi, align 4
  %inc1476 = add nsw i32 %983, 1
  store i32 %inc1476, i32* %loopi, align 4
  br label %for.cond.1453

for.end.1477:                                     ; preds = %for.cond.1453
  %984 = load i32, i32* %hypre__sy11178, align 4
  %985 = load i32, i32* %hypre__nx1353, align 4
  %986 = load i32, i32* %hypre__sx11176, align 4
  %mul1478 = mul nsw i32 %985, %986
  %sub1479 = sub nsw i32 %984, %mul1478
  %987 = load i32, i32* %Ai, align 4
  %add1480 = add nsw i32 %987, %sub1479
  store i32 %add1480, i32* %Ai, align 4
  %988 = load i32, i32* %hypre__sy21238, align 4
  %989 = load i32, i32* %hypre__nx1353, align 4
  %990 = load i32, i32* %hypre__sx21236, align 4
  %mul1481 = mul nsw i32 %989, %990
  %sub1482 = sub nsw i32 %988, %mul1481
  %991 = load i32, i32* %xi, align 4
  %add1483 = add nsw i32 %991, %sub1482
  store i32 %add1483, i32* %xi, align 4
  %992 = load i32, i32* %hypre__sy3, align 4
  %993 = load i32, i32* %hypre__nx1353, align 4
  %994 = load i32, i32* %hypre__sx3, align 4
  %mul1484 = mul nsw i32 %993, %994
  %sub1485 = sub nsw i32 %992, %mul1484
  %995 = load i32, i32* %xci, align 4
  %add1486 = add nsw i32 %995, %sub1485
  store i32 %add1486, i32* %xci, align 4
  br label %for.inc.1487

for.inc.1487:                                     ; preds = %for.end.1477
  %996 = load i32, i32* %loopj, align 4
  %inc1488 = add nsw i32 %996, 1
  store i32 %inc1488, i32* %loopj, align 4
  br label %for.cond.1450

for.end.1489:                                     ; preds = %for.cond.1450
  %997 = load i32, i32* %hypre__sz11198, align 4
  %998 = load i32, i32* %hypre__ny1355, align 4
  %999 = load i32, i32* %hypre__sy11178, align 4
  %mul1490 = mul nsw i32 %998, %999
  %sub1491 = sub nsw i32 %997, %mul1490
  %1000 = load i32, i32* %Ai, align 4
  %add1492 = add nsw i32 %1000, %sub1491
  store i32 %add1492, i32* %Ai, align 4
  %1001 = load i32, i32* %hypre__sz21258, align 4
  %1002 = load i32, i32* %hypre__ny1355, align 4
  %1003 = load i32, i32* %hypre__sy21238, align 4
  %mul1493 = mul nsw i32 %1002, %1003
  %sub1494 = sub nsw i32 %1001, %mul1493
  %1004 = load i32, i32* %xi, align 4
  %add1495 = add nsw i32 %1004, %sub1494
  store i32 %add1495, i32* %xi, align 4
  %1005 = load i32, i32* %hypre__sz3, align 4
  %1006 = load i32, i32* %hypre__ny1355, align 4
  %1007 = load i32, i32* %hypre__sy3, align 4
  %mul1496 = mul nsw i32 %1006, %1007
  %sub1497 = sub nsw i32 %1005, %mul1496
  %1008 = load i32, i32* %xci, align 4
  %add1498 = add nsw i32 %1008, %sub1497
  store i32 %add1498, i32* %xci, align 4
  br label %for.inc.1499

for.inc.1499:                                     ; preds = %for.end.1489
  %1009 = load i32, i32* %loopk, align 4
  %inc1500 = add nsw i32 %1009, 1
  store i32 %inc1500, i32* %loopk, align 4
  br label %for.cond.1447

for.end.1501:                                     ; preds = %for.cond.1447
  br label %for.inc.1502

for.inc.1502:                                     ; preds = %for.end.1501
  %1010 = load i32, i32* %hypre__block1366, align 4
  %inc1503 = add nsw i32 %1010, 1
  store i32 %inc1503, i32* %hypre__block1366, align 4
  br label %for.cond.1382

for.end.1504:                                     ; preds = %for.cond.1382
  br label %for.inc.1505

for.inc.1505:                                     ; preds = %for.end.1504
  %1011 = load i32, i32* %j, align 4
  %inc1506 = add nsw i32 %1011, 1
  store i32 %inc1506, i32* %j, align 4
  br label %for.cond.1000

for.end.1507:                                     ; preds = %for.cond.1000
  br label %for.inc.1508

for.inc.1508:                                     ; preds = %for.end.1507
  %1012 = load i32, i32* %ci, align 4
  %inc1509 = add nsw i32 %1012, 1
  store i32 %inc1509, i32* %ci, align 4
  br label %for.cond.827

for.end.1510:                                     ; preds = %for.cond.827
  br label %for.inc.1511

for.inc.1511:                                     ; preds = %for.end.1510
  %1013 = load i32, i32* %compute_i, align 4
  %inc1512 = add nsw i32 %1013, 1
  store i32 %inc1512, i32* %compute_i, align 4
  br label %for.cond.812

for.end.1513:                                     ; preds = %for.cond.812
  br label %for.inc.1514

for.inc.1514:                                     ; preds = %for.end.1513
  %1014 = load i32, i32* %l, align 4
  %inc1515 = add nsw i32 %1014, 1
  store i32 %inc1515, i32* %l, align 4
  br label %for.cond.364

for.end.1516:                                     ; preds = %if.then.802
  %1015 = load i32, i32* %num_levels, align 4
  %sub1517 = sub nsw i32 %1015, 2
  store i32 %sub1517, i32* %l, align 4
  br label %for.cond.1518

for.cond.1518:                                    ; preds = %for.inc.2547, %for.end.1516
  %1016 = load i32, i32* %l, align 4
  %cmp1519 = icmp sge i32 %1016, 0
  br i1 %cmp1519, label %for.body.1520, label %for.end.2548

for.body.1520:                                    ; preds = %for.cond.1518
  %1017 = load i32, i32* %l, align 4
  %cmp1521 = icmp sgt i32 %1017, 0
  br i1 %cmp1521, label %if.then.1522, label %if.else.1526

if.then.1522:                                     ; preds = %for.body.1520
  %arrayidx1523 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx1523, align 4
  %arrayidx1524 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx1524, align 4
  %arrayidx1525 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx1525, align 4
  br label %if.end.1533

if.else.1526:                                     ; preds = %for.body.1520
  %1018 = load i32*, i32** %base_index, align 8
  %arrayidx1527 = getelementptr inbounds i32, i32* %1018, i64 0
  %1019 = load i32, i32* %arrayidx1527, align 4
  %arrayidx1528 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %1019, i32* %arrayidx1528, align 4
  %1020 = load i32*, i32** %base_index, align 8
  %arrayidx1529 = getelementptr inbounds i32, i32* %1020, i64 1
  %1021 = load i32, i32* %arrayidx1529, align 4
  %arrayidx1530 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %1021, i32* %arrayidx1530, align 4
  %1022 = load i32*, i32** %base_index, align 8
  %arrayidx1531 = getelementptr inbounds i32, i32* %1022, i64 2
  %1023 = load i32, i32* %arrayidx1531, align 4
  %arrayidx1532 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %1023, i32* %arrayidx1532, align 4
  br label %if.end.1533

if.end.1533:                                      ; preds = %if.else.1526, %if.then.1522
  %1024 = load i32, i32* %cdir, align 4
  %idxprom1534 = sext i32 %1024 to i64
  %arrayidx1535 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom1534
  %1025 = load i32, i32* %arrayidx1535, align 4
  %add1536 = add nsw i32 %1025, 0
  store i32 %add1536, i32* %arrayidx1535, align 4
  %1026 = load i32, i32* %l, align 4
  %cmp1537 = icmp sgt i32 %1026, 0
  br i1 %cmp1537, label %if.then.1538, label %if.else.1542

if.then.1538:                                     ; preds = %if.end.1533
  %arrayidx1539 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx1539, align 4
  %arrayidx1540 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1540, align 4
  %arrayidx1541 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx1541, align 4
  br label %if.end.1549

if.else.1542:                                     ; preds = %if.end.1533
  %1027 = load i32*, i32** %base_stride, align 8
  %arrayidx1543 = getelementptr inbounds i32, i32* %1027, i64 0
  %1028 = load i32, i32* %arrayidx1543, align 4
  %arrayidx1544 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %1028, i32* %arrayidx1544, align 4
  %1029 = load i32*, i32** %base_stride, align 8
  %arrayidx1545 = getelementptr inbounds i32, i32* %1029, i64 1
  %1030 = load i32, i32* %arrayidx1545, align 4
  %arrayidx1546 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %1030, i32* %arrayidx1546, align 4
  %1031 = load i32*, i32** %base_stride, align 8
  %arrayidx1547 = getelementptr inbounds i32, i32* %1031, i64 2
  %1032 = load i32, i32* %arrayidx1547, align 4
  %arrayidx1548 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %1032, i32* %arrayidx1548, align 4
  br label %if.end.1549

if.end.1549:                                      ; preds = %if.else.1542, %if.then.1538
  %1033 = load i32, i32* %cdir, align 4
  %idxprom1550 = sext i32 %1033 to i64
  %arrayidx1551 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom1550
  %1034 = load i32, i32* %arrayidx1551, align 4
  %mul1552 = mul nsw i32 %1034, 2
  store i32 %mul1552, i32* %arrayidx1551, align 4
  %1035 = load i32, i32* %l, align 4
  %idxprom1553 = sext i32 %1035 to i64
  %1036 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1554 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1036, i64 %idxprom1553
  %1037 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1554, align 8
  %grid1555 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1037, i32 0, i32 1
  %1038 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1555, align 8
  store %struct.hypre_StructGrid_struct* %1038, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %1039 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids1556 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1039, i32 0, i32 3
  %1040 = load i32*, i32** %ids1556, align 8
  store i32* %1040, i32** %fgrid_ids, align 8
  %1041 = load i32, i32* %l, align 4
  %add1557 = add nsw i32 %1041, 1
  %idxprom1558 = sext i32 %add1557 to i64
  %1042 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1559 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1042, i64 %idxprom1558
  %1043 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1559, align 8
  %grid1560 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1043, i32 0, i32 1
  %1044 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1560, align 8
  store %struct.hypre_StructGrid_struct* %1044, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %1045 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes1561 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1045, i32 0, i32 2
  %1046 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1561, align 8
  store %struct.hypre_BoxArray_struct* %1046, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %1047 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids1562 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1047, i32 0, i32 3
  %1048 = load i32*, i32** %ids1562, align 8
  store i32* %1048, i32** %cgrid_ids, align 8
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.1563

for.cond.1563:                                    ; preds = %for.inc.1979, %if.end.1549
  %1049 = load i32, i32* %ci, align 4
  %1050 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size1564 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1050, i32 0, i32 1
  %1051 = load i32, i32* %size1564, align 4
  %cmp1565 = icmp slt i32 %1049, %1051
  br i1 %cmp1565, label %for.body.1566, label %for.end.1981

for.body.1566:                                    ; preds = %for.cond.1563
  br label %while.cond.1567

while.cond.1567:                                  ; preds = %while.body.1573, %for.body.1566
  %1052 = load i32, i32* %fi, align 4
  %idxprom1568 = sext i32 %1052 to i64
  %1053 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx1569 = getelementptr inbounds i32, i32* %1053, i64 %idxprom1568
  %1054 = load i32, i32* %arrayidx1569, align 4
  %1055 = load i32, i32* %ci, align 4
  %idxprom1570 = sext i32 %1055 to i64
  %1056 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx1571 = getelementptr inbounds i32, i32* %1056, i64 %idxprom1570
  %1057 = load i32, i32* %arrayidx1571, align 4
  %cmp1572 = icmp ne i32 %1054, %1057
  br i1 %cmp1572, label %while.body.1573, label %while.end.1575

while.body.1573:                                  ; preds = %while.cond.1567
  %1058 = load i32, i32* %fi, align 4
  %inc1574 = add nsw i32 %1058, 1
  store i32 %inc1574, i32* %fi, align 4
  br label %while.cond.1567

while.end.1575:                                   ; preds = %while.cond.1567
  %1059 = load i32, i32* %ci, align 4
  %idxprom1576 = sext i32 %1059 to i64
  %1060 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes1577 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1060, i32 0, i32 0
  %1061 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes1577, align 8
  %arrayidx1578 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1061, i64 %idxprom1576
  store %struct.hypre_Box_struct* %arrayidx1578, %struct.hypre_Box_struct** %compute_box, align 8
  %1062 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1579 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1062, i32 0, i32 0
  %arrayidx1580 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1579, i32 0, i64 0
  %1063 = load i32, i32* %arrayidx1580, align 4
  %arrayidx1581 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  store i32 %1063, i32* %arrayidx1581, align 4
  %1064 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1582 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1064, i32 0, i32 0
  %arrayidx1583 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1582, i32 0, i64 1
  %1065 = load i32, i32* %arrayidx1583, align 4
  %arrayidx1584 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  store i32 %1065, i32* %arrayidx1584, align 4
  %1066 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin1585 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1066, i32 0, i32 0
  %arrayidx1586 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1585, i32 0, i64 2
  %1067 = load i32, i32* %arrayidx1586, align 4
  %arrayidx1587 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  store i32 %1067, i32* %arrayidx1587, align 4
  %arraydecay1588 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %arraydecay1589 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay1590 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay1591 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i32 0
  %call1592 = call i32 @hypre_StructMapCoarseToFine(i32* %arraydecay1588, i32* %arraydecay1589, i32* %arraydecay1590, i32* %arraydecay1591)
  %1068 = load i32, i32* %fi, align 4
  %idxprom1593 = sext i32 %1068 to i64
  %1069 = load i32, i32* %l, align 4
  %idxprom1594 = sext i32 %1069 to i64
  %1070 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1595 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1070, i64 %idxprom1594
  %1071 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1595, align 8
  %data_space1596 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1071, i32 0, i32 2
  %1072 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space1596, align 8
  %boxes1597 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1072, i32 0, i32 0
  %1073 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes1597, align 8
  %arrayidx1598 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1073, i64 %idxprom1593
  store %struct.hypre_Box_struct* %arrayidx1598, %struct.hypre_Box_struct** %x_dbox, align 8
  %1074 = load i32, i32* %ci, align 4
  %idxprom1599 = sext i32 %1074 to i64
  %1075 = load i32, i32* %l, align 4
  %add1600 = add nsw i32 %1075, 1
  %idxprom1601 = sext i32 %add1600 to i64
  %1076 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1602 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1076, i64 %idxprom1601
  %1077 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1602, align 8
  %data_space1603 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1077, i32 0, i32 2
  %1078 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space1603, align 8
  %boxes1604 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1078, i32 0, i32 0
  %1079 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes1604, align 8
  %arrayidx1605 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1079, i64 %idxprom1599
  store %struct.hypre_Box_struct* %arrayidx1605, %struct.hypre_Box_struct** %xc_dbox, align 8
  %1080 = load i32, i32* %l, align 4
  %idxprom1606 = sext i32 %1080 to i64
  %1081 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1607 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1081, i64 %idxprom1606
  %1082 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1607, align 8
  %data1608 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1082, i32 0, i32 3
  %1083 = load double*, double** %data1608, align 8
  %1084 = load i32, i32* %fi, align 4
  %idxprom1609 = sext i32 %1084 to i64
  %1085 = load i32, i32* %l, align 4
  %idxprom1610 = sext i32 %1085 to i64
  %1086 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1611 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1086, i64 %idxprom1610
  %1087 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1611, align 8
  %data_indices1612 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1087, i32 0, i32 6
  %1088 = load i32*, i32** %data_indices1612, align 8
  %arrayidx1613 = getelementptr inbounds i32, i32* %1088, i64 %idxprom1609
  %1089 = load i32, i32* %arrayidx1613, align 4
  %idx.ext1614 = sext i32 %1089 to i64
  %add.ptr1615 = getelementptr inbounds double, double* %1083, i64 %idx.ext1614
  store double* %add.ptr1615, double** %xp, align 8
  %1090 = load i32, i32* %l, align 4
  %add1616 = add nsw i32 %1090, 1
  %idxprom1617 = sext i32 %add1616 to i64
  %1091 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1618 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1091, i64 %idxprom1617
  %1092 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1618, align 8
  %data1619 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1092, i32 0, i32 3
  %1093 = load double*, double** %data1619, align 8
  %1094 = load i32, i32* %ci, align 4
  %idxprom1620 = sext i32 %1094 to i64
  %1095 = load i32, i32* %l, align 4
  %add1621 = add nsw i32 %1095, 1
  %idxprom1622 = sext i32 %add1621 to i64
  %1096 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1623 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1096, i64 %idxprom1622
  %1097 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1623, align 8
  %data_indices1624 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1097, i32 0, i32 6
  %1098 = load i32*, i32** %data_indices1624, align 8
  %arrayidx1625 = getelementptr inbounds i32, i32* %1098, i64 %idxprom1620
  %1099 = load i32, i32* %arrayidx1625, align 4
  %idx.ext1626 = sext i32 %1099 to i64
  %add.ptr1627 = getelementptr inbounds double, double* %1093, i64 %idx.ext1626
  store double* %add.ptr1627, double** %xcp, align 8
  %1100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay1628 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call1629 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %1100, i32* %arraydecay1628)
  %arrayidx1631 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %1101 = load i32, i32* %arrayidx1631, align 4
  %1102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1632 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1102, i32 0, i32 0
  %arrayidx1633 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1632, i32 0, i64 0
  %1103 = load i32, i32* %arrayidx1633, align 4
  %sub1634 = sub nsw i32 %1101, %1103
  %arrayidx1635 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %1104 = load i32, i32* %arrayidx1635, align 4
  %1105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1636 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1105, i32 0, i32 0
  %arrayidx1637 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1636, i32 0, i64 1
  %1106 = load i32, i32* %arrayidx1637, align 4
  %sub1638 = sub nsw i32 %1104, %1106
  %arrayidx1639 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %1107 = load i32, i32* %arrayidx1639, align 4
  %1108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1640 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1108, i32 0, i32 0
  %arrayidx1641 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1640, i32 0, i64 2
  %1109 = load i32, i32* %arrayidx1641, align 4
  %sub1642 = sub nsw i32 %1107, %1109
  %1110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1110, i32 0, i32 1
  %arrayidx1644 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1643, i32 0, i64 1
  %1111 = load i32, i32* %arrayidx1644, align 4
  %1112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1645 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1112, i32 0, i32 0
  %arrayidx1646 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1645, i32 0, i64 1
  %1113 = load i32, i32* %arrayidx1646, align 4
  %sub1647 = sub nsw i32 %1111, %1113
  %add1648 = add nsw i32 %sub1647, 1
  %cmp1649 = icmp slt i32 0, %add1648
  br i1 %cmp1649, label %cond.true.1650, label %cond.false.1657

cond.true.1650:                                   ; preds = %while.end.1575
  %1114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1651 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1114, i32 0, i32 1
  %arrayidx1652 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1651, i32 0, i64 1
  %1115 = load i32, i32* %arrayidx1652, align 4
  %1116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1653 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1116, i32 0, i32 0
  %arrayidx1654 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1653, i32 0, i64 1
  %1117 = load i32, i32* %arrayidx1654, align 4
  %sub1655 = sub nsw i32 %1115, %1117
  %add1656 = add nsw i32 %sub1655, 1
  br label %cond.end.1658

cond.false.1657:                                  ; preds = %while.end.1575
  br label %cond.end.1658

cond.end.1658:                                    ; preds = %cond.false.1657, %cond.true.1650
  %cond1659 = phi i32 [ %add1656, %cond.true.1650 ], [ 0, %cond.false.1657 ]
  %mul1660 = mul nsw i32 %sub1642, %cond1659
  %add1661 = add nsw i32 %sub1638, %mul1660
  %1118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1662 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1118, i32 0, i32 1
  %arrayidx1663 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1662, i32 0, i64 0
  %1119 = load i32, i32* %arrayidx1663, align 4
  %1120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1664 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1120, i32 0, i32 0
  %arrayidx1665 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1664, i32 0, i64 0
  %1121 = load i32, i32* %arrayidx1665, align 4
  %sub1666 = sub nsw i32 %1119, %1121
  %add1667 = add nsw i32 %sub1666, 1
  %cmp1668 = icmp slt i32 0, %add1667
  br i1 %cmp1668, label %cond.true.1669, label %cond.false.1676

cond.true.1669:                                   ; preds = %cond.end.1658
  %1122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1670 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1122, i32 0, i32 1
  %arrayidx1671 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1670, i32 0, i64 0
  %1123 = load i32, i32* %arrayidx1671, align 4
  %1124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1124, i32 0, i32 0
  %arrayidx1673 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1672, i32 0, i64 0
  %1125 = load i32, i32* %arrayidx1673, align 4
  %sub1674 = sub nsw i32 %1123, %1125
  %add1675 = add nsw i32 %sub1674, 1
  br label %cond.end.1677

cond.false.1676:                                  ; preds = %cond.end.1658
  br label %cond.end.1677

cond.end.1677:                                    ; preds = %cond.false.1676, %cond.true.1669
  %cond1678 = phi i32 [ %add1675, %cond.true.1669 ], [ 0, %cond.false.1676 ]
  %mul1679 = mul nsw i32 %add1661, %cond1678
  %add1680 = add nsw i32 %sub1634, %mul1679
  store i32 %add1680, i32* %hypre__i1start1630, align 4
  %arrayidx1682 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %1126 = load i32, i32* %arrayidx1682, align 4
  %1127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1683 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1127, i32 0, i32 0
  %arrayidx1684 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1683, i32 0, i64 0
  %1128 = load i32, i32* %arrayidx1684, align 4
  %sub1685 = sub nsw i32 %1126, %1128
  %arrayidx1686 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %1129 = load i32, i32* %arrayidx1686, align 4
  %1130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1687 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1130, i32 0, i32 0
  %arrayidx1688 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1687, i32 0, i64 1
  %1131 = load i32, i32* %arrayidx1688, align 4
  %sub1689 = sub nsw i32 %1129, %1131
  %arrayidx1690 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %1132 = load i32, i32* %arrayidx1690, align 4
  %1133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1691 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1133, i32 0, i32 0
  %arrayidx1692 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1691, i32 0, i64 2
  %1134 = load i32, i32* %arrayidx1692, align 4
  %sub1693 = sub nsw i32 %1132, %1134
  %1135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1694 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1135, i32 0, i32 1
  %arrayidx1695 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1694, i32 0, i64 1
  %1136 = load i32, i32* %arrayidx1695, align 4
  %1137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1696 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1137, i32 0, i32 0
  %arrayidx1697 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1696, i32 0, i64 1
  %1138 = load i32, i32* %arrayidx1697, align 4
  %sub1698 = sub nsw i32 %1136, %1138
  %add1699 = add nsw i32 %sub1698, 1
  %cmp1700 = icmp slt i32 0, %add1699
  br i1 %cmp1700, label %cond.true.1701, label %cond.false.1708

cond.true.1701:                                   ; preds = %cond.end.1677
  %1139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1702 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1139, i32 0, i32 1
  %arrayidx1703 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1702, i32 0, i64 1
  %1140 = load i32, i32* %arrayidx1703, align 4
  %1141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1704 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1141, i32 0, i32 0
  %arrayidx1705 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1704, i32 0, i64 1
  %1142 = load i32, i32* %arrayidx1705, align 4
  %sub1706 = sub nsw i32 %1140, %1142
  %add1707 = add nsw i32 %sub1706, 1
  br label %cond.end.1709

cond.false.1708:                                  ; preds = %cond.end.1677
  br label %cond.end.1709

cond.end.1709:                                    ; preds = %cond.false.1708, %cond.true.1701
  %cond1710 = phi i32 [ %add1707, %cond.true.1701 ], [ 0, %cond.false.1708 ]
  %mul1711 = mul nsw i32 %sub1693, %cond1710
  %add1712 = add nsw i32 %sub1689, %mul1711
  %1143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1713 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1143, i32 0, i32 1
  %arrayidx1714 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1713, i32 0, i64 0
  %1144 = load i32, i32* %arrayidx1714, align 4
  %1145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1715 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1145, i32 0, i32 0
  %arrayidx1716 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1715, i32 0, i64 0
  %1146 = load i32, i32* %arrayidx1716, align 4
  %sub1717 = sub nsw i32 %1144, %1146
  %add1718 = add nsw i32 %sub1717, 1
  %cmp1719 = icmp slt i32 0, %add1718
  br i1 %cmp1719, label %cond.true.1720, label %cond.false.1727

cond.true.1720:                                   ; preds = %cond.end.1709
  %1147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1721 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1147, i32 0, i32 1
  %arrayidx1722 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1721, i32 0, i64 0
  %1148 = load i32, i32* %arrayidx1722, align 4
  %1149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1723 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1149, i32 0, i32 0
  %arrayidx1724 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1723, i32 0, i64 0
  %1150 = load i32, i32* %arrayidx1724, align 4
  %sub1725 = sub nsw i32 %1148, %1150
  %add1726 = add nsw i32 %sub1725, 1
  br label %cond.end.1728

cond.false.1727:                                  ; preds = %cond.end.1709
  br label %cond.end.1728

cond.end.1728:                                    ; preds = %cond.false.1727, %cond.true.1720
  %cond1729 = phi i32 [ %add1726, %cond.true.1720 ], [ 0, %cond.false.1727 ]
  %mul1730 = mul nsw i32 %add1712, %cond1729
  %add1731 = add nsw i32 %sub1685, %mul1730
  store i32 %add1731, i32* %hypre__i2start1681, align 4
  %arrayidx1733 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %1151 = load i32, i32* %arrayidx1733, align 4
  store i32 %1151, i32* %hypre__sx11732, align 4
  %arrayidx1735 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %1152 = load i32, i32* %arrayidx1735, align 4
  %1153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1736 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1153, i32 0, i32 1
  %arrayidx1737 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1736, i32 0, i64 0
  %1154 = load i32, i32* %arrayidx1737, align 4
  %1155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1738 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1155, i32 0, i32 0
  %arrayidx1739 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1738, i32 0, i64 0
  %1156 = load i32, i32* %arrayidx1739, align 4
  %sub1740 = sub nsw i32 %1154, %1156
  %add1741 = add nsw i32 %sub1740, 1
  %cmp1742 = icmp slt i32 0, %add1741
  br i1 %cmp1742, label %cond.true.1743, label %cond.false.1750

cond.true.1743:                                   ; preds = %cond.end.1728
  %1157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1744 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1157, i32 0, i32 1
  %arrayidx1745 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1744, i32 0, i64 0
  %1158 = load i32, i32* %arrayidx1745, align 4
  %1159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1746 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1159, i32 0, i32 0
  %arrayidx1747 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1746, i32 0, i64 0
  %1160 = load i32, i32* %arrayidx1747, align 4
  %sub1748 = sub nsw i32 %1158, %1160
  %add1749 = add nsw i32 %sub1748, 1
  br label %cond.end.1751

cond.false.1750:                                  ; preds = %cond.end.1728
  br label %cond.end.1751

cond.end.1751:                                    ; preds = %cond.false.1750, %cond.true.1743
  %cond1752 = phi i32 [ %add1749, %cond.true.1743 ], [ 0, %cond.false.1750 ]
  %mul1753 = mul nsw i32 %1152, %cond1752
  store i32 %mul1753, i32* %hypre__sy11734, align 4
  %arrayidx1755 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %1161 = load i32, i32* %arrayidx1755, align 4
  %1162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1756 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1162, i32 0, i32 1
  %arrayidx1757 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1756, i32 0, i64 0
  %1163 = load i32, i32* %arrayidx1757, align 4
  %1164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1758 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1164, i32 0, i32 0
  %arrayidx1759 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1758, i32 0, i64 0
  %1165 = load i32, i32* %arrayidx1759, align 4
  %sub1760 = sub nsw i32 %1163, %1165
  %add1761 = add nsw i32 %sub1760, 1
  %cmp1762 = icmp slt i32 0, %add1761
  br i1 %cmp1762, label %cond.true.1763, label %cond.false.1770

cond.true.1763:                                   ; preds = %cond.end.1751
  %1166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1764 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1166, i32 0, i32 1
  %arrayidx1765 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1764, i32 0, i64 0
  %1167 = load i32, i32* %arrayidx1765, align 4
  %1168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1766 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1168, i32 0, i32 0
  %arrayidx1767 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1766, i32 0, i64 0
  %1169 = load i32, i32* %arrayidx1767, align 4
  %sub1768 = sub nsw i32 %1167, %1169
  %add1769 = add nsw i32 %sub1768, 1
  br label %cond.end.1771

cond.false.1770:                                  ; preds = %cond.end.1751
  br label %cond.end.1771

cond.end.1771:                                    ; preds = %cond.false.1770, %cond.true.1763
  %cond1772 = phi i32 [ %add1769, %cond.true.1763 ], [ 0, %cond.false.1770 ]
  %mul1773 = mul nsw i32 %1161, %cond1772
  %1170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1774 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1170, i32 0, i32 1
  %arrayidx1775 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1774, i32 0, i64 1
  %1171 = load i32, i32* %arrayidx1775, align 4
  %1172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1776 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1172, i32 0, i32 0
  %arrayidx1777 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1776, i32 0, i64 1
  %1173 = load i32, i32* %arrayidx1777, align 4
  %sub1778 = sub nsw i32 %1171, %1173
  %add1779 = add nsw i32 %sub1778, 1
  %cmp1780 = icmp slt i32 0, %add1779
  br i1 %cmp1780, label %cond.true.1781, label %cond.false.1788

cond.true.1781:                                   ; preds = %cond.end.1771
  %1174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax1782 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1174, i32 0, i32 1
  %arrayidx1783 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1782, i32 0, i64 1
  %1175 = load i32, i32* %arrayidx1783, align 4
  %1176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin1784 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1176, i32 0, i32 0
  %arrayidx1785 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1784, i32 0, i64 1
  %1177 = load i32, i32* %arrayidx1785, align 4
  %sub1786 = sub nsw i32 %1175, %1177
  %add1787 = add nsw i32 %sub1786, 1
  br label %cond.end.1789

cond.false.1788:                                  ; preds = %cond.end.1771
  br label %cond.end.1789

cond.end.1789:                                    ; preds = %cond.false.1788, %cond.true.1781
  %cond1790 = phi i32 [ %add1787, %cond.true.1781 ], [ 0, %cond.false.1788 ]
  %mul1791 = mul nsw i32 %mul1773, %cond1790
  store i32 %mul1791, i32* %hypre__sz11754, align 4
  %arrayidx1793 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %1178 = load i32, i32* %arrayidx1793, align 4
  store i32 %1178, i32* %hypre__sx21792, align 4
  %arrayidx1795 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %1179 = load i32, i32* %arrayidx1795, align 4
  %1180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1796 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1180, i32 0, i32 1
  %arrayidx1797 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1796, i32 0, i64 0
  %1181 = load i32, i32* %arrayidx1797, align 4
  %1182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1798 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1182, i32 0, i32 0
  %arrayidx1799 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1798, i32 0, i64 0
  %1183 = load i32, i32* %arrayidx1799, align 4
  %sub1800 = sub nsw i32 %1181, %1183
  %add1801 = add nsw i32 %sub1800, 1
  %cmp1802 = icmp slt i32 0, %add1801
  br i1 %cmp1802, label %cond.true.1803, label %cond.false.1810

cond.true.1803:                                   ; preds = %cond.end.1789
  %1184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1804 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1184, i32 0, i32 1
  %arrayidx1805 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1804, i32 0, i64 0
  %1185 = load i32, i32* %arrayidx1805, align 4
  %1186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1806 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1186, i32 0, i32 0
  %arrayidx1807 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1806, i32 0, i64 0
  %1187 = load i32, i32* %arrayidx1807, align 4
  %sub1808 = sub nsw i32 %1185, %1187
  %add1809 = add nsw i32 %sub1808, 1
  br label %cond.end.1811

cond.false.1810:                                  ; preds = %cond.end.1789
  br label %cond.end.1811

cond.end.1811:                                    ; preds = %cond.false.1810, %cond.true.1803
  %cond1812 = phi i32 [ %add1809, %cond.true.1803 ], [ 0, %cond.false.1810 ]
  %mul1813 = mul nsw i32 %1179, %cond1812
  store i32 %mul1813, i32* %hypre__sy21794, align 4
  %arrayidx1815 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %1188 = load i32, i32* %arrayidx1815, align 4
  %1189 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1816 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1189, i32 0, i32 1
  %arrayidx1817 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1816, i32 0, i64 0
  %1190 = load i32, i32* %arrayidx1817, align 4
  %1191 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1818 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1191, i32 0, i32 0
  %arrayidx1819 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1818, i32 0, i64 0
  %1192 = load i32, i32* %arrayidx1819, align 4
  %sub1820 = sub nsw i32 %1190, %1192
  %add1821 = add nsw i32 %sub1820, 1
  %cmp1822 = icmp slt i32 0, %add1821
  br i1 %cmp1822, label %cond.true.1823, label %cond.false.1830

cond.true.1823:                                   ; preds = %cond.end.1811
  %1193 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1824 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1193, i32 0, i32 1
  %arrayidx1825 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1824, i32 0, i64 0
  %1194 = load i32, i32* %arrayidx1825, align 4
  %1195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1826 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1195, i32 0, i32 0
  %arrayidx1827 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1826, i32 0, i64 0
  %1196 = load i32, i32* %arrayidx1827, align 4
  %sub1828 = sub nsw i32 %1194, %1196
  %add1829 = add nsw i32 %sub1828, 1
  br label %cond.end.1831

cond.false.1830:                                  ; preds = %cond.end.1811
  br label %cond.end.1831

cond.end.1831:                                    ; preds = %cond.false.1830, %cond.true.1823
  %cond1832 = phi i32 [ %add1829, %cond.true.1823 ], [ 0, %cond.false.1830 ]
  %mul1833 = mul nsw i32 %1188, %cond1832
  %1197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1834 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1197, i32 0, i32 1
  %arrayidx1835 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1834, i32 0, i64 1
  %1198 = load i32, i32* %arrayidx1835, align 4
  %1199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1836 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1199, i32 0, i32 0
  %arrayidx1837 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1836, i32 0, i64 1
  %1200 = load i32, i32* %arrayidx1837, align 4
  %sub1838 = sub nsw i32 %1198, %1200
  %add1839 = add nsw i32 %sub1838, 1
  %cmp1840 = icmp slt i32 0, %add1839
  br i1 %cmp1840, label %cond.true.1841, label %cond.false.1848

cond.true.1841:                                   ; preds = %cond.end.1831
  %1201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax1842 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1201, i32 0, i32 1
  %arrayidx1843 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1842, i32 0, i64 1
  %1202 = load i32, i32* %arrayidx1843, align 4
  %1203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin1844 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1203, i32 0, i32 0
  %arrayidx1845 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1844, i32 0, i64 1
  %1204 = load i32, i32* %arrayidx1845, align 4
  %sub1846 = sub nsw i32 %1202, %1204
  %add1847 = add nsw i32 %sub1846, 1
  br label %cond.end.1849

cond.false.1848:                                  ; preds = %cond.end.1831
  br label %cond.end.1849

cond.end.1849:                                    ; preds = %cond.false.1848, %cond.true.1841
  %cond1850 = phi i32 [ %add1847, %cond.true.1841 ], [ 0, %cond.false.1848 ]
  %mul1851 = mul nsw i32 %mul1833, %cond1850
  store i32 %mul1851, i32* %hypre__sz21814, align 4
  %arrayidx1853 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %1205 = load i32, i32* %arrayidx1853, align 4
  store i32 %1205, i32* %hypre__nx1852, align 4
  %arrayidx1855 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %1206 = load i32, i32* %arrayidx1855, align 4
  store i32 %1206, i32* %hypre__ny1854, align 4
  %arrayidx1857 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %1207 = load i32, i32* %arrayidx1857, align 4
  store i32 %1207, i32* %hypre__nz1856, align 4
  %1208 = load i32, i32* %hypre__nx1852, align 4
  store i32 %1208, i32* %hypre__mx1858, align 4
  %1209 = load i32, i32* %hypre__ny1854, align 4
  store i32 %1209, i32* %hypre__my1859, align 4
  %1210 = load i32, i32* %hypre__nz1856, align 4
  store i32 %1210, i32* %hypre__mz1860, align 4
  store i32 0, i32* %hypre__dir1861, align 4
  %1211 = load i32, i32* %hypre__nx1852, align 4
  store i32 %1211, i32* %hypre__max1862, align 4
  %1212 = load i32, i32* %hypre__ny1854, align 4
  %1213 = load i32, i32* %hypre__max1862, align 4
  %cmp1867 = icmp sgt i32 %1212, %1213
  br i1 %cmp1867, label %if.then.1868, label %if.end.1869

if.then.1868:                                     ; preds = %cond.end.1849
  store i32 1, i32* %hypre__dir1861, align 4
  %1214 = load i32, i32* %hypre__ny1854, align 4
  store i32 %1214, i32* %hypre__max1862, align 4
  br label %if.end.1869

if.end.1869:                                      ; preds = %if.then.1868, %cond.end.1849
  %1215 = load i32, i32* %hypre__nz1856, align 4
  %1216 = load i32, i32* %hypre__max1862, align 4
  %cmp1870 = icmp sgt i32 %1215, %1216
  br i1 %cmp1870, label %if.then.1871, label %if.end.1872

if.then.1871:                                     ; preds = %if.end.1869
  store i32 2, i32* %hypre__dir1861, align 4
  %1217 = load i32, i32* %hypre__nz1856, align 4
  store i32 %1217, i32* %hypre__max1862, align 4
  br label %if.end.1872

if.end.1872:                                      ; preds = %if.then.1871, %if.end.1869
  store i32 1, i32* %hypre__num_blocks1866, align 4
  %1218 = load i32, i32* %hypre__max1862, align 4
  %1219 = load i32, i32* %hypre__num_blocks1866, align 4
  %cmp1873 = icmp slt i32 %1218, %1219
  br i1 %cmp1873, label %if.then.1874, label %if.end.1875

if.then.1874:                                     ; preds = %if.end.1872
  %1220 = load i32, i32* %hypre__max1862, align 4
  store i32 %1220, i32* %hypre__num_blocks1866, align 4
  br label %if.end.1875

if.end.1875:                                      ; preds = %if.then.1874, %if.end.1872
  %1221 = load i32, i32* %hypre__num_blocks1866, align 4
  %cmp1876 = icmp sgt i32 %1221, 0
  br i1 %cmp1876, label %if.then.1877, label %if.end.1880

if.then.1877:                                     ; preds = %if.end.1875
  %1222 = load i32, i32* %hypre__max1862, align 4
  %1223 = load i32, i32* %hypre__num_blocks1866, align 4
  %div1878 = sdiv i32 %1222, %1223
  store i32 %div1878, i32* %hypre__div1863, align 4
  %1224 = load i32, i32* %hypre__max1862, align 4
  %1225 = load i32, i32* %hypre__num_blocks1866, align 4
  %rem1879 = srem i32 %1224, %1225
  store i32 %rem1879, i32* %hypre__mod1864, align 4
  br label %if.end.1880

if.end.1880:                                      ; preds = %if.then.1877, %if.end.1875
  store i32 0, i32* %hypre__block1865, align 4
  br label %for.cond.1881

for.cond.1881:                                    ; preds = %for.inc.1976, %if.end.1880
  %1226 = load i32, i32* %hypre__block1865, align 4
  %1227 = load i32, i32* %hypre__num_blocks1866, align 4
  %cmp1882 = icmp slt i32 %1226, %1227
  br i1 %cmp1882, label %for.body.1883, label %for.end.1978

for.body.1883:                                    ; preds = %for.cond.1881
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %1228 = load i32, i32* %hypre__mx1858, align 4
  store i32 %1228, i32* %hypre__nx1852, align 4
  %1229 = load i32, i32* %hypre__my1859, align 4
  store i32 %1229, i32* %hypre__ny1854, align 4
  %1230 = load i32, i32* %hypre__mz1860, align 4
  store i32 %1230, i32* %hypre__nz1856, align 4
  %1231 = load i32, i32* %hypre__num_blocks1866, align 4
  %cmp1884 = icmp sgt i32 %1231, 1
  br i1 %cmp1884, label %if.then.1885, label %if.end.1927

if.then.1885:                                     ; preds = %for.body.1883
  %1232 = load i32, i32* %hypre__dir1861, align 4
  %cmp1886 = icmp eq i32 %1232, 0
  br i1 %cmp1886, label %if.then.1887, label %if.else.1898

if.then.1887:                                     ; preds = %if.then.1885
  %1233 = load i32, i32* %hypre__block1865, align 4
  %1234 = load i32, i32* %hypre__div1863, align 4
  %mul1888 = mul nsw i32 %1233, %1234
  %1235 = load i32, i32* %hypre__mod1864, align 4
  %1236 = load i32, i32* %hypre__block1865, align 4
  %cmp1889 = icmp slt i32 %1235, %1236
  br i1 %cmp1889, label %cond.true.1890, label %cond.false.1891

cond.true.1890:                                   ; preds = %if.then.1887
  %1237 = load i32, i32* %hypre__mod1864, align 4
  br label %cond.end.1892

cond.false.1891:                                  ; preds = %if.then.1887
  %1238 = load i32, i32* %hypre__block1865, align 4
  br label %cond.end.1892

cond.end.1892:                                    ; preds = %cond.false.1891, %cond.true.1890
  %cond1893 = phi i32 [ %1237, %cond.true.1890 ], [ %1238, %cond.false.1891 ]
  %add1894 = add nsw i32 %mul1888, %cond1893
  store i32 %add1894, i32* %loopi, align 4
  %1239 = load i32, i32* %hypre__div1863, align 4
  %1240 = load i32, i32* %hypre__mod1864, align 4
  %1241 = load i32, i32* %hypre__block1865, align 4
  %cmp1895 = icmp sgt i32 %1240, %1241
  %cond1896 = select i1 %cmp1895, i32 1, i32 0
  %add1897 = add nsw i32 %1239, %cond1896
  store i32 %add1897, i32* %hypre__nx1852, align 4
  br label %if.end.1926

if.else.1898:                                     ; preds = %if.then.1885
  %1242 = load i32, i32* %hypre__dir1861, align 4
  %cmp1899 = icmp eq i32 %1242, 1
  br i1 %cmp1899, label %if.then.1900, label %if.else.1911

if.then.1900:                                     ; preds = %if.else.1898
  %1243 = load i32, i32* %hypre__block1865, align 4
  %1244 = load i32, i32* %hypre__div1863, align 4
  %mul1901 = mul nsw i32 %1243, %1244
  %1245 = load i32, i32* %hypre__mod1864, align 4
  %1246 = load i32, i32* %hypre__block1865, align 4
  %cmp1902 = icmp slt i32 %1245, %1246
  br i1 %cmp1902, label %cond.true.1903, label %cond.false.1904

cond.true.1903:                                   ; preds = %if.then.1900
  %1247 = load i32, i32* %hypre__mod1864, align 4
  br label %cond.end.1905

cond.false.1904:                                  ; preds = %if.then.1900
  %1248 = load i32, i32* %hypre__block1865, align 4
  br label %cond.end.1905

cond.end.1905:                                    ; preds = %cond.false.1904, %cond.true.1903
  %cond1906 = phi i32 [ %1247, %cond.true.1903 ], [ %1248, %cond.false.1904 ]
  %add1907 = add nsw i32 %mul1901, %cond1906
  store i32 %add1907, i32* %loopj, align 4
  %1249 = load i32, i32* %hypre__div1863, align 4
  %1250 = load i32, i32* %hypre__mod1864, align 4
  %1251 = load i32, i32* %hypre__block1865, align 4
  %cmp1908 = icmp sgt i32 %1250, %1251
  %cond1909 = select i1 %cmp1908, i32 1, i32 0
  %add1910 = add nsw i32 %1249, %cond1909
  store i32 %add1910, i32* %hypre__ny1854, align 4
  br label %if.end.1925

if.else.1911:                                     ; preds = %if.else.1898
  %1252 = load i32, i32* %hypre__dir1861, align 4
  %cmp1912 = icmp eq i32 %1252, 2
  br i1 %cmp1912, label %if.then.1913, label %if.end.1924

if.then.1913:                                     ; preds = %if.else.1911
  %1253 = load i32, i32* %hypre__block1865, align 4
  %1254 = load i32, i32* %hypre__div1863, align 4
  %mul1914 = mul nsw i32 %1253, %1254
  %1255 = load i32, i32* %hypre__mod1864, align 4
  %1256 = load i32, i32* %hypre__block1865, align 4
  %cmp1915 = icmp slt i32 %1255, %1256
  br i1 %cmp1915, label %cond.true.1916, label %cond.false.1917

cond.true.1916:                                   ; preds = %if.then.1913
  %1257 = load i32, i32* %hypre__mod1864, align 4
  br label %cond.end.1918

cond.false.1917:                                  ; preds = %if.then.1913
  %1258 = load i32, i32* %hypre__block1865, align 4
  br label %cond.end.1918

cond.end.1918:                                    ; preds = %cond.false.1917, %cond.true.1916
  %cond1919 = phi i32 [ %1257, %cond.true.1916 ], [ %1258, %cond.false.1917 ]
  %add1920 = add nsw i32 %mul1914, %cond1919
  store i32 %add1920, i32* %loopk, align 4
  %1259 = load i32, i32* %hypre__div1863, align 4
  %1260 = load i32, i32* %hypre__mod1864, align 4
  %1261 = load i32, i32* %hypre__block1865, align 4
  %cmp1921 = icmp sgt i32 %1260, %1261
  %cond1922 = select i1 %cmp1921, i32 1, i32 0
  %add1923 = add nsw i32 %1259, %cond1922
  store i32 %add1923, i32* %hypre__nz1856, align 4
  br label %if.end.1924

if.end.1924:                                      ; preds = %cond.end.1918, %if.else.1911
  br label %if.end.1925

if.end.1925:                                      ; preds = %if.end.1924, %cond.end.1905
  br label %if.end.1926

if.end.1926:                                      ; preds = %if.end.1925, %cond.end.1892
  br label %if.end.1927

if.end.1927:                                      ; preds = %if.end.1926, %for.body.1883
  %1262 = load i32, i32* %hypre__i1start1630, align 4
  %1263 = load i32, i32* %loopi, align 4
  %1264 = load i32, i32* %hypre__sx11732, align 4
  %mul1928 = mul nsw i32 %1263, %1264
  %add1929 = add nsw i32 %1262, %mul1928
  %1265 = load i32, i32* %loopj, align 4
  %1266 = load i32, i32* %hypre__sy11734, align 4
  %mul1930 = mul nsw i32 %1265, %1266
  %add1931 = add nsw i32 %add1929, %mul1930
  %1267 = load i32, i32* %loopk, align 4
  %1268 = load i32, i32* %hypre__sz11754, align 4
  %mul1932 = mul nsw i32 %1267, %1268
  %add1933 = add nsw i32 %add1931, %mul1932
  store i32 %add1933, i32* %xi, align 4
  %1269 = load i32, i32* %hypre__i2start1681, align 4
  %1270 = load i32, i32* %loopi, align 4
  %1271 = load i32, i32* %hypre__sx21792, align 4
  %mul1934 = mul nsw i32 %1270, %1271
  %add1935 = add nsw i32 %1269, %mul1934
  %1272 = load i32, i32* %loopj, align 4
  %1273 = load i32, i32* %hypre__sy21794, align 4
  %mul1936 = mul nsw i32 %1272, %1273
  %add1937 = add nsw i32 %add1935, %mul1936
  %1274 = load i32, i32* %loopk, align 4
  %1275 = load i32, i32* %hypre__sz21814, align 4
  %mul1938 = mul nsw i32 %1274, %1275
  %add1939 = add nsw i32 %add1937, %mul1938
  store i32 %add1939, i32* %xci, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1940

for.cond.1940:                                    ; preds = %for.inc.1973, %if.end.1927
  %1276 = load i32, i32* %loopk, align 4
  %1277 = load i32, i32* %hypre__nz1856, align 4
  %cmp1941 = icmp slt i32 %1276, %1277
  br i1 %cmp1941, label %for.body.1942, label %for.end.1975

for.body.1942:                                    ; preds = %for.cond.1940
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1943

for.cond.1943:                                    ; preds = %for.inc.1964, %for.body.1942
  %1278 = load i32, i32* %loopj, align 4
  %1279 = load i32, i32* %hypre__ny1854, align 4
  %cmp1944 = icmp slt i32 %1278, %1279
  br i1 %cmp1944, label %for.body.1945, label %for.end.1966

for.body.1945:                                    ; preds = %for.cond.1943
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1946

for.cond.1946:                                    ; preds = %for.inc.1955, %for.body.1945
  %1280 = load i32, i32* %loopi, align 4
  %1281 = load i32, i32* %hypre__nx1852, align 4
  %cmp1947 = icmp slt i32 %1280, %1281
  br i1 %cmp1947, label %for.body.1948, label %for.end.1957

for.body.1948:                                    ; preds = %for.cond.1946
  %1282 = load i32, i32* %xci, align 4
  %idxprom1949 = sext i32 %1282 to i64
  %1283 = load double*, double** %xcp, align 8
  %arrayidx1950 = getelementptr inbounds double, double* %1283, i64 %idxprom1949
  %1284 = load double, double* %arrayidx1950, align 8
  %1285 = load i32, i32* %xi, align 4
  %idxprom1951 = sext i32 %1285 to i64
  %1286 = load double*, double** %xp, align 8
  %arrayidx1952 = getelementptr inbounds double, double* %1286, i64 %idxprom1951
  store double %1284, double* %arrayidx1952, align 8
  %1287 = load i32, i32* %hypre__sx11732, align 4
  %1288 = load i32, i32* %xi, align 4
  %add1953 = add nsw i32 %1288, %1287
  store i32 %add1953, i32* %xi, align 4
  %1289 = load i32, i32* %hypre__sx21792, align 4
  %1290 = load i32, i32* %xci, align 4
  %add1954 = add nsw i32 %1290, %1289
  store i32 %add1954, i32* %xci, align 4
  br label %for.inc.1955

for.inc.1955:                                     ; preds = %for.body.1948
  %1291 = load i32, i32* %loopi, align 4
  %inc1956 = add nsw i32 %1291, 1
  store i32 %inc1956, i32* %loopi, align 4
  br label %for.cond.1946

for.end.1957:                                     ; preds = %for.cond.1946
  %1292 = load i32, i32* %hypre__sy11734, align 4
  %1293 = load i32, i32* %hypre__nx1852, align 4
  %1294 = load i32, i32* %hypre__sx11732, align 4
  %mul1958 = mul nsw i32 %1293, %1294
  %sub1959 = sub nsw i32 %1292, %mul1958
  %1295 = load i32, i32* %xi, align 4
  %add1960 = add nsw i32 %1295, %sub1959
  store i32 %add1960, i32* %xi, align 4
  %1296 = load i32, i32* %hypre__sy21794, align 4
  %1297 = load i32, i32* %hypre__nx1852, align 4
  %1298 = load i32, i32* %hypre__sx21792, align 4
  %mul1961 = mul nsw i32 %1297, %1298
  %sub1962 = sub nsw i32 %1296, %mul1961
  %1299 = load i32, i32* %xci, align 4
  %add1963 = add nsw i32 %1299, %sub1962
  store i32 %add1963, i32* %xci, align 4
  br label %for.inc.1964

for.inc.1964:                                     ; preds = %for.end.1957
  %1300 = load i32, i32* %loopj, align 4
  %inc1965 = add nsw i32 %1300, 1
  store i32 %inc1965, i32* %loopj, align 4
  br label %for.cond.1943

for.end.1966:                                     ; preds = %for.cond.1943
  %1301 = load i32, i32* %hypre__sz11754, align 4
  %1302 = load i32, i32* %hypre__ny1854, align 4
  %1303 = load i32, i32* %hypre__sy11734, align 4
  %mul1967 = mul nsw i32 %1302, %1303
  %sub1968 = sub nsw i32 %1301, %mul1967
  %1304 = load i32, i32* %xi, align 4
  %add1969 = add nsw i32 %1304, %sub1968
  store i32 %add1969, i32* %xi, align 4
  %1305 = load i32, i32* %hypre__sz21814, align 4
  %1306 = load i32, i32* %hypre__ny1854, align 4
  %1307 = load i32, i32* %hypre__sy21794, align 4
  %mul1970 = mul nsw i32 %1306, %1307
  %sub1971 = sub nsw i32 %1305, %mul1970
  %1308 = load i32, i32* %xci, align 4
  %add1972 = add nsw i32 %1308, %sub1971
  store i32 %add1972, i32* %xci, align 4
  br label %for.inc.1973

for.inc.1973:                                     ; preds = %for.end.1966
  %1309 = load i32, i32* %loopk, align 4
  %inc1974 = add nsw i32 %1309, 1
  store i32 %inc1974, i32* %loopk, align 4
  br label %for.cond.1940

for.end.1975:                                     ; preds = %for.cond.1940
  br label %for.inc.1976

for.inc.1976:                                     ; preds = %for.end.1975
  %1310 = load i32, i32* %hypre__block1865, align 4
  %inc1977 = add nsw i32 %1310, 1
  store i32 %inc1977, i32* %hypre__block1865, align 4
  br label %for.cond.1881

for.end.1978:                                     ; preds = %for.cond.1881
  br label %for.inc.1979

for.inc.1979:                                     ; preds = %for.end.1978
  %1311 = load i32, i32* %ci, align 4
  %inc1980 = add nsw i32 %1311, 1
  store i32 %inc1980, i32* %ci, align 4
  br label %for.cond.1563

for.end.1981:                                     ; preds = %for.cond.1563
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.1982

for.cond.1982:                                    ; preds = %for.inc.2544, %for.end.1981
  %1312 = load i32, i32* %compute_i, align 4
  %cmp1983 = icmp slt i32 %1312, 2
  br i1 %cmp1983, label %for.body.1984, label %for.end.2546

for.body.1984:                                    ; preds = %for.cond.1982
  %1313 = load i32, i32* %compute_i, align 4
  switch i32 %1313, label %sw.epilog.2000 [
    i32 0, label %sw.bb.1985
    i32 1, label %sw.bb.1995
  ]

sw.bb.1985:                                       ; preds = %for.body.1984
  %1314 = load i32, i32* %l, align 4
  %idxprom1986 = sext i32 %1314 to i64
  %1315 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx1987 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1315, i64 %idxprom1986
  %1316 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx1987, align 8
  %data1988 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1316, i32 0, i32 3
  %1317 = load double*, double** %data1988, align 8
  store double* %1317, double** %xp, align 8
  %1318 = load i32, i32* %l, align 4
  %idxprom1989 = sext i32 %1318 to i64
  %1319 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %arrayidx1990 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %1319, i64 %idxprom1989
  %1320 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx1990, align 8
  %1321 = load double*, double** %xp, align 8
  %call1991 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %1320, double* %1321, %struct.hypre_CommHandle_struct** %comm_handle)
  %1322 = load i32, i32* %l, align 4
  %idxprom1992 = sext i32 %1322 to i64
  %1323 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %arrayidx1993 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %1323, i64 %idxprom1992
  %1324 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx1993, align 8
  %indt_boxes1994 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %1324, i32 0, i32 1
  %1325 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes1994, align 8
  store %struct.hypre_BoxArrayArray_struct* %1325, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog.2000

sw.bb.1995:                                       ; preds = %for.body.1984
  %1326 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call1996 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %1326)
  %1327 = load i32, i32* %l, align 4
  %idxprom1997 = sext i32 %1327 to i64
  %1328 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %arrayidx1998 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %1328, i64 %idxprom1997
  %1329 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx1998, align 8
  %dept_boxes1999 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %1329, i32 0, i32 2
  %1330 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes1999, align 8
  store %struct.hypre_BoxArrayArray_struct* %1330, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog.2000

sw.epilog.2000:                                   ; preds = %for.body.1984, %sw.bb.1995, %sw.bb.1985
  store i32 0, i32* %fi, align 4
  br label %for.cond.2001

for.cond.2001:                                    ; preds = %for.inc.2541, %sw.epilog.2000
  %1331 = load i32, i32* %fi, align 4
  %1332 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size2002 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %1332, i32 0, i32 1
  %1333 = load i32, i32* %size2002, align 4
  %cmp2003 = icmp slt i32 %1331, %1333
  br i1 %cmp2003, label %for.body.2004, label %for.end.2543

for.body.2004:                                    ; preds = %for.cond.2001
  %1334 = load i32, i32* %fi, align 4
  %idxprom2005 = sext i32 %1334 to i64
  %1335 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays2006 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %1335, i32 0, i32 0
  %1336 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays2006, align 8
  %arrayidx2007 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %1336, i64 %idxprom2005
  %1337 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx2007, align 8
  store %struct.hypre_BoxArray_struct* %1337, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %1338 = load i32, i32* %fi, align 4
  %idxprom2008 = sext i32 %1338 to i64
  %1339 = load i32, i32* %l, align 4
  %idxprom2009 = sext i32 %1339 to i64
  %1340 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx2010 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %1340, i64 %idxprom2009
  %1341 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx2010, align 8
  %data_space2011 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1341, i32 0, i32 5
  %1342 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space2011, align 8
  %boxes2012 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1342, i32 0, i32 0
  %1343 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2012, align 8
  %arrayidx2013 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1343, i64 %idxprom2008
  store %struct.hypre_Box_struct* %arrayidx2013, %struct.hypre_Box_struct** %A_dbox, align 8
  %1344 = load i32, i32* %fi, align 4
  %idxprom2014 = sext i32 %1344 to i64
  %1345 = load i32, i32* %l, align 4
  %idxprom2015 = sext i32 %1345 to i64
  %1346 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2016 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1346, i64 %idxprom2015
  %1347 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2016, align 8
  %data_space2017 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1347, i32 0, i32 2
  %1348 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space2017, align 8
  %boxes2018 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1348, i32 0, i32 0
  %1349 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2018, align 8
  %arrayidx2019 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1349, i64 %idxprom2014
  store %struct.hypre_Box_struct* %arrayidx2019, %struct.hypre_Box_struct** %x_dbox, align 8
  %arrayidx2020 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx2020, align 4
  %arrayidx2021 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx2021, align 4
  %arrayidx2022 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx2022, align 4
  %1350 = load i32, i32* %l, align 4
  %idxprom2023 = sext i32 %1350 to i64
  %1351 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx2024 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %1351, i64 %idxprom2023
  %1352 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx2024, align 8
  %1353 = load i32, i32* %fi, align 4
  %arraydecay2025 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call2026 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %1352, i32 %1353, i32* %arraydecay2025)
  store double* %call2026, double** %Ap, align 8
  %1354 = load i32, i32* %l, align 4
  %idxprom2027 = sext i32 %1354 to i64
  %1355 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2028 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1355, i64 %idxprom2027
  %1356 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2028, align 8
  %data2029 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1356, i32 0, i32 3
  %1357 = load double*, double** %data2029, align 8
  %1358 = load i32, i32* %fi, align 4
  %idxprom2030 = sext i32 %1358 to i64
  %1359 = load i32, i32* %l, align 4
  %idxprom2031 = sext i32 %1359 to i64
  %1360 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2032 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1360, i64 %idxprom2031
  %1361 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2032, align 8
  %data_indices2033 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1361, i32 0, i32 6
  %1362 = load i32*, i32** %data_indices2033, align 8
  %arrayidx2034 = getelementptr inbounds i32, i32* %1362, i64 %idxprom2030
  %1363 = load i32, i32* %arrayidx2034, align 4
  %idx.ext2035 = sext i32 %1363 to i64
  %add.ptr2036 = getelementptr inbounds double, double* %1357, i64 %idx.ext2035
  store double* %add.ptr2036, double** %xp, align 8
  %arrayidx2037 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx2037, align 4
  %arrayidx2038 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx2038, align 4
  %arrayidx2039 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx2039, align 4
  %1364 = load i32, i32* %l, align 4
  %idxprom2040 = sext i32 %1364 to i64
  %1365 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx2041 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %1365, i64 %idxprom2040
  %1366 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx2041, align 8
  %1367 = load i32, i32* %fi, align 4
  %arraydecay2042 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call2043 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %1366, i32 %1367, i32* %arraydecay2042)
  store double* %call2043, double** %Awp, align 8
  %1368 = load i32, i32* %l, align 4
  %idxprom2044 = sext i32 %1368 to i64
  %1369 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2045 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1369, i64 %idxprom2044
  %1370 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2045, align 8
  %data2046 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1370, i32 0, i32 3
  %1371 = load double*, double** %data2046, align 8
  %1372 = load i32, i32* %fi, align 4
  %idxprom2047 = sext i32 %1372 to i64
  %1373 = load i32, i32* %l, align 4
  %idxprom2048 = sext i32 %1373 to i64
  %1374 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2049 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1374, i64 %idxprom2048
  %1375 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2049, align 8
  %data_indices2050 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1375, i32 0, i32 6
  %1376 = load i32*, i32** %data_indices2050, align 8
  %arrayidx2051 = getelementptr inbounds i32, i32* %1376, i64 %idxprom2047
  %1377 = load i32, i32* %arrayidx2051, align 4
  %idx.ext2052 = sext i32 %1377 to i64
  %add.ptr2053 = getelementptr inbounds double, double* %1371, i64 %idx.ext2052
  %arrayidx2054 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %1378 = load i32, i32* %arrayidx2054, align 4
  %arrayidx2055 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %1379 = load i32, i32* %arrayidx2055, align 4
  %arrayidx2056 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %1380 = load i32, i32* %arrayidx2056, align 4
  %1381 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2057 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1381, i32 0, i32 1
  %arrayidx2058 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2057, i32 0, i64 1
  %1382 = load i32, i32* %arrayidx2058, align 4
  %1383 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2059 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1383, i32 0, i32 0
  %arrayidx2060 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2059, i32 0, i64 1
  %1384 = load i32, i32* %arrayidx2060, align 4
  %sub2061 = sub nsw i32 %1382, %1384
  %add2062 = add nsw i32 %sub2061, 1
  %cmp2063 = icmp slt i32 0, %add2062
  br i1 %cmp2063, label %cond.true.2064, label %cond.false.2071

cond.true.2064:                                   ; preds = %for.body.2004
  %1385 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2065 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1385, i32 0, i32 1
  %arrayidx2066 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2065, i32 0, i64 1
  %1386 = load i32, i32* %arrayidx2066, align 4
  %1387 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2067 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1387, i32 0, i32 0
  %arrayidx2068 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2067, i32 0, i64 1
  %1388 = load i32, i32* %arrayidx2068, align 4
  %sub2069 = sub nsw i32 %1386, %1388
  %add2070 = add nsw i32 %sub2069, 1
  br label %cond.end.2072

cond.false.2071:                                  ; preds = %for.body.2004
  br label %cond.end.2072

cond.end.2072:                                    ; preds = %cond.false.2071, %cond.true.2064
  %cond2073 = phi i32 [ %add2070, %cond.true.2064 ], [ 0, %cond.false.2071 ]
  %mul2074 = mul nsw i32 %1380, %cond2073
  %add2075 = add nsw i32 %1379, %mul2074
  %1389 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2076 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1389, i32 0, i32 1
  %arrayidx2077 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2076, i32 0, i64 0
  %1390 = load i32, i32* %arrayidx2077, align 4
  %1391 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2078 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1391, i32 0, i32 0
  %arrayidx2079 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2078, i32 0, i64 0
  %1392 = load i32, i32* %arrayidx2079, align 4
  %sub2080 = sub nsw i32 %1390, %1392
  %add2081 = add nsw i32 %sub2080, 1
  %cmp2082 = icmp slt i32 0, %add2081
  br i1 %cmp2082, label %cond.true.2083, label %cond.false.2090

cond.true.2083:                                   ; preds = %cond.end.2072
  %1393 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2084 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1393, i32 0, i32 1
  %arrayidx2085 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2084, i32 0, i64 0
  %1394 = load i32, i32* %arrayidx2085, align 4
  %1395 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2086 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1395, i32 0, i32 0
  %arrayidx2087 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2086, i32 0, i64 0
  %1396 = load i32, i32* %arrayidx2087, align 4
  %sub2088 = sub nsw i32 %1394, %1396
  %add2089 = add nsw i32 %sub2088, 1
  br label %cond.end.2091

cond.false.2090:                                  ; preds = %cond.end.2072
  br label %cond.end.2091

cond.end.2091:                                    ; preds = %cond.false.2090, %cond.true.2083
  %cond2092 = phi i32 [ %add2089, %cond.true.2083 ], [ 0, %cond.false.2090 ]
  %mul2093 = mul nsw i32 %add2075, %cond2092
  %add2094 = add nsw i32 %1378, %mul2093
  %idx.ext2095 = sext i32 %add2094 to i64
  %add.ptr2096 = getelementptr inbounds double, double* %add.ptr2053, i64 %idx.ext2095
  store double* %add.ptr2096, double** %xwp, align 8
  %arrayidx2097 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx2097, align 4
  %arrayidx2098 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx2098, align 4
  %arrayidx2099 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx2099, align 4
  %1397 = load i32, i32* %l, align 4
  %idxprom2100 = sext i32 %1397 to i64
  %1398 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx2101 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %1398, i64 %idxprom2100
  %1399 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx2101, align 8
  %1400 = load i32, i32* %fi, align 4
  %arraydecay2102 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call2103 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %1399, i32 %1400, i32* %arraydecay2102)
  store double* %call2103, double** %Aep, align 8
  %1401 = load i32, i32* %l, align 4
  %idxprom2104 = sext i32 %1401 to i64
  %1402 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2105 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1402, i64 %idxprom2104
  %1403 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2105, align 8
  %data2106 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1403, i32 0, i32 3
  %1404 = load double*, double** %data2106, align 8
  %1405 = load i32, i32* %fi, align 4
  %idxprom2107 = sext i32 %1405 to i64
  %1406 = load i32, i32* %l, align 4
  %idxprom2108 = sext i32 %1406 to i64
  %1407 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx2109 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %1407, i64 %idxprom2108
  %1408 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx2109, align 8
  %data_indices2110 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %1408, i32 0, i32 6
  %1409 = load i32*, i32** %data_indices2110, align 8
  %arrayidx2111 = getelementptr inbounds i32, i32* %1409, i64 %idxprom2107
  %1410 = load i32, i32* %arrayidx2111, align 4
  %idx.ext2112 = sext i32 %1410 to i64
  %add.ptr2113 = getelementptr inbounds double, double* %1404, i64 %idx.ext2112
  %arrayidx2114 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %1411 = load i32, i32* %arrayidx2114, align 4
  %arrayidx2115 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %1412 = load i32, i32* %arrayidx2115, align 4
  %arrayidx2116 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %1413 = load i32, i32* %arrayidx2116, align 4
  %1414 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1414, i32 0, i32 1
  %arrayidx2118 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2117, i32 0, i64 1
  %1415 = load i32, i32* %arrayidx2118, align 4
  %1416 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1416, i32 0, i32 0
  %arrayidx2120 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2119, i32 0, i64 1
  %1417 = load i32, i32* %arrayidx2120, align 4
  %sub2121 = sub nsw i32 %1415, %1417
  %add2122 = add nsw i32 %sub2121, 1
  %cmp2123 = icmp slt i32 0, %add2122
  br i1 %cmp2123, label %cond.true.2124, label %cond.false.2131

cond.true.2124:                                   ; preds = %cond.end.2091
  %1418 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1418, i32 0, i32 1
  %arrayidx2126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2125, i32 0, i64 1
  %1419 = load i32, i32* %arrayidx2126, align 4
  %1420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1420, i32 0, i32 0
  %arrayidx2128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2127, i32 0, i64 1
  %1421 = load i32, i32* %arrayidx2128, align 4
  %sub2129 = sub nsw i32 %1419, %1421
  %add2130 = add nsw i32 %sub2129, 1
  br label %cond.end.2132

cond.false.2131:                                  ; preds = %cond.end.2091
  br label %cond.end.2132

cond.end.2132:                                    ; preds = %cond.false.2131, %cond.true.2124
  %cond2133 = phi i32 [ %add2130, %cond.true.2124 ], [ 0, %cond.false.2131 ]
  %mul2134 = mul nsw i32 %1413, %cond2133
  %add2135 = add nsw i32 %1412, %mul2134
  %1422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1422, i32 0, i32 1
  %arrayidx2137 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2136, i32 0, i64 0
  %1423 = load i32, i32* %arrayidx2137, align 4
  %1424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1424, i32 0, i32 0
  %arrayidx2139 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2138, i32 0, i64 0
  %1425 = load i32, i32* %arrayidx2139, align 4
  %sub2140 = sub nsw i32 %1423, %1425
  %add2141 = add nsw i32 %sub2140, 1
  %cmp2142 = icmp slt i32 0, %add2141
  br i1 %cmp2142, label %cond.true.2143, label %cond.false.2150

cond.true.2143:                                   ; preds = %cond.end.2132
  %1426 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1426, i32 0, i32 1
  %arrayidx2145 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2144, i32 0, i64 0
  %1427 = load i32, i32* %arrayidx2145, align 4
  %1428 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1428, i32 0, i32 0
  %arrayidx2147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2146, i32 0, i64 0
  %1429 = load i32, i32* %arrayidx2147, align 4
  %sub2148 = sub nsw i32 %1427, %1429
  %add2149 = add nsw i32 %sub2148, 1
  br label %cond.end.2151

cond.false.2150:                                  ; preds = %cond.end.2132
  br label %cond.end.2151

cond.end.2151:                                    ; preds = %cond.false.2150, %cond.true.2143
  %cond2152 = phi i32 [ %add2149, %cond.true.2143 ], [ 0, %cond.false.2150 ]
  %mul2153 = mul nsw i32 %add2135, %cond2152
  %add2154 = add nsw i32 %1411, %mul2153
  %idx.ext2155 = sext i32 %add2154 to i64
  %add.ptr2156 = getelementptr inbounds double, double* %add.ptr2113, i64 %idx.ext2155
  store double* %add.ptr2156, double** %xep, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2157

for.cond.2157:                                    ; preds = %for.inc.2538, %cond.end.2151
  %1430 = load i32, i32* %j, align 4
  %1431 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size2158 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1431, i32 0, i32 1
  %1432 = load i32, i32* %size2158, align 4
  %cmp2159 = icmp slt i32 %1430, %1432
  br i1 %cmp2159, label %for.body.2160, label %for.end.2540

for.body.2160:                                    ; preds = %for.cond.2157
  %1433 = load i32, i32* %j, align 4
  %idxprom2161 = sext i32 %1433 to i64
  %1434 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes2162 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1434, i32 0, i32 0
  %1435 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2162, align 8
  %arrayidx2163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1435, i64 %idxprom2161
  store %struct.hypre_Box_struct* %arrayidx2163, %struct.hypre_Box_struct** %compute_box, align 8
  %1436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin2164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1436, i32 0, i32 0
  %arrayidx2165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2164, i32 0, i64 0
  %1437 = load i32, i32* %arrayidx2165, align 4
  %arrayidx2166 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %1437, i32* %arrayidx2166, align 4
  %1438 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin2167 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1438, i32 0, i32 0
  %arrayidx2168 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2167, i32 0, i64 1
  %1439 = load i32, i32* %arrayidx2168, align 4
  %arrayidx2169 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %1439, i32* %arrayidx2169, align 4
  %1440 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin2170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1440, i32 0, i32 0
  %arrayidx2171 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2170, i32 0, i64 2
  %1441 = load i32, i32* %arrayidx2171, align 4
  %arrayidx2172 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %1441, i32* %arrayidx2172, align 4
  %1442 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay2173 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay2174 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call2175 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %1442, i32* %arraydecay2173, i32* %arraydecay2174)
  %arrayidx2177 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %1443 = load i32, i32* %arrayidx2177, align 4
  %1444 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2178 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1444, i32 0, i32 0
  %arrayidx2179 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2178, i32 0, i64 0
  %1445 = load i32, i32* %arrayidx2179, align 4
  %sub2180 = sub nsw i32 %1443, %1445
  %arrayidx2181 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %1446 = load i32, i32* %arrayidx2181, align 4
  %1447 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1447, i32 0, i32 0
  %arrayidx2183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2182, i32 0, i64 1
  %1448 = load i32, i32* %arrayidx2183, align 4
  %sub2184 = sub nsw i32 %1446, %1448
  %arrayidx2185 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %1449 = load i32, i32* %arrayidx2185, align 4
  %1450 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1450, i32 0, i32 0
  %arrayidx2187 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2186, i32 0, i64 2
  %1451 = load i32, i32* %arrayidx2187, align 4
  %sub2188 = sub nsw i32 %1449, %1451
  %1452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2189 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1452, i32 0, i32 1
  %arrayidx2190 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2189, i32 0, i64 1
  %1453 = load i32, i32* %arrayidx2190, align 4
  %1454 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1454, i32 0, i32 0
  %arrayidx2192 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2191, i32 0, i64 1
  %1455 = load i32, i32* %arrayidx2192, align 4
  %sub2193 = sub nsw i32 %1453, %1455
  %add2194 = add nsw i32 %sub2193, 1
  %cmp2195 = icmp slt i32 0, %add2194
  br i1 %cmp2195, label %cond.true.2196, label %cond.false.2203

cond.true.2196:                                   ; preds = %for.body.2160
  %1456 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2197 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1456, i32 0, i32 1
  %arrayidx2198 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2197, i32 0, i64 1
  %1457 = load i32, i32* %arrayidx2198, align 4
  %1458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1458, i32 0, i32 0
  %arrayidx2200 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2199, i32 0, i64 1
  %1459 = load i32, i32* %arrayidx2200, align 4
  %sub2201 = sub nsw i32 %1457, %1459
  %add2202 = add nsw i32 %sub2201, 1
  br label %cond.end.2204

cond.false.2203:                                  ; preds = %for.body.2160
  br label %cond.end.2204

cond.end.2204:                                    ; preds = %cond.false.2203, %cond.true.2196
  %cond2205 = phi i32 [ %add2202, %cond.true.2196 ], [ 0, %cond.false.2203 ]
  %mul2206 = mul nsw i32 %sub2188, %cond2205
  %add2207 = add nsw i32 %sub2184, %mul2206
  %1460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2208 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1460, i32 0, i32 1
  %arrayidx2209 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2208, i32 0, i64 0
  %1461 = load i32, i32* %arrayidx2209, align 4
  %1462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1462, i32 0, i32 0
  %arrayidx2211 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2210, i32 0, i64 0
  %1463 = load i32, i32* %arrayidx2211, align 4
  %sub2212 = sub nsw i32 %1461, %1463
  %add2213 = add nsw i32 %sub2212, 1
  %cmp2214 = icmp slt i32 0, %add2213
  br i1 %cmp2214, label %cond.true.2215, label %cond.false.2222

cond.true.2215:                                   ; preds = %cond.end.2204
  %1464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1464, i32 0, i32 1
  %arrayidx2217 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2216, i32 0, i64 0
  %1465 = load i32, i32* %arrayidx2217, align 4
  %1466 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1466, i32 0, i32 0
  %arrayidx2219 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2218, i32 0, i64 0
  %1467 = load i32, i32* %arrayidx2219, align 4
  %sub2220 = sub nsw i32 %1465, %1467
  %add2221 = add nsw i32 %sub2220, 1
  br label %cond.end.2223

cond.false.2222:                                  ; preds = %cond.end.2204
  br label %cond.end.2223

cond.end.2223:                                    ; preds = %cond.false.2222, %cond.true.2215
  %cond2224 = phi i32 [ %add2221, %cond.true.2215 ], [ 0, %cond.false.2222 ]
  %mul2225 = mul nsw i32 %add2207, %cond2224
  %add2226 = add nsw i32 %sub2180, %mul2225
  store i32 %add2226, i32* %hypre__i1start2176, align 4
  %arrayidx2228 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %1468 = load i32, i32* %arrayidx2228, align 4
  %1469 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1469, i32 0, i32 0
  %arrayidx2230 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2229, i32 0, i64 0
  %1470 = load i32, i32* %arrayidx2230, align 4
  %sub2231 = sub nsw i32 %1468, %1470
  %arrayidx2232 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %1471 = load i32, i32* %arrayidx2232, align 4
  %1472 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2233 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1472, i32 0, i32 0
  %arrayidx2234 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2233, i32 0, i64 1
  %1473 = load i32, i32* %arrayidx2234, align 4
  %sub2235 = sub nsw i32 %1471, %1473
  %arrayidx2236 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %1474 = load i32, i32* %arrayidx2236, align 4
  %1475 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2237 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1475, i32 0, i32 0
  %arrayidx2238 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2237, i32 0, i64 2
  %1476 = load i32, i32* %arrayidx2238, align 4
  %sub2239 = sub nsw i32 %1474, %1476
  %1477 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1477, i32 0, i32 1
  %arrayidx2241 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2240, i32 0, i64 1
  %1478 = load i32, i32* %arrayidx2241, align 4
  %1479 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2242 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1479, i32 0, i32 0
  %arrayidx2243 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2242, i32 0, i64 1
  %1480 = load i32, i32* %arrayidx2243, align 4
  %sub2244 = sub nsw i32 %1478, %1480
  %add2245 = add nsw i32 %sub2244, 1
  %cmp2246 = icmp slt i32 0, %add2245
  br i1 %cmp2246, label %cond.true.2247, label %cond.false.2254

cond.true.2247:                                   ; preds = %cond.end.2223
  %1481 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1481, i32 0, i32 1
  %arrayidx2249 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2248, i32 0, i64 1
  %1482 = load i32, i32* %arrayidx2249, align 4
  %1483 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1483, i32 0, i32 0
  %arrayidx2251 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2250, i32 0, i64 1
  %1484 = load i32, i32* %arrayidx2251, align 4
  %sub2252 = sub nsw i32 %1482, %1484
  %add2253 = add nsw i32 %sub2252, 1
  br label %cond.end.2255

cond.false.2254:                                  ; preds = %cond.end.2223
  br label %cond.end.2255

cond.end.2255:                                    ; preds = %cond.false.2254, %cond.true.2247
  %cond2256 = phi i32 [ %add2253, %cond.true.2247 ], [ 0, %cond.false.2254 ]
  %mul2257 = mul nsw i32 %sub2239, %cond2256
  %add2258 = add nsw i32 %sub2235, %mul2257
  %1485 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1485, i32 0, i32 1
  %arrayidx2260 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2259, i32 0, i64 0
  %1486 = load i32, i32* %arrayidx2260, align 4
  %1487 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2261 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1487, i32 0, i32 0
  %arrayidx2262 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2261, i32 0, i64 0
  %1488 = load i32, i32* %arrayidx2262, align 4
  %sub2263 = sub nsw i32 %1486, %1488
  %add2264 = add nsw i32 %sub2263, 1
  %cmp2265 = icmp slt i32 0, %add2264
  br i1 %cmp2265, label %cond.true.2266, label %cond.false.2273

cond.true.2266:                                   ; preds = %cond.end.2255
  %1489 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2267 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1489, i32 0, i32 1
  %arrayidx2268 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2267, i32 0, i64 0
  %1490 = load i32, i32* %arrayidx2268, align 4
  %1491 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1491, i32 0, i32 0
  %arrayidx2270 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2269, i32 0, i64 0
  %1492 = load i32, i32* %arrayidx2270, align 4
  %sub2271 = sub nsw i32 %1490, %1492
  %add2272 = add nsw i32 %sub2271, 1
  br label %cond.end.2274

cond.false.2273:                                  ; preds = %cond.end.2255
  br label %cond.end.2274

cond.end.2274:                                    ; preds = %cond.false.2273, %cond.true.2266
  %cond2275 = phi i32 [ %add2272, %cond.true.2266 ], [ 0, %cond.false.2273 ]
  %mul2276 = mul nsw i32 %add2258, %cond2275
  %add2277 = add nsw i32 %sub2231, %mul2276
  store i32 %add2277, i32* %hypre__i2start2227, align 4
  %arrayidx2279 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %1493 = load i32, i32* %arrayidx2279, align 4
  store i32 %1493, i32* %hypre__sx12278, align 4
  %arrayidx2281 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %1494 = load i32, i32* %arrayidx2281, align 4
  %1495 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2282 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1495, i32 0, i32 1
  %arrayidx2283 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2282, i32 0, i64 0
  %1496 = load i32, i32* %arrayidx2283, align 4
  %1497 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2284 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1497, i32 0, i32 0
  %arrayidx2285 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2284, i32 0, i64 0
  %1498 = load i32, i32* %arrayidx2285, align 4
  %sub2286 = sub nsw i32 %1496, %1498
  %add2287 = add nsw i32 %sub2286, 1
  %cmp2288 = icmp slt i32 0, %add2287
  br i1 %cmp2288, label %cond.true.2289, label %cond.false.2296

cond.true.2289:                                   ; preds = %cond.end.2274
  %1499 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1499, i32 0, i32 1
  %arrayidx2291 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2290, i32 0, i64 0
  %1500 = load i32, i32* %arrayidx2291, align 4
  %1501 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2292 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1501, i32 0, i32 0
  %arrayidx2293 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2292, i32 0, i64 0
  %1502 = load i32, i32* %arrayidx2293, align 4
  %sub2294 = sub nsw i32 %1500, %1502
  %add2295 = add nsw i32 %sub2294, 1
  br label %cond.end.2297

cond.false.2296:                                  ; preds = %cond.end.2274
  br label %cond.end.2297

cond.end.2297:                                    ; preds = %cond.false.2296, %cond.true.2289
  %cond2298 = phi i32 [ %add2295, %cond.true.2289 ], [ 0, %cond.false.2296 ]
  %mul2299 = mul nsw i32 %1494, %cond2298
  store i32 %mul2299, i32* %hypre__sy12280, align 4
  %arrayidx2301 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %1503 = load i32, i32* %arrayidx2301, align 4
  %1504 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2302 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1504, i32 0, i32 1
  %arrayidx2303 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2302, i32 0, i64 0
  %1505 = load i32, i32* %arrayidx2303, align 4
  %1506 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2304 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1506, i32 0, i32 0
  %arrayidx2305 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2304, i32 0, i64 0
  %1507 = load i32, i32* %arrayidx2305, align 4
  %sub2306 = sub nsw i32 %1505, %1507
  %add2307 = add nsw i32 %sub2306, 1
  %cmp2308 = icmp slt i32 0, %add2307
  br i1 %cmp2308, label %cond.true.2309, label %cond.false.2316

cond.true.2309:                                   ; preds = %cond.end.2297
  %1508 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2310 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1508, i32 0, i32 1
  %arrayidx2311 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2310, i32 0, i64 0
  %1509 = load i32, i32* %arrayidx2311, align 4
  %1510 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2312 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1510, i32 0, i32 0
  %arrayidx2313 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2312, i32 0, i64 0
  %1511 = load i32, i32* %arrayidx2313, align 4
  %sub2314 = sub nsw i32 %1509, %1511
  %add2315 = add nsw i32 %sub2314, 1
  br label %cond.end.2317

cond.false.2316:                                  ; preds = %cond.end.2297
  br label %cond.end.2317

cond.end.2317:                                    ; preds = %cond.false.2316, %cond.true.2309
  %cond2318 = phi i32 [ %add2315, %cond.true.2309 ], [ 0, %cond.false.2316 ]
  %mul2319 = mul nsw i32 %1503, %cond2318
  %1512 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2320 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1512, i32 0, i32 1
  %arrayidx2321 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2320, i32 0, i64 1
  %1513 = load i32, i32* %arrayidx2321, align 4
  %1514 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2322 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1514, i32 0, i32 0
  %arrayidx2323 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2322, i32 0, i64 1
  %1515 = load i32, i32* %arrayidx2323, align 4
  %sub2324 = sub nsw i32 %1513, %1515
  %add2325 = add nsw i32 %sub2324, 1
  %cmp2326 = icmp slt i32 0, %add2325
  br i1 %cmp2326, label %cond.true.2327, label %cond.false.2334

cond.true.2327:                                   ; preds = %cond.end.2317
  %1516 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax2328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1516, i32 0, i32 1
  %arrayidx2329 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2328, i32 0, i64 1
  %1517 = load i32, i32* %arrayidx2329, align 4
  %1518 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin2330 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1518, i32 0, i32 0
  %arrayidx2331 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2330, i32 0, i64 1
  %1519 = load i32, i32* %arrayidx2331, align 4
  %sub2332 = sub nsw i32 %1517, %1519
  %add2333 = add nsw i32 %sub2332, 1
  br label %cond.end.2335

cond.false.2334:                                  ; preds = %cond.end.2317
  br label %cond.end.2335

cond.end.2335:                                    ; preds = %cond.false.2334, %cond.true.2327
  %cond2336 = phi i32 [ %add2333, %cond.true.2327 ], [ 0, %cond.false.2334 ]
  %mul2337 = mul nsw i32 %mul2319, %cond2336
  store i32 %mul2337, i32* %hypre__sz12300, align 4
  %arrayidx2339 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %1520 = load i32, i32* %arrayidx2339, align 4
  store i32 %1520, i32* %hypre__sx22338, align 4
  %arrayidx2341 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %1521 = load i32, i32* %arrayidx2341, align 4
  %1522 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2342 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1522, i32 0, i32 1
  %arrayidx2343 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2342, i32 0, i64 0
  %1523 = load i32, i32* %arrayidx2343, align 4
  %1524 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1524, i32 0, i32 0
  %arrayidx2345 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2344, i32 0, i64 0
  %1525 = load i32, i32* %arrayidx2345, align 4
  %sub2346 = sub nsw i32 %1523, %1525
  %add2347 = add nsw i32 %sub2346, 1
  %cmp2348 = icmp slt i32 0, %add2347
  br i1 %cmp2348, label %cond.true.2349, label %cond.false.2356

cond.true.2349:                                   ; preds = %cond.end.2335
  %1526 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2350 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1526, i32 0, i32 1
  %arrayidx2351 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2350, i32 0, i64 0
  %1527 = load i32, i32* %arrayidx2351, align 4
  %1528 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1528, i32 0, i32 0
  %arrayidx2353 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2352, i32 0, i64 0
  %1529 = load i32, i32* %arrayidx2353, align 4
  %sub2354 = sub nsw i32 %1527, %1529
  %add2355 = add nsw i32 %sub2354, 1
  br label %cond.end.2357

cond.false.2356:                                  ; preds = %cond.end.2335
  br label %cond.end.2357

cond.end.2357:                                    ; preds = %cond.false.2356, %cond.true.2349
  %cond2358 = phi i32 [ %add2355, %cond.true.2349 ], [ 0, %cond.false.2356 ]
  %mul2359 = mul nsw i32 %1521, %cond2358
  store i32 %mul2359, i32* %hypre__sy22340, align 4
  %arrayidx2361 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %1530 = load i32, i32* %arrayidx2361, align 4
  %1531 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2362 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1531, i32 0, i32 1
  %arrayidx2363 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2362, i32 0, i64 0
  %1532 = load i32, i32* %arrayidx2363, align 4
  %1533 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2364 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1533, i32 0, i32 0
  %arrayidx2365 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2364, i32 0, i64 0
  %1534 = load i32, i32* %arrayidx2365, align 4
  %sub2366 = sub nsw i32 %1532, %1534
  %add2367 = add nsw i32 %sub2366, 1
  %cmp2368 = icmp slt i32 0, %add2367
  br i1 %cmp2368, label %cond.true.2369, label %cond.false.2376

cond.true.2369:                                   ; preds = %cond.end.2357
  %1535 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2370 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1535, i32 0, i32 1
  %arrayidx2371 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2370, i32 0, i64 0
  %1536 = load i32, i32* %arrayidx2371, align 4
  %1537 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2372 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1537, i32 0, i32 0
  %arrayidx2373 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2372, i32 0, i64 0
  %1538 = load i32, i32* %arrayidx2373, align 4
  %sub2374 = sub nsw i32 %1536, %1538
  %add2375 = add nsw i32 %sub2374, 1
  br label %cond.end.2377

cond.false.2376:                                  ; preds = %cond.end.2357
  br label %cond.end.2377

cond.end.2377:                                    ; preds = %cond.false.2376, %cond.true.2369
  %cond2378 = phi i32 [ %add2375, %cond.true.2369 ], [ 0, %cond.false.2376 ]
  %mul2379 = mul nsw i32 %1530, %cond2378
  %1539 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2380 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1539, i32 0, i32 1
  %arrayidx2381 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2380, i32 0, i64 1
  %1540 = load i32, i32* %arrayidx2381, align 4
  %1541 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2382 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1541, i32 0, i32 0
  %arrayidx2383 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2382, i32 0, i64 1
  %1542 = load i32, i32* %arrayidx2383, align 4
  %sub2384 = sub nsw i32 %1540, %1542
  %add2385 = add nsw i32 %sub2384, 1
  %cmp2386 = icmp slt i32 0, %add2385
  br i1 %cmp2386, label %cond.true.2387, label %cond.false.2394

cond.true.2387:                                   ; preds = %cond.end.2377
  %1543 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imax2388 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1543, i32 0, i32 1
  %arrayidx2389 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2388, i32 0, i64 1
  %1544 = load i32, i32* %arrayidx2389, align 4
  %1545 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_dbox, align 8
  %imin2390 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1545, i32 0, i32 0
  %arrayidx2391 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2390, i32 0, i64 1
  %1546 = load i32, i32* %arrayidx2391, align 4
  %sub2392 = sub nsw i32 %1544, %1546
  %add2393 = add nsw i32 %sub2392, 1
  br label %cond.end.2395

cond.false.2394:                                  ; preds = %cond.end.2377
  br label %cond.end.2395

cond.end.2395:                                    ; preds = %cond.false.2394, %cond.true.2387
  %cond2396 = phi i32 [ %add2393, %cond.true.2387 ], [ 0, %cond.false.2394 ]
  %mul2397 = mul nsw i32 %mul2379, %cond2396
  store i32 %mul2397, i32* %hypre__sz22360, align 4
  %arrayidx2399 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %1547 = load i32, i32* %arrayidx2399, align 4
  store i32 %1547, i32* %hypre__nx2398, align 4
  %arrayidx2401 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %1548 = load i32, i32* %arrayidx2401, align 4
  store i32 %1548, i32* %hypre__ny2400, align 4
  %arrayidx2403 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %1549 = load i32, i32* %arrayidx2403, align 4
  store i32 %1549, i32* %hypre__nz2402, align 4
  %1550 = load i32, i32* %hypre__nx2398, align 4
  store i32 %1550, i32* %hypre__mx2404, align 4
  %1551 = load i32, i32* %hypre__ny2400, align 4
  store i32 %1551, i32* %hypre__my2405, align 4
  %1552 = load i32, i32* %hypre__nz2402, align 4
  store i32 %1552, i32* %hypre__mz2406, align 4
  store i32 0, i32* %hypre__dir2407, align 4
  %1553 = load i32, i32* %hypre__nx2398, align 4
  store i32 %1553, i32* %hypre__max2408, align 4
  %1554 = load i32, i32* %hypre__ny2400, align 4
  %1555 = load i32, i32* %hypre__max2408, align 4
  %cmp2413 = icmp sgt i32 %1554, %1555
  br i1 %cmp2413, label %if.then.2414, label %if.end.2415

if.then.2414:                                     ; preds = %cond.end.2395
  store i32 1, i32* %hypre__dir2407, align 4
  %1556 = load i32, i32* %hypre__ny2400, align 4
  store i32 %1556, i32* %hypre__max2408, align 4
  br label %if.end.2415

if.end.2415:                                      ; preds = %if.then.2414, %cond.end.2395
  %1557 = load i32, i32* %hypre__nz2402, align 4
  %1558 = load i32, i32* %hypre__max2408, align 4
  %cmp2416 = icmp sgt i32 %1557, %1558
  br i1 %cmp2416, label %if.then.2417, label %if.end.2418

if.then.2417:                                     ; preds = %if.end.2415
  store i32 2, i32* %hypre__dir2407, align 4
  %1559 = load i32, i32* %hypre__nz2402, align 4
  store i32 %1559, i32* %hypre__max2408, align 4
  br label %if.end.2418

if.end.2418:                                      ; preds = %if.then.2417, %if.end.2415
  store i32 1, i32* %hypre__num_blocks2412, align 4
  %1560 = load i32, i32* %hypre__max2408, align 4
  %1561 = load i32, i32* %hypre__num_blocks2412, align 4
  %cmp2419 = icmp slt i32 %1560, %1561
  br i1 %cmp2419, label %if.then.2420, label %if.end.2421

if.then.2420:                                     ; preds = %if.end.2418
  %1562 = load i32, i32* %hypre__max2408, align 4
  store i32 %1562, i32* %hypre__num_blocks2412, align 4
  br label %if.end.2421

if.end.2421:                                      ; preds = %if.then.2420, %if.end.2418
  %1563 = load i32, i32* %hypre__num_blocks2412, align 4
  %cmp2422 = icmp sgt i32 %1563, 0
  br i1 %cmp2422, label %if.then.2423, label %if.end.2426

if.then.2423:                                     ; preds = %if.end.2421
  %1564 = load i32, i32* %hypre__max2408, align 4
  %1565 = load i32, i32* %hypre__num_blocks2412, align 4
  %div2424 = sdiv i32 %1564, %1565
  store i32 %div2424, i32* %hypre__div2409, align 4
  %1566 = load i32, i32* %hypre__max2408, align 4
  %1567 = load i32, i32* %hypre__num_blocks2412, align 4
  %rem2425 = srem i32 %1566, %1567
  store i32 %rem2425, i32* %hypre__mod2410, align 4
  br label %if.end.2426

if.end.2426:                                      ; preds = %if.then.2423, %if.end.2421
  store i32 0, i32* %hypre__block2411, align 4
  br label %for.cond.2427

for.cond.2427:                                    ; preds = %for.inc.2535, %if.end.2426
  %1568 = load i32, i32* %hypre__block2411, align 4
  %1569 = load i32, i32* %hypre__num_blocks2412, align 4
  %cmp2428 = icmp slt i32 %1568, %1569
  br i1 %cmp2428, label %for.body.2429, label %for.end.2537

for.body.2429:                                    ; preds = %for.cond.2427
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %1570 = load i32, i32* %hypre__mx2404, align 4
  store i32 %1570, i32* %hypre__nx2398, align 4
  %1571 = load i32, i32* %hypre__my2405, align 4
  store i32 %1571, i32* %hypre__ny2400, align 4
  %1572 = load i32, i32* %hypre__mz2406, align 4
  store i32 %1572, i32* %hypre__nz2402, align 4
  %1573 = load i32, i32* %hypre__num_blocks2412, align 4
  %cmp2430 = icmp sgt i32 %1573, 1
  br i1 %cmp2430, label %if.then.2431, label %if.end.2473

if.then.2431:                                     ; preds = %for.body.2429
  %1574 = load i32, i32* %hypre__dir2407, align 4
  %cmp2432 = icmp eq i32 %1574, 0
  br i1 %cmp2432, label %if.then.2433, label %if.else.2444

if.then.2433:                                     ; preds = %if.then.2431
  %1575 = load i32, i32* %hypre__block2411, align 4
  %1576 = load i32, i32* %hypre__div2409, align 4
  %mul2434 = mul nsw i32 %1575, %1576
  %1577 = load i32, i32* %hypre__mod2410, align 4
  %1578 = load i32, i32* %hypre__block2411, align 4
  %cmp2435 = icmp slt i32 %1577, %1578
  br i1 %cmp2435, label %cond.true.2436, label %cond.false.2437

cond.true.2436:                                   ; preds = %if.then.2433
  %1579 = load i32, i32* %hypre__mod2410, align 4
  br label %cond.end.2438

cond.false.2437:                                  ; preds = %if.then.2433
  %1580 = load i32, i32* %hypre__block2411, align 4
  br label %cond.end.2438

cond.end.2438:                                    ; preds = %cond.false.2437, %cond.true.2436
  %cond2439 = phi i32 [ %1579, %cond.true.2436 ], [ %1580, %cond.false.2437 ]
  %add2440 = add nsw i32 %mul2434, %cond2439
  store i32 %add2440, i32* %loopi, align 4
  %1581 = load i32, i32* %hypre__div2409, align 4
  %1582 = load i32, i32* %hypre__mod2410, align 4
  %1583 = load i32, i32* %hypre__block2411, align 4
  %cmp2441 = icmp sgt i32 %1582, %1583
  %cond2442 = select i1 %cmp2441, i32 1, i32 0
  %add2443 = add nsw i32 %1581, %cond2442
  store i32 %add2443, i32* %hypre__nx2398, align 4
  br label %if.end.2472

if.else.2444:                                     ; preds = %if.then.2431
  %1584 = load i32, i32* %hypre__dir2407, align 4
  %cmp2445 = icmp eq i32 %1584, 1
  br i1 %cmp2445, label %if.then.2446, label %if.else.2457

if.then.2446:                                     ; preds = %if.else.2444
  %1585 = load i32, i32* %hypre__block2411, align 4
  %1586 = load i32, i32* %hypre__div2409, align 4
  %mul2447 = mul nsw i32 %1585, %1586
  %1587 = load i32, i32* %hypre__mod2410, align 4
  %1588 = load i32, i32* %hypre__block2411, align 4
  %cmp2448 = icmp slt i32 %1587, %1588
  br i1 %cmp2448, label %cond.true.2449, label %cond.false.2450

cond.true.2449:                                   ; preds = %if.then.2446
  %1589 = load i32, i32* %hypre__mod2410, align 4
  br label %cond.end.2451

cond.false.2450:                                  ; preds = %if.then.2446
  %1590 = load i32, i32* %hypre__block2411, align 4
  br label %cond.end.2451

cond.end.2451:                                    ; preds = %cond.false.2450, %cond.true.2449
  %cond2452 = phi i32 [ %1589, %cond.true.2449 ], [ %1590, %cond.false.2450 ]
  %add2453 = add nsw i32 %mul2447, %cond2452
  store i32 %add2453, i32* %loopj, align 4
  %1591 = load i32, i32* %hypre__div2409, align 4
  %1592 = load i32, i32* %hypre__mod2410, align 4
  %1593 = load i32, i32* %hypre__block2411, align 4
  %cmp2454 = icmp sgt i32 %1592, %1593
  %cond2455 = select i1 %cmp2454, i32 1, i32 0
  %add2456 = add nsw i32 %1591, %cond2455
  store i32 %add2456, i32* %hypre__ny2400, align 4
  br label %if.end.2471

if.else.2457:                                     ; preds = %if.else.2444
  %1594 = load i32, i32* %hypre__dir2407, align 4
  %cmp2458 = icmp eq i32 %1594, 2
  br i1 %cmp2458, label %if.then.2459, label %if.end.2470

if.then.2459:                                     ; preds = %if.else.2457
  %1595 = load i32, i32* %hypre__block2411, align 4
  %1596 = load i32, i32* %hypre__div2409, align 4
  %mul2460 = mul nsw i32 %1595, %1596
  %1597 = load i32, i32* %hypre__mod2410, align 4
  %1598 = load i32, i32* %hypre__block2411, align 4
  %cmp2461 = icmp slt i32 %1597, %1598
  br i1 %cmp2461, label %cond.true.2462, label %cond.false.2463

cond.true.2462:                                   ; preds = %if.then.2459
  %1599 = load i32, i32* %hypre__mod2410, align 4
  br label %cond.end.2464

cond.false.2463:                                  ; preds = %if.then.2459
  %1600 = load i32, i32* %hypre__block2411, align 4
  br label %cond.end.2464

cond.end.2464:                                    ; preds = %cond.false.2463, %cond.true.2462
  %cond2465 = phi i32 [ %1599, %cond.true.2462 ], [ %1600, %cond.false.2463 ]
  %add2466 = add nsw i32 %mul2460, %cond2465
  store i32 %add2466, i32* %loopk, align 4
  %1601 = load i32, i32* %hypre__div2409, align 4
  %1602 = load i32, i32* %hypre__mod2410, align 4
  %1603 = load i32, i32* %hypre__block2411, align 4
  %cmp2467 = icmp sgt i32 %1602, %1603
  %cond2468 = select i1 %cmp2467, i32 1, i32 0
  %add2469 = add nsw i32 %1601, %cond2468
  store i32 %add2469, i32* %hypre__nz2402, align 4
  br label %if.end.2470

if.end.2470:                                      ; preds = %cond.end.2464, %if.else.2457
  br label %if.end.2471

if.end.2471:                                      ; preds = %if.end.2470, %cond.end.2451
  br label %if.end.2472

if.end.2472:                                      ; preds = %if.end.2471, %cond.end.2438
  br label %if.end.2473

if.end.2473:                                      ; preds = %if.end.2472, %for.body.2429
  %1604 = load i32, i32* %hypre__i1start2176, align 4
  %1605 = load i32, i32* %loopi, align 4
  %1606 = load i32, i32* %hypre__sx12278, align 4
  %mul2474 = mul nsw i32 %1605, %1606
  %add2475 = add nsw i32 %1604, %mul2474
  %1607 = load i32, i32* %loopj, align 4
  %1608 = load i32, i32* %hypre__sy12280, align 4
  %mul2476 = mul nsw i32 %1607, %1608
  %add2477 = add nsw i32 %add2475, %mul2476
  %1609 = load i32, i32* %loopk, align 4
  %1610 = load i32, i32* %hypre__sz12300, align 4
  %mul2478 = mul nsw i32 %1609, %1610
  %add2479 = add nsw i32 %add2477, %mul2478
  store i32 %add2479, i32* %Ai, align 4
  %1611 = load i32, i32* %hypre__i2start2227, align 4
  %1612 = load i32, i32* %loopi, align 4
  %1613 = load i32, i32* %hypre__sx22338, align 4
  %mul2480 = mul nsw i32 %1612, %1613
  %add2481 = add nsw i32 %1611, %mul2480
  %1614 = load i32, i32* %loopj, align 4
  %1615 = load i32, i32* %hypre__sy22340, align 4
  %mul2482 = mul nsw i32 %1614, %1615
  %add2483 = add nsw i32 %add2481, %mul2482
  %1616 = load i32, i32* %loopk, align 4
  %1617 = load i32, i32* %hypre__sz22360, align 4
  %mul2484 = mul nsw i32 %1616, %1617
  %add2485 = add nsw i32 %add2483, %mul2484
  store i32 %add2485, i32* %xi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.2486

for.cond.2486:                                    ; preds = %for.inc.2532, %if.end.2473
  %1618 = load i32, i32* %loopk, align 4
  %1619 = load i32, i32* %hypre__nz2402, align 4
  %cmp2487 = icmp slt i32 %1618, %1619
  br i1 %cmp2487, label %for.body.2488, label %for.end.2534

for.body.2488:                                    ; preds = %for.cond.2486
  store i32 0, i32* %loopj, align 4
  br label %for.cond.2489

for.cond.2489:                                    ; preds = %for.inc.2523, %for.body.2488
  %1620 = load i32, i32* %loopj, align 4
  %1621 = load i32, i32* %hypre__ny2400, align 4
  %cmp2490 = icmp slt i32 %1620, %1621
  br i1 %cmp2490, label %for.body.2491, label %for.end.2525

for.body.2491:                                    ; preds = %for.cond.2489
  store i32 0, i32* %loopi, align 4
  br label %for.cond.2492

for.cond.2492:                                    ; preds = %for.inc.2514, %for.body.2491
  %1622 = load i32, i32* %loopi, align 4
  %1623 = load i32, i32* %hypre__nx2398, align 4
  %cmp2493 = icmp slt i32 %1622, %1623
  br i1 %cmp2493, label %for.body.2494, label %for.end.2516

for.body.2494:                                    ; preds = %for.cond.2492
  %1624 = load i32, i32* %Ai, align 4
  %idxprom2495 = sext i32 %1624 to i64
  %1625 = load double*, double** %Awp, align 8
  %arrayidx2496 = getelementptr inbounds double, double* %1625, i64 %idxprom2495
  %1626 = load double, double* %arrayidx2496, align 8
  %1627 = load i32, i32* %xi, align 4
  %idxprom2497 = sext i32 %1627 to i64
  %1628 = load double*, double** %xwp, align 8
  %arrayidx2498 = getelementptr inbounds double, double* %1628, i64 %idxprom2497
  %1629 = load double, double* %arrayidx2498, align 8
  %mul2499 = fmul double %1626, %1629
  %1630 = load i32, i32* %Ai, align 4
  %idxprom2500 = sext i32 %1630 to i64
  %1631 = load double*, double** %Aep, align 8
  %arrayidx2501 = getelementptr inbounds double, double* %1631, i64 %idxprom2500
  %1632 = load double, double* %arrayidx2501, align 8
  %1633 = load i32, i32* %xi, align 4
  %idxprom2502 = sext i32 %1633 to i64
  %1634 = load double*, double** %xep, align 8
  %arrayidx2503 = getelementptr inbounds double, double* %1634, i64 %idxprom2502
  %1635 = load double, double* %arrayidx2503, align 8
  %mul2504 = fmul double %1632, %1635
  %add2505 = fadd double %mul2499, %mul2504
  %1636 = load i32, i32* %Ai, align 4
  %idxprom2506 = sext i32 %1636 to i64
  %1637 = load double*, double** %Ap, align 8
  %arrayidx2507 = getelementptr inbounds double, double* %1637, i64 %idxprom2506
  %1638 = load double, double* %arrayidx2507, align 8
  %div2508 = fdiv double %add2505, %1638
  %1639 = load i32, i32* %xi, align 4
  %idxprom2509 = sext i32 %1639 to i64
  %1640 = load double*, double** %xp, align 8
  %arrayidx2510 = getelementptr inbounds double, double* %1640, i64 %idxprom2509
  %1641 = load double, double* %arrayidx2510, align 8
  %sub2511 = fsub double %1641, %div2508
  store double %sub2511, double* %arrayidx2510, align 8
  %1642 = load i32, i32* %hypre__sx12278, align 4
  %1643 = load i32, i32* %Ai, align 4
  %add2512 = add nsw i32 %1643, %1642
  store i32 %add2512, i32* %Ai, align 4
  %1644 = load i32, i32* %hypre__sx22338, align 4
  %1645 = load i32, i32* %xi, align 4
  %add2513 = add nsw i32 %1645, %1644
  store i32 %add2513, i32* %xi, align 4
  br label %for.inc.2514

for.inc.2514:                                     ; preds = %for.body.2494
  %1646 = load i32, i32* %loopi, align 4
  %inc2515 = add nsw i32 %1646, 1
  store i32 %inc2515, i32* %loopi, align 4
  br label %for.cond.2492

for.end.2516:                                     ; preds = %for.cond.2492
  %1647 = load i32, i32* %hypre__sy12280, align 4
  %1648 = load i32, i32* %hypre__nx2398, align 4
  %1649 = load i32, i32* %hypre__sx12278, align 4
  %mul2517 = mul nsw i32 %1648, %1649
  %sub2518 = sub nsw i32 %1647, %mul2517
  %1650 = load i32, i32* %Ai, align 4
  %add2519 = add nsw i32 %1650, %sub2518
  store i32 %add2519, i32* %Ai, align 4
  %1651 = load i32, i32* %hypre__sy22340, align 4
  %1652 = load i32, i32* %hypre__nx2398, align 4
  %1653 = load i32, i32* %hypre__sx22338, align 4
  %mul2520 = mul nsw i32 %1652, %1653
  %sub2521 = sub nsw i32 %1651, %mul2520
  %1654 = load i32, i32* %xi, align 4
  %add2522 = add nsw i32 %1654, %sub2521
  store i32 %add2522, i32* %xi, align 4
  br label %for.inc.2523

for.inc.2523:                                     ; preds = %for.end.2516
  %1655 = load i32, i32* %loopj, align 4
  %inc2524 = add nsw i32 %1655, 1
  store i32 %inc2524, i32* %loopj, align 4
  br label %for.cond.2489

for.end.2525:                                     ; preds = %for.cond.2489
  %1656 = load i32, i32* %hypre__sz12300, align 4
  %1657 = load i32, i32* %hypre__ny2400, align 4
  %1658 = load i32, i32* %hypre__sy12280, align 4
  %mul2526 = mul nsw i32 %1657, %1658
  %sub2527 = sub nsw i32 %1656, %mul2526
  %1659 = load i32, i32* %Ai, align 4
  %add2528 = add nsw i32 %1659, %sub2527
  store i32 %add2528, i32* %Ai, align 4
  %1660 = load i32, i32* %hypre__sz22360, align 4
  %1661 = load i32, i32* %hypre__ny2400, align 4
  %1662 = load i32, i32* %hypre__sy22340, align 4
  %mul2529 = mul nsw i32 %1661, %1662
  %sub2530 = sub nsw i32 %1660, %mul2529
  %1663 = load i32, i32* %xi, align 4
  %add2531 = add nsw i32 %1663, %sub2530
  store i32 %add2531, i32* %xi, align 4
  br label %for.inc.2532

for.inc.2532:                                     ; preds = %for.end.2525
  %1664 = load i32, i32* %loopk, align 4
  %inc2533 = add nsw i32 %1664, 1
  store i32 %inc2533, i32* %loopk, align 4
  br label %for.cond.2486

for.end.2534:                                     ; preds = %for.cond.2486
  br label %for.inc.2535

for.inc.2535:                                     ; preds = %for.end.2534
  %1665 = load i32, i32* %hypre__block2411, align 4
  %inc2536 = add nsw i32 %1665, 1
  store i32 %inc2536, i32* %hypre__block2411, align 4
  br label %for.cond.2427

for.end.2537:                                     ; preds = %for.cond.2427
  br label %for.inc.2538

for.inc.2538:                                     ; preds = %for.end.2537
  %1666 = load i32, i32* %j, align 4
  %inc2539 = add nsw i32 %1666, 1
  store i32 %inc2539, i32* %j, align 4
  br label %for.cond.2157

for.end.2540:                                     ; preds = %for.cond.2157
  br label %for.inc.2541

for.inc.2541:                                     ; preds = %for.end.2540
  %1667 = load i32, i32* %fi, align 4
  %inc2542 = add nsw i32 %1667, 1
  store i32 %inc2542, i32* %fi, align 4
  br label %for.cond.2001

for.end.2543:                                     ; preds = %for.cond.2001
  br label %for.inc.2544

for.inc.2544:                                     ; preds = %for.end.2543
  %1668 = load i32, i32* %compute_i, align 4
  %inc2545 = add nsw i32 %1668, 1
  store i32 %inc2545, i32* %compute_i, align 4
  br label %for.cond.1982

for.end.2546:                                     ; preds = %for.cond.1982
  br label %for.inc.2547

for.inc.2547:                                     ; preds = %for.end.2546
  %1669 = load i32, i32* %l, align 4
  %dec = add nsw i32 %1669, -1
  store i32 %dec, i32* %l, align 4
  br label %for.cond.1518

for.end.2548:                                     ; preds = %for.cond.1518
  %1670 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %solve_flops = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %1670, i32 0, i32 14
  %1671 = load i32, i32* %solve_flops, align 4
  %call2549 = call i32 @hypre_IncFLOPCount(i32 %1671)
  %1672 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %time_index2550 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %1672, i32 0, i32 13
  %1673 = load i32, i32* %time_index2550, align 4
  %call2551 = call i32 @hypre_EndTiming(i32 %1673)
  %1674 = load i32, i32* %ierr, align 4
  ret i32 %1674
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

declare i32 @hypre_IncFLOPCount(i32) #1

declare i32 @hypre_EndTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CyclicReductionSetBase(i8* %cyc_red_vdata, i32* %base_index, i32* %base_stride) #0 {
entry:
  %cyc_red_vdata.addr = alloca i8*, align 8
  %base_index.addr = alloca i32*, align 8
  %base_stride.addr = alloca i32*, align 8
  %cyc_red_data = alloca %struct.hypre_CyclicReductionData*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %cyc_red_vdata, i8** %cyc_red_vdata.addr, align 8
  store i32* %base_index, i32** %base_index.addr, align 8
  store i32* %base_stride, i32** %base_stride.addr, align 8
  %0 = load i8*, i8** %cyc_red_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_CyclicReductionData*
  store %struct.hypre_CyclicReductionData* %1, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
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
  %7 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %7, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i64 %idxprom1
  store i32 %5, i32* %arrayidx3, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_stride7 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %12, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride7, i32 0, i64 %idxprom6
  store i32 %10, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %d, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %ierr, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CyclicReductionDestroy(i8* %cyc_red_vdata) #0 {
entry:
  %cyc_red_vdata.addr = alloca i8*, align 8
  %cyc_red_data = alloca %struct.hypre_CyclicReductionData*, align 8
  %l = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %cyc_red_vdata, i8** %cyc_red_vdata.addr, align 8
  %0 = load i8*, i8** %cyc_red_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_CyclicReductionData*
  store %struct.hypre_CyclicReductionData* %1, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %tobool = icmp ne %struct.hypre_CyclicReductionData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %base_points = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %3, i32 0, i32 6
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %call = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %4)
  %5 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %grid_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %5, i32 0, i32 5
  %6 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %6, i64 0
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx, align 8
  %call1 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %7)
  %8 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %8, i32 0, i32 9
  %9 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx2 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %9, i64 0
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx2, align 8
  %call3 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %10)
  %11 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %11, i32 0, i32 10
  %12 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx4 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %12, i64 0
  %13 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx4, align 8
  %call5 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %13)
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %l, align 4
  %15 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %num_levels = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %15, i32 0, i32 1
  %16 = load i32, i32* %num_levels, align 4
  %sub = sub nsw i32 %16, 1
  %cmp = icmp slt i32 %14, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %l, align 4
  %add = add nsw i32 %17, 1
  %idxprom = sext i32 %add to i64
  %18 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %grid_l6 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %18, i32 0, i32 5
  %19 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %19, i64 %idxprom
  %20 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx7, align 8
  %call8 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %20)
  %21 = load i32, i32* %l, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %22, i32 0, i32 7
  %23 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l, align 8
  %arrayidx10 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %23, i64 %idxprom9
  %24 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx10, align 8
  %call11 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %24)
  %25 = load i32, i32* %l, align 4
  %add12 = add nsw i32 %25, 1
  %idxprom13 = sext i32 %add12 to i64
  %26 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l14 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %26, i32 0, i32 9
  %27 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %27, i64 %idxprom13
  %28 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx15, align 8
  %call16 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %28)
  %29 = load i32, i32* %l, align 4
  %add17 = add nsw i32 %29, 1
  %idxprom18 = sext i32 %add17 to i64
  %30 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l19 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %30, i32 0, i32 10
  %31 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %31, i64 %idxprom18
  %32 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx20, align 8
  %call21 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %32)
  %33 = load i32, i32* %l, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %down_compute_pkg_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %34, i32 0, i32 11
  %35 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l, align 8
  %arrayidx23 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %35, i64 %idxprom22
  %36 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx23, align 8
  %call24 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %36)
  %37 = load i32, i32* %l, align 4
  %idxprom25 = sext i32 %37 to i64
  %38 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %up_compute_pkg_l = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %38, i32 0, i32 12
  %39 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l, align 8
  %arrayidx26 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %39, i64 %idxprom25
  %40 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx26, align 8
  %call27 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %l, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %l, align 4
  %idxprom28 = sext i32 %42 to i64
  %43 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l29 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %43, i32 0, i32 7
  %44 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l29, align 8
  %arrayidx30 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %44, i64 %idxprom28
  %45 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx30, align 8
  %call31 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %45)
  %46 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %data = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %46, i32 0, i32 8
  %47 = load double*, double** %data, align 8
  %48 = bitcast double* %47 to i8*
  call void @hypre_Free(i8* %48)
  %49 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %data32 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %49, i32 0, i32 8
  store double* null, double** %data32, align 8
  %50 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %grid_l33 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %50, i32 0, i32 5
  %51 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l33, align 8
  %52 = bitcast %struct.hypre_StructGrid_struct** %51 to i8*
  call void @hypre_Free(i8* %52)
  %53 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %grid_l34 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %53, i32 0, i32 5
  store %struct.hypre_StructGrid_struct** null, %struct.hypre_StructGrid_struct*** %grid_l34, align 8
  %54 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l35 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %54, i32 0, i32 7
  %55 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %fine_points_l35, align 8
  %56 = bitcast %struct.hypre_BoxArray_struct** %55 to i8*
  call void @hypre_Free(i8* %56)
  %57 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %fine_points_l36 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %57, i32 0, i32 7
  store %struct.hypre_BoxArray_struct** null, %struct.hypre_BoxArray_struct*** %fine_points_l36, align 8
  %58 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l37 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %58, i32 0, i32 9
  %59 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l37, align 8
  %60 = bitcast %struct.hypre_StructMatrix_struct** %59 to i8*
  call void @hypre_Free(i8* %60)
  %61 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %A_l38 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %61, i32 0, i32 9
  store %struct.hypre_StructMatrix_struct** null, %struct.hypre_StructMatrix_struct*** %A_l38, align 8
  %62 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l39 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %62, i32 0, i32 10
  %63 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l39, align 8
  %64 = bitcast %struct.hypre_StructVector_struct** %63 to i8*
  call void @hypre_Free(i8* %64)
  %65 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %x_l40 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %65, i32 0, i32 10
  store %struct.hypre_StructVector_struct** null, %struct.hypre_StructVector_struct*** %x_l40, align 8
  %66 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %down_compute_pkg_l41 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %66, i32 0, i32 11
  %67 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l41, align 8
  %68 = bitcast %struct.hypre_ComputePkg_struct** %67 to i8*
  call void @hypre_Free(i8* %68)
  %69 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %down_compute_pkg_l42 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %69, i32 0, i32 11
  store %struct.hypre_ComputePkg_struct** null, %struct.hypre_ComputePkg_struct*** %down_compute_pkg_l42, align 8
  %70 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %up_compute_pkg_l43 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %70, i32 0, i32 12
  %71 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l43, align 8
  %72 = bitcast %struct.hypre_ComputePkg_struct** %71 to i8*
  call void @hypre_Free(i8* %72)
  %73 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %up_compute_pkg_l44 = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %73, i32 0, i32 12
  store %struct.hypre_ComputePkg_struct** null, %struct.hypre_ComputePkg_struct*** %up_compute_pkg_l44, align 8
  %74 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_CyclicReductionData, %struct.hypre_CyclicReductionData* %74, i32 0, i32 13
  %75 = load i32, i32* %time_index, align 4
  %call45 = call i32 @hypre_FinalizeTiming(i32 %75)
  %76 = load %struct.hypre_CyclicReductionData*, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  %77 = bitcast %struct.hypre_CyclicReductionData* %76 to i8*
  call void @hypre_Free(i8* %77)
  store %struct.hypre_CyclicReductionData* null, %struct.hypre_CyclicReductionData** %cyc_red_data, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %78 = load i32, i32* %ierr, align 4
  ret i32 %78
}

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #1

declare void @hypre_Free(i8*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
