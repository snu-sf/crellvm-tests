; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/3.SMG2000.smg_setup_interp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

@hypre_SMGCreateInterpOp.num_ghost = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_SMGCreateInterpOp(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructGrid_struct* %cgrid, i32 %cdir) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cgrid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %cdir.addr = alloca i32, align 4
  %PT = alloca %struct.hypre_StructMatrix_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %stencil_dim = alloca i32, align 4
  %num_ghost = alloca [6 x i32], align 16
  %i = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructGrid_struct* %cgrid, %struct.hypre_StructGrid_struct** %cgrid.addr, align 8
  store i32 %cdir, i32* %cdir.addr, align 4
  %0 = bitcast [6 x i32]* %num_ghost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([6 x i32]* @hypre_SMGCreateInterpOp.num_ghost to i8*), i64 24, i32 16, i1 false)
  store i32 2, i32* %stencil_size, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 3
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil1, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %dim, align 4
  store i32 %3, i32* %stencil_dim, align 4
  %4 = load i32, i32* %stencil_size, align 4
  %call = call i8* @hypre_CAlloc(i32 %4, i32 12)
  %5 = bitcast i8* %call to [3 x i32]*
  store [3 x i32]* %5, [3 x i32]** %stencil_shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %stencil_size, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 1
  store i32 0, i32* %arrayidx5, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 2
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %cdir.addr, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx10, i32 0, i64 %idxprom9
  store i32 -1, i32* %arrayidx11, align 4
  %17 = load i32, i32* %cdir.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx13, i32 0, i64 %idxprom12
  store i32 1, i32* %arrayidx14, align 4
  %19 = load i32, i32* %stencil_dim, align 4
  %20 = load i32, i32* %stencil_size, align 4
  %21 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %call15 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %19, i32 %20, [3 x i32]* %21)
  store %struct.hypre_StructStencil_struct* %call15, %struct.hypre_StructStencil_struct** %stencil, align 8
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %comm, align 4
  %24 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid.addr, align 8
  %25 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call16 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %23, %struct.hypre_StructGrid_struct* %24, %struct.hypre_StructStencil_struct* %25)
  store %struct.hypre_StructMatrix_struct* %call16, %struct.hypre_StructMatrix_struct** %PT, align 8
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT, align 8
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i32 0
  %call17 = call i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %26, i32* %arraydecay)
  %27 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call18 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %27)
  %28 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT, align 8
  ret %struct.hypre_StructMatrix_struct* %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @hypre_CAlloc(i32, i32) #2

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #2

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*) #2

declare i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct*, i32*) #2

declare i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetupInterpOp(i8* %relax_data, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x, %struct.hypre_StructMatrix_struct* %PT, i32 %cdir, i32* %cindex, i32* %findex, i32* %stride) #0 {
entry:
  %relax_data.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cdir.addr = alloca i32, align 4
  %cindex.addr = alloca i32*, align 8
  %findex.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %A_mask = alloca %struct.hypre_StructMatrix_struct*, align 8
  %A_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %A_stencil_shape = alloca [3 x i32]*, align 8
  %A_stencil_size = alloca i32, align 4
  %PT_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %PT_stencil_shape = alloca [3 x i32]*, align 8
  %PT_stencil_size = alloca i32, align 4
  %stencil_indices = alloca i32*, align 8
  %num_stencil_indices = alloca i32, align 4
  %fgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %compute_pkg_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %compute_pkg_stencil_shape = alloca [3 x i32]*, align 8
  %compute_pkg_stencil_size = alloca i32, align 4
  %compute_pkg_stencil_dim = alloca i32, align 4
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %PT_data_box = alloca %struct.hypre_Box_struct*, align 8
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %PTp = alloca double*, align 8
  %xp = alloca double*, align 8
  %PTi = alloca i32, align 4
  %xi = alloca i32, align 4
  %loop_size = alloca [3 x i32], align 4
  %start = alloca [3 x i32], align 4
  %startc = alloca [3 x i32], align 4
  %stridec = alloca [3 x i32], align 4
  %si = alloca i32, align 4
  %sj = alloca i32, align 4
  %d = alloca i32, align 4
  %compute_i = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  store i8* %relax_data, i8** %relax_data.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store i32 %cdir, i32* %cdir.addr, align 4
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %findex, i32** %findex.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 1, i32* %compute_pkg_stencil_size, align 4
  store i32 1, i32* %compute_pkg_stencil_dim, align 4
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 3
  %3 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  store %struct.hypre_StructStencil_struct* %3, %struct.hypre_StructStencil_struct** %A_stencil, align 8
  %4 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %A_stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %4, i32 0, i32 0
  %5 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %5, [3 x i32]** %A_stencil_shape, align 8
  %6 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %A_stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  store i32 %7, i32* %A_stencil_size, align 4
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %stencil3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %8, i32 0, i32 3
  %9 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil3, align 8
  store %struct.hypre_StructStencil_struct* %9, %struct.hypre_StructStencil_struct** %PT_stencil, align 8
  %10 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %PT_stencil, align 8
  %shape4 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %10, i32 0, i32 0
  %11 = load [3 x i32]*, [3 x i32]** %shape4, align 8
  store [3 x i32]* %11, [3 x i32]** %PT_stencil_shape, align 8
  %12 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %PT_stencil, align 8
  %size5 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %size5, align 4
  store i32 %13, i32* %PT_stencil_size, align 4
  %14 = load i8*, i8** %relax_data.addr, align 8
  %call = call i32 @hypre_SMGRelaxSetMaxIter(i8* %14, i32 1)
  %15 = load i8*, i8** %relax_data.addr, align 8
  %call6 = call i32 @hypre_SMGRelaxSetNumPreSpaces(i8* %15, i32 0)
  %16 = load i8*, i8** %relax_data.addr, align 8
  %call7 = call i32 @hypre_SMGRelaxSetNumRegSpaces(i8* %16, i32 1)
  %17 = load i8*, i8** %relax_data.addr, align 8
  %call8 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %17, i32 0, i32 1)
  %18 = load i32, i32* %compute_pkg_stencil_size, align 4
  %call9 = call i8* @hypre_CAlloc(i32 %18, i32 12)
  %19 = bitcast i8* %call9 to [3 x i32]*
  store [3 x i32]* %19, [3 x i32]** %compute_pkg_stencil_shape, align 8
  %20 = load i32, i32* %compute_pkg_stencil_dim, align 4
  %21 = load i32, i32* %compute_pkg_stencil_size, align 4
  %22 = load [3 x i32]*, [3 x i32]** %compute_pkg_stencil_shape, align 8
  %call10 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %20, i32 %21, [3 x i32]* %22)
  store %struct.hypre_StructStencil_struct* %call10, %struct.hypre_StructStencil_struct** %compute_pkg_stencil, align 8
  store i32 0, i32* %si, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.483, %entry
  %23 = load i32, i32* %si, align 4
  %24 = load i32, i32* %PT_stencil_size, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end.485

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %A_stencil_size, align 4
  %conv = sext i32 %25 to i64
  %mul = mul i64 4, %conv
  %conv11 = trunc i64 %mul to i32
  %call12 = call i8* @hypre_MAlloc(i32 %conv11)
  %26 = bitcast i8* %call12 to i32*
  store i32* %26, i32** %stencil_indices, align 8
  store i32 0, i32* %num_stencil_indices, align 4
  store i32 0, i32* %sj, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %sj, align 4
  %28 = load i32, i32* %A_stencil_size, align 4
  %cmp14 = icmp slt i32 %27, %28
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %29 = load i32, i32* %cdir.addr, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i32, i32* %sj, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load [3 x i32]*, [3 x i32]** %A_stencil_shape, align 8
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx19, align 4
  %33 = load i32, i32* %cdir.addr, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load i32, i32* %si, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load [3 x i32]*, [3 x i32]** %PT_stencil_shape, align 8
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx22, i32 0, i64 %idxprom20
  %36 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp ne i32 %32, %36
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  %37 = load i32, i32* %sj, align 4
  %38 = load i32, i32* %num_stencil_indices, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load i32*, i32** %stencil_indices, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 %idxprom26
  store i32 %37, i32* %arrayidx27, align 4
  %40 = load i32, i32* %num_stencil_indices, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %num_stencil_indices, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %sj, align 4
  %inc28 = add nsw i32 %41, 1
  store i32 %inc28, i32* %sj, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %42 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %43 = load i32, i32* %num_stencil_indices, align 4
  %44 = load i32*, i32** %stencil_indices, align 8
  %call29 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct* %42, i32 %43, i32* %44)
  store %struct.hypre_StructMatrix_struct* %call29, %struct.hypre_StructMatrix_struct** %A_mask, align 8
  %45 = load i32*, i32** %stencil_indices, align 8
  %46 = bitcast i32* %45 to i8*
  call void @hypre_Free(i8* %46)
  store i32* null, i32** %stencil_indices, align 8
  %47 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call30 = call i32 @hypre_StructVectorClearGhostValues(%struct.hypre_StructVector_struct* %47)
  %48 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call31 = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %48, double 1.000000e+00)
  %49 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call32 = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %49, double 0.000000e+00)
  %50 = load i8*, i8** %relax_data.addr, align 8
  %51 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %PT_stencil, align 8
  %call33 = call i32 @hypre_SMGRelaxSetNewMatrixStencil(i8* %50, %struct.hypre_StructStencil_struct* %51)
  %52 = load i8*, i8** %relax_data.addr, align 8
  %53 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_mask, align 8
  %54 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %55 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call34 = call i32 @hypre_SMGRelaxSetup(i8* %52, %struct.hypre_StructMatrix_struct* %53, %struct.hypre_StructVector_struct* %54, %struct.hypre_StructVector_struct* %55)
  %56 = load i8*, i8** %relax_data.addr, align 8
  %57 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_mask, align 8
  %58 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %59 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call35 = call i32 @hypre_SMGRelax(i8* %56, %struct.hypre_StructMatrix_struct* %57, %struct.hypre_StructVector_struct* %58, %struct.hypre_StructVector_struct* %59)
  %60 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A_mask, align 8
  %call36 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %60)
  %61 = load i32, i32* %si, align 4
  %idxprom37 = sext i32 %61 to i64
  %62 = load [3 x i32]*, [3 x i32]** %PT_stencil_shape, align 8
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %62, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 0
  %63 = load i32, i32* %arrayidx39, align 4
  %64 = load [3 x i32]*, [3 x i32]** %compute_pkg_stencil_shape, align 8
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %64, i64 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 0
  store i32 %63, i32* %arrayidx41, align 4
  %65 = load i32, i32* %si, align 4
  %idxprom42 = sext i32 %65 to i64
  %66 = load [3 x i32]*, [3 x i32]** %PT_stencil_shape, align 8
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %66, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx43, i32 0, i64 1
  %67 = load i32, i32* %arrayidx44, align 4
  %68 = load [3 x i32]*, [3 x i32]** %compute_pkg_stencil_shape, align 8
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %68, i64 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 1
  store i32 %67, i32* %arrayidx46, align 4
  %69 = load i32, i32* %si, align 4
  %idxprom47 = sext i32 %69 to i64
  %70 = load [3 x i32]*, [3 x i32]** %PT_stencil_shape, align 8
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %70, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 2
  %71 = load i32, i32* %arrayidx49, align 4
  %72 = load [3 x i32]*, [3 x i32]** %compute_pkg_stencil_shape, align 8
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx50, i32 0, i64 2
  store i32 %71, i32* %arrayidx51, align 4
  %73 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %74 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %compute_pkg_stencil, align 8
  %call52 = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %73, %struct.hypre_StructStencil_struct* %74, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %75 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %76 = load i32*, i32** %findex.addr, align 8
  %77 = load i32*, i32** %stride.addr, align 8
  %call53 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %75, i32* %76, i32* %77)
  %78 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %79 = load i32*, i32** %findex.addr, align 8
  %80 = load i32*, i32** %stride.addr, align 8
  %call54 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %78, i32* %79, i32* %80)
  %81 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %82 = load i32*, i32** %cindex.addr, align 8
  %83 = load i32*, i32** %stride.addr, align 8
  %call55 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %81, i32* %82, i32* %83)
  %84 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %85 = load i32*, i32** %cindex.addr, align 8
  %86 = load i32*, i32** %stride.addr, align 8
  %call56 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %84, i32* %85, i32* %86)
  %87 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %88 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %89 = load i32*, i32** %stride.addr, align 8
  %90 = load i32*, i32** %stride.addr, align 8
  %91 = load i32**, i32*** %send_processes, align 8
  %92 = load i32**, i32*** %recv_processes, align 8
  %93 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %94 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %95 = load i32*, i32** %stride.addr, align 8
  %96 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %97 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %97, i32 0, i32 2
  %98 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call57 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %87, %struct.hypre_BoxArrayArray_struct* %88, i32* %89, i32* %90, i32** %91, i32** %92, %struct.hypre_BoxArrayArray_struct* %93, %struct.hypre_BoxArrayArray_struct* %94, i32* %95, %struct.hypre_StructGrid_struct* %96, %struct.hypre_BoxArray_struct* %98, i32 1, %struct.hypre_ComputePkg_struct** %compute_pkg)
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.479, %for.end
  %99 = load i32, i32* %compute_i, align 4
  %cmp59 = icmp slt i32 %99, 2
  br i1 %cmp59, label %for.body.61, label %for.end.481

for.body.61:                                      ; preds = %for.cond.58
  %100 = load i32, i32* %compute_i, align 4
  switch i32 %100, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %for.body.61
  %101 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %101, i32 0, i32 3
  %102 = load double*, double** %data, align 8
  store double* %102, double** %xp, align 8
  %103 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %104 = load double*, double** %xp, align 8
  %call62 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %103, double* %104, %struct.hypre_CommHandle_struct** %comm_handle)
  %105 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes63 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %105, i32 0, i32 1
  %106 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes63, align 8
  store %struct.hypre_BoxArrayArray_struct* %106, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %for.body.61
  %107 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call65 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %107)
  %108 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes66 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %108, i32 0, i32 2
  %109 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes66, align 8
  store %struct.hypre_BoxArrayArray_struct* %109, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.61, %sw.bb.64, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.476, %sw.epilog
  %110 = load i32, i32* %i, align 4
  %111 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size68 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %111, i32 0, i32 1
  %112 = load i32, i32* %size68, align 4
  %cmp69 = icmp slt i32 %110, %112
  br i1 %cmp69, label %for.body.71, label %for.end.478

for.body.71:                                      ; preds = %for.cond.67
  %113 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %113 to i64
  %114 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %114, i32 0, i32 0
  %115 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx73 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %115, i64 %idxprom72
  %116 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx73, align 8
  store %struct.hypre_BoxArray_struct* %116, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %117 to i64
  %118 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space75 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %118, i32 0, i32 2
  %119 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space75, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %119, i32 0, i32 0
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i64 %idxprom74
  store %struct.hypre_Box_struct* %arrayidx76, %struct.hypre_Box_struct** %x_data_box, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %121 to i64
  %122 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %data_space78 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %122, i32 0, i32 5
  %123 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space78, align 8
  %boxes79 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %123, i32 0, i32 0
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes79, align 8
  %arrayidx80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i64 %idxprom77
  store %struct.hypre_Box_struct* %arrayidx80, %struct.hypre_Box_struct** %PT_data_box, align 8
  %125 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data81 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %125, i32 0, i32 3
  %126 = load double*, double** %data81, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %127 to i64
  %128 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %128, i32 0, i32 6
  %129 = load i32*, i32** %data_indices, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %129, i64 %idxprom82
  %130 = load i32, i32* %arrayidx83, align 4
  %idx.ext = sext i32 %130 to i64
  %add.ptr = getelementptr inbounds double, double* %126, i64 %idx.ext
  store double* %add.ptr, double** %xp, align 8
  %131 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %data84 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %131, i32 0, i32 6
  %132 = load double*, double** %data84, align 8
  %133 = load i32, i32* %si, align 4
  %idxprom85 = sext i32 %133 to i64
  %134 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %134 to i64
  %135 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %data_indices87 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %135, i32 0, i32 9
  %136 = load i32**, i32*** %data_indices87, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %136, i64 %idxprom86
  %137 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %137, i64 %idxprom85
  %138 = load i32, i32* %arrayidx89, align 4
  %idx.ext90 = sext i32 %138 to i64
  %add.ptr91 = getelementptr inbounds double, double* %132, i64 %idx.ext90
  store double* %add.ptr91, double** %PTp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.473, %for.body.71
  %139 = load i32, i32* %j, align 4
  %140 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size93 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %140, i32 0, i32 1
  %141 = load i32, i32* %size93, align 4
  %cmp94 = icmp slt i32 %139, %141
  br i1 %cmp94, label %for.body.96, label %for.end.475

for.body.96:                                      ; preds = %for.cond.92
  %142 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %142 to i64
  %143 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes98 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %143, i32 0, i32 0
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes98, align 8
  %arrayidx99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i64 %idxprom97
  store %struct.hypre_Box_struct* %arrayidx99, %struct.hypre_Box_struct** %compute_box, align 8
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %146 = load i32, i32* %arrayidx100, align 4
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %146, i32* %arrayidx101, align 4
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 1
  %148 = load i32, i32* %arrayidx103, align 4
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %148, i32* %arrayidx104, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin105, i32 0, i64 2
  %150 = load i32, i32* %arrayidx106, align 4
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %150, i32* %arrayidx107, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i32 0
  %151 = load i32*, i32** %cindex.addr, align 8
  %152 = load i32*, i32** %stride.addr, align 8
  %arraydecay108 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %call109 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay, i32* %151, i32* %152, i32* %arraydecay108)
  store i32 0, i32* %d, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.120, %for.body.96
  %153 = load i32, i32* %d, align 4
  %cmp111 = icmp slt i32 %153, 3
  br i1 %cmp111, label %for.body.113, label %for.end.122

for.body.113:                                     ; preds = %for.cond.110
  %154 = load i32, i32* %d, align 4
  %idxprom114 = sext i32 %154 to i64
  %155 = load i32, i32* %si, align 4
  %idxprom115 = sext i32 %155 to i64
  %156 = load [3 x i32]*, [3 x i32]** %PT_stencil_shape, align 8
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %156, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx116, i32 0, i64 %idxprom114
  %157 = load i32, i32* %arrayidx117, align 4
  %158 = load i32, i32* %d, align 4
  %idxprom118 = sext i32 %158 to i64
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 %idxprom118
  %159 = load i32, i32* %arrayidx119, align 4
  %add = add nsw i32 %159, %157
  store i32 %add, i32* %arrayidx119, align 4
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.113
  %160 = load i32, i32* %d, align 4
  %inc121 = add nsw i32 %160, 1
  store i32 %inc121, i32* %d, align 4
  br label %for.cond.110

for.end.122:                                      ; preds = %for.cond.110
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %162 = load i32*, i32** %stride.addr, align 8
  %arraydecay123 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call124 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %161, i32* %162, i32* %arraydecay123)
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %163 = load i32, i32* %arrayidx125, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imin126, i32 0, i64 0
  %165 = load i32, i32* %arrayidx127, align 4
  %sub = sub nsw i32 %163, %165
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %166 = load i32, i32* %arrayidx128, align 4
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imin129, i32 0, i64 1
  %168 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %166, %168
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %169 = load i32, i32* %arrayidx132, align 4
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imin133, i32 0, i64 2
  %171 = load i32, i32* %arrayidx134, align 4
  %sub135 = sub nsw i32 %169, %171
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %173 = load i32, i32* %arrayidx136, align 4
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imin137, i32 0, i64 1
  %175 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %173, %175
  %add140 = add nsw i32 %sub139, 1
  %cmp141 = icmp slt i32 0, %add140
  br i1 %cmp141, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.122
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imax143, i32 0, i64 1
  %177 = load i32, i32* %arrayidx144, align 4
  %178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %178, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imin145, i32 0, i64 1
  %179 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %177, %179
  %add148 = add nsw i32 %sub147, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end.122
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add148, %cond.true ], [ 0, %cond.false ]
  %mul149 = mul nsw i32 %sub135, %cond
  %add150 = add nsw i32 %sub131, %mul149
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax151 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %imax151, i32 0, i64 0
  %181 = load i32, i32* %arrayidx152, align 4
  %182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %182, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imin153, i32 0, i64 0
  %183 = load i32, i32* %arrayidx154, align 4
  %sub155 = sub nsw i32 %181, %183
  %add156 = add nsw i32 %sub155, 1
  %cmp157 = icmp slt i32 0, %add156
  br i1 %cmp157, label %cond.true.159, label %cond.false.166

cond.true.159:                                    ; preds = %cond.end
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax160 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %imax160, i32 0, i64 0
  %185 = load i32, i32* %arrayidx161, align 4
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imin162, i32 0, i64 0
  %187 = load i32, i32* %arrayidx163, align 4
  %sub164 = sub nsw i32 %185, %187
  %add165 = add nsw i32 %sub164, 1
  br label %cond.end.167

cond.false.166:                                   ; preds = %cond.end
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.true.159
  %cond168 = phi i32 [ %add165, %cond.true.159 ], [ 0, %cond.false.166 ]
  %mul169 = mul nsw i32 %add150, %cond168
  %add170 = add nsw i32 %sub, %mul169
  store i32 %add170, i32* %hypre__i1start, align 4
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %188 = load i32, i32* %arrayidx171, align 4
  %189 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %189, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %imin172, i32 0, i64 0
  %190 = load i32, i32* %arrayidx173, align 4
  %sub174 = sub nsw i32 %188, %190
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %191 = load i32, i32* %arrayidx175, align 4
  %192 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %192, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %imin176, i32 0, i64 1
  %193 = load i32, i32* %arrayidx177, align 4
  %sub178 = sub nsw i32 %191, %193
  %arrayidx179 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %194 = load i32, i32* %arrayidx179, align 4
  %195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %195, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %imin180, i32 0, i64 2
  %196 = load i32, i32* %arrayidx181, align 4
  %sub182 = sub nsw i32 %194, %196
  %197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %197, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imax183, i32 0, i64 1
  %198 = load i32, i32* %arrayidx184, align 4
  %199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin185 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %199, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [3 x i32], [3 x i32]* %imin185, i32 0, i64 1
  %200 = load i32, i32* %arrayidx186, align 4
  %sub187 = sub nsw i32 %198, %200
  %add188 = add nsw i32 %sub187, 1
  %cmp189 = icmp slt i32 0, %add188
  br i1 %cmp189, label %cond.true.191, label %cond.false.198

cond.true.191:                                    ; preds = %cond.end.167
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %imax192, i32 0, i64 1
  %202 = load i32, i32* %arrayidx193, align 4
  %203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %203, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %imin194, i32 0, i64 1
  %204 = load i32, i32* %arrayidx195, align 4
  %sub196 = sub nsw i32 %202, %204
  %add197 = add nsw i32 %sub196, 1
  br label %cond.end.199

cond.false.198:                                   ; preds = %cond.end.167
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.198, %cond.true.191
  %cond200 = phi i32 [ %add197, %cond.true.191 ], [ 0, %cond.false.198 ]
  %mul201 = mul nsw i32 %sub182, %cond200
  %add202 = add nsw i32 %sub178, %mul201
  %205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %205, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imax203, i32 0, i64 0
  %206 = load i32, i32* %arrayidx204, align 4
  %207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin205 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %207, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x i32], [3 x i32]* %imin205, i32 0, i64 0
  %208 = load i32, i32* %arrayidx206, align 4
  %sub207 = sub nsw i32 %206, %208
  %add208 = add nsw i32 %sub207, 1
  %cmp209 = icmp slt i32 0, %add208
  br i1 %cmp209, label %cond.true.211, label %cond.false.218

cond.true.211:                                    ; preds = %cond.end.199
  %209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %209, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imax212, i32 0, i64 0
  %210 = load i32, i32* %arrayidx213, align 4
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imin214, i32 0, i64 0
  %212 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 %210, %212
  %add217 = add nsw i32 %sub216, 1
  br label %cond.end.219

cond.false.218:                                   ; preds = %cond.end.199
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.true.211
  %cond220 = phi i32 [ %add217, %cond.true.211 ], [ 0, %cond.false.218 ]
  %mul221 = mul nsw i32 %add202, %cond220
  %add222 = add nsw i32 %sub174, %mul221
  store i32 %add222, i32* %hypre__i2start, align 4
  %213 = load i32*, i32** %stride.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %213, i64 0
  %214 = load i32, i32* %arrayidx223, align 4
  store i32 %214, i32* %hypre__sx1, align 4
  %215 = load i32*, i32** %stride.addr, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %215, i64 1
  %216 = load i32, i32* %arrayidx224, align 4
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax225, i32 0, i64 0
  %218 = load i32, i32* %arrayidx226, align 4
  %219 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %219, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin227, i32 0, i64 0
  %220 = load i32, i32* %arrayidx228, align 4
  %sub229 = sub nsw i32 %218, %220
  %add230 = add nsw i32 %sub229, 1
  %cmp231 = icmp slt i32 0, %add230
  br i1 %cmp231, label %cond.true.233, label %cond.false.240

cond.true.233:                                    ; preds = %cond.end.219
  %221 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %221, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [3 x i32], [3 x i32]* %imax234, i32 0, i64 0
  %222 = load i32, i32* %arrayidx235, align 4
  %223 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin236 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %223, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %imin236, i32 0, i64 0
  %224 = load i32, i32* %arrayidx237, align 4
  %sub238 = sub nsw i32 %222, %224
  %add239 = add nsw i32 %sub238, 1
  br label %cond.end.241

cond.false.240:                                   ; preds = %cond.end.219
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.233
  %cond242 = phi i32 [ %add239, %cond.true.233 ], [ 0, %cond.false.240 ]
  %mul243 = mul nsw i32 %216, %cond242
  store i32 %mul243, i32* %hypre__sy1, align 4
  %225 = load i32*, i32** %stride.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %225, i64 2
  %226 = load i32, i32* %arrayidx244, align 4
  %227 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax245 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %227, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [3 x i32], [3 x i32]* %imax245, i32 0, i64 0
  %228 = load i32, i32* %arrayidx246, align 4
  %229 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin247 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %229, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %imin247, i32 0, i64 0
  %230 = load i32, i32* %arrayidx248, align 4
  %sub249 = sub nsw i32 %228, %230
  %add250 = add nsw i32 %sub249, 1
  %cmp251 = icmp slt i32 0, %add250
  br i1 %cmp251, label %cond.true.253, label %cond.false.260

cond.true.253:                                    ; preds = %cond.end.241
  %231 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax254 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %231, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %imax254, i32 0, i64 0
  %232 = load i32, i32* %arrayidx255, align 4
  %233 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin256 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %233, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [3 x i32], [3 x i32]* %imin256, i32 0, i64 0
  %234 = load i32, i32* %arrayidx257, align 4
  %sub258 = sub nsw i32 %232, %234
  %add259 = add nsw i32 %sub258, 1
  br label %cond.end.261

cond.false.260:                                   ; preds = %cond.end.241
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.260, %cond.true.253
  %cond262 = phi i32 [ %add259, %cond.true.253 ], [ 0, %cond.false.260 ]
  %mul263 = mul nsw i32 %226, %cond262
  %235 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax264 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %235, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %imax264, i32 0, i64 1
  %236 = load i32, i32* %arrayidx265, align 4
  %237 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin266 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %237, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %imin266, i32 0, i64 1
  %238 = load i32, i32* %arrayidx267, align 4
  %sub268 = sub nsw i32 %236, %238
  %add269 = add nsw i32 %sub268, 1
  %cmp270 = icmp slt i32 0, %add269
  br i1 %cmp270, label %cond.true.272, label %cond.false.279

cond.true.272:                                    ; preds = %cond.end.261
  %239 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax273 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %239, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [3 x i32], [3 x i32]* %imax273, i32 0, i64 1
  %240 = load i32, i32* %arrayidx274, align 4
  %241 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin275 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %241, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [3 x i32], [3 x i32]* %imin275, i32 0, i64 1
  %242 = load i32, i32* %arrayidx276, align 4
  %sub277 = sub nsw i32 %240, %242
  %add278 = add nsw i32 %sub277, 1
  br label %cond.end.280

cond.false.279:                                   ; preds = %cond.end.261
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.279, %cond.true.272
  %cond281 = phi i32 [ %add278, %cond.true.272 ], [ 0, %cond.false.279 ]
  %mul282 = mul nsw i32 %mul263, %cond281
  store i32 %mul282, i32* %hypre__sz1, align 4
  %arrayidx283 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %243 = load i32, i32* %arrayidx283, align 4
  store i32 %243, i32* %hypre__sx2, align 4
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %244 = load i32, i32* %arrayidx284, align 4
  %245 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax285 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %245, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %imax285, i32 0, i64 0
  %246 = load i32, i32* %arrayidx286, align 4
  %247 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %247, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imin287, i32 0, i64 0
  %248 = load i32, i32* %arrayidx288, align 4
  %sub289 = sub nsw i32 %246, %248
  %add290 = add nsw i32 %sub289, 1
  %cmp291 = icmp slt i32 0, %add290
  br i1 %cmp291, label %cond.true.293, label %cond.false.300

cond.true.293:                                    ; preds = %cond.end.280
  %249 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax294 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %249, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [3 x i32], [3 x i32]* %imax294, i32 0, i64 0
  %250 = load i32, i32* %arrayidx295, align 4
  %251 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin296 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %251, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x i32], [3 x i32]* %imin296, i32 0, i64 0
  %252 = load i32, i32* %arrayidx297, align 4
  %sub298 = sub nsw i32 %250, %252
  %add299 = add nsw i32 %sub298, 1
  br label %cond.end.301

cond.false.300:                                   ; preds = %cond.end.280
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.300, %cond.true.293
  %cond302 = phi i32 [ %add299, %cond.true.293 ], [ 0, %cond.false.300 ]
  %mul303 = mul nsw i32 %244, %cond302
  store i32 %mul303, i32* %hypre__sy2, align 4
  %arrayidx304 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %253 = load i32, i32* %arrayidx304, align 4
  %254 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax305 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %254, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [3 x i32], [3 x i32]* %imax305, i32 0, i64 0
  %255 = load i32, i32* %arrayidx306, align 4
  %256 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin307 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %256, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [3 x i32], [3 x i32]* %imin307, i32 0, i64 0
  %257 = load i32, i32* %arrayidx308, align 4
  %sub309 = sub nsw i32 %255, %257
  %add310 = add nsw i32 %sub309, 1
  %cmp311 = icmp slt i32 0, %add310
  br i1 %cmp311, label %cond.true.313, label %cond.false.320

cond.true.313:                                    ; preds = %cond.end.301
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax314 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %258, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [3 x i32], [3 x i32]* %imax314, i32 0, i64 0
  %259 = load i32, i32* %arrayidx315, align 4
  %260 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin316 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %260, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %imin316, i32 0, i64 0
  %261 = load i32, i32* %arrayidx317, align 4
  %sub318 = sub nsw i32 %259, %261
  %add319 = add nsw i32 %sub318, 1
  br label %cond.end.321

cond.false.320:                                   ; preds = %cond.end.301
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.320, %cond.true.313
  %cond322 = phi i32 [ %add319, %cond.true.313 ], [ 0, %cond.false.320 ]
  %mul323 = mul nsw i32 %253, %cond322
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax324 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [3 x i32], [3 x i32]* %imax324, i32 0, i64 1
  %263 = load i32, i32* %arrayidx325, align 4
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %imin326, i32 0, i64 1
  %265 = load i32, i32* %arrayidx327, align 4
  %sub328 = sub nsw i32 %263, %265
  %add329 = add nsw i32 %sub328, 1
  %cmp330 = icmp slt i32 0, %add329
  br i1 %cmp330, label %cond.true.332, label %cond.false.339

cond.true.332:                                    ; preds = %cond.end.321
  %266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imax333 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %266, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [3 x i32], [3 x i32]* %imax333, i32 0, i64 1
  %267 = load i32, i32* %arrayidx334, align 4
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_data_box, align 8
  %imin335 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [3 x i32], [3 x i32]* %imin335, i32 0, i64 1
  %269 = load i32, i32* %arrayidx336, align 4
  %sub337 = sub nsw i32 %267, %269
  %add338 = add nsw i32 %sub337, 1
  br label %cond.end.340

cond.false.339:                                   ; preds = %cond.end.321
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.339, %cond.true.332
  %cond341 = phi i32 [ %add338, %cond.true.332 ], [ 0, %cond.false.339 ]
  %mul342 = mul nsw i32 %mul323, %cond341
  store i32 %mul342, i32* %hypre__sz2, align 4
  %arrayidx343 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %270 = load i32, i32* %arrayidx343, align 4
  store i32 %270, i32* %hypre__nx, align 4
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %271 = load i32, i32* %arrayidx344, align 4
  store i32 %271, i32* %hypre__ny, align 4
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %272 = load i32, i32* %arrayidx345, align 4
  store i32 %272, i32* %hypre__nz, align 4
  %273 = load i32, i32* %hypre__nx, align 4
  store i32 %273, i32* %hypre__mx, align 4
  %274 = load i32, i32* %hypre__ny, align 4
  store i32 %274, i32* %hypre__my, align 4
  %275 = load i32, i32* %hypre__nz, align 4
  store i32 %275, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %276 = load i32, i32* %hypre__nx, align 4
  store i32 %276, i32* %hypre__max, align 4
  %277 = load i32, i32* %hypre__ny, align 4
  %278 = load i32, i32* %hypre__max, align 4
  %cmp346 = icmp sgt i32 %277, %278
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %cond.end.340
  store i32 1, i32* %hypre__dir, align 4
  %279 = load i32, i32* %hypre__ny, align 4
  store i32 %279, i32* %hypre__max, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.348, %cond.end.340
  %280 = load i32, i32* %hypre__nz, align 4
  %281 = load i32, i32* %hypre__max, align 4
  %cmp350 = icmp sgt i32 %280, %281
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.349
  store i32 2, i32* %hypre__dir, align 4
  %282 = load i32, i32* %hypre__nz, align 4
  store i32 %282, i32* %hypre__max, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.349
  store i32 1, i32* %hypre__num_blocks, align 4
  %283 = load i32, i32* %hypre__max, align 4
  %284 = load i32, i32* %hypre__num_blocks, align 4
  %cmp354 = icmp slt i32 %283, %284
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.end.353
  %285 = load i32, i32* %hypre__max, align 4
  store i32 %285, i32* %hypre__num_blocks, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.356, %if.end.353
  %286 = load i32, i32* %hypre__num_blocks, align 4
  %cmp358 = icmp sgt i32 %286, 0
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.end.357
  %287 = load i32, i32* %hypre__max, align 4
  %288 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %287, %288
  store i32 %div, i32* %hypre__div, align 4
  %289 = load i32, i32* %hypre__max, align 4
  %290 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %289, %290
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.360, %if.end.357
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.470, %if.end.361
  %291 = load i32, i32* %hypre__block, align 4
  %292 = load i32, i32* %hypre__num_blocks, align 4
  %cmp363 = icmp slt i32 %291, %292
  br i1 %cmp363, label %for.body.365, label %for.end.472

for.body.365:                                     ; preds = %for.cond.362
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %293 = load i32, i32* %hypre__mx, align 4
  store i32 %293, i32* %hypre__nx, align 4
  %294 = load i32, i32* %hypre__my, align 4
  store i32 %294, i32* %hypre__ny, align 4
  %295 = load i32, i32* %hypre__mz, align 4
  store i32 %295, i32* %hypre__nz, align 4
  %296 = load i32, i32* %hypre__num_blocks, align 4
  %cmp366 = icmp sgt i32 %296, 1
  br i1 %cmp366, label %if.then.368, label %if.end.418

if.then.368:                                      ; preds = %for.body.365
  %297 = load i32, i32* %hypre__dir, align 4
  %cmp369 = icmp eq i32 %297, 0
  br i1 %cmp369, label %if.then.371, label %if.else

if.then.371:                                      ; preds = %if.then.368
  %298 = load i32, i32* %hypre__block, align 4
  %299 = load i32, i32* %hypre__div, align 4
  %mul372 = mul nsw i32 %298, %299
  %300 = load i32, i32* %hypre__mod, align 4
  %301 = load i32, i32* %hypre__block, align 4
  %cmp373 = icmp slt i32 %300, %301
  br i1 %cmp373, label %cond.true.375, label %cond.false.376

cond.true.375:                                    ; preds = %if.then.371
  %302 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.377

cond.false.376:                                   ; preds = %if.then.371
  %303 = load i32, i32* %hypre__block, align 4
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.376, %cond.true.375
  %cond378 = phi i32 [ %302, %cond.true.375 ], [ %303, %cond.false.376 ]
  %add379 = add nsw i32 %mul372, %cond378
  store i32 %add379, i32* %loopi, align 4
  %304 = load i32, i32* %hypre__div, align 4
  %305 = load i32, i32* %hypre__mod, align 4
  %306 = load i32, i32* %hypre__block, align 4
  %cmp380 = icmp sgt i32 %305, %306
  %cond382 = select i1 %cmp380, i32 1, i32 0
  %add383 = add nsw i32 %304, %cond382
  store i32 %add383, i32* %hypre__nx, align 4
  br label %if.end.417

if.else:                                          ; preds = %if.then.368
  %307 = load i32, i32* %hypre__dir, align 4
  %cmp384 = icmp eq i32 %307, 1
  br i1 %cmp384, label %if.then.386, label %if.else.399

if.then.386:                                      ; preds = %if.else
  %308 = load i32, i32* %hypre__block, align 4
  %309 = load i32, i32* %hypre__div, align 4
  %mul387 = mul nsw i32 %308, %309
  %310 = load i32, i32* %hypre__mod, align 4
  %311 = load i32, i32* %hypre__block, align 4
  %cmp388 = icmp slt i32 %310, %311
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %if.then.386
  %312 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.392

cond.false.391:                                   ; preds = %if.then.386
  %313 = load i32, i32* %hypre__block, align 4
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.false.391, %cond.true.390
  %cond393 = phi i32 [ %312, %cond.true.390 ], [ %313, %cond.false.391 ]
  %add394 = add nsw i32 %mul387, %cond393
  store i32 %add394, i32* %loopj, align 4
  %314 = load i32, i32* %hypre__div, align 4
  %315 = load i32, i32* %hypre__mod, align 4
  %316 = load i32, i32* %hypre__block, align 4
  %cmp395 = icmp sgt i32 %315, %316
  %cond397 = select i1 %cmp395, i32 1, i32 0
  %add398 = add nsw i32 %314, %cond397
  store i32 %add398, i32* %hypre__ny, align 4
  br label %if.end.416

if.else.399:                                      ; preds = %if.else
  %317 = load i32, i32* %hypre__dir, align 4
  %cmp400 = icmp eq i32 %317, 2
  br i1 %cmp400, label %if.then.402, label %if.end.415

if.then.402:                                      ; preds = %if.else.399
  %318 = load i32, i32* %hypre__block, align 4
  %319 = load i32, i32* %hypre__div, align 4
  %mul403 = mul nsw i32 %318, %319
  %320 = load i32, i32* %hypre__mod, align 4
  %321 = load i32, i32* %hypre__block, align 4
  %cmp404 = icmp slt i32 %320, %321
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %if.then.402
  %322 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.408

cond.false.407:                                   ; preds = %if.then.402
  %323 = load i32, i32* %hypre__block, align 4
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.407, %cond.true.406
  %cond409 = phi i32 [ %322, %cond.true.406 ], [ %323, %cond.false.407 ]
  %add410 = add nsw i32 %mul403, %cond409
  store i32 %add410, i32* %loopk, align 4
  %324 = load i32, i32* %hypre__div, align 4
  %325 = load i32, i32* %hypre__mod, align 4
  %326 = load i32, i32* %hypre__block, align 4
  %cmp411 = icmp sgt i32 %325, %326
  %cond413 = select i1 %cmp411, i32 1, i32 0
  %add414 = add nsw i32 %324, %cond413
  store i32 %add414, i32* %hypre__nz, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %cond.end.408, %if.else.399
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %cond.end.392
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %cond.end.377
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %for.body.365
  %327 = load i32, i32* %hypre__i1start, align 4
  %328 = load i32, i32* %loopi, align 4
  %329 = load i32, i32* %hypre__sx1, align 4
  %mul419 = mul nsw i32 %328, %329
  %add420 = add nsw i32 %327, %mul419
  %330 = load i32, i32* %loopj, align 4
  %331 = load i32, i32* %hypre__sy1, align 4
  %mul421 = mul nsw i32 %330, %331
  %add422 = add nsw i32 %add420, %mul421
  %332 = load i32, i32* %loopk, align 4
  %333 = load i32, i32* %hypre__sz1, align 4
  %mul423 = mul nsw i32 %332, %333
  %add424 = add nsw i32 %add422, %mul423
  store i32 %add424, i32* %xi, align 4
  %334 = load i32, i32* %hypre__i2start, align 4
  %335 = load i32, i32* %loopi, align 4
  %336 = load i32, i32* %hypre__sx2, align 4
  %mul425 = mul nsw i32 %335, %336
  %add426 = add nsw i32 %334, %mul425
  %337 = load i32, i32* %loopj, align 4
  %338 = load i32, i32* %hypre__sy2, align 4
  %mul427 = mul nsw i32 %337, %338
  %add428 = add nsw i32 %add426, %mul427
  %339 = load i32, i32* %loopk, align 4
  %340 = load i32, i32* %hypre__sz2, align 4
  %mul429 = mul nsw i32 %339, %340
  %add430 = add nsw i32 %add428, %mul429
  store i32 %add430, i32* %PTi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.467, %if.end.418
  %341 = load i32, i32* %loopk, align 4
  %342 = load i32, i32* %hypre__nz, align 4
  %cmp432 = icmp slt i32 %341, %342
  br i1 %cmp432, label %for.body.434, label %for.end.469

for.body.434:                                     ; preds = %for.cond.431
  store i32 0, i32* %loopj, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.458, %for.body.434
  %343 = load i32, i32* %loopj, align 4
  %344 = load i32, i32* %hypre__ny, align 4
  %cmp436 = icmp slt i32 %343, %344
  br i1 %cmp436, label %for.body.438, label %for.end.460

for.body.438:                                     ; preds = %for.cond.435
  store i32 0, i32* %loopi, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.449, %for.body.438
  %345 = load i32, i32* %loopi, align 4
  %346 = load i32, i32* %hypre__nx, align 4
  %cmp440 = icmp slt i32 %345, %346
  br i1 %cmp440, label %for.body.442, label %for.end.451

for.body.442:                                     ; preds = %for.cond.439
  %347 = load i32, i32* %xi, align 4
  %idxprom443 = sext i32 %347 to i64
  %348 = load double*, double** %xp, align 8
  %arrayidx444 = getelementptr inbounds double, double* %348, i64 %idxprom443
  %349 = load double, double* %arrayidx444, align 8
  %350 = load i32, i32* %PTi, align 4
  %idxprom445 = sext i32 %350 to i64
  %351 = load double*, double** %PTp, align 8
  %arrayidx446 = getelementptr inbounds double, double* %351, i64 %idxprom445
  store double %349, double* %arrayidx446, align 8
  %352 = load i32, i32* %hypre__sx1, align 4
  %353 = load i32, i32* %xi, align 4
  %add447 = add nsw i32 %353, %352
  store i32 %add447, i32* %xi, align 4
  %354 = load i32, i32* %hypre__sx2, align 4
  %355 = load i32, i32* %PTi, align 4
  %add448 = add nsw i32 %355, %354
  store i32 %add448, i32* %PTi, align 4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.442
  %356 = load i32, i32* %loopi, align 4
  %inc450 = add nsw i32 %356, 1
  store i32 %inc450, i32* %loopi, align 4
  br label %for.cond.439

for.end.451:                                      ; preds = %for.cond.439
  %357 = load i32, i32* %hypre__sy1, align 4
  %358 = load i32, i32* %hypre__nx, align 4
  %359 = load i32, i32* %hypre__sx1, align 4
  %mul452 = mul nsw i32 %358, %359
  %sub453 = sub nsw i32 %357, %mul452
  %360 = load i32, i32* %xi, align 4
  %add454 = add nsw i32 %360, %sub453
  store i32 %add454, i32* %xi, align 4
  %361 = load i32, i32* %hypre__sy2, align 4
  %362 = load i32, i32* %hypre__nx, align 4
  %363 = load i32, i32* %hypre__sx2, align 4
  %mul455 = mul nsw i32 %362, %363
  %sub456 = sub nsw i32 %361, %mul455
  %364 = load i32, i32* %PTi, align 4
  %add457 = add nsw i32 %364, %sub456
  store i32 %add457, i32* %PTi, align 4
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.end.451
  %365 = load i32, i32* %loopj, align 4
  %inc459 = add nsw i32 %365, 1
  store i32 %inc459, i32* %loopj, align 4
  br label %for.cond.435

for.end.460:                                      ; preds = %for.cond.435
  %366 = load i32, i32* %hypre__sz1, align 4
  %367 = load i32, i32* %hypre__ny, align 4
  %368 = load i32, i32* %hypre__sy1, align 4
  %mul461 = mul nsw i32 %367, %368
  %sub462 = sub nsw i32 %366, %mul461
  %369 = load i32, i32* %xi, align 4
  %add463 = add nsw i32 %369, %sub462
  store i32 %add463, i32* %xi, align 4
  %370 = load i32, i32* %hypre__sz2, align 4
  %371 = load i32, i32* %hypre__ny, align 4
  %372 = load i32, i32* %hypre__sy2, align 4
  %mul464 = mul nsw i32 %371, %372
  %sub465 = sub nsw i32 %370, %mul464
  %373 = load i32, i32* %PTi, align 4
  %add466 = add nsw i32 %373, %sub465
  store i32 %add466, i32* %PTi, align 4
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.end.460
  %374 = load i32, i32* %loopk, align 4
  %inc468 = add nsw i32 %374, 1
  store i32 %inc468, i32* %loopk, align 4
  br label %for.cond.431

for.end.469:                                      ; preds = %for.cond.431
  br label %for.inc.470

for.inc.470:                                      ; preds = %for.end.469
  %375 = load i32, i32* %hypre__block, align 4
  %inc471 = add nsw i32 %375, 1
  store i32 %inc471, i32* %hypre__block, align 4
  br label %for.cond.362

for.end.472:                                      ; preds = %for.cond.362
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.end.472
  %376 = load i32, i32* %j, align 4
  %inc474 = add nsw i32 %376, 1
  store i32 %inc474, i32* %j, align 4
  br label %for.cond.92

for.end.475:                                      ; preds = %for.cond.92
  br label %for.inc.476

for.inc.476:                                      ; preds = %for.end.475
  %377 = load i32, i32* %i, align 4
  %inc477 = add nsw i32 %377, 1
  store i32 %inc477, i32* %i, align 4
  br label %for.cond.67

for.end.478:                                      ; preds = %for.cond.67
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.end.478
  %378 = load i32, i32* %compute_i, align 4
  %inc480 = add nsw i32 %378, 1
  store i32 %inc480, i32* %compute_i, align 4
  br label %for.cond.58

for.end.481:                                      ; preds = %for.cond.58
  %379 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %call482 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %379)
  br label %for.inc.483

for.inc.483:                                      ; preds = %for.end.481
  %380 = load i32, i32* %si, align 4
  %inc484 = add nsw i32 %380, 1
  store i32 %inc484, i32* %si, align 4
  br label %for.cond

for.end.485:                                      ; preds = %for.cond
  %381 = load i8*, i8** %relax_data.addr, align 8
  %382 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %PT_stencil, align 8
  %call486 = call i32 @hypre_SMGRelaxSetNewMatrixStencil(i8* %381, %struct.hypre_StructStencil_struct* %382)
  %383 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %compute_pkg_stencil, align 8
  %call487 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %383)
  %384 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %call488 = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %384)
  %385 = load i32, i32* %ierr, align 4
  ret i32 %385
}

declare i32 @hypre_SMGRelaxSetMaxIter(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetNumPreSpaces(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetNumRegSpaces(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetRegSpaceRank(i8*, i32, i32) #2

declare i8* @hypre_MAlloc(i32) #2

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct*, i32, i32*) #2

declare void @hypre_Free(i8*) #2

declare i32 @hypre_StructVectorClearGhostValues(%struct.hypre_StructVector_struct*) #2

declare i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct*, double) #2

declare i32 @hypre_SMGRelaxSetNewMatrixStencil(i8*, %struct.hypre_StructStencil_struct*) #2

declare i32 @hypre_SMGRelaxSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @hypre_SMGRelax(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #2

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #2

declare i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct*, i32*, i32*) #2

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #2

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #2

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #2

declare i32 @hypre_StructMapFineToCoarse(i32*, i32*, i32*, i32*) #2

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #2

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #2

declare i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
