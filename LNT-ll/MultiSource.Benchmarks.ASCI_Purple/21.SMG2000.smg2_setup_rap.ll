; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/21.SMG2000.smg2_setup_rap.bc'
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

@hypre_SMG2CreateRAPOp.RAP_num_ghost = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0], align 16

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_SMG2CreateRAPOp(%struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructGrid_struct* %coarse_grid) #0 {
entry:
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %coarse_grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %RAP = alloca %struct.hypre_StructMatrix_struct*, align 8
  %RAP_stencil_shape = alloca [3 x i32]*, align 8
  %RAP_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %RAP_stencil_size = alloca i32, align 4
  %RAP_stencil_dim = alloca i32, align 4
  %RAP_num_ghost = alloca [6 x i32], align 16
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %stencil_rank = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store %struct.hypre_StructGrid_struct* %coarse_grid, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %0 = bitcast [6 x i32]* %RAP_num_ghost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([6 x i32]* @hypre_SMG2CreateRAPOp.RAP_num_ghost to i8*), i64 24, i32 16, i1 false)
  store i32 2, i32* %RAP_stencil_dim, align 4
  store i32 0, i32* %stencil_rank, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 10
  %2 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 9, i32* %RAP_stencil_size, align 4
  %3 = load i32, i32* %RAP_stencil_size, align 4
  %call = call i8* @hypre_CAlloc(i32 %3, i32 12)
  %4 = bitcast i8* %call to [3 x i32]*
  store [3 x i32]* %4, [3 x i32]** %RAP_stencil_shape, align 8
  store i32 -1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.then
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %stencil_rank, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  store i32 %7, i32* %arrayidx4, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %stencil_rank, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 1
  store i32 %10, i32* %arrayidx7, align 4
  %13 = load i32, i32* %stencil_rank, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 2
  store i32 0, i32* %arrayidx10, align 4
  %15 = load i32, i32* %stencil_rank, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %stencil_rank, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  br label %if.end.40

if.else:                                          ; preds = %entry
  store i32 5, i32* %RAP_stencil_size, align 4
  %18 = load i32, i32* %RAP_stencil_size, align 4
  %call15 = call i8* @hypre_CAlloc(i32 %18, i32 12)
  %19 = bitcast i8* %call15 to [3 x i32]*
  store [3 x i32]* %19, [3 x i32]** %RAP_stencil_shape, align 8
  store i32 -1, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.37, %if.else
  %20 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %20, 1
  br i1 %cmp17, label %for.body.18, label %for.end.39

for.body.18:                                      ; preds = %for.cond.16
  store i32 -1, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.body.18
  %21 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %21, 2
  br i1 %cmp20, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %add = add nsw i32 %22, %23
  %cmp22 = icmp sle i32 %add, 0
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %for.body.21
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %stencil_rank, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx25, i32 0, i64 0
  store i32 %24, i32* %arrayidx26, align 4
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %stencil_rank, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i32 0, i64 1
  store i32 %27, i32* %arrayidx29, align 4
  %30 = load i32, i32* %stencil_rank, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx31, i32 0, i64 2
  store i32 0, i32* %arrayidx32, align 4
  %32 = load i32, i32* %stencil_rank, align 4
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %stencil_rank, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %for.body.21
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %33, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %34 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.16

for.end.39:                                       ; preds = %for.cond.16
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end.14
  %35 = load i32, i32* %RAP_stencil_dim, align 4
  %36 = load i32, i32* %RAP_stencil_size, align 4
  %37 = load [3 x i32]*, [3 x i32]** %RAP_stencil_shape, align 8
  %call41 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %35, i32 %36, [3 x i32]* %37)
  store %struct.hypre_StructStencil_struct* %call41, %struct.hypre_StructStencil_struct** %RAP_stencil, align 8
  %38 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %38, i32 0, i32 0
  %39 = load i32, i32* %comm, align 4
  %40 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %41 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %RAP_stencil, align 8
  %call42 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %39, %struct.hypre_StructGrid_struct* %40, %struct.hypre_StructStencil_struct* %41)
  store %struct.hypre_StructMatrix_struct* %call42, %struct.hypre_StructMatrix_struct** %RAP, align 8
  %42 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %RAP_stencil, align 8
  %call43 = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %42)
  %43 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric44 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %43, i32 0, i32 10
  %44 = load i32, i32* %symmetric44, align 4
  %45 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP, align 8
  %symmetric45 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %45, i32 0, i32 10
  store i32 %44, i32* %symmetric45, align 4
  %46 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric46 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %46, i32 0, i32 10
  %47 = load i32, i32* %symmetric46, align 4
  %tobool47 = icmp ne i32 %47, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.40
  %arrayidx49 = getelementptr inbounds [6 x i32], [6 x i32]* %RAP_num_ghost, i32 0, i64 1
  store i32 0, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [6 x i32], [6 x i32]* %RAP_num_ghost, i32 0, i64 3
  store i32 0, i32* %arrayidx50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.40
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP, align 8
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %RAP_num_ghost, i32 0, i32 0
  %call52 = call i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %48, i32* %arraydecay)
  %49 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP, align 8
  ret %struct.hypre_StructMatrix_struct* %49
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @hypre_CAlloc(i32, i32) #2

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #2

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*) #2

declare i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #2

declare i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_SMG2BuildRAPSym(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct* %RAP, i32* %cindex, i32* %cstride) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %RAP.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %index = alloca [3 x i32], align 4
  %fine_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %fine_stencil_size = alloca i32, align 4
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
  %PT_dbox = alloca %struct.hypre_Box_struct*, align 8
  %R_dbox = alloca %struct.hypre_Box_struct*, align 8
  %RAP_dbox = alloca %struct.hypre_Box_struct*, align 8
  %pa = alloca double*, align 8
  %pb = alloca double*, align 8
  %ra = alloca double*, align 8
  %rb = alloca double*, align 8
  %a_cc = alloca double*, align 8
  %a_cw = alloca double*, align 8
  %a_ce = alloca double*, align 8
  %a_cs = alloca double*, align 8
  %a_cn = alloca double*, align 8
  %a_csw = alloca double*, align 8
  %a_cse = alloca double*, align 8
  %a_cnw = alloca double*, align 8
  %rap_cc = alloca double*, align 8
  %rap_cw = alloca double*, align 8
  %rap_cs = alloca double*, align 8
  %rap_csw = alloca double*, align 8
  %rap_cse = alloca double*, align 8
  %iA = alloca i32, align 4
  %iAm1 = alloca i32, align 4
  %iAp1 = alloca i32, align 4
  %iAc = alloca i32, align 4
  %iP = alloca i32, align 4
  %iP1 = alloca i32, align 4
  %iR = alloca i32, align 4
  %yOffsetA = alloca i32, align 4
  %xOffsetP = alloca i32, align 4
  %yOffsetP = alloca i32, align 4
  %ierr = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__i4start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__sx4 = alloca i32, align 4
  %hypre__sy4 = alloca i32, align 4
  %hypre__sz4 = alloca i32, align 4
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
  %hypre__i1start918 = alloca i32, align 4
  %hypre__i2start969 = alloca i32, align 4
  %hypre__i3start1020 = alloca i32, align 4
  %hypre__i4start1071 = alloca i32, align 4
  %hypre__sx11122 = alloca i32, align 4
  %hypre__sy11124 = alloca i32, align 4
  %hypre__sz11144 = alloca i32, align 4
  %hypre__sx21182 = alloca i32, align 4
  %hypre__sy21184 = alloca i32, align 4
  %hypre__sz21204 = alloca i32, align 4
  %hypre__sx31242 = alloca i32, align 4
  %hypre__sy31244 = alloca i32, align 4
  %hypre__sz31264 = alloca i32, align 4
  %hypre__sx41302 = alloca i32, align 4
  %hypre__sy41304 = alloca i32, align 4
  %hypre__sz41324 = alloca i32, align 4
  %hypre__nx1362 = alloca i32, align 4
  %hypre__ny1364 = alloca i32, align 4
  %hypre__nz1366 = alloca i32, align 4
  %hypre__mx1368 = alloca i32, align 4
  %hypre__my1369 = alloca i32, align 4
  %hypre__mz1370 = alloca i32, align 4
  %hypre__dir1371 = alloca i32, align 4
  %hypre__max1372 = alloca i32, align 4
  %hypre__div1373 = alloca i32, align 4
  %hypre__mod1374 = alloca i32, align 4
  %hypre__block1375 = alloca i32, align 4
  %hypre__num_blocks1376 = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructMatrix_struct* %RAP, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %fine_stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %fine_stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  store i32 %3, i32* %fine_stencil_size, align 4
  %4 = load i32*, i32** %cstride.addr, align 8
  store i32* %4, i32** %stridef, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 1
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %6, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 3
  %8 = load i32*, i32** %ids, align 8
  store i32* %8, i32** %fgrid_ids, align 8
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 1
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid3, align 8
  store %struct.hypre_StructGrid_struct* %10, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %11, i32 0, i32 2
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %12, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %13 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %13, i32 0, i32 3
  %14 = load i32*, i32** %ids4, align 8
  store i32* %14, i32** %cgrid_ids, align 8
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1677, %entry
  %15 = load i32, i32* %ci, align 4
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %size5, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end.1679

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %18 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx6, align 4
  %21 = load i32, i32* %ci, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 %idxprom7
  %23 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %20, %23
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %fi, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %ci, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom10
  store %struct.hypre_Box_struct* %arrayidx12, %struct.hypre_Box_struct** %cgrid_box, align 8
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %cstart, align 8
  %29 = load i32*, i32** %cstart, align 8
  %30 = load i32*, i32** %cindex.addr, align 8
  %31 = load i32*, i32** %cstride.addr, align 8
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i32 0
  %call = call i32 @hypre_StructMapCoarseToFine(i32* %29, i32* %30, i32* %31, i32* %arraydecay13)
  %32 = load i32, i32* %fi, align 4
  %idxprom14 = sext i32 %32 to i64
  %33 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %33, i32 0, i32 5
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes15, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom14
  store %struct.hypre_Box_struct* %arrayidx16, %struct.hypre_Box_struct** %A_dbox, align 8
  %36 = load i32, i32* %fi, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %data_space18 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %37, i32 0, i32 5
  %38 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space18, align 8
  %boxes19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %38, i32 0, i32 0
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i64 %idxprom17
  store %struct.hypre_Box_struct* %arrayidx20, %struct.hypre_Box_struct** %PT_dbox, align 8
  %40 = load i32, i32* %fi, align 4
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_space22 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %41, i32 0, i32 5
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space22, align 8
  %boxes23 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %42, i32 0, i32 0
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes23, align 8
  %arrayidx24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i64 %idxprom21
  store %struct.hypre_Box_struct* %arrayidx24, %struct.hypre_Box_struct** %R_dbox, align 8
  %44 = load i32, i32* %ci, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %data_space26 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %45, i32 0, i32 5
  %46 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space26, align 8
  %boxes27 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %46, i32 0, i32 0
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i64 %idxprom25
  store %struct.hypre_Box_struct* %arrayidx28, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx31, align 4
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %49 = load i32, i32* %fi, align 4
  %arraydecay32 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call33 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %48, i32 %49, i32* %arraydecay32)
  store double* %call33, double** %pa, align 8
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx36, align 4
  %50 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %51 = load i32, i32* %fi, align 4
  %arraydecay37 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call38 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %50, i32 %51, i32* %arraydecay37)
  store double* %call38, double** %pb, align 8
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx41, align 4
  %52 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %53 = load i32, i32* %fi, align 4
  %arraydecay42 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call43 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %52, i32 %53, i32* %arraydecay42)
  store double* %call43, double** %ra, align 8
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx46, align 4
  %54 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %55 = load i32, i32* %fi, align 4
  %arraydecay47 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call48 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %54, i32 %55, i32* %arraydecay47)
  store double* %call48, double** %rb, align 8
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx51, align 4
  %56 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %57 = load i32, i32* %fi, align 4
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call53 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %56, i32 %57, i32* %arraydecay52)
  store double* %call53, double** %a_cc, align 8
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx56, align 4
  %58 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %59 = load i32, i32* %fi, align 4
  %arraydecay57 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call58 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %58, i32 %59, i32* %arraydecay57)
  store double* %call58, double** %a_cw, align 8
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx61, align 4
  %60 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %61 = load i32, i32* %fi, align 4
  %arraydecay62 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call63 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %60, i32 %61, i32* %arraydecay62)
  store double* %call63, double** %a_ce, align 8
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx66, align 4
  %62 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %63 = load i32, i32* %fi, align 4
  %arraydecay67 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call68 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %62, i32 %63, i32* %arraydecay67)
  store double* %call68, double** %a_cs, align 8
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx71, align 4
  %64 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %65 = load i32, i32* %fi, align 4
  %arraydecay72 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call73 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %64, i32 %65, i32* %arraydecay72)
  store double* %call73, double** %a_cn, align 8
  %66 = load i32, i32* %fine_stencil_size, align 4
  %cmp74 = icmp sgt i32 %66, 5
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx77, align 4
  %67 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %68 = load i32, i32* %fi, align 4
  %arraydecay78 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call79 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %67, i32 %68, i32* %arraydecay78)
  store double* %call79, double** %a_csw, align 8
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx82, align 4
  %69 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %70 = load i32, i32* %fi, align 4
  %arraydecay83 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call84 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %69, i32 %70, i32* %arraydecay83)
  store double* %call84, double** %a_cse, align 8
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx87, align 4
  %71 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %72 = load i32, i32* %fi, align 4
  %arraydecay88 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call89 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %71, i32 %72, i32* %arraydecay88)
  store double* %call89, double** %a_cnw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx92, align 4
  %73 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %74 = load i32, i32* %ci, align 4
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call94 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %73, i32 %74, i32* %arraydecay93)
  store double* %call94, double** %rap_cc, align 8
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx95, align 4
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx97, align 4
  %75 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %76 = load i32, i32* %ci, align 4
  %arraydecay98 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call99 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %75, i32 %76, i32* %arraydecay98)
  store double* %call99, double** %rap_cw, align 8
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx100, align 4
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx101, align 4
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx102, align 4
  %77 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %78 = load i32, i32* %ci, align 4
  %arraydecay103 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call104 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %77, i32 %78, i32* %arraydecay103)
  store double* %call104, double** %rap_cs, align 8
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx106, align 4
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx107, align 4
  %79 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %80 = load i32, i32* %ci, align 4
  %arraydecay108 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call109 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %79, i32 %80, i32* %arraydecay108)
  store double* %call109, double** %rap_csw, align 8
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx110, align 4
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx112, align 4
  %81 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %82 = load i32, i32* %ci, align 4
  %arraydecay113 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call114 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %81, i32 %82, i32* %arraydecay113)
  store double* %call114, double** %rap_cse, align 8
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx115, align 4
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %83 = load i32, i32* %arrayidx118, align 4
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %84 = load i32, i32* %arrayidx119, align 4
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %85 = load i32, i32* %arrayidx120, align 4
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %87 = load i32, i32* %arrayidx121, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imin122, i32 0, i64 1
  %89 = load i32, i32* %arrayidx123, align 4
  %sub = sub nsw i32 %87, %89
  %add = add nsw i32 %sub, 1
  %cmp124 = icmp slt i32 0, %add
  br i1 %cmp124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax125, i32 0, i64 1
  %91 = load i32, i32* %arrayidx126, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin127, i32 0, i64 1
  %93 = load i32, i32* %arrayidx128, align 4
  %sub129 = sub nsw i32 %91, %93
  %add130 = add nsw i32 %sub129, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add130, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %85, %cond
  %add131 = add nsw i32 %84, %mul
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imax132, i32 0, i64 0
  %95 = load i32, i32* %arrayidx133, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 0
  %97 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %95, %97
  %add137 = add nsw i32 %sub136, 1
  %cmp138 = icmp slt i32 0, %add137
  br i1 %cmp138, label %cond.true.139, label %cond.false.146

cond.true.139:                                    ; preds = %cond.end
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %imax140, i32 0, i64 0
  %99 = load i32, i32* %arrayidx141, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 0
  %101 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %99, %101
  %add145 = add nsw i32 %sub144, 1
  br label %cond.end.147

cond.false.146:                                   ; preds = %cond.end
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.139
  %cond148 = phi i32 [ %add145, %cond.true.139 ], [ 0, %cond.false.146 ]
  %mul149 = mul nsw i32 %add131, %cond148
  %add150 = add nsw i32 %83, %mul149
  store i32 %add150, i32* %yOffsetA, align 4
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %102 = load i32, i32* %arrayidx151, align 4
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %103 = load i32, i32* %arrayidx152, align 4
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %104 = load i32, i32* %arrayidx153, align 4
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imax154, i32 0, i64 1
  %106 = load i32, i32* %arrayidx155, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin156, i32 0, i64 1
  %108 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %106, %108
  %add159 = add nsw i32 %sub158, 1
  %cmp160 = icmp slt i32 0, %add159
  br i1 %cmp160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %cond.end.147
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 1
  %110 = load i32, i32* %arrayidx163, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 1
  %112 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %110, %112
  %add167 = add nsw i32 %sub166, 1
  br label %cond.end.169

cond.false.168:                                   ; preds = %cond.end.147
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.161
  %cond170 = phi i32 [ %add167, %cond.true.161 ], [ 0, %cond.false.168 ]
  %mul171 = mul nsw i32 %104, %cond170
  %add172 = add nsw i32 %103, %mul171
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax173, i32 0, i64 0
  %114 = load i32, i32* %arrayidx174, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imin175, i32 0, i64 0
  %116 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %114, %116
  %add178 = add nsw i32 %sub177, 1
  %cmp179 = icmp slt i32 0, %add178
  br i1 %cmp179, label %cond.true.180, label %cond.false.187

cond.true.180:                                    ; preds = %cond.end.169
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imax181, i32 0, i64 0
  %118 = load i32, i32* %arrayidx182, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin183, i32 0, i64 0
  %120 = load i32, i32* %arrayidx184, align 4
  %sub185 = sub nsw i32 %118, %120
  %add186 = add nsw i32 %sub185, 1
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.end.169
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.180
  %cond189 = phi i32 [ %add186, %cond.true.180 ], [ 0, %cond.false.187 ]
  %mul190 = mul nsw i32 %add172, %cond189
  %add191 = add nsw i32 %102, %mul190
  store i32 %add191, i32* %yOffsetP, align 4
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx192, align 4
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx193, align 4
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx194, align 4
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %121 = load i32, i32* %arrayidx195, align 4
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %122 = load i32, i32* %arrayidx196, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %123 = load i32, i32* %arrayidx197, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax198 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [3 x i32], [3 x i32]* %imax198, i32 0, i64 1
  %125 = load i32, i32* %arrayidx199, align 4
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin200 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %imin200, i32 0, i64 1
  %127 = load i32, i32* %arrayidx201, align 4
  %sub202 = sub nsw i32 %125, %127
  %add203 = add nsw i32 %sub202, 1
  %cmp204 = icmp slt i32 0, %add203
  br i1 %cmp204, label %cond.true.205, label %cond.false.212

cond.true.205:                                    ; preds = %cond.end.188
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax206 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %imax206, i32 0, i64 1
  %129 = load i32, i32* %arrayidx207, align 4
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin208 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [3 x i32], [3 x i32]* %imin208, i32 0, i64 1
  %131 = load i32, i32* %arrayidx209, align 4
  %sub210 = sub nsw i32 %129, %131
  %add211 = add nsw i32 %sub210, 1
  br label %cond.end.213

cond.false.212:                                   ; preds = %cond.end.188
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.205
  %cond214 = phi i32 [ %add211, %cond.true.205 ], [ 0, %cond.false.212 ]
  %mul215 = mul nsw i32 %123, %cond214
  %add216 = add nsw i32 %122, %mul215
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax217 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %imax217, i32 0, i64 0
  %133 = load i32, i32* %arrayidx218, align 4
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imin219, i32 0, i64 0
  %135 = load i32, i32* %arrayidx220, align 4
  %sub221 = sub nsw i32 %133, %135
  %add222 = add nsw i32 %sub221, 1
  %cmp223 = icmp slt i32 0, %add222
  br i1 %cmp223, label %cond.true.224, label %cond.false.231

cond.true.224:                                    ; preds = %cond.end.213
  %136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %136, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax225, i32 0, i64 0
  %137 = load i32, i32* %arrayidx226, align 4
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin227, i32 0, i64 0
  %139 = load i32, i32* %arrayidx228, align 4
  %sub229 = sub nsw i32 %137, %139
  %add230 = add nsw i32 %sub229, 1
  br label %cond.end.232

cond.false.231:                                   ; preds = %cond.end.213
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.231, %cond.true.224
  %cond233 = phi i32 [ %add230, %cond.true.224 ], [ 0, %cond.false.231 ]
  %mul234 = mul nsw i32 %add216, %cond233
  %add235 = add nsw i32 %121, %mul234
  store i32 %add235, i32* %xOffsetP, align 4
  %140 = load i32, i32* %fine_stencil_size, align 4
  switch i32 %140, label %sw.default [
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end.232
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay236 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call237 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %141, i32* %arraydecay236)
  %142 = load i32*, i32** %cstart, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %142, i64 0
  %143 = load i32, i32* %arrayidx238, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %imin239, i32 0, i64 0
  %145 = load i32, i32* %arrayidx240, align 4
  %sub241 = sub nsw i32 %143, %145
  %146 = load i32*, i32** %cstart, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %146, i64 1
  %147 = load i32, i32* %arrayidx242, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin243 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %imin243, i32 0, i64 1
  %149 = load i32, i32* %arrayidx244, align 4
  %sub245 = sub nsw i32 %147, %149
  %150 = load i32*, i32** %cstart, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %150, i64 2
  %151 = load i32, i32* %arrayidx246, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin247 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %imin247, i32 0, i64 2
  %153 = load i32, i32* %arrayidx248, align 4
  %sub249 = sub nsw i32 %151, %153
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imax250, i32 0, i64 1
  %155 = load i32, i32* %arrayidx251, align 4
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imin252, i32 0, i64 1
  %157 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %155, %157
  %add255 = add nsw i32 %sub254, 1
  %cmp256 = icmp slt i32 0, %add255
  br i1 %cmp256, label %cond.true.257, label %cond.false.264

cond.true.257:                                    ; preds = %sw.bb
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax258, i32 0, i64 1
  %159 = load i32, i32* %arrayidx259, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin260, i32 0, i64 1
  %161 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %159, %161
  %add263 = add nsw i32 %sub262, 1
  br label %cond.end.265

cond.false.264:                                   ; preds = %sw.bb
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.257
  %cond266 = phi i32 [ %add263, %cond.true.257 ], [ 0, %cond.false.264 ]
  %mul267 = mul nsw i32 %sub249, %cond266
  %add268 = add nsw i32 %sub245, %mul267
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imax269, i32 0, i64 0
  %163 = load i32, i32* %arrayidx270, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %imin271, i32 0, i64 0
  %165 = load i32, i32* %arrayidx272, align 4
  %sub273 = sub nsw i32 %163, %165
  %add274 = add nsw i32 %sub273, 1
  %cmp275 = icmp slt i32 0, %add274
  br i1 %cmp275, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %cond.end.265
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imax277, i32 0, i64 0
  %167 = load i32, i32* %arrayidx278, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 0
  %169 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %167, %169
  %add282 = add nsw i32 %sub281, 1
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.265
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.276
  %cond285 = phi i32 [ %add282, %cond.true.276 ], [ 0, %cond.false.283 ]
  %mul286 = mul nsw i32 %add268, %cond285
  %add287 = add nsw i32 %sub241, %mul286
  store i32 %add287, i32* %hypre__i1start, align 4
  %170 = load i32*, i32** %cstart, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %170, i64 0
  %171 = load i32, i32* %arrayidx288, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imin289, i32 0, i64 0
  %173 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %171, %173
  %174 = load i32*, i32** %cstart, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %174, i64 1
  %175 = load i32, i32* %arrayidx292, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin293 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [3 x i32], [3 x i32]* %imin293, i32 0, i64 1
  %177 = load i32, i32* %arrayidx294, align 4
  %sub295 = sub nsw i32 %175, %177
  %178 = load i32*, i32** %cstart, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %178, i64 2
  %179 = load i32, i32* %arrayidx296, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %imin297, i32 0, i64 2
  %181 = load i32, i32* %arrayidx298, align 4
  %sub299 = sub nsw i32 %179, %181
  %182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %182, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [3 x i32], [3 x i32]* %imax300, i32 0, i64 1
  %183 = load i32, i32* %arrayidx301, align 4
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin302 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [3 x i32], [3 x i32]* %imin302, i32 0, i64 1
  %185 = load i32, i32* %arrayidx303, align 4
  %sub304 = sub nsw i32 %183, %185
  %add305 = add nsw i32 %sub304, 1
  %cmp306 = icmp slt i32 0, %add305
  br i1 %cmp306, label %cond.true.307, label %cond.false.314

cond.true.307:                                    ; preds = %cond.end.284
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [3 x i32], [3 x i32]* %imax308, i32 0, i64 1
  %187 = load i32, i32* %arrayidx309, align 4
  %188 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin310 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %188, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [3 x i32], [3 x i32]* %imin310, i32 0, i64 1
  %189 = load i32, i32* %arrayidx311, align 4
  %sub312 = sub nsw i32 %187, %189
  %add313 = add nsw i32 %sub312, 1
  br label %cond.end.315

cond.false.314:                                   ; preds = %cond.end.284
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.314, %cond.true.307
  %cond316 = phi i32 [ %add313, %cond.true.307 ], [ 0, %cond.false.314 ]
  %mul317 = mul nsw i32 %sub299, %cond316
  %add318 = add nsw i32 %sub295, %mul317
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax319 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [3 x i32], [3 x i32]* %imax319, i32 0, i64 0
  %191 = load i32, i32* %arrayidx320, align 4
  %192 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin321 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %192, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [3 x i32], [3 x i32]* %imin321, i32 0, i64 0
  %193 = load i32, i32* %arrayidx322, align 4
  %sub323 = sub nsw i32 %191, %193
  %add324 = add nsw i32 %sub323, 1
  %cmp325 = icmp slt i32 0, %add324
  br i1 %cmp325, label %cond.true.326, label %cond.false.333

cond.true.326:                                    ; preds = %cond.end.315
  %194 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax327 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %194, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [3 x i32], [3 x i32]* %imax327, i32 0, i64 0
  %195 = load i32, i32* %arrayidx328, align 4
  %196 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin329 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %196, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x i32], [3 x i32]* %imin329, i32 0, i64 0
  %197 = load i32, i32* %arrayidx330, align 4
  %sub331 = sub nsw i32 %195, %197
  %add332 = add nsw i32 %sub331, 1
  br label %cond.end.334

cond.false.333:                                   ; preds = %cond.end.315
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.false.333, %cond.true.326
  %cond335 = phi i32 [ %add332, %cond.true.326 ], [ 0, %cond.false.333 ]
  %mul336 = mul nsw i32 %add318, %cond335
  %add337 = add nsw i32 %sub291, %mul336
  store i32 %add337, i32* %hypre__i2start, align 4
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %198 = load i32, i32* %arrayidx338, align 4
  %199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin339 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %199, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [3 x i32], [3 x i32]* %imin339, i32 0, i64 0
  %200 = load i32, i32* %arrayidx340, align 4
  %sub341 = sub nsw i32 %198, %200
  %arrayidx342 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %201 = load i32, i32* %arrayidx342, align 4
  %202 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin343 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %202, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %imin343, i32 0, i64 1
  %203 = load i32, i32* %arrayidx344, align 4
  %sub345 = sub nsw i32 %201, %203
  %arrayidx346 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %204 = load i32, i32* %arrayidx346, align 4
  %205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin347 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %205, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [3 x i32], [3 x i32]* %imin347, i32 0, i64 2
  %206 = load i32, i32* %arrayidx348, align 4
  %sub349 = sub nsw i32 %204, %206
  %207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax350 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %207, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [3 x i32], [3 x i32]* %imax350, i32 0, i64 1
  %208 = load i32, i32* %arrayidx351, align 4
  %209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %209, i32 0, i32 0
  %arrayidx353 = getelementptr inbounds [3 x i32], [3 x i32]* %imin352, i32 0, i64 1
  %210 = load i32, i32* %arrayidx353, align 4
  %sub354 = sub nsw i32 %208, %210
  %add355 = add nsw i32 %sub354, 1
  %cmp356 = icmp slt i32 0, %add355
  br i1 %cmp356, label %cond.true.357, label %cond.false.364

cond.true.357:                                    ; preds = %cond.end.334
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax358 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [3 x i32], [3 x i32]* %imax358, i32 0, i64 1
  %212 = load i32, i32* %arrayidx359, align 4
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin360 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %213, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [3 x i32], [3 x i32]* %imin360, i32 0, i64 1
  %214 = load i32, i32* %arrayidx361, align 4
  %sub362 = sub nsw i32 %212, %214
  %add363 = add nsw i32 %sub362, 1
  br label %cond.end.365

cond.false.364:                                   ; preds = %cond.end.334
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.364, %cond.true.357
  %cond366 = phi i32 [ %add363, %cond.true.357 ], [ 0, %cond.false.364 ]
  %mul367 = mul nsw i32 %sub349, %cond366
  %add368 = add nsw i32 %sub345, %mul367
  %215 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax369 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %215, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [3 x i32], [3 x i32]* %imax369, i32 0, i64 0
  %216 = load i32, i32* %arrayidx370, align 4
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin371 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [3 x i32], [3 x i32]* %imin371, i32 0, i64 0
  %218 = load i32, i32* %arrayidx372, align 4
  %sub373 = sub nsw i32 %216, %218
  %add374 = add nsw i32 %sub373, 1
  %cmp375 = icmp slt i32 0, %add374
  br i1 %cmp375, label %cond.true.376, label %cond.false.383

cond.true.376:                                    ; preds = %cond.end.365
  %219 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax377 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %219, i32 0, i32 1
  %arrayidx378 = getelementptr inbounds [3 x i32], [3 x i32]* %imax377, i32 0, i64 0
  %220 = load i32, i32* %arrayidx378, align 4
  %221 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin379 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %221, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [3 x i32], [3 x i32]* %imin379, i32 0, i64 0
  %222 = load i32, i32* %arrayidx380, align 4
  %sub381 = sub nsw i32 %220, %222
  %add382 = add nsw i32 %sub381, 1
  br label %cond.end.384

cond.false.383:                                   ; preds = %cond.end.365
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.383, %cond.true.376
  %cond385 = phi i32 [ %add382, %cond.true.376 ], [ 0, %cond.false.383 ]
  %mul386 = mul nsw i32 %add368, %cond385
  %add387 = add nsw i32 %sub341, %mul386
  store i32 %add387, i32* %hypre__i3start, align 4
  %223 = load i32*, i32** %cstart, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %223, i64 0
  %224 = load i32, i32* %arrayidx388, align 4
  %225 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin389 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %225, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %imin389, i32 0, i64 0
  %226 = load i32, i32* %arrayidx390, align 4
  %sub391 = sub nsw i32 %224, %226
  %227 = load i32*, i32** %cstart, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %227, i64 1
  %228 = load i32, i32* %arrayidx392, align 4
  %229 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin393 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %229, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [3 x i32], [3 x i32]* %imin393, i32 0, i64 1
  %230 = load i32, i32* %arrayidx394, align 4
  %sub395 = sub nsw i32 %228, %230
  %231 = load i32*, i32** %cstart, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %231, i64 2
  %232 = load i32, i32* %arrayidx396, align 4
  %233 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin397 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %233, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %imin397, i32 0, i64 2
  %234 = load i32, i32* %arrayidx398, align 4
  %sub399 = sub nsw i32 %232, %234
  %235 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax400 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %235, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [3 x i32], [3 x i32]* %imax400, i32 0, i64 1
  %236 = load i32, i32* %arrayidx401, align 4
  %237 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin402 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %237, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [3 x i32], [3 x i32]* %imin402, i32 0, i64 1
  %238 = load i32, i32* %arrayidx403, align 4
  %sub404 = sub nsw i32 %236, %238
  %add405 = add nsw i32 %sub404, 1
  %cmp406 = icmp slt i32 0, %add405
  br i1 %cmp406, label %cond.true.407, label %cond.false.414

cond.true.407:                                    ; preds = %cond.end.384
  %239 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax408 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %239, i32 0, i32 1
  %arrayidx409 = getelementptr inbounds [3 x i32], [3 x i32]* %imax408, i32 0, i64 1
  %240 = load i32, i32* %arrayidx409, align 4
  %241 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin410 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %241, i32 0, i32 0
  %arrayidx411 = getelementptr inbounds [3 x i32], [3 x i32]* %imin410, i32 0, i64 1
  %242 = load i32, i32* %arrayidx411, align 4
  %sub412 = sub nsw i32 %240, %242
  %add413 = add nsw i32 %sub412, 1
  br label %cond.end.415

cond.false.414:                                   ; preds = %cond.end.384
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.414, %cond.true.407
  %cond416 = phi i32 [ %add413, %cond.true.407 ], [ 0, %cond.false.414 ]
  %mul417 = mul nsw i32 %sub399, %cond416
  %add418 = add nsw i32 %sub395, %mul417
  %243 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax419 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %243, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [3 x i32], [3 x i32]* %imax419, i32 0, i64 0
  %244 = load i32, i32* %arrayidx420, align 4
  %245 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin421 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %245, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [3 x i32], [3 x i32]* %imin421, i32 0, i64 0
  %246 = load i32, i32* %arrayidx422, align 4
  %sub423 = sub nsw i32 %244, %246
  %add424 = add nsw i32 %sub423, 1
  %cmp425 = icmp slt i32 0, %add424
  br i1 %cmp425, label %cond.true.426, label %cond.false.433

cond.true.426:                                    ; preds = %cond.end.415
  %247 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax427 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %247, i32 0, i32 1
  %arrayidx428 = getelementptr inbounds [3 x i32], [3 x i32]* %imax427, i32 0, i64 0
  %248 = load i32, i32* %arrayidx428, align 4
  %249 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin429 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %249, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [3 x i32], [3 x i32]* %imin429, i32 0, i64 0
  %250 = load i32, i32* %arrayidx430, align 4
  %sub431 = sub nsw i32 %248, %250
  %add432 = add nsw i32 %sub431, 1
  br label %cond.end.434

cond.false.433:                                   ; preds = %cond.end.415
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.false.433, %cond.true.426
  %cond435 = phi i32 [ %add432, %cond.true.426 ], [ 0, %cond.false.433 ]
  %mul436 = mul nsw i32 %add418, %cond435
  %add437 = add nsw i32 %sub391, %mul436
  store i32 %add437, i32* %hypre__i4start, align 4
  %arrayidx438 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %251 = load i32, i32* %arrayidx438, align 4
  store i32 %251, i32* %hypre__sx1, align 4
  %arrayidx439 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %252 = load i32, i32* %arrayidx439, align 4
  %253 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax440 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %253, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [3 x i32], [3 x i32]* %imax440, i32 0, i64 0
  %254 = load i32, i32* %arrayidx441, align 4
  %255 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin442 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %255, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [3 x i32], [3 x i32]* %imin442, i32 0, i64 0
  %256 = load i32, i32* %arrayidx443, align 4
  %sub444 = sub nsw i32 %254, %256
  %add445 = add nsw i32 %sub444, 1
  %cmp446 = icmp slt i32 0, %add445
  br i1 %cmp446, label %cond.true.447, label %cond.false.454

cond.true.447:                                    ; preds = %cond.end.434
  %257 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax448 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %257, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [3 x i32], [3 x i32]* %imax448, i32 0, i64 0
  %258 = load i32, i32* %arrayidx449, align 4
  %259 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin450 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %259, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [3 x i32], [3 x i32]* %imin450, i32 0, i64 0
  %260 = load i32, i32* %arrayidx451, align 4
  %sub452 = sub nsw i32 %258, %260
  %add453 = add nsw i32 %sub452, 1
  br label %cond.end.455

cond.false.454:                                   ; preds = %cond.end.434
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.454, %cond.true.447
  %cond456 = phi i32 [ %add453, %cond.true.447 ], [ 0, %cond.false.454 ]
  %mul457 = mul nsw i32 %252, %cond456
  store i32 %mul457, i32* %hypre__sy1, align 4
  %arrayidx458 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %261 = load i32, i32* %arrayidx458, align 4
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax459 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [3 x i32], [3 x i32]* %imax459, i32 0, i64 0
  %263 = load i32, i32* %arrayidx460, align 4
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin461 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [3 x i32], [3 x i32]* %imin461, i32 0, i64 0
  %265 = load i32, i32* %arrayidx462, align 4
  %sub463 = sub nsw i32 %263, %265
  %add464 = add nsw i32 %sub463, 1
  %cmp465 = icmp slt i32 0, %add464
  br i1 %cmp465, label %cond.true.466, label %cond.false.473

cond.true.466:                                    ; preds = %cond.end.455
  %266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax467 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %266, i32 0, i32 1
  %arrayidx468 = getelementptr inbounds [3 x i32], [3 x i32]* %imax467, i32 0, i64 0
  %267 = load i32, i32* %arrayidx468, align 4
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin469 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %imin469, i32 0, i64 0
  %269 = load i32, i32* %arrayidx470, align 4
  %sub471 = sub nsw i32 %267, %269
  %add472 = add nsw i32 %sub471, 1
  br label %cond.end.474

cond.false.473:                                   ; preds = %cond.end.455
  br label %cond.end.474

cond.end.474:                                     ; preds = %cond.false.473, %cond.true.466
  %cond475 = phi i32 [ %add472, %cond.true.466 ], [ 0, %cond.false.473 ]
  %mul476 = mul nsw i32 %261, %cond475
  %270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %270, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %imax477, i32 0, i64 1
  %271 = load i32, i32* %arrayidx478, align 4
  %272 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin479 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %272, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [3 x i32], [3 x i32]* %imin479, i32 0, i64 1
  %273 = load i32, i32* %arrayidx480, align 4
  %sub481 = sub nsw i32 %271, %273
  %add482 = add nsw i32 %sub481, 1
  %cmp483 = icmp slt i32 0, %add482
  br i1 %cmp483, label %cond.true.484, label %cond.false.491

cond.true.484:                                    ; preds = %cond.end.474
  %274 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax485 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %274, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %imax485, i32 0, i64 1
  %275 = load i32, i32* %arrayidx486, align 4
  %276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin487 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %276, i32 0, i32 0
  %arrayidx488 = getelementptr inbounds [3 x i32], [3 x i32]* %imin487, i32 0, i64 1
  %277 = load i32, i32* %arrayidx488, align 4
  %sub489 = sub nsw i32 %275, %277
  %add490 = add nsw i32 %sub489, 1
  br label %cond.end.492

cond.false.491:                                   ; preds = %cond.end.474
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.false.491, %cond.true.484
  %cond493 = phi i32 [ %add490, %cond.true.484 ], [ 0, %cond.false.491 ]
  %mul494 = mul nsw i32 %mul476, %cond493
  store i32 %mul494, i32* %hypre__sz1, align 4
  %arrayidx495 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %278 = load i32, i32* %arrayidx495, align 4
  store i32 %278, i32* %hypre__sx2, align 4
  %arrayidx496 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %279 = load i32, i32* %arrayidx496, align 4
  %280 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax497 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %280, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [3 x i32], [3 x i32]* %imax497, i32 0, i64 0
  %281 = load i32, i32* %arrayidx498, align 4
  %282 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin499 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %282, i32 0, i32 0
  %arrayidx500 = getelementptr inbounds [3 x i32], [3 x i32]* %imin499, i32 0, i64 0
  %283 = load i32, i32* %arrayidx500, align 4
  %sub501 = sub nsw i32 %281, %283
  %add502 = add nsw i32 %sub501, 1
  %cmp503 = icmp slt i32 0, %add502
  br i1 %cmp503, label %cond.true.504, label %cond.false.511

cond.true.504:                                    ; preds = %cond.end.492
  %284 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax505 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %284, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [3 x i32], [3 x i32]* %imax505, i32 0, i64 0
  %285 = load i32, i32* %arrayidx506, align 4
  %286 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin507 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %286, i32 0, i32 0
  %arrayidx508 = getelementptr inbounds [3 x i32], [3 x i32]* %imin507, i32 0, i64 0
  %287 = load i32, i32* %arrayidx508, align 4
  %sub509 = sub nsw i32 %285, %287
  %add510 = add nsw i32 %sub509, 1
  br label %cond.end.512

cond.false.511:                                   ; preds = %cond.end.492
  br label %cond.end.512

cond.end.512:                                     ; preds = %cond.false.511, %cond.true.504
  %cond513 = phi i32 [ %add510, %cond.true.504 ], [ 0, %cond.false.511 ]
  %mul514 = mul nsw i32 %279, %cond513
  store i32 %mul514, i32* %hypre__sy2, align 4
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %288 = load i32, i32* %arrayidx515, align 4
  %289 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax516 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %289, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [3 x i32], [3 x i32]* %imax516, i32 0, i64 0
  %290 = load i32, i32* %arrayidx517, align 4
  %291 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin518 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %291, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [3 x i32], [3 x i32]* %imin518, i32 0, i64 0
  %292 = load i32, i32* %arrayidx519, align 4
  %sub520 = sub nsw i32 %290, %292
  %add521 = add nsw i32 %sub520, 1
  %cmp522 = icmp slt i32 0, %add521
  br i1 %cmp522, label %cond.true.523, label %cond.false.530

cond.true.523:                                    ; preds = %cond.end.512
  %293 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax524 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %293, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %imax524, i32 0, i64 0
  %294 = load i32, i32* %arrayidx525, align 4
  %295 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %295, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imin526, i32 0, i64 0
  %296 = load i32, i32* %arrayidx527, align 4
  %sub528 = sub nsw i32 %294, %296
  %add529 = add nsw i32 %sub528, 1
  br label %cond.end.531

cond.false.530:                                   ; preds = %cond.end.512
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.530, %cond.true.523
  %cond532 = phi i32 [ %add529, %cond.true.523 ], [ 0, %cond.false.530 ]
  %mul533 = mul nsw i32 %288, %cond532
  %297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %297, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %imax534, i32 0, i64 1
  %298 = load i32, i32* %arrayidx535, align 4
  %299 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin536 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %299, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [3 x i32], [3 x i32]* %imin536, i32 0, i64 1
  %300 = load i32, i32* %arrayidx537, align 4
  %sub538 = sub nsw i32 %298, %300
  %add539 = add nsw i32 %sub538, 1
  %cmp540 = icmp slt i32 0, %add539
  br i1 %cmp540, label %cond.true.541, label %cond.false.548

cond.true.541:                                    ; preds = %cond.end.531
  %301 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax542 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %301, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [3 x i32], [3 x i32]* %imax542, i32 0, i64 1
  %302 = load i32, i32* %arrayidx543, align 4
  %303 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin544 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %303, i32 0, i32 0
  %arrayidx545 = getelementptr inbounds [3 x i32], [3 x i32]* %imin544, i32 0, i64 1
  %304 = load i32, i32* %arrayidx545, align 4
  %sub546 = sub nsw i32 %302, %304
  %add547 = add nsw i32 %sub546, 1
  br label %cond.end.549

cond.false.548:                                   ; preds = %cond.end.531
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.548, %cond.true.541
  %cond550 = phi i32 [ %add547, %cond.true.541 ], [ 0, %cond.false.548 ]
  %mul551 = mul nsw i32 %mul533, %cond550
  store i32 %mul551, i32* %hypre__sz2, align 4
  %305 = load i32*, i32** %stridef, align 8
  %arrayidx552 = getelementptr inbounds i32, i32* %305, i64 0
  %306 = load i32, i32* %arrayidx552, align 4
  store i32 %306, i32* %hypre__sx3, align 4
  %307 = load i32*, i32** %stridef, align 8
  %arrayidx553 = getelementptr inbounds i32, i32* %307, i64 1
  %308 = load i32, i32* %arrayidx553, align 4
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax554 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [3 x i32], [3 x i32]* %imax554, i32 0, i64 0
  %310 = load i32, i32* %arrayidx555, align 4
  %311 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin556 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %311, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [3 x i32], [3 x i32]* %imin556, i32 0, i64 0
  %312 = load i32, i32* %arrayidx557, align 4
  %sub558 = sub nsw i32 %310, %312
  %add559 = add nsw i32 %sub558, 1
  %cmp560 = icmp slt i32 0, %add559
  br i1 %cmp560, label %cond.true.561, label %cond.false.568

cond.true.561:                                    ; preds = %cond.end.549
  %313 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax562 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %313, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [3 x i32], [3 x i32]* %imax562, i32 0, i64 0
  %314 = load i32, i32* %arrayidx563, align 4
  %315 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin564 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %315, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [3 x i32], [3 x i32]* %imin564, i32 0, i64 0
  %316 = load i32, i32* %arrayidx565, align 4
  %sub566 = sub nsw i32 %314, %316
  %add567 = add nsw i32 %sub566, 1
  br label %cond.end.569

cond.false.568:                                   ; preds = %cond.end.549
  br label %cond.end.569

cond.end.569:                                     ; preds = %cond.false.568, %cond.true.561
  %cond570 = phi i32 [ %add567, %cond.true.561 ], [ 0, %cond.false.568 ]
  %mul571 = mul nsw i32 %308, %cond570
  store i32 %mul571, i32* %hypre__sy3, align 4
  %317 = load i32*, i32** %stridef, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %317, i64 2
  %318 = load i32, i32* %arrayidx572, align 4
  %319 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax573 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %319, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [3 x i32], [3 x i32]* %imax573, i32 0, i64 0
  %320 = load i32, i32* %arrayidx574, align 4
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %321, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [3 x i32], [3 x i32]* %imin575, i32 0, i64 0
  %322 = load i32, i32* %arrayidx576, align 4
  %sub577 = sub nsw i32 %320, %322
  %add578 = add nsw i32 %sub577, 1
  %cmp579 = icmp slt i32 0, %add578
  br i1 %cmp579, label %cond.true.580, label %cond.false.587

cond.true.580:                                    ; preds = %cond.end.569
  %323 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax581 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %323, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [3 x i32], [3 x i32]* %imax581, i32 0, i64 0
  %324 = load i32, i32* %arrayidx582, align 4
  %325 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin583 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %325, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %imin583, i32 0, i64 0
  %326 = load i32, i32* %arrayidx584, align 4
  %sub585 = sub nsw i32 %324, %326
  %add586 = add nsw i32 %sub585, 1
  br label %cond.end.588

cond.false.587:                                   ; preds = %cond.end.569
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.false.587, %cond.true.580
  %cond589 = phi i32 [ %add586, %cond.true.580 ], [ 0, %cond.false.587 ]
  %mul590 = mul nsw i32 %318, %cond589
  %327 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax591 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %327, i32 0, i32 1
  %arrayidx592 = getelementptr inbounds [3 x i32], [3 x i32]* %imax591, i32 0, i64 1
  %328 = load i32, i32* %arrayidx592, align 4
  %329 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin593 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %329, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [3 x i32], [3 x i32]* %imin593, i32 0, i64 1
  %330 = load i32, i32* %arrayidx594, align 4
  %sub595 = sub nsw i32 %328, %330
  %add596 = add nsw i32 %sub595, 1
  %cmp597 = icmp slt i32 0, %add596
  br i1 %cmp597, label %cond.true.598, label %cond.false.605

cond.true.598:                                    ; preds = %cond.end.588
  %331 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %331, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [3 x i32], [3 x i32]* %imax599, i32 0, i64 1
  %332 = load i32, i32* %arrayidx600, align 4
  %333 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin601 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %333, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [3 x i32], [3 x i32]* %imin601, i32 0, i64 1
  %334 = load i32, i32* %arrayidx602, align 4
  %sub603 = sub nsw i32 %332, %334
  %add604 = add nsw i32 %sub603, 1
  br label %cond.end.606

cond.false.605:                                   ; preds = %cond.end.588
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.605, %cond.true.598
  %cond607 = phi i32 [ %add604, %cond.true.598 ], [ 0, %cond.false.605 ]
  %mul608 = mul nsw i32 %mul590, %cond607
  store i32 %mul608, i32* %hypre__sz3, align 4
  %arrayidx609 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %335 = load i32, i32* %arrayidx609, align 4
  store i32 %335, i32* %hypre__sx4, align 4
  %arrayidx610 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %336 = load i32, i32* %arrayidx610, align 4
  %337 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax611 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %337, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [3 x i32], [3 x i32]* %imax611, i32 0, i64 0
  %338 = load i32, i32* %arrayidx612, align 4
  %339 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin613 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %339, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [3 x i32], [3 x i32]* %imin613, i32 0, i64 0
  %340 = load i32, i32* %arrayidx614, align 4
  %sub615 = sub nsw i32 %338, %340
  %add616 = add nsw i32 %sub615, 1
  %cmp617 = icmp slt i32 0, %add616
  br i1 %cmp617, label %cond.true.618, label %cond.false.625

cond.true.618:                                    ; preds = %cond.end.606
  %341 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax619 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %341, i32 0, i32 1
  %arrayidx620 = getelementptr inbounds [3 x i32], [3 x i32]* %imax619, i32 0, i64 0
  %342 = load i32, i32* %arrayidx620, align 4
  %343 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin621 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %343, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [3 x i32], [3 x i32]* %imin621, i32 0, i64 0
  %344 = load i32, i32* %arrayidx622, align 4
  %sub623 = sub nsw i32 %342, %344
  %add624 = add nsw i32 %sub623, 1
  br label %cond.end.626

cond.false.625:                                   ; preds = %cond.end.606
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.false.625, %cond.true.618
  %cond627 = phi i32 [ %add624, %cond.true.618 ], [ 0, %cond.false.625 ]
  %mul628 = mul nsw i32 %336, %cond627
  store i32 %mul628, i32* %hypre__sy4, align 4
  %arrayidx629 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %345 = load i32, i32* %arrayidx629, align 4
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax630 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 1
  %arrayidx631 = getelementptr inbounds [3 x i32], [3 x i32]* %imax630, i32 0, i64 0
  %347 = load i32, i32* %arrayidx631, align 4
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin632 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [3 x i32], [3 x i32]* %imin632, i32 0, i64 0
  %349 = load i32, i32* %arrayidx633, align 4
  %sub634 = sub nsw i32 %347, %349
  %add635 = add nsw i32 %sub634, 1
  %cmp636 = icmp slt i32 0, %add635
  br i1 %cmp636, label %cond.true.637, label %cond.false.644

cond.true.637:                                    ; preds = %cond.end.626
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax638 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 1
  %arrayidx639 = getelementptr inbounds [3 x i32], [3 x i32]* %imax638, i32 0, i64 0
  %351 = load i32, i32* %arrayidx639, align 4
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin640 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %352, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [3 x i32], [3 x i32]* %imin640, i32 0, i64 0
  %353 = load i32, i32* %arrayidx641, align 4
  %sub642 = sub nsw i32 %351, %353
  %add643 = add nsw i32 %sub642, 1
  br label %cond.end.645

cond.false.644:                                   ; preds = %cond.end.626
  br label %cond.end.645

cond.end.645:                                     ; preds = %cond.false.644, %cond.true.637
  %cond646 = phi i32 [ %add643, %cond.true.637 ], [ 0, %cond.false.644 ]
  %mul647 = mul nsw i32 %345, %cond646
  %354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax648 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %354, i32 0, i32 1
  %arrayidx649 = getelementptr inbounds [3 x i32], [3 x i32]* %imax648, i32 0, i64 1
  %355 = load i32, i32* %arrayidx649, align 4
  %356 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin650 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %356, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [3 x i32], [3 x i32]* %imin650, i32 0, i64 1
  %357 = load i32, i32* %arrayidx651, align 4
  %sub652 = sub nsw i32 %355, %357
  %add653 = add nsw i32 %sub652, 1
  %cmp654 = icmp slt i32 0, %add653
  br i1 %cmp654, label %cond.true.655, label %cond.false.662

cond.true.655:                                    ; preds = %cond.end.645
  %358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax656 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %358, i32 0, i32 1
  %arrayidx657 = getelementptr inbounds [3 x i32], [3 x i32]* %imax656, i32 0, i64 1
  %359 = load i32, i32* %arrayidx657, align 4
  %360 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin658 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %360, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [3 x i32], [3 x i32]* %imin658, i32 0, i64 1
  %361 = load i32, i32* %arrayidx659, align 4
  %sub660 = sub nsw i32 %359, %361
  %add661 = add nsw i32 %sub660, 1
  br label %cond.end.663

cond.false.662:                                   ; preds = %cond.end.645
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.662, %cond.true.655
  %cond664 = phi i32 [ %add661, %cond.true.655 ], [ 0, %cond.false.662 ]
  %mul665 = mul nsw i32 %mul647, %cond664
  store i32 %mul665, i32* %hypre__sz4, align 4
  %arrayidx666 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %362 = load i32, i32* %arrayidx666, align 4
  store i32 %362, i32* %hypre__nx, align 4
  %arrayidx667 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %363 = load i32, i32* %arrayidx667, align 4
  store i32 %363, i32* %hypre__ny, align 4
  %arrayidx668 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %364 = load i32, i32* %arrayidx668, align 4
  store i32 %364, i32* %hypre__nz, align 4
  %365 = load i32, i32* %hypre__nx, align 4
  store i32 %365, i32* %hypre__mx, align 4
  %366 = load i32, i32* %hypre__ny, align 4
  store i32 %366, i32* %hypre__my, align 4
  %367 = load i32, i32* %hypre__nz, align 4
  store i32 %367, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %368 = load i32, i32* %hypre__nx, align 4
  store i32 %368, i32* %hypre__max, align 4
  %369 = load i32, i32* %hypre__ny, align 4
  %370 = load i32, i32* %hypre__max, align 4
  %cmp669 = icmp sgt i32 %369, %370
  br i1 %cmp669, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %cond.end.663
  store i32 1, i32* %hypre__dir, align 4
  %371 = load i32, i32* %hypre__ny, align 4
  store i32 %371, i32* %hypre__max, align 4
  br label %if.end.671

if.end.671:                                       ; preds = %if.then.670, %cond.end.663
  %372 = load i32, i32* %hypre__nz, align 4
  %373 = load i32, i32* %hypre__max, align 4
  %cmp672 = icmp sgt i32 %372, %373
  br i1 %cmp672, label %if.then.673, label %if.end.674

if.then.673:                                      ; preds = %if.end.671
  store i32 2, i32* %hypre__dir, align 4
  %374 = load i32, i32* %hypre__nz, align 4
  store i32 %374, i32* %hypre__max, align 4
  br label %if.end.674

if.end.674:                                       ; preds = %if.then.673, %if.end.671
  store i32 1, i32* %hypre__num_blocks, align 4
  %375 = load i32, i32* %hypre__max, align 4
  %376 = load i32, i32* %hypre__num_blocks, align 4
  %cmp675 = icmp slt i32 %375, %376
  br i1 %cmp675, label %if.then.676, label %if.end.677

if.then.676:                                      ; preds = %if.end.674
  %377 = load i32, i32* %hypre__max, align 4
  store i32 %377, i32* %hypre__num_blocks, align 4
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.676, %if.end.674
  %378 = load i32, i32* %hypre__num_blocks, align 4
  %cmp678 = icmp sgt i32 %378, 0
  br i1 %cmp678, label %if.then.679, label %if.end.680

if.then.679:                                      ; preds = %if.end.677
  %379 = load i32, i32* %hypre__max, align 4
  %380 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %379, %380
  store i32 %div, i32* %hypre__div, align 4
  %381 = load i32, i32* %hypre__max, align 4
  %382 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %381, %382
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.680

if.end.680:                                       ; preds = %if.then.679, %if.end.677
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.913, %if.end.680
  %383 = load i32, i32* %hypre__block, align 4
  %384 = load i32, i32* %hypre__num_blocks, align 4
  %cmp682 = icmp slt i32 %383, %384
  br i1 %cmp682, label %for.body.683, label %for.end.915

for.body.683:                                     ; preds = %for.cond.681
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %385 = load i32, i32* %hypre__mx, align 4
  store i32 %385, i32* %hypre__nx, align 4
  %386 = load i32, i32* %hypre__my, align 4
  store i32 %386, i32* %hypre__ny, align 4
  %387 = load i32, i32* %hypre__mz, align 4
  store i32 %387, i32* %hypre__nz, align 4
  %388 = load i32, i32* %hypre__num_blocks, align 4
  %cmp684 = icmp sgt i32 %388, 1
  br i1 %cmp684, label %if.then.685, label %if.end.726

if.then.685:                                      ; preds = %for.body.683
  %389 = load i32, i32* %hypre__dir, align 4
  %cmp686 = icmp eq i32 %389, 0
  br i1 %cmp686, label %if.then.687, label %if.else

if.then.687:                                      ; preds = %if.then.685
  %390 = load i32, i32* %hypre__block, align 4
  %391 = load i32, i32* %hypre__div, align 4
  %mul688 = mul nsw i32 %390, %391
  %392 = load i32, i32* %hypre__mod, align 4
  %393 = load i32, i32* %hypre__block, align 4
  %cmp689 = icmp slt i32 %392, %393
  br i1 %cmp689, label %cond.true.690, label %cond.false.691

cond.true.690:                                    ; preds = %if.then.687
  %394 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.692

cond.false.691:                                   ; preds = %if.then.687
  %395 = load i32, i32* %hypre__block, align 4
  br label %cond.end.692

cond.end.692:                                     ; preds = %cond.false.691, %cond.true.690
  %cond693 = phi i32 [ %394, %cond.true.690 ], [ %395, %cond.false.691 ]
  %add694 = add nsw i32 %mul688, %cond693
  store i32 %add694, i32* %loopi, align 4
  %396 = load i32, i32* %hypre__div, align 4
  %397 = load i32, i32* %hypre__mod, align 4
  %398 = load i32, i32* %hypre__block, align 4
  %cmp695 = icmp sgt i32 %397, %398
  %cond696 = select i1 %cmp695, i32 1, i32 0
  %add697 = add nsw i32 %396, %cond696
  store i32 %add697, i32* %hypre__nx, align 4
  br label %if.end.725

if.else:                                          ; preds = %if.then.685
  %399 = load i32, i32* %hypre__dir, align 4
  %cmp698 = icmp eq i32 %399, 1
  br i1 %cmp698, label %if.then.699, label %if.else.710

if.then.699:                                      ; preds = %if.else
  %400 = load i32, i32* %hypre__block, align 4
  %401 = load i32, i32* %hypre__div, align 4
  %mul700 = mul nsw i32 %400, %401
  %402 = load i32, i32* %hypre__mod, align 4
  %403 = load i32, i32* %hypre__block, align 4
  %cmp701 = icmp slt i32 %402, %403
  br i1 %cmp701, label %cond.true.702, label %cond.false.703

cond.true.702:                                    ; preds = %if.then.699
  %404 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.704

cond.false.703:                                   ; preds = %if.then.699
  %405 = load i32, i32* %hypre__block, align 4
  br label %cond.end.704

cond.end.704:                                     ; preds = %cond.false.703, %cond.true.702
  %cond705 = phi i32 [ %404, %cond.true.702 ], [ %405, %cond.false.703 ]
  %add706 = add nsw i32 %mul700, %cond705
  store i32 %add706, i32* %loopj, align 4
  %406 = load i32, i32* %hypre__div, align 4
  %407 = load i32, i32* %hypre__mod, align 4
  %408 = load i32, i32* %hypre__block, align 4
  %cmp707 = icmp sgt i32 %407, %408
  %cond708 = select i1 %cmp707, i32 1, i32 0
  %add709 = add nsw i32 %406, %cond708
  store i32 %add709, i32* %hypre__ny, align 4
  br label %if.end.724

if.else.710:                                      ; preds = %if.else
  %409 = load i32, i32* %hypre__dir, align 4
  %cmp711 = icmp eq i32 %409, 2
  br i1 %cmp711, label %if.then.712, label %if.end.723

if.then.712:                                      ; preds = %if.else.710
  %410 = load i32, i32* %hypre__block, align 4
  %411 = load i32, i32* %hypre__div, align 4
  %mul713 = mul nsw i32 %410, %411
  %412 = load i32, i32* %hypre__mod, align 4
  %413 = load i32, i32* %hypre__block, align 4
  %cmp714 = icmp slt i32 %412, %413
  br i1 %cmp714, label %cond.true.715, label %cond.false.716

cond.true.715:                                    ; preds = %if.then.712
  %414 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.717

cond.false.716:                                   ; preds = %if.then.712
  %415 = load i32, i32* %hypre__block, align 4
  br label %cond.end.717

cond.end.717:                                     ; preds = %cond.false.716, %cond.true.715
  %cond718 = phi i32 [ %414, %cond.true.715 ], [ %415, %cond.false.716 ]
  %add719 = add nsw i32 %mul713, %cond718
  store i32 %add719, i32* %loopk, align 4
  %416 = load i32, i32* %hypre__div, align 4
  %417 = load i32, i32* %hypre__mod, align 4
  %418 = load i32, i32* %hypre__block, align 4
  %cmp720 = icmp sgt i32 %417, %418
  %cond721 = select i1 %cmp720, i32 1, i32 0
  %add722 = add nsw i32 %416, %cond721
  store i32 %add722, i32* %hypre__nz, align 4
  br label %if.end.723

if.end.723:                                       ; preds = %cond.end.717, %if.else.710
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %cond.end.704
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %cond.end.692
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %for.body.683
  %419 = load i32, i32* %hypre__i1start, align 4
  %420 = load i32, i32* %loopi, align 4
  %421 = load i32, i32* %hypre__sx1, align 4
  %mul727 = mul nsw i32 %420, %421
  %add728 = add nsw i32 %419, %mul727
  %422 = load i32, i32* %loopj, align 4
  %423 = load i32, i32* %hypre__sy1, align 4
  %mul729 = mul nsw i32 %422, %423
  %add730 = add nsw i32 %add728, %mul729
  %424 = load i32, i32* %loopk, align 4
  %425 = load i32, i32* %hypre__sz1, align 4
  %mul731 = mul nsw i32 %424, %425
  %add732 = add nsw i32 %add730, %mul731
  store i32 %add732, i32* %iP, align 4
  %426 = load i32, i32* %hypre__i2start, align 4
  %427 = load i32, i32* %loopi, align 4
  %428 = load i32, i32* %hypre__sx2, align 4
  %mul733 = mul nsw i32 %427, %428
  %add734 = add nsw i32 %426, %mul733
  %429 = load i32, i32* %loopj, align 4
  %430 = load i32, i32* %hypre__sy2, align 4
  %mul735 = mul nsw i32 %429, %430
  %add736 = add nsw i32 %add734, %mul735
  %431 = load i32, i32* %loopk, align 4
  %432 = load i32, i32* %hypre__sz2, align 4
  %mul737 = mul nsw i32 %431, %432
  %add738 = add nsw i32 %add736, %mul737
  store i32 %add738, i32* %iR, align 4
  %433 = load i32, i32* %hypre__i3start, align 4
  %434 = load i32, i32* %loopi, align 4
  %435 = load i32, i32* %hypre__sx3, align 4
  %mul739 = mul nsw i32 %434, %435
  %add740 = add nsw i32 %433, %mul739
  %436 = load i32, i32* %loopj, align 4
  %437 = load i32, i32* %hypre__sy3, align 4
  %mul741 = mul nsw i32 %436, %437
  %add742 = add nsw i32 %add740, %mul741
  %438 = load i32, i32* %loopk, align 4
  %439 = load i32, i32* %hypre__sz3, align 4
  %mul743 = mul nsw i32 %438, %439
  %add744 = add nsw i32 %add742, %mul743
  store i32 %add744, i32* %iA, align 4
  %440 = load i32, i32* %hypre__i4start, align 4
  %441 = load i32, i32* %loopi, align 4
  %442 = load i32, i32* %hypre__sx4, align 4
  %mul745 = mul nsw i32 %441, %442
  %add746 = add nsw i32 %440, %mul745
  %443 = load i32, i32* %loopj, align 4
  %444 = load i32, i32* %hypre__sy4, align 4
  %mul747 = mul nsw i32 %443, %444
  %add748 = add nsw i32 %add746, %mul747
  %445 = load i32, i32* %loopk, align 4
  %446 = load i32, i32* %hypre__sz4, align 4
  %mul749 = mul nsw i32 %445, %446
  %add750 = add nsw i32 %add748, %mul749
  store i32 %add750, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.751

for.cond.751:                                     ; preds = %for.inc.910, %if.end.726
  %447 = load i32, i32* %loopk, align 4
  %448 = load i32, i32* %hypre__nz, align 4
  %cmp752 = icmp slt i32 %447, %448
  br i1 %cmp752, label %for.body.753, label %for.end.912

for.body.753:                                     ; preds = %for.cond.751
  store i32 0, i32* %loopj, align 4
  br label %for.cond.754

for.cond.754:                                     ; preds = %for.inc.895, %for.body.753
  %449 = load i32, i32* %loopj, align 4
  %450 = load i32, i32* %hypre__ny, align 4
  %cmp755 = icmp slt i32 %449, %450
  br i1 %cmp755, label %for.body.756, label %for.end.897

for.body.756:                                     ; preds = %for.cond.754
  store i32 0, i32* %loopi, align 4
  br label %for.cond.757

for.cond.757:                                     ; preds = %for.inc, %for.body.756
  %451 = load i32, i32* %loopi, align 4
  %452 = load i32, i32* %hypre__nx, align 4
  %cmp758 = icmp slt i32 %451, %452
  br i1 %cmp758, label %for.body.759, label %for.end

for.body.759:                                     ; preds = %for.cond.757
  %453 = load i32, i32* %iA, align 4
  %454 = load i32, i32* %yOffsetA, align 4
  %sub760 = sub nsw i32 %453, %454
  store i32 %sub760, i32* %iAm1, align 4
  %455 = load i32, i32* %iA, align 4
  %456 = load i32, i32* %yOffsetA, align 4
  %add761 = add nsw i32 %455, %456
  store i32 %add761, i32* %iAp1, align 4
  %457 = load i32, i32* %iP, align 4
  %458 = load i32, i32* %yOffsetP, align 4
  %sub762 = sub nsw i32 %457, %458
  %459 = load i32, i32* %xOffsetP, align 4
  %sub763 = sub nsw i32 %sub762, %459
  store i32 %sub763, i32* %iP1, align 4
  %460 = load i32, i32* %iR, align 4
  %idxprom764 = sext i32 %460 to i64
  %461 = load double*, double** %rb, align 8
  %arrayidx765 = getelementptr inbounds double, double* %461, i64 %idxprom764
  %462 = load double, double* %arrayidx765, align 8
  %463 = load i32, i32* %iAm1, align 4
  %idxprom766 = sext i32 %463 to i64
  %464 = load double*, double** %a_cw, align 8
  %arrayidx767 = getelementptr inbounds double, double* %464, i64 %idxprom766
  %465 = load double, double* %arrayidx767, align 8
  %mul768 = fmul double %462, %465
  %466 = load i32, i32* %iP1, align 4
  %idxprom769 = sext i32 %466 to i64
  %467 = load double*, double** %pa, align 8
  %arrayidx770 = getelementptr inbounds double, double* %467, i64 %idxprom769
  %468 = load double, double* %arrayidx770, align 8
  %mul771 = fmul double %mul768, %468
  %469 = load i32, i32* %iAc, align 4
  %idxprom772 = sext i32 %469 to i64
  %470 = load double*, double** %rap_csw, align 8
  %arrayidx773 = getelementptr inbounds double, double* %470, i64 %idxprom772
  store double %mul771, double* %arrayidx773, align 8
  %471 = load i32, i32* %iP, align 4
  %472 = load i32, i32* %yOffsetP, align 4
  %sub774 = sub nsw i32 %471, %472
  store i32 %sub774, i32* %iP1, align 4
  %473 = load i32, i32* %iR, align 4
  %idxprom775 = sext i32 %473 to i64
  %474 = load double*, double** %rb, align 8
  %arrayidx776 = getelementptr inbounds double, double* %474, i64 %idxprom775
  %475 = load double, double* %arrayidx776, align 8
  %476 = load i32, i32* %iAm1, align 4
  %idxprom777 = sext i32 %476 to i64
  %477 = load double*, double** %a_cc, align 8
  %arrayidx778 = getelementptr inbounds double, double* %477, i64 %idxprom777
  %478 = load double, double* %arrayidx778, align 8
  %mul779 = fmul double %475, %478
  %479 = load i32, i32* %iP1, align 4
  %idxprom780 = sext i32 %479 to i64
  %480 = load double*, double** %pa, align 8
  %arrayidx781 = getelementptr inbounds double, double* %480, i64 %idxprom780
  %481 = load double, double* %arrayidx781, align 8
  %mul782 = fmul double %mul779, %481
  %482 = load i32, i32* %iR, align 4
  %idxprom783 = sext i32 %482 to i64
  %483 = load double*, double** %rb, align 8
  %arrayidx784 = getelementptr inbounds double, double* %483, i64 %idxprom783
  %484 = load double, double* %arrayidx784, align 8
  %485 = load i32, i32* %iAm1, align 4
  %idxprom785 = sext i32 %485 to i64
  %486 = load double*, double** %a_cs, align 8
  %arrayidx786 = getelementptr inbounds double, double* %486, i64 %idxprom785
  %487 = load double, double* %arrayidx786, align 8
  %mul787 = fmul double %484, %487
  %add788 = fadd double %mul782, %mul787
  %488 = load i32, i32* %iA, align 4
  %idxprom789 = sext i32 %488 to i64
  %489 = load double*, double** %a_cs, align 8
  %arrayidx790 = getelementptr inbounds double, double* %489, i64 %idxprom789
  %490 = load double, double* %arrayidx790, align 8
  %491 = load i32, i32* %iP1, align 4
  %idxprom791 = sext i32 %491 to i64
  %492 = load double*, double** %pa, align 8
  %arrayidx792 = getelementptr inbounds double, double* %492, i64 %idxprom791
  %493 = load double, double* %arrayidx792, align 8
  %mul793 = fmul double %490, %493
  %add794 = fadd double %add788, %mul793
  %494 = load i32, i32* %iAc, align 4
  %idxprom795 = sext i32 %494 to i64
  %495 = load double*, double** %rap_cs, align 8
  %arrayidx796 = getelementptr inbounds double, double* %495, i64 %idxprom795
  store double %add794, double* %arrayidx796, align 8
  %496 = load i32, i32* %iP, align 4
  %497 = load i32, i32* %yOffsetP, align 4
  %sub797 = sub nsw i32 %496, %497
  %498 = load i32, i32* %xOffsetP, align 4
  %add798 = add nsw i32 %sub797, %498
  store i32 %add798, i32* %iP1, align 4
  %499 = load i32, i32* %iR, align 4
  %idxprom799 = sext i32 %499 to i64
  %500 = load double*, double** %rb, align 8
  %arrayidx800 = getelementptr inbounds double, double* %500, i64 %idxprom799
  %501 = load double, double* %arrayidx800, align 8
  %502 = load i32, i32* %iAm1, align 4
  %idxprom801 = sext i32 %502 to i64
  %503 = load double*, double** %a_ce, align 8
  %arrayidx802 = getelementptr inbounds double, double* %503, i64 %idxprom801
  %504 = load double, double* %arrayidx802, align 8
  %mul803 = fmul double %501, %504
  %505 = load i32, i32* %iP1, align 4
  %idxprom804 = sext i32 %505 to i64
  %506 = load double*, double** %pa, align 8
  %arrayidx805 = getelementptr inbounds double, double* %506, i64 %idxprom804
  %507 = load double, double* %arrayidx805, align 8
  %mul806 = fmul double %mul803, %507
  %508 = load i32, i32* %iAc, align 4
  %idxprom807 = sext i32 %508 to i64
  %509 = load double*, double** %rap_cse, align 8
  %arrayidx808 = getelementptr inbounds double, double* %509, i64 %idxprom807
  store double %mul806, double* %arrayidx808, align 8
  %510 = load i32, i32* %iP, align 4
  %511 = load i32, i32* %xOffsetP, align 4
  %sub809 = sub nsw i32 %510, %511
  store i32 %sub809, i32* %iP1, align 4
  %512 = load i32, i32* %iA, align 4
  %idxprom810 = sext i32 %512 to i64
  %513 = load double*, double** %a_cw, align 8
  %arrayidx811 = getelementptr inbounds double, double* %513, i64 %idxprom810
  %514 = load double, double* %arrayidx811, align 8
  %515 = load i32, i32* %iR, align 4
  %idxprom812 = sext i32 %515 to i64
  %516 = load double*, double** %rb, align 8
  %arrayidx813 = getelementptr inbounds double, double* %516, i64 %idxprom812
  %517 = load double, double* %arrayidx813, align 8
  %518 = load i32, i32* %iAm1, align 4
  %idxprom814 = sext i32 %518 to i64
  %519 = load double*, double** %a_cw, align 8
  %arrayidx815 = getelementptr inbounds double, double* %519, i64 %idxprom814
  %520 = load double, double* %arrayidx815, align 8
  %mul816 = fmul double %517, %520
  %521 = load i32, i32* %iP1, align 4
  %idxprom817 = sext i32 %521 to i64
  %522 = load double*, double** %pb, align 8
  %arrayidx818 = getelementptr inbounds double, double* %522, i64 %idxprom817
  %523 = load double, double* %arrayidx818, align 8
  %mul819 = fmul double %mul816, %523
  %add820 = fadd double %514, %mul819
  %524 = load i32, i32* %iR, align 4
  %idxprom821 = sext i32 %524 to i64
  %525 = load double*, double** %ra, align 8
  %arrayidx822 = getelementptr inbounds double, double* %525, i64 %idxprom821
  %526 = load double, double* %arrayidx822, align 8
  %527 = load i32, i32* %iAp1, align 4
  %idxprom823 = sext i32 %527 to i64
  %528 = load double*, double** %a_cw, align 8
  %arrayidx824 = getelementptr inbounds double, double* %528, i64 %idxprom823
  %529 = load double, double* %arrayidx824, align 8
  %mul825 = fmul double %526, %529
  %530 = load i32, i32* %iP1, align 4
  %idxprom826 = sext i32 %530 to i64
  %531 = load double*, double** %pa, align 8
  %arrayidx827 = getelementptr inbounds double, double* %531, i64 %idxprom826
  %532 = load double, double* %arrayidx827, align 8
  %mul828 = fmul double %mul825, %532
  %add829 = fadd double %add820, %mul828
  %533 = load i32, i32* %iAc, align 4
  %idxprom830 = sext i32 %533 to i64
  %534 = load double*, double** %rap_cw, align 8
  %arrayidx831 = getelementptr inbounds double, double* %534, i64 %idxprom830
  store double %add829, double* %arrayidx831, align 8
  %535 = load i32, i32* %iA, align 4
  %idxprom832 = sext i32 %535 to i64
  %536 = load double*, double** %a_cc, align 8
  %arrayidx833 = getelementptr inbounds double, double* %536, i64 %idxprom832
  %537 = load double, double* %arrayidx833, align 8
  %538 = load i32, i32* %iR, align 4
  %idxprom834 = sext i32 %538 to i64
  %539 = load double*, double** %rb, align 8
  %arrayidx835 = getelementptr inbounds double, double* %539, i64 %idxprom834
  %540 = load double, double* %arrayidx835, align 8
  %541 = load i32, i32* %iAm1, align 4
  %idxprom836 = sext i32 %541 to i64
  %542 = load double*, double** %a_cc, align 8
  %arrayidx837 = getelementptr inbounds double, double* %542, i64 %idxprom836
  %543 = load double, double* %arrayidx837, align 8
  %mul838 = fmul double %540, %543
  %544 = load i32, i32* %iP, align 4
  %idxprom839 = sext i32 %544 to i64
  %545 = load double*, double** %pb, align 8
  %arrayidx840 = getelementptr inbounds double, double* %545, i64 %idxprom839
  %546 = load double, double* %arrayidx840, align 8
  %mul841 = fmul double %mul838, %546
  %add842 = fadd double %537, %mul841
  %547 = load i32, i32* %iR, align 4
  %idxprom843 = sext i32 %547 to i64
  %548 = load double*, double** %ra, align 8
  %arrayidx844 = getelementptr inbounds double, double* %548, i64 %idxprom843
  %549 = load double, double* %arrayidx844, align 8
  %550 = load i32, i32* %iAp1, align 4
  %idxprom845 = sext i32 %550 to i64
  %551 = load double*, double** %a_cc, align 8
  %arrayidx846 = getelementptr inbounds double, double* %551, i64 %idxprom845
  %552 = load double, double* %arrayidx846, align 8
  %mul847 = fmul double %549, %552
  %553 = load i32, i32* %iP, align 4
  %idxprom848 = sext i32 %553 to i64
  %554 = load double*, double** %pa, align 8
  %arrayidx849 = getelementptr inbounds double, double* %554, i64 %idxprom848
  %555 = load double, double* %arrayidx849, align 8
  %mul850 = fmul double %mul847, %555
  %add851 = fadd double %add842, %mul850
  %556 = load i32, i32* %iR, align 4
  %idxprom852 = sext i32 %556 to i64
  %557 = load double*, double** %rb, align 8
  %arrayidx853 = getelementptr inbounds double, double* %557, i64 %idxprom852
  %558 = load double, double* %arrayidx853, align 8
  %559 = load i32, i32* %iAm1, align 4
  %idxprom854 = sext i32 %559 to i64
  %560 = load double*, double** %a_cn, align 8
  %arrayidx855 = getelementptr inbounds double, double* %560, i64 %idxprom854
  %561 = load double, double* %arrayidx855, align 8
  %mul856 = fmul double %558, %561
  %add857 = fadd double %add851, %mul856
  %562 = load i32, i32* %iR, align 4
  %idxprom858 = sext i32 %562 to i64
  %563 = load double*, double** %ra, align 8
  %arrayidx859 = getelementptr inbounds double, double* %563, i64 %idxprom858
  %564 = load double, double* %arrayidx859, align 8
  %565 = load i32, i32* %iAp1, align 4
  %idxprom860 = sext i32 %565 to i64
  %566 = load double*, double** %a_cs, align 8
  %arrayidx861 = getelementptr inbounds double, double* %566, i64 %idxprom860
  %567 = load double, double* %arrayidx861, align 8
  %mul862 = fmul double %564, %567
  %add863 = fadd double %add857, %mul862
  %568 = load i32, i32* %iA, align 4
  %idxprom864 = sext i32 %568 to i64
  %569 = load double*, double** %a_cs, align 8
  %arrayidx865 = getelementptr inbounds double, double* %569, i64 %idxprom864
  %570 = load double, double* %arrayidx865, align 8
  %571 = load i32, i32* %iP, align 4
  %idxprom866 = sext i32 %571 to i64
  %572 = load double*, double** %pb, align 8
  %arrayidx867 = getelementptr inbounds double, double* %572, i64 %idxprom866
  %573 = load double, double* %arrayidx867, align 8
  %mul868 = fmul double %570, %573
  %add869 = fadd double %add863, %mul868
  %574 = load i32, i32* %iA, align 4
  %idxprom870 = sext i32 %574 to i64
  %575 = load double*, double** %a_cn, align 8
  %arrayidx871 = getelementptr inbounds double, double* %575, i64 %idxprom870
  %576 = load double, double* %arrayidx871, align 8
  %577 = load i32, i32* %iP, align 4
  %idxprom872 = sext i32 %577 to i64
  %578 = load double*, double** %pa, align 8
  %arrayidx873 = getelementptr inbounds double, double* %578, i64 %idxprom872
  %579 = load double, double* %arrayidx873, align 8
  %mul874 = fmul double %576, %579
  %add875 = fadd double %add869, %mul874
  %580 = load i32, i32* %iAc, align 4
  %idxprom876 = sext i32 %580 to i64
  %581 = load double*, double** %rap_cc, align 8
  %arrayidx877 = getelementptr inbounds double, double* %581, i64 %idxprom876
  store double %add875, double* %arrayidx877, align 8
  %582 = load i32, i32* %hypre__sx1, align 4
  %583 = load i32, i32* %iP, align 4
  %add878 = add nsw i32 %583, %582
  store i32 %add878, i32* %iP, align 4
  %584 = load i32, i32* %hypre__sx2, align 4
  %585 = load i32, i32* %iR, align 4
  %add879 = add nsw i32 %585, %584
  store i32 %add879, i32* %iR, align 4
  %586 = load i32, i32* %hypre__sx3, align 4
  %587 = load i32, i32* %iA, align 4
  %add880 = add nsw i32 %587, %586
  store i32 %add880, i32* %iA, align 4
  %588 = load i32, i32* %hypre__sx4, align 4
  %589 = load i32, i32* %iAc, align 4
  %add881 = add nsw i32 %589, %588
  store i32 %add881, i32* %iAc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.759
  %590 = load i32, i32* %loopi, align 4
  %inc882 = add nsw i32 %590, 1
  store i32 %inc882, i32* %loopi, align 4
  br label %for.cond.757

for.end:                                          ; preds = %for.cond.757
  %591 = load i32, i32* %hypre__sy1, align 4
  %592 = load i32, i32* %hypre__nx, align 4
  %593 = load i32, i32* %hypre__sx1, align 4
  %mul883 = mul nsw i32 %592, %593
  %sub884 = sub nsw i32 %591, %mul883
  %594 = load i32, i32* %iP, align 4
  %add885 = add nsw i32 %594, %sub884
  store i32 %add885, i32* %iP, align 4
  %595 = load i32, i32* %hypre__sy2, align 4
  %596 = load i32, i32* %hypre__nx, align 4
  %597 = load i32, i32* %hypre__sx2, align 4
  %mul886 = mul nsw i32 %596, %597
  %sub887 = sub nsw i32 %595, %mul886
  %598 = load i32, i32* %iR, align 4
  %add888 = add nsw i32 %598, %sub887
  store i32 %add888, i32* %iR, align 4
  %599 = load i32, i32* %hypre__sy3, align 4
  %600 = load i32, i32* %hypre__nx, align 4
  %601 = load i32, i32* %hypre__sx3, align 4
  %mul889 = mul nsw i32 %600, %601
  %sub890 = sub nsw i32 %599, %mul889
  %602 = load i32, i32* %iA, align 4
  %add891 = add nsw i32 %602, %sub890
  store i32 %add891, i32* %iA, align 4
  %603 = load i32, i32* %hypre__sy4, align 4
  %604 = load i32, i32* %hypre__nx, align 4
  %605 = load i32, i32* %hypre__sx4, align 4
  %mul892 = mul nsw i32 %604, %605
  %sub893 = sub nsw i32 %603, %mul892
  %606 = load i32, i32* %iAc, align 4
  %add894 = add nsw i32 %606, %sub893
  store i32 %add894, i32* %iAc, align 4
  br label %for.inc.895

for.inc.895:                                      ; preds = %for.end
  %607 = load i32, i32* %loopj, align 4
  %inc896 = add nsw i32 %607, 1
  store i32 %inc896, i32* %loopj, align 4
  br label %for.cond.754

for.end.897:                                      ; preds = %for.cond.754
  %608 = load i32, i32* %hypre__sz1, align 4
  %609 = load i32, i32* %hypre__ny, align 4
  %610 = load i32, i32* %hypre__sy1, align 4
  %mul898 = mul nsw i32 %609, %610
  %sub899 = sub nsw i32 %608, %mul898
  %611 = load i32, i32* %iP, align 4
  %add900 = add nsw i32 %611, %sub899
  store i32 %add900, i32* %iP, align 4
  %612 = load i32, i32* %hypre__sz2, align 4
  %613 = load i32, i32* %hypre__ny, align 4
  %614 = load i32, i32* %hypre__sy2, align 4
  %mul901 = mul nsw i32 %613, %614
  %sub902 = sub nsw i32 %612, %mul901
  %615 = load i32, i32* %iR, align 4
  %add903 = add nsw i32 %615, %sub902
  store i32 %add903, i32* %iR, align 4
  %616 = load i32, i32* %hypre__sz3, align 4
  %617 = load i32, i32* %hypre__ny, align 4
  %618 = load i32, i32* %hypre__sy3, align 4
  %mul904 = mul nsw i32 %617, %618
  %sub905 = sub nsw i32 %616, %mul904
  %619 = load i32, i32* %iA, align 4
  %add906 = add nsw i32 %619, %sub905
  store i32 %add906, i32* %iA, align 4
  %620 = load i32, i32* %hypre__sz4, align 4
  %621 = load i32, i32* %hypre__ny, align 4
  %622 = load i32, i32* %hypre__sy4, align 4
  %mul907 = mul nsw i32 %621, %622
  %sub908 = sub nsw i32 %620, %mul907
  %623 = load i32, i32* %iAc, align 4
  %add909 = add nsw i32 %623, %sub908
  store i32 %add909, i32* %iAc, align 4
  br label %for.inc.910

for.inc.910:                                      ; preds = %for.end.897
  %624 = load i32, i32* %loopk, align 4
  %inc911 = add nsw i32 %624, 1
  store i32 %inc911, i32* %loopk, align 4
  br label %for.cond.751

for.end.912:                                      ; preds = %for.cond.751
  br label %for.inc.913

for.inc.913:                                      ; preds = %for.end.912
  %625 = load i32, i32* %hypre__block, align 4
  %inc914 = add nsw i32 %625, 1
  store i32 %inc914, i32* %hypre__block, align 4
  br label %for.cond.681

for.end.915:                                      ; preds = %for.cond.681
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.232
  %626 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay916 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call917 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %626, i32* %arraydecay916)
  %627 = load i32*, i32** %cstart, align 8
  %arrayidx919 = getelementptr inbounds i32, i32* %627, i64 0
  %628 = load i32, i32* %arrayidx919, align 4
  %629 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin920 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %629, i32 0, i32 0
  %arrayidx921 = getelementptr inbounds [3 x i32], [3 x i32]* %imin920, i32 0, i64 0
  %630 = load i32, i32* %arrayidx921, align 4
  %sub922 = sub nsw i32 %628, %630
  %631 = load i32*, i32** %cstart, align 8
  %arrayidx923 = getelementptr inbounds i32, i32* %631, i64 1
  %632 = load i32, i32* %arrayidx923, align 4
  %633 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin924 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %633, i32 0, i32 0
  %arrayidx925 = getelementptr inbounds [3 x i32], [3 x i32]* %imin924, i32 0, i64 1
  %634 = load i32, i32* %arrayidx925, align 4
  %sub926 = sub nsw i32 %632, %634
  %635 = load i32*, i32** %cstart, align 8
  %arrayidx927 = getelementptr inbounds i32, i32* %635, i64 2
  %636 = load i32, i32* %arrayidx927, align 4
  %637 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin928 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %637, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [3 x i32], [3 x i32]* %imin928, i32 0, i64 2
  %638 = load i32, i32* %arrayidx929, align 4
  %sub930 = sub nsw i32 %636, %638
  %639 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax931 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %639, i32 0, i32 1
  %arrayidx932 = getelementptr inbounds [3 x i32], [3 x i32]* %imax931, i32 0, i64 1
  %640 = load i32, i32* %arrayidx932, align 4
  %641 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin933 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %641, i32 0, i32 0
  %arrayidx934 = getelementptr inbounds [3 x i32], [3 x i32]* %imin933, i32 0, i64 1
  %642 = load i32, i32* %arrayidx934, align 4
  %sub935 = sub nsw i32 %640, %642
  %add936 = add nsw i32 %sub935, 1
  %cmp937 = icmp slt i32 0, %add936
  br i1 %cmp937, label %cond.true.938, label %cond.false.945

cond.true.938:                                    ; preds = %sw.default
  %643 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax939 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %643, i32 0, i32 1
  %arrayidx940 = getelementptr inbounds [3 x i32], [3 x i32]* %imax939, i32 0, i64 1
  %644 = load i32, i32* %arrayidx940, align 4
  %645 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin941 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %645, i32 0, i32 0
  %arrayidx942 = getelementptr inbounds [3 x i32], [3 x i32]* %imin941, i32 0, i64 1
  %646 = load i32, i32* %arrayidx942, align 4
  %sub943 = sub nsw i32 %644, %646
  %add944 = add nsw i32 %sub943, 1
  br label %cond.end.946

cond.false.945:                                   ; preds = %sw.default
  br label %cond.end.946

cond.end.946:                                     ; preds = %cond.false.945, %cond.true.938
  %cond947 = phi i32 [ %add944, %cond.true.938 ], [ 0, %cond.false.945 ]
  %mul948 = mul nsw i32 %sub930, %cond947
  %add949 = add nsw i32 %sub926, %mul948
  %647 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax950 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %647, i32 0, i32 1
  %arrayidx951 = getelementptr inbounds [3 x i32], [3 x i32]* %imax950, i32 0, i64 0
  %648 = load i32, i32* %arrayidx951, align 4
  %649 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin952 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %649, i32 0, i32 0
  %arrayidx953 = getelementptr inbounds [3 x i32], [3 x i32]* %imin952, i32 0, i64 0
  %650 = load i32, i32* %arrayidx953, align 4
  %sub954 = sub nsw i32 %648, %650
  %add955 = add nsw i32 %sub954, 1
  %cmp956 = icmp slt i32 0, %add955
  br i1 %cmp956, label %cond.true.957, label %cond.false.964

cond.true.957:                                    ; preds = %cond.end.946
  %651 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax958 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %651, i32 0, i32 1
  %arrayidx959 = getelementptr inbounds [3 x i32], [3 x i32]* %imax958, i32 0, i64 0
  %652 = load i32, i32* %arrayidx959, align 4
  %653 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin960 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %653, i32 0, i32 0
  %arrayidx961 = getelementptr inbounds [3 x i32], [3 x i32]* %imin960, i32 0, i64 0
  %654 = load i32, i32* %arrayidx961, align 4
  %sub962 = sub nsw i32 %652, %654
  %add963 = add nsw i32 %sub962, 1
  br label %cond.end.965

cond.false.964:                                   ; preds = %cond.end.946
  br label %cond.end.965

cond.end.965:                                     ; preds = %cond.false.964, %cond.true.957
  %cond966 = phi i32 [ %add963, %cond.true.957 ], [ 0, %cond.false.964 ]
  %mul967 = mul nsw i32 %add949, %cond966
  %add968 = add nsw i32 %sub922, %mul967
  store i32 %add968, i32* %hypre__i1start918, align 4
  %655 = load i32*, i32** %cstart, align 8
  %arrayidx970 = getelementptr inbounds i32, i32* %655, i64 0
  %656 = load i32, i32* %arrayidx970, align 4
  %657 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin971 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %657, i32 0, i32 0
  %arrayidx972 = getelementptr inbounds [3 x i32], [3 x i32]* %imin971, i32 0, i64 0
  %658 = load i32, i32* %arrayidx972, align 4
  %sub973 = sub nsw i32 %656, %658
  %659 = load i32*, i32** %cstart, align 8
  %arrayidx974 = getelementptr inbounds i32, i32* %659, i64 1
  %660 = load i32, i32* %arrayidx974, align 4
  %661 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin975 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %661, i32 0, i32 0
  %arrayidx976 = getelementptr inbounds [3 x i32], [3 x i32]* %imin975, i32 0, i64 1
  %662 = load i32, i32* %arrayidx976, align 4
  %sub977 = sub nsw i32 %660, %662
  %663 = load i32*, i32** %cstart, align 8
  %arrayidx978 = getelementptr inbounds i32, i32* %663, i64 2
  %664 = load i32, i32* %arrayidx978, align 4
  %665 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin979 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %665, i32 0, i32 0
  %arrayidx980 = getelementptr inbounds [3 x i32], [3 x i32]* %imin979, i32 0, i64 2
  %666 = load i32, i32* %arrayidx980, align 4
  %sub981 = sub nsw i32 %664, %666
  %667 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax982 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %667, i32 0, i32 1
  %arrayidx983 = getelementptr inbounds [3 x i32], [3 x i32]* %imax982, i32 0, i64 1
  %668 = load i32, i32* %arrayidx983, align 4
  %669 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin984 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %669, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [3 x i32], [3 x i32]* %imin984, i32 0, i64 1
  %670 = load i32, i32* %arrayidx985, align 4
  %sub986 = sub nsw i32 %668, %670
  %add987 = add nsw i32 %sub986, 1
  %cmp988 = icmp slt i32 0, %add987
  br i1 %cmp988, label %cond.true.989, label %cond.false.996

cond.true.989:                                    ; preds = %cond.end.965
  %671 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax990 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %671, i32 0, i32 1
  %arrayidx991 = getelementptr inbounds [3 x i32], [3 x i32]* %imax990, i32 0, i64 1
  %672 = load i32, i32* %arrayidx991, align 4
  %673 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin992 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %673, i32 0, i32 0
  %arrayidx993 = getelementptr inbounds [3 x i32], [3 x i32]* %imin992, i32 0, i64 1
  %674 = load i32, i32* %arrayidx993, align 4
  %sub994 = sub nsw i32 %672, %674
  %add995 = add nsw i32 %sub994, 1
  br label %cond.end.997

cond.false.996:                                   ; preds = %cond.end.965
  br label %cond.end.997

cond.end.997:                                     ; preds = %cond.false.996, %cond.true.989
  %cond998 = phi i32 [ %add995, %cond.true.989 ], [ 0, %cond.false.996 ]
  %mul999 = mul nsw i32 %sub981, %cond998
  %add1000 = add nsw i32 %sub977, %mul999
  %675 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1001 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %675, i32 0, i32 1
  %arrayidx1002 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1001, i32 0, i64 0
  %676 = load i32, i32* %arrayidx1002, align 4
  %677 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1003 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %677, i32 0, i32 0
  %arrayidx1004 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1003, i32 0, i64 0
  %678 = load i32, i32* %arrayidx1004, align 4
  %sub1005 = sub nsw i32 %676, %678
  %add1006 = add nsw i32 %sub1005, 1
  %cmp1007 = icmp slt i32 0, %add1006
  br i1 %cmp1007, label %cond.true.1008, label %cond.false.1015

cond.true.1008:                                   ; preds = %cond.end.997
  %679 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1009 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %679, i32 0, i32 1
  %arrayidx1010 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1009, i32 0, i64 0
  %680 = load i32, i32* %arrayidx1010, align 4
  %681 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1011 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %681, i32 0, i32 0
  %arrayidx1012 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1011, i32 0, i64 0
  %682 = load i32, i32* %arrayidx1012, align 4
  %sub1013 = sub nsw i32 %680, %682
  %add1014 = add nsw i32 %sub1013, 1
  br label %cond.end.1016

cond.false.1015:                                  ; preds = %cond.end.997
  br label %cond.end.1016

cond.end.1016:                                    ; preds = %cond.false.1015, %cond.true.1008
  %cond1017 = phi i32 [ %add1014, %cond.true.1008 ], [ 0, %cond.false.1015 ]
  %mul1018 = mul nsw i32 %add1000, %cond1017
  %add1019 = add nsw i32 %sub973, %mul1018
  store i32 %add1019, i32* %hypre__i2start969, align 4
  %arrayidx1021 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %683 = load i32, i32* %arrayidx1021, align 4
  %684 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1022 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %684, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1022, i32 0, i64 0
  %685 = load i32, i32* %arrayidx1023, align 4
  %sub1024 = sub nsw i32 %683, %685
  %arrayidx1025 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %686 = load i32, i32* %arrayidx1025, align 4
  %687 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1026 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %687, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1026, i32 0, i64 1
  %688 = load i32, i32* %arrayidx1027, align 4
  %sub1028 = sub nsw i32 %686, %688
  %arrayidx1029 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %689 = load i32, i32* %arrayidx1029, align 4
  %690 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1030 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %690, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1030, i32 0, i64 2
  %691 = load i32, i32* %arrayidx1031, align 4
  %sub1032 = sub nsw i32 %689, %691
  %692 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1033 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %692, i32 0, i32 1
  %arrayidx1034 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1033, i32 0, i64 1
  %693 = load i32, i32* %arrayidx1034, align 4
  %694 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1035 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %694, i32 0, i32 0
  %arrayidx1036 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1035, i32 0, i64 1
  %695 = load i32, i32* %arrayidx1036, align 4
  %sub1037 = sub nsw i32 %693, %695
  %add1038 = add nsw i32 %sub1037, 1
  %cmp1039 = icmp slt i32 0, %add1038
  br i1 %cmp1039, label %cond.true.1040, label %cond.false.1047

cond.true.1040:                                   ; preds = %cond.end.1016
  %696 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1041 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %696, i32 0, i32 1
  %arrayidx1042 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1041, i32 0, i64 1
  %697 = load i32, i32* %arrayidx1042, align 4
  %698 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1043 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %698, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1043, i32 0, i64 1
  %699 = load i32, i32* %arrayidx1044, align 4
  %sub1045 = sub nsw i32 %697, %699
  %add1046 = add nsw i32 %sub1045, 1
  br label %cond.end.1048

cond.false.1047:                                  ; preds = %cond.end.1016
  br label %cond.end.1048

cond.end.1048:                                    ; preds = %cond.false.1047, %cond.true.1040
  %cond1049 = phi i32 [ %add1046, %cond.true.1040 ], [ 0, %cond.false.1047 ]
  %mul1050 = mul nsw i32 %sub1032, %cond1049
  %add1051 = add nsw i32 %sub1028, %mul1050
  %700 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1052 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %700, i32 0, i32 1
  %arrayidx1053 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1052, i32 0, i64 0
  %701 = load i32, i32* %arrayidx1053, align 4
  %702 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1054 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %702, i32 0, i32 0
  %arrayidx1055 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1054, i32 0, i64 0
  %703 = load i32, i32* %arrayidx1055, align 4
  %sub1056 = sub nsw i32 %701, %703
  %add1057 = add nsw i32 %sub1056, 1
  %cmp1058 = icmp slt i32 0, %add1057
  br i1 %cmp1058, label %cond.true.1059, label %cond.false.1066

cond.true.1059:                                   ; preds = %cond.end.1048
  %704 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1060 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %704, i32 0, i32 1
  %arrayidx1061 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1060, i32 0, i64 0
  %705 = load i32, i32* %arrayidx1061, align 4
  %706 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1062 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %706, i32 0, i32 0
  %arrayidx1063 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1062, i32 0, i64 0
  %707 = load i32, i32* %arrayidx1063, align 4
  %sub1064 = sub nsw i32 %705, %707
  %add1065 = add nsw i32 %sub1064, 1
  br label %cond.end.1067

cond.false.1066:                                  ; preds = %cond.end.1048
  br label %cond.end.1067

cond.end.1067:                                    ; preds = %cond.false.1066, %cond.true.1059
  %cond1068 = phi i32 [ %add1065, %cond.true.1059 ], [ 0, %cond.false.1066 ]
  %mul1069 = mul nsw i32 %add1051, %cond1068
  %add1070 = add nsw i32 %sub1024, %mul1069
  store i32 %add1070, i32* %hypre__i3start1020, align 4
  %708 = load i32*, i32** %cstart, align 8
  %arrayidx1072 = getelementptr inbounds i32, i32* %708, i64 0
  %709 = load i32, i32* %arrayidx1072, align 4
  %710 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1073 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %710, i32 0, i32 0
  %arrayidx1074 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1073, i32 0, i64 0
  %711 = load i32, i32* %arrayidx1074, align 4
  %sub1075 = sub nsw i32 %709, %711
  %712 = load i32*, i32** %cstart, align 8
  %arrayidx1076 = getelementptr inbounds i32, i32* %712, i64 1
  %713 = load i32, i32* %arrayidx1076, align 4
  %714 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1077 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %714, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1077, i32 0, i64 1
  %715 = load i32, i32* %arrayidx1078, align 4
  %sub1079 = sub nsw i32 %713, %715
  %716 = load i32*, i32** %cstart, align 8
  %arrayidx1080 = getelementptr inbounds i32, i32* %716, i64 2
  %717 = load i32, i32* %arrayidx1080, align 4
  %718 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1081 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %718, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1081, i32 0, i64 2
  %719 = load i32, i32* %arrayidx1082, align 4
  %sub1083 = sub nsw i32 %717, %719
  %720 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1084 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %720, i32 0, i32 1
  %arrayidx1085 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1084, i32 0, i64 1
  %721 = load i32, i32* %arrayidx1085, align 4
  %722 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1086 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %722, i32 0, i32 0
  %arrayidx1087 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1086, i32 0, i64 1
  %723 = load i32, i32* %arrayidx1087, align 4
  %sub1088 = sub nsw i32 %721, %723
  %add1089 = add nsw i32 %sub1088, 1
  %cmp1090 = icmp slt i32 0, %add1089
  br i1 %cmp1090, label %cond.true.1091, label %cond.false.1098

cond.true.1091:                                   ; preds = %cond.end.1067
  %724 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1092 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %724, i32 0, i32 1
  %arrayidx1093 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1092, i32 0, i64 1
  %725 = load i32, i32* %arrayidx1093, align 4
  %726 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1094 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %726, i32 0, i32 0
  %arrayidx1095 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1094, i32 0, i64 1
  %727 = load i32, i32* %arrayidx1095, align 4
  %sub1096 = sub nsw i32 %725, %727
  %add1097 = add nsw i32 %sub1096, 1
  br label %cond.end.1099

cond.false.1098:                                  ; preds = %cond.end.1067
  br label %cond.end.1099

cond.end.1099:                                    ; preds = %cond.false.1098, %cond.true.1091
  %cond1100 = phi i32 [ %add1097, %cond.true.1091 ], [ 0, %cond.false.1098 ]
  %mul1101 = mul nsw i32 %sub1083, %cond1100
  %add1102 = add nsw i32 %sub1079, %mul1101
  %728 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %728, i32 0, i32 1
  %arrayidx1104 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1103, i32 0, i64 0
  %729 = load i32, i32* %arrayidx1104, align 4
  %730 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %730, i32 0, i32 0
  %arrayidx1106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1105, i32 0, i64 0
  %731 = load i32, i32* %arrayidx1106, align 4
  %sub1107 = sub nsw i32 %729, %731
  %add1108 = add nsw i32 %sub1107, 1
  %cmp1109 = icmp slt i32 0, %add1108
  br i1 %cmp1109, label %cond.true.1110, label %cond.false.1117

cond.true.1110:                                   ; preds = %cond.end.1099
  %732 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %732, i32 0, i32 1
  %arrayidx1112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1111, i32 0, i64 0
  %733 = load i32, i32* %arrayidx1112, align 4
  %734 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %734, i32 0, i32 0
  %arrayidx1114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1113, i32 0, i64 0
  %735 = load i32, i32* %arrayidx1114, align 4
  %sub1115 = sub nsw i32 %733, %735
  %add1116 = add nsw i32 %sub1115, 1
  br label %cond.end.1118

cond.false.1117:                                  ; preds = %cond.end.1099
  br label %cond.end.1118

cond.end.1118:                                    ; preds = %cond.false.1117, %cond.true.1110
  %cond1119 = phi i32 [ %add1116, %cond.true.1110 ], [ 0, %cond.false.1117 ]
  %mul1120 = mul nsw i32 %add1102, %cond1119
  %add1121 = add nsw i32 %sub1075, %mul1120
  store i32 %add1121, i32* %hypre__i4start1071, align 4
  %arrayidx1123 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %736 = load i32, i32* %arrayidx1123, align 4
  store i32 %736, i32* %hypre__sx11122, align 4
  %arrayidx1125 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %737 = load i32, i32* %arrayidx1125, align 4
  %738 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %738, i32 0, i32 1
  %arrayidx1127 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1126, i32 0, i64 0
  %739 = load i32, i32* %arrayidx1127, align 4
  %740 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %740, i32 0, i32 0
  %arrayidx1129 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1128, i32 0, i64 0
  %741 = load i32, i32* %arrayidx1129, align 4
  %sub1130 = sub nsw i32 %739, %741
  %add1131 = add nsw i32 %sub1130, 1
  %cmp1132 = icmp slt i32 0, %add1131
  br i1 %cmp1132, label %cond.true.1133, label %cond.false.1140

cond.true.1133:                                   ; preds = %cond.end.1118
  %742 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %742, i32 0, i32 1
  %arrayidx1135 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1134, i32 0, i64 0
  %743 = load i32, i32* %arrayidx1135, align 4
  %744 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %744, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1136, i32 0, i64 0
  %745 = load i32, i32* %arrayidx1137, align 4
  %sub1138 = sub nsw i32 %743, %745
  %add1139 = add nsw i32 %sub1138, 1
  br label %cond.end.1141

cond.false.1140:                                  ; preds = %cond.end.1118
  br label %cond.end.1141

cond.end.1141:                                    ; preds = %cond.false.1140, %cond.true.1133
  %cond1142 = phi i32 [ %add1139, %cond.true.1133 ], [ 0, %cond.false.1140 ]
  %mul1143 = mul nsw i32 %737, %cond1142
  store i32 %mul1143, i32* %hypre__sy11124, align 4
  %arrayidx1145 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %746 = load i32, i32* %arrayidx1145, align 4
  %747 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %747, i32 0, i32 1
  %arrayidx1147 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1146, i32 0, i64 0
  %748 = load i32, i32* %arrayidx1147, align 4
  %749 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %749, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1148, i32 0, i64 0
  %750 = load i32, i32* %arrayidx1149, align 4
  %sub1150 = sub nsw i32 %748, %750
  %add1151 = add nsw i32 %sub1150, 1
  %cmp1152 = icmp slt i32 0, %add1151
  br i1 %cmp1152, label %cond.true.1153, label %cond.false.1160

cond.true.1153:                                   ; preds = %cond.end.1141
  %751 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %751, i32 0, i32 1
  %arrayidx1155 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1154, i32 0, i64 0
  %752 = load i32, i32* %arrayidx1155, align 4
  %753 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %753, i32 0, i32 0
  %arrayidx1157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1156, i32 0, i64 0
  %754 = load i32, i32* %arrayidx1157, align 4
  %sub1158 = sub nsw i32 %752, %754
  %add1159 = add nsw i32 %sub1158, 1
  br label %cond.end.1161

cond.false.1160:                                  ; preds = %cond.end.1141
  br label %cond.end.1161

cond.end.1161:                                    ; preds = %cond.false.1160, %cond.true.1153
  %cond1162 = phi i32 [ %add1159, %cond.true.1153 ], [ 0, %cond.false.1160 ]
  %mul1163 = mul nsw i32 %746, %cond1162
  %755 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %755, i32 0, i32 1
  %arrayidx1165 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1164, i32 0, i64 1
  %756 = load i32, i32* %arrayidx1165, align 4
  %757 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1166 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %757, i32 0, i32 0
  %arrayidx1167 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1166, i32 0, i64 1
  %758 = load i32, i32* %arrayidx1167, align 4
  %sub1168 = sub nsw i32 %756, %758
  %add1169 = add nsw i32 %sub1168, 1
  %cmp1170 = icmp slt i32 0, %add1169
  br i1 %cmp1170, label %cond.true.1171, label %cond.false.1178

cond.true.1171:                                   ; preds = %cond.end.1161
  %759 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %759, i32 0, i32 1
  %arrayidx1173 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1172, i32 0, i64 1
  %760 = load i32, i32* %arrayidx1173, align 4
  %761 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %761, i32 0, i32 0
  %arrayidx1175 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1174, i32 0, i64 1
  %762 = load i32, i32* %arrayidx1175, align 4
  %sub1176 = sub nsw i32 %760, %762
  %add1177 = add nsw i32 %sub1176, 1
  br label %cond.end.1179

cond.false.1178:                                  ; preds = %cond.end.1161
  br label %cond.end.1179

cond.end.1179:                                    ; preds = %cond.false.1178, %cond.true.1171
  %cond1180 = phi i32 [ %add1177, %cond.true.1171 ], [ 0, %cond.false.1178 ]
  %mul1181 = mul nsw i32 %mul1163, %cond1180
  store i32 %mul1181, i32* %hypre__sz11144, align 4
  %arrayidx1183 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %763 = load i32, i32* %arrayidx1183, align 4
  store i32 %763, i32* %hypre__sx21182, align 4
  %arrayidx1185 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %764 = load i32, i32* %arrayidx1185, align 4
  %765 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %765, i32 0, i32 1
  %arrayidx1187 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1186, i32 0, i64 0
  %766 = load i32, i32* %arrayidx1187, align 4
  %767 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %767, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1188, i32 0, i64 0
  %768 = load i32, i32* %arrayidx1189, align 4
  %sub1190 = sub nsw i32 %766, %768
  %add1191 = add nsw i32 %sub1190, 1
  %cmp1192 = icmp slt i32 0, %add1191
  br i1 %cmp1192, label %cond.true.1193, label %cond.false.1200

cond.true.1193:                                   ; preds = %cond.end.1179
  %769 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %769, i32 0, i32 1
  %arrayidx1195 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1194, i32 0, i64 0
  %770 = load i32, i32* %arrayidx1195, align 4
  %771 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1196 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %771, i32 0, i32 0
  %arrayidx1197 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1196, i32 0, i64 0
  %772 = load i32, i32* %arrayidx1197, align 4
  %sub1198 = sub nsw i32 %770, %772
  %add1199 = add nsw i32 %sub1198, 1
  br label %cond.end.1201

cond.false.1200:                                  ; preds = %cond.end.1179
  br label %cond.end.1201

cond.end.1201:                                    ; preds = %cond.false.1200, %cond.true.1193
  %cond1202 = phi i32 [ %add1199, %cond.true.1193 ], [ 0, %cond.false.1200 ]
  %mul1203 = mul nsw i32 %764, %cond1202
  store i32 %mul1203, i32* %hypre__sy21184, align 4
  %arrayidx1205 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %773 = load i32, i32* %arrayidx1205, align 4
  %774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1206 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %774, i32 0, i32 1
  %arrayidx1207 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1206, i32 0, i64 0
  %775 = load i32, i32* %arrayidx1207, align 4
  %776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1208 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %776, i32 0, i32 0
  %arrayidx1209 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1208, i32 0, i64 0
  %777 = load i32, i32* %arrayidx1209, align 4
  %sub1210 = sub nsw i32 %775, %777
  %add1211 = add nsw i32 %sub1210, 1
  %cmp1212 = icmp slt i32 0, %add1211
  br i1 %cmp1212, label %cond.true.1213, label %cond.false.1220

cond.true.1213:                                   ; preds = %cond.end.1201
  %778 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %778, i32 0, i32 1
  %arrayidx1215 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1214, i32 0, i64 0
  %779 = load i32, i32* %arrayidx1215, align 4
  %780 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %780, i32 0, i32 0
  %arrayidx1217 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1216, i32 0, i64 0
  %781 = load i32, i32* %arrayidx1217, align 4
  %sub1218 = sub nsw i32 %779, %781
  %add1219 = add nsw i32 %sub1218, 1
  br label %cond.end.1221

cond.false.1220:                                  ; preds = %cond.end.1201
  br label %cond.end.1221

cond.end.1221:                                    ; preds = %cond.false.1220, %cond.true.1213
  %cond1222 = phi i32 [ %add1219, %cond.true.1213 ], [ 0, %cond.false.1220 ]
  %mul1223 = mul nsw i32 %773, %cond1222
  %782 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1224 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %782, i32 0, i32 1
  %arrayidx1225 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1224, i32 0, i64 1
  %783 = load i32, i32* %arrayidx1225, align 4
  %784 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1226 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %784, i32 0, i32 0
  %arrayidx1227 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1226, i32 0, i64 1
  %785 = load i32, i32* %arrayidx1227, align 4
  %sub1228 = sub nsw i32 %783, %785
  %add1229 = add nsw i32 %sub1228, 1
  %cmp1230 = icmp slt i32 0, %add1229
  br i1 %cmp1230, label %cond.true.1231, label %cond.false.1238

cond.true.1231:                                   ; preds = %cond.end.1221
  %786 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %786, i32 0, i32 1
  %arrayidx1233 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1232, i32 0, i64 1
  %787 = load i32, i32* %arrayidx1233, align 4
  %788 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %788, i32 0, i32 0
  %arrayidx1235 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1234, i32 0, i64 1
  %789 = load i32, i32* %arrayidx1235, align 4
  %sub1236 = sub nsw i32 %787, %789
  %add1237 = add nsw i32 %sub1236, 1
  br label %cond.end.1239

cond.false.1238:                                  ; preds = %cond.end.1221
  br label %cond.end.1239

cond.end.1239:                                    ; preds = %cond.false.1238, %cond.true.1231
  %cond1240 = phi i32 [ %add1237, %cond.true.1231 ], [ 0, %cond.false.1238 ]
  %mul1241 = mul nsw i32 %mul1223, %cond1240
  store i32 %mul1241, i32* %hypre__sz21204, align 4
  %790 = load i32*, i32** %stridef, align 8
  %arrayidx1243 = getelementptr inbounds i32, i32* %790, i64 0
  %791 = load i32, i32* %arrayidx1243, align 4
  store i32 %791, i32* %hypre__sx31242, align 4
  %792 = load i32*, i32** %stridef, align 8
  %arrayidx1245 = getelementptr inbounds i32, i32* %792, i64 1
  %793 = load i32, i32* %arrayidx1245, align 4
  %794 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %794, i32 0, i32 1
  %arrayidx1247 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1246, i32 0, i64 0
  %795 = load i32, i32* %arrayidx1247, align 4
  %796 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %796, i32 0, i32 0
  %arrayidx1249 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1248, i32 0, i64 0
  %797 = load i32, i32* %arrayidx1249, align 4
  %sub1250 = sub nsw i32 %795, %797
  %add1251 = add nsw i32 %sub1250, 1
  %cmp1252 = icmp slt i32 0, %add1251
  br i1 %cmp1252, label %cond.true.1253, label %cond.false.1260

cond.true.1253:                                   ; preds = %cond.end.1239
  %798 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1254 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %798, i32 0, i32 1
  %arrayidx1255 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1254, i32 0, i64 0
  %799 = load i32, i32* %arrayidx1255, align 4
  %800 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1256 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %800, i32 0, i32 0
  %arrayidx1257 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1256, i32 0, i64 0
  %801 = load i32, i32* %arrayidx1257, align 4
  %sub1258 = sub nsw i32 %799, %801
  %add1259 = add nsw i32 %sub1258, 1
  br label %cond.end.1261

cond.false.1260:                                  ; preds = %cond.end.1239
  br label %cond.end.1261

cond.end.1261:                                    ; preds = %cond.false.1260, %cond.true.1253
  %cond1262 = phi i32 [ %add1259, %cond.true.1253 ], [ 0, %cond.false.1260 ]
  %mul1263 = mul nsw i32 %793, %cond1262
  store i32 %mul1263, i32* %hypre__sy31244, align 4
  %802 = load i32*, i32** %stridef, align 8
  %arrayidx1265 = getelementptr inbounds i32, i32* %802, i64 2
  %803 = load i32, i32* %arrayidx1265, align 4
  %804 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1266 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %804, i32 0, i32 1
  %arrayidx1267 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1266, i32 0, i64 0
  %805 = load i32, i32* %arrayidx1267, align 4
  %806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %806, i32 0, i32 0
  %arrayidx1269 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1268, i32 0, i64 0
  %807 = load i32, i32* %arrayidx1269, align 4
  %sub1270 = sub nsw i32 %805, %807
  %add1271 = add nsw i32 %sub1270, 1
  %cmp1272 = icmp slt i32 0, %add1271
  br i1 %cmp1272, label %cond.true.1273, label %cond.false.1280

cond.true.1273:                                   ; preds = %cond.end.1261
  %808 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1274 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %808, i32 0, i32 1
  %arrayidx1275 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1274, i32 0, i64 0
  %809 = load i32, i32* %arrayidx1275, align 4
  %810 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1276 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %810, i32 0, i32 0
  %arrayidx1277 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1276, i32 0, i64 0
  %811 = load i32, i32* %arrayidx1277, align 4
  %sub1278 = sub nsw i32 %809, %811
  %add1279 = add nsw i32 %sub1278, 1
  br label %cond.end.1281

cond.false.1280:                                  ; preds = %cond.end.1261
  br label %cond.end.1281

cond.end.1281:                                    ; preds = %cond.false.1280, %cond.true.1273
  %cond1282 = phi i32 [ %add1279, %cond.true.1273 ], [ 0, %cond.false.1280 ]
  %mul1283 = mul nsw i32 %803, %cond1282
  %812 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1284 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %812, i32 0, i32 1
  %arrayidx1285 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1284, i32 0, i64 1
  %813 = load i32, i32* %arrayidx1285, align 4
  %814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1286 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %814, i32 0, i32 0
  %arrayidx1287 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1286, i32 0, i64 1
  %815 = load i32, i32* %arrayidx1287, align 4
  %sub1288 = sub nsw i32 %813, %815
  %add1289 = add nsw i32 %sub1288, 1
  %cmp1290 = icmp slt i32 0, %add1289
  br i1 %cmp1290, label %cond.true.1291, label %cond.false.1298

cond.true.1291:                                   ; preds = %cond.end.1281
  %816 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1292 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %816, i32 0, i32 1
  %arrayidx1293 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1292, i32 0, i64 1
  %817 = load i32, i32* %arrayidx1293, align 4
  %818 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1294 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %818, i32 0, i32 0
  %arrayidx1295 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1294, i32 0, i64 1
  %819 = load i32, i32* %arrayidx1295, align 4
  %sub1296 = sub nsw i32 %817, %819
  %add1297 = add nsw i32 %sub1296, 1
  br label %cond.end.1299

cond.false.1298:                                  ; preds = %cond.end.1281
  br label %cond.end.1299

cond.end.1299:                                    ; preds = %cond.false.1298, %cond.true.1291
  %cond1300 = phi i32 [ %add1297, %cond.true.1291 ], [ 0, %cond.false.1298 ]
  %mul1301 = mul nsw i32 %mul1283, %cond1300
  store i32 %mul1301, i32* %hypre__sz31264, align 4
  %arrayidx1303 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %820 = load i32, i32* %arrayidx1303, align 4
  store i32 %820, i32* %hypre__sx41302, align 4
  %arrayidx1305 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %821 = load i32, i32* %arrayidx1305, align 4
  %822 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1306 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %822, i32 0, i32 1
  %arrayidx1307 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1306, i32 0, i64 0
  %823 = load i32, i32* %arrayidx1307, align 4
  %824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %824, i32 0, i32 0
  %arrayidx1309 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1308, i32 0, i64 0
  %825 = load i32, i32* %arrayidx1309, align 4
  %sub1310 = sub nsw i32 %823, %825
  %add1311 = add nsw i32 %sub1310, 1
  %cmp1312 = icmp slt i32 0, %add1311
  br i1 %cmp1312, label %cond.true.1313, label %cond.false.1320

cond.true.1313:                                   ; preds = %cond.end.1299
  %826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1314 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %826, i32 0, i32 1
  %arrayidx1315 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1314, i32 0, i64 0
  %827 = load i32, i32* %arrayidx1315, align 4
  %828 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1316 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %828, i32 0, i32 0
  %arrayidx1317 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1316, i32 0, i64 0
  %829 = load i32, i32* %arrayidx1317, align 4
  %sub1318 = sub nsw i32 %827, %829
  %add1319 = add nsw i32 %sub1318, 1
  br label %cond.end.1321

cond.false.1320:                                  ; preds = %cond.end.1299
  br label %cond.end.1321

cond.end.1321:                                    ; preds = %cond.false.1320, %cond.true.1313
  %cond1322 = phi i32 [ %add1319, %cond.true.1313 ], [ 0, %cond.false.1320 ]
  %mul1323 = mul nsw i32 %821, %cond1322
  store i32 %mul1323, i32* %hypre__sy41304, align 4
  %arrayidx1325 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %830 = load i32, i32* %arrayidx1325, align 4
  %831 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %831, i32 0, i32 1
  %arrayidx1327 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1326, i32 0, i64 0
  %832 = load i32, i32* %arrayidx1327, align 4
  %833 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %833, i32 0, i32 0
  %arrayidx1329 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1328, i32 0, i64 0
  %834 = load i32, i32* %arrayidx1329, align 4
  %sub1330 = sub nsw i32 %832, %834
  %add1331 = add nsw i32 %sub1330, 1
  %cmp1332 = icmp slt i32 0, %add1331
  br i1 %cmp1332, label %cond.true.1333, label %cond.false.1340

cond.true.1333:                                   ; preds = %cond.end.1321
  %835 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1334 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %835, i32 0, i32 1
  %arrayidx1335 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1334, i32 0, i64 0
  %836 = load i32, i32* %arrayidx1335, align 4
  %837 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1336 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %837, i32 0, i32 0
  %arrayidx1337 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1336, i32 0, i64 0
  %838 = load i32, i32* %arrayidx1337, align 4
  %sub1338 = sub nsw i32 %836, %838
  %add1339 = add nsw i32 %sub1338, 1
  br label %cond.end.1341

cond.false.1340:                                  ; preds = %cond.end.1321
  br label %cond.end.1341

cond.end.1341:                                    ; preds = %cond.false.1340, %cond.true.1333
  %cond1342 = phi i32 [ %add1339, %cond.true.1333 ], [ 0, %cond.false.1340 ]
  %mul1343 = mul nsw i32 %830, %cond1342
  %839 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %839, i32 0, i32 1
  %arrayidx1345 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1344, i32 0, i64 1
  %840 = load i32, i32* %arrayidx1345, align 4
  %841 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %841, i32 0, i32 0
  %arrayidx1347 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1346, i32 0, i64 1
  %842 = load i32, i32* %arrayidx1347, align 4
  %sub1348 = sub nsw i32 %840, %842
  %add1349 = add nsw i32 %sub1348, 1
  %cmp1350 = icmp slt i32 0, %add1349
  br i1 %cmp1350, label %cond.true.1351, label %cond.false.1358

cond.true.1351:                                   ; preds = %cond.end.1341
  %843 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %843, i32 0, i32 1
  %arrayidx1353 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1352, i32 0, i64 1
  %844 = load i32, i32* %arrayidx1353, align 4
  %845 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1354 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %845, i32 0, i32 0
  %arrayidx1355 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1354, i32 0, i64 1
  %846 = load i32, i32* %arrayidx1355, align 4
  %sub1356 = sub nsw i32 %844, %846
  %add1357 = add nsw i32 %sub1356, 1
  br label %cond.end.1359

cond.false.1358:                                  ; preds = %cond.end.1341
  br label %cond.end.1359

cond.end.1359:                                    ; preds = %cond.false.1358, %cond.true.1351
  %cond1360 = phi i32 [ %add1357, %cond.true.1351 ], [ 0, %cond.false.1358 ]
  %mul1361 = mul nsw i32 %mul1343, %cond1360
  store i32 %mul1361, i32* %hypre__sz41324, align 4
  %arrayidx1363 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %847 = load i32, i32* %arrayidx1363, align 4
  store i32 %847, i32* %hypre__nx1362, align 4
  %arrayidx1365 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %848 = load i32, i32* %arrayidx1365, align 4
  store i32 %848, i32* %hypre__ny1364, align 4
  %arrayidx1367 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %849 = load i32, i32* %arrayidx1367, align 4
  store i32 %849, i32* %hypre__nz1366, align 4
  %850 = load i32, i32* %hypre__nx1362, align 4
  store i32 %850, i32* %hypre__mx1368, align 4
  %851 = load i32, i32* %hypre__ny1364, align 4
  store i32 %851, i32* %hypre__my1369, align 4
  %852 = load i32, i32* %hypre__nz1366, align 4
  store i32 %852, i32* %hypre__mz1370, align 4
  store i32 0, i32* %hypre__dir1371, align 4
  %853 = load i32, i32* %hypre__nx1362, align 4
  store i32 %853, i32* %hypre__max1372, align 4
  %854 = load i32, i32* %hypre__ny1364, align 4
  %855 = load i32, i32* %hypre__max1372, align 4
  %cmp1377 = icmp sgt i32 %854, %855
  br i1 %cmp1377, label %if.then.1378, label %if.end.1379

if.then.1378:                                     ; preds = %cond.end.1359
  store i32 1, i32* %hypre__dir1371, align 4
  %856 = load i32, i32* %hypre__ny1364, align 4
  store i32 %856, i32* %hypre__max1372, align 4
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.then.1378, %cond.end.1359
  %857 = load i32, i32* %hypre__nz1366, align 4
  %858 = load i32, i32* %hypre__max1372, align 4
  %cmp1380 = icmp sgt i32 %857, %858
  br i1 %cmp1380, label %if.then.1381, label %if.end.1382

if.then.1381:                                     ; preds = %if.end.1379
  store i32 2, i32* %hypre__dir1371, align 4
  %859 = load i32, i32* %hypre__nz1366, align 4
  store i32 %859, i32* %hypre__max1372, align 4
  br label %if.end.1382

if.end.1382:                                      ; preds = %if.then.1381, %if.end.1379
  store i32 1, i32* %hypre__num_blocks1376, align 4
  %860 = load i32, i32* %hypre__max1372, align 4
  %861 = load i32, i32* %hypre__num_blocks1376, align 4
  %cmp1383 = icmp slt i32 %860, %861
  br i1 %cmp1383, label %if.then.1384, label %if.end.1385

if.then.1384:                                     ; preds = %if.end.1382
  %862 = load i32, i32* %hypre__max1372, align 4
  store i32 %862, i32* %hypre__num_blocks1376, align 4
  br label %if.end.1385

if.end.1385:                                      ; preds = %if.then.1384, %if.end.1382
  %863 = load i32, i32* %hypre__num_blocks1376, align 4
  %cmp1386 = icmp sgt i32 %863, 0
  br i1 %cmp1386, label %if.then.1387, label %if.end.1390

if.then.1387:                                     ; preds = %if.end.1385
  %864 = load i32, i32* %hypre__max1372, align 4
  %865 = load i32, i32* %hypre__num_blocks1376, align 4
  %div1388 = sdiv i32 %864, %865
  store i32 %div1388, i32* %hypre__div1373, align 4
  %866 = load i32, i32* %hypre__max1372, align 4
  %867 = load i32, i32* %hypre__num_blocks1376, align 4
  %rem1389 = srem i32 %866, %867
  store i32 %rem1389, i32* %hypre__mod1374, align 4
  br label %if.end.1390

if.end.1390:                                      ; preds = %if.then.1387, %if.end.1385
  store i32 0, i32* %hypre__block1375, align 4
  br label %for.cond.1391

for.cond.1391:                                    ; preds = %for.inc.1674, %if.end.1390
  %868 = load i32, i32* %hypre__block1375, align 4
  %869 = load i32, i32* %hypre__num_blocks1376, align 4
  %cmp1392 = icmp slt i32 %868, %869
  br i1 %cmp1392, label %for.body.1393, label %for.end.1676

for.body.1393:                                    ; preds = %for.cond.1391
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %870 = load i32, i32* %hypre__mx1368, align 4
  store i32 %870, i32* %hypre__nx1362, align 4
  %871 = load i32, i32* %hypre__my1369, align 4
  store i32 %871, i32* %hypre__ny1364, align 4
  %872 = load i32, i32* %hypre__mz1370, align 4
  store i32 %872, i32* %hypre__nz1366, align 4
  %873 = load i32, i32* %hypre__num_blocks1376, align 4
  %cmp1394 = icmp sgt i32 %873, 1
  br i1 %cmp1394, label %if.then.1395, label %if.end.1437

if.then.1395:                                     ; preds = %for.body.1393
  %874 = load i32, i32* %hypre__dir1371, align 4
  %cmp1396 = icmp eq i32 %874, 0
  br i1 %cmp1396, label %if.then.1397, label %if.else.1408

if.then.1397:                                     ; preds = %if.then.1395
  %875 = load i32, i32* %hypre__block1375, align 4
  %876 = load i32, i32* %hypre__div1373, align 4
  %mul1398 = mul nsw i32 %875, %876
  %877 = load i32, i32* %hypre__mod1374, align 4
  %878 = load i32, i32* %hypre__block1375, align 4
  %cmp1399 = icmp slt i32 %877, %878
  br i1 %cmp1399, label %cond.true.1400, label %cond.false.1401

cond.true.1400:                                   ; preds = %if.then.1397
  %879 = load i32, i32* %hypre__mod1374, align 4
  br label %cond.end.1402

cond.false.1401:                                  ; preds = %if.then.1397
  %880 = load i32, i32* %hypre__block1375, align 4
  br label %cond.end.1402

cond.end.1402:                                    ; preds = %cond.false.1401, %cond.true.1400
  %cond1403 = phi i32 [ %879, %cond.true.1400 ], [ %880, %cond.false.1401 ]
  %add1404 = add nsw i32 %mul1398, %cond1403
  store i32 %add1404, i32* %loopi, align 4
  %881 = load i32, i32* %hypre__div1373, align 4
  %882 = load i32, i32* %hypre__mod1374, align 4
  %883 = load i32, i32* %hypre__block1375, align 4
  %cmp1405 = icmp sgt i32 %882, %883
  %cond1406 = select i1 %cmp1405, i32 1, i32 0
  %add1407 = add nsw i32 %881, %cond1406
  store i32 %add1407, i32* %hypre__nx1362, align 4
  br label %if.end.1436

if.else.1408:                                     ; preds = %if.then.1395
  %884 = load i32, i32* %hypre__dir1371, align 4
  %cmp1409 = icmp eq i32 %884, 1
  br i1 %cmp1409, label %if.then.1410, label %if.else.1421

if.then.1410:                                     ; preds = %if.else.1408
  %885 = load i32, i32* %hypre__block1375, align 4
  %886 = load i32, i32* %hypre__div1373, align 4
  %mul1411 = mul nsw i32 %885, %886
  %887 = load i32, i32* %hypre__mod1374, align 4
  %888 = load i32, i32* %hypre__block1375, align 4
  %cmp1412 = icmp slt i32 %887, %888
  br i1 %cmp1412, label %cond.true.1413, label %cond.false.1414

cond.true.1413:                                   ; preds = %if.then.1410
  %889 = load i32, i32* %hypre__mod1374, align 4
  br label %cond.end.1415

cond.false.1414:                                  ; preds = %if.then.1410
  %890 = load i32, i32* %hypre__block1375, align 4
  br label %cond.end.1415

cond.end.1415:                                    ; preds = %cond.false.1414, %cond.true.1413
  %cond1416 = phi i32 [ %889, %cond.true.1413 ], [ %890, %cond.false.1414 ]
  %add1417 = add nsw i32 %mul1411, %cond1416
  store i32 %add1417, i32* %loopj, align 4
  %891 = load i32, i32* %hypre__div1373, align 4
  %892 = load i32, i32* %hypre__mod1374, align 4
  %893 = load i32, i32* %hypre__block1375, align 4
  %cmp1418 = icmp sgt i32 %892, %893
  %cond1419 = select i1 %cmp1418, i32 1, i32 0
  %add1420 = add nsw i32 %891, %cond1419
  store i32 %add1420, i32* %hypre__ny1364, align 4
  br label %if.end.1435

if.else.1421:                                     ; preds = %if.else.1408
  %894 = load i32, i32* %hypre__dir1371, align 4
  %cmp1422 = icmp eq i32 %894, 2
  br i1 %cmp1422, label %if.then.1423, label %if.end.1434

if.then.1423:                                     ; preds = %if.else.1421
  %895 = load i32, i32* %hypre__block1375, align 4
  %896 = load i32, i32* %hypre__div1373, align 4
  %mul1424 = mul nsw i32 %895, %896
  %897 = load i32, i32* %hypre__mod1374, align 4
  %898 = load i32, i32* %hypre__block1375, align 4
  %cmp1425 = icmp slt i32 %897, %898
  br i1 %cmp1425, label %cond.true.1426, label %cond.false.1427

cond.true.1426:                                   ; preds = %if.then.1423
  %899 = load i32, i32* %hypre__mod1374, align 4
  br label %cond.end.1428

cond.false.1427:                                  ; preds = %if.then.1423
  %900 = load i32, i32* %hypre__block1375, align 4
  br label %cond.end.1428

cond.end.1428:                                    ; preds = %cond.false.1427, %cond.true.1426
  %cond1429 = phi i32 [ %899, %cond.true.1426 ], [ %900, %cond.false.1427 ]
  %add1430 = add nsw i32 %mul1424, %cond1429
  store i32 %add1430, i32* %loopk, align 4
  %901 = load i32, i32* %hypre__div1373, align 4
  %902 = load i32, i32* %hypre__mod1374, align 4
  %903 = load i32, i32* %hypre__block1375, align 4
  %cmp1431 = icmp sgt i32 %902, %903
  %cond1432 = select i1 %cmp1431, i32 1, i32 0
  %add1433 = add nsw i32 %901, %cond1432
  store i32 %add1433, i32* %hypre__nz1366, align 4
  br label %if.end.1434

if.end.1434:                                      ; preds = %cond.end.1428, %if.else.1421
  br label %if.end.1435

if.end.1435:                                      ; preds = %if.end.1434, %cond.end.1415
  br label %if.end.1436

if.end.1436:                                      ; preds = %if.end.1435, %cond.end.1402
  br label %if.end.1437

if.end.1437:                                      ; preds = %if.end.1436, %for.body.1393
  %904 = load i32, i32* %hypre__i1start918, align 4
  %905 = load i32, i32* %loopi, align 4
  %906 = load i32, i32* %hypre__sx11122, align 4
  %mul1438 = mul nsw i32 %905, %906
  %add1439 = add nsw i32 %904, %mul1438
  %907 = load i32, i32* %loopj, align 4
  %908 = load i32, i32* %hypre__sy11124, align 4
  %mul1440 = mul nsw i32 %907, %908
  %add1441 = add nsw i32 %add1439, %mul1440
  %909 = load i32, i32* %loopk, align 4
  %910 = load i32, i32* %hypre__sz11144, align 4
  %mul1442 = mul nsw i32 %909, %910
  %add1443 = add nsw i32 %add1441, %mul1442
  store i32 %add1443, i32* %iP, align 4
  %911 = load i32, i32* %hypre__i2start969, align 4
  %912 = load i32, i32* %loopi, align 4
  %913 = load i32, i32* %hypre__sx21182, align 4
  %mul1444 = mul nsw i32 %912, %913
  %add1445 = add nsw i32 %911, %mul1444
  %914 = load i32, i32* %loopj, align 4
  %915 = load i32, i32* %hypre__sy21184, align 4
  %mul1446 = mul nsw i32 %914, %915
  %add1447 = add nsw i32 %add1445, %mul1446
  %916 = load i32, i32* %loopk, align 4
  %917 = load i32, i32* %hypre__sz21204, align 4
  %mul1448 = mul nsw i32 %916, %917
  %add1449 = add nsw i32 %add1447, %mul1448
  store i32 %add1449, i32* %iR, align 4
  %918 = load i32, i32* %hypre__i3start1020, align 4
  %919 = load i32, i32* %loopi, align 4
  %920 = load i32, i32* %hypre__sx31242, align 4
  %mul1450 = mul nsw i32 %919, %920
  %add1451 = add nsw i32 %918, %mul1450
  %921 = load i32, i32* %loopj, align 4
  %922 = load i32, i32* %hypre__sy31244, align 4
  %mul1452 = mul nsw i32 %921, %922
  %add1453 = add nsw i32 %add1451, %mul1452
  %923 = load i32, i32* %loopk, align 4
  %924 = load i32, i32* %hypre__sz31264, align 4
  %mul1454 = mul nsw i32 %923, %924
  %add1455 = add nsw i32 %add1453, %mul1454
  store i32 %add1455, i32* %iA, align 4
  %925 = load i32, i32* %hypre__i4start1071, align 4
  %926 = load i32, i32* %loopi, align 4
  %927 = load i32, i32* %hypre__sx41302, align 4
  %mul1456 = mul nsw i32 %926, %927
  %add1457 = add nsw i32 %925, %mul1456
  %928 = load i32, i32* %loopj, align 4
  %929 = load i32, i32* %hypre__sy41304, align 4
  %mul1458 = mul nsw i32 %928, %929
  %add1459 = add nsw i32 %add1457, %mul1458
  %930 = load i32, i32* %loopk, align 4
  %931 = load i32, i32* %hypre__sz41324, align 4
  %mul1460 = mul nsw i32 %930, %931
  %add1461 = add nsw i32 %add1459, %mul1460
  store i32 %add1461, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1462

for.cond.1462:                                    ; preds = %for.inc.1671, %if.end.1437
  %932 = load i32, i32* %loopk, align 4
  %933 = load i32, i32* %hypre__nz1366, align 4
  %cmp1463 = icmp slt i32 %932, %933
  br i1 %cmp1463, label %for.body.1464, label %for.end.1673

for.body.1464:                                    ; preds = %for.cond.1462
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1465

for.cond.1465:                                    ; preds = %for.inc.1656, %for.body.1464
  %934 = load i32, i32* %loopj, align 4
  %935 = load i32, i32* %hypre__ny1364, align 4
  %cmp1466 = icmp slt i32 %934, %935
  br i1 %cmp1466, label %for.body.1467, label %for.end.1658

for.body.1467:                                    ; preds = %for.cond.1465
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1468

for.cond.1468:                                    ; preds = %for.inc.1641, %for.body.1467
  %936 = load i32, i32* %loopi, align 4
  %937 = load i32, i32* %hypre__nx1362, align 4
  %cmp1469 = icmp slt i32 %936, %937
  br i1 %cmp1469, label %for.body.1470, label %for.end.1643

for.body.1470:                                    ; preds = %for.cond.1468
  %938 = load i32, i32* %iA, align 4
  %939 = load i32, i32* %yOffsetA, align 4
  %sub1471 = sub nsw i32 %938, %939
  store i32 %sub1471, i32* %iAm1, align 4
  %940 = load i32, i32* %iA, align 4
  %941 = load i32, i32* %yOffsetA, align 4
  %add1472 = add nsw i32 %940, %941
  store i32 %add1472, i32* %iAp1, align 4
  %942 = load i32, i32* %iP, align 4
  %943 = load i32, i32* %yOffsetP, align 4
  %sub1473 = sub nsw i32 %942, %943
  %944 = load i32, i32* %xOffsetP, align 4
  %sub1474 = sub nsw i32 %sub1473, %944
  store i32 %sub1474, i32* %iP1, align 4
  %945 = load i32, i32* %iR, align 4
  %idxprom1475 = sext i32 %945 to i64
  %946 = load double*, double** %rb, align 8
  %arrayidx1476 = getelementptr inbounds double, double* %946, i64 %idxprom1475
  %947 = load double, double* %arrayidx1476, align 8
  %948 = load i32, i32* %iAm1, align 4
  %idxprom1477 = sext i32 %948 to i64
  %949 = load double*, double** %a_cw, align 8
  %arrayidx1478 = getelementptr inbounds double, double* %949, i64 %idxprom1477
  %950 = load double, double* %arrayidx1478, align 8
  %mul1479 = fmul double %947, %950
  %951 = load i32, i32* %iP1, align 4
  %idxprom1480 = sext i32 %951 to i64
  %952 = load double*, double** %pa, align 8
  %arrayidx1481 = getelementptr inbounds double, double* %952, i64 %idxprom1480
  %953 = load double, double* %arrayidx1481, align 8
  %mul1482 = fmul double %mul1479, %953
  %954 = load i32, i32* %iR, align 4
  %idxprom1483 = sext i32 %954 to i64
  %955 = load double*, double** %rb, align 8
  %arrayidx1484 = getelementptr inbounds double, double* %955, i64 %idxprom1483
  %956 = load double, double* %arrayidx1484, align 8
  %957 = load i32, i32* %iAm1, align 4
  %idxprom1485 = sext i32 %957 to i64
  %958 = load double*, double** %a_csw, align 8
  %arrayidx1486 = getelementptr inbounds double, double* %958, i64 %idxprom1485
  %959 = load double, double* %arrayidx1486, align 8
  %mul1487 = fmul double %956, %959
  %add1488 = fadd double %mul1482, %mul1487
  %960 = load i32, i32* %iA, align 4
  %idxprom1489 = sext i32 %960 to i64
  %961 = load double*, double** %a_csw, align 8
  %arrayidx1490 = getelementptr inbounds double, double* %961, i64 %idxprom1489
  %962 = load double, double* %arrayidx1490, align 8
  %963 = load i32, i32* %iP1, align 4
  %idxprom1491 = sext i32 %963 to i64
  %964 = load double*, double** %pa, align 8
  %arrayidx1492 = getelementptr inbounds double, double* %964, i64 %idxprom1491
  %965 = load double, double* %arrayidx1492, align 8
  %mul1493 = fmul double %962, %965
  %add1494 = fadd double %add1488, %mul1493
  %966 = load i32, i32* %iAc, align 4
  %idxprom1495 = sext i32 %966 to i64
  %967 = load double*, double** %rap_csw, align 8
  %arrayidx1496 = getelementptr inbounds double, double* %967, i64 %idxprom1495
  store double %add1494, double* %arrayidx1496, align 8
  %968 = load i32, i32* %iP, align 4
  %969 = load i32, i32* %yOffsetP, align 4
  %sub1497 = sub nsw i32 %968, %969
  store i32 %sub1497, i32* %iP1, align 4
  %970 = load i32, i32* %iR, align 4
  %idxprom1498 = sext i32 %970 to i64
  %971 = load double*, double** %rb, align 8
  %arrayidx1499 = getelementptr inbounds double, double* %971, i64 %idxprom1498
  %972 = load double, double* %arrayidx1499, align 8
  %973 = load i32, i32* %iAm1, align 4
  %idxprom1500 = sext i32 %973 to i64
  %974 = load double*, double** %a_cc, align 8
  %arrayidx1501 = getelementptr inbounds double, double* %974, i64 %idxprom1500
  %975 = load double, double* %arrayidx1501, align 8
  %mul1502 = fmul double %972, %975
  %976 = load i32, i32* %iP1, align 4
  %idxprom1503 = sext i32 %976 to i64
  %977 = load double*, double** %pa, align 8
  %arrayidx1504 = getelementptr inbounds double, double* %977, i64 %idxprom1503
  %978 = load double, double* %arrayidx1504, align 8
  %mul1505 = fmul double %mul1502, %978
  %979 = load i32, i32* %iR, align 4
  %idxprom1506 = sext i32 %979 to i64
  %980 = load double*, double** %rb, align 8
  %arrayidx1507 = getelementptr inbounds double, double* %980, i64 %idxprom1506
  %981 = load double, double* %arrayidx1507, align 8
  %982 = load i32, i32* %iAm1, align 4
  %idxprom1508 = sext i32 %982 to i64
  %983 = load double*, double** %a_cs, align 8
  %arrayidx1509 = getelementptr inbounds double, double* %983, i64 %idxprom1508
  %984 = load double, double* %arrayidx1509, align 8
  %mul1510 = fmul double %981, %984
  %add1511 = fadd double %mul1505, %mul1510
  %985 = load i32, i32* %iA, align 4
  %idxprom1512 = sext i32 %985 to i64
  %986 = load double*, double** %a_cs, align 8
  %arrayidx1513 = getelementptr inbounds double, double* %986, i64 %idxprom1512
  %987 = load double, double* %arrayidx1513, align 8
  %988 = load i32, i32* %iP1, align 4
  %idxprom1514 = sext i32 %988 to i64
  %989 = load double*, double** %pa, align 8
  %arrayidx1515 = getelementptr inbounds double, double* %989, i64 %idxprom1514
  %990 = load double, double* %arrayidx1515, align 8
  %mul1516 = fmul double %987, %990
  %add1517 = fadd double %add1511, %mul1516
  %991 = load i32, i32* %iAc, align 4
  %idxprom1518 = sext i32 %991 to i64
  %992 = load double*, double** %rap_cs, align 8
  %arrayidx1519 = getelementptr inbounds double, double* %992, i64 %idxprom1518
  store double %add1517, double* %arrayidx1519, align 8
  %993 = load i32, i32* %iP, align 4
  %994 = load i32, i32* %yOffsetP, align 4
  %sub1520 = sub nsw i32 %993, %994
  %995 = load i32, i32* %xOffsetP, align 4
  %add1521 = add nsw i32 %sub1520, %995
  store i32 %add1521, i32* %iP1, align 4
  %996 = load i32, i32* %iR, align 4
  %idxprom1522 = sext i32 %996 to i64
  %997 = load double*, double** %rb, align 8
  %arrayidx1523 = getelementptr inbounds double, double* %997, i64 %idxprom1522
  %998 = load double, double* %arrayidx1523, align 8
  %999 = load i32, i32* %iAm1, align 4
  %idxprom1524 = sext i32 %999 to i64
  %1000 = load double*, double** %a_ce, align 8
  %arrayidx1525 = getelementptr inbounds double, double* %1000, i64 %idxprom1524
  %1001 = load double, double* %arrayidx1525, align 8
  %mul1526 = fmul double %998, %1001
  %1002 = load i32, i32* %iP1, align 4
  %idxprom1527 = sext i32 %1002 to i64
  %1003 = load double*, double** %pa, align 8
  %arrayidx1528 = getelementptr inbounds double, double* %1003, i64 %idxprom1527
  %1004 = load double, double* %arrayidx1528, align 8
  %mul1529 = fmul double %mul1526, %1004
  %1005 = load i32, i32* %iR, align 4
  %idxprom1530 = sext i32 %1005 to i64
  %1006 = load double*, double** %rb, align 8
  %arrayidx1531 = getelementptr inbounds double, double* %1006, i64 %idxprom1530
  %1007 = load double, double* %arrayidx1531, align 8
  %1008 = load i32, i32* %iAm1, align 4
  %idxprom1532 = sext i32 %1008 to i64
  %1009 = load double*, double** %a_cse, align 8
  %arrayidx1533 = getelementptr inbounds double, double* %1009, i64 %idxprom1532
  %1010 = load double, double* %arrayidx1533, align 8
  %mul1534 = fmul double %1007, %1010
  %add1535 = fadd double %mul1529, %mul1534
  %1011 = load i32, i32* %iA, align 4
  %idxprom1536 = sext i32 %1011 to i64
  %1012 = load double*, double** %a_cse, align 8
  %arrayidx1537 = getelementptr inbounds double, double* %1012, i64 %idxprom1536
  %1013 = load double, double* %arrayidx1537, align 8
  %1014 = load i32, i32* %iP1, align 4
  %idxprom1538 = sext i32 %1014 to i64
  %1015 = load double*, double** %pa, align 8
  %arrayidx1539 = getelementptr inbounds double, double* %1015, i64 %idxprom1538
  %1016 = load double, double* %arrayidx1539, align 8
  %mul1540 = fmul double %1013, %1016
  %add1541 = fadd double %add1535, %mul1540
  %1017 = load i32, i32* %iAc, align 4
  %idxprom1542 = sext i32 %1017 to i64
  %1018 = load double*, double** %rap_cse, align 8
  %arrayidx1543 = getelementptr inbounds double, double* %1018, i64 %idxprom1542
  store double %add1541, double* %arrayidx1543, align 8
  %1019 = load i32, i32* %iP, align 4
  %1020 = load i32, i32* %xOffsetP, align 4
  %sub1544 = sub nsw i32 %1019, %1020
  store i32 %sub1544, i32* %iP1, align 4
  %1021 = load i32, i32* %iA, align 4
  %idxprom1545 = sext i32 %1021 to i64
  %1022 = load double*, double** %a_cw, align 8
  %arrayidx1546 = getelementptr inbounds double, double* %1022, i64 %idxprom1545
  %1023 = load double, double* %arrayidx1546, align 8
  %1024 = load i32, i32* %iR, align 4
  %idxprom1547 = sext i32 %1024 to i64
  %1025 = load double*, double** %rb, align 8
  %arrayidx1548 = getelementptr inbounds double, double* %1025, i64 %idxprom1547
  %1026 = load double, double* %arrayidx1548, align 8
  %1027 = load i32, i32* %iAm1, align 4
  %idxprom1549 = sext i32 %1027 to i64
  %1028 = load double*, double** %a_cw, align 8
  %arrayidx1550 = getelementptr inbounds double, double* %1028, i64 %idxprom1549
  %1029 = load double, double* %arrayidx1550, align 8
  %mul1551 = fmul double %1026, %1029
  %1030 = load i32, i32* %iP1, align 4
  %idxprom1552 = sext i32 %1030 to i64
  %1031 = load double*, double** %pb, align 8
  %arrayidx1553 = getelementptr inbounds double, double* %1031, i64 %idxprom1552
  %1032 = load double, double* %arrayidx1553, align 8
  %mul1554 = fmul double %mul1551, %1032
  %add1555 = fadd double %1023, %mul1554
  %1033 = load i32, i32* %iR, align 4
  %idxprom1556 = sext i32 %1033 to i64
  %1034 = load double*, double** %ra, align 8
  %arrayidx1557 = getelementptr inbounds double, double* %1034, i64 %idxprom1556
  %1035 = load double, double* %arrayidx1557, align 8
  %1036 = load i32, i32* %iAp1, align 4
  %idxprom1558 = sext i32 %1036 to i64
  %1037 = load double*, double** %a_cw, align 8
  %arrayidx1559 = getelementptr inbounds double, double* %1037, i64 %idxprom1558
  %1038 = load double, double* %arrayidx1559, align 8
  %mul1560 = fmul double %1035, %1038
  %1039 = load i32, i32* %iP1, align 4
  %idxprom1561 = sext i32 %1039 to i64
  %1040 = load double*, double** %pa, align 8
  %arrayidx1562 = getelementptr inbounds double, double* %1040, i64 %idxprom1561
  %1041 = load double, double* %arrayidx1562, align 8
  %mul1563 = fmul double %mul1560, %1041
  %add1564 = fadd double %add1555, %mul1563
  %1042 = load i32, i32* %iR, align 4
  %idxprom1565 = sext i32 %1042 to i64
  %1043 = load double*, double** %rb, align 8
  %arrayidx1566 = getelementptr inbounds double, double* %1043, i64 %idxprom1565
  %1044 = load double, double* %arrayidx1566, align 8
  %1045 = load i32, i32* %iAm1, align 4
  %idxprom1567 = sext i32 %1045 to i64
  %1046 = load double*, double** %a_cnw, align 8
  %arrayidx1568 = getelementptr inbounds double, double* %1046, i64 %idxprom1567
  %1047 = load double, double* %arrayidx1568, align 8
  %mul1569 = fmul double %1044, %1047
  %add1570 = fadd double %add1564, %mul1569
  %1048 = load i32, i32* %iR, align 4
  %idxprom1571 = sext i32 %1048 to i64
  %1049 = load double*, double** %ra, align 8
  %arrayidx1572 = getelementptr inbounds double, double* %1049, i64 %idxprom1571
  %1050 = load double, double* %arrayidx1572, align 8
  %1051 = load i32, i32* %iAp1, align 4
  %idxprom1573 = sext i32 %1051 to i64
  %1052 = load double*, double** %a_csw, align 8
  %arrayidx1574 = getelementptr inbounds double, double* %1052, i64 %idxprom1573
  %1053 = load double, double* %arrayidx1574, align 8
  %mul1575 = fmul double %1050, %1053
  %add1576 = fadd double %add1570, %mul1575
  %1054 = load i32, i32* %iA, align 4
  %idxprom1577 = sext i32 %1054 to i64
  %1055 = load double*, double** %a_csw, align 8
  %arrayidx1578 = getelementptr inbounds double, double* %1055, i64 %idxprom1577
  %1056 = load double, double* %arrayidx1578, align 8
  %1057 = load i32, i32* %iP1, align 4
  %idxprom1579 = sext i32 %1057 to i64
  %1058 = load double*, double** %pb, align 8
  %arrayidx1580 = getelementptr inbounds double, double* %1058, i64 %idxprom1579
  %1059 = load double, double* %arrayidx1580, align 8
  %mul1581 = fmul double %1056, %1059
  %add1582 = fadd double %add1576, %mul1581
  %1060 = load i32, i32* %iA, align 4
  %idxprom1583 = sext i32 %1060 to i64
  %1061 = load double*, double** %a_cnw, align 8
  %arrayidx1584 = getelementptr inbounds double, double* %1061, i64 %idxprom1583
  %1062 = load double, double* %arrayidx1584, align 8
  %1063 = load i32, i32* %iP1, align 4
  %idxprom1585 = sext i32 %1063 to i64
  %1064 = load double*, double** %pa, align 8
  %arrayidx1586 = getelementptr inbounds double, double* %1064, i64 %idxprom1585
  %1065 = load double, double* %arrayidx1586, align 8
  %mul1587 = fmul double %1062, %1065
  %add1588 = fadd double %add1582, %mul1587
  %1066 = load i32, i32* %iAc, align 4
  %idxprom1589 = sext i32 %1066 to i64
  %1067 = load double*, double** %rap_cw, align 8
  %arrayidx1590 = getelementptr inbounds double, double* %1067, i64 %idxprom1589
  store double %add1588, double* %arrayidx1590, align 8
  %1068 = load i32, i32* %iA, align 4
  %idxprom1591 = sext i32 %1068 to i64
  %1069 = load double*, double** %a_cc, align 8
  %arrayidx1592 = getelementptr inbounds double, double* %1069, i64 %idxprom1591
  %1070 = load double, double* %arrayidx1592, align 8
  %1071 = load i32, i32* %iR, align 4
  %idxprom1593 = sext i32 %1071 to i64
  %1072 = load double*, double** %rb, align 8
  %arrayidx1594 = getelementptr inbounds double, double* %1072, i64 %idxprom1593
  %1073 = load double, double* %arrayidx1594, align 8
  %1074 = load i32, i32* %iAm1, align 4
  %idxprom1595 = sext i32 %1074 to i64
  %1075 = load double*, double** %a_cc, align 8
  %arrayidx1596 = getelementptr inbounds double, double* %1075, i64 %idxprom1595
  %1076 = load double, double* %arrayidx1596, align 8
  %mul1597 = fmul double %1073, %1076
  %1077 = load i32, i32* %iP, align 4
  %idxprom1598 = sext i32 %1077 to i64
  %1078 = load double*, double** %pb, align 8
  %arrayidx1599 = getelementptr inbounds double, double* %1078, i64 %idxprom1598
  %1079 = load double, double* %arrayidx1599, align 8
  %mul1600 = fmul double %mul1597, %1079
  %add1601 = fadd double %1070, %mul1600
  %1080 = load i32, i32* %iR, align 4
  %idxprom1602 = sext i32 %1080 to i64
  %1081 = load double*, double** %ra, align 8
  %arrayidx1603 = getelementptr inbounds double, double* %1081, i64 %idxprom1602
  %1082 = load double, double* %arrayidx1603, align 8
  %1083 = load i32, i32* %iAp1, align 4
  %idxprom1604 = sext i32 %1083 to i64
  %1084 = load double*, double** %a_cc, align 8
  %arrayidx1605 = getelementptr inbounds double, double* %1084, i64 %idxprom1604
  %1085 = load double, double* %arrayidx1605, align 8
  %mul1606 = fmul double %1082, %1085
  %1086 = load i32, i32* %iP, align 4
  %idxprom1607 = sext i32 %1086 to i64
  %1087 = load double*, double** %pa, align 8
  %arrayidx1608 = getelementptr inbounds double, double* %1087, i64 %idxprom1607
  %1088 = load double, double* %arrayidx1608, align 8
  %mul1609 = fmul double %mul1606, %1088
  %add1610 = fadd double %add1601, %mul1609
  %1089 = load i32, i32* %iR, align 4
  %idxprom1611 = sext i32 %1089 to i64
  %1090 = load double*, double** %rb, align 8
  %arrayidx1612 = getelementptr inbounds double, double* %1090, i64 %idxprom1611
  %1091 = load double, double* %arrayidx1612, align 8
  %1092 = load i32, i32* %iAm1, align 4
  %idxprom1613 = sext i32 %1092 to i64
  %1093 = load double*, double** %a_cn, align 8
  %arrayidx1614 = getelementptr inbounds double, double* %1093, i64 %idxprom1613
  %1094 = load double, double* %arrayidx1614, align 8
  %mul1615 = fmul double %1091, %1094
  %add1616 = fadd double %add1610, %mul1615
  %1095 = load i32, i32* %iR, align 4
  %idxprom1617 = sext i32 %1095 to i64
  %1096 = load double*, double** %ra, align 8
  %arrayidx1618 = getelementptr inbounds double, double* %1096, i64 %idxprom1617
  %1097 = load double, double* %arrayidx1618, align 8
  %1098 = load i32, i32* %iAp1, align 4
  %idxprom1619 = sext i32 %1098 to i64
  %1099 = load double*, double** %a_cs, align 8
  %arrayidx1620 = getelementptr inbounds double, double* %1099, i64 %idxprom1619
  %1100 = load double, double* %arrayidx1620, align 8
  %mul1621 = fmul double %1097, %1100
  %add1622 = fadd double %add1616, %mul1621
  %1101 = load i32, i32* %iA, align 4
  %idxprom1623 = sext i32 %1101 to i64
  %1102 = load double*, double** %a_cs, align 8
  %arrayidx1624 = getelementptr inbounds double, double* %1102, i64 %idxprom1623
  %1103 = load double, double* %arrayidx1624, align 8
  %1104 = load i32, i32* %iP, align 4
  %idxprom1625 = sext i32 %1104 to i64
  %1105 = load double*, double** %pb, align 8
  %arrayidx1626 = getelementptr inbounds double, double* %1105, i64 %idxprom1625
  %1106 = load double, double* %arrayidx1626, align 8
  %mul1627 = fmul double %1103, %1106
  %add1628 = fadd double %add1622, %mul1627
  %1107 = load i32, i32* %iA, align 4
  %idxprom1629 = sext i32 %1107 to i64
  %1108 = load double*, double** %a_cn, align 8
  %arrayidx1630 = getelementptr inbounds double, double* %1108, i64 %idxprom1629
  %1109 = load double, double* %arrayidx1630, align 8
  %1110 = load i32, i32* %iP, align 4
  %idxprom1631 = sext i32 %1110 to i64
  %1111 = load double*, double** %pa, align 8
  %arrayidx1632 = getelementptr inbounds double, double* %1111, i64 %idxprom1631
  %1112 = load double, double* %arrayidx1632, align 8
  %mul1633 = fmul double %1109, %1112
  %add1634 = fadd double %add1628, %mul1633
  %1113 = load i32, i32* %iAc, align 4
  %idxprom1635 = sext i32 %1113 to i64
  %1114 = load double*, double** %rap_cc, align 8
  %arrayidx1636 = getelementptr inbounds double, double* %1114, i64 %idxprom1635
  store double %add1634, double* %arrayidx1636, align 8
  %1115 = load i32, i32* %hypre__sx11122, align 4
  %1116 = load i32, i32* %iP, align 4
  %add1637 = add nsw i32 %1116, %1115
  store i32 %add1637, i32* %iP, align 4
  %1117 = load i32, i32* %hypre__sx21182, align 4
  %1118 = load i32, i32* %iR, align 4
  %add1638 = add nsw i32 %1118, %1117
  store i32 %add1638, i32* %iR, align 4
  %1119 = load i32, i32* %hypre__sx31242, align 4
  %1120 = load i32, i32* %iA, align 4
  %add1639 = add nsw i32 %1120, %1119
  store i32 %add1639, i32* %iA, align 4
  %1121 = load i32, i32* %hypre__sx41302, align 4
  %1122 = load i32, i32* %iAc, align 4
  %add1640 = add nsw i32 %1122, %1121
  store i32 %add1640, i32* %iAc, align 4
  br label %for.inc.1641

for.inc.1641:                                     ; preds = %for.body.1470
  %1123 = load i32, i32* %loopi, align 4
  %inc1642 = add nsw i32 %1123, 1
  store i32 %inc1642, i32* %loopi, align 4
  br label %for.cond.1468

for.end.1643:                                     ; preds = %for.cond.1468
  %1124 = load i32, i32* %hypre__sy11124, align 4
  %1125 = load i32, i32* %hypre__nx1362, align 4
  %1126 = load i32, i32* %hypre__sx11122, align 4
  %mul1644 = mul nsw i32 %1125, %1126
  %sub1645 = sub nsw i32 %1124, %mul1644
  %1127 = load i32, i32* %iP, align 4
  %add1646 = add nsw i32 %1127, %sub1645
  store i32 %add1646, i32* %iP, align 4
  %1128 = load i32, i32* %hypre__sy21184, align 4
  %1129 = load i32, i32* %hypre__nx1362, align 4
  %1130 = load i32, i32* %hypre__sx21182, align 4
  %mul1647 = mul nsw i32 %1129, %1130
  %sub1648 = sub nsw i32 %1128, %mul1647
  %1131 = load i32, i32* %iR, align 4
  %add1649 = add nsw i32 %1131, %sub1648
  store i32 %add1649, i32* %iR, align 4
  %1132 = load i32, i32* %hypre__sy31244, align 4
  %1133 = load i32, i32* %hypre__nx1362, align 4
  %1134 = load i32, i32* %hypre__sx31242, align 4
  %mul1650 = mul nsw i32 %1133, %1134
  %sub1651 = sub nsw i32 %1132, %mul1650
  %1135 = load i32, i32* %iA, align 4
  %add1652 = add nsw i32 %1135, %sub1651
  store i32 %add1652, i32* %iA, align 4
  %1136 = load i32, i32* %hypre__sy41304, align 4
  %1137 = load i32, i32* %hypre__nx1362, align 4
  %1138 = load i32, i32* %hypre__sx41302, align 4
  %mul1653 = mul nsw i32 %1137, %1138
  %sub1654 = sub nsw i32 %1136, %mul1653
  %1139 = load i32, i32* %iAc, align 4
  %add1655 = add nsw i32 %1139, %sub1654
  store i32 %add1655, i32* %iAc, align 4
  br label %for.inc.1656

for.inc.1656:                                     ; preds = %for.end.1643
  %1140 = load i32, i32* %loopj, align 4
  %inc1657 = add nsw i32 %1140, 1
  store i32 %inc1657, i32* %loopj, align 4
  br label %for.cond.1465

for.end.1658:                                     ; preds = %for.cond.1465
  %1141 = load i32, i32* %hypre__sz11144, align 4
  %1142 = load i32, i32* %hypre__ny1364, align 4
  %1143 = load i32, i32* %hypre__sy11124, align 4
  %mul1659 = mul nsw i32 %1142, %1143
  %sub1660 = sub nsw i32 %1141, %mul1659
  %1144 = load i32, i32* %iP, align 4
  %add1661 = add nsw i32 %1144, %sub1660
  store i32 %add1661, i32* %iP, align 4
  %1145 = load i32, i32* %hypre__sz21204, align 4
  %1146 = load i32, i32* %hypre__ny1364, align 4
  %1147 = load i32, i32* %hypre__sy21184, align 4
  %mul1662 = mul nsw i32 %1146, %1147
  %sub1663 = sub nsw i32 %1145, %mul1662
  %1148 = load i32, i32* %iR, align 4
  %add1664 = add nsw i32 %1148, %sub1663
  store i32 %add1664, i32* %iR, align 4
  %1149 = load i32, i32* %hypre__sz31264, align 4
  %1150 = load i32, i32* %hypre__ny1364, align 4
  %1151 = load i32, i32* %hypre__sy31244, align 4
  %mul1665 = mul nsw i32 %1150, %1151
  %sub1666 = sub nsw i32 %1149, %mul1665
  %1152 = load i32, i32* %iA, align 4
  %add1667 = add nsw i32 %1152, %sub1666
  store i32 %add1667, i32* %iA, align 4
  %1153 = load i32, i32* %hypre__sz41324, align 4
  %1154 = load i32, i32* %hypre__ny1364, align 4
  %1155 = load i32, i32* %hypre__sy41304, align 4
  %mul1668 = mul nsw i32 %1154, %1155
  %sub1669 = sub nsw i32 %1153, %mul1668
  %1156 = load i32, i32* %iAc, align 4
  %add1670 = add nsw i32 %1156, %sub1669
  store i32 %add1670, i32* %iAc, align 4
  br label %for.inc.1671

for.inc.1671:                                     ; preds = %for.end.1658
  %1157 = load i32, i32* %loopk, align 4
  %inc1672 = add nsw i32 %1157, 1
  store i32 %inc1672, i32* %loopk, align 4
  br label %for.cond.1462

for.end.1673:                                     ; preds = %for.cond.1462
  br label %for.inc.1674

for.inc.1674:                                     ; preds = %for.end.1673
  %1158 = load i32, i32* %hypre__block1375, align 4
  %inc1675 = add nsw i32 %1158, 1
  store i32 %inc1675, i32* %hypre__block1375, align 4
  br label %for.cond.1391

for.end.1676:                                     ; preds = %for.cond.1391
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.1676, %for.end.915
  br label %for.inc.1677

for.inc.1677:                                     ; preds = %sw.epilog
  %1159 = load i32, i32* %ci, align 4
  %inc1678 = add nsw i32 %1159, 1
  store i32 %inc1678, i32* %ci, align 4
  br label %for.cond

for.end.1679:                                     ; preds = %for.cond
  %1160 = load i32, i32* %ierr, align 4
  ret i32 %1160
}

declare i32 @hypre_StructMapCoarseToFine(i32*, i32*, i32*, i32*) #2

declare double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct*, i32, i32*) #2

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_SMG2BuildRAPNoSym(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct* %RAP, i32* %cindex, i32* %cstride) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %RAP.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %index = alloca [3 x i32], align 4
  %fine_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %fine_stencil_size = alloca i32, align 4
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
  %PT_dbox = alloca %struct.hypre_Box_struct*, align 8
  %R_dbox = alloca %struct.hypre_Box_struct*, align 8
  %RAP_dbox = alloca %struct.hypre_Box_struct*, align 8
  %pa = alloca double*, align 8
  %pb = alloca double*, align 8
  %ra = alloca double*, align 8
  %rb = alloca double*, align 8
  %a_cc = alloca double*, align 8
  %a_cw = alloca double*, align 8
  %a_ce = alloca double*, align 8
  %a_cn = alloca double*, align 8
  %a_cse = alloca double*, align 8
  %a_cnw = alloca double*, align 8
  %a_cne = alloca double*, align 8
  %rap_ce = alloca double*, align 8
  %rap_cn = alloca double*, align 8
  %rap_cnw = alloca double*, align 8
  %rap_cne = alloca double*, align 8
  %iA = alloca i32, align 4
  %iAm1 = alloca i32, align 4
  %iAp1 = alloca i32, align 4
  %iAc = alloca i32, align 4
  %iP = alloca i32, align 4
  %iP1 = alloca i32, align 4
  %iR = alloca i32, align 4
  %yOffsetA = alloca i32, align 4
  %xOffsetP = alloca i32, align 4
  %yOffsetP = alloca i32, align 4
  %ierr = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__i4start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__sx4 = alloca i32, align 4
  %hypre__sy4 = alloca i32, align 4
  %hypre__sz4 = alloca i32, align 4
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
  %hypre__i1start862 = alloca i32, align 4
  %hypre__i2start913 = alloca i32, align 4
  %hypre__i3start964 = alloca i32, align 4
  %hypre__i4start1015 = alloca i32, align 4
  %hypre__sx11066 = alloca i32, align 4
  %hypre__sy11068 = alloca i32, align 4
  %hypre__sz11088 = alloca i32, align 4
  %hypre__sx21126 = alloca i32, align 4
  %hypre__sy21128 = alloca i32, align 4
  %hypre__sz21148 = alloca i32, align 4
  %hypre__sx31186 = alloca i32, align 4
  %hypre__sy31188 = alloca i32, align 4
  %hypre__sz31208 = alloca i32, align 4
  %hypre__sx41246 = alloca i32, align 4
  %hypre__sy41248 = alloca i32, align 4
  %hypre__sz41268 = alloca i32, align 4
  %hypre__nx1306 = alloca i32, align 4
  %hypre__ny1308 = alloca i32, align 4
  %hypre__nz1310 = alloca i32, align 4
  %hypre__mx1312 = alloca i32, align 4
  %hypre__my1313 = alloca i32, align 4
  %hypre__mz1314 = alloca i32, align 4
  %hypre__dir1315 = alloca i32, align 4
  %hypre__max1316 = alloca i32, align 4
  %hypre__div1317 = alloca i32, align 4
  %hypre__mod1318 = alloca i32, align 4
  %hypre__block1319 = alloca i32, align 4
  %hypre__num_blocks1320 = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructMatrix_struct* %RAP, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %fine_stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %fine_stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  store i32 %3, i32* %fine_stencil_size, align 4
  %4 = load i32*, i32** %cstride.addr, align 8
  store i32* %4, i32** %stridef, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %5, i32 0, i32 1
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %6, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 3
  %8 = load i32*, i32** %ids, align 8
  store i32* %8, i32** %fgrid_ids, align 8
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 1
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid3, align 8
  store %struct.hypre_StructGrid_struct* %10, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %11, i32 0, i32 2
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %12, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %13 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %13, i32 0, i32 3
  %14 = load i32*, i32** %ids4, align 8
  store i32* %14, i32** %cgrid_ids, align 8
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1575, %entry
  %15 = load i32, i32* %ci, align 4
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %size5, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end.1577

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %18 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx6, align 4
  %21 = load i32, i32* %ci, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 %idxprom7
  %23 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %20, %23
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %fi, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %ci, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom10
  store %struct.hypre_Box_struct* %arrayidx12, %struct.hypre_Box_struct** %cgrid_box, align 8
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %cstart, align 8
  %29 = load i32*, i32** %cstart, align 8
  %30 = load i32*, i32** %cindex.addr, align 8
  %31 = load i32*, i32** %cstride.addr, align 8
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i32 0
  %call = call i32 @hypre_StructMapCoarseToFine(i32* %29, i32* %30, i32* %31, i32* %arraydecay13)
  %32 = load i32, i32* %fi, align 4
  %idxprom14 = sext i32 %32 to i64
  %33 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %33, i32 0, i32 5
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes15, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom14
  store %struct.hypre_Box_struct* %arrayidx16, %struct.hypre_Box_struct** %A_dbox, align 8
  %36 = load i32, i32* %fi, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %data_space18 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %37, i32 0, i32 5
  %38 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space18, align 8
  %boxes19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %38, i32 0, i32 0
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i64 %idxprom17
  store %struct.hypre_Box_struct* %arrayidx20, %struct.hypre_Box_struct** %PT_dbox, align 8
  %40 = load i32, i32* %fi, align 4
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_space22 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %41, i32 0, i32 5
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space22, align 8
  %boxes23 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %42, i32 0, i32 0
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes23, align 8
  %arrayidx24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i64 %idxprom21
  store %struct.hypre_Box_struct* %arrayidx24, %struct.hypre_Box_struct** %R_dbox, align 8
  %44 = load i32, i32* %ci, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %data_space26 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %45, i32 0, i32 5
  %46 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space26, align 8
  %boxes27 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %46, i32 0, i32 0
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i64 %idxprom25
  store %struct.hypre_Box_struct* %arrayidx28, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx31, align 4
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %49 = load i32, i32* %fi, align 4
  %arraydecay32 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call33 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %48, i32 %49, i32* %arraydecay32)
  store double* %call33, double** %pa, align 8
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx36, align 4
  %50 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %51 = load i32, i32* %fi, align 4
  %arraydecay37 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call38 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %50, i32 %51, i32* %arraydecay37)
  store double* %call38, double** %pb, align 8
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx41, align 4
  %52 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %53 = load i32, i32* %fi, align 4
  %arraydecay42 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call43 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %52, i32 %53, i32* %arraydecay42)
  store double* %call43, double** %ra, align 8
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx46, align 4
  %54 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %55 = load i32, i32* %fi, align 4
  %arraydecay47 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call48 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %54, i32 %55, i32* %arraydecay47)
  store double* %call48, double** %rb, align 8
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx51, align 4
  %56 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %57 = load i32, i32* %fi, align 4
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call53 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %56, i32 %57, i32* %arraydecay52)
  store double* %call53, double** %a_cc, align 8
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx56, align 4
  %58 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %59 = load i32, i32* %fi, align 4
  %arraydecay57 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call58 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %58, i32 %59, i32* %arraydecay57)
  store double* %call58, double** %a_cw, align 8
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx61, align 4
  %60 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %61 = load i32, i32* %fi, align 4
  %arraydecay62 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call63 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %60, i32 %61, i32* %arraydecay62)
  store double* %call63, double** %a_ce, align 8
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx66, align 4
  %62 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %63 = load i32, i32* %fi, align 4
  %arraydecay67 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call68 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %62, i32 %63, i32* %arraydecay67)
  store double* %call68, double** %a_cn, align 8
  %64 = load i32, i32* %fine_stencil_size, align 4
  %cmp69 = icmp sgt i32 %64, 5
  br i1 %cmp69, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx72, align 4
  %65 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %66 = load i32, i32* %fi, align 4
  %arraydecay73 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call74 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %65, i32 %66, i32* %arraydecay73)
  store double* %call74, double** %a_cse, align 8
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx77, align 4
  %67 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %68 = load i32, i32* %fi, align 4
  %arraydecay78 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call79 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %67, i32 %68, i32* %arraydecay78)
  store double* %call79, double** %a_cnw, align 8
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx82, align 4
  %69 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %70 = load i32, i32* %fi, align 4
  %arraydecay83 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call84 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %69, i32 %70, i32* %arraydecay83)
  store double* %call84, double** %a_cne, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx87, align 4
  %71 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %72 = load i32, i32* %ci, align 4
  %arraydecay88 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call89 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %71, i32 %72, i32* %arraydecay88)
  store double* %call89, double** %rap_ce, align 8
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx92, align 4
  %73 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %74 = load i32, i32* %ci, align 4
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call94 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %73, i32 %74, i32* %arraydecay93)
  store double* %call94, double** %rap_cn, align 8
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx95, align 4
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx97, align 4
  %75 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %76 = load i32, i32* %ci, align 4
  %arraydecay98 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call99 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %75, i32 %76, i32* %arraydecay98)
  store double* %call99, double** %rap_cne, align 8
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx100, align 4
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx101, align 4
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx102, align 4
  %77 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %78 = load i32, i32* %ci, align 4
  %arraydecay103 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call104 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %77, i32 %78, i32* %arraydecay103)
  store double* %call104, double** %rap_cnw, align 8
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx106, align 4
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx107, align 4
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %79 = load i32, i32* %arrayidx108, align 4
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %80 = load i32, i32* %arrayidx109, align 4
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %81 = load i32, i32* %arrayidx110, align 4
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %83 = load i32, i32* %arrayidx111, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin112, i32 0, i64 1
  %85 = load i32, i32* %arrayidx113, align 4
  %sub = sub nsw i32 %83, %85
  %add = add nsw i32 %sub, 1
  %cmp114 = icmp slt i32 0, %add
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %imax115, i32 0, i64 1
  %87 = load i32, i32* %arrayidx116, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imin117, i32 0, i64 1
  %89 = load i32, i32* %arrayidx118, align 4
  %sub119 = sub nsw i32 %87, %89
  %add120 = add nsw i32 %sub119, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add120, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %81, %cond
  %add121 = add nsw i32 %80, %mul
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imax122, i32 0, i64 0
  %91 = load i32, i32* %arrayidx123, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imin124, i32 0, i64 0
  %93 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %91, %93
  %add127 = add nsw i32 %sub126, 1
  %cmp128 = icmp slt i32 0, %add127
  br i1 %cmp128, label %cond.true.129, label %cond.false.136

cond.true.129:                                    ; preds = %cond.end
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %imax130, i32 0, i64 0
  %95 = load i32, i32* %arrayidx131, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i64 0
  %97 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub nsw i32 %95, %97
  %add135 = add nsw i32 %sub134, 1
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.129
  %cond138 = phi i32 [ %add135, %cond.true.129 ], [ 0, %cond.false.136 ]
  %mul139 = mul nsw i32 %add121, %cond138
  %add140 = add nsw i32 %79, %mul139
  store i32 %add140, i32* %yOffsetA, align 4
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %98 = load i32, i32* %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %99 = load i32, i32* %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %100 = load i32, i32* %arrayidx143, align 4
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imax144, i32 0, i64 1
  %102 = load i32, i32* %arrayidx145, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin146, i32 0, i64 1
  %104 = load i32, i32* %arrayidx147, align 4
  %sub148 = sub nsw i32 %102, %104
  %add149 = add nsw i32 %sub148, 1
  %cmp150 = icmp slt i32 0, %add149
  br i1 %cmp150, label %cond.true.151, label %cond.false.158

cond.true.151:                                    ; preds = %cond.end.137
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imax152, i32 0, i64 1
  %106 = load i32, i32* %arrayidx153, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imin154, i32 0, i64 1
  %108 = load i32, i32* %arrayidx155, align 4
  %sub156 = sub nsw i32 %106, %108
  %add157 = add nsw i32 %sub156, 1
  br label %cond.end.159

cond.false.158:                                   ; preds = %cond.end.137
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.151
  %cond160 = phi i32 [ %add157, %cond.true.151 ], [ 0, %cond.false.158 ]
  %mul161 = mul nsw i32 %100, %cond160
  %add162 = add nsw i32 %99, %mul161
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imax163, i32 0, i64 0
  %110 = load i32, i32* %arrayidx164, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin165 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %imin165, i32 0, i64 0
  %112 = load i32, i32* %arrayidx166, align 4
  %sub167 = sub nsw i32 %110, %112
  %add168 = add nsw i32 %sub167, 1
  %cmp169 = icmp slt i32 0, %add168
  br i1 %cmp169, label %cond.true.170, label %cond.false.177

cond.true.170:                                    ; preds = %cond.end.159
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imax171, i32 0, i64 0
  %114 = load i32, i32* %arrayidx172, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imin173, i32 0, i64 0
  %116 = load i32, i32* %arrayidx174, align 4
  %sub175 = sub nsw i32 %114, %116
  %add176 = add nsw i32 %sub175, 1
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.end.159
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.170
  %cond179 = phi i32 [ %add176, %cond.true.170 ], [ 0, %cond.false.177 ]
  %mul180 = mul nsw i32 %add162, %cond179
  %add181 = add nsw i32 %98, %mul180
  store i32 %add181, i32* %yOffsetP, align 4
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx182, align 4
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx183, align 4
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx184, align 4
  %arrayidx185 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %117 = load i32, i32* %arrayidx185, align 4
  %arrayidx186 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %118 = load i32, i32* %arrayidx186, align 4
  %arrayidx187 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %119 = load i32, i32* %arrayidx187, align 4
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [3 x i32], [3 x i32]* %imax188, i32 0, i64 1
  %121 = load i32, i32* %arrayidx189, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %imin190, i32 0, i64 1
  %123 = load i32, i32* %arrayidx191, align 4
  %sub192 = sub nsw i32 %121, %123
  %add193 = add nsw i32 %sub192, 1
  %cmp194 = icmp slt i32 0, %add193
  br i1 %cmp194, label %cond.true.195, label %cond.false.202

cond.true.195:                                    ; preds = %cond.end.178
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax196 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %imax196, i32 0, i64 1
  %125 = load i32, i32* %arrayidx197, align 4
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin198 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [3 x i32], [3 x i32]* %imin198, i32 0, i64 1
  %127 = load i32, i32* %arrayidx199, align 4
  %sub200 = sub nsw i32 %125, %127
  %add201 = add nsw i32 %sub200, 1
  br label %cond.end.203

cond.false.202:                                   ; preds = %cond.end.178
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.202, %cond.true.195
  %cond204 = phi i32 [ %add201, %cond.true.195 ], [ 0, %cond.false.202 ]
  %mul205 = mul nsw i32 %119, %cond204
  %add206 = add nsw i32 %118, %mul205
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax207, i32 0, i64 0
  %129 = load i32, i32* %arrayidx208, align 4
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imin209, i32 0, i64 0
  %131 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %129, %131
  %add212 = add nsw i32 %sub211, 1
  %cmp213 = icmp slt i32 0, %add212
  br i1 %cmp213, label %cond.true.214, label %cond.false.221

cond.true.214:                                    ; preds = %cond.end.203
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax215 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [3 x i32], [3 x i32]* %imax215, i32 0, i64 0
  %133 = load i32, i32* %arrayidx216, align 4
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin217 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %imin217, i32 0, i64 0
  %135 = load i32, i32* %arrayidx218, align 4
  %sub219 = sub nsw i32 %133, %135
  %add220 = add nsw i32 %sub219, 1
  br label %cond.end.222

cond.false.221:                                   ; preds = %cond.end.203
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.221, %cond.true.214
  %cond223 = phi i32 [ %add220, %cond.true.214 ], [ 0, %cond.false.221 ]
  %mul224 = mul nsw i32 %add206, %cond223
  %add225 = add nsw i32 %117, %mul224
  store i32 %add225, i32* %xOffsetP, align 4
  %136 = load i32, i32* %fine_stencil_size, align 4
  switch i32 %136, label %sw.default [
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end.222
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay226 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call227 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %137, i32* %arraydecay226)
  %138 = load i32*, i32** %cstart, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %138, i64 0
  %139 = load i32, i32* %arrayidx228, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %imin229, i32 0, i64 0
  %141 = load i32, i32* %arrayidx230, align 4
  %sub231 = sub nsw i32 %139, %141
  %142 = load i32*, i32** %cstart, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %142, i64 1
  %143 = load i32, i32* %arrayidx232, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin233 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %imin233, i32 0, i64 1
  %145 = load i32, i32* %arrayidx234, align 4
  %sub235 = sub nsw i32 %143, %145
  %146 = load i32*, i32** %cstart, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %146, i64 2
  %147 = load i32, i32* %arrayidx236, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin237 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [3 x i32], [3 x i32]* %imin237, i32 0, i64 2
  %149 = load i32, i32* %arrayidx238, align 4
  %sub239 = sub nsw i32 %147, %149
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imax240, i32 0, i64 1
  %151 = load i32, i32* %arrayidx241, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin242 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %imin242, i32 0, i64 1
  %153 = load i32, i32* %arrayidx243, align 4
  %sub244 = sub nsw i32 %151, %153
  %add245 = add nsw i32 %sub244, 1
  %cmp246 = icmp slt i32 0, %add245
  br i1 %cmp246, label %cond.true.247, label %cond.false.254

cond.true.247:                                    ; preds = %sw.bb
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %imax248, i32 0, i64 1
  %155 = load i32, i32* %arrayidx249, align 4
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imin250, i32 0, i64 1
  %157 = load i32, i32* %arrayidx251, align 4
  %sub252 = sub nsw i32 %155, %157
  %add253 = add nsw i32 %sub252, 1
  br label %cond.end.255

cond.false.254:                                   ; preds = %sw.bb
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.254, %cond.true.247
  %cond256 = phi i32 [ %add253, %cond.true.247 ], [ 0, %cond.false.254 ]
  %mul257 = mul nsw i32 %sub239, %cond256
  %add258 = add nsw i32 %sub235, %mul257
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %imax259, i32 0, i64 0
  %159 = load i32, i32* %arrayidx260, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin261 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %imin261, i32 0, i64 0
  %161 = load i32, i32* %arrayidx262, align 4
  %sub263 = sub nsw i32 %159, %161
  %add264 = add nsw i32 %sub263, 1
  %cmp265 = icmp slt i32 0, %add264
  br i1 %cmp265, label %cond.true.266, label %cond.false.273

cond.true.266:                                    ; preds = %cond.end.255
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax267 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %imax267, i32 0, i64 0
  %163 = load i32, i32* %arrayidx268, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imin269, i32 0, i64 0
  %165 = load i32, i32* %arrayidx270, align 4
  %sub271 = sub nsw i32 %163, %165
  %add272 = add nsw i32 %sub271, 1
  br label %cond.end.274

cond.false.273:                                   ; preds = %cond.end.255
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.266
  %cond275 = phi i32 [ %add272, %cond.true.266 ], [ 0, %cond.false.273 ]
  %mul276 = mul nsw i32 %add258, %cond275
  %add277 = add nsw i32 %sub231, %mul276
  store i32 %add277, i32* %hypre__i1start, align 4
  %166 = load i32*, i32** %cstart, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %166, i64 0
  %167 = load i32, i32* %arrayidx278, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 0
  %169 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %167, %169
  %170 = load i32*, i32** %cstart, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %170, i64 1
  %171 = load i32, i32* %arrayidx282, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin283 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %imin283, i32 0, i64 1
  %173 = load i32, i32* %arrayidx284, align 4
  %sub285 = sub nsw i32 %171, %173
  %174 = load i32*, i32** %cstart, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %174, i64 2
  %175 = load i32, i32* %arrayidx286, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imin287, i32 0, i64 2
  %177 = load i32, i32* %arrayidx288, align 4
  %sub289 = sub nsw i32 %175, %177
  %178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %178, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [3 x i32], [3 x i32]* %imax290, i32 0, i64 1
  %179 = load i32, i32* %arrayidx291, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin292 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [3 x i32], [3 x i32]* %imin292, i32 0, i64 1
  %181 = load i32, i32* %arrayidx293, align 4
  %sub294 = sub nsw i32 %179, %181
  %add295 = add nsw i32 %sub294, 1
  %cmp296 = icmp slt i32 0, %add295
  br i1 %cmp296, label %cond.true.297, label %cond.false.304

cond.true.297:                                    ; preds = %cond.end.274
  %182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax298 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %182, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [3 x i32], [3 x i32]* %imax298, i32 0, i64 1
  %183 = load i32, i32* %arrayidx299, align 4
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x i32], [3 x i32]* %imin300, i32 0, i64 1
  %185 = load i32, i32* %arrayidx301, align 4
  %sub302 = sub nsw i32 %183, %185
  %add303 = add nsw i32 %sub302, 1
  br label %cond.end.305

cond.false.304:                                   ; preds = %cond.end.274
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.304, %cond.true.297
  %cond306 = phi i32 [ %add303, %cond.true.297 ], [ 0, %cond.false.304 ]
  %mul307 = mul nsw i32 %sub289, %cond306
  %add308 = add nsw i32 %sub285, %mul307
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax309 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %imax309, i32 0, i64 0
  %187 = load i32, i32* %arrayidx310, align 4
  %188 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin311 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %188, i32 0, i32 0
  %arrayidx312 = getelementptr inbounds [3 x i32], [3 x i32]* %imin311, i32 0, i64 0
  %189 = load i32, i32* %arrayidx312, align 4
  %sub313 = sub nsw i32 %187, %189
  %add314 = add nsw i32 %sub313, 1
  %cmp315 = icmp slt i32 0, %add314
  br i1 %cmp315, label %cond.true.316, label %cond.false.323

cond.true.316:                                    ; preds = %cond.end.305
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax317 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [3 x i32], [3 x i32]* %imax317, i32 0, i64 0
  %191 = load i32, i32* %arrayidx318, align 4
  %192 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin319 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %192, i32 0, i32 0
  %arrayidx320 = getelementptr inbounds [3 x i32], [3 x i32]* %imin319, i32 0, i64 0
  %193 = load i32, i32* %arrayidx320, align 4
  %sub321 = sub nsw i32 %191, %193
  %add322 = add nsw i32 %sub321, 1
  br label %cond.end.324

cond.false.323:                                   ; preds = %cond.end.305
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.316
  %cond325 = phi i32 [ %add322, %cond.true.316 ], [ 0, %cond.false.323 ]
  %mul326 = mul nsw i32 %add308, %cond325
  %add327 = add nsw i32 %sub281, %mul326
  store i32 %add327, i32* %hypre__i2start, align 4
  %arrayidx328 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %194 = load i32, i32* %arrayidx328, align 4
  %195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin329 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %195, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x i32], [3 x i32]* %imin329, i32 0, i64 0
  %196 = load i32, i32* %arrayidx330, align 4
  %sub331 = sub nsw i32 %194, %196
  %arrayidx332 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %197 = load i32, i32* %arrayidx332, align 4
  %198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin333 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %198, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [3 x i32], [3 x i32]* %imin333, i32 0, i64 1
  %199 = load i32, i32* %arrayidx334, align 4
  %sub335 = sub nsw i32 %197, %199
  %arrayidx336 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %200 = load i32, i32* %arrayidx336, align 4
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin337 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %imin337, i32 0, i64 2
  %202 = load i32, i32* %arrayidx338, align 4
  %sub339 = sub nsw i32 %200, %202
  %203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax340 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %203, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [3 x i32], [3 x i32]* %imax340, i32 0, i64 1
  %204 = load i32, i32* %arrayidx341, align 4
  %205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin342 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %205, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [3 x i32], [3 x i32]* %imin342, i32 0, i64 1
  %206 = load i32, i32* %arrayidx343, align 4
  %sub344 = sub nsw i32 %204, %206
  %add345 = add nsw i32 %sub344, 1
  %cmp346 = icmp slt i32 0, %add345
  br i1 %cmp346, label %cond.true.347, label %cond.false.354

cond.true.347:                                    ; preds = %cond.end.324
  %207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax348 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %207, i32 0, i32 1
  %arrayidx349 = getelementptr inbounds [3 x i32], [3 x i32]* %imax348, i32 0, i64 1
  %208 = load i32, i32* %arrayidx349, align 4
  %209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin350 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %209, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [3 x i32], [3 x i32]* %imin350, i32 0, i64 1
  %210 = load i32, i32* %arrayidx351, align 4
  %sub352 = sub nsw i32 %208, %210
  %add353 = add nsw i32 %sub352, 1
  br label %cond.end.355

cond.false.354:                                   ; preds = %cond.end.324
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.354, %cond.true.347
  %cond356 = phi i32 [ %add353, %cond.true.347 ], [ 0, %cond.false.354 ]
  %mul357 = mul nsw i32 %sub339, %cond356
  %add358 = add nsw i32 %sub335, %mul357
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax359 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i32 0, i32 1
  %arrayidx360 = getelementptr inbounds [3 x i32], [3 x i32]* %imax359, i32 0, i64 0
  %212 = load i32, i32* %arrayidx360, align 4
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin361 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %213, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [3 x i32], [3 x i32]* %imin361, i32 0, i64 0
  %214 = load i32, i32* %arrayidx362, align 4
  %sub363 = sub nsw i32 %212, %214
  %add364 = add nsw i32 %sub363, 1
  %cmp365 = icmp slt i32 0, %add364
  br i1 %cmp365, label %cond.true.366, label %cond.false.373

cond.true.366:                                    ; preds = %cond.end.355
  %215 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax367 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %215, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [3 x i32], [3 x i32]* %imax367, i32 0, i64 0
  %216 = load i32, i32* %arrayidx368, align 4
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin369 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [3 x i32], [3 x i32]* %imin369, i32 0, i64 0
  %218 = load i32, i32* %arrayidx370, align 4
  %sub371 = sub nsw i32 %216, %218
  %add372 = add nsw i32 %sub371, 1
  br label %cond.end.374

cond.false.373:                                   ; preds = %cond.end.355
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.false.373, %cond.true.366
  %cond375 = phi i32 [ %add372, %cond.true.366 ], [ 0, %cond.false.373 ]
  %mul376 = mul nsw i32 %add358, %cond375
  %add377 = add nsw i32 %sub331, %mul376
  store i32 %add377, i32* %hypre__i3start, align 4
  %219 = load i32*, i32** %cstart, align 8
  %arrayidx378 = getelementptr inbounds i32, i32* %219, i64 0
  %220 = load i32, i32* %arrayidx378, align 4
  %221 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin379 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %221, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [3 x i32], [3 x i32]* %imin379, i32 0, i64 0
  %222 = load i32, i32* %arrayidx380, align 4
  %sub381 = sub nsw i32 %220, %222
  %223 = load i32*, i32** %cstart, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %223, i64 1
  %224 = load i32, i32* %arrayidx382, align 4
  %225 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin383 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %225, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %imin383, i32 0, i64 1
  %226 = load i32, i32* %arrayidx384, align 4
  %sub385 = sub nsw i32 %224, %226
  %227 = load i32*, i32** %cstart, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %227, i64 2
  %228 = load i32, i32* %arrayidx386, align 4
  %229 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin387 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %229, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [3 x i32], [3 x i32]* %imin387, i32 0, i64 2
  %230 = load i32, i32* %arrayidx388, align 4
  %sub389 = sub nsw i32 %228, %230
  %231 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax390 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %231, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %imax390, i32 0, i64 1
  %232 = load i32, i32* %arrayidx391, align 4
  %233 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin392 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %233, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [3 x i32], [3 x i32]* %imin392, i32 0, i64 1
  %234 = load i32, i32* %arrayidx393, align 4
  %sub394 = sub nsw i32 %232, %234
  %add395 = add nsw i32 %sub394, 1
  %cmp396 = icmp slt i32 0, %add395
  br i1 %cmp396, label %cond.true.397, label %cond.false.404

cond.true.397:                                    ; preds = %cond.end.374
  %235 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax398 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %235, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [3 x i32], [3 x i32]* %imax398, i32 0, i64 1
  %236 = load i32, i32* %arrayidx399, align 4
  %237 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin400 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %237, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [3 x i32], [3 x i32]* %imin400, i32 0, i64 1
  %238 = load i32, i32* %arrayidx401, align 4
  %sub402 = sub nsw i32 %236, %238
  %add403 = add nsw i32 %sub402, 1
  br label %cond.end.405

cond.false.404:                                   ; preds = %cond.end.374
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.404, %cond.true.397
  %cond406 = phi i32 [ %add403, %cond.true.397 ], [ 0, %cond.false.404 ]
  %mul407 = mul nsw i32 %sub389, %cond406
  %add408 = add nsw i32 %sub385, %mul407
  %239 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax409 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %239, i32 0, i32 1
  %arrayidx410 = getelementptr inbounds [3 x i32], [3 x i32]* %imax409, i32 0, i64 0
  %240 = load i32, i32* %arrayidx410, align 4
  %241 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin411 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %241, i32 0, i32 0
  %arrayidx412 = getelementptr inbounds [3 x i32], [3 x i32]* %imin411, i32 0, i64 0
  %242 = load i32, i32* %arrayidx412, align 4
  %sub413 = sub nsw i32 %240, %242
  %add414 = add nsw i32 %sub413, 1
  %cmp415 = icmp slt i32 0, %add414
  br i1 %cmp415, label %cond.true.416, label %cond.false.423

cond.true.416:                                    ; preds = %cond.end.405
  %243 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax417 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %243, i32 0, i32 1
  %arrayidx418 = getelementptr inbounds [3 x i32], [3 x i32]* %imax417, i32 0, i64 0
  %244 = load i32, i32* %arrayidx418, align 4
  %245 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin419 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %245, i32 0, i32 0
  %arrayidx420 = getelementptr inbounds [3 x i32], [3 x i32]* %imin419, i32 0, i64 0
  %246 = load i32, i32* %arrayidx420, align 4
  %sub421 = sub nsw i32 %244, %246
  %add422 = add nsw i32 %sub421, 1
  br label %cond.end.424

cond.false.423:                                   ; preds = %cond.end.405
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.423, %cond.true.416
  %cond425 = phi i32 [ %add422, %cond.true.416 ], [ 0, %cond.false.423 ]
  %mul426 = mul nsw i32 %add408, %cond425
  %add427 = add nsw i32 %sub381, %mul426
  store i32 %add427, i32* %hypre__i4start, align 4
  %arrayidx428 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %247 = load i32, i32* %arrayidx428, align 4
  store i32 %247, i32* %hypre__sx1, align 4
  %arrayidx429 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %248 = load i32, i32* %arrayidx429, align 4
  %249 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax430 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %249, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [3 x i32], [3 x i32]* %imax430, i32 0, i64 0
  %250 = load i32, i32* %arrayidx431, align 4
  %251 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin432 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %251, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [3 x i32], [3 x i32]* %imin432, i32 0, i64 0
  %252 = load i32, i32* %arrayidx433, align 4
  %sub434 = sub nsw i32 %250, %252
  %add435 = add nsw i32 %sub434, 1
  %cmp436 = icmp slt i32 0, %add435
  br i1 %cmp436, label %cond.true.437, label %cond.false.444

cond.true.437:                                    ; preds = %cond.end.424
  %253 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax438 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %253, i32 0, i32 1
  %arrayidx439 = getelementptr inbounds [3 x i32], [3 x i32]* %imax438, i32 0, i64 0
  %254 = load i32, i32* %arrayidx439, align 4
  %255 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin440 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %255, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [3 x i32], [3 x i32]* %imin440, i32 0, i64 0
  %256 = load i32, i32* %arrayidx441, align 4
  %sub442 = sub nsw i32 %254, %256
  %add443 = add nsw i32 %sub442, 1
  br label %cond.end.445

cond.false.444:                                   ; preds = %cond.end.424
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.444, %cond.true.437
  %cond446 = phi i32 [ %add443, %cond.true.437 ], [ 0, %cond.false.444 ]
  %mul447 = mul nsw i32 %248, %cond446
  store i32 %mul447, i32* %hypre__sy1, align 4
  %arrayidx448 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %257 = load i32, i32* %arrayidx448, align 4
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax449 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %258, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %imax449, i32 0, i64 0
  %259 = load i32, i32* %arrayidx450, align 4
  %260 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin451 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %260, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [3 x i32], [3 x i32]* %imin451, i32 0, i64 0
  %261 = load i32, i32* %arrayidx452, align 4
  %sub453 = sub nsw i32 %259, %261
  %add454 = add nsw i32 %sub453, 1
  %cmp455 = icmp slt i32 0, %add454
  br i1 %cmp455, label %cond.true.456, label %cond.false.463

cond.true.456:                                    ; preds = %cond.end.445
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax457 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [3 x i32], [3 x i32]* %imax457, i32 0, i64 0
  %263 = load i32, i32* %arrayidx458, align 4
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin459 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [3 x i32], [3 x i32]* %imin459, i32 0, i64 0
  %265 = load i32, i32* %arrayidx460, align 4
  %sub461 = sub nsw i32 %263, %265
  %add462 = add nsw i32 %sub461, 1
  br label %cond.end.464

cond.false.463:                                   ; preds = %cond.end.445
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.463, %cond.true.456
  %cond465 = phi i32 [ %add462, %cond.true.456 ], [ 0, %cond.false.463 ]
  %mul466 = mul nsw i32 %257, %cond465
  %266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax467 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %266, i32 0, i32 1
  %arrayidx468 = getelementptr inbounds [3 x i32], [3 x i32]* %imax467, i32 0, i64 1
  %267 = load i32, i32* %arrayidx468, align 4
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin469 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %imin469, i32 0, i64 1
  %269 = load i32, i32* %arrayidx470, align 4
  %sub471 = sub nsw i32 %267, %269
  %add472 = add nsw i32 %sub471, 1
  %cmp473 = icmp slt i32 0, %add472
  br i1 %cmp473, label %cond.true.474, label %cond.false.481

cond.true.474:                                    ; preds = %cond.end.464
  %270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %270, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %imax475, i32 0, i64 1
  %271 = load i32, i32* %arrayidx476, align 4
  %272 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %272, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %imin477, i32 0, i64 1
  %273 = load i32, i32* %arrayidx478, align 4
  %sub479 = sub nsw i32 %271, %273
  %add480 = add nsw i32 %sub479, 1
  br label %cond.end.482

cond.false.481:                                   ; preds = %cond.end.464
  br label %cond.end.482

cond.end.482:                                     ; preds = %cond.false.481, %cond.true.474
  %cond483 = phi i32 [ %add480, %cond.true.474 ], [ 0, %cond.false.481 ]
  %mul484 = mul nsw i32 %mul466, %cond483
  store i32 %mul484, i32* %hypre__sz1, align 4
  %arrayidx485 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %274 = load i32, i32* %arrayidx485, align 4
  store i32 %274, i32* %hypre__sx2, align 4
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %275 = load i32, i32* %arrayidx486, align 4
  %276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax487 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %276, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [3 x i32], [3 x i32]* %imax487, i32 0, i64 0
  %277 = load i32, i32* %arrayidx488, align 4
  %278 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin489 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %278, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [3 x i32], [3 x i32]* %imin489, i32 0, i64 0
  %279 = load i32, i32* %arrayidx490, align 4
  %sub491 = sub nsw i32 %277, %279
  %add492 = add nsw i32 %sub491, 1
  %cmp493 = icmp slt i32 0, %add492
  br i1 %cmp493, label %cond.true.494, label %cond.false.501

cond.true.494:                                    ; preds = %cond.end.482
  %280 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax495 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %280, i32 0, i32 1
  %arrayidx496 = getelementptr inbounds [3 x i32], [3 x i32]* %imax495, i32 0, i64 0
  %281 = load i32, i32* %arrayidx496, align 4
  %282 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin497 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %282, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [3 x i32], [3 x i32]* %imin497, i32 0, i64 0
  %283 = load i32, i32* %arrayidx498, align 4
  %sub499 = sub nsw i32 %281, %283
  %add500 = add nsw i32 %sub499, 1
  br label %cond.end.502

cond.false.501:                                   ; preds = %cond.end.482
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.501, %cond.true.494
  %cond503 = phi i32 [ %add500, %cond.true.494 ], [ 0, %cond.false.501 ]
  %mul504 = mul nsw i32 %275, %cond503
  store i32 %mul504, i32* %hypre__sy2, align 4
  %arrayidx505 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %284 = load i32, i32* %arrayidx505, align 4
  %285 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax506 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %285, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [3 x i32], [3 x i32]* %imax506, i32 0, i64 0
  %286 = load i32, i32* %arrayidx507, align 4
  %287 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin508 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %287, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [3 x i32], [3 x i32]* %imin508, i32 0, i64 0
  %288 = load i32, i32* %arrayidx509, align 4
  %sub510 = sub nsw i32 %286, %288
  %add511 = add nsw i32 %sub510, 1
  %cmp512 = icmp slt i32 0, %add511
  br i1 %cmp512, label %cond.true.513, label %cond.false.520

cond.true.513:                                    ; preds = %cond.end.502
  %289 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax514 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %289, i32 0, i32 1
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %imax514, i32 0, i64 0
  %290 = load i32, i32* %arrayidx515, align 4
  %291 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin516 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %291, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [3 x i32], [3 x i32]* %imin516, i32 0, i64 0
  %292 = load i32, i32* %arrayidx517, align 4
  %sub518 = sub nsw i32 %290, %292
  %add519 = add nsw i32 %sub518, 1
  br label %cond.end.521

cond.false.520:                                   ; preds = %cond.end.502
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.520, %cond.true.513
  %cond522 = phi i32 [ %add519, %cond.true.513 ], [ 0, %cond.false.520 ]
  %mul523 = mul nsw i32 %284, %cond522
  %293 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax524 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %293, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %imax524, i32 0, i64 1
  %294 = load i32, i32* %arrayidx525, align 4
  %295 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %295, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imin526, i32 0, i64 1
  %296 = load i32, i32* %arrayidx527, align 4
  %sub528 = sub nsw i32 %294, %296
  %add529 = add nsw i32 %sub528, 1
  %cmp530 = icmp slt i32 0, %add529
  br i1 %cmp530, label %cond.true.531, label %cond.false.538

cond.true.531:                                    ; preds = %cond.end.521
  %297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax532 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %297, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %imax532, i32 0, i64 1
  %298 = load i32, i32* %arrayidx533, align 4
  %299 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %299, i32 0, i32 0
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %imin534, i32 0, i64 1
  %300 = load i32, i32* %arrayidx535, align 4
  %sub536 = sub nsw i32 %298, %300
  %add537 = add nsw i32 %sub536, 1
  br label %cond.end.539

cond.false.538:                                   ; preds = %cond.end.521
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.538, %cond.true.531
  %cond540 = phi i32 [ %add537, %cond.true.531 ], [ 0, %cond.false.538 ]
  %mul541 = mul nsw i32 %mul523, %cond540
  store i32 %mul541, i32* %hypre__sz2, align 4
  %301 = load i32*, i32** %stridef, align 8
  %arrayidx542 = getelementptr inbounds i32, i32* %301, i64 0
  %302 = load i32, i32* %arrayidx542, align 4
  store i32 %302, i32* %hypre__sx3, align 4
  %303 = load i32*, i32** %stridef, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %303, i64 1
  %304 = load i32, i32* %arrayidx543, align 4
  %305 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax544 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %305, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [3 x i32], [3 x i32]* %imax544, i32 0, i64 0
  %306 = load i32, i32* %arrayidx545, align 4
  %307 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin546 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %307, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [3 x i32], [3 x i32]* %imin546, i32 0, i64 0
  %308 = load i32, i32* %arrayidx547, align 4
  %sub548 = sub nsw i32 %306, %308
  %add549 = add nsw i32 %sub548, 1
  %cmp550 = icmp slt i32 0, %add549
  br i1 %cmp550, label %cond.true.551, label %cond.false.558

cond.true.551:                                    ; preds = %cond.end.539
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax552 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i32 0, i32 1
  %arrayidx553 = getelementptr inbounds [3 x i32], [3 x i32]* %imax552, i32 0, i64 0
  %310 = load i32, i32* %arrayidx553, align 4
  %311 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin554 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %311, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [3 x i32], [3 x i32]* %imin554, i32 0, i64 0
  %312 = load i32, i32* %arrayidx555, align 4
  %sub556 = sub nsw i32 %310, %312
  %add557 = add nsw i32 %sub556, 1
  br label %cond.end.559

cond.false.558:                                   ; preds = %cond.end.539
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.558, %cond.true.551
  %cond560 = phi i32 [ %add557, %cond.true.551 ], [ 0, %cond.false.558 ]
  %mul561 = mul nsw i32 %304, %cond560
  store i32 %mul561, i32* %hypre__sy3, align 4
  %313 = load i32*, i32** %stridef, align 8
  %arrayidx562 = getelementptr inbounds i32, i32* %313, i64 2
  %314 = load i32, i32* %arrayidx562, align 4
  %315 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax563 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %315, i32 0, i32 1
  %arrayidx564 = getelementptr inbounds [3 x i32], [3 x i32]* %imax563, i32 0, i64 0
  %316 = load i32, i32* %arrayidx564, align 4
  %317 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin565 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %317, i32 0, i32 0
  %arrayidx566 = getelementptr inbounds [3 x i32], [3 x i32]* %imin565, i32 0, i64 0
  %318 = load i32, i32* %arrayidx566, align 4
  %sub567 = sub nsw i32 %316, %318
  %add568 = add nsw i32 %sub567, 1
  %cmp569 = icmp slt i32 0, %add568
  br i1 %cmp569, label %cond.true.570, label %cond.false.577

cond.true.570:                                    ; preds = %cond.end.559
  %319 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax571 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %319, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [3 x i32], [3 x i32]* %imax571, i32 0, i64 0
  %320 = load i32, i32* %arrayidx572, align 4
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin573 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %321, i32 0, i32 0
  %arrayidx574 = getelementptr inbounds [3 x i32], [3 x i32]* %imin573, i32 0, i64 0
  %322 = load i32, i32* %arrayidx574, align 4
  %sub575 = sub nsw i32 %320, %322
  %add576 = add nsw i32 %sub575, 1
  br label %cond.end.578

cond.false.577:                                   ; preds = %cond.end.559
  br label %cond.end.578

cond.end.578:                                     ; preds = %cond.false.577, %cond.true.570
  %cond579 = phi i32 [ %add576, %cond.true.570 ], [ 0, %cond.false.577 ]
  %mul580 = mul nsw i32 %314, %cond579
  %323 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax581 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %323, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [3 x i32], [3 x i32]* %imax581, i32 0, i64 1
  %324 = load i32, i32* %arrayidx582, align 4
  %325 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin583 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %325, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %imin583, i32 0, i64 1
  %326 = load i32, i32* %arrayidx584, align 4
  %sub585 = sub nsw i32 %324, %326
  %add586 = add nsw i32 %sub585, 1
  %cmp587 = icmp slt i32 0, %add586
  br i1 %cmp587, label %cond.true.588, label %cond.false.595

cond.true.588:                                    ; preds = %cond.end.578
  %327 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax589 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %327, i32 0, i32 1
  %arrayidx590 = getelementptr inbounds [3 x i32], [3 x i32]* %imax589, i32 0, i64 1
  %328 = load i32, i32* %arrayidx590, align 4
  %329 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin591 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %329, i32 0, i32 0
  %arrayidx592 = getelementptr inbounds [3 x i32], [3 x i32]* %imin591, i32 0, i64 1
  %330 = load i32, i32* %arrayidx592, align 4
  %sub593 = sub nsw i32 %328, %330
  %add594 = add nsw i32 %sub593, 1
  br label %cond.end.596

cond.false.595:                                   ; preds = %cond.end.578
  br label %cond.end.596

cond.end.596:                                     ; preds = %cond.false.595, %cond.true.588
  %cond597 = phi i32 [ %add594, %cond.true.588 ], [ 0, %cond.false.595 ]
  %mul598 = mul nsw i32 %mul580, %cond597
  store i32 %mul598, i32* %hypre__sz3, align 4
  %arrayidx599 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %331 = load i32, i32* %arrayidx599, align 4
  store i32 %331, i32* %hypre__sx4, align 4
  %arrayidx600 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %332 = load i32, i32* %arrayidx600, align 4
  %333 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax601 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %333, i32 0, i32 1
  %arrayidx602 = getelementptr inbounds [3 x i32], [3 x i32]* %imax601, i32 0, i64 0
  %334 = load i32, i32* %arrayidx602, align 4
  %335 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin603 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %335, i32 0, i32 0
  %arrayidx604 = getelementptr inbounds [3 x i32], [3 x i32]* %imin603, i32 0, i64 0
  %336 = load i32, i32* %arrayidx604, align 4
  %sub605 = sub nsw i32 %334, %336
  %add606 = add nsw i32 %sub605, 1
  %cmp607 = icmp slt i32 0, %add606
  br i1 %cmp607, label %cond.true.608, label %cond.false.615

cond.true.608:                                    ; preds = %cond.end.596
  %337 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax609 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %337, i32 0, i32 1
  %arrayidx610 = getelementptr inbounds [3 x i32], [3 x i32]* %imax609, i32 0, i64 0
  %338 = load i32, i32* %arrayidx610, align 4
  %339 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin611 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %339, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [3 x i32], [3 x i32]* %imin611, i32 0, i64 0
  %340 = load i32, i32* %arrayidx612, align 4
  %sub613 = sub nsw i32 %338, %340
  %add614 = add nsw i32 %sub613, 1
  br label %cond.end.616

cond.false.615:                                   ; preds = %cond.end.596
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.false.615, %cond.true.608
  %cond617 = phi i32 [ %add614, %cond.true.608 ], [ 0, %cond.false.615 ]
  %mul618 = mul nsw i32 %332, %cond617
  store i32 %mul618, i32* %hypre__sy4, align 4
  %arrayidx619 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %341 = load i32, i32* %arrayidx619, align 4
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax620 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [3 x i32], [3 x i32]* %imax620, i32 0, i64 0
  %343 = load i32, i32* %arrayidx621, align 4
  %344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin622 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %344, i32 0, i32 0
  %arrayidx623 = getelementptr inbounds [3 x i32], [3 x i32]* %imin622, i32 0, i64 0
  %345 = load i32, i32* %arrayidx623, align 4
  %sub624 = sub nsw i32 %343, %345
  %add625 = add nsw i32 %sub624, 1
  %cmp626 = icmp slt i32 0, %add625
  br i1 %cmp626, label %cond.true.627, label %cond.false.634

cond.true.627:                                    ; preds = %cond.end.616
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax628 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [3 x i32], [3 x i32]* %imax628, i32 0, i64 0
  %347 = load i32, i32* %arrayidx629, align 4
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin630 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [3 x i32], [3 x i32]* %imin630, i32 0, i64 0
  %349 = load i32, i32* %arrayidx631, align 4
  %sub632 = sub nsw i32 %347, %349
  %add633 = add nsw i32 %sub632, 1
  br label %cond.end.635

cond.false.634:                                   ; preds = %cond.end.616
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.634, %cond.true.627
  %cond636 = phi i32 [ %add633, %cond.true.627 ], [ 0, %cond.false.634 ]
  %mul637 = mul nsw i32 %341, %cond636
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax638 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 1
  %arrayidx639 = getelementptr inbounds [3 x i32], [3 x i32]* %imax638, i32 0, i64 1
  %351 = load i32, i32* %arrayidx639, align 4
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin640 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %352, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [3 x i32], [3 x i32]* %imin640, i32 0, i64 1
  %353 = load i32, i32* %arrayidx641, align 4
  %sub642 = sub nsw i32 %351, %353
  %add643 = add nsw i32 %sub642, 1
  %cmp644 = icmp slt i32 0, %add643
  br i1 %cmp644, label %cond.true.645, label %cond.false.652

cond.true.645:                                    ; preds = %cond.end.635
  %354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %354, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [3 x i32], [3 x i32]* %imax646, i32 0, i64 1
  %355 = load i32, i32* %arrayidx647, align 4
  %356 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin648 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %356, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [3 x i32], [3 x i32]* %imin648, i32 0, i64 1
  %357 = load i32, i32* %arrayidx649, align 4
  %sub650 = sub nsw i32 %355, %357
  %add651 = add nsw i32 %sub650, 1
  br label %cond.end.653

cond.false.652:                                   ; preds = %cond.end.635
  br label %cond.end.653

cond.end.653:                                     ; preds = %cond.false.652, %cond.true.645
  %cond654 = phi i32 [ %add651, %cond.true.645 ], [ 0, %cond.false.652 ]
  %mul655 = mul nsw i32 %mul637, %cond654
  store i32 %mul655, i32* %hypre__sz4, align 4
  %arrayidx656 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %358 = load i32, i32* %arrayidx656, align 4
  store i32 %358, i32* %hypre__nx, align 4
  %arrayidx657 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %359 = load i32, i32* %arrayidx657, align 4
  store i32 %359, i32* %hypre__ny, align 4
  %arrayidx658 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %360 = load i32, i32* %arrayidx658, align 4
  store i32 %360, i32* %hypre__nz, align 4
  %361 = load i32, i32* %hypre__nx, align 4
  store i32 %361, i32* %hypre__mx, align 4
  %362 = load i32, i32* %hypre__ny, align 4
  store i32 %362, i32* %hypre__my, align 4
  %363 = load i32, i32* %hypre__nz, align 4
  store i32 %363, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %364 = load i32, i32* %hypre__nx, align 4
  store i32 %364, i32* %hypre__max, align 4
  %365 = load i32, i32* %hypre__ny, align 4
  %366 = load i32, i32* %hypre__max, align 4
  %cmp659 = icmp sgt i32 %365, %366
  br i1 %cmp659, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %cond.end.653
  store i32 1, i32* %hypre__dir, align 4
  %367 = load i32, i32* %hypre__ny, align 4
  store i32 %367, i32* %hypre__max, align 4
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.660, %cond.end.653
  %368 = load i32, i32* %hypre__nz, align 4
  %369 = load i32, i32* %hypre__max, align 4
  %cmp662 = icmp sgt i32 %368, %369
  br i1 %cmp662, label %if.then.663, label %if.end.664

if.then.663:                                      ; preds = %if.end.661
  store i32 2, i32* %hypre__dir, align 4
  %370 = load i32, i32* %hypre__nz, align 4
  store i32 %370, i32* %hypre__max, align 4
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.663, %if.end.661
  store i32 1, i32* %hypre__num_blocks, align 4
  %371 = load i32, i32* %hypre__max, align 4
  %372 = load i32, i32* %hypre__num_blocks, align 4
  %cmp665 = icmp slt i32 %371, %372
  br i1 %cmp665, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %if.end.664
  %373 = load i32, i32* %hypre__max, align 4
  store i32 %373, i32* %hypre__num_blocks, align 4
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.666, %if.end.664
  %374 = load i32, i32* %hypre__num_blocks, align 4
  %cmp668 = icmp sgt i32 %374, 0
  br i1 %cmp668, label %if.then.669, label %if.end.670

if.then.669:                                      ; preds = %if.end.667
  %375 = load i32, i32* %hypre__max, align 4
  %376 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %375, %376
  store i32 %div, i32* %hypre__div, align 4
  %377 = load i32, i32* %hypre__max, align 4
  %378 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %377, %378
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.670

if.end.670:                                       ; preds = %if.then.669, %if.end.667
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.671

for.cond.671:                                     ; preds = %for.inc.857, %if.end.670
  %379 = load i32, i32* %hypre__block, align 4
  %380 = load i32, i32* %hypre__num_blocks, align 4
  %cmp672 = icmp slt i32 %379, %380
  br i1 %cmp672, label %for.body.673, label %for.end.859

for.body.673:                                     ; preds = %for.cond.671
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %381 = load i32, i32* %hypre__mx, align 4
  store i32 %381, i32* %hypre__nx, align 4
  %382 = load i32, i32* %hypre__my, align 4
  store i32 %382, i32* %hypre__ny, align 4
  %383 = load i32, i32* %hypre__mz, align 4
  store i32 %383, i32* %hypre__nz, align 4
  %384 = load i32, i32* %hypre__num_blocks, align 4
  %cmp674 = icmp sgt i32 %384, 1
  br i1 %cmp674, label %if.then.675, label %if.end.716

if.then.675:                                      ; preds = %for.body.673
  %385 = load i32, i32* %hypre__dir, align 4
  %cmp676 = icmp eq i32 %385, 0
  br i1 %cmp676, label %if.then.677, label %if.else

if.then.677:                                      ; preds = %if.then.675
  %386 = load i32, i32* %hypre__block, align 4
  %387 = load i32, i32* %hypre__div, align 4
  %mul678 = mul nsw i32 %386, %387
  %388 = load i32, i32* %hypre__mod, align 4
  %389 = load i32, i32* %hypre__block, align 4
  %cmp679 = icmp slt i32 %388, %389
  br i1 %cmp679, label %cond.true.680, label %cond.false.681

cond.true.680:                                    ; preds = %if.then.677
  %390 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.682

cond.false.681:                                   ; preds = %if.then.677
  %391 = load i32, i32* %hypre__block, align 4
  br label %cond.end.682

cond.end.682:                                     ; preds = %cond.false.681, %cond.true.680
  %cond683 = phi i32 [ %390, %cond.true.680 ], [ %391, %cond.false.681 ]
  %add684 = add nsw i32 %mul678, %cond683
  store i32 %add684, i32* %loopi, align 4
  %392 = load i32, i32* %hypre__div, align 4
  %393 = load i32, i32* %hypre__mod, align 4
  %394 = load i32, i32* %hypre__block, align 4
  %cmp685 = icmp sgt i32 %393, %394
  %cond686 = select i1 %cmp685, i32 1, i32 0
  %add687 = add nsw i32 %392, %cond686
  store i32 %add687, i32* %hypre__nx, align 4
  br label %if.end.715

if.else:                                          ; preds = %if.then.675
  %395 = load i32, i32* %hypre__dir, align 4
  %cmp688 = icmp eq i32 %395, 1
  br i1 %cmp688, label %if.then.689, label %if.else.700

if.then.689:                                      ; preds = %if.else
  %396 = load i32, i32* %hypre__block, align 4
  %397 = load i32, i32* %hypre__div, align 4
  %mul690 = mul nsw i32 %396, %397
  %398 = load i32, i32* %hypre__mod, align 4
  %399 = load i32, i32* %hypre__block, align 4
  %cmp691 = icmp slt i32 %398, %399
  br i1 %cmp691, label %cond.true.692, label %cond.false.693

cond.true.692:                                    ; preds = %if.then.689
  %400 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.694

cond.false.693:                                   ; preds = %if.then.689
  %401 = load i32, i32* %hypre__block, align 4
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.false.693, %cond.true.692
  %cond695 = phi i32 [ %400, %cond.true.692 ], [ %401, %cond.false.693 ]
  %add696 = add nsw i32 %mul690, %cond695
  store i32 %add696, i32* %loopj, align 4
  %402 = load i32, i32* %hypre__div, align 4
  %403 = load i32, i32* %hypre__mod, align 4
  %404 = load i32, i32* %hypre__block, align 4
  %cmp697 = icmp sgt i32 %403, %404
  %cond698 = select i1 %cmp697, i32 1, i32 0
  %add699 = add nsw i32 %402, %cond698
  store i32 %add699, i32* %hypre__ny, align 4
  br label %if.end.714

if.else.700:                                      ; preds = %if.else
  %405 = load i32, i32* %hypre__dir, align 4
  %cmp701 = icmp eq i32 %405, 2
  br i1 %cmp701, label %if.then.702, label %if.end.713

if.then.702:                                      ; preds = %if.else.700
  %406 = load i32, i32* %hypre__block, align 4
  %407 = load i32, i32* %hypre__div, align 4
  %mul703 = mul nsw i32 %406, %407
  %408 = load i32, i32* %hypre__mod, align 4
  %409 = load i32, i32* %hypre__block, align 4
  %cmp704 = icmp slt i32 %408, %409
  br i1 %cmp704, label %cond.true.705, label %cond.false.706

cond.true.705:                                    ; preds = %if.then.702
  %410 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.707

cond.false.706:                                   ; preds = %if.then.702
  %411 = load i32, i32* %hypre__block, align 4
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.false.706, %cond.true.705
  %cond708 = phi i32 [ %410, %cond.true.705 ], [ %411, %cond.false.706 ]
  %add709 = add nsw i32 %mul703, %cond708
  store i32 %add709, i32* %loopk, align 4
  %412 = load i32, i32* %hypre__div, align 4
  %413 = load i32, i32* %hypre__mod, align 4
  %414 = load i32, i32* %hypre__block, align 4
  %cmp710 = icmp sgt i32 %413, %414
  %cond711 = select i1 %cmp710, i32 1, i32 0
  %add712 = add nsw i32 %412, %cond711
  store i32 %add712, i32* %hypre__nz, align 4
  br label %if.end.713

if.end.713:                                       ; preds = %cond.end.707, %if.else.700
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %cond.end.694
  br label %if.end.715

if.end.715:                                       ; preds = %if.end.714, %cond.end.682
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.715, %for.body.673
  %415 = load i32, i32* %hypre__i1start, align 4
  %416 = load i32, i32* %loopi, align 4
  %417 = load i32, i32* %hypre__sx1, align 4
  %mul717 = mul nsw i32 %416, %417
  %add718 = add nsw i32 %415, %mul717
  %418 = load i32, i32* %loopj, align 4
  %419 = load i32, i32* %hypre__sy1, align 4
  %mul719 = mul nsw i32 %418, %419
  %add720 = add nsw i32 %add718, %mul719
  %420 = load i32, i32* %loopk, align 4
  %421 = load i32, i32* %hypre__sz1, align 4
  %mul721 = mul nsw i32 %420, %421
  %add722 = add nsw i32 %add720, %mul721
  store i32 %add722, i32* %iP, align 4
  %422 = load i32, i32* %hypre__i2start, align 4
  %423 = load i32, i32* %loopi, align 4
  %424 = load i32, i32* %hypre__sx2, align 4
  %mul723 = mul nsw i32 %423, %424
  %add724 = add nsw i32 %422, %mul723
  %425 = load i32, i32* %loopj, align 4
  %426 = load i32, i32* %hypre__sy2, align 4
  %mul725 = mul nsw i32 %425, %426
  %add726 = add nsw i32 %add724, %mul725
  %427 = load i32, i32* %loopk, align 4
  %428 = load i32, i32* %hypre__sz2, align 4
  %mul727 = mul nsw i32 %427, %428
  %add728 = add nsw i32 %add726, %mul727
  store i32 %add728, i32* %iR, align 4
  %429 = load i32, i32* %hypre__i3start, align 4
  %430 = load i32, i32* %loopi, align 4
  %431 = load i32, i32* %hypre__sx3, align 4
  %mul729 = mul nsw i32 %430, %431
  %add730 = add nsw i32 %429, %mul729
  %432 = load i32, i32* %loopj, align 4
  %433 = load i32, i32* %hypre__sy3, align 4
  %mul731 = mul nsw i32 %432, %433
  %add732 = add nsw i32 %add730, %mul731
  %434 = load i32, i32* %loopk, align 4
  %435 = load i32, i32* %hypre__sz3, align 4
  %mul733 = mul nsw i32 %434, %435
  %add734 = add nsw i32 %add732, %mul733
  store i32 %add734, i32* %iA, align 4
  %436 = load i32, i32* %hypre__i4start, align 4
  %437 = load i32, i32* %loopi, align 4
  %438 = load i32, i32* %hypre__sx4, align 4
  %mul735 = mul nsw i32 %437, %438
  %add736 = add nsw i32 %436, %mul735
  %439 = load i32, i32* %loopj, align 4
  %440 = load i32, i32* %hypre__sy4, align 4
  %mul737 = mul nsw i32 %439, %440
  %add738 = add nsw i32 %add736, %mul737
  %441 = load i32, i32* %loopk, align 4
  %442 = load i32, i32* %hypre__sz4, align 4
  %mul739 = mul nsw i32 %441, %442
  %add740 = add nsw i32 %add738, %mul739
  store i32 %add740, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.741

for.cond.741:                                     ; preds = %for.inc.854, %if.end.716
  %443 = load i32, i32* %loopk, align 4
  %444 = load i32, i32* %hypre__nz, align 4
  %cmp742 = icmp slt i32 %443, %444
  br i1 %cmp742, label %for.body.743, label %for.end.856

for.body.743:                                     ; preds = %for.cond.741
  store i32 0, i32* %loopj, align 4
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.839, %for.body.743
  %445 = load i32, i32* %loopj, align 4
  %446 = load i32, i32* %hypre__ny, align 4
  %cmp745 = icmp slt i32 %445, %446
  br i1 %cmp745, label %for.body.746, label %for.end.841

for.body.746:                                     ; preds = %for.cond.744
  store i32 0, i32* %loopi, align 4
  br label %for.cond.747

for.cond.747:                                     ; preds = %for.inc, %for.body.746
  %447 = load i32, i32* %loopi, align 4
  %448 = load i32, i32* %hypre__nx, align 4
  %cmp748 = icmp slt i32 %447, %448
  br i1 %cmp748, label %for.body.749, label %for.end

for.body.749:                                     ; preds = %for.cond.747
  %449 = load i32, i32* %iA, align 4
  %450 = load i32, i32* %yOffsetA, align 4
  %sub750 = sub nsw i32 %449, %450
  store i32 %sub750, i32* %iAm1, align 4
  %451 = load i32, i32* %iA, align 4
  %452 = load i32, i32* %yOffsetA, align 4
  %add751 = add nsw i32 %451, %452
  store i32 %add751, i32* %iAp1, align 4
  %453 = load i32, i32* %iP, align 4
  %454 = load i32, i32* %yOffsetP, align 4
  %add752 = add nsw i32 %453, %454
  %455 = load i32, i32* %xOffsetP, align 4
  %add753 = add nsw i32 %add752, %455
  store i32 %add753, i32* %iP1, align 4
  %456 = load i32, i32* %iR, align 4
  %idxprom754 = sext i32 %456 to i64
  %457 = load double*, double** %ra, align 8
  %arrayidx755 = getelementptr inbounds double, double* %457, i64 %idxprom754
  %458 = load double, double* %arrayidx755, align 8
  %459 = load i32, i32* %iAp1, align 4
  %idxprom756 = sext i32 %459 to i64
  %460 = load double*, double** %a_ce, align 8
  %arrayidx757 = getelementptr inbounds double, double* %460, i64 %idxprom756
  %461 = load double, double* %arrayidx757, align 8
  %mul758 = fmul double %458, %461
  %462 = load i32, i32* %iP1, align 4
  %idxprom759 = sext i32 %462 to i64
  %463 = load double*, double** %pb, align 8
  %arrayidx760 = getelementptr inbounds double, double* %463, i64 %idxprom759
  %464 = load double, double* %arrayidx760, align 8
  %mul761 = fmul double %mul758, %464
  %465 = load i32, i32* %iAc, align 4
  %idxprom762 = sext i32 %465 to i64
  %466 = load double*, double** %rap_cne, align 8
  %arrayidx763 = getelementptr inbounds double, double* %466, i64 %idxprom762
  store double %mul761, double* %arrayidx763, align 8
  %467 = load i32, i32* %iP, align 4
  %468 = load i32, i32* %yOffsetP, align 4
  %add764 = add nsw i32 %467, %468
  store i32 %add764, i32* %iP1, align 4
  %469 = load i32, i32* %iR, align 4
  %idxprom765 = sext i32 %469 to i64
  %470 = load double*, double** %ra, align 8
  %arrayidx766 = getelementptr inbounds double, double* %470, i64 %idxprom765
  %471 = load double, double* %arrayidx766, align 8
  %472 = load i32, i32* %iAp1, align 4
  %idxprom767 = sext i32 %472 to i64
  %473 = load double*, double** %a_cc, align 8
  %arrayidx768 = getelementptr inbounds double, double* %473, i64 %idxprom767
  %474 = load double, double* %arrayidx768, align 8
  %mul769 = fmul double %471, %474
  %475 = load i32, i32* %iP1, align 4
  %idxprom770 = sext i32 %475 to i64
  %476 = load double*, double** %pb, align 8
  %arrayidx771 = getelementptr inbounds double, double* %476, i64 %idxprom770
  %477 = load double, double* %arrayidx771, align 8
  %mul772 = fmul double %mul769, %477
  %478 = load i32, i32* %iR, align 4
  %idxprom773 = sext i32 %478 to i64
  %479 = load double*, double** %ra, align 8
  %arrayidx774 = getelementptr inbounds double, double* %479, i64 %idxprom773
  %480 = load double, double* %arrayidx774, align 8
  %481 = load i32, i32* %iAp1, align 4
  %idxprom775 = sext i32 %481 to i64
  %482 = load double*, double** %a_cn, align 8
  %arrayidx776 = getelementptr inbounds double, double* %482, i64 %idxprom775
  %483 = load double, double* %arrayidx776, align 8
  %mul777 = fmul double %480, %483
  %add778 = fadd double %mul772, %mul777
  %484 = load i32, i32* %iA, align 4
  %idxprom779 = sext i32 %484 to i64
  %485 = load double*, double** %a_cn, align 8
  %arrayidx780 = getelementptr inbounds double, double* %485, i64 %idxprom779
  %486 = load double, double* %arrayidx780, align 8
  %487 = load i32, i32* %iP1, align 4
  %idxprom781 = sext i32 %487 to i64
  %488 = load double*, double** %pb, align 8
  %arrayidx782 = getelementptr inbounds double, double* %488, i64 %idxprom781
  %489 = load double, double* %arrayidx782, align 8
  %mul783 = fmul double %486, %489
  %add784 = fadd double %add778, %mul783
  %490 = load i32, i32* %iAc, align 4
  %idxprom785 = sext i32 %490 to i64
  %491 = load double*, double** %rap_cn, align 8
  %arrayidx786 = getelementptr inbounds double, double* %491, i64 %idxprom785
  store double %add784, double* %arrayidx786, align 8
  %492 = load i32, i32* %iP, align 4
  %493 = load i32, i32* %yOffsetP, align 4
  %add787 = add nsw i32 %492, %493
  %494 = load i32, i32* %xOffsetP, align 4
  %sub788 = sub nsw i32 %add787, %494
  store i32 %sub788, i32* %iP1, align 4
  %495 = load i32, i32* %iR, align 4
  %idxprom789 = sext i32 %495 to i64
  %496 = load double*, double** %ra, align 8
  %arrayidx790 = getelementptr inbounds double, double* %496, i64 %idxprom789
  %497 = load double, double* %arrayidx790, align 8
  %498 = load i32, i32* %iAp1, align 4
  %idxprom791 = sext i32 %498 to i64
  %499 = load double*, double** %a_cw, align 8
  %arrayidx792 = getelementptr inbounds double, double* %499, i64 %idxprom791
  %500 = load double, double* %arrayidx792, align 8
  %mul793 = fmul double %497, %500
  %501 = load i32, i32* %iP1, align 4
  %idxprom794 = sext i32 %501 to i64
  %502 = load double*, double** %pb, align 8
  %arrayidx795 = getelementptr inbounds double, double* %502, i64 %idxprom794
  %503 = load double, double* %arrayidx795, align 8
  %mul796 = fmul double %mul793, %503
  %504 = load i32, i32* %iAc, align 4
  %idxprom797 = sext i32 %504 to i64
  %505 = load double*, double** %rap_cnw, align 8
  %arrayidx798 = getelementptr inbounds double, double* %505, i64 %idxprom797
  store double %mul796, double* %arrayidx798, align 8
  %506 = load i32, i32* %iP, align 4
  %507 = load i32, i32* %xOffsetP, align 4
  %add799 = add nsw i32 %506, %507
  store i32 %add799, i32* %iP1, align 4
  %508 = load i32, i32* %iA, align 4
  %idxprom800 = sext i32 %508 to i64
  %509 = load double*, double** %a_ce, align 8
  %arrayidx801 = getelementptr inbounds double, double* %509, i64 %idxprom800
  %510 = load double, double* %arrayidx801, align 8
  %511 = load i32, i32* %iR, align 4
  %idxprom802 = sext i32 %511 to i64
  %512 = load double*, double** %rb, align 8
  %arrayidx803 = getelementptr inbounds double, double* %512, i64 %idxprom802
  %513 = load double, double* %arrayidx803, align 8
  %514 = load i32, i32* %iAm1, align 4
  %idxprom804 = sext i32 %514 to i64
  %515 = load double*, double** %a_ce, align 8
  %arrayidx805 = getelementptr inbounds double, double* %515, i64 %idxprom804
  %516 = load double, double* %arrayidx805, align 8
  %mul806 = fmul double %513, %516
  %517 = load i32, i32* %iP1, align 4
  %idxprom807 = sext i32 %517 to i64
  %518 = load double*, double** %pb, align 8
  %arrayidx808 = getelementptr inbounds double, double* %518, i64 %idxprom807
  %519 = load double, double* %arrayidx808, align 8
  %mul809 = fmul double %mul806, %519
  %add810 = fadd double %510, %mul809
  %520 = load i32, i32* %iR, align 4
  %idxprom811 = sext i32 %520 to i64
  %521 = load double*, double** %ra, align 8
  %arrayidx812 = getelementptr inbounds double, double* %521, i64 %idxprom811
  %522 = load double, double* %arrayidx812, align 8
  %523 = load i32, i32* %iAp1, align 4
  %idxprom813 = sext i32 %523 to i64
  %524 = load double*, double** %a_ce, align 8
  %arrayidx814 = getelementptr inbounds double, double* %524, i64 %idxprom813
  %525 = load double, double* %arrayidx814, align 8
  %mul815 = fmul double %522, %525
  %526 = load i32, i32* %iP1, align 4
  %idxprom816 = sext i32 %526 to i64
  %527 = load double*, double** %pa, align 8
  %arrayidx817 = getelementptr inbounds double, double* %527, i64 %idxprom816
  %528 = load double, double* %arrayidx817, align 8
  %mul818 = fmul double %mul815, %528
  %add819 = fadd double %add810, %mul818
  %529 = load i32, i32* %iAc, align 4
  %idxprom820 = sext i32 %529 to i64
  %530 = load double*, double** %rap_ce, align 8
  %arrayidx821 = getelementptr inbounds double, double* %530, i64 %idxprom820
  store double %add819, double* %arrayidx821, align 8
  %531 = load i32, i32* %hypre__sx1, align 4
  %532 = load i32, i32* %iP, align 4
  %add822 = add nsw i32 %532, %531
  store i32 %add822, i32* %iP, align 4
  %533 = load i32, i32* %hypre__sx2, align 4
  %534 = load i32, i32* %iR, align 4
  %add823 = add nsw i32 %534, %533
  store i32 %add823, i32* %iR, align 4
  %535 = load i32, i32* %hypre__sx3, align 4
  %536 = load i32, i32* %iA, align 4
  %add824 = add nsw i32 %536, %535
  store i32 %add824, i32* %iA, align 4
  %537 = load i32, i32* %hypre__sx4, align 4
  %538 = load i32, i32* %iAc, align 4
  %add825 = add nsw i32 %538, %537
  store i32 %add825, i32* %iAc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.749
  %539 = load i32, i32* %loopi, align 4
  %inc826 = add nsw i32 %539, 1
  store i32 %inc826, i32* %loopi, align 4
  br label %for.cond.747

for.end:                                          ; preds = %for.cond.747
  %540 = load i32, i32* %hypre__sy1, align 4
  %541 = load i32, i32* %hypre__nx, align 4
  %542 = load i32, i32* %hypre__sx1, align 4
  %mul827 = mul nsw i32 %541, %542
  %sub828 = sub nsw i32 %540, %mul827
  %543 = load i32, i32* %iP, align 4
  %add829 = add nsw i32 %543, %sub828
  store i32 %add829, i32* %iP, align 4
  %544 = load i32, i32* %hypre__sy2, align 4
  %545 = load i32, i32* %hypre__nx, align 4
  %546 = load i32, i32* %hypre__sx2, align 4
  %mul830 = mul nsw i32 %545, %546
  %sub831 = sub nsw i32 %544, %mul830
  %547 = load i32, i32* %iR, align 4
  %add832 = add nsw i32 %547, %sub831
  store i32 %add832, i32* %iR, align 4
  %548 = load i32, i32* %hypre__sy3, align 4
  %549 = load i32, i32* %hypre__nx, align 4
  %550 = load i32, i32* %hypre__sx3, align 4
  %mul833 = mul nsw i32 %549, %550
  %sub834 = sub nsw i32 %548, %mul833
  %551 = load i32, i32* %iA, align 4
  %add835 = add nsw i32 %551, %sub834
  store i32 %add835, i32* %iA, align 4
  %552 = load i32, i32* %hypre__sy4, align 4
  %553 = load i32, i32* %hypre__nx, align 4
  %554 = load i32, i32* %hypre__sx4, align 4
  %mul836 = mul nsw i32 %553, %554
  %sub837 = sub nsw i32 %552, %mul836
  %555 = load i32, i32* %iAc, align 4
  %add838 = add nsw i32 %555, %sub837
  store i32 %add838, i32* %iAc, align 4
  br label %for.inc.839

for.inc.839:                                      ; preds = %for.end
  %556 = load i32, i32* %loopj, align 4
  %inc840 = add nsw i32 %556, 1
  store i32 %inc840, i32* %loopj, align 4
  br label %for.cond.744

for.end.841:                                      ; preds = %for.cond.744
  %557 = load i32, i32* %hypre__sz1, align 4
  %558 = load i32, i32* %hypre__ny, align 4
  %559 = load i32, i32* %hypre__sy1, align 4
  %mul842 = mul nsw i32 %558, %559
  %sub843 = sub nsw i32 %557, %mul842
  %560 = load i32, i32* %iP, align 4
  %add844 = add nsw i32 %560, %sub843
  store i32 %add844, i32* %iP, align 4
  %561 = load i32, i32* %hypre__sz2, align 4
  %562 = load i32, i32* %hypre__ny, align 4
  %563 = load i32, i32* %hypre__sy2, align 4
  %mul845 = mul nsw i32 %562, %563
  %sub846 = sub nsw i32 %561, %mul845
  %564 = load i32, i32* %iR, align 4
  %add847 = add nsw i32 %564, %sub846
  store i32 %add847, i32* %iR, align 4
  %565 = load i32, i32* %hypre__sz3, align 4
  %566 = load i32, i32* %hypre__ny, align 4
  %567 = load i32, i32* %hypre__sy3, align 4
  %mul848 = mul nsw i32 %566, %567
  %sub849 = sub nsw i32 %565, %mul848
  %568 = load i32, i32* %iA, align 4
  %add850 = add nsw i32 %568, %sub849
  store i32 %add850, i32* %iA, align 4
  %569 = load i32, i32* %hypre__sz4, align 4
  %570 = load i32, i32* %hypre__ny, align 4
  %571 = load i32, i32* %hypre__sy4, align 4
  %mul851 = mul nsw i32 %570, %571
  %sub852 = sub nsw i32 %569, %mul851
  %572 = load i32, i32* %iAc, align 4
  %add853 = add nsw i32 %572, %sub852
  store i32 %add853, i32* %iAc, align 4
  br label %for.inc.854

for.inc.854:                                      ; preds = %for.end.841
  %573 = load i32, i32* %loopk, align 4
  %inc855 = add nsw i32 %573, 1
  store i32 %inc855, i32* %loopk, align 4
  br label %for.cond.741

for.end.856:                                      ; preds = %for.cond.741
  br label %for.inc.857

for.inc.857:                                      ; preds = %for.end.856
  %574 = load i32, i32* %hypre__block, align 4
  %inc858 = add nsw i32 %574, 1
  store i32 %inc858, i32* %hypre__block, align 4
  br label %for.cond.671

for.end.859:                                      ; preds = %for.cond.671
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.222
  %575 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay860 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call861 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %575, i32* %arraydecay860)
  %576 = load i32*, i32** %cstart, align 8
  %arrayidx863 = getelementptr inbounds i32, i32* %576, i64 0
  %577 = load i32, i32* %arrayidx863, align 4
  %578 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin864 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %578, i32 0, i32 0
  %arrayidx865 = getelementptr inbounds [3 x i32], [3 x i32]* %imin864, i32 0, i64 0
  %579 = load i32, i32* %arrayidx865, align 4
  %sub866 = sub nsw i32 %577, %579
  %580 = load i32*, i32** %cstart, align 8
  %arrayidx867 = getelementptr inbounds i32, i32* %580, i64 1
  %581 = load i32, i32* %arrayidx867, align 4
  %582 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin868 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %582, i32 0, i32 0
  %arrayidx869 = getelementptr inbounds [3 x i32], [3 x i32]* %imin868, i32 0, i64 1
  %583 = load i32, i32* %arrayidx869, align 4
  %sub870 = sub nsw i32 %581, %583
  %584 = load i32*, i32** %cstart, align 8
  %arrayidx871 = getelementptr inbounds i32, i32* %584, i64 2
  %585 = load i32, i32* %arrayidx871, align 4
  %586 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin872 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %586, i32 0, i32 0
  %arrayidx873 = getelementptr inbounds [3 x i32], [3 x i32]* %imin872, i32 0, i64 2
  %587 = load i32, i32* %arrayidx873, align 4
  %sub874 = sub nsw i32 %585, %587
  %588 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax875 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %588, i32 0, i32 1
  %arrayidx876 = getelementptr inbounds [3 x i32], [3 x i32]* %imax875, i32 0, i64 1
  %589 = load i32, i32* %arrayidx876, align 4
  %590 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin877 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %590, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [3 x i32], [3 x i32]* %imin877, i32 0, i64 1
  %591 = load i32, i32* %arrayidx878, align 4
  %sub879 = sub nsw i32 %589, %591
  %add880 = add nsw i32 %sub879, 1
  %cmp881 = icmp slt i32 0, %add880
  br i1 %cmp881, label %cond.true.882, label %cond.false.889

cond.true.882:                                    ; preds = %sw.default
  %592 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax883 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %592, i32 0, i32 1
  %arrayidx884 = getelementptr inbounds [3 x i32], [3 x i32]* %imax883, i32 0, i64 1
  %593 = load i32, i32* %arrayidx884, align 4
  %594 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin885 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %594, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [3 x i32], [3 x i32]* %imin885, i32 0, i64 1
  %595 = load i32, i32* %arrayidx886, align 4
  %sub887 = sub nsw i32 %593, %595
  %add888 = add nsw i32 %sub887, 1
  br label %cond.end.890

cond.false.889:                                   ; preds = %sw.default
  br label %cond.end.890

cond.end.890:                                     ; preds = %cond.false.889, %cond.true.882
  %cond891 = phi i32 [ %add888, %cond.true.882 ], [ 0, %cond.false.889 ]
  %mul892 = mul nsw i32 %sub874, %cond891
  %add893 = add nsw i32 %sub870, %mul892
  %596 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax894 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %596, i32 0, i32 1
  %arrayidx895 = getelementptr inbounds [3 x i32], [3 x i32]* %imax894, i32 0, i64 0
  %597 = load i32, i32* %arrayidx895, align 4
  %598 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin896 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %598, i32 0, i32 0
  %arrayidx897 = getelementptr inbounds [3 x i32], [3 x i32]* %imin896, i32 0, i64 0
  %599 = load i32, i32* %arrayidx897, align 4
  %sub898 = sub nsw i32 %597, %599
  %add899 = add nsw i32 %sub898, 1
  %cmp900 = icmp slt i32 0, %add899
  br i1 %cmp900, label %cond.true.901, label %cond.false.908

cond.true.901:                                    ; preds = %cond.end.890
  %600 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax902 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %600, i32 0, i32 1
  %arrayidx903 = getelementptr inbounds [3 x i32], [3 x i32]* %imax902, i32 0, i64 0
  %601 = load i32, i32* %arrayidx903, align 4
  %602 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin904 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %602, i32 0, i32 0
  %arrayidx905 = getelementptr inbounds [3 x i32], [3 x i32]* %imin904, i32 0, i64 0
  %603 = load i32, i32* %arrayidx905, align 4
  %sub906 = sub nsw i32 %601, %603
  %add907 = add nsw i32 %sub906, 1
  br label %cond.end.909

cond.false.908:                                   ; preds = %cond.end.890
  br label %cond.end.909

cond.end.909:                                     ; preds = %cond.false.908, %cond.true.901
  %cond910 = phi i32 [ %add907, %cond.true.901 ], [ 0, %cond.false.908 ]
  %mul911 = mul nsw i32 %add893, %cond910
  %add912 = add nsw i32 %sub866, %mul911
  store i32 %add912, i32* %hypre__i1start862, align 4
  %604 = load i32*, i32** %cstart, align 8
  %arrayidx914 = getelementptr inbounds i32, i32* %604, i64 0
  %605 = load i32, i32* %arrayidx914, align 4
  %606 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin915 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %606, i32 0, i32 0
  %arrayidx916 = getelementptr inbounds [3 x i32], [3 x i32]* %imin915, i32 0, i64 0
  %607 = load i32, i32* %arrayidx916, align 4
  %sub917 = sub nsw i32 %605, %607
  %608 = load i32*, i32** %cstart, align 8
  %arrayidx918 = getelementptr inbounds i32, i32* %608, i64 1
  %609 = load i32, i32* %arrayidx918, align 4
  %610 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin919 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %610, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [3 x i32], [3 x i32]* %imin919, i32 0, i64 1
  %611 = load i32, i32* %arrayidx920, align 4
  %sub921 = sub nsw i32 %609, %611
  %612 = load i32*, i32** %cstart, align 8
  %arrayidx922 = getelementptr inbounds i32, i32* %612, i64 2
  %613 = load i32, i32* %arrayidx922, align 4
  %614 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin923 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %614, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [3 x i32], [3 x i32]* %imin923, i32 0, i64 2
  %615 = load i32, i32* %arrayidx924, align 4
  %sub925 = sub nsw i32 %613, %615
  %616 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax926 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %616, i32 0, i32 1
  %arrayidx927 = getelementptr inbounds [3 x i32], [3 x i32]* %imax926, i32 0, i64 1
  %617 = load i32, i32* %arrayidx927, align 4
  %618 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin928 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %618, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [3 x i32], [3 x i32]* %imin928, i32 0, i64 1
  %619 = load i32, i32* %arrayidx929, align 4
  %sub930 = sub nsw i32 %617, %619
  %add931 = add nsw i32 %sub930, 1
  %cmp932 = icmp slt i32 0, %add931
  br i1 %cmp932, label %cond.true.933, label %cond.false.940

cond.true.933:                                    ; preds = %cond.end.909
  %620 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax934 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %620, i32 0, i32 1
  %arrayidx935 = getelementptr inbounds [3 x i32], [3 x i32]* %imax934, i32 0, i64 1
  %621 = load i32, i32* %arrayidx935, align 4
  %622 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin936 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %622, i32 0, i32 0
  %arrayidx937 = getelementptr inbounds [3 x i32], [3 x i32]* %imin936, i32 0, i64 1
  %623 = load i32, i32* %arrayidx937, align 4
  %sub938 = sub nsw i32 %621, %623
  %add939 = add nsw i32 %sub938, 1
  br label %cond.end.941

cond.false.940:                                   ; preds = %cond.end.909
  br label %cond.end.941

cond.end.941:                                     ; preds = %cond.false.940, %cond.true.933
  %cond942 = phi i32 [ %add939, %cond.true.933 ], [ 0, %cond.false.940 ]
  %mul943 = mul nsw i32 %sub925, %cond942
  %add944 = add nsw i32 %sub921, %mul943
  %624 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax945 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %624, i32 0, i32 1
  %arrayidx946 = getelementptr inbounds [3 x i32], [3 x i32]* %imax945, i32 0, i64 0
  %625 = load i32, i32* %arrayidx946, align 4
  %626 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin947 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %626, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [3 x i32], [3 x i32]* %imin947, i32 0, i64 0
  %627 = load i32, i32* %arrayidx948, align 4
  %sub949 = sub nsw i32 %625, %627
  %add950 = add nsw i32 %sub949, 1
  %cmp951 = icmp slt i32 0, %add950
  br i1 %cmp951, label %cond.true.952, label %cond.false.959

cond.true.952:                                    ; preds = %cond.end.941
  %628 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax953 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %628, i32 0, i32 1
  %arrayidx954 = getelementptr inbounds [3 x i32], [3 x i32]* %imax953, i32 0, i64 0
  %629 = load i32, i32* %arrayidx954, align 4
  %630 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin955 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %630, i32 0, i32 0
  %arrayidx956 = getelementptr inbounds [3 x i32], [3 x i32]* %imin955, i32 0, i64 0
  %631 = load i32, i32* %arrayidx956, align 4
  %sub957 = sub nsw i32 %629, %631
  %add958 = add nsw i32 %sub957, 1
  br label %cond.end.960

cond.false.959:                                   ; preds = %cond.end.941
  br label %cond.end.960

cond.end.960:                                     ; preds = %cond.false.959, %cond.true.952
  %cond961 = phi i32 [ %add958, %cond.true.952 ], [ 0, %cond.false.959 ]
  %mul962 = mul nsw i32 %add944, %cond961
  %add963 = add nsw i32 %sub917, %mul962
  store i32 %add963, i32* %hypre__i2start913, align 4
  %arrayidx965 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 0
  %632 = load i32, i32* %arrayidx965, align 4
  %633 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin966 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %633, i32 0, i32 0
  %arrayidx967 = getelementptr inbounds [3 x i32], [3 x i32]* %imin966, i32 0, i64 0
  %634 = load i32, i32* %arrayidx967, align 4
  %sub968 = sub nsw i32 %632, %634
  %arrayidx969 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 1
  %635 = load i32, i32* %arrayidx969, align 4
  %636 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin970 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %636, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [3 x i32], [3 x i32]* %imin970, i32 0, i64 1
  %637 = load i32, i32* %arrayidx971, align 4
  %sub972 = sub nsw i32 %635, %637
  %arrayidx973 = getelementptr inbounds [3 x i32], [3 x i32]* %fstart, i32 0, i64 2
  %638 = load i32, i32* %arrayidx973, align 4
  %639 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin974 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %639, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [3 x i32], [3 x i32]* %imin974, i32 0, i64 2
  %640 = load i32, i32* %arrayidx975, align 4
  %sub976 = sub nsw i32 %638, %640
  %641 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax977 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %641, i32 0, i32 1
  %arrayidx978 = getelementptr inbounds [3 x i32], [3 x i32]* %imax977, i32 0, i64 1
  %642 = load i32, i32* %arrayidx978, align 4
  %643 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin979 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %643, i32 0, i32 0
  %arrayidx980 = getelementptr inbounds [3 x i32], [3 x i32]* %imin979, i32 0, i64 1
  %644 = load i32, i32* %arrayidx980, align 4
  %sub981 = sub nsw i32 %642, %644
  %add982 = add nsw i32 %sub981, 1
  %cmp983 = icmp slt i32 0, %add982
  br i1 %cmp983, label %cond.true.984, label %cond.false.991

cond.true.984:                                    ; preds = %cond.end.960
  %645 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax985 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %645, i32 0, i32 1
  %arrayidx986 = getelementptr inbounds [3 x i32], [3 x i32]* %imax985, i32 0, i64 1
  %646 = load i32, i32* %arrayidx986, align 4
  %647 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin987 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %647, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [3 x i32], [3 x i32]* %imin987, i32 0, i64 1
  %648 = load i32, i32* %arrayidx988, align 4
  %sub989 = sub nsw i32 %646, %648
  %add990 = add nsw i32 %sub989, 1
  br label %cond.end.992

cond.false.991:                                   ; preds = %cond.end.960
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.false.991, %cond.true.984
  %cond993 = phi i32 [ %add990, %cond.true.984 ], [ 0, %cond.false.991 ]
  %mul994 = mul nsw i32 %sub976, %cond993
  %add995 = add nsw i32 %sub972, %mul994
  %649 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax996 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %649, i32 0, i32 1
  %arrayidx997 = getelementptr inbounds [3 x i32], [3 x i32]* %imax996, i32 0, i64 0
  %650 = load i32, i32* %arrayidx997, align 4
  %651 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin998 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %651, i32 0, i32 0
  %arrayidx999 = getelementptr inbounds [3 x i32], [3 x i32]* %imin998, i32 0, i64 0
  %652 = load i32, i32* %arrayidx999, align 4
  %sub1000 = sub nsw i32 %650, %652
  %add1001 = add nsw i32 %sub1000, 1
  %cmp1002 = icmp slt i32 0, %add1001
  br i1 %cmp1002, label %cond.true.1003, label %cond.false.1010

cond.true.1003:                                   ; preds = %cond.end.992
  %653 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1004 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %653, i32 0, i32 1
  %arrayidx1005 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1004, i32 0, i64 0
  %654 = load i32, i32* %arrayidx1005, align 4
  %655 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1006 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %655, i32 0, i32 0
  %arrayidx1007 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1006, i32 0, i64 0
  %656 = load i32, i32* %arrayidx1007, align 4
  %sub1008 = sub nsw i32 %654, %656
  %add1009 = add nsw i32 %sub1008, 1
  br label %cond.end.1011

cond.false.1010:                                  ; preds = %cond.end.992
  br label %cond.end.1011

cond.end.1011:                                    ; preds = %cond.false.1010, %cond.true.1003
  %cond1012 = phi i32 [ %add1009, %cond.true.1003 ], [ 0, %cond.false.1010 ]
  %mul1013 = mul nsw i32 %add995, %cond1012
  %add1014 = add nsw i32 %sub968, %mul1013
  store i32 %add1014, i32* %hypre__i3start964, align 4
  %657 = load i32*, i32** %cstart, align 8
  %arrayidx1016 = getelementptr inbounds i32, i32* %657, i64 0
  %658 = load i32, i32* %arrayidx1016, align 4
  %659 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1017 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %659, i32 0, i32 0
  %arrayidx1018 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1017, i32 0, i64 0
  %660 = load i32, i32* %arrayidx1018, align 4
  %sub1019 = sub nsw i32 %658, %660
  %661 = load i32*, i32** %cstart, align 8
  %arrayidx1020 = getelementptr inbounds i32, i32* %661, i64 1
  %662 = load i32, i32* %arrayidx1020, align 4
  %663 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1021 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %663, i32 0, i32 0
  %arrayidx1022 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1021, i32 0, i64 1
  %664 = load i32, i32* %arrayidx1022, align 4
  %sub1023 = sub nsw i32 %662, %664
  %665 = load i32*, i32** %cstart, align 8
  %arrayidx1024 = getelementptr inbounds i32, i32* %665, i64 2
  %666 = load i32, i32* %arrayidx1024, align 4
  %667 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1025 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %667, i32 0, i32 0
  %arrayidx1026 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1025, i32 0, i64 2
  %668 = load i32, i32* %arrayidx1026, align 4
  %sub1027 = sub nsw i32 %666, %668
  %669 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1028 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %669, i32 0, i32 1
  %arrayidx1029 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1028, i32 0, i64 1
  %670 = load i32, i32* %arrayidx1029, align 4
  %671 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1030 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %671, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1030, i32 0, i64 1
  %672 = load i32, i32* %arrayidx1031, align 4
  %sub1032 = sub nsw i32 %670, %672
  %add1033 = add nsw i32 %sub1032, 1
  %cmp1034 = icmp slt i32 0, %add1033
  br i1 %cmp1034, label %cond.true.1035, label %cond.false.1042

cond.true.1035:                                   ; preds = %cond.end.1011
  %673 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1036 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %673, i32 0, i32 1
  %arrayidx1037 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1036, i32 0, i64 1
  %674 = load i32, i32* %arrayidx1037, align 4
  %675 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1038 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %675, i32 0, i32 0
  %arrayidx1039 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1038, i32 0, i64 1
  %676 = load i32, i32* %arrayidx1039, align 4
  %sub1040 = sub nsw i32 %674, %676
  %add1041 = add nsw i32 %sub1040, 1
  br label %cond.end.1043

cond.false.1042:                                  ; preds = %cond.end.1011
  br label %cond.end.1043

cond.end.1043:                                    ; preds = %cond.false.1042, %cond.true.1035
  %cond1044 = phi i32 [ %add1041, %cond.true.1035 ], [ 0, %cond.false.1042 ]
  %mul1045 = mul nsw i32 %sub1027, %cond1044
  %add1046 = add nsw i32 %sub1023, %mul1045
  %677 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1047 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %677, i32 0, i32 1
  %arrayidx1048 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1047, i32 0, i64 0
  %678 = load i32, i32* %arrayidx1048, align 4
  %679 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1049 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %679, i32 0, i32 0
  %arrayidx1050 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1049, i32 0, i64 0
  %680 = load i32, i32* %arrayidx1050, align 4
  %sub1051 = sub nsw i32 %678, %680
  %add1052 = add nsw i32 %sub1051, 1
  %cmp1053 = icmp slt i32 0, %add1052
  br i1 %cmp1053, label %cond.true.1054, label %cond.false.1061

cond.true.1054:                                   ; preds = %cond.end.1043
  %681 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1055 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %681, i32 0, i32 1
  %arrayidx1056 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1055, i32 0, i64 0
  %682 = load i32, i32* %arrayidx1056, align 4
  %683 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1057 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %683, i32 0, i32 0
  %arrayidx1058 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1057, i32 0, i64 0
  %684 = load i32, i32* %arrayidx1058, align 4
  %sub1059 = sub nsw i32 %682, %684
  %add1060 = add nsw i32 %sub1059, 1
  br label %cond.end.1062

cond.false.1061:                                  ; preds = %cond.end.1043
  br label %cond.end.1062

cond.end.1062:                                    ; preds = %cond.false.1061, %cond.true.1054
  %cond1063 = phi i32 [ %add1060, %cond.true.1054 ], [ 0, %cond.false.1061 ]
  %mul1064 = mul nsw i32 %add1046, %cond1063
  %add1065 = add nsw i32 %sub1019, %mul1064
  store i32 %add1065, i32* %hypre__i4start1015, align 4
  %arrayidx1067 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %685 = load i32, i32* %arrayidx1067, align 4
  store i32 %685, i32* %hypre__sx11066, align 4
  %arrayidx1069 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %686 = load i32, i32* %arrayidx1069, align 4
  %687 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1070 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %687, i32 0, i32 1
  %arrayidx1071 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1070, i32 0, i64 0
  %688 = load i32, i32* %arrayidx1071, align 4
  %689 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1072 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %689, i32 0, i32 0
  %arrayidx1073 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1072, i32 0, i64 0
  %690 = load i32, i32* %arrayidx1073, align 4
  %sub1074 = sub nsw i32 %688, %690
  %add1075 = add nsw i32 %sub1074, 1
  %cmp1076 = icmp slt i32 0, %add1075
  br i1 %cmp1076, label %cond.true.1077, label %cond.false.1084

cond.true.1077:                                   ; preds = %cond.end.1062
  %691 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1078 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %691, i32 0, i32 1
  %arrayidx1079 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1078, i32 0, i64 0
  %692 = load i32, i32* %arrayidx1079, align 4
  %693 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1080 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %693, i32 0, i32 0
  %arrayidx1081 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1080, i32 0, i64 0
  %694 = load i32, i32* %arrayidx1081, align 4
  %sub1082 = sub nsw i32 %692, %694
  %add1083 = add nsw i32 %sub1082, 1
  br label %cond.end.1085

cond.false.1084:                                  ; preds = %cond.end.1062
  br label %cond.end.1085

cond.end.1085:                                    ; preds = %cond.false.1084, %cond.true.1077
  %cond1086 = phi i32 [ %add1083, %cond.true.1077 ], [ 0, %cond.false.1084 ]
  %mul1087 = mul nsw i32 %686, %cond1086
  store i32 %mul1087, i32* %hypre__sy11068, align 4
  %arrayidx1089 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %695 = load i32, i32* %arrayidx1089, align 4
  %696 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1090 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %696, i32 0, i32 1
  %arrayidx1091 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1090, i32 0, i64 0
  %697 = load i32, i32* %arrayidx1091, align 4
  %698 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1092 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %698, i32 0, i32 0
  %arrayidx1093 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1092, i32 0, i64 0
  %699 = load i32, i32* %arrayidx1093, align 4
  %sub1094 = sub nsw i32 %697, %699
  %add1095 = add nsw i32 %sub1094, 1
  %cmp1096 = icmp slt i32 0, %add1095
  br i1 %cmp1096, label %cond.true.1097, label %cond.false.1104

cond.true.1097:                                   ; preds = %cond.end.1085
  %700 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1098 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %700, i32 0, i32 1
  %arrayidx1099 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1098, i32 0, i64 0
  %701 = load i32, i32* %arrayidx1099, align 4
  %702 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %702, i32 0, i32 0
  %arrayidx1101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1100, i32 0, i64 0
  %703 = load i32, i32* %arrayidx1101, align 4
  %sub1102 = sub nsw i32 %701, %703
  %add1103 = add nsw i32 %sub1102, 1
  br label %cond.end.1105

cond.false.1104:                                  ; preds = %cond.end.1085
  br label %cond.end.1105

cond.end.1105:                                    ; preds = %cond.false.1104, %cond.true.1097
  %cond1106 = phi i32 [ %add1103, %cond.true.1097 ], [ 0, %cond.false.1104 ]
  %mul1107 = mul nsw i32 %695, %cond1106
  %704 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %704, i32 0, i32 1
  %arrayidx1109 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1108, i32 0, i64 1
  %705 = load i32, i32* %arrayidx1109, align 4
  %706 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %706, i32 0, i32 0
  %arrayidx1111 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1110, i32 0, i64 1
  %707 = load i32, i32* %arrayidx1111, align 4
  %sub1112 = sub nsw i32 %705, %707
  %add1113 = add nsw i32 %sub1112, 1
  %cmp1114 = icmp slt i32 0, %add1113
  br i1 %cmp1114, label %cond.true.1115, label %cond.false.1122

cond.true.1115:                                   ; preds = %cond.end.1105
  %708 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imax1116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %708, i32 0, i32 1
  %arrayidx1117 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1116, i32 0, i64 1
  %709 = load i32, i32* %arrayidx1117, align 4
  %710 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %PT_dbox, align 8
  %imin1118 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %710, i32 0, i32 0
  %arrayidx1119 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1118, i32 0, i64 1
  %711 = load i32, i32* %arrayidx1119, align 4
  %sub1120 = sub nsw i32 %709, %711
  %add1121 = add nsw i32 %sub1120, 1
  br label %cond.end.1123

cond.false.1122:                                  ; preds = %cond.end.1105
  br label %cond.end.1123

cond.end.1123:                                    ; preds = %cond.false.1122, %cond.true.1115
  %cond1124 = phi i32 [ %add1121, %cond.true.1115 ], [ 0, %cond.false.1122 ]
  %mul1125 = mul nsw i32 %mul1107, %cond1124
  store i32 %mul1125, i32* %hypre__sz11088, align 4
  %arrayidx1127 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %712 = load i32, i32* %arrayidx1127, align 4
  store i32 %712, i32* %hypre__sx21126, align 4
  %arrayidx1129 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %713 = load i32, i32* %arrayidx1129, align 4
  %714 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %714, i32 0, i32 1
  %arrayidx1131 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1130, i32 0, i64 0
  %715 = load i32, i32* %arrayidx1131, align 4
  %716 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %716, i32 0, i32 0
  %arrayidx1133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1132, i32 0, i64 0
  %717 = load i32, i32* %arrayidx1133, align 4
  %sub1134 = sub nsw i32 %715, %717
  %add1135 = add nsw i32 %sub1134, 1
  %cmp1136 = icmp slt i32 0, %add1135
  br i1 %cmp1136, label %cond.true.1137, label %cond.false.1144

cond.true.1137:                                   ; preds = %cond.end.1123
  %718 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %718, i32 0, i32 1
  %arrayidx1139 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1138, i32 0, i64 0
  %719 = load i32, i32* %arrayidx1139, align 4
  %720 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %720, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1140, i32 0, i64 0
  %721 = load i32, i32* %arrayidx1141, align 4
  %sub1142 = sub nsw i32 %719, %721
  %add1143 = add nsw i32 %sub1142, 1
  br label %cond.end.1145

cond.false.1144:                                  ; preds = %cond.end.1123
  br label %cond.end.1145

cond.end.1145:                                    ; preds = %cond.false.1144, %cond.true.1137
  %cond1146 = phi i32 [ %add1143, %cond.true.1137 ], [ 0, %cond.false.1144 ]
  %mul1147 = mul nsw i32 %713, %cond1146
  store i32 %mul1147, i32* %hypre__sy21128, align 4
  %arrayidx1149 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %722 = load i32, i32* %arrayidx1149, align 4
  %723 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %723, i32 0, i32 1
  %arrayidx1151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1150, i32 0, i64 0
  %724 = load i32, i32* %arrayidx1151, align 4
  %725 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %725, i32 0, i32 0
  %arrayidx1153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1152, i32 0, i64 0
  %726 = load i32, i32* %arrayidx1153, align 4
  %sub1154 = sub nsw i32 %724, %726
  %add1155 = add nsw i32 %sub1154, 1
  %cmp1156 = icmp slt i32 0, %add1155
  br i1 %cmp1156, label %cond.true.1157, label %cond.false.1164

cond.true.1157:                                   ; preds = %cond.end.1145
  %727 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1158 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %727, i32 0, i32 1
  %arrayidx1159 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1158, i32 0, i64 0
  %728 = load i32, i32* %arrayidx1159, align 4
  %729 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1160 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %729, i32 0, i32 0
  %arrayidx1161 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1160, i32 0, i64 0
  %730 = load i32, i32* %arrayidx1161, align 4
  %sub1162 = sub nsw i32 %728, %730
  %add1163 = add nsw i32 %sub1162, 1
  br label %cond.end.1165

cond.false.1164:                                  ; preds = %cond.end.1145
  br label %cond.end.1165

cond.end.1165:                                    ; preds = %cond.false.1164, %cond.true.1157
  %cond1166 = phi i32 [ %add1163, %cond.true.1157 ], [ 0, %cond.false.1164 ]
  %mul1167 = mul nsw i32 %722, %cond1166
  %731 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %731, i32 0, i32 1
  %arrayidx1169 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1168, i32 0, i64 1
  %732 = load i32, i32* %arrayidx1169, align 4
  %733 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %733, i32 0, i32 0
  %arrayidx1171 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1170, i32 0, i64 1
  %734 = load i32, i32* %arrayidx1171, align 4
  %sub1172 = sub nsw i32 %732, %734
  %add1173 = add nsw i32 %sub1172, 1
  %cmp1174 = icmp slt i32 0, %add1173
  br i1 %cmp1174, label %cond.true.1175, label %cond.false.1182

cond.true.1175:                                   ; preds = %cond.end.1165
  %735 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax1176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %735, i32 0, i32 1
  %arrayidx1177 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1176, i32 0, i64 1
  %736 = load i32, i32* %arrayidx1177, align 4
  %737 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin1178 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %737, i32 0, i32 0
  %arrayidx1179 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1178, i32 0, i64 1
  %738 = load i32, i32* %arrayidx1179, align 4
  %sub1180 = sub nsw i32 %736, %738
  %add1181 = add nsw i32 %sub1180, 1
  br label %cond.end.1183

cond.false.1182:                                  ; preds = %cond.end.1165
  br label %cond.end.1183

cond.end.1183:                                    ; preds = %cond.false.1182, %cond.true.1175
  %cond1184 = phi i32 [ %add1181, %cond.true.1175 ], [ 0, %cond.false.1182 ]
  %mul1185 = mul nsw i32 %mul1167, %cond1184
  store i32 %mul1185, i32* %hypre__sz21148, align 4
  %739 = load i32*, i32** %stridef, align 8
  %arrayidx1187 = getelementptr inbounds i32, i32* %739, i64 0
  %740 = load i32, i32* %arrayidx1187, align 4
  store i32 %740, i32* %hypre__sx31186, align 4
  %741 = load i32*, i32** %stridef, align 8
  %arrayidx1189 = getelementptr inbounds i32, i32* %741, i64 1
  %742 = load i32, i32* %arrayidx1189, align 4
  %743 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %743, i32 0, i32 1
  %arrayidx1191 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1190, i32 0, i64 0
  %744 = load i32, i32* %arrayidx1191, align 4
  %745 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %745, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1192, i32 0, i64 0
  %746 = load i32, i32* %arrayidx1193, align 4
  %sub1194 = sub nsw i32 %744, %746
  %add1195 = add nsw i32 %sub1194, 1
  %cmp1196 = icmp slt i32 0, %add1195
  br i1 %cmp1196, label %cond.true.1197, label %cond.false.1204

cond.true.1197:                                   ; preds = %cond.end.1183
  %747 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1198 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %747, i32 0, i32 1
  %arrayidx1199 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1198, i32 0, i64 0
  %748 = load i32, i32* %arrayidx1199, align 4
  %749 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1200 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %749, i32 0, i32 0
  %arrayidx1201 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1200, i32 0, i64 0
  %750 = load i32, i32* %arrayidx1201, align 4
  %sub1202 = sub nsw i32 %748, %750
  %add1203 = add nsw i32 %sub1202, 1
  br label %cond.end.1205

cond.false.1204:                                  ; preds = %cond.end.1183
  br label %cond.end.1205

cond.end.1205:                                    ; preds = %cond.false.1204, %cond.true.1197
  %cond1206 = phi i32 [ %add1203, %cond.true.1197 ], [ 0, %cond.false.1204 ]
  %mul1207 = mul nsw i32 %742, %cond1206
  store i32 %mul1207, i32* %hypre__sy31188, align 4
  %751 = load i32*, i32** %stridef, align 8
  %arrayidx1209 = getelementptr inbounds i32, i32* %751, i64 2
  %752 = load i32, i32* %arrayidx1209, align 4
  %753 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %753, i32 0, i32 1
  %arrayidx1211 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1210, i32 0, i64 0
  %754 = load i32, i32* %arrayidx1211, align 4
  %755 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %755, i32 0, i32 0
  %arrayidx1213 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1212, i32 0, i64 0
  %756 = load i32, i32* %arrayidx1213, align 4
  %sub1214 = sub nsw i32 %754, %756
  %add1215 = add nsw i32 %sub1214, 1
  %cmp1216 = icmp slt i32 0, %add1215
  br i1 %cmp1216, label %cond.true.1217, label %cond.false.1224

cond.true.1217:                                   ; preds = %cond.end.1205
  %757 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %757, i32 0, i32 1
  %arrayidx1219 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1218, i32 0, i64 0
  %758 = load i32, i32* %arrayidx1219, align 4
  %759 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %759, i32 0, i32 0
  %arrayidx1221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1220, i32 0, i64 0
  %760 = load i32, i32* %arrayidx1221, align 4
  %sub1222 = sub nsw i32 %758, %760
  %add1223 = add nsw i32 %sub1222, 1
  br label %cond.end.1225

cond.false.1224:                                  ; preds = %cond.end.1205
  br label %cond.end.1225

cond.end.1225:                                    ; preds = %cond.false.1224, %cond.true.1217
  %cond1226 = phi i32 [ %add1223, %cond.true.1217 ], [ 0, %cond.false.1224 ]
  %mul1227 = mul nsw i32 %752, %cond1226
  %761 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %761, i32 0, i32 1
  %arrayidx1229 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1228, i32 0, i64 1
  %762 = load i32, i32* %arrayidx1229, align 4
  %763 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %763, i32 0, i32 0
  %arrayidx1231 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1230, i32 0, i64 1
  %764 = load i32, i32* %arrayidx1231, align 4
  %sub1232 = sub nsw i32 %762, %764
  %add1233 = add nsw i32 %sub1232, 1
  %cmp1234 = icmp slt i32 0, %add1233
  br i1 %cmp1234, label %cond.true.1235, label %cond.false.1242

cond.true.1235:                                   ; preds = %cond.end.1225
  %765 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imax1236 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %765, i32 0, i32 1
  %arrayidx1237 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1236, i32 0, i64 1
  %766 = load i32, i32* %arrayidx1237, align 4
  %767 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_dbox, align 8
  %imin1238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %767, i32 0, i32 0
  %arrayidx1239 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1238, i32 0, i64 1
  %768 = load i32, i32* %arrayidx1239, align 4
  %sub1240 = sub nsw i32 %766, %768
  %add1241 = add nsw i32 %sub1240, 1
  br label %cond.end.1243

cond.false.1242:                                  ; preds = %cond.end.1225
  br label %cond.end.1243

cond.end.1243:                                    ; preds = %cond.false.1242, %cond.true.1235
  %cond1244 = phi i32 [ %add1241, %cond.true.1235 ], [ 0, %cond.false.1242 ]
  %mul1245 = mul nsw i32 %mul1227, %cond1244
  store i32 %mul1245, i32* %hypre__sz31208, align 4
  %arrayidx1247 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %769 = load i32, i32* %arrayidx1247, align 4
  store i32 %769, i32* %hypre__sx41246, align 4
  %arrayidx1249 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %770 = load i32, i32* %arrayidx1249, align 4
  %771 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %771, i32 0, i32 1
  %arrayidx1251 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1250, i32 0, i64 0
  %772 = load i32, i32* %arrayidx1251, align 4
  %773 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %773, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1252, i32 0, i64 0
  %774 = load i32, i32* %arrayidx1253, align 4
  %sub1254 = sub nsw i32 %772, %774
  %add1255 = add nsw i32 %sub1254, 1
  %cmp1256 = icmp slt i32 0, %add1255
  br i1 %cmp1256, label %cond.true.1257, label %cond.false.1264

cond.true.1257:                                   ; preds = %cond.end.1243
  %775 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %775, i32 0, i32 1
  %arrayidx1259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1258, i32 0, i64 0
  %776 = load i32, i32* %arrayidx1259, align 4
  %777 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %777, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1260, i32 0, i64 0
  %778 = load i32, i32* %arrayidx1261, align 4
  %sub1262 = sub nsw i32 %776, %778
  %add1263 = add nsw i32 %sub1262, 1
  br label %cond.end.1265

cond.false.1264:                                  ; preds = %cond.end.1243
  br label %cond.end.1265

cond.end.1265:                                    ; preds = %cond.false.1264, %cond.true.1257
  %cond1266 = phi i32 [ %add1263, %cond.true.1257 ], [ 0, %cond.false.1264 ]
  %mul1267 = mul nsw i32 %770, %cond1266
  store i32 %mul1267, i32* %hypre__sy41248, align 4
  %arrayidx1269 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %779 = load i32, i32* %arrayidx1269, align 4
  %780 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1270 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %780, i32 0, i32 1
  %arrayidx1271 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1270, i32 0, i64 0
  %781 = load i32, i32* %arrayidx1271, align 4
  %782 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1272 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %782, i32 0, i32 0
  %arrayidx1273 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1272, i32 0, i64 0
  %783 = load i32, i32* %arrayidx1273, align 4
  %sub1274 = sub nsw i32 %781, %783
  %add1275 = add nsw i32 %sub1274, 1
  %cmp1276 = icmp slt i32 0, %add1275
  br i1 %cmp1276, label %cond.true.1277, label %cond.false.1284

cond.true.1277:                                   ; preds = %cond.end.1265
  %784 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %784, i32 0, i32 1
  %arrayidx1279 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1278, i32 0, i64 0
  %785 = load i32, i32* %arrayidx1279, align 4
  %786 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1280 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %786, i32 0, i32 0
  %arrayidx1281 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1280, i32 0, i64 0
  %787 = load i32, i32* %arrayidx1281, align 4
  %sub1282 = sub nsw i32 %785, %787
  %add1283 = add nsw i32 %sub1282, 1
  br label %cond.end.1285

cond.false.1284:                                  ; preds = %cond.end.1265
  br label %cond.end.1285

cond.end.1285:                                    ; preds = %cond.false.1284, %cond.true.1277
  %cond1286 = phi i32 [ %add1283, %cond.true.1277 ], [ 0, %cond.false.1284 ]
  %mul1287 = mul nsw i32 %779, %cond1286
  %788 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1288 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %788, i32 0, i32 1
  %arrayidx1289 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1288, i32 0, i64 1
  %789 = load i32, i32* %arrayidx1289, align 4
  %790 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %790, i32 0, i32 0
  %arrayidx1291 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1290, i32 0, i64 1
  %791 = load i32, i32* %arrayidx1291, align 4
  %sub1292 = sub nsw i32 %789, %791
  %add1293 = add nsw i32 %sub1292, 1
  %cmp1294 = icmp slt i32 0, %add1293
  br i1 %cmp1294, label %cond.true.1295, label %cond.false.1302

cond.true.1295:                                   ; preds = %cond.end.1285
  %792 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax1296 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %792, i32 0, i32 1
  %arrayidx1297 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1296, i32 0, i64 1
  %793 = load i32, i32* %arrayidx1297, align 4
  %794 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin1298 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %794, i32 0, i32 0
  %arrayidx1299 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1298, i32 0, i64 1
  %795 = load i32, i32* %arrayidx1299, align 4
  %sub1300 = sub nsw i32 %793, %795
  %add1301 = add nsw i32 %sub1300, 1
  br label %cond.end.1303

cond.false.1302:                                  ; preds = %cond.end.1285
  br label %cond.end.1303

cond.end.1303:                                    ; preds = %cond.false.1302, %cond.true.1295
  %cond1304 = phi i32 [ %add1301, %cond.true.1295 ], [ 0, %cond.false.1302 ]
  %mul1305 = mul nsw i32 %mul1287, %cond1304
  store i32 %mul1305, i32* %hypre__sz41268, align 4
  %arrayidx1307 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %796 = load i32, i32* %arrayidx1307, align 4
  store i32 %796, i32* %hypre__nx1306, align 4
  %arrayidx1309 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %797 = load i32, i32* %arrayidx1309, align 4
  store i32 %797, i32* %hypre__ny1308, align 4
  %arrayidx1311 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %798 = load i32, i32* %arrayidx1311, align 4
  store i32 %798, i32* %hypre__nz1310, align 4
  %799 = load i32, i32* %hypre__nx1306, align 4
  store i32 %799, i32* %hypre__mx1312, align 4
  %800 = load i32, i32* %hypre__ny1308, align 4
  store i32 %800, i32* %hypre__my1313, align 4
  %801 = load i32, i32* %hypre__nz1310, align 4
  store i32 %801, i32* %hypre__mz1314, align 4
  store i32 0, i32* %hypre__dir1315, align 4
  %802 = load i32, i32* %hypre__nx1306, align 4
  store i32 %802, i32* %hypre__max1316, align 4
  %803 = load i32, i32* %hypre__ny1308, align 4
  %804 = load i32, i32* %hypre__max1316, align 4
  %cmp1321 = icmp sgt i32 %803, %804
  br i1 %cmp1321, label %if.then.1322, label %if.end.1323

if.then.1322:                                     ; preds = %cond.end.1303
  store i32 1, i32* %hypre__dir1315, align 4
  %805 = load i32, i32* %hypre__ny1308, align 4
  store i32 %805, i32* %hypre__max1316, align 4
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.then.1322, %cond.end.1303
  %806 = load i32, i32* %hypre__nz1310, align 4
  %807 = load i32, i32* %hypre__max1316, align 4
  %cmp1324 = icmp sgt i32 %806, %807
  br i1 %cmp1324, label %if.then.1325, label %if.end.1326

if.then.1325:                                     ; preds = %if.end.1323
  store i32 2, i32* %hypre__dir1315, align 4
  %808 = load i32, i32* %hypre__nz1310, align 4
  store i32 %808, i32* %hypre__max1316, align 4
  br label %if.end.1326

if.end.1326:                                      ; preds = %if.then.1325, %if.end.1323
  store i32 1, i32* %hypre__num_blocks1320, align 4
  %809 = load i32, i32* %hypre__max1316, align 4
  %810 = load i32, i32* %hypre__num_blocks1320, align 4
  %cmp1327 = icmp slt i32 %809, %810
  br i1 %cmp1327, label %if.then.1328, label %if.end.1329

if.then.1328:                                     ; preds = %if.end.1326
  %811 = load i32, i32* %hypre__max1316, align 4
  store i32 %811, i32* %hypre__num_blocks1320, align 4
  br label %if.end.1329

if.end.1329:                                      ; preds = %if.then.1328, %if.end.1326
  %812 = load i32, i32* %hypre__num_blocks1320, align 4
  %cmp1330 = icmp sgt i32 %812, 0
  br i1 %cmp1330, label %if.then.1331, label %if.end.1334

if.then.1331:                                     ; preds = %if.end.1329
  %813 = load i32, i32* %hypre__max1316, align 4
  %814 = load i32, i32* %hypre__num_blocks1320, align 4
  %div1332 = sdiv i32 %813, %814
  store i32 %div1332, i32* %hypre__div1317, align 4
  %815 = load i32, i32* %hypre__max1316, align 4
  %816 = load i32, i32* %hypre__num_blocks1320, align 4
  %rem1333 = srem i32 %815, %816
  store i32 %rem1333, i32* %hypre__mod1318, align 4
  br label %if.end.1334

if.end.1334:                                      ; preds = %if.then.1331, %if.end.1329
  store i32 0, i32* %hypre__block1319, align 4
  br label %for.cond.1335

for.cond.1335:                                    ; preds = %for.inc.1572, %if.end.1334
  %817 = load i32, i32* %hypre__block1319, align 4
  %818 = load i32, i32* %hypre__num_blocks1320, align 4
  %cmp1336 = icmp slt i32 %817, %818
  br i1 %cmp1336, label %for.body.1337, label %for.end.1574

for.body.1337:                                    ; preds = %for.cond.1335
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %819 = load i32, i32* %hypre__mx1312, align 4
  store i32 %819, i32* %hypre__nx1306, align 4
  %820 = load i32, i32* %hypre__my1313, align 4
  store i32 %820, i32* %hypre__ny1308, align 4
  %821 = load i32, i32* %hypre__mz1314, align 4
  store i32 %821, i32* %hypre__nz1310, align 4
  %822 = load i32, i32* %hypre__num_blocks1320, align 4
  %cmp1338 = icmp sgt i32 %822, 1
  br i1 %cmp1338, label %if.then.1339, label %if.end.1381

if.then.1339:                                     ; preds = %for.body.1337
  %823 = load i32, i32* %hypre__dir1315, align 4
  %cmp1340 = icmp eq i32 %823, 0
  br i1 %cmp1340, label %if.then.1341, label %if.else.1352

if.then.1341:                                     ; preds = %if.then.1339
  %824 = load i32, i32* %hypre__block1319, align 4
  %825 = load i32, i32* %hypre__div1317, align 4
  %mul1342 = mul nsw i32 %824, %825
  %826 = load i32, i32* %hypre__mod1318, align 4
  %827 = load i32, i32* %hypre__block1319, align 4
  %cmp1343 = icmp slt i32 %826, %827
  br i1 %cmp1343, label %cond.true.1344, label %cond.false.1345

cond.true.1344:                                   ; preds = %if.then.1341
  %828 = load i32, i32* %hypre__mod1318, align 4
  br label %cond.end.1346

cond.false.1345:                                  ; preds = %if.then.1341
  %829 = load i32, i32* %hypre__block1319, align 4
  br label %cond.end.1346

cond.end.1346:                                    ; preds = %cond.false.1345, %cond.true.1344
  %cond1347 = phi i32 [ %828, %cond.true.1344 ], [ %829, %cond.false.1345 ]
  %add1348 = add nsw i32 %mul1342, %cond1347
  store i32 %add1348, i32* %loopi, align 4
  %830 = load i32, i32* %hypre__div1317, align 4
  %831 = load i32, i32* %hypre__mod1318, align 4
  %832 = load i32, i32* %hypre__block1319, align 4
  %cmp1349 = icmp sgt i32 %831, %832
  %cond1350 = select i1 %cmp1349, i32 1, i32 0
  %add1351 = add nsw i32 %830, %cond1350
  store i32 %add1351, i32* %hypre__nx1306, align 4
  br label %if.end.1380

if.else.1352:                                     ; preds = %if.then.1339
  %833 = load i32, i32* %hypre__dir1315, align 4
  %cmp1353 = icmp eq i32 %833, 1
  br i1 %cmp1353, label %if.then.1354, label %if.else.1365

if.then.1354:                                     ; preds = %if.else.1352
  %834 = load i32, i32* %hypre__block1319, align 4
  %835 = load i32, i32* %hypre__div1317, align 4
  %mul1355 = mul nsw i32 %834, %835
  %836 = load i32, i32* %hypre__mod1318, align 4
  %837 = load i32, i32* %hypre__block1319, align 4
  %cmp1356 = icmp slt i32 %836, %837
  br i1 %cmp1356, label %cond.true.1357, label %cond.false.1358

cond.true.1357:                                   ; preds = %if.then.1354
  %838 = load i32, i32* %hypre__mod1318, align 4
  br label %cond.end.1359

cond.false.1358:                                  ; preds = %if.then.1354
  %839 = load i32, i32* %hypre__block1319, align 4
  br label %cond.end.1359

cond.end.1359:                                    ; preds = %cond.false.1358, %cond.true.1357
  %cond1360 = phi i32 [ %838, %cond.true.1357 ], [ %839, %cond.false.1358 ]
  %add1361 = add nsw i32 %mul1355, %cond1360
  store i32 %add1361, i32* %loopj, align 4
  %840 = load i32, i32* %hypre__div1317, align 4
  %841 = load i32, i32* %hypre__mod1318, align 4
  %842 = load i32, i32* %hypre__block1319, align 4
  %cmp1362 = icmp sgt i32 %841, %842
  %cond1363 = select i1 %cmp1362, i32 1, i32 0
  %add1364 = add nsw i32 %840, %cond1363
  store i32 %add1364, i32* %hypre__ny1308, align 4
  br label %if.end.1379

if.else.1365:                                     ; preds = %if.else.1352
  %843 = load i32, i32* %hypre__dir1315, align 4
  %cmp1366 = icmp eq i32 %843, 2
  br i1 %cmp1366, label %if.then.1367, label %if.end.1378

if.then.1367:                                     ; preds = %if.else.1365
  %844 = load i32, i32* %hypre__block1319, align 4
  %845 = load i32, i32* %hypre__div1317, align 4
  %mul1368 = mul nsw i32 %844, %845
  %846 = load i32, i32* %hypre__mod1318, align 4
  %847 = load i32, i32* %hypre__block1319, align 4
  %cmp1369 = icmp slt i32 %846, %847
  br i1 %cmp1369, label %cond.true.1370, label %cond.false.1371

cond.true.1370:                                   ; preds = %if.then.1367
  %848 = load i32, i32* %hypre__mod1318, align 4
  br label %cond.end.1372

cond.false.1371:                                  ; preds = %if.then.1367
  %849 = load i32, i32* %hypre__block1319, align 4
  br label %cond.end.1372

cond.end.1372:                                    ; preds = %cond.false.1371, %cond.true.1370
  %cond1373 = phi i32 [ %848, %cond.true.1370 ], [ %849, %cond.false.1371 ]
  %add1374 = add nsw i32 %mul1368, %cond1373
  store i32 %add1374, i32* %loopk, align 4
  %850 = load i32, i32* %hypre__div1317, align 4
  %851 = load i32, i32* %hypre__mod1318, align 4
  %852 = load i32, i32* %hypre__block1319, align 4
  %cmp1375 = icmp sgt i32 %851, %852
  %cond1376 = select i1 %cmp1375, i32 1, i32 0
  %add1377 = add nsw i32 %850, %cond1376
  store i32 %add1377, i32* %hypre__nz1310, align 4
  br label %if.end.1378

if.end.1378:                                      ; preds = %cond.end.1372, %if.else.1365
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.end.1378, %cond.end.1359
  br label %if.end.1380

if.end.1380:                                      ; preds = %if.end.1379, %cond.end.1346
  br label %if.end.1381

if.end.1381:                                      ; preds = %if.end.1380, %for.body.1337
  %853 = load i32, i32* %hypre__i1start862, align 4
  %854 = load i32, i32* %loopi, align 4
  %855 = load i32, i32* %hypre__sx11066, align 4
  %mul1382 = mul nsw i32 %854, %855
  %add1383 = add nsw i32 %853, %mul1382
  %856 = load i32, i32* %loopj, align 4
  %857 = load i32, i32* %hypre__sy11068, align 4
  %mul1384 = mul nsw i32 %856, %857
  %add1385 = add nsw i32 %add1383, %mul1384
  %858 = load i32, i32* %loopk, align 4
  %859 = load i32, i32* %hypre__sz11088, align 4
  %mul1386 = mul nsw i32 %858, %859
  %add1387 = add nsw i32 %add1385, %mul1386
  store i32 %add1387, i32* %iP, align 4
  %860 = load i32, i32* %hypre__i2start913, align 4
  %861 = load i32, i32* %loopi, align 4
  %862 = load i32, i32* %hypre__sx21126, align 4
  %mul1388 = mul nsw i32 %861, %862
  %add1389 = add nsw i32 %860, %mul1388
  %863 = load i32, i32* %loopj, align 4
  %864 = load i32, i32* %hypre__sy21128, align 4
  %mul1390 = mul nsw i32 %863, %864
  %add1391 = add nsw i32 %add1389, %mul1390
  %865 = load i32, i32* %loopk, align 4
  %866 = load i32, i32* %hypre__sz21148, align 4
  %mul1392 = mul nsw i32 %865, %866
  %add1393 = add nsw i32 %add1391, %mul1392
  store i32 %add1393, i32* %iR, align 4
  %867 = load i32, i32* %hypre__i3start964, align 4
  %868 = load i32, i32* %loopi, align 4
  %869 = load i32, i32* %hypre__sx31186, align 4
  %mul1394 = mul nsw i32 %868, %869
  %add1395 = add nsw i32 %867, %mul1394
  %870 = load i32, i32* %loopj, align 4
  %871 = load i32, i32* %hypre__sy31188, align 4
  %mul1396 = mul nsw i32 %870, %871
  %add1397 = add nsw i32 %add1395, %mul1396
  %872 = load i32, i32* %loopk, align 4
  %873 = load i32, i32* %hypre__sz31208, align 4
  %mul1398 = mul nsw i32 %872, %873
  %add1399 = add nsw i32 %add1397, %mul1398
  store i32 %add1399, i32* %iA, align 4
  %874 = load i32, i32* %hypre__i4start1015, align 4
  %875 = load i32, i32* %loopi, align 4
  %876 = load i32, i32* %hypre__sx41246, align 4
  %mul1400 = mul nsw i32 %875, %876
  %add1401 = add nsw i32 %874, %mul1400
  %877 = load i32, i32* %loopj, align 4
  %878 = load i32, i32* %hypre__sy41248, align 4
  %mul1402 = mul nsw i32 %877, %878
  %add1403 = add nsw i32 %add1401, %mul1402
  %879 = load i32, i32* %loopk, align 4
  %880 = load i32, i32* %hypre__sz41268, align 4
  %mul1404 = mul nsw i32 %879, %880
  %add1405 = add nsw i32 %add1403, %mul1404
  store i32 %add1405, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1406

for.cond.1406:                                    ; preds = %for.inc.1569, %if.end.1381
  %881 = load i32, i32* %loopk, align 4
  %882 = load i32, i32* %hypre__nz1310, align 4
  %cmp1407 = icmp slt i32 %881, %882
  br i1 %cmp1407, label %for.body.1408, label %for.end.1571

for.body.1408:                                    ; preds = %for.cond.1406
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1409

for.cond.1409:                                    ; preds = %for.inc.1554, %for.body.1408
  %883 = load i32, i32* %loopj, align 4
  %884 = load i32, i32* %hypre__ny1308, align 4
  %cmp1410 = icmp slt i32 %883, %884
  br i1 %cmp1410, label %for.body.1411, label %for.end.1556

for.body.1411:                                    ; preds = %for.cond.1409
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1412

for.cond.1412:                                    ; preds = %for.inc.1539, %for.body.1411
  %885 = load i32, i32* %loopi, align 4
  %886 = load i32, i32* %hypre__nx1306, align 4
  %cmp1413 = icmp slt i32 %885, %886
  br i1 %cmp1413, label %for.body.1414, label %for.end.1541

for.body.1414:                                    ; preds = %for.cond.1412
  %887 = load i32, i32* %iA, align 4
  %888 = load i32, i32* %yOffsetA, align 4
  %sub1415 = sub nsw i32 %887, %888
  store i32 %sub1415, i32* %iAm1, align 4
  %889 = load i32, i32* %iA, align 4
  %890 = load i32, i32* %yOffsetA, align 4
  %add1416 = add nsw i32 %889, %890
  store i32 %add1416, i32* %iAp1, align 4
  %891 = load i32, i32* %iP, align 4
  %892 = load i32, i32* %yOffsetP, align 4
  %add1417 = add nsw i32 %891, %892
  %893 = load i32, i32* %xOffsetP, align 4
  %add1418 = add nsw i32 %add1417, %893
  store i32 %add1418, i32* %iP1, align 4
  %894 = load i32, i32* %iR, align 4
  %idxprom1419 = sext i32 %894 to i64
  %895 = load double*, double** %ra, align 8
  %arrayidx1420 = getelementptr inbounds double, double* %895, i64 %idxprom1419
  %896 = load double, double* %arrayidx1420, align 8
  %897 = load i32, i32* %iAp1, align 4
  %idxprom1421 = sext i32 %897 to i64
  %898 = load double*, double** %a_ce, align 8
  %arrayidx1422 = getelementptr inbounds double, double* %898, i64 %idxprom1421
  %899 = load double, double* %arrayidx1422, align 8
  %mul1423 = fmul double %896, %899
  %900 = load i32, i32* %iP1, align 4
  %idxprom1424 = sext i32 %900 to i64
  %901 = load double*, double** %pb, align 8
  %arrayidx1425 = getelementptr inbounds double, double* %901, i64 %idxprom1424
  %902 = load double, double* %arrayidx1425, align 8
  %mul1426 = fmul double %mul1423, %902
  %903 = load i32, i32* %iR, align 4
  %idxprom1427 = sext i32 %903 to i64
  %904 = load double*, double** %ra, align 8
  %arrayidx1428 = getelementptr inbounds double, double* %904, i64 %idxprom1427
  %905 = load double, double* %arrayidx1428, align 8
  %906 = load i32, i32* %iAp1, align 4
  %idxprom1429 = sext i32 %906 to i64
  %907 = load double*, double** %a_cne, align 8
  %arrayidx1430 = getelementptr inbounds double, double* %907, i64 %idxprom1429
  %908 = load double, double* %arrayidx1430, align 8
  %mul1431 = fmul double %905, %908
  %add1432 = fadd double %mul1426, %mul1431
  %909 = load i32, i32* %iA, align 4
  %idxprom1433 = sext i32 %909 to i64
  %910 = load double*, double** %a_cne, align 8
  %arrayidx1434 = getelementptr inbounds double, double* %910, i64 %idxprom1433
  %911 = load double, double* %arrayidx1434, align 8
  %912 = load i32, i32* %iP1, align 4
  %idxprom1435 = sext i32 %912 to i64
  %913 = load double*, double** %pb, align 8
  %arrayidx1436 = getelementptr inbounds double, double* %913, i64 %idxprom1435
  %914 = load double, double* %arrayidx1436, align 8
  %mul1437 = fmul double %911, %914
  %add1438 = fadd double %add1432, %mul1437
  %915 = load i32, i32* %iAc, align 4
  %idxprom1439 = sext i32 %915 to i64
  %916 = load double*, double** %rap_cne, align 8
  %arrayidx1440 = getelementptr inbounds double, double* %916, i64 %idxprom1439
  store double %add1438, double* %arrayidx1440, align 8
  %917 = load i32, i32* %iP, align 4
  %918 = load i32, i32* %yOffsetP, align 4
  %add1441 = add nsw i32 %917, %918
  store i32 %add1441, i32* %iP1, align 4
  %919 = load i32, i32* %iR, align 4
  %idxprom1442 = sext i32 %919 to i64
  %920 = load double*, double** %ra, align 8
  %arrayidx1443 = getelementptr inbounds double, double* %920, i64 %idxprom1442
  %921 = load double, double* %arrayidx1443, align 8
  %922 = load i32, i32* %iAp1, align 4
  %idxprom1444 = sext i32 %922 to i64
  %923 = load double*, double** %a_cc, align 8
  %arrayidx1445 = getelementptr inbounds double, double* %923, i64 %idxprom1444
  %924 = load double, double* %arrayidx1445, align 8
  %mul1446 = fmul double %921, %924
  %925 = load i32, i32* %iP1, align 4
  %idxprom1447 = sext i32 %925 to i64
  %926 = load double*, double** %pb, align 8
  %arrayidx1448 = getelementptr inbounds double, double* %926, i64 %idxprom1447
  %927 = load double, double* %arrayidx1448, align 8
  %mul1449 = fmul double %mul1446, %927
  %928 = load i32, i32* %iR, align 4
  %idxprom1450 = sext i32 %928 to i64
  %929 = load double*, double** %ra, align 8
  %arrayidx1451 = getelementptr inbounds double, double* %929, i64 %idxprom1450
  %930 = load double, double* %arrayidx1451, align 8
  %931 = load i32, i32* %iAp1, align 4
  %idxprom1452 = sext i32 %931 to i64
  %932 = load double*, double** %a_cn, align 8
  %arrayidx1453 = getelementptr inbounds double, double* %932, i64 %idxprom1452
  %933 = load double, double* %arrayidx1453, align 8
  %mul1454 = fmul double %930, %933
  %add1455 = fadd double %mul1449, %mul1454
  %934 = load i32, i32* %iA, align 4
  %idxprom1456 = sext i32 %934 to i64
  %935 = load double*, double** %a_cn, align 8
  %arrayidx1457 = getelementptr inbounds double, double* %935, i64 %idxprom1456
  %936 = load double, double* %arrayidx1457, align 8
  %937 = load i32, i32* %iP1, align 4
  %idxprom1458 = sext i32 %937 to i64
  %938 = load double*, double** %pb, align 8
  %arrayidx1459 = getelementptr inbounds double, double* %938, i64 %idxprom1458
  %939 = load double, double* %arrayidx1459, align 8
  %mul1460 = fmul double %936, %939
  %add1461 = fadd double %add1455, %mul1460
  %940 = load i32, i32* %iAc, align 4
  %idxprom1462 = sext i32 %940 to i64
  %941 = load double*, double** %rap_cn, align 8
  %arrayidx1463 = getelementptr inbounds double, double* %941, i64 %idxprom1462
  store double %add1461, double* %arrayidx1463, align 8
  %942 = load i32, i32* %iP, align 4
  %943 = load i32, i32* %yOffsetP, align 4
  %add1464 = add nsw i32 %942, %943
  %944 = load i32, i32* %xOffsetP, align 4
  %sub1465 = sub nsw i32 %add1464, %944
  store i32 %sub1465, i32* %iP1, align 4
  %945 = load i32, i32* %iR, align 4
  %idxprom1466 = sext i32 %945 to i64
  %946 = load double*, double** %ra, align 8
  %arrayidx1467 = getelementptr inbounds double, double* %946, i64 %idxprom1466
  %947 = load double, double* %arrayidx1467, align 8
  %948 = load i32, i32* %iAp1, align 4
  %idxprom1468 = sext i32 %948 to i64
  %949 = load double*, double** %a_cw, align 8
  %arrayidx1469 = getelementptr inbounds double, double* %949, i64 %idxprom1468
  %950 = load double, double* %arrayidx1469, align 8
  %mul1470 = fmul double %947, %950
  %951 = load i32, i32* %iP1, align 4
  %idxprom1471 = sext i32 %951 to i64
  %952 = load double*, double** %pb, align 8
  %arrayidx1472 = getelementptr inbounds double, double* %952, i64 %idxprom1471
  %953 = load double, double* %arrayidx1472, align 8
  %mul1473 = fmul double %mul1470, %953
  %954 = load i32, i32* %iR, align 4
  %idxprom1474 = sext i32 %954 to i64
  %955 = load double*, double** %ra, align 8
  %arrayidx1475 = getelementptr inbounds double, double* %955, i64 %idxprom1474
  %956 = load double, double* %arrayidx1475, align 8
  %957 = load i32, i32* %iAp1, align 4
  %idxprom1476 = sext i32 %957 to i64
  %958 = load double*, double** %a_cnw, align 8
  %arrayidx1477 = getelementptr inbounds double, double* %958, i64 %idxprom1476
  %959 = load double, double* %arrayidx1477, align 8
  %mul1478 = fmul double %956, %959
  %add1479 = fadd double %mul1473, %mul1478
  %960 = load i32, i32* %iA, align 4
  %idxprom1480 = sext i32 %960 to i64
  %961 = load double*, double** %a_cnw, align 8
  %arrayidx1481 = getelementptr inbounds double, double* %961, i64 %idxprom1480
  %962 = load double, double* %arrayidx1481, align 8
  %963 = load i32, i32* %iP1, align 4
  %idxprom1482 = sext i32 %963 to i64
  %964 = load double*, double** %pb, align 8
  %arrayidx1483 = getelementptr inbounds double, double* %964, i64 %idxprom1482
  %965 = load double, double* %arrayidx1483, align 8
  %mul1484 = fmul double %962, %965
  %add1485 = fadd double %add1479, %mul1484
  %966 = load i32, i32* %iAc, align 4
  %idxprom1486 = sext i32 %966 to i64
  %967 = load double*, double** %rap_cnw, align 8
  %arrayidx1487 = getelementptr inbounds double, double* %967, i64 %idxprom1486
  store double %add1485, double* %arrayidx1487, align 8
  %968 = load i32, i32* %iP, align 4
  %969 = load i32, i32* %xOffsetP, align 4
  %add1488 = add nsw i32 %968, %969
  store i32 %add1488, i32* %iP1, align 4
  %970 = load i32, i32* %iA, align 4
  %idxprom1489 = sext i32 %970 to i64
  %971 = load double*, double** %a_ce, align 8
  %arrayidx1490 = getelementptr inbounds double, double* %971, i64 %idxprom1489
  %972 = load double, double* %arrayidx1490, align 8
  %973 = load i32, i32* %iR, align 4
  %idxprom1491 = sext i32 %973 to i64
  %974 = load double*, double** %rb, align 8
  %arrayidx1492 = getelementptr inbounds double, double* %974, i64 %idxprom1491
  %975 = load double, double* %arrayidx1492, align 8
  %976 = load i32, i32* %iAm1, align 4
  %idxprom1493 = sext i32 %976 to i64
  %977 = load double*, double** %a_ce, align 8
  %arrayidx1494 = getelementptr inbounds double, double* %977, i64 %idxprom1493
  %978 = load double, double* %arrayidx1494, align 8
  %mul1495 = fmul double %975, %978
  %979 = load i32, i32* %iP1, align 4
  %idxprom1496 = sext i32 %979 to i64
  %980 = load double*, double** %pb, align 8
  %arrayidx1497 = getelementptr inbounds double, double* %980, i64 %idxprom1496
  %981 = load double, double* %arrayidx1497, align 8
  %mul1498 = fmul double %mul1495, %981
  %add1499 = fadd double %972, %mul1498
  %982 = load i32, i32* %iR, align 4
  %idxprom1500 = sext i32 %982 to i64
  %983 = load double*, double** %ra, align 8
  %arrayidx1501 = getelementptr inbounds double, double* %983, i64 %idxprom1500
  %984 = load double, double* %arrayidx1501, align 8
  %985 = load i32, i32* %iAp1, align 4
  %idxprom1502 = sext i32 %985 to i64
  %986 = load double*, double** %a_ce, align 8
  %arrayidx1503 = getelementptr inbounds double, double* %986, i64 %idxprom1502
  %987 = load double, double* %arrayidx1503, align 8
  %mul1504 = fmul double %984, %987
  %988 = load i32, i32* %iP1, align 4
  %idxprom1505 = sext i32 %988 to i64
  %989 = load double*, double** %pa, align 8
  %arrayidx1506 = getelementptr inbounds double, double* %989, i64 %idxprom1505
  %990 = load double, double* %arrayidx1506, align 8
  %mul1507 = fmul double %mul1504, %990
  %add1508 = fadd double %add1499, %mul1507
  %991 = load i32, i32* %iR, align 4
  %idxprom1509 = sext i32 %991 to i64
  %992 = load double*, double** %rb, align 8
  %arrayidx1510 = getelementptr inbounds double, double* %992, i64 %idxprom1509
  %993 = load double, double* %arrayidx1510, align 8
  %994 = load i32, i32* %iAm1, align 4
  %idxprom1511 = sext i32 %994 to i64
  %995 = load double*, double** %a_cne, align 8
  %arrayidx1512 = getelementptr inbounds double, double* %995, i64 %idxprom1511
  %996 = load double, double* %arrayidx1512, align 8
  %mul1513 = fmul double %993, %996
  %add1514 = fadd double %add1508, %mul1513
  %997 = load i32, i32* %iR, align 4
  %idxprom1515 = sext i32 %997 to i64
  %998 = load double*, double** %ra, align 8
  %arrayidx1516 = getelementptr inbounds double, double* %998, i64 %idxprom1515
  %999 = load double, double* %arrayidx1516, align 8
  %1000 = load i32, i32* %iAp1, align 4
  %idxprom1517 = sext i32 %1000 to i64
  %1001 = load double*, double** %a_cse, align 8
  %arrayidx1518 = getelementptr inbounds double, double* %1001, i64 %idxprom1517
  %1002 = load double, double* %arrayidx1518, align 8
  %mul1519 = fmul double %999, %1002
  %add1520 = fadd double %add1514, %mul1519
  %1003 = load i32, i32* %iA, align 4
  %idxprom1521 = sext i32 %1003 to i64
  %1004 = load double*, double** %a_cse, align 8
  %arrayidx1522 = getelementptr inbounds double, double* %1004, i64 %idxprom1521
  %1005 = load double, double* %arrayidx1522, align 8
  %1006 = load i32, i32* %iP1, align 4
  %idxprom1523 = sext i32 %1006 to i64
  %1007 = load double*, double** %pb, align 8
  %arrayidx1524 = getelementptr inbounds double, double* %1007, i64 %idxprom1523
  %1008 = load double, double* %arrayidx1524, align 8
  %mul1525 = fmul double %1005, %1008
  %add1526 = fadd double %add1520, %mul1525
  %1009 = load i32, i32* %iA, align 4
  %idxprom1527 = sext i32 %1009 to i64
  %1010 = load double*, double** %a_cne, align 8
  %arrayidx1528 = getelementptr inbounds double, double* %1010, i64 %idxprom1527
  %1011 = load double, double* %arrayidx1528, align 8
  %1012 = load i32, i32* %iP1, align 4
  %idxprom1529 = sext i32 %1012 to i64
  %1013 = load double*, double** %pa, align 8
  %arrayidx1530 = getelementptr inbounds double, double* %1013, i64 %idxprom1529
  %1014 = load double, double* %arrayidx1530, align 8
  %mul1531 = fmul double %1011, %1014
  %add1532 = fadd double %add1526, %mul1531
  %1015 = load i32, i32* %iAc, align 4
  %idxprom1533 = sext i32 %1015 to i64
  %1016 = load double*, double** %rap_ce, align 8
  %arrayidx1534 = getelementptr inbounds double, double* %1016, i64 %idxprom1533
  store double %add1532, double* %arrayidx1534, align 8
  %1017 = load i32, i32* %hypre__sx11066, align 4
  %1018 = load i32, i32* %iP, align 4
  %add1535 = add nsw i32 %1018, %1017
  store i32 %add1535, i32* %iP, align 4
  %1019 = load i32, i32* %hypre__sx21126, align 4
  %1020 = load i32, i32* %iR, align 4
  %add1536 = add nsw i32 %1020, %1019
  store i32 %add1536, i32* %iR, align 4
  %1021 = load i32, i32* %hypre__sx31186, align 4
  %1022 = load i32, i32* %iA, align 4
  %add1537 = add nsw i32 %1022, %1021
  store i32 %add1537, i32* %iA, align 4
  %1023 = load i32, i32* %hypre__sx41246, align 4
  %1024 = load i32, i32* %iAc, align 4
  %add1538 = add nsw i32 %1024, %1023
  store i32 %add1538, i32* %iAc, align 4
  br label %for.inc.1539

for.inc.1539:                                     ; preds = %for.body.1414
  %1025 = load i32, i32* %loopi, align 4
  %inc1540 = add nsw i32 %1025, 1
  store i32 %inc1540, i32* %loopi, align 4
  br label %for.cond.1412

for.end.1541:                                     ; preds = %for.cond.1412
  %1026 = load i32, i32* %hypre__sy11068, align 4
  %1027 = load i32, i32* %hypre__nx1306, align 4
  %1028 = load i32, i32* %hypre__sx11066, align 4
  %mul1542 = mul nsw i32 %1027, %1028
  %sub1543 = sub nsw i32 %1026, %mul1542
  %1029 = load i32, i32* %iP, align 4
  %add1544 = add nsw i32 %1029, %sub1543
  store i32 %add1544, i32* %iP, align 4
  %1030 = load i32, i32* %hypre__sy21128, align 4
  %1031 = load i32, i32* %hypre__nx1306, align 4
  %1032 = load i32, i32* %hypre__sx21126, align 4
  %mul1545 = mul nsw i32 %1031, %1032
  %sub1546 = sub nsw i32 %1030, %mul1545
  %1033 = load i32, i32* %iR, align 4
  %add1547 = add nsw i32 %1033, %sub1546
  store i32 %add1547, i32* %iR, align 4
  %1034 = load i32, i32* %hypre__sy31188, align 4
  %1035 = load i32, i32* %hypre__nx1306, align 4
  %1036 = load i32, i32* %hypre__sx31186, align 4
  %mul1548 = mul nsw i32 %1035, %1036
  %sub1549 = sub nsw i32 %1034, %mul1548
  %1037 = load i32, i32* %iA, align 4
  %add1550 = add nsw i32 %1037, %sub1549
  store i32 %add1550, i32* %iA, align 4
  %1038 = load i32, i32* %hypre__sy41248, align 4
  %1039 = load i32, i32* %hypre__nx1306, align 4
  %1040 = load i32, i32* %hypre__sx41246, align 4
  %mul1551 = mul nsw i32 %1039, %1040
  %sub1552 = sub nsw i32 %1038, %mul1551
  %1041 = load i32, i32* %iAc, align 4
  %add1553 = add nsw i32 %1041, %sub1552
  store i32 %add1553, i32* %iAc, align 4
  br label %for.inc.1554

for.inc.1554:                                     ; preds = %for.end.1541
  %1042 = load i32, i32* %loopj, align 4
  %inc1555 = add nsw i32 %1042, 1
  store i32 %inc1555, i32* %loopj, align 4
  br label %for.cond.1409

for.end.1556:                                     ; preds = %for.cond.1409
  %1043 = load i32, i32* %hypre__sz11088, align 4
  %1044 = load i32, i32* %hypre__ny1308, align 4
  %1045 = load i32, i32* %hypre__sy11068, align 4
  %mul1557 = mul nsw i32 %1044, %1045
  %sub1558 = sub nsw i32 %1043, %mul1557
  %1046 = load i32, i32* %iP, align 4
  %add1559 = add nsw i32 %1046, %sub1558
  store i32 %add1559, i32* %iP, align 4
  %1047 = load i32, i32* %hypre__sz21148, align 4
  %1048 = load i32, i32* %hypre__ny1308, align 4
  %1049 = load i32, i32* %hypre__sy21128, align 4
  %mul1560 = mul nsw i32 %1048, %1049
  %sub1561 = sub nsw i32 %1047, %mul1560
  %1050 = load i32, i32* %iR, align 4
  %add1562 = add nsw i32 %1050, %sub1561
  store i32 %add1562, i32* %iR, align 4
  %1051 = load i32, i32* %hypre__sz31208, align 4
  %1052 = load i32, i32* %hypre__ny1308, align 4
  %1053 = load i32, i32* %hypre__sy31188, align 4
  %mul1563 = mul nsw i32 %1052, %1053
  %sub1564 = sub nsw i32 %1051, %mul1563
  %1054 = load i32, i32* %iA, align 4
  %add1565 = add nsw i32 %1054, %sub1564
  store i32 %add1565, i32* %iA, align 4
  %1055 = load i32, i32* %hypre__sz41268, align 4
  %1056 = load i32, i32* %hypre__ny1308, align 4
  %1057 = load i32, i32* %hypre__sy41248, align 4
  %mul1566 = mul nsw i32 %1056, %1057
  %sub1567 = sub nsw i32 %1055, %mul1566
  %1058 = load i32, i32* %iAc, align 4
  %add1568 = add nsw i32 %1058, %sub1567
  store i32 %add1568, i32* %iAc, align 4
  br label %for.inc.1569

for.inc.1569:                                     ; preds = %for.end.1556
  %1059 = load i32, i32* %loopk, align 4
  %inc1570 = add nsw i32 %1059, 1
  store i32 %inc1570, i32* %loopk, align 4
  br label %for.cond.1406

for.end.1571:                                     ; preds = %for.cond.1406
  br label %for.inc.1572

for.inc.1572:                                     ; preds = %for.end.1571
  %1060 = load i32, i32* %hypre__block1319, align 4
  %inc1573 = add nsw i32 %1060, 1
  store i32 %inc1573, i32* %hypre__block1319, align 4
  br label %for.cond.1335

for.end.1574:                                     ; preds = %for.cond.1335
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.1574, %for.end.859
  br label %for.inc.1575

for.inc.1575:                                     ; preds = %sw.epilog
  %1061 = load i32, i32* %ci, align 4
  %inc1576 = add nsw i32 %1061, 1
  store i32 %inc1576, i32* %ci, align 4
  br label %for.cond

for.end.1577:                                     ; preds = %for.cond
  %1062 = load i32, i32* %ierr, align 4
  ret i32 %1062
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMG2RAPPeriodicSym(%struct.hypre_StructMatrix_struct* %RAP, i32* %cindex, i32* %cstride) #0 {
entry:
  %RAP.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %index = alloca [3 x i32], align 4
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cgrid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cgrid_box = alloca %struct.hypre_Box_struct*, align 8
  %cstart = alloca i32*, align 8
  %stridec = alloca [3 x i32], align 4
  %loop_size = alloca [3 x i32], align 4
  %ci = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %RAP_dbox = alloca %struct.hypre_Box_struct*, align 8
  %rap_cc = alloca double*, align 8
  %rap_cw = alloca double*, align 8
  %rap_cs = alloca double*, align 8
  %rap_csw = alloca double*, align 8
  %rap_cse = alloca double*, align 8
  %iAc = alloca i32, align 4
  %iAcm1 = alloca i32, align 4
  %xOffset = alloca i32, align 4
  %zero = alloca double, align 8
  %ierr = alloca i32, align 4
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
  %hypre__i1start286 = alloca i32, align 4
  %hypre__sx1337 = alloca i32, align 4
  %hypre__sy1339 = alloca i32, align 4
  %hypre__sz1359 = alloca i32, align 4
  %hypre__nx397 = alloca i32, align 4
  %hypre__ny399 = alloca i32, align 4
  %hypre__nz401 = alloca i32, align 4
  %hypre__mx403 = alloca i32, align 4
  %hypre__my404 = alloca i32, align 4
  %hypre__mz405 = alloca i32, align 4
  %hypre__dir406 = alloca i32, align 4
  %hypre__max407 = alloca i32, align 4
  %hypre__div408 = alloca i32, align 4
  %hypre__mod409 = alloca i32, align 4
  %hypre__block410 = alloca i32, align 4
  %hypre__num_blocks411 = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %RAP, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store double 0.000000e+00, double* %zero, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 2
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %3, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 1
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end.516

if.then:                                          ; preds = %entry
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %call = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %6)
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.513, %if.then
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %for.body, label %for.end.515

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %11, i32 0, i32 0
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes5, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx6, %struct.hypre_Box_struct** %cgrid_box, align 8
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %cstart, align 8
  %14 = load i32, i32* %ci, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %15, i32 0, i32 5
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i64 %idxprom7
  store %struct.hypre_Box_struct* %arrayidx9, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  %18 = load i32, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  %19 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  %20 = load i32, i32* %arrayidx15, align 4
  %21 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %22 = load i32, i32* %arrayidx16, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imin17, i32 0, i64 1
  %24 = load i32, i32* %arrayidx18, align 4
  %sub = sub nsw i32 %22, %24
  %add = add nsw i32 %sub, 1
  %cmp19 = icmp slt i32 0, %add
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imax20, i32 0, i64 1
  %26 = load i32, i32* %arrayidx21, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 1
  %28 = load i32, i32* %arrayidx23, align 4
  %sub24 = sub nsw i32 %26, %28
  %add25 = add nsw i32 %sub24, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add25, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %20, %cond
  %add26 = add nsw i32 %19, %mul
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imax27, i32 0, i64 0
  %30 = load i32, i32* %arrayidx28, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 0
  %32 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %30, %32
  %add32 = add nsw i32 %sub31, 1
  %cmp33 = icmp slt i32 0, %add32
  br i1 %cmp33, label %cond.true.34, label %cond.false.41

cond.true.34:                                     ; preds = %cond.end
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 0
  %34 = load i32, i32* %arrayidx36, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 0
  %36 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %34, %36
  %add40 = add nsw i32 %sub39, 1
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.34
  %cond43 = phi i32 [ %add40, %cond.true.34 ], [ 0, %cond.false.41 ]
  %mul44 = mul nsw i32 %add26, %cond43
  %add45 = add nsw i32 %18, %mul44
  store i32 %add45, i32* %xOffset, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx48, align 4
  %37 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %38 = load i32, i32* %ci, align 4
  %arraydecay49 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call50 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %37, i32 %38, i32* %arraydecay49)
  store double* %call50, double** %rap_cc, align 8
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx53, align 4
  %39 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %40 = load i32, i32* %ci, align 4
  %arraydecay54 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call55 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %39, i32 %40, i32* %arraydecay54)
  store double* %call55, double** %rap_cw, align 8
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx57, align 4
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx58, align 4
  %41 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %42 = load i32, i32* %ci, align 4
  %arraydecay59 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call60 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %41, i32 %42, i32* %arraydecay59)
  store double* %call60, double** %rap_cs, align 8
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx63, align 4
  %43 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %44 = load i32, i32* %ci, align 4
  %arraydecay64 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call65 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %43, i32 %44, i32* %arraydecay64)
  store double* %call65, double** %rap_csw, align 8
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx68, align 4
  %45 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %46 = load i32, i32* %ci, align 4
  %arraydecay69 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call70 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %45, i32 %46, i32* %arraydecay69)
  store double* %call70, double** %rap_cse, align 8
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay71 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call72 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %47, i32* %arraydecay71)
  %48 = load i32*, i32** %cstart, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx73, align 4
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imin74, i32 0, i64 0
  %51 = load i32, i32* %arrayidx75, align 4
  %sub76 = sub nsw i32 %49, %51
  %52 = load i32*, i32** %cstart, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx77, align 4
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 1
  %55 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %53, %55
  %56 = load i32*, i32** %cstart, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %56, i64 2
  %57 = load i32, i32* %arrayidx81, align 4
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imin82, i32 0, i64 2
  %59 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %57, %59
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imax85, i32 0, i64 1
  %61 = load i32, i32* %arrayidx86, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imin87, i32 0, i64 1
  %63 = load i32, i32* %arrayidx88, align 4
  %sub89 = sub nsw i32 %61, %63
  %add90 = add nsw i32 %sub89, 1
  %cmp91 = icmp slt i32 0, %add90
  br i1 %cmp91, label %cond.true.92, label %cond.false.99

cond.true.92:                                     ; preds = %cond.end.42
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imax93, i32 0, i64 1
  %65 = load i32, i32* %arrayidx94, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %67 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %65, %67
  %add98 = add nsw i32 %sub97, 1
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.42
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.92
  %cond101 = phi i32 [ %add98, %cond.true.92 ], [ 0, %cond.false.99 ]
  %mul102 = mul nsw i32 %sub84, %cond101
  %add103 = add nsw i32 %sub80, %mul102
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imax104, i32 0, i64 0
  %69 = load i32, i32* %arrayidx105, align 4
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %imin106, i32 0, i64 0
  %71 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %69, %71
  %add109 = add nsw i32 %sub108, 1
  %cmp110 = icmp slt i32 0, %add109
  br i1 %cmp110, label %cond.true.111, label %cond.false.118

cond.true.111:                                    ; preds = %cond.end.100
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imax112, i32 0, i64 0
  %73 = load i32, i32* %arrayidx113, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imin114, i32 0, i64 0
  %75 = load i32, i32* %arrayidx115, align 4
  %sub116 = sub nsw i32 %73, %75
  %add117 = add nsw i32 %sub116, 1
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end.100
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.111
  %cond120 = phi i32 [ %add117, %cond.true.111 ], [ 0, %cond.false.118 ]
  %mul121 = mul nsw i32 %add103, %cond120
  %add122 = add nsw i32 %sub76, %mul121
  store i32 %add122, i32* %hypre__i1start, align 4
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %76 = load i32, i32* %arrayidx123, align 4
  store i32 %76, i32* %hypre__sx1, align 4
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %77 = load i32, i32* %arrayidx124, align 4
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax125, i32 0, i64 0
  %79 = load i32, i32* %arrayidx126, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin127, i32 0, i64 0
  %81 = load i32, i32* %arrayidx128, align 4
  %sub129 = sub nsw i32 %79, %81
  %add130 = add nsw i32 %sub129, 1
  %cmp131 = icmp slt i32 0, %add130
  br i1 %cmp131, label %cond.true.132, label %cond.false.139

cond.true.132:                                    ; preds = %cond.end.119
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imax133, i32 0, i64 0
  %83 = load i32, i32* %arrayidx134, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imin135, i32 0, i64 0
  %85 = load i32, i32* %arrayidx136, align 4
  %sub137 = sub nsw i32 %83, %85
  %add138 = add nsw i32 %sub137, 1
  br label %cond.end.140

cond.false.139:                                   ; preds = %cond.end.119
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.132
  %cond141 = phi i32 [ %add138, %cond.true.132 ], [ 0, %cond.false.139 ]
  %mul142 = mul nsw i32 %77, %cond141
  store i32 %mul142, i32* %hypre__sy1, align 4
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %86 = load i32, i32* %arrayidx143, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imax144, i32 0, i64 0
  %88 = load i32, i32* %arrayidx145, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin146, i32 0, i64 0
  %90 = load i32, i32* %arrayidx147, align 4
  %sub148 = sub nsw i32 %88, %90
  %add149 = add nsw i32 %sub148, 1
  %cmp150 = icmp slt i32 0, %add149
  br i1 %cmp150, label %cond.true.151, label %cond.false.158

cond.true.151:                                    ; preds = %cond.end.140
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imax152, i32 0, i64 0
  %92 = load i32, i32* %arrayidx153, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imin154, i32 0, i64 0
  %94 = load i32, i32* %arrayidx155, align 4
  %sub156 = sub nsw i32 %92, %94
  %add157 = add nsw i32 %sub156, 1
  br label %cond.end.159

cond.false.158:                                   ; preds = %cond.end.140
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.151
  %cond160 = phi i32 [ %add157, %cond.true.151 ], [ 0, %cond.false.158 ]
  %mul161 = mul nsw i32 %86, %cond160
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 1
  %96 = load i32, i32* %arrayidx163, align 4
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 1
  %98 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %96, %98
  %add167 = add nsw i32 %sub166, 1
  %cmp168 = icmp slt i32 0, %add167
  br i1 %cmp168, label %cond.true.169, label %cond.false.176

cond.true.169:                                    ; preds = %cond.end.159
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %imax170, i32 0, i64 1
  %100 = load i32, i32* %arrayidx171, align 4
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %imin172, i32 0, i64 1
  %102 = load i32, i32* %arrayidx173, align 4
  %sub174 = sub nsw i32 %100, %102
  %add175 = add nsw i32 %sub174, 1
  br label %cond.end.177

cond.false.176:                                   ; preds = %cond.end.159
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.176, %cond.true.169
  %cond178 = phi i32 [ %add175, %cond.true.169 ], [ 0, %cond.false.176 ]
  %mul179 = mul nsw i32 %mul161, %cond178
  store i32 %mul179, i32* %hypre__sz1, align 4
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %103 = load i32, i32* %arrayidx180, align 4
  store i32 %103, i32* %hypre__nx, align 4
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %104 = load i32, i32* %arrayidx181, align 4
  store i32 %104, i32* %hypre__ny, align 4
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %105 = load i32, i32* %arrayidx182, align 4
  store i32 %105, i32* %hypre__nz, align 4
  %106 = load i32, i32* %hypre__nx, align 4
  store i32 %106, i32* %hypre__mx, align 4
  %107 = load i32, i32* %hypre__ny, align 4
  store i32 %107, i32* %hypre__my, align 4
  %108 = load i32, i32* %hypre__nz, align 4
  store i32 %108, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %109 = load i32, i32* %hypre__nx, align 4
  store i32 %109, i32* %hypre__max, align 4
  %110 = load i32, i32* %hypre__ny, align 4
  %111 = load i32, i32* %hypre__max, align 4
  %cmp183 = icmp sgt i32 %110, %111
  br i1 %cmp183, label %if.then.184, label %if.end

if.then.184:                                      ; preds = %cond.end.177
  store i32 1, i32* %hypre__dir, align 4
  %112 = load i32, i32* %hypre__ny, align 4
  store i32 %112, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.184, %cond.end.177
  %113 = load i32, i32* %hypre__nz, align 4
  %114 = load i32, i32* %hypre__max, align 4
  %cmp185 = icmp sgt i32 %113, %114
  br i1 %cmp185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %115 = load i32, i32* %hypre__nz, align 4
  store i32 %115, i32* %hypre__max, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %116 = load i32, i32* %hypre__max, align 4
  %117 = load i32, i32* %hypre__num_blocks, align 4
  %cmp188 = icmp slt i32 %116, %117
  br i1 %cmp188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.187
  %118 = load i32, i32* %hypre__max, align 4
  store i32 %118, i32* %hypre__num_blocks, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.end.187
  %119 = load i32, i32* %hypre__num_blocks, align 4
  %cmp191 = icmp sgt i32 %119, 0
  br i1 %cmp191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.190
  %120 = load i32, i32* %hypre__max, align 4
  %121 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %120, %121
  store i32 %div, i32* %hypre__div, align 4
  %122 = load i32, i32* %hypre__max, align 4
  %123 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %122, %123
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %if.end.190
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.283, %if.end.193
  %124 = load i32, i32* %hypre__block, align 4
  %125 = load i32, i32* %hypre__num_blocks, align 4
  %cmp195 = icmp slt i32 %124, %125
  br i1 %cmp195, label %for.body.196, label %for.end.285

for.body.196:                                     ; preds = %for.cond.194
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %126 = load i32, i32* %hypre__mx, align 4
  store i32 %126, i32* %hypre__nx, align 4
  %127 = load i32, i32* %hypre__my, align 4
  store i32 %127, i32* %hypre__ny, align 4
  %128 = load i32, i32* %hypre__mz, align 4
  store i32 %128, i32* %hypre__nz, align 4
  %129 = load i32, i32* %hypre__num_blocks, align 4
  %cmp197 = icmp sgt i32 %129, 1
  br i1 %cmp197, label %if.then.198, label %if.end.239

if.then.198:                                      ; preds = %for.body.196
  %130 = load i32, i32* %hypre__dir, align 4
  %cmp199 = icmp eq i32 %130, 0
  br i1 %cmp199, label %if.then.200, label %if.else

if.then.200:                                      ; preds = %if.then.198
  %131 = load i32, i32* %hypre__block, align 4
  %132 = load i32, i32* %hypre__div, align 4
  %mul201 = mul nsw i32 %131, %132
  %133 = load i32, i32* %hypre__mod, align 4
  %134 = load i32, i32* %hypre__block, align 4
  %cmp202 = icmp slt i32 %133, %134
  br i1 %cmp202, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %if.then.200
  %135 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.205

cond.false.204:                                   ; preds = %if.then.200
  %136 = load i32, i32* %hypre__block, align 4
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.204, %cond.true.203
  %cond206 = phi i32 [ %135, %cond.true.203 ], [ %136, %cond.false.204 ]
  %add207 = add nsw i32 %mul201, %cond206
  store i32 %add207, i32* %loopi, align 4
  %137 = load i32, i32* %hypre__div, align 4
  %138 = load i32, i32* %hypre__mod, align 4
  %139 = load i32, i32* %hypre__block, align 4
  %cmp208 = icmp sgt i32 %138, %139
  %cond209 = select i1 %cmp208, i32 1, i32 0
  %add210 = add nsw i32 %137, %cond209
  store i32 %add210, i32* %hypre__nx, align 4
  br label %if.end.238

if.else:                                          ; preds = %if.then.198
  %140 = load i32, i32* %hypre__dir, align 4
  %cmp211 = icmp eq i32 %140, 1
  br i1 %cmp211, label %if.then.212, label %if.else.223

if.then.212:                                      ; preds = %if.else
  %141 = load i32, i32* %hypre__block, align 4
  %142 = load i32, i32* %hypre__div, align 4
  %mul213 = mul nsw i32 %141, %142
  %143 = load i32, i32* %hypre__mod, align 4
  %144 = load i32, i32* %hypre__block, align 4
  %cmp214 = icmp slt i32 %143, %144
  br i1 %cmp214, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %if.then.212
  %145 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.217

cond.false.216:                                   ; preds = %if.then.212
  %146 = load i32, i32* %hypre__block, align 4
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.215
  %cond218 = phi i32 [ %145, %cond.true.215 ], [ %146, %cond.false.216 ]
  %add219 = add nsw i32 %mul213, %cond218
  store i32 %add219, i32* %loopj, align 4
  %147 = load i32, i32* %hypre__div, align 4
  %148 = load i32, i32* %hypre__mod, align 4
  %149 = load i32, i32* %hypre__block, align 4
  %cmp220 = icmp sgt i32 %148, %149
  %cond221 = select i1 %cmp220, i32 1, i32 0
  %add222 = add nsw i32 %147, %cond221
  store i32 %add222, i32* %hypre__ny, align 4
  br label %if.end.237

if.else.223:                                      ; preds = %if.else
  %150 = load i32, i32* %hypre__dir, align 4
  %cmp224 = icmp eq i32 %150, 2
  br i1 %cmp224, label %if.then.225, label %if.end.236

if.then.225:                                      ; preds = %if.else.223
  %151 = load i32, i32* %hypre__block, align 4
  %152 = load i32, i32* %hypre__div, align 4
  %mul226 = mul nsw i32 %151, %152
  %153 = load i32, i32* %hypre__mod, align 4
  %154 = load i32, i32* %hypre__block, align 4
  %cmp227 = icmp slt i32 %153, %154
  br i1 %cmp227, label %cond.true.228, label %cond.false.229

cond.true.228:                                    ; preds = %if.then.225
  %155 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.230

cond.false.229:                                   ; preds = %if.then.225
  %156 = load i32, i32* %hypre__block, align 4
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.229, %cond.true.228
  %cond231 = phi i32 [ %155, %cond.true.228 ], [ %156, %cond.false.229 ]
  %add232 = add nsw i32 %mul226, %cond231
  store i32 %add232, i32* %loopk, align 4
  %157 = load i32, i32* %hypre__div, align 4
  %158 = load i32, i32* %hypre__mod, align 4
  %159 = load i32, i32* %hypre__block, align 4
  %cmp233 = icmp sgt i32 %158, %159
  %cond234 = select i1 %cmp233, i32 1, i32 0
  %add235 = add nsw i32 %157, %cond234
  store i32 %add235, i32* %hypre__nz, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %cond.end.230, %if.else.223
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %cond.end.217
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %cond.end.205
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %for.body.196
  %160 = load i32, i32* %hypre__i1start, align 4
  %161 = load i32, i32* %loopi, align 4
  %162 = load i32, i32* %hypre__sx1, align 4
  %mul240 = mul nsw i32 %161, %162
  %add241 = add nsw i32 %160, %mul240
  %163 = load i32, i32* %loopj, align 4
  %164 = load i32, i32* %hypre__sy1, align 4
  %mul242 = mul nsw i32 %163, %164
  %add243 = add nsw i32 %add241, %mul242
  %165 = load i32, i32* %loopk, align 4
  %166 = load i32, i32* %hypre__sz1, align 4
  %mul244 = mul nsw i32 %165, %166
  %add245 = add nsw i32 %add243, %mul244
  store i32 %add245, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.280, %if.end.239
  %167 = load i32, i32* %loopk, align 4
  %168 = load i32, i32* %hypre__nz, align 4
  %cmp247 = icmp slt i32 %167, %168
  br i1 %cmp247, label %for.body.248, label %for.end.282

for.body.248:                                     ; preds = %for.cond.246
  store i32 0, i32* %loopj, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.274, %for.body.248
  %169 = load i32, i32* %loopj, align 4
  %170 = load i32, i32* %hypre__ny, align 4
  %cmp250 = icmp slt i32 %169, %170
  br i1 %cmp250, label %for.body.251, label %for.end.276

for.body.251:                                     ; preds = %for.cond.249
  store i32 0, i32* %loopi, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc, %for.body.251
  %171 = load i32, i32* %loopi, align 4
  %172 = load i32, i32* %hypre__nx, align 4
  %cmp253 = icmp slt i32 %171, %172
  br i1 %cmp253, label %for.body.254, label %for.end

for.body.254:                                     ; preds = %for.cond.252
  %173 = load i32, i32* %iAc, align 4
  %174 = load i32, i32* %xOffset, align 4
  %sub255 = sub nsw i32 %173, %174
  store i32 %sub255, i32* %iAcm1, align 4
  %175 = load i32, i32* %iAcm1, align 4
  %idxprom256 = sext i32 %175 to i64
  %176 = load double*, double** %rap_cse, align 8
  %arrayidx257 = getelementptr inbounds double, double* %176, i64 %idxprom256
  %177 = load double, double* %arrayidx257, align 8
  %178 = load i32, i32* %iAc, align 4
  %idxprom258 = sext i32 %178 to i64
  %179 = load double*, double** %rap_csw, align 8
  %arrayidx259 = getelementptr inbounds double, double* %179, i64 %idxprom258
  %180 = load double, double* %arrayidx259, align 8
  %add260 = fadd double %177, %180
  %181 = load i32, i32* %iAc, align 4
  %idxprom261 = sext i32 %181 to i64
  %182 = load double*, double** %rap_cw, align 8
  %arrayidx262 = getelementptr inbounds double, double* %182, i64 %idxprom261
  %183 = load double, double* %arrayidx262, align 8
  %add263 = fadd double %183, %add260
  store double %add263, double* %arrayidx262, align 8
  %184 = load i32, i32* %iAc, align 4
  %idxprom264 = sext i32 %184 to i64
  %185 = load double*, double** %rap_cs, align 8
  %arrayidx265 = getelementptr inbounds double, double* %185, i64 %idxprom264
  %186 = load double, double* %arrayidx265, align 8
  %mul266 = fmul double 2.000000e+00, %186
  %187 = load i32, i32* %iAc, align 4
  %idxprom267 = sext i32 %187 to i64
  %188 = load double*, double** %rap_cc, align 8
  %arrayidx268 = getelementptr inbounds double, double* %188, i64 %idxprom267
  %189 = load double, double* %arrayidx268, align 8
  %add269 = fadd double %189, %mul266
  store double %add269, double* %arrayidx268, align 8
  %190 = load i32, i32* %hypre__sx1, align 4
  %191 = load i32, i32* %iAc, align 4
  %add270 = add nsw i32 %191, %190
  store i32 %add270, i32* %iAc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.254
  %192 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %192, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.252

for.end:                                          ; preds = %for.cond.252
  %193 = load i32, i32* %hypre__sy1, align 4
  %194 = load i32, i32* %hypre__nx, align 4
  %195 = load i32, i32* %hypre__sx1, align 4
  %mul271 = mul nsw i32 %194, %195
  %sub272 = sub nsw i32 %193, %mul271
  %196 = load i32, i32* %iAc, align 4
  %add273 = add nsw i32 %196, %sub272
  store i32 %add273, i32* %iAc, align 4
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.end
  %197 = load i32, i32* %loopj, align 4
  %inc275 = add nsw i32 %197, 1
  store i32 %inc275, i32* %loopj, align 4
  br label %for.cond.249

for.end.276:                                      ; preds = %for.cond.249
  %198 = load i32, i32* %hypre__sz1, align 4
  %199 = load i32, i32* %hypre__ny, align 4
  %200 = load i32, i32* %hypre__sy1, align 4
  %mul277 = mul nsw i32 %199, %200
  %sub278 = sub nsw i32 %198, %mul277
  %201 = load i32, i32* %iAc, align 4
  %add279 = add nsw i32 %201, %sub278
  store i32 %add279, i32* %iAc, align 4
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.end.276
  %202 = load i32, i32* %loopk, align 4
  %inc281 = add nsw i32 %202, 1
  store i32 %inc281, i32* %loopk, align 4
  br label %for.cond.246

for.end.282:                                      ; preds = %for.cond.246
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.end.282
  %203 = load i32, i32* %hypre__block, align 4
  %inc284 = add nsw i32 %203, 1
  store i32 %inc284, i32* %hypre__block, align 4
  br label %for.cond.194

for.end.285:                                      ; preds = %for.cond.194
  %204 = load i32*, i32** %cstart, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %204, i64 0
  %205 = load i32, i32* %arrayidx287, align 4
  %206 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin288 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %206, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [3 x i32], [3 x i32]* %imin288, i32 0, i64 0
  %207 = load i32, i32* %arrayidx289, align 4
  %sub290 = sub nsw i32 %205, %207
  %208 = load i32*, i32** %cstart, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %208, i64 1
  %209 = load i32, i32* %arrayidx291, align 4
  %210 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin292 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %210, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [3 x i32], [3 x i32]* %imin292, i32 0, i64 1
  %211 = load i32, i32* %arrayidx293, align 4
  %sub294 = sub nsw i32 %209, %211
  %212 = load i32*, i32** %cstart, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %212, i64 2
  %213 = load i32, i32* %arrayidx295, align 4
  %214 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin296 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %214, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x i32], [3 x i32]* %imin296, i32 0, i64 2
  %215 = load i32, i32* %arrayidx297, align 4
  %sub298 = sub nsw i32 %213, %215
  %216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax299 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %216, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [3 x i32], [3 x i32]* %imax299, i32 0, i64 1
  %217 = load i32, i32* %arrayidx300, align 4
  %218 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin301 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %218, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [3 x i32], [3 x i32]* %imin301, i32 0, i64 1
  %219 = load i32, i32* %arrayidx302, align 4
  %sub303 = sub nsw i32 %217, %219
  %add304 = add nsw i32 %sub303, 1
  %cmp305 = icmp slt i32 0, %add304
  br i1 %cmp305, label %cond.true.306, label %cond.false.313

cond.true.306:                                    ; preds = %for.end.285
  %220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax307 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %220, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [3 x i32], [3 x i32]* %imax307, i32 0, i64 1
  %221 = load i32, i32* %arrayidx308, align 4
  %222 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin309 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %222, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %imin309, i32 0, i64 1
  %223 = load i32, i32* %arrayidx310, align 4
  %sub311 = sub nsw i32 %221, %223
  %add312 = add nsw i32 %sub311, 1
  br label %cond.end.314

cond.false.313:                                   ; preds = %for.end.285
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.306
  %cond315 = phi i32 [ %add312, %cond.true.306 ], [ 0, %cond.false.313 ]
  %mul316 = mul nsw i32 %sub298, %cond315
  %add317 = add nsw i32 %sub294, %mul316
  %224 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax318 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %224, i32 0, i32 1
  %arrayidx319 = getelementptr inbounds [3 x i32], [3 x i32]* %imax318, i32 0, i64 0
  %225 = load i32, i32* %arrayidx319, align 4
  %226 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin320 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %226, i32 0, i32 0
  %arrayidx321 = getelementptr inbounds [3 x i32], [3 x i32]* %imin320, i32 0, i64 0
  %227 = load i32, i32* %arrayidx321, align 4
  %sub322 = sub nsw i32 %225, %227
  %add323 = add nsw i32 %sub322, 1
  %cmp324 = icmp slt i32 0, %add323
  br i1 %cmp324, label %cond.true.325, label %cond.false.332

cond.true.325:                                    ; preds = %cond.end.314
  %228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %228, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %imax326, i32 0, i64 0
  %229 = load i32, i32* %arrayidx327, align 4
  %230 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %230, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [3 x i32], [3 x i32]* %imin328, i32 0, i64 0
  %231 = load i32, i32* %arrayidx329, align 4
  %sub330 = sub nsw i32 %229, %231
  %add331 = add nsw i32 %sub330, 1
  br label %cond.end.333

cond.false.332:                                   ; preds = %cond.end.314
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.332, %cond.true.325
  %cond334 = phi i32 [ %add331, %cond.true.325 ], [ 0, %cond.false.332 ]
  %mul335 = mul nsw i32 %add317, %cond334
  %add336 = add nsw i32 %sub290, %mul335
  store i32 %add336, i32* %hypre__i1start286, align 4
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %232 = load i32, i32* %arrayidx338, align 4
  store i32 %232, i32* %hypre__sx1337, align 4
  %arrayidx340 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %233 = load i32, i32* %arrayidx340, align 4
  %234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax341 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %234, i32 0, i32 1
  %arrayidx342 = getelementptr inbounds [3 x i32], [3 x i32]* %imax341, i32 0, i64 0
  %235 = load i32, i32* %arrayidx342, align 4
  %236 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin343 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %236, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %imin343, i32 0, i64 0
  %237 = load i32, i32* %arrayidx344, align 4
  %sub345 = sub nsw i32 %235, %237
  %add346 = add nsw i32 %sub345, 1
  %cmp347 = icmp slt i32 0, %add346
  br i1 %cmp347, label %cond.true.348, label %cond.false.355

cond.true.348:                                    ; preds = %cond.end.333
  %238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax349 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %238, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [3 x i32], [3 x i32]* %imax349, i32 0, i64 0
  %239 = load i32, i32* %arrayidx350, align 4
  %240 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin351 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %240, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [3 x i32], [3 x i32]* %imin351, i32 0, i64 0
  %241 = load i32, i32* %arrayidx352, align 4
  %sub353 = sub nsw i32 %239, %241
  %add354 = add nsw i32 %sub353, 1
  br label %cond.end.356

cond.false.355:                                   ; preds = %cond.end.333
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.348
  %cond357 = phi i32 [ %add354, %cond.true.348 ], [ 0, %cond.false.355 ]
  %mul358 = mul nsw i32 %233, %cond357
  store i32 %mul358, i32* %hypre__sy1339, align 4
  %arrayidx360 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %242 = load i32, i32* %arrayidx360, align 4
  %243 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax361 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %243, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [3 x i32], [3 x i32]* %imax361, i32 0, i64 0
  %244 = load i32, i32* %arrayidx362, align 4
  %245 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin363 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %245, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [3 x i32], [3 x i32]* %imin363, i32 0, i64 0
  %246 = load i32, i32* %arrayidx364, align 4
  %sub365 = sub nsw i32 %244, %246
  %add366 = add nsw i32 %sub365, 1
  %cmp367 = icmp slt i32 0, %add366
  br i1 %cmp367, label %cond.true.368, label %cond.false.375

cond.true.368:                                    ; preds = %cond.end.356
  %247 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax369 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %247, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [3 x i32], [3 x i32]* %imax369, i32 0, i64 0
  %248 = load i32, i32* %arrayidx370, align 4
  %249 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin371 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %249, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [3 x i32], [3 x i32]* %imin371, i32 0, i64 0
  %250 = load i32, i32* %arrayidx372, align 4
  %sub373 = sub nsw i32 %248, %250
  %add374 = add nsw i32 %sub373, 1
  br label %cond.end.376

cond.false.375:                                   ; preds = %cond.end.356
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.375, %cond.true.368
  %cond377 = phi i32 [ %add374, %cond.true.368 ], [ 0, %cond.false.375 ]
  %mul378 = mul nsw i32 %242, %cond377
  %251 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax379 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %251, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [3 x i32], [3 x i32]* %imax379, i32 0, i64 1
  %252 = load i32, i32* %arrayidx380, align 4
  %253 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin381 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %253, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [3 x i32], [3 x i32]* %imin381, i32 0, i64 1
  %254 = load i32, i32* %arrayidx382, align 4
  %sub383 = sub nsw i32 %252, %254
  %add384 = add nsw i32 %sub383, 1
  %cmp385 = icmp slt i32 0, %add384
  br i1 %cmp385, label %cond.true.386, label %cond.false.393

cond.true.386:                                    ; preds = %cond.end.376
  %255 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax387 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %255, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [3 x i32], [3 x i32]* %imax387, i32 0, i64 1
  %256 = load i32, i32* %arrayidx388, align 4
  %257 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin389 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %257, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %imin389, i32 0, i64 1
  %258 = load i32, i32* %arrayidx390, align 4
  %sub391 = sub nsw i32 %256, %258
  %add392 = add nsw i32 %sub391, 1
  br label %cond.end.394

cond.false.393:                                   ; preds = %cond.end.376
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.393, %cond.true.386
  %cond395 = phi i32 [ %add392, %cond.true.386 ], [ 0, %cond.false.393 ]
  %mul396 = mul nsw i32 %mul378, %cond395
  store i32 %mul396, i32* %hypre__sz1359, align 4
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %259 = load i32, i32* %arrayidx398, align 4
  store i32 %259, i32* %hypre__nx397, align 4
  %arrayidx400 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %260 = load i32, i32* %arrayidx400, align 4
  store i32 %260, i32* %hypre__ny399, align 4
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %261 = load i32, i32* %arrayidx402, align 4
  store i32 %261, i32* %hypre__nz401, align 4
  %262 = load i32, i32* %hypre__nx397, align 4
  store i32 %262, i32* %hypre__mx403, align 4
  %263 = load i32, i32* %hypre__ny399, align 4
  store i32 %263, i32* %hypre__my404, align 4
  %264 = load i32, i32* %hypre__nz401, align 4
  store i32 %264, i32* %hypre__mz405, align 4
  store i32 0, i32* %hypre__dir406, align 4
  %265 = load i32, i32* %hypre__nx397, align 4
  store i32 %265, i32* %hypre__max407, align 4
  %266 = load i32, i32* %hypre__ny399, align 4
  %267 = load i32, i32* %hypre__max407, align 4
  %cmp412 = icmp sgt i32 %266, %267
  br i1 %cmp412, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %cond.end.394
  store i32 1, i32* %hypre__dir406, align 4
  %268 = load i32, i32* %hypre__ny399, align 4
  store i32 %268, i32* %hypre__max407, align 4
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %cond.end.394
  %269 = load i32, i32* %hypre__nz401, align 4
  %270 = load i32, i32* %hypre__max407, align 4
  %cmp415 = icmp sgt i32 %269, %270
  br i1 %cmp415, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.end.414
  store i32 2, i32* %hypre__dir406, align 4
  %271 = load i32, i32* %hypre__nz401, align 4
  store i32 %271, i32* %hypre__max407, align 4
  br label %if.end.417

if.end.417:                                       ; preds = %if.then.416, %if.end.414
  store i32 1, i32* %hypre__num_blocks411, align 4
  %272 = load i32, i32* %hypre__max407, align 4
  %273 = load i32, i32* %hypre__num_blocks411, align 4
  %cmp418 = icmp slt i32 %272, %273
  br i1 %cmp418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.end.417
  %274 = load i32, i32* %hypre__max407, align 4
  store i32 %274, i32* %hypre__num_blocks411, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %if.end.417
  %275 = load i32, i32* %hypre__num_blocks411, align 4
  %cmp421 = icmp sgt i32 %275, 0
  br i1 %cmp421, label %if.then.422, label %if.end.425

if.then.422:                                      ; preds = %if.end.420
  %276 = load i32, i32* %hypre__max407, align 4
  %277 = load i32, i32* %hypre__num_blocks411, align 4
  %div423 = sdiv i32 %276, %277
  store i32 %div423, i32* %hypre__div408, align 4
  %278 = load i32, i32* %hypre__max407, align 4
  %279 = load i32, i32* %hypre__num_blocks411, align 4
  %rem424 = srem i32 %278, %279
  store i32 %rem424, i32* %hypre__mod409, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.422, %if.end.420
  store i32 0, i32* %hypre__block410, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.510, %if.end.425
  %280 = load i32, i32* %hypre__block410, align 4
  %281 = load i32, i32* %hypre__num_blocks411, align 4
  %cmp427 = icmp slt i32 %280, %281
  br i1 %cmp427, label %for.body.428, label %for.end.512

for.body.428:                                     ; preds = %for.cond.426
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %282 = load i32, i32* %hypre__mx403, align 4
  store i32 %282, i32* %hypre__nx397, align 4
  %283 = load i32, i32* %hypre__my404, align 4
  store i32 %283, i32* %hypre__ny399, align 4
  %284 = load i32, i32* %hypre__mz405, align 4
  store i32 %284, i32* %hypre__nz401, align 4
  %285 = load i32, i32* %hypre__num_blocks411, align 4
  %cmp429 = icmp sgt i32 %285, 1
  br i1 %cmp429, label %if.then.430, label %if.end.472

if.then.430:                                      ; preds = %for.body.428
  %286 = load i32, i32* %hypre__dir406, align 4
  %cmp431 = icmp eq i32 %286, 0
  br i1 %cmp431, label %if.then.432, label %if.else.443

if.then.432:                                      ; preds = %if.then.430
  %287 = load i32, i32* %hypre__block410, align 4
  %288 = load i32, i32* %hypre__div408, align 4
  %mul433 = mul nsw i32 %287, %288
  %289 = load i32, i32* %hypre__mod409, align 4
  %290 = load i32, i32* %hypre__block410, align 4
  %cmp434 = icmp slt i32 %289, %290
  br i1 %cmp434, label %cond.true.435, label %cond.false.436

cond.true.435:                                    ; preds = %if.then.432
  %291 = load i32, i32* %hypre__mod409, align 4
  br label %cond.end.437

cond.false.436:                                   ; preds = %if.then.432
  %292 = load i32, i32* %hypre__block410, align 4
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.false.436, %cond.true.435
  %cond438 = phi i32 [ %291, %cond.true.435 ], [ %292, %cond.false.436 ]
  %add439 = add nsw i32 %mul433, %cond438
  store i32 %add439, i32* %loopi, align 4
  %293 = load i32, i32* %hypre__div408, align 4
  %294 = load i32, i32* %hypre__mod409, align 4
  %295 = load i32, i32* %hypre__block410, align 4
  %cmp440 = icmp sgt i32 %294, %295
  %cond441 = select i1 %cmp440, i32 1, i32 0
  %add442 = add nsw i32 %293, %cond441
  store i32 %add442, i32* %hypre__nx397, align 4
  br label %if.end.471

if.else.443:                                      ; preds = %if.then.430
  %296 = load i32, i32* %hypre__dir406, align 4
  %cmp444 = icmp eq i32 %296, 1
  br i1 %cmp444, label %if.then.445, label %if.else.456

if.then.445:                                      ; preds = %if.else.443
  %297 = load i32, i32* %hypre__block410, align 4
  %298 = load i32, i32* %hypre__div408, align 4
  %mul446 = mul nsw i32 %297, %298
  %299 = load i32, i32* %hypre__mod409, align 4
  %300 = load i32, i32* %hypre__block410, align 4
  %cmp447 = icmp slt i32 %299, %300
  br i1 %cmp447, label %cond.true.448, label %cond.false.449

cond.true.448:                                    ; preds = %if.then.445
  %301 = load i32, i32* %hypre__mod409, align 4
  br label %cond.end.450

cond.false.449:                                   ; preds = %if.then.445
  %302 = load i32, i32* %hypre__block410, align 4
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.false.449, %cond.true.448
  %cond451 = phi i32 [ %301, %cond.true.448 ], [ %302, %cond.false.449 ]
  %add452 = add nsw i32 %mul446, %cond451
  store i32 %add452, i32* %loopj, align 4
  %303 = load i32, i32* %hypre__div408, align 4
  %304 = load i32, i32* %hypre__mod409, align 4
  %305 = load i32, i32* %hypre__block410, align 4
  %cmp453 = icmp sgt i32 %304, %305
  %cond454 = select i1 %cmp453, i32 1, i32 0
  %add455 = add nsw i32 %303, %cond454
  store i32 %add455, i32* %hypre__ny399, align 4
  br label %if.end.470

if.else.456:                                      ; preds = %if.else.443
  %306 = load i32, i32* %hypre__dir406, align 4
  %cmp457 = icmp eq i32 %306, 2
  br i1 %cmp457, label %if.then.458, label %if.end.469

if.then.458:                                      ; preds = %if.else.456
  %307 = load i32, i32* %hypre__block410, align 4
  %308 = load i32, i32* %hypre__div408, align 4
  %mul459 = mul nsw i32 %307, %308
  %309 = load i32, i32* %hypre__mod409, align 4
  %310 = load i32, i32* %hypre__block410, align 4
  %cmp460 = icmp slt i32 %309, %310
  br i1 %cmp460, label %cond.true.461, label %cond.false.462

cond.true.461:                                    ; preds = %if.then.458
  %311 = load i32, i32* %hypre__mod409, align 4
  br label %cond.end.463

cond.false.462:                                   ; preds = %if.then.458
  %312 = load i32, i32* %hypre__block410, align 4
  br label %cond.end.463

cond.end.463:                                     ; preds = %cond.false.462, %cond.true.461
  %cond464 = phi i32 [ %311, %cond.true.461 ], [ %312, %cond.false.462 ]
  %add465 = add nsw i32 %mul459, %cond464
  store i32 %add465, i32* %loopk, align 4
  %313 = load i32, i32* %hypre__div408, align 4
  %314 = load i32, i32* %hypre__mod409, align 4
  %315 = load i32, i32* %hypre__block410, align 4
  %cmp466 = icmp sgt i32 %314, %315
  %cond467 = select i1 %cmp466, i32 1, i32 0
  %add468 = add nsw i32 %313, %cond467
  store i32 %add468, i32* %hypre__nz401, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %cond.end.463, %if.else.456
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %cond.end.450
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %cond.end.437
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %for.body.428
  %316 = load i32, i32* %hypre__i1start286, align 4
  %317 = load i32, i32* %loopi, align 4
  %318 = load i32, i32* %hypre__sx1337, align 4
  %mul473 = mul nsw i32 %317, %318
  %add474 = add nsw i32 %316, %mul473
  %319 = load i32, i32* %loopj, align 4
  %320 = load i32, i32* %hypre__sy1339, align 4
  %mul475 = mul nsw i32 %319, %320
  %add476 = add nsw i32 %add474, %mul475
  %321 = load i32, i32* %loopk, align 4
  %322 = load i32, i32* %hypre__sz1359, align 4
  %mul477 = mul nsw i32 %321, %322
  %add478 = add nsw i32 %add476, %mul477
  store i32 %add478, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.479

for.cond.479:                                     ; preds = %for.inc.507, %if.end.472
  %323 = load i32, i32* %loopk, align 4
  %324 = load i32, i32* %hypre__nz401, align 4
  %cmp480 = icmp slt i32 %323, %324
  br i1 %cmp480, label %for.body.481, label %for.end.509

for.body.481:                                     ; preds = %for.cond.479
  store i32 0, i32* %loopj, align 4
  br label %for.cond.482

for.cond.482:                                     ; preds = %for.inc.501, %for.body.481
  %325 = load i32, i32* %loopj, align 4
  %326 = load i32, i32* %hypre__ny399, align 4
  %cmp483 = icmp slt i32 %325, %326
  br i1 %cmp483, label %for.body.484, label %for.end.503

for.body.484:                                     ; preds = %for.cond.482
  store i32 0, i32* %loopi, align 4
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.495, %for.body.484
  %327 = load i32, i32* %loopi, align 4
  %328 = load i32, i32* %hypre__nx397, align 4
  %cmp486 = icmp slt i32 %327, %328
  br i1 %cmp486, label %for.body.487, label %for.end.497

for.body.487:                                     ; preds = %for.cond.485
  %329 = load double, double* %zero, align 8
  %330 = load i32, i32* %iAc, align 4
  %idxprom488 = sext i32 %330 to i64
  %331 = load double*, double** %rap_csw, align 8
  %arrayidx489 = getelementptr inbounds double, double* %331, i64 %idxprom488
  store double %329, double* %arrayidx489, align 8
  %332 = load double, double* %zero, align 8
  %333 = load i32, i32* %iAc, align 4
  %idxprom490 = sext i32 %333 to i64
  %334 = load double*, double** %rap_cs, align 8
  %arrayidx491 = getelementptr inbounds double, double* %334, i64 %idxprom490
  store double %332, double* %arrayidx491, align 8
  %335 = load double, double* %zero, align 8
  %336 = load i32, i32* %iAc, align 4
  %idxprom492 = sext i32 %336 to i64
  %337 = load double*, double** %rap_cse, align 8
  %arrayidx493 = getelementptr inbounds double, double* %337, i64 %idxprom492
  store double %335, double* %arrayidx493, align 8
  %338 = load i32, i32* %hypre__sx1337, align 4
  %339 = load i32, i32* %iAc, align 4
  %add494 = add nsw i32 %339, %338
  store i32 %add494, i32* %iAc, align 4
  br label %for.inc.495

for.inc.495:                                      ; preds = %for.body.487
  %340 = load i32, i32* %loopi, align 4
  %inc496 = add nsw i32 %340, 1
  store i32 %inc496, i32* %loopi, align 4
  br label %for.cond.485

for.end.497:                                      ; preds = %for.cond.485
  %341 = load i32, i32* %hypre__sy1339, align 4
  %342 = load i32, i32* %hypre__nx397, align 4
  %343 = load i32, i32* %hypre__sx1337, align 4
  %mul498 = mul nsw i32 %342, %343
  %sub499 = sub nsw i32 %341, %mul498
  %344 = load i32, i32* %iAc, align 4
  %add500 = add nsw i32 %344, %sub499
  store i32 %add500, i32* %iAc, align 4
  br label %for.inc.501

for.inc.501:                                      ; preds = %for.end.497
  %345 = load i32, i32* %loopj, align 4
  %inc502 = add nsw i32 %345, 1
  store i32 %inc502, i32* %loopj, align 4
  br label %for.cond.482

for.end.503:                                      ; preds = %for.cond.482
  %346 = load i32, i32* %hypre__sz1359, align 4
  %347 = load i32, i32* %hypre__ny399, align 4
  %348 = load i32, i32* %hypre__sy1339, align 4
  %mul504 = mul nsw i32 %347, %348
  %sub505 = sub nsw i32 %346, %mul504
  %349 = load i32, i32* %iAc, align 4
  %add506 = add nsw i32 %349, %sub505
  store i32 %add506, i32* %iAc, align 4
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.end.503
  %350 = load i32, i32* %loopk, align 4
  %inc508 = add nsw i32 %350, 1
  store i32 %inc508, i32* %loopk, align 4
  br label %for.cond.479

for.end.509:                                      ; preds = %for.cond.479
  br label %for.inc.510

for.inc.510:                                      ; preds = %for.end.509
  %351 = load i32, i32* %hypre__block410, align 4
  %inc511 = add nsw i32 %351, 1
  store i32 %inc511, i32* %hypre__block410, align 4
  br label %for.cond.426

for.end.512:                                      ; preds = %for.cond.426
  br label %for.inc.513

for.inc.513:                                      ; preds = %for.end.512
  %352 = load i32, i32* %ci, align 4
  %inc514 = add nsw i32 %352, 1
  store i32 %inc514, i32* %ci, align 4
  br label %for.cond

for.end.515:                                      ; preds = %for.cond
  br label %if.end.516

if.end.516:                                       ; preds = %for.end.515, %entry
  %353 = load i32, i32* %ierr, align 4
  ret i32 %353
}

declare i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_SMG2RAPPeriodicNoSym(%struct.hypre_StructMatrix_struct* %RAP, i32* %cindex, i32* %cstride) #0 {
entry:
  %RAP.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %index = alloca [3 x i32], align 4
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cgrid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cgrid_box = alloca %struct.hypre_Box_struct*, align 8
  %cstart = alloca i32*, align 8
  %stridec = alloca [3 x i32], align 4
  %loop_size = alloca [3 x i32], align 4
  %ci = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %RAP_dbox = alloca %struct.hypre_Box_struct*, align 8
  %rap_cc = alloca double*, align 8
  %rap_cw = alloca double*, align 8
  %rap_cs = alloca double*, align 8
  %rap_csw = alloca double*, align 8
  %rap_cse = alloca double*, align 8
  %rap_ce = alloca double*, align 8
  %rap_cn = alloca double*, align 8
  %rap_cnw = alloca double*, align 8
  %rap_cne = alloca double*, align 8
  %iAc = alloca i32, align 4
  %zero = alloca double, align 8
  %ierr = alloca i32, align 4
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
  store %struct.hypre_StructMatrix_struct* %RAP, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store double 0.000000e+00, double* %zero, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 2
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %3, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 1
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end.285

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.282, %if.then
  %6 = load i32, i32* %ci, align 4
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end.284

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes5, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx6, %struct.hypre_Box_struct** %cgrid_box, align 8
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %cstart, align 8
  %13 = load i32, i32* %ci, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %14, i32 0, i32 5
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i64 %idxprom7
  store %struct.hypre_Box_struct* %arrayidx9, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx12, align 4
  %17 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %18 = load i32, i32* %ci, align 4
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %17, i32 %18, i32* %arraydecay13)
  store double* %call, double** %rap_cc, align 8
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx16, align 4
  %19 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %20 = load i32, i32* %ci, align 4
  %arraydecay17 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call18 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %19, i32 %20, i32* %arraydecay17)
  store double* %call18, double** %rap_cw, align 8
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx21, align 4
  %21 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %22 = load i32, i32* %ci, align 4
  %arraydecay22 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call23 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %21, i32 %22, i32* %arraydecay22)
  store double* %call23, double** %rap_cs, align 8
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx26, align 4
  %23 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %24 = load i32, i32* %ci, align 4
  %arraydecay27 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call28 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %23, i32 %24, i32* %arraydecay27)
  store double* %call28, double** %rap_csw, align 8
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 -1, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx31, align 4
  %25 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %26 = load i32, i32* %ci, align 4
  %arraydecay32 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call33 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %25, i32 %26, i32* %arraydecay32)
  store double* %call33, double** %rap_cse, align 8
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx36, align 4
  %27 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %28 = load i32, i32* %ci, align 4
  %arraydecay37 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call38 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %27, i32 %28, i32* %arraydecay37)
  store double* %call38, double** %rap_ce, align 8
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx41, align 4
  %29 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %30 = load i32, i32* %ci, align 4
  %arraydecay42 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call43 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %29, i32 %30, i32* %arraydecay42)
  store double* %call43, double** %rap_cn, align 8
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 1, i32* %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx46, align 4
  %31 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %32 = load i32, i32* %ci, align 4
  %arraydecay47 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call48 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %31, i32 %32, i32* %arraydecay47)
  store double* %call48, double** %rap_cne, align 8
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 -1, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 1, i32* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx51, align 4
  %33 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP.addr, align 8
  %34 = load i32, i32* %ci, align 4
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call53 = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %33, i32 %34, i32* %arraydecay52)
  store double* %call53, double** %rap_cnw, align 8
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cgrid_box, align 8
  %arraydecay54 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call55 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %35, i32* %arraydecay54)
  %36 = load i32*, i32** %cstart, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx56, align 4
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imin57, i32 0, i64 0
  %39 = load i32, i32* %arrayidx58, align 4
  %sub = sub nsw i32 %37, %39
  %40 = load i32*, i32** %cstart, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %40, i64 1
  %41 = load i32, i32* %arrayidx59, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imin60, i32 0, i64 1
  %43 = load i32, i32* %arrayidx61, align 4
  %sub62 = sub nsw i32 %41, %43
  %44 = load i32*, i32** %cstart, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %44, i64 2
  %45 = load i32, i32* %arrayidx63, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imin64, i32 0, i64 2
  %47 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub nsw i32 %45, %47
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %49 = load i32, i32* %arrayidx67, align 4
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin68 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %imin68, i32 0, i64 1
  %51 = load i32, i32* %arrayidx69, align 4
  %sub70 = sub nsw i32 %49, %51
  %add = add nsw i32 %sub70, 1
  %cmp71 = icmp slt i32 0, %add
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imax72, i32 0, i64 1
  %53 = load i32, i32* %arrayidx73, align 4
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imin74, i32 0, i64 1
  %55 = load i32, i32* %arrayidx75, align 4
  %sub76 = sub nsw i32 %53, %55
  %add77 = add nsw i32 %sub76, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add77, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub66, %cond
  %add78 = add nsw i32 %sub62, %mul
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax79 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %imax79, i32 0, i64 0
  %57 = load i32, i32* %arrayidx80, align 4
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %imin81, i32 0, i64 0
  %59 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %57, %59
  %add84 = add nsw i32 %sub83, 1
  %cmp85 = icmp slt i32 0, %add84
  br i1 %cmp85, label %cond.true.86, label %cond.false.93

cond.true.86:                                     ; preds = %cond.end
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imax87, i32 0, i64 0
  %61 = load i32, i32* %arrayidx88, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin89 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %imin89, i32 0, i64 0
  %63 = load i32, i32* %arrayidx90, align 4
  %sub91 = sub nsw i32 %61, %63
  %add92 = add nsw i32 %sub91, 1
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.86
  %cond95 = phi i32 [ %add92, %cond.true.86 ], [ 0, %cond.false.93 ]
  %mul96 = mul nsw i32 %add78, %cond95
  %add97 = add nsw i32 %sub, %mul96
  store i32 %add97, i32* %hypre__i1start, align 4
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %64 = load i32, i32* %arrayidx98, align 4
  store i32 %64, i32* %hypre__sx1, align 4
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %65 = load i32, i32* %arrayidx99, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imax100, i32 0, i64 0
  %67 = load i32, i32* %arrayidx101, align 4
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 0
  %69 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %67, %69
  %add105 = add nsw i32 %sub104, 1
  %cmp106 = icmp slt i32 0, %add105
  br i1 %cmp106, label %cond.true.107, label %cond.false.114

cond.true.107:                                    ; preds = %cond.end.94
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imax108, i32 0, i64 0
  %71 = load i32, i32* %arrayidx109, align 4
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imin110, i32 0, i64 0
  %73 = load i32, i32* %arrayidx111, align 4
  %sub112 = sub nsw i32 %71, %73
  %add113 = add nsw i32 %sub112, 1
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.94
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.107
  %cond116 = phi i32 [ %add113, %cond.true.107 ], [ 0, %cond.false.114 ]
  %mul117 = mul nsw i32 %65, %cond116
  store i32 %mul117, i32* %hypre__sy1, align 4
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %74 = load i32, i32* %arrayidx118, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %imax119, i32 0, i64 0
  %76 = load i32, i32* %arrayidx120, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imin121, i32 0, i64 0
  %78 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %76, %78
  %add124 = add nsw i32 %sub123, 1
  %cmp125 = icmp slt i32 0, %add124
  br i1 %cmp125, label %cond.true.126, label %cond.false.133

cond.true.126:                                    ; preds = %cond.end.115
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imax127, i32 0, i64 0
  %80 = load i32, i32* %arrayidx128, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imin129, i32 0, i64 0
  %82 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %80, %82
  %add132 = add nsw i32 %sub131, 1
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.end.115
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.126
  %cond135 = phi i32 [ %add132, %cond.true.126 ], [ 0, %cond.false.133 ]
  %mul136 = mul nsw i32 %74, %cond135
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imax137, i32 0, i64 1
  %84 = load i32, i32* %arrayidx138, align 4
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin139 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [3 x i32], [3 x i32]* %imin139, i32 0, i64 1
  %86 = load i32, i32* %arrayidx140, align 4
  %sub141 = sub nsw i32 %84, %86
  %add142 = add nsw i32 %sub141, 1
  %cmp143 = icmp slt i32 0, %add142
  br i1 %cmp143, label %cond.true.144, label %cond.false.151

cond.true.144:                                    ; preds = %cond.end.134
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imax145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imax145, i32 0, i64 1
  %88 = load i32, i32* %arrayidx146, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %RAP_dbox, align 8
  %imin147 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %imin147, i32 0, i64 1
  %90 = load i32, i32* %arrayidx148, align 4
  %sub149 = sub nsw i32 %88, %90
  %add150 = add nsw i32 %sub149, 1
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.end.134
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.144
  %cond153 = phi i32 [ %add150, %cond.true.144 ], [ 0, %cond.false.151 ]
  %mul154 = mul nsw i32 %mul136, %cond153
  store i32 %mul154, i32* %hypre__sz1, align 4
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %91 = load i32, i32* %arrayidx155, align 4
  store i32 %91, i32* %hypre__nx, align 4
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %92 = load i32, i32* %arrayidx156, align 4
  store i32 %92, i32* %hypre__ny, align 4
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %93 = load i32, i32* %arrayidx157, align 4
  store i32 %93, i32* %hypre__nz, align 4
  %94 = load i32, i32* %hypre__nx, align 4
  store i32 %94, i32* %hypre__mx, align 4
  %95 = load i32, i32* %hypre__ny, align 4
  store i32 %95, i32* %hypre__my, align 4
  %96 = load i32, i32* %hypre__nz, align 4
  store i32 %96, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %97 = load i32, i32* %hypre__nx, align 4
  store i32 %97, i32* %hypre__max, align 4
  %98 = load i32, i32* %hypre__ny, align 4
  %99 = load i32, i32* %hypre__max, align 4
  %cmp158 = icmp sgt i32 %98, %99
  br i1 %cmp158, label %if.then.159, label %if.end

if.then.159:                                      ; preds = %cond.end.152
  store i32 1, i32* %hypre__dir, align 4
  %100 = load i32, i32* %hypre__ny, align 4
  store i32 %100, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.159, %cond.end.152
  %101 = load i32, i32* %hypre__nz, align 4
  %102 = load i32, i32* %hypre__max, align 4
  %cmp160 = icmp sgt i32 %101, %102
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %103 = load i32, i32* %hypre__nz, align 4
  store i32 %103, i32* %hypre__max, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %104 = load i32, i32* %hypre__max, align 4
  %105 = load i32, i32* %hypre__num_blocks, align 4
  %cmp163 = icmp slt i32 %104, %105
  br i1 %cmp163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.162
  %106 = load i32, i32* %hypre__max, align 4
  store i32 %106, i32* %hypre__num_blocks, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.end.162
  %107 = load i32, i32* %hypre__num_blocks, align 4
  %cmp166 = icmp sgt i32 %107, 0
  br i1 %cmp166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.165
  %108 = load i32, i32* %hypre__max, align 4
  %109 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %108, %109
  store i32 %div, i32* %hypre__div, align 4
  %110 = load i32, i32* %hypre__max, align 4
  %111 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %110, %111
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end.165
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.279, %if.end.168
  %112 = load i32, i32* %hypre__block, align 4
  %113 = load i32, i32* %hypre__num_blocks, align 4
  %cmp170 = icmp slt i32 %112, %113
  br i1 %cmp170, label %for.body.171, label %for.end.281

for.body.171:                                     ; preds = %for.cond.169
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %114 = load i32, i32* %hypre__mx, align 4
  store i32 %114, i32* %hypre__nx, align 4
  %115 = load i32, i32* %hypre__my, align 4
  store i32 %115, i32* %hypre__ny, align 4
  %116 = load i32, i32* %hypre__mz, align 4
  store i32 %116, i32* %hypre__nz, align 4
  %117 = load i32, i32* %hypre__num_blocks, align 4
  %cmp172 = icmp sgt i32 %117, 1
  br i1 %cmp172, label %if.then.173, label %if.end.214

if.then.173:                                      ; preds = %for.body.171
  %118 = load i32, i32* %hypre__dir, align 4
  %cmp174 = icmp eq i32 %118, 0
  br i1 %cmp174, label %if.then.175, label %if.else

if.then.175:                                      ; preds = %if.then.173
  %119 = load i32, i32* %hypre__block, align 4
  %120 = load i32, i32* %hypre__div, align 4
  %mul176 = mul nsw i32 %119, %120
  %121 = load i32, i32* %hypre__mod, align 4
  %122 = load i32, i32* %hypre__block, align 4
  %cmp177 = icmp slt i32 %121, %122
  br i1 %cmp177, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %if.then.175
  %123 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.180

cond.false.179:                                   ; preds = %if.then.175
  %124 = load i32, i32* %hypre__block, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ %123, %cond.true.178 ], [ %124, %cond.false.179 ]
  %add182 = add nsw i32 %mul176, %cond181
  store i32 %add182, i32* %loopi, align 4
  %125 = load i32, i32* %hypre__div, align 4
  %126 = load i32, i32* %hypre__mod, align 4
  %127 = load i32, i32* %hypre__block, align 4
  %cmp183 = icmp sgt i32 %126, %127
  %cond184 = select i1 %cmp183, i32 1, i32 0
  %add185 = add nsw i32 %125, %cond184
  store i32 %add185, i32* %hypre__nx, align 4
  br label %if.end.213

if.else:                                          ; preds = %if.then.173
  %128 = load i32, i32* %hypre__dir, align 4
  %cmp186 = icmp eq i32 %128, 1
  br i1 %cmp186, label %if.then.187, label %if.else.198

if.then.187:                                      ; preds = %if.else
  %129 = load i32, i32* %hypre__block, align 4
  %130 = load i32, i32* %hypre__div, align 4
  %mul188 = mul nsw i32 %129, %130
  %131 = load i32, i32* %hypre__mod, align 4
  %132 = load i32, i32* %hypre__block, align 4
  %cmp189 = icmp slt i32 %131, %132
  br i1 %cmp189, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %if.then.187
  %133 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.192

cond.false.191:                                   ; preds = %if.then.187
  %134 = load i32, i32* %hypre__block, align 4
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.190
  %cond193 = phi i32 [ %133, %cond.true.190 ], [ %134, %cond.false.191 ]
  %add194 = add nsw i32 %mul188, %cond193
  store i32 %add194, i32* %loopj, align 4
  %135 = load i32, i32* %hypre__div, align 4
  %136 = load i32, i32* %hypre__mod, align 4
  %137 = load i32, i32* %hypre__block, align 4
  %cmp195 = icmp sgt i32 %136, %137
  %cond196 = select i1 %cmp195, i32 1, i32 0
  %add197 = add nsw i32 %135, %cond196
  store i32 %add197, i32* %hypre__ny, align 4
  br label %if.end.212

if.else.198:                                      ; preds = %if.else
  %138 = load i32, i32* %hypre__dir, align 4
  %cmp199 = icmp eq i32 %138, 2
  br i1 %cmp199, label %if.then.200, label %if.end.211

if.then.200:                                      ; preds = %if.else.198
  %139 = load i32, i32* %hypre__block, align 4
  %140 = load i32, i32* %hypre__div, align 4
  %mul201 = mul nsw i32 %139, %140
  %141 = load i32, i32* %hypre__mod, align 4
  %142 = load i32, i32* %hypre__block, align 4
  %cmp202 = icmp slt i32 %141, %142
  br i1 %cmp202, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %if.then.200
  %143 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.205

cond.false.204:                                   ; preds = %if.then.200
  %144 = load i32, i32* %hypre__block, align 4
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.204, %cond.true.203
  %cond206 = phi i32 [ %143, %cond.true.203 ], [ %144, %cond.false.204 ]
  %add207 = add nsw i32 %mul201, %cond206
  store i32 %add207, i32* %loopk, align 4
  %145 = load i32, i32* %hypre__div, align 4
  %146 = load i32, i32* %hypre__mod, align 4
  %147 = load i32, i32* %hypre__block, align 4
  %cmp208 = icmp sgt i32 %146, %147
  %cond209 = select i1 %cmp208, i32 1, i32 0
  %add210 = add nsw i32 %145, %cond209
  store i32 %add210, i32* %hypre__nz, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %cond.end.205, %if.else.198
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %cond.end.192
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %cond.end.180
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %for.body.171
  %148 = load i32, i32* %hypre__i1start, align 4
  %149 = load i32, i32* %loopi, align 4
  %150 = load i32, i32* %hypre__sx1, align 4
  %mul215 = mul nsw i32 %149, %150
  %add216 = add nsw i32 %148, %mul215
  %151 = load i32, i32* %loopj, align 4
  %152 = load i32, i32* %hypre__sy1, align 4
  %mul217 = mul nsw i32 %151, %152
  %add218 = add nsw i32 %add216, %mul217
  %153 = load i32, i32* %loopk, align 4
  %154 = load i32, i32* %hypre__sz1, align 4
  %mul219 = mul nsw i32 %153, %154
  %add220 = add nsw i32 %add218, %mul219
  store i32 %add220, i32* %iAc, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.276, %if.end.214
  %155 = load i32, i32* %loopk, align 4
  %156 = load i32, i32* %hypre__nz, align 4
  %cmp222 = icmp slt i32 %155, %156
  br i1 %cmp222, label %for.body.223, label %for.end.278

for.body.223:                                     ; preds = %for.cond.221
  store i32 0, i32* %loopj, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.270, %for.body.223
  %157 = load i32, i32* %loopj, align 4
  %158 = load i32, i32* %hypre__ny, align 4
  %cmp225 = icmp slt i32 %157, %158
  br i1 %cmp225, label %for.body.226, label %for.end.272

for.body.226:                                     ; preds = %for.cond.224
  store i32 0, i32* %loopi, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc, %for.body.226
  %159 = load i32, i32* %loopi, align 4
  %160 = load i32, i32* %hypre__nx, align 4
  %cmp228 = icmp slt i32 %159, %160
  br i1 %cmp228, label %for.body.229, label %for.end

for.body.229:                                     ; preds = %for.cond.227
  %161 = load i32, i32* %iAc, align 4
  %idxprom230 = sext i32 %161 to i64
  %162 = load double*, double** %rap_cnw, align 8
  %arrayidx231 = getelementptr inbounds double, double* %162, i64 %idxprom230
  %163 = load double, double* %arrayidx231, align 8
  %164 = load i32, i32* %iAc, align 4
  %idxprom232 = sext i32 %164 to i64
  %165 = load double*, double** %rap_csw, align 8
  %arrayidx233 = getelementptr inbounds double, double* %165, i64 %idxprom232
  %166 = load double, double* %arrayidx233, align 8
  %add234 = fadd double %163, %166
  %167 = load i32, i32* %iAc, align 4
  %idxprom235 = sext i32 %167 to i64
  %168 = load double*, double** %rap_cw, align 8
  %arrayidx236 = getelementptr inbounds double, double* %168, i64 %idxprom235
  %169 = load double, double* %arrayidx236, align 8
  %add237 = fadd double %169, %add234
  store double %add237, double* %arrayidx236, align 8
  %170 = load double, double* %zero, align 8
  %171 = load i32, i32* %iAc, align 4
  %idxprom238 = sext i32 %171 to i64
  %172 = load double*, double** %rap_cnw, align 8
  %arrayidx239 = getelementptr inbounds double, double* %172, i64 %idxprom238
  store double %170, double* %arrayidx239, align 8
  %173 = load double, double* %zero, align 8
  %174 = load i32, i32* %iAc, align 4
  %idxprom240 = sext i32 %174 to i64
  %175 = load double*, double** %rap_csw, align 8
  %arrayidx241 = getelementptr inbounds double, double* %175, i64 %idxprom240
  store double %173, double* %arrayidx241, align 8
  %176 = load i32, i32* %iAc, align 4
  %idxprom242 = sext i32 %176 to i64
  %177 = load double*, double** %rap_cn, align 8
  %arrayidx243 = getelementptr inbounds double, double* %177, i64 %idxprom242
  %178 = load double, double* %arrayidx243, align 8
  %179 = load i32, i32* %iAc, align 4
  %idxprom244 = sext i32 %179 to i64
  %180 = load double*, double** %rap_cs, align 8
  %arrayidx245 = getelementptr inbounds double, double* %180, i64 %idxprom244
  %181 = load double, double* %arrayidx245, align 8
  %add246 = fadd double %178, %181
  %182 = load i32, i32* %iAc, align 4
  %idxprom247 = sext i32 %182 to i64
  %183 = load double*, double** %rap_cc, align 8
  %arrayidx248 = getelementptr inbounds double, double* %183, i64 %idxprom247
  %184 = load double, double* %arrayidx248, align 8
  %add249 = fadd double %184, %add246
  store double %add249, double* %arrayidx248, align 8
  %185 = load double, double* %zero, align 8
  %186 = load i32, i32* %iAc, align 4
  %idxprom250 = sext i32 %186 to i64
  %187 = load double*, double** %rap_cn, align 8
  %arrayidx251 = getelementptr inbounds double, double* %187, i64 %idxprom250
  store double %185, double* %arrayidx251, align 8
  %188 = load double, double* %zero, align 8
  %189 = load i32, i32* %iAc, align 4
  %idxprom252 = sext i32 %189 to i64
  %190 = load double*, double** %rap_cs, align 8
  %arrayidx253 = getelementptr inbounds double, double* %190, i64 %idxprom252
  store double %188, double* %arrayidx253, align 8
  %191 = load i32, i32* %iAc, align 4
  %idxprom254 = sext i32 %191 to i64
  %192 = load double*, double** %rap_cne, align 8
  %arrayidx255 = getelementptr inbounds double, double* %192, i64 %idxprom254
  %193 = load double, double* %arrayidx255, align 8
  %194 = load i32, i32* %iAc, align 4
  %idxprom256 = sext i32 %194 to i64
  %195 = load double*, double** %rap_cse, align 8
  %arrayidx257 = getelementptr inbounds double, double* %195, i64 %idxprom256
  %196 = load double, double* %arrayidx257, align 8
  %add258 = fadd double %193, %196
  %197 = load i32, i32* %iAc, align 4
  %idxprom259 = sext i32 %197 to i64
  %198 = load double*, double** %rap_ce, align 8
  %arrayidx260 = getelementptr inbounds double, double* %198, i64 %idxprom259
  %199 = load double, double* %arrayidx260, align 8
  %add261 = fadd double %199, %add258
  store double %add261, double* %arrayidx260, align 8
  %200 = load double, double* %zero, align 8
  %201 = load i32, i32* %iAc, align 4
  %idxprom262 = sext i32 %201 to i64
  %202 = load double*, double** %rap_cne, align 8
  %arrayidx263 = getelementptr inbounds double, double* %202, i64 %idxprom262
  store double %200, double* %arrayidx263, align 8
  %203 = load double, double* %zero, align 8
  %204 = load i32, i32* %iAc, align 4
  %idxprom264 = sext i32 %204 to i64
  %205 = load double*, double** %rap_cse, align 8
  %arrayidx265 = getelementptr inbounds double, double* %205, i64 %idxprom264
  store double %203, double* %arrayidx265, align 8
  %206 = load i32, i32* %hypre__sx1, align 4
  %207 = load i32, i32* %iAc, align 4
  %add266 = add nsw i32 %207, %206
  store i32 %add266, i32* %iAc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.229
  %208 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %208, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.227

for.end:                                          ; preds = %for.cond.227
  %209 = load i32, i32* %hypre__sy1, align 4
  %210 = load i32, i32* %hypre__nx, align 4
  %211 = load i32, i32* %hypre__sx1, align 4
  %mul267 = mul nsw i32 %210, %211
  %sub268 = sub nsw i32 %209, %mul267
  %212 = load i32, i32* %iAc, align 4
  %add269 = add nsw i32 %212, %sub268
  store i32 %add269, i32* %iAc, align 4
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.end
  %213 = load i32, i32* %loopj, align 4
  %inc271 = add nsw i32 %213, 1
  store i32 %inc271, i32* %loopj, align 4
  br label %for.cond.224

for.end.272:                                      ; preds = %for.cond.224
  %214 = load i32, i32* %hypre__sz1, align 4
  %215 = load i32, i32* %hypre__ny, align 4
  %216 = load i32, i32* %hypre__sy1, align 4
  %mul273 = mul nsw i32 %215, %216
  %sub274 = sub nsw i32 %214, %mul273
  %217 = load i32, i32* %iAc, align 4
  %add275 = add nsw i32 %217, %sub274
  store i32 %add275, i32* %iAc, align 4
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.272
  %218 = load i32, i32* %loopk, align 4
  %inc277 = add nsw i32 %218, 1
  store i32 %inc277, i32* %loopk, align 4
  br label %for.cond.221

for.end.278:                                      ; preds = %for.cond.221
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.end.278
  %219 = load i32, i32* %hypre__block, align 4
  %inc280 = add nsw i32 %219, 1
  store i32 %inc280, i32* %hypre__block, align 4
  br label %for.cond.169

for.end.281:                                      ; preds = %for.cond.169
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.end.281
  %220 = load i32, i32* %ci, align 4
  %inc283 = add nsw i32 %220, 1
  store i32 %inc283, i32* %ci, align 4
  br label %for.cond

for.end.284:                                      ; preds = %for.cond
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %entry
  %221 = load i32, i32* %ierr, align 4
  ret i32 %221
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
