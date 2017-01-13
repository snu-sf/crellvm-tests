; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/26.SMG2000.smg_setup.bc'
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
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_SMGData = type { i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct**, double*, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, i8**, i8**, i8**, i8**, i32, i32, i32, double*, double* }

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetup(i8* %smg_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %comm = alloca i32, align 4
  %base_index = alloca i32*, align 8
  %base_stride = alloca i32*, align 8
  %n_pre = alloca i32, align 4
  %n_post = alloca i32, align 4
  %max_iter = alloca i32, align 4
  %max_levels = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %cdir = alloca i32, align 4
  %bindex = alloca [3 x i32], align 4
  %bstride = alloca [3 x i32], align 4
  %cindex = alloca [3 x i32], align 4
  %findex = alloca [3 x i32], align 4
  %stride = alloca [3 x i32], align 4
  %grid_l = alloca %struct.hypre_StructGrid_struct**, align 8
  %PT_grid_l = alloca %struct.hypre_StructGrid_struct**, align 8
  %data = alloca double*, align 8
  %data_size = alloca i32, align 4
  %A_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %PT_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %R_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %b_l = alloca %struct.hypre_StructVector_struct**, align 8
  %x_l = alloca %struct.hypre_StructVector_struct**, align 8
  %tb_l = alloca %struct.hypre_StructVector_struct**, align 8
  %tx_l = alloca %struct.hypre_StructVector_struct**, align 8
  %r_l = alloca %struct.hypre_StructVector_struct**, align 8
  %e_l = alloca %struct.hypre_StructVector_struct**, align 8
  %b_data = alloca double*, align 8
  %x_data = alloca double*, align 8
  %b_data_alloced = alloca i32, align 4
  %x_data_alloced = alloca i32, align 4
  %relax_data_l = alloca i8**, align 8
  %residual_data_l = alloca i8**, align 8
  %restrict_data_l = alloca i8**, align 8
  %interp_data_l = alloca i8**, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cbox = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %b_num_ghost = alloca [6 x i32], align 16
  %x_num_ghost = alloca [6 x i32], align 16
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 0
  %3 = load i32, i32* %comm1, align 4
  store i32 %3, i32* %comm, align 4
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 11
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i32 0
  store i32* %arraydecay, i32** %base_index, align 8
  %5 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %5, i32 0, i32 12
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride3, i32 0, i32 0
  store i32* %arraydecay4, i32** %base_stride, align 8
  %6 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_pre_relax = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %6, i32 0, i32 8
  %7 = load i32, i32* %num_pre_relax, align 4
  store i32 %7, i32* %n_pre, align 4
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_post_relax = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 9
  %9 = load i32, i32* %num_post_relax, align 4
  store i32 %9, i32* %n_post, align 4
  store i32 0, i32* %data_size, align 4
  %10 = bitcast [6 x i32]* %b_num_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 16, i1 false)
  %11 = bitcast [6 x i32]* %x_num_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 16, i1 false)
  store i32 0, i32* %ierr, align 4
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %12, i32 0, i32 3
  %13 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %13, i32 0, i32 3
  %14 = load i32, i32* %dim, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %cdir, align 4
  %15 = load i32, i32* %cdir, align 4
  %16 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %cdir5 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %16, i32 0, i32 10
  store i32 %15, i32* %cdir5, align 4
  %17 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %17, i32 0, i32 1
  %18 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid6, align 8
  store %struct.hypre_StructGrid_struct* %18, %struct.hypre_StructGrid_struct** %grid, align 8
  %19 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %bounding_box = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %19, i32 0, i32 6
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %call = call %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct* %20)
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %cbox, align 8
  %21 = load i32, i32* %cdir, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4
  %24 = load i32, i32* %cdir, align 4
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom7
  %26 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %23, %26
  %add = add nsw i32 %sub9, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %27 = load i32, i32* %cdir, align 4
  %idxprom10 = sext i32 %27 to i64
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imax11, i32 0, i64 %idxprom10
  %29 = load i32, i32* %arrayidx12, align 4
  %30 = load i32, i32* %cdir, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imin14, i32 0, i64 %idxprom13
  %32 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %29, %32
  %add17 = add nsw i32 %sub16, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add17, %cond.true ], [ 0, %cond.false ]
  %call18 = call i32 @hypre_Log2(i32 %cond)
  %add19 = add nsw i32 %call18, 2
  store i32 %add19, i32* %max_levels, align 4
  %33 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_levels20 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %33, i32 0, i32 6
  %34 = load i32, i32* %max_levels20, align 4
  %cmp21 = icmp sgt i32 %34, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %35 = load i32, i32* %max_levels, align 4
  %36 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_levels22 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %36, i32 0, i32 6
  %37 = load i32, i32* %max_levels22, align 4
  %cmp23 = icmp slt i32 %35, %37
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.then
  %38 = load i32, i32* %max_levels, align 4
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.then
  %39 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_levels26 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %39, i32 0, i32 6
  %40 = load i32, i32* %max_levels26, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %cond28 = phi i32 [ %38, %cond.true.24 ], [ %40, %cond.false.25 ]
  store i32 %cond28, i32* %max_levels, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.27, %cond.end
  %41 = load i32, i32* %max_levels, align 4
  %42 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_levels29 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %42, i32 0, i32 6
  store i32 %41, i32* %max_levels29, align 4
  %43 = load i32, i32* %max_levels, align 4
  %conv = sext i32 %43 to i64
  %mul = mul i64 8, %conv
  %conv30 = trunc i64 %mul to i32
  %call31 = call i8* @hypre_MAlloc(i32 %conv30)
  %44 = bitcast i8* %call31 to %struct.hypre_StructGrid_struct**
  store %struct.hypre_StructGrid_struct** %44, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %45 = load i32, i32* %max_levels, align 4
  %conv32 = sext i32 %45 to i64
  %mul33 = mul i64 8, %conv32
  %conv34 = trunc i64 %mul33 to i32
  %call35 = call i8* @hypre_MAlloc(i32 %conv34)
  %46 = bitcast i8* %call35 to %struct.hypre_StructGrid_struct**
  store %struct.hypre_StructGrid_struct** %46, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %47 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %arrayidx36 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %47, i64 0
  store %struct.hypre_StructGrid_struct* null, %struct.hypre_StructGrid_struct** %arrayidx36, align 8
  %48 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %49 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx37 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %49, i64 0
  %call38 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %48, %struct.hypre_StructGrid_struct** %arrayidx37)
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %50 = load i32, i32* %l, align 4
  %cmp39 = icmp sgt i32 %50, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.cond
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx44, align 4
  br label %if.end.51

if.else:                                          ; preds = %for.cond
  %51 = load i32*, i32** %base_index, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %52, i32* %arrayidx46, align 4
  %53 = load i32*, i32** %base_index, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %53, i64 1
  %54 = load i32, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %54, i32* %arrayidx48, align 4
  %55 = load i32*, i32** %base_index, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 2
  %56 = load i32, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %56, i32* %arrayidx50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.41
  %57 = load i32, i32* %cdir, align 4
  %idxprom52 = sext i32 %57 to i64
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom52
  %58 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %58, 0
  store i32 %add54, i32* %arrayidx53, align 4
  %59 = load i32, i32* %l, align 4
  %cmp55 = icmp sgt i32 %59, 0
  br i1 %cmp55, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.end.51
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx58, align 4
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx60, align 4
  br label %if.end.68

if.else.61:                                       ; preds = %if.end.51
  %60 = load i32*, i32** %base_stride, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %61, i32* %arrayidx63, align 4
  %62 = load i32*, i32** %base_stride, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %62, i64 1
  %63 = load i32, i32* %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %63, i32* %arrayidx65, align 4
  %64 = load i32*, i32** %base_stride, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %64, i64 2
  %65 = load i32, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %65, i32* %arrayidx67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.61, %if.then.57
  %66 = load i32, i32* %cdir, align 4
  %idxprom69 = sext i32 %66 to i64
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom69
  %67 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %67, 2
  store i32 %mul71, i32* %arrayidx70, align 4
  %68 = load i32, i32* %cdir, align 4
  %idxprom72 = sext i32 %68 to i64
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i64 %idxprom72
  %70 = load i32, i32* %arrayidx74, align 4
  %71 = load i32, i32* %cdir, align 4
  %idxprom75 = sext i32 %71 to i64
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 %idxprom75
  %73 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp eq i32 %70, %73
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.68
  %74 = load i32, i32* %l, align 4
  %75 = load i32, i32* %max_levels, align 4
  %sub80 = sub nsw i32 %75, 1
  %cmp81 = icmp eq i32 %74, %sub80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false, %if.end.68
  br label %for.end

if.end.84:                                        ; preds = %lor.lhs.false
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %arraydecay85 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call87 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %76, i32* %arraydecay85, i32* %arraydecay86)
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arraydecay89 = getelementptr inbounds [3 x i32], [3 x i32]* %imin88, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i32 0
  %call94 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay89, i32* %arraydecay90, i32* %arraydecay91, i32* %arraydecay93)
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arraydecay96 = getelementptr inbounds [3 x i32], [3 x i32]* %imax95, i32 0, i32 0
  %arraydecay97 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 1
  %arraydecay100 = getelementptr inbounds [3 x i32], [3 x i32]* %imax99, i32 0, i32 0
  %call101 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay96, i32* %arraydecay97, i32* %arraydecay98, i32* %arraydecay100)
  %81 = load i32, i32* %l, align 4
  %idxprom102 = sext i32 %81 to i64
  %82 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx103 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %82, i64 %idxprom102
  %83 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx103, align 8
  %arraydecay104 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay105 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %84 = load i32, i32* %l, align 4
  %add106 = add nsw i32 %84, 1
  %idxprom107 = sext i32 %add106 to i64
  %85 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %arrayidx108 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %85, i64 %idxprom107
  %call109 = call i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct* %83, i32* %arraydecay104, i32* %arraydecay105, i32 0, %struct.hypre_StructGrid_struct** %arrayidx108)
  %86 = load i32, i32* %l, align 4
  %idxprom110 = sext i32 %86 to i64
  %87 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx111 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %87, i64 %idxprom110
  %88 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx111, align 8
  %arraydecay112 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %89 = load i32, i32* %l, align 4
  %add114 = add nsw i32 %89, 1
  %idxprom115 = sext i32 %add114 to i64
  %90 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx116 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %90, i64 %idxprom115
  %call117 = call i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct* %88, i32* %arraydecay112, i32* %arraydecay113, i32 1, %struct.hypre_StructGrid_struct** %arrayidx116)
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %91 = load i32, i32* %l, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.83
  %92 = load i32, i32* %l, align 4
  %add118 = add nsw i32 %92, 1
  store i32 %add118, i32* %num_levels, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %call119 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %93)
  %94 = load i32, i32* %num_levels, align 4
  %95 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels120 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %95, i32 0, i32 7
  store i32 %94, i32* %num_levels120, align 4
  %96 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %97 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %grid_l121 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %97, i32 0, i32 13
  store %struct.hypre_StructGrid_struct** %96, %struct.hypre_StructGrid_struct*** %grid_l121, align 8
  %98 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %99 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_grid_l122 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %99, i32 0, i32 14
  store %struct.hypre_StructGrid_struct** %98, %struct.hypre_StructGrid_struct*** %PT_grid_l122, align 8
  %100 = load i32, i32* %num_levels, align 4
  %conv123 = sext i32 %100 to i64
  %mul124 = mul i64 8, %conv123
  %conv125 = trunc i64 %mul124 to i32
  %call126 = call i8* @hypre_MAlloc(i32 %conv125)
  %101 = bitcast i8* %call126 to %struct.hypre_StructMatrix_struct**
  store %struct.hypre_StructMatrix_struct** %101, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %102 = load i32, i32* %num_levels, align 4
  %sub127 = sub nsw i32 %102, 1
  %conv128 = sext i32 %sub127 to i64
  %mul129 = mul i64 8, %conv128
  %conv130 = trunc i64 %mul129 to i32
  %call131 = call i8* @hypre_MAlloc(i32 %conv130)
  %103 = bitcast i8* %call131 to %struct.hypre_StructMatrix_struct**
  store %struct.hypre_StructMatrix_struct** %103, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %104 = load i32, i32* %num_levels, align 4
  %sub132 = sub nsw i32 %104, 1
  %conv133 = sext i32 %sub132 to i64
  %mul134 = mul i64 8, %conv133
  %conv135 = trunc i64 %mul134 to i32
  %call136 = call i8* @hypre_MAlloc(i32 %conv135)
  %105 = bitcast i8* %call136 to %struct.hypre_StructMatrix_struct**
  store %struct.hypre_StructMatrix_struct** %105, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %106 = load i32, i32* %num_levels, align 4
  %conv137 = sext i32 %106 to i64
  %mul138 = mul i64 8, %conv137
  %conv139 = trunc i64 %mul138 to i32
  %call140 = call i8* @hypre_MAlloc(i32 %conv139)
  %107 = bitcast i8* %call140 to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %107, %struct.hypre_StructVector_struct*** %b_l, align 8
  %108 = load i32, i32* %num_levels, align 4
  %conv141 = sext i32 %108 to i64
  %mul142 = mul i64 8, %conv141
  %conv143 = trunc i64 %mul142 to i32
  %call144 = call i8* @hypre_MAlloc(i32 %conv143)
  %109 = bitcast i8* %call144 to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %109, %struct.hypre_StructVector_struct*** %x_l, align 8
  %110 = load i32, i32* %num_levels, align 4
  %conv145 = sext i32 %110 to i64
  %mul146 = mul i64 8, %conv145
  %conv147 = trunc i64 %mul146 to i32
  %call148 = call i8* @hypre_MAlloc(i32 %conv147)
  %111 = bitcast i8* %call148 to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %111, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %112 = load i32, i32* %num_levels, align 4
  %conv149 = sext i32 %112 to i64
  %mul150 = mul i64 8, %conv149
  %conv151 = trunc i64 %mul150 to i32
  %call152 = call i8* @hypre_MAlloc(i32 %conv151)
  %113 = bitcast i8* %call152 to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %113, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %114 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  store %struct.hypre_StructVector_struct** %114, %struct.hypre_StructVector_struct*** %r_l, align 8
  %115 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  store %struct.hypre_StructVector_struct** %115, %struct.hypre_StructVector_struct*** %e_l, align 8
  %116 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call153 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %116)
  %117 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx154 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %117, i64 0
  store %struct.hypre_StructMatrix_struct* %call153, %struct.hypre_StructMatrix_struct** %arrayidx154, align 8
  %118 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call155 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %118)
  %119 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx156 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %119, i64 0
  store %struct.hypre_StructVector_struct* %call155, %struct.hypre_StructVector_struct** %arrayidx156, align 8
  %120 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call157 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %120)
  %121 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx158 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %121, i64 0
  store %struct.hypre_StructVector_struct* %call157, %struct.hypre_StructVector_struct** %arrayidx158, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.169, %for.end
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %cdir, align 4
  %cmp160 = icmp sle i32 %122, %123
  br i1 %cmp160, label %for.body, label %for.end.171

for.body:                                         ; preds = %for.cond.159
  %124 = load i32, i32* %i, align 4
  %mul162 = mul nsw i32 2, %124
  %idxprom163 = sext i32 %mul162 to i64
  %arrayidx164 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i64 %idxprom163
  store i32 1, i32* %arrayidx164, align 4
  %125 = load i32, i32* %i, align 4
  %mul165 = mul nsw i32 2, %125
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i64 %idxprom167
  store i32 1, i32* %arrayidx168, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body
  %126 = load i32, i32* %i, align 4
  %inc170 = add nsw i32 %126, 1
  store i32 %inc170, i32* %i, align 4
  br label %for.cond.159

for.end.171:                                      ; preds = %for.cond.159
  %127 = load i32, i32* %comm, align 4
  %128 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx172 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %128, i64 0
  %129 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx172, align 8
  %call173 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %127, %struct.hypre_StructGrid_struct* %129)
  %130 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx174 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %130, i64 0
  store %struct.hypre_StructVector_struct* %call173, %struct.hypre_StructVector_struct** %arrayidx174, align 8
  %131 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx175 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %131, i64 0
  %132 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx175, align 8
  %133 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %133, i32 0, i32 7
  %arraydecay176 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i32 0
  %call177 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %132, i32* %arraydecay176)
  %134 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx178 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %134, i64 0
  %135 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx178, align 8
  %call179 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %135)
  %136 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx180 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %136, i64 0
  %137 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx180, align 8
  %data_size181 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %137, i32 0, i32 5
  %138 = load i32, i32* %data_size181, align 4
  %139 = load i32, i32* %data_size, align 4
  %add182 = add nsw i32 %139, %138
  store i32 %add182, i32* %data_size, align 4
  %140 = load i32, i32* %comm, align 4
  %141 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx183 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %141, i64 0
  %142 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx183, align 8
  %call184 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %140, %struct.hypre_StructGrid_struct* %142)
  %143 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx185 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %143, i64 0
  store %struct.hypre_StructVector_struct* %call184, %struct.hypre_StructVector_struct** %arrayidx185, align 8
  %144 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx186 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %144, i64 0
  %145 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx186, align 8
  %146 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %num_ghost187 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %146, i32 0, i32 7
  %arraydecay188 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost187, i32 0, i32 0
  %call189 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %145, i32* %arraydecay188)
  %147 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx190 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %147, i64 0
  %148 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx190, align 8
  %call191 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %148)
  %149 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx192 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %149, i64 0
  %150 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx192, align 8
  %data_size193 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %150, i32 0, i32 5
  %151 = load i32, i32* %data_size193, align 4
  %152 = load i32, i32* %data_size, align 4
  %add194 = add nsw i32 %152, %151
  store i32 %add194, i32* %data_size, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.324, %for.end.171
  %153 = load i32, i32* %l, align 4
  %154 = load i32, i32* %num_levels, align 4
  %sub196 = sub nsw i32 %154, 1
  %cmp197 = icmp slt i32 %153, %sub196
  br i1 %cmp197, label %for.body.199, label %for.end.326

for.body.199:                                     ; preds = %for.cond.195
  %155 = load i32, i32* %l, align 4
  %idxprom200 = sext i32 %155 to i64
  %156 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx201 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %156, i64 %idxprom200
  %157 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx201, align 8
  %158 = load i32, i32* %l, align 4
  %add202 = add nsw i32 %158, 1
  %idxprom203 = sext i32 %add202 to i64
  %159 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %arrayidx204 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %159, i64 %idxprom203
  %160 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx204, align 8
  %161 = load i32, i32* %cdir, align 4
  %call205 = call %struct.hypre_StructMatrix_struct* @hypre_SMGCreateInterpOp(%struct.hypre_StructMatrix_struct* %157, %struct.hypre_StructGrid_struct* %160, i32 %161)
  %162 = load i32, i32* %l, align 4
  %idxprom206 = sext i32 %162 to i64
  %163 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx207 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %163, i64 %idxprom206
  store %struct.hypre_StructMatrix_struct* %call205, %struct.hypre_StructMatrix_struct** %arrayidx207, align 8
  %164 = load i32, i32* %l, align 4
  %idxprom208 = sext i32 %164 to i64
  %165 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx209 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %165, i64 %idxprom208
  %166 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx209, align 8
  %call210 = call i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct* %166)
  %167 = load i32, i32* %l, align 4
  %idxprom211 = sext i32 %167 to i64
  %168 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx212 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %168, i64 %idxprom211
  %169 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx212, align 8
  %data_size213 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %169, i32 0, i32 8
  %170 = load i32, i32* %data_size213, align 4
  %171 = load i32, i32* %data_size, align 4
  %add214 = add nsw i32 %171, %170
  store i32 %add214, i32* %data_size, align 4
  %172 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %172, i32 0, i32 10
  %173 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %173, 0
  br i1 %tobool, label %if.then.215, label %if.else.220

if.then.215:                                      ; preds = %for.body.199
  %174 = load i32, i32* %l, align 4
  %idxprom216 = sext i32 %174 to i64
  %175 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx217 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %175, i64 %idxprom216
  %176 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx217, align 8
  %177 = load i32, i32* %l, align 4
  %idxprom218 = sext i32 %177 to i64
  %178 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx219 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %178, i64 %idxprom218
  store %struct.hypre_StructMatrix_struct* %176, %struct.hypre_StructMatrix_struct** %arrayidx219, align 8
  br label %if.end.225

if.else.220:                                      ; preds = %for.body.199
  %179 = load i32, i32* %l, align 4
  %idxprom221 = sext i32 %179 to i64
  %180 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx222 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %180, i64 %idxprom221
  %181 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx222, align 8
  %182 = load i32, i32* %l, align 4
  %idxprom223 = sext i32 %182 to i64
  %183 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx224 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %183, i64 %idxprom223
  store %struct.hypre_StructMatrix_struct* %181, %struct.hypre_StructMatrix_struct** %arrayidx224, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.220, %if.then.215
  %184 = load i32, i32* %l, align 4
  %idxprom226 = sext i32 %184 to i64
  %185 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx227 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %185, i64 %idxprom226
  %186 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx227, align 8
  %187 = load i32, i32* %l, align 4
  %idxprom228 = sext i32 %187 to i64
  %188 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx229 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %188, i64 %idxprom228
  %189 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx229, align 8
  %190 = load i32, i32* %l, align 4
  %idxprom230 = sext i32 %190 to i64
  %191 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx231 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %191, i64 %idxprom230
  %192 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx231, align 8
  %193 = load i32, i32* %l, align 4
  %add232 = add nsw i32 %193, 1
  %idxprom233 = sext i32 %add232 to i64
  %194 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx234 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %194, i64 %idxprom233
  %195 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx234, align 8
  %call235 = call %struct.hypre_StructMatrix_struct* @hypre_SMGCreateRAPOp(%struct.hypre_StructMatrix_struct* %186, %struct.hypre_StructMatrix_struct* %189, %struct.hypre_StructMatrix_struct* %192, %struct.hypre_StructGrid_struct* %195)
  %196 = load i32, i32* %l, align 4
  %add236 = add nsw i32 %196, 1
  %idxprom237 = sext i32 %add236 to i64
  %197 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx238 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %197, i64 %idxprom237
  store %struct.hypre_StructMatrix_struct* %call235, %struct.hypre_StructMatrix_struct** %arrayidx238, align 8
  %198 = load i32, i32* %l, align 4
  %add239 = add nsw i32 %198, 1
  %idxprom240 = sext i32 %add239 to i64
  %199 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx241 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %199, i64 %idxprom240
  %200 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx241, align 8
  %call242 = call i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct* %200)
  %201 = load i32, i32* %l, align 4
  %add243 = add nsw i32 %201, 1
  %idxprom244 = sext i32 %add243 to i64
  %202 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx245 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %202, i64 %idxprom244
  %203 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx245, align 8
  %data_size246 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %203, i32 0, i32 8
  %204 = load i32, i32* %data_size246, align 4
  %205 = load i32, i32* %data_size, align 4
  %add247 = add nsw i32 %205, %204
  store i32 %add247, i32* %data_size, align 4
  %206 = load i32, i32* %comm, align 4
  %207 = load i32, i32* %l, align 4
  %add248 = add nsw i32 %207, 1
  %idxprom249 = sext i32 %add248 to i64
  %208 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx250 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %208, i64 %idxprom249
  %209 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx250, align 8
  %call251 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %206, %struct.hypre_StructGrid_struct* %209)
  %210 = load i32, i32* %l, align 4
  %add252 = add nsw i32 %210, 1
  %idxprom253 = sext i32 %add252 to i64
  %211 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx254 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %211, i64 %idxprom253
  store %struct.hypre_StructVector_struct* %call251, %struct.hypre_StructVector_struct** %arrayidx254, align 8
  %212 = load i32, i32* %l, align 4
  %add255 = add nsw i32 %212, 1
  %idxprom256 = sext i32 %add255 to i64
  %213 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx257 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %213, i64 %idxprom256
  %214 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx257, align 8
  %arraydecay258 = getelementptr inbounds [6 x i32], [6 x i32]* %b_num_ghost, i32 0, i32 0
  %call259 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %214, i32* %arraydecay258)
  %215 = load i32, i32* %l, align 4
  %add260 = add nsw i32 %215, 1
  %idxprom261 = sext i32 %add260 to i64
  %216 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx262 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %216, i64 %idxprom261
  %217 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx262, align 8
  %call263 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %217)
  %218 = load i32, i32* %l, align 4
  %add264 = add nsw i32 %218, 1
  %idxprom265 = sext i32 %add264 to i64
  %219 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx266 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %219, i64 %idxprom265
  %220 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx266, align 8
  %data_size267 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %220, i32 0, i32 5
  %221 = load i32, i32* %data_size267, align 4
  %222 = load i32, i32* %data_size, align 4
  %add268 = add nsw i32 %222, %221
  store i32 %add268, i32* %data_size, align 4
  %223 = load i32, i32* %comm, align 4
  %224 = load i32, i32* %l, align 4
  %add269 = add nsw i32 %224, 1
  %idxprom270 = sext i32 %add269 to i64
  %225 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx271 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %225, i64 %idxprom270
  %226 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx271, align 8
  %call272 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %223, %struct.hypre_StructGrid_struct* %226)
  %227 = load i32, i32* %l, align 4
  %add273 = add nsw i32 %227, 1
  %idxprom274 = sext i32 %add273 to i64
  %228 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx275 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %228, i64 %idxprom274
  store %struct.hypre_StructVector_struct* %call272, %struct.hypre_StructVector_struct** %arrayidx275, align 8
  %229 = load i32, i32* %l, align 4
  %add276 = add nsw i32 %229, 1
  %idxprom277 = sext i32 %add276 to i64
  %230 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx278 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %230, i64 %idxprom277
  %231 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx278, align 8
  %arraydecay279 = getelementptr inbounds [6 x i32], [6 x i32]* %x_num_ghost, i32 0, i32 0
  %call280 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %231, i32* %arraydecay279)
  %232 = load i32, i32* %l, align 4
  %add281 = add nsw i32 %232, 1
  %idxprom282 = sext i32 %add281 to i64
  %233 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx283 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %233, i64 %idxprom282
  %234 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx283, align 8
  %call284 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %234)
  %235 = load i32, i32* %l, align 4
  %add285 = add nsw i32 %235, 1
  %idxprom286 = sext i32 %add285 to i64
  %236 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx287 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %236, i64 %idxprom286
  %237 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx287, align 8
  %data_size288 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %237, i32 0, i32 5
  %238 = load i32, i32* %data_size288, align 4
  %239 = load i32, i32* %data_size, align 4
  %add289 = add nsw i32 %239, %238
  store i32 %add289, i32* %data_size, align 4
  %240 = load i32, i32* %comm, align 4
  %241 = load i32, i32* %l, align 4
  %add290 = add nsw i32 %241, 1
  %idxprom291 = sext i32 %add290 to i64
  %242 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx292 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %242, i64 %idxprom291
  %243 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx292, align 8
  %call293 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %240, %struct.hypre_StructGrid_struct* %243)
  %244 = load i32, i32* %l, align 4
  %add294 = add nsw i32 %244, 1
  %idxprom295 = sext i32 %add294 to i64
  %245 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx296 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %245, i64 %idxprom295
  store %struct.hypre_StructVector_struct* %call293, %struct.hypre_StructVector_struct** %arrayidx296, align 8
  %246 = load i32, i32* %l, align 4
  %add297 = add nsw i32 %246, 1
  %idxprom298 = sext i32 %add297 to i64
  %247 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx299 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %247, i64 %idxprom298
  %248 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx299, align 8
  %249 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %num_ghost300 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %249, i32 0, i32 7
  %arraydecay301 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost300, i32 0, i32 0
  %call302 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %248, i32* %arraydecay301)
  %250 = load i32, i32* %l, align 4
  %add303 = add nsw i32 %250, 1
  %idxprom304 = sext i32 %add303 to i64
  %251 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx305 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %251, i64 %idxprom304
  %252 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx305, align 8
  %call306 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %252)
  %253 = load i32, i32* %comm, align 4
  %254 = load i32, i32* %l, align 4
  %add307 = add nsw i32 %254, 1
  %idxprom308 = sext i32 %add307 to i64
  %255 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx309 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %255, i64 %idxprom308
  %256 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx309, align 8
  %call310 = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %253, %struct.hypre_StructGrid_struct* %256)
  %257 = load i32, i32* %l, align 4
  %add311 = add nsw i32 %257, 1
  %idxprom312 = sext i32 %add311 to i64
  %258 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx313 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %258, i64 %idxprom312
  store %struct.hypre_StructVector_struct* %call310, %struct.hypre_StructVector_struct** %arrayidx313, align 8
  %259 = load i32, i32* %l, align 4
  %add314 = add nsw i32 %259, 1
  %idxprom315 = sext i32 %add314 to i64
  %260 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx316 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %260, i64 %idxprom315
  %261 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx316, align 8
  %262 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %num_ghost317 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %262, i32 0, i32 7
  %arraydecay318 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost317, i32 0, i32 0
  %call319 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %261, i32* %arraydecay318)
  %263 = load i32, i32* %l, align 4
  %add320 = add nsw i32 %263, 1
  %idxprom321 = sext i32 %add320 to i64
  %264 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx322 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %264, i64 %idxprom321
  %265 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx322, align 8
  %call323 = call i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct* %265)
  br label %for.inc.324

for.inc.324:                                      ; preds = %if.end.225
  %266 = load i32, i32* %l, align 4
  %inc325 = add nsw i32 %266, 1
  store i32 %inc325, i32* %l, align 4
  br label %for.cond.195

for.end.326:                                      ; preds = %for.cond.195
  %267 = load i32, i32* %data_size, align 4
  %call327 = call i8* @hypre_CAlloc(i32 %267, i32 8)
  %268 = bitcast i8* %call327 to double*
  store double* %268, double** %data, align 8
  %269 = load double*, double** %data, align 8
  %270 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %data328 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %270, i32 0, i32 15
  store double* %269, double** %data328, align 8
  %271 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx329 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %271, i64 0
  %272 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx329, align 8
  %273 = load double*, double** %data, align 8
  %call330 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %272, double* %273)
  %274 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx331 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %274, i64 0
  %275 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx331, align 8
  %call332 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %275)
  %276 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx333 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %276, i64 0
  %277 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx333, align 8
  %data_size334 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %277, i32 0, i32 5
  %278 = load i32, i32* %data_size334, align 4
  %279 = load double*, double** %data, align 8
  %idx.ext = sext i32 %278 to i64
  %add.ptr = getelementptr inbounds double, double* %279, i64 %idx.ext
  store double* %add.ptr, double** %data, align 8
  %280 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx335 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %280, i64 0
  %281 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx335, align 8
  %282 = load double*, double** %data, align 8
  %call336 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %281, double* %282)
  %283 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx337 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %283, i64 0
  %284 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx337, align 8
  %call338 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %284)
  %285 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx339 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %285, i64 0
  %286 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx339, align 8
  %data_size340 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %286, i32 0, i32 5
  %287 = load i32, i32* %data_size340, align 4
  %288 = load double*, double** %data, align 8
  %idx.ext341 = sext i32 %287 to i64
  %add.ptr342 = getelementptr inbounds double, double* %288, i64 %idx.ext341
  store double* %add.ptr342, double** %data, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.414, %for.end.326
  %289 = load i32, i32* %l, align 4
  %290 = load i32, i32* %num_levels, align 4
  %sub344 = sub nsw i32 %290, 1
  %cmp345 = icmp slt i32 %289, %sub344
  br i1 %cmp345, label %for.body.347, label %for.end.416

for.body.347:                                     ; preds = %for.cond.343
  %291 = load i32, i32* %l, align 4
  %idxprom348 = sext i32 %291 to i64
  %292 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx349 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %292, i64 %idxprom348
  %293 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx349, align 8
  %294 = load double*, double** %data, align 8
  %call350 = call i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct* %293, double* %294)
  %295 = load i32, i32* %l, align 4
  %idxprom351 = sext i32 %295 to i64
  %296 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx352 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %296, i64 %idxprom351
  %297 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx352, align 8
  %data_size353 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %297, i32 0, i32 8
  %298 = load i32, i32* %data_size353, align 4
  %299 = load double*, double** %data, align 8
  %idx.ext354 = sext i32 %298 to i64
  %add.ptr355 = getelementptr inbounds double, double* %299, i64 %idx.ext354
  store double* %add.ptr355, double** %data, align 8
  %300 = load i32, i32* %l, align 4
  %add356 = add nsw i32 %300, 1
  %idxprom357 = sext i32 %add356 to i64
  %301 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx358 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %301, i64 %idxprom357
  %302 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx358, align 8
  %303 = load double*, double** %data, align 8
  %call359 = call i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct* %302, double* %303)
  %304 = load i32, i32* %l, align 4
  %add360 = add nsw i32 %304, 1
  %idxprom361 = sext i32 %add360 to i64
  %305 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx362 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %305, i64 %idxprom361
  %306 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx362, align 8
  %data_size363 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %306, i32 0, i32 8
  %307 = load i32, i32* %data_size363, align 4
  %308 = load double*, double** %data, align 8
  %idx.ext364 = sext i32 %307 to i64
  %add.ptr365 = getelementptr inbounds double, double* %308, i64 %idx.ext364
  store double* %add.ptr365, double** %data, align 8
  %309 = load i32, i32* %l, align 4
  %add366 = add nsw i32 %309, 1
  %idxprom367 = sext i32 %add366 to i64
  %310 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx368 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %310, i64 %idxprom367
  %311 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx368, align 8
  %312 = load double*, double** %data, align 8
  %call369 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %311, double* %312)
  %313 = load i32, i32* %l, align 4
  %add370 = add nsw i32 %313, 1
  %idxprom371 = sext i32 %add370 to i64
  %314 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx372 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %314, i64 %idxprom371
  %315 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx372, align 8
  %call373 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %315)
  %316 = load i32, i32* %l, align 4
  %add374 = add nsw i32 %316, 1
  %idxprom375 = sext i32 %add374 to i64
  %317 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx376 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %317, i64 %idxprom375
  %318 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx376, align 8
  %data_size377 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %318, i32 0, i32 5
  %319 = load i32, i32* %data_size377, align 4
  %320 = load double*, double** %data, align 8
  %idx.ext378 = sext i32 %319 to i64
  %add.ptr379 = getelementptr inbounds double, double* %320, i64 %idx.ext378
  store double* %add.ptr379, double** %data, align 8
  %321 = load i32, i32* %l, align 4
  %add380 = add nsw i32 %321, 1
  %idxprom381 = sext i32 %add380 to i64
  %322 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx382 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %322, i64 %idxprom381
  %323 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx382, align 8
  %324 = load double*, double** %data, align 8
  %call383 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %323, double* %324)
  %325 = load i32, i32* %l, align 4
  %add384 = add nsw i32 %325, 1
  %idxprom385 = sext i32 %add384 to i64
  %326 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx386 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %326, i64 %idxprom385
  %327 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx386, align 8
  %call387 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %327)
  %328 = load i32, i32* %l, align 4
  %add388 = add nsw i32 %328, 1
  %idxprom389 = sext i32 %add388 to i64
  %329 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx390 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %329, i64 %idxprom389
  %330 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx390, align 8
  %data_size391 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %330, i32 0, i32 5
  %331 = load i32, i32* %data_size391, align 4
  %332 = load double*, double** %data, align 8
  %idx.ext392 = sext i32 %331 to i64
  %add.ptr393 = getelementptr inbounds double, double* %332, i64 %idx.ext392
  store double* %add.ptr393, double** %data, align 8
  %333 = load i32, i32* %l, align 4
  %add394 = add nsw i32 %333, 1
  %idxprom395 = sext i32 %add394 to i64
  %334 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx396 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %334, i64 %idxprom395
  %335 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx396, align 8
  %336 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx397 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %336, i64 0
  %337 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx397, align 8
  %data398 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %337, i32 0, i32 3
  %338 = load double*, double** %data398, align 8
  %call399 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %335, double* %338)
  %339 = load i32, i32* %l, align 4
  %add400 = add nsw i32 %339, 1
  %idxprom401 = sext i32 %add400 to i64
  %340 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx402 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %340, i64 %idxprom401
  %341 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx402, align 8
  %call403 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %341)
  %342 = load i32, i32* %l, align 4
  %add404 = add nsw i32 %342, 1
  %idxprom405 = sext i32 %add404 to i64
  %343 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx406 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %343, i64 %idxprom405
  %344 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx406, align 8
  %345 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx407 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %345, i64 0
  %346 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx407, align 8
  %data408 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %346, i32 0, i32 3
  %347 = load double*, double** %data408, align 8
  %call409 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %344, double* %347)
  %348 = load i32, i32* %l, align 4
  %add410 = add nsw i32 %348, 1
  %idxprom411 = sext i32 %add410 to i64
  %349 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx412 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %349, i64 %idxprom411
  %350 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx412, align 8
  %call413 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %350)
  br label %for.inc.414

for.inc.414:                                      ; preds = %for.body.347
  %351 = load i32, i32* %l, align 4
  %inc415 = add nsw i32 %351, 1
  store i32 %inc415, i32* %l, align 4
  br label %for.cond.343

for.end.416:                                      ; preds = %for.cond.343
  %352 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %353 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l417 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %353, i32 0, i32 16
  store %struct.hypre_StructMatrix_struct** %352, %struct.hypre_StructMatrix_struct*** %A_l417, align 8
  %354 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %355 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l418 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %355, i32 0, i32 17
  store %struct.hypre_StructMatrix_struct** %354, %struct.hypre_StructMatrix_struct*** %PT_l418, align 8
  %356 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %357 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l419 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %357, i32 0, i32 18
  store %struct.hypre_StructMatrix_struct** %356, %struct.hypre_StructMatrix_struct*** %R_l419, align 8
  %358 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %359 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l420 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %359, i32 0, i32 19
  store %struct.hypre_StructVector_struct** %358, %struct.hypre_StructVector_struct*** %b_l420, align 8
  %360 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %361 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l421 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %361, i32 0, i32 20
  store %struct.hypre_StructVector_struct** %360, %struct.hypre_StructVector_struct*** %x_l421, align 8
  %362 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %363 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tb_l422 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %363, i32 0, i32 21
  store %struct.hypre_StructVector_struct** %362, %struct.hypre_StructVector_struct*** %tb_l422, align 8
  %364 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %365 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tx_l423 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %365, i32 0, i32 22
  store %struct.hypre_StructVector_struct** %364, %struct.hypre_StructVector_struct*** %tx_l423, align 8
  %366 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %367 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %r_l424 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %367, i32 0, i32 23
  store %struct.hypre_StructVector_struct** %366, %struct.hypre_StructVector_struct*** %r_l424, align 8
  %368 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %369 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %e_l425 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %369, i32 0, i32 24
  store %struct.hypre_StructVector_struct** %368, %struct.hypre_StructVector_struct*** %e_l425, align 8
  %370 = load i32, i32* %num_levels, align 4
  %conv426 = sext i32 %370 to i64
  %mul427 = mul i64 8, %conv426
  %conv428 = trunc i64 %mul427 to i32
  %call429 = call i8* @hypre_MAlloc(i32 %conv428)
  %371 = bitcast i8* %call429 to i8**
  store i8** %371, i8*** %relax_data_l, align 8
  %372 = load i32, i32* %num_levels, align 4
  %conv430 = sext i32 %372 to i64
  %mul431 = mul i64 8, %conv430
  %conv432 = trunc i64 %mul431 to i32
  %call433 = call i8* @hypre_MAlloc(i32 %conv432)
  %373 = bitcast i8* %call433 to i8**
  store i8** %373, i8*** %residual_data_l, align 8
  %374 = load i32, i32* %num_levels, align 4
  %conv434 = sext i32 %374 to i64
  %mul435 = mul i64 8, %conv434
  %conv436 = trunc i64 %mul435 to i32
  %call437 = call i8* @hypre_MAlloc(i32 %conv436)
  %375 = bitcast i8* %call437 to i8**
  store i8** %375, i8*** %restrict_data_l, align 8
  %376 = load i32, i32* %num_levels, align 4
  %conv438 = sext i32 %376 to i64
  %mul439 = mul i64 8, %conv438
  %conv440 = trunc i64 %mul439 to i32
  %call441 = call i8* @hypre_MAlloc(i32 %conv440)
  %377 = bitcast i8* %call441 to i8**
  store i8** %377, i8*** %interp_data_l, align 8
  %378 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx442 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %378, i64 0
  %379 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx442, align 8
  %data443 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %379, i32 0, i32 3
  %380 = load double*, double** %data443, align 8
  store double* %380, double** %b_data, align 8
  %381 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx444 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %381, i64 0
  %382 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx444, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %382, i32 0, i32 4
  %383 = load i32, i32* %data_alloced, align 4
  store i32 %383, i32* %b_data_alloced, align 4
  %384 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx445 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %384, i64 0
  %385 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx445, align 8
  %data446 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %385, i32 0, i32 3
  %386 = load double*, double** %data446, align 8
  store double* %386, double** %x_data, align 8
  %387 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx447 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %387, i64 0
  %388 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx447, align 8
  %data_alloced448 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %388, i32 0, i32 4
  %389 = load i32, i32* %data_alloced448, align 4
  store i32 %389, i32* %x_data_alloced, align 4
  %390 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx449 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %390, i64 0
  %391 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx449, align 8
  %392 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx450 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %392, i64 0
  %393 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx450, align 8
  %data451 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %393, i32 0, i32 3
  %394 = load double*, double** %data451, align 8
  %call452 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %391, double* %394)
  %395 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx453 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %395, i64 0
  %396 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx453, align 8
  %397 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx454 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %397, i64 0
  %398 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx454, align 8
  %data455 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %398, i32 0, i32 3
  %399 = load double*, double** %data455, align 8
  %call456 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %396, double* %399)
  %400 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx457 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %400, i64 0
  %401 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx457, align 8
  %call458 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %401)
  %402 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx459 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %402, i64 0
  %403 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx459, align 8
  %call460 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %403)
  store i32 0, i32* %l, align 4
  br label %for.cond.461

for.cond.461:                                     ; preds = %for.inc.688, %for.end.416
  %404 = load i32, i32* %l, align 4
  %405 = load i32, i32* %num_levels, align 4
  %sub462 = sub nsw i32 %405, 1
  %cmp463 = icmp slt i32 %404, %sub462
  br i1 %cmp463, label %for.body.465, label %for.end.690

for.body.465:                                     ; preds = %for.cond.461
  %406 = load i32, i32* %l, align 4
  %cmp466 = icmp sgt i32 %406, 0
  br i1 %cmp466, label %if.then.468, label %if.else.472

if.then.468:                                      ; preds = %for.body.465
  %arrayidx469 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 0
  store i32 0, i32* %arrayidx469, align 4
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 1
  store i32 0, i32* %arrayidx470, align 4
  %arrayidx471 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 2
  store i32 0, i32* %arrayidx471, align 4
  br label %if.end.479

if.else.472:                                      ; preds = %for.body.465
  %407 = load i32*, i32** %base_index, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %407, i64 0
  %408 = load i32, i32* %arrayidx473, align 4
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 0
  store i32 %408, i32* %arrayidx474, align 4
  %409 = load i32*, i32** %base_index, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %409, i64 1
  %410 = load i32, i32* %arrayidx475, align 4
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 1
  store i32 %410, i32* %arrayidx476, align 4
  %411 = load i32*, i32** %base_index, align 8
  %arrayidx477 = getelementptr inbounds i32, i32* %411, i64 2
  %412 = load i32, i32* %arrayidx477, align 4
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 2
  store i32 %412, i32* %arrayidx478, align 4
  br label %if.end.479

if.end.479:                                       ; preds = %if.else.472, %if.then.468
  %413 = load i32, i32* %l, align 4
  %cmp480 = icmp sgt i32 %413, 0
  br i1 %cmp480, label %if.then.482, label %if.else.486

if.then.482:                                      ; preds = %if.end.479
  %arrayidx483 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 0
  store i32 1, i32* %arrayidx483, align 4
  %arrayidx484 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 1
  store i32 1, i32* %arrayidx484, align 4
  %arrayidx485 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 2
  store i32 1, i32* %arrayidx485, align 4
  br label %if.end.493

if.else.486:                                      ; preds = %if.end.479
  %414 = load i32*, i32** %base_stride, align 8
  %arrayidx487 = getelementptr inbounds i32, i32* %414, i64 0
  %415 = load i32, i32* %arrayidx487, align 4
  %arrayidx488 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 0
  store i32 %415, i32* %arrayidx488, align 4
  %416 = load i32*, i32** %base_stride, align 8
  %arrayidx489 = getelementptr inbounds i32, i32* %416, i64 1
  %417 = load i32, i32* %arrayidx489, align 4
  %arrayidx490 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 1
  store i32 %417, i32* %arrayidx490, align 4
  %418 = load i32*, i32** %base_stride, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %418, i64 2
  %419 = load i32, i32* %arrayidx491, align 4
  %arrayidx492 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 2
  store i32 %419, i32* %arrayidx492, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %if.else.486, %if.then.482
  %420 = load i32, i32* %l, align 4
  %cmp494 = icmp sgt i32 %420, 0
  br i1 %cmp494, label %if.then.496, label %if.else.500

if.then.496:                                      ; preds = %if.end.493
  %arrayidx497 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 0, i32* %arrayidx497, align 4
  %arrayidx498 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 0, i32* %arrayidx498, align 4
  %arrayidx499 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 0, i32* %arrayidx499, align 4
  br label %if.end.507

if.else.500:                                      ; preds = %if.end.493
  %421 = load i32*, i32** %base_index, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %421, i64 0
  %422 = load i32, i32* %arrayidx501, align 4
  %arrayidx502 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 0
  store i32 %422, i32* %arrayidx502, align 4
  %423 = load i32*, i32** %base_index, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %423, i64 1
  %424 = load i32, i32* %arrayidx503, align 4
  %arrayidx504 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 1
  store i32 %424, i32* %arrayidx504, align 4
  %425 = load i32*, i32** %base_index, align 8
  %arrayidx505 = getelementptr inbounds i32, i32* %425, i64 2
  %426 = load i32, i32* %arrayidx505, align 4
  %arrayidx506 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 2
  store i32 %426, i32* %arrayidx506, align 4
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.500, %if.then.496
  %427 = load i32, i32* %cdir, align 4
  %idxprom508 = sext i32 %427 to i64
  %arrayidx509 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom508
  %428 = load i32, i32* %arrayidx509, align 4
  %add510 = add nsw i32 %428, 0
  store i32 %add510, i32* %arrayidx509, align 4
  %429 = load i32, i32* %l, align 4
  %cmp511 = icmp sgt i32 %429, 0
  br i1 %cmp511, label %if.then.513, label %if.else.517

if.then.513:                                      ; preds = %if.end.507
  %arrayidx514 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 0, i32* %arrayidx514, align 4
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 0, i32* %arrayidx515, align 4
  %arrayidx516 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 0, i32* %arrayidx516, align 4
  br label %if.end.524

if.else.517:                                      ; preds = %if.end.507
  %430 = load i32*, i32** %base_index, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %430, i64 0
  %431 = load i32, i32* %arrayidx518, align 4
  %arrayidx519 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 0
  store i32 %431, i32* %arrayidx519, align 4
  %432 = load i32*, i32** %base_index, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %432, i64 1
  %433 = load i32, i32* %arrayidx520, align 4
  %arrayidx521 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 1
  store i32 %433, i32* %arrayidx521, align 4
  %434 = load i32*, i32** %base_index, align 8
  %arrayidx522 = getelementptr inbounds i32, i32* %434, i64 2
  %435 = load i32, i32* %arrayidx522, align 4
  %arrayidx523 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 2
  store i32 %435, i32* %arrayidx523, align 4
  br label %if.end.524

if.end.524:                                       ; preds = %if.else.517, %if.then.513
  %436 = load i32, i32* %cdir, align 4
  %idxprom525 = sext i32 %436 to i64
  %arrayidx526 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 %idxprom525
  %437 = load i32, i32* %arrayidx526, align 4
  %add527 = add nsw i32 %437, 1
  store i32 %add527, i32* %arrayidx526, align 4
  %438 = load i32, i32* %l, align 4
  %cmp528 = icmp sgt i32 %438, 0
  br i1 %cmp528, label %if.then.530, label %if.else.534

if.then.530:                                      ; preds = %if.end.524
  %arrayidx531 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx531, align 4
  %arrayidx532 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx532, align 4
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx533, align 4
  br label %if.end.541

if.else.534:                                      ; preds = %if.end.524
  %439 = load i32*, i32** %base_stride, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %439, i64 0
  %440 = load i32, i32* %arrayidx535, align 4
  %arrayidx536 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 %440, i32* %arrayidx536, align 4
  %441 = load i32*, i32** %base_stride, align 8
  %arrayidx537 = getelementptr inbounds i32, i32* %441, i64 1
  %442 = load i32, i32* %arrayidx537, align 4
  %arrayidx538 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 %442, i32* %arrayidx538, align 4
  %443 = load i32*, i32** %base_stride, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %443, i64 2
  %444 = load i32, i32* %arrayidx539, align 4
  %arrayidx540 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 %444, i32* %arrayidx540, align 4
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.534, %if.then.530
  %445 = load i32, i32* %cdir, align 4
  %idxprom542 = sext i32 %445 to i64
  %arrayidx543 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom542
  %446 = load i32, i32* %arrayidx543, align 4
  %mul544 = mul nsw i32 %446, 2
  store i32 %mul544, i32* %arrayidx543, align 4
  %447 = load i32, i32* %comm, align 4
  %call545 = call i8* @hypre_SMGRelaxCreate(i32 %447)
  %448 = load i32, i32* %l, align 4
  %idxprom546 = sext i32 %448 to i64
  %449 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx547 = getelementptr inbounds i8*, i8** %449, i64 %idxprom546
  store i8* %call545, i8** %arrayidx547, align 8
  %450 = load i32, i32* %l, align 4
  %idxprom548 = sext i32 %450 to i64
  %451 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx549 = getelementptr inbounds i8*, i8** %451, i64 %idxprom548
  %452 = load i8*, i8** %arrayidx549, align 8
  %arraydecay550 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i32 0
  %arraydecay551 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i32 0
  %call552 = call i32 @hypre_SMGRelaxSetBase(i8* %452, i32* %arraydecay550, i32* %arraydecay551)
  %453 = load i32, i32* %l, align 4
  %idxprom553 = sext i32 %453 to i64
  %454 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx554 = getelementptr inbounds i8*, i8** %454, i64 %idxprom553
  %455 = load i8*, i8** %arrayidx554, align 8
  %456 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %456, i32 0, i32 1
  %457 = load i32, i32* %memory_use, align 4
  %call555 = call i32 @hypre_SMGRelaxSetMemoryUse(i8* %455, i32 %457)
  %458 = load i32, i32* %l, align 4
  %idxprom556 = sext i32 %458 to i64
  %459 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx557 = getelementptr inbounds i8*, i8** %459, i64 %idxprom556
  %460 = load i8*, i8** %arrayidx557, align 8
  %call558 = call i32 @hypre_SMGRelaxSetTol(i8* %460, double 0.000000e+00)
  %461 = load i32, i32* %l, align 4
  %idxprom559 = sext i32 %461 to i64
  %462 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx560 = getelementptr inbounds i8*, i8** %462, i64 %idxprom559
  %463 = load i8*, i8** %arrayidx560, align 8
  %call561 = call i32 @hypre_SMGRelaxSetNumSpaces(i8* %463, i32 2)
  %464 = load i32, i32* %l, align 4
  %idxprom562 = sext i32 %464 to i64
  %465 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx563 = getelementptr inbounds i8*, i8** %465, i64 %idxprom562
  %466 = load i8*, i8** %arrayidx563, align 8
  %467 = load i32, i32* %cdir, align 4
  %idxprom564 = sext i32 %467 to i64
  %arrayidx565 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i64 %idxprom564
  %468 = load i32, i32* %arrayidx565, align 4
  %469 = load i32, i32* %cdir, align 4
  %idxprom566 = sext i32 %469 to i64
  %arrayidx567 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom566
  %470 = load i32, i32* %arrayidx567, align 4
  %call568 = call i32 @hypre_SMGRelaxSetSpace(i8* %466, i32 0, i32 %468, i32 %470)
  %471 = load i32, i32* %l, align 4
  %idxprom569 = sext i32 %471 to i64
  %472 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx570 = getelementptr inbounds i8*, i8** %472, i64 %idxprom569
  %473 = load i8*, i8** %arrayidx570, align 8
  %474 = load i32, i32* %cdir, align 4
  %idxprom571 = sext i32 %474 to i64
  %arrayidx572 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i64 %idxprom571
  %475 = load i32, i32* %arrayidx572, align 4
  %476 = load i32, i32* %cdir, align 4
  %idxprom573 = sext i32 %476 to i64
  %arrayidx574 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 %idxprom573
  %477 = load i32, i32* %arrayidx574, align 4
  %call575 = call i32 @hypre_SMGRelaxSetSpace(i8* %473, i32 1, i32 %475, i32 %477)
  %478 = load i32, i32* %l, align 4
  %idxprom576 = sext i32 %478 to i64
  %479 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx577 = getelementptr inbounds i8*, i8** %479, i64 %idxprom576
  %480 = load i8*, i8** %arrayidx577, align 8
  %481 = load i32, i32* %l, align 4
  %idxprom578 = sext i32 %481 to i64
  %482 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx579 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %482, i64 %idxprom578
  %483 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx579, align 8
  %call580 = call i32 @hypre_SMGRelaxSetTempVec(i8* %480, %struct.hypre_StructVector_struct* %483)
  %484 = load i32, i32* %l, align 4
  %idxprom581 = sext i32 %484 to i64
  %485 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx582 = getelementptr inbounds i8*, i8** %485, i64 %idxprom581
  %486 = load i8*, i8** %arrayidx582, align 8
  %487 = load i32, i32* %n_pre, align 4
  %call583 = call i32 @hypre_SMGRelaxSetNumPreRelax(i8* %486, i32 %487)
  %488 = load i32, i32* %l, align 4
  %idxprom584 = sext i32 %488 to i64
  %489 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx585 = getelementptr inbounds i8*, i8** %489, i64 %idxprom584
  %490 = load i8*, i8** %arrayidx585, align 8
  %491 = load i32, i32* %n_post, align 4
  %call586 = call i32 @hypre_SMGRelaxSetNumPostRelax(i8* %490, i32 %491)
  %492 = load i32, i32* %l, align 4
  %idxprom587 = sext i32 %492 to i64
  %493 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx588 = getelementptr inbounds i8*, i8** %493, i64 %idxprom587
  %494 = load i8*, i8** %arrayidx588, align 8
  %495 = load i32, i32* %l, align 4
  %idxprom589 = sext i32 %495 to i64
  %496 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx590 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %496, i64 %idxprom589
  %497 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx590, align 8
  %498 = load i32, i32* %l, align 4
  %idxprom591 = sext i32 %498 to i64
  %499 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx592 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %499, i64 %idxprom591
  %500 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx592, align 8
  %501 = load i32, i32* %l, align 4
  %idxprom593 = sext i32 %501 to i64
  %502 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx594 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %502, i64 %idxprom593
  %503 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx594, align 8
  %call595 = call i32 @hypre_SMGRelaxSetup(i8* %494, %struct.hypre_StructMatrix_struct* %497, %struct.hypre_StructVector_struct* %500, %struct.hypre_StructVector_struct* %503)
  %504 = load i32, i32* %l, align 4
  %idxprom596 = sext i32 %504 to i64
  %505 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx597 = getelementptr inbounds i8*, i8** %505, i64 %idxprom596
  %506 = load i8*, i8** %arrayidx597, align 8
  %507 = load i32, i32* %l, align 4
  %idxprom598 = sext i32 %507 to i64
  %508 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx599 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %508, i64 %idxprom598
  %509 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx599, align 8
  %510 = load i32, i32* %l, align 4
  %idxprom600 = sext i32 %510 to i64
  %511 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx601 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %511, i64 %idxprom600
  %512 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx601, align 8
  %513 = load i32, i32* %l, align 4
  %idxprom602 = sext i32 %513 to i64
  %514 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx603 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %514, i64 %idxprom602
  %515 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx603, align 8
  %516 = load i32, i32* %l, align 4
  %idxprom604 = sext i32 %516 to i64
  %517 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx605 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %517, i64 %idxprom604
  %518 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx605, align 8
  %519 = load i32, i32* %cdir, align 4
  %arraydecay606 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay607 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay608 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call609 = call i32 @hypre_SMGSetupInterpOp(i8* %506, %struct.hypre_StructMatrix_struct* %509, %struct.hypre_StructVector_struct* %512, %struct.hypre_StructVector_struct* %515, %struct.hypre_StructMatrix_struct* %518, i32 %519, i32* %arraydecay606, i32* %arraydecay607, i32* %arraydecay608)
  %520 = load i32, i32* %l, align 4
  %idxprom610 = sext i32 %520 to i64
  %521 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx611 = getelementptr inbounds i8*, i8** %521, i64 %idxprom610
  %522 = load i8*, i8** %arrayidx611, align 8
  %call612 = call i32 @hypre_SMGRelaxSetNumPreSpaces(i8* %522, i32 0)
  %523 = load i32, i32* %l, align 4
  %idxprom613 = sext i32 %523 to i64
  %524 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx614 = getelementptr inbounds i8*, i8** %524, i64 %idxprom613
  %525 = load i8*, i8** %arrayidx614, align 8
  %call615 = call i32 @hypre_SMGRelaxSetNumRegSpaces(i8* %525, i32 2)
  %526 = load i32, i32* %l, align 4
  %idxprom616 = sext i32 %526 to i64
  %527 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx617 = getelementptr inbounds i8*, i8** %527, i64 %idxprom616
  %528 = load i8*, i8** %arrayidx617, align 8
  %529 = load i32, i32* %l, align 4
  %idxprom618 = sext i32 %529 to i64
  %530 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx619 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %530, i64 %idxprom618
  %531 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx619, align 8
  %532 = load i32, i32* %l, align 4
  %idxprom620 = sext i32 %532 to i64
  %533 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx621 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %533, i64 %idxprom620
  %534 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx621, align 8
  %535 = load i32, i32* %l, align 4
  %idxprom622 = sext i32 %535 to i64
  %536 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx623 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %536, i64 %idxprom622
  %537 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx623, align 8
  %call624 = call i32 @hypre_SMGRelaxSetup(i8* %528, %struct.hypre_StructMatrix_struct* %531, %struct.hypre_StructVector_struct* %534, %struct.hypre_StructVector_struct* %537)
  %call625 = call i8* @hypre_SMGResidualCreate()
  %538 = load i32, i32* %l, align 4
  %idxprom626 = sext i32 %538 to i64
  %539 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx627 = getelementptr inbounds i8*, i8** %539, i64 %idxprom626
  store i8* %call625, i8** %arrayidx627, align 8
  %540 = load i32, i32* %l, align 4
  %idxprom628 = sext i32 %540 to i64
  %541 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx629 = getelementptr inbounds i8*, i8** %541, i64 %idxprom628
  %542 = load i8*, i8** %arrayidx629, align 8
  %arraydecay630 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i32 0
  %arraydecay631 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i32 0
  %call632 = call i32 @hypre_SMGResidualSetBase(i8* %542, i32* %arraydecay630, i32* %arraydecay631)
  %543 = load i32, i32* %l, align 4
  %idxprom633 = sext i32 %543 to i64
  %544 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx634 = getelementptr inbounds i8*, i8** %544, i64 %idxprom633
  %545 = load i8*, i8** %arrayidx634, align 8
  %546 = load i32, i32* %l, align 4
  %idxprom635 = sext i32 %546 to i64
  %547 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx636 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %547, i64 %idxprom635
  %548 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx636, align 8
  %549 = load i32, i32* %l, align 4
  %idxprom637 = sext i32 %549 to i64
  %550 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx638 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %550, i64 %idxprom637
  %551 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx638, align 8
  %552 = load i32, i32* %l, align 4
  %idxprom639 = sext i32 %552 to i64
  %553 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx640 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %553, i64 %idxprom639
  %554 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx640, align 8
  %555 = load i32, i32* %l, align 4
  %idxprom641 = sext i32 %555 to i64
  %556 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx642 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %556, i64 %idxprom641
  %557 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx642, align 8
  %call643 = call i32 @hypre_SMGResidualSetup(i8* %545, %struct.hypre_StructMatrix_struct* %548, %struct.hypre_StructVector_struct* %551, %struct.hypre_StructVector_struct* %554, %struct.hypre_StructVector_struct* %557)
  %call644 = call i8* @hypre_SemiInterpCreate()
  %558 = load i32, i32* %l, align 4
  %idxprom645 = sext i32 %558 to i64
  %559 = load i8**, i8*** %interp_data_l, align 8
  %arrayidx646 = getelementptr inbounds i8*, i8** %559, i64 %idxprom645
  store i8* %call644, i8** %arrayidx646, align 8
  %560 = load i32, i32* %l, align 4
  %idxprom647 = sext i32 %560 to i64
  %561 = load i8**, i8*** %interp_data_l, align 8
  %arrayidx648 = getelementptr inbounds i8*, i8** %561, i64 %idxprom647
  %562 = load i8*, i8** %arrayidx648, align 8
  %563 = load i32, i32* %l, align 4
  %idxprom649 = sext i32 %563 to i64
  %564 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx650 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %564, i64 %idxprom649
  %565 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx650, align 8
  %566 = load i32, i32* %l, align 4
  %add651 = add nsw i32 %566, 1
  %idxprom652 = sext i32 %add651 to i64
  %567 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx653 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %567, i64 %idxprom652
  %568 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx653, align 8
  %569 = load i32, i32* %l, align 4
  %idxprom654 = sext i32 %569 to i64
  %570 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx655 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %570, i64 %idxprom654
  %571 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx655, align 8
  %arraydecay656 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay657 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay658 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call659 = call i32 @hypre_SemiInterpSetup(i8* %562, %struct.hypre_StructMatrix_struct* %565, i32 1, %struct.hypre_StructVector_struct* %568, %struct.hypre_StructVector_struct* %571, i32* %arraydecay656, i32* %arraydecay657, i32* %arraydecay658)
  %call660 = call i8* @hypre_SemiRestrictCreate()
  %572 = load i32, i32* %l, align 4
  %idxprom661 = sext i32 %572 to i64
  %573 = load i8**, i8*** %restrict_data_l, align 8
  %arrayidx662 = getelementptr inbounds i8*, i8** %573, i64 %idxprom661
  store i8* %call660, i8** %arrayidx662, align 8
  %574 = load i32, i32* %l, align 4
  %idxprom663 = sext i32 %574 to i64
  %575 = load i8**, i8*** %restrict_data_l, align 8
  %arrayidx664 = getelementptr inbounds i8*, i8** %575, i64 %idxprom663
  %576 = load i8*, i8** %arrayidx664, align 8
  %577 = load i32, i32* %l, align 4
  %idxprom665 = sext i32 %577 to i64
  %578 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx666 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %578, i64 %idxprom665
  %579 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx666, align 8
  %580 = load i32, i32* %l, align 4
  %idxprom667 = sext i32 %580 to i64
  %581 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx668 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %581, i64 %idxprom667
  %582 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx668, align 8
  %583 = load i32, i32* %l, align 4
  %add669 = add nsw i32 %583, 1
  %idxprom670 = sext i32 %add669 to i64
  %584 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx671 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %584, i64 %idxprom670
  %585 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx671, align 8
  %arraydecay672 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay673 = getelementptr inbounds [3 x i32], [3 x i32]* %findex, i32 0, i32 0
  %arraydecay674 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call675 = call i32 @hypre_SemiRestrictSetup(i8* %576, %struct.hypre_StructMatrix_struct* %579, i32 0, %struct.hypre_StructVector_struct* %582, %struct.hypre_StructVector_struct* %585, i32* %arraydecay672, i32* %arraydecay673, i32* %arraydecay674)
  %586 = load i32, i32* %l, align 4
  %idxprom676 = sext i32 %586 to i64
  %587 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx677 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %587, i64 %idxprom676
  %588 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx677, align 8
  %589 = load i32, i32* %l, align 4
  %idxprom678 = sext i32 %589 to i64
  %590 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx679 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %590, i64 %idxprom678
  %591 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx679, align 8
  %592 = load i32, i32* %l, align 4
  %idxprom680 = sext i32 %592 to i64
  %593 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx681 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %593, i64 %idxprom680
  %594 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx681, align 8
  %595 = load i32, i32* %l, align 4
  %add682 = add nsw i32 %595, 1
  %idxprom683 = sext i32 %add682 to i64
  %596 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx684 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %596, i64 %idxprom683
  %597 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx684, align 8
  %arraydecay685 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex, i32 0, i32 0
  %arraydecay686 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %call687 = call i32 @hypre_SMGSetupRAPOp(%struct.hypre_StructMatrix_struct* %588, %struct.hypre_StructMatrix_struct* %591, %struct.hypre_StructMatrix_struct* %594, %struct.hypre_StructMatrix_struct* %597, i32* %arraydecay685, i32* %arraydecay686)
  br label %for.inc.688

for.inc.688:                                      ; preds = %if.end.541
  %598 = load i32, i32* %l, align 4
  %inc689 = add nsw i32 %598, 1
  store i32 %inc689, i32* %l, align 4
  br label %for.cond.461

for.end.690:                                      ; preds = %for.cond.461
  %599 = load i32, i32* %l, align 4
  %cmp691 = icmp sgt i32 %599, 0
  br i1 %cmp691, label %if.then.693, label %if.else.697

if.then.693:                                      ; preds = %for.end.690
  %arrayidx694 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 0
  store i32 0, i32* %arrayidx694, align 4
  %arrayidx695 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 1
  store i32 0, i32* %arrayidx695, align 4
  %arrayidx696 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 2
  store i32 0, i32* %arrayidx696, align 4
  br label %if.end.704

if.else.697:                                      ; preds = %for.end.690
  %600 = load i32*, i32** %base_index, align 8
  %arrayidx698 = getelementptr inbounds i32, i32* %600, i64 0
  %601 = load i32, i32* %arrayidx698, align 4
  %arrayidx699 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 0
  store i32 %601, i32* %arrayidx699, align 4
  %602 = load i32*, i32** %base_index, align 8
  %arrayidx700 = getelementptr inbounds i32, i32* %602, i64 1
  %603 = load i32, i32* %arrayidx700, align 4
  %arrayidx701 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 1
  store i32 %603, i32* %arrayidx701, align 4
  %604 = load i32*, i32** %base_index, align 8
  %arrayidx702 = getelementptr inbounds i32, i32* %604, i64 2
  %605 = load i32, i32* %arrayidx702, align 4
  %arrayidx703 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i64 2
  store i32 %605, i32* %arrayidx703, align 4
  br label %if.end.704

if.end.704:                                       ; preds = %if.else.697, %if.then.693
  %606 = load i32, i32* %l, align 4
  %cmp705 = icmp sgt i32 %606, 0
  br i1 %cmp705, label %if.then.707, label %if.else.711

if.then.707:                                      ; preds = %if.end.704
  %arrayidx708 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 0
  store i32 1, i32* %arrayidx708, align 4
  %arrayidx709 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 1
  store i32 1, i32* %arrayidx709, align 4
  %arrayidx710 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 2
  store i32 1, i32* %arrayidx710, align 4
  br label %if.end.718

if.else.711:                                      ; preds = %if.end.704
  %607 = load i32*, i32** %base_stride, align 8
  %arrayidx712 = getelementptr inbounds i32, i32* %607, i64 0
  %608 = load i32, i32* %arrayidx712, align 4
  %arrayidx713 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 0
  store i32 %608, i32* %arrayidx713, align 4
  %609 = load i32*, i32** %base_stride, align 8
  %arrayidx714 = getelementptr inbounds i32, i32* %609, i64 1
  %610 = load i32, i32* %arrayidx714, align 4
  %arrayidx715 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 1
  store i32 %610, i32* %arrayidx715, align 4
  %611 = load i32*, i32** %base_stride, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %611, i64 2
  %612 = load i32, i32* %arrayidx716, align 4
  %arrayidx717 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i64 2
  store i32 %612, i32* %arrayidx717, align 4
  br label %if.end.718

if.end.718:                                       ; preds = %if.else.711, %if.then.707
  %613 = load i32, i32* %comm, align 4
  %call719 = call i8* @hypre_SMGRelaxCreate(i32 %613)
  %614 = load i32, i32* %l, align 4
  %idxprom720 = sext i32 %614 to i64
  %615 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx721 = getelementptr inbounds i8*, i8** %615, i64 %idxprom720
  store i8* %call719, i8** %arrayidx721, align 8
  %616 = load i32, i32* %l, align 4
  %idxprom722 = sext i32 %616 to i64
  %617 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx723 = getelementptr inbounds i8*, i8** %617, i64 %idxprom722
  %618 = load i8*, i8** %arrayidx723, align 8
  %arraydecay724 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i32 0
  %arraydecay725 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i32 0
  %call726 = call i32 @hypre_SMGRelaxSetBase(i8* %618, i32* %arraydecay724, i32* %arraydecay725)
  %619 = load i32, i32* %l, align 4
  %idxprom727 = sext i32 %619 to i64
  %620 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx728 = getelementptr inbounds i8*, i8** %620, i64 %idxprom727
  %621 = load i8*, i8** %arrayidx728, align 8
  %call729 = call i32 @hypre_SMGRelaxSetTol(i8* %621, double 0.000000e+00)
  %622 = load i32, i32* %l, align 4
  %idxprom730 = sext i32 %622 to i64
  %623 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx731 = getelementptr inbounds i8*, i8** %623, i64 %idxprom730
  %624 = load i8*, i8** %arrayidx731, align 8
  %call732 = call i32 @hypre_SMGRelaxSetMaxIter(i8* %624, i32 1)
  %625 = load i32, i32* %l, align 4
  %idxprom733 = sext i32 %625 to i64
  %626 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx734 = getelementptr inbounds i8*, i8** %626, i64 %idxprom733
  %627 = load i8*, i8** %arrayidx734, align 8
  %628 = load i32, i32* %l, align 4
  %idxprom735 = sext i32 %628 to i64
  %629 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx736 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %629, i64 %idxprom735
  %630 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx736, align 8
  %call737 = call i32 @hypre_SMGRelaxSetTempVec(i8* %627, %struct.hypre_StructVector_struct* %630)
  %631 = load i32, i32* %l, align 4
  %idxprom738 = sext i32 %631 to i64
  %632 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx739 = getelementptr inbounds i8*, i8** %632, i64 %idxprom738
  %633 = load i8*, i8** %arrayidx739, align 8
  %634 = load i32, i32* %n_pre, align 4
  %call740 = call i32 @hypre_SMGRelaxSetNumPreRelax(i8* %633, i32 %634)
  %635 = load i32, i32* %l, align 4
  %idxprom741 = sext i32 %635 to i64
  %636 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx742 = getelementptr inbounds i8*, i8** %636, i64 %idxprom741
  %637 = load i8*, i8** %arrayidx742, align 8
  %638 = load i32, i32* %n_post, align 4
  %call743 = call i32 @hypre_SMGRelaxSetNumPostRelax(i8* %637, i32 %638)
  %639 = load i32, i32* %l, align 4
  %idxprom744 = sext i32 %639 to i64
  %640 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx745 = getelementptr inbounds i8*, i8** %640, i64 %idxprom744
  %641 = load i8*, i8** %arrayidx745, align 8
  %642 = load i32, i32* %l, align 4
  %idxprom746 = sext i32 %642 to i64
  %643 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx747 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %643, i64 %idxprom746
  %644 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx747, align 8
  %645 = load i32, i32* %l, align 4
  %idxprom748 = sext i32 %645 to i64
  %646 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx749 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %646, i64 %idxprom748
  %647 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx749, align 8
  %648 = load i32, i32* %l, align 4
  %idxprom750 = sext i32 %648 to i64
  %649 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx751 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %649, i64 %idxprom750
  %650 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx751, align 8
  %call752 = call i32 @hypre_SMGRelaxSetup(i8* %641, %struct.hypre_StructMatrix_struct* %644, %struct.hypre_StructVector_struct* %647, %struct.hypre_StructVector_struct* %650)
  %651 = load i32, i32* %l, align 4
  %cmp753 = icmp eq i32 %651, 0
  br i1 %cmp753, label %if.then.755, label %if.end.775

if.then.755:                                      ; preds = %if.end.718
  %call756 = call i8* @hypre_SMGResidualCreate()
  %652 = load i32, i32* %l, align 4
  %idxprom757 = sext i32 %652 to i64
  %653 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx758 = getelementptr inbounds i8*, i8** %653, i64 %idxprom757
  store i8* %call756, i8** %arrayidx758, align 8
  %654 = load i32, i32* %l, align 4
  %idxprom759 = sext i32 %654 to i64
  %655 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx760 = getelementptr inbounds i8*, i8** %655, i64 %idxprom759
  %656 = load i8*, i8** %arrayidx760, align 8
  %arraydecay761 = getelementptr inbounds [3 x i32], [3 x i32]* %bindex, i32 0, i32 0
  %arraydecay762 = getelementptr inbounds [3 x i32], [3 x i32]* %bstride, i32 0, i32 0
  %call763 = call i32 @hypre_SMGResidualSetBase(i8* %656, i32* %arraydecay761, i32* %arraydecay762)
  %657 = load i32, i32* %l, align 4
  %idxprom764 = sext i32 %657 to i64
  %658 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx765 = getelementptr inbounds i8*, i8** %658, i64 %idxprom764
  %659 = load i8*, i8** %arrayidx765, align 8
  %660 = load i32, i32* %l, align 4
  %idxprom766 = sext i32 %660 to i64
  %661 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx767 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %661, i64 %idxprom766
  %662 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx767, align 8
  %663 = load i32, i32* %l, align 4
  %idxprom768 = sext i32 %663 to i64
  %664 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx769 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %664, i64 %idxprom768
  %665 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx769, align 8
  %666 = load i32, i32* %l, align 4
  %idxprom770 = sext i32 %666 to i64
  %667 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx771 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %667, i64 %idxprom770
  %668 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx771, align 8
  %669 = load i32, i32* %l, align 4
  %idxprom772 = sext i32 %669 to i64
  %670 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx773 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %670, i64 %idxprom772
  %671 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx773, align 8
  %call774 = call i32 @hypre_SMGResidualSetup(i8* %659, %struct.hypre_StructMatrix_struct* %662, %struct.hypre_StructVector_struct* %665, %struct.hypre_StructVector_struct* %668, %struct.hypre_StructVector_struct* %671)
  br label %if.end.775

if.end.775:                                       ; preds = %if.then.755, %if.end.718
  %672 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx776 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %672, i64 0
  %673 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx776, align 8
  %674 = load double*, double** %b_data, align 8
  %call777 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %673, double* %674)
  %675 = load i32, i32* %b_data_alloced, align 4
  %676 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx778 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %676, i64 0
  %677 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx778, align 8
  %data_alloced779 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %677, i32 0, i32 4
  store i32 %675, i32* %data_alloced779, align 4
  %678 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx780 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %678, i64 0
  %679 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx780, align 8
  %680 = load double*, double** %x_data, align 8
  %call781 = call i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct* %679, double* %680)
  %681 = load i32, i32* %x_data_alloced, align 4
  %682 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx782 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %682, i64 0
  %683 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx782, align 8
  %data_alloced783 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %683, i32 0, i32 4
  store i32 %681, i32* %data_alloced783, align 4
  %684 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx784 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %684, i64 0
  %685 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx784, align 8
  %call785 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %685)
  %686 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx786 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %686, i64 0
  %687 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx786, align 8
  %call787 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %687)
  %688 = load i8**, i8*** %relax_data_l, align 8
  %689 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l788 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %689, i32 0, i32 25
  store i8** %688, i8*** %relax_data_l788, align 8
  %690 = load i8**, i8*** %residual_data_l, align 8
  %691 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l789 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %691, i32 0, i32 26
  store i8** %690, i8*** %residual_data_l789, align 8
  %692 = load i8**, i8*** %restrict_data_l, align 8
  %693 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %restrict_data_l790 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %693, i32 0, i32 27
  store i8** %692, i8*** %restrict_data_l790, align 8
  %694 = load i8**, i8*** %interp_data_l, align 8
  %695 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %interp_data_l791 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %695, i32 0, i32 28
  store i8** %694, i8*** %interp_data_l791, align 8
  %696 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %696, i32 0, i32 31
  %697 = load i32, i32* %logging, align 4
  %cmp792 = icmp sgt i32 %697, 0
  br i1 %cmp792, label %if.then.794, label %if.end.804

if.then.794:                                      ; preds = %if.end.775
  %698 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_iter795 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %698, i32 0, i32 3
  %699 = load i32, i32* %max_iter795, align 4
  store i32 %699, i32* %max_iter, align 4
  %700 = load i32, i32* %max_iter, align 4
  %conv796 = sext i32 %700 to i64
  %mul797 = mul i64 8, %conv796
  %conv798 = trunc i64 %mul797 to i32
  %call799 = call i8* @hypre_MAlloc(i32 %conv798)
  %701 = bitcast i8* %call799 to double*
  %702 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %norms = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %702, i32 0, i32 32
  store double* %701, double** %norms, align 8
  %703 = load i32, i32* %max_iter, align 4
  %conv800 = sext i32 %703 to i64
  %mul801 = mul i64 8, %conv800
  %conv802 = trunc i64 %mul801 to i32
  %call803 = call i8* @hypre_MAlloc(i32 %conv802)
  %704 = bitcast i8* %call803 to double*
  %705 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %705, i32 0, i32 33
  store double* %704, double** %rel_norms, align 8
  br label %if.end.804

if.end.804:                                       ; preds = %if.then.794, %if.end.775
  %706 = load i32, i32* %ierr, align 4
  ret i32 %706
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct*) #2

declare i32 @hypre_Log2(i32) #2

declare i8* @hypre_MAlloc(i32) #2

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #2

declare i32 @hypre_ProjectBox(%struct.hypre_Box_struct*, i32*, i32*) #2

declare i32 @hypre_StructMapFineToCoarse(i32*, i32*, i32*, i32*) #2

declare i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct*, i32*, i32*, i32, %struct.hypre_StructGrid_struct**) #2

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #2

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #2

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #2

declare %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*) #2

declare i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct*, i32*) #2

declare i32 @hypre_StructVectorInitializeShell(%struct.hypre_StructVector_struct*) #2

declare %struct.hypre_StructMatrix_struct* @hypre_SMGCreateInterpOp(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructGrid_struct*, i32) #2

declare i32 @hypre_StructMatrixInitializeShell(%struct.hypre_StructMatrix_struct*) #2

declare %struct.hypre_StructMatrix_struct* @hypre_SMGCreateRAPOp(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructGrid_struct*) #2

declare i8* @hypre_CAlloc(i32, i32) #2

declare i32 @hypre_StructVectorInitializeData(%struct.hypre_StructVector_struct*, double*) #2

declare i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct*) #2

declare i32 @hypre_StructMatrixInitializeData(%struct.hypre_StructMatrix_struct*, double*) #2

declare i8* @hypre_SMGRelaxCreate(i32) #2

declare i32 @hypre_SMGRelaxSetBase(i8*, i32*, i32*) #2

declare i32 @hypre_SMGRelaxSetMemoryUse(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetTol(i8*, double) #2

declare i32 @hypre_SMGRelaxSetNumSpaces(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetSpace(i8*, i32, i32, i32) #2

declare i32 @hypre_SMGRelaxSetTempVec(i8*, %struct.hypre_StructVector_struct*) #2

declare i32 @hypre_SMGRelaxSetNumPreRelax(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetNumPostRelax(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @hypre_SMGSetupInterpOp(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructMatrix_struct*, i32, i32*, i32*, i32*) #2

declare i32 @hypre_SMGRelaxSetNumPreSpaces(i8*, i32) #2

declare i32 @hypre_SMGRelaxSetNumRegSpaces(i8*, i32) #2

declare i8* @hypre_SMGResidualCreate() #2

declare i32 @hypre_SMGResidualSetBase(i8*, i32*, i32*) #2

declare i32 @hypre_SMGResidualSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i8* @hypre_SemiInterpCreate() #2

declare i32 @hypre_SemiInterpSetup(i8*, %struct.hypre_StructMatrix_struct*, i32, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, i32*, i32*, i32*) #2

declare i8* @hypre_SemiRestrictCreate() #2

declare i32 @hypre_SemiRestrictSetup(i8*, %struct.hypre_StructMatrix_struct*, i32, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, i32*, i32*, i32*) #2

declare i32 @hypre_SMGSetupRAPOp(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i32*, i32*) #2

declare i32 @hypre_SMGRelaxSetMaxIter(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
