; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/7.SMG2000.smg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SMGData = type { i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct**, double*, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct**, i8**, i8**, i8**, i8**, i32, i32, i32, double*, double* }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"SMG\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_SMGCreate(i32 %comm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 232)
  %0 = bitcast i8* %call to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %0, %struct.hypre_SMGData** %smg_data, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %call2 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 30
  store i32 %call2, i32* %time_index, align 4
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %memory_use = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 1
  store i32 0, i32* %memory_use, align 4
  %5 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tol = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %5, i32 0, i32 2
  store double 1.000000e-06, double* %tol, align 8
  %6 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_iter = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %6, i32 0, i32 3
  store i32 200, i32* %max_iter, align 4
  %7 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_change = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %7, i32 0, i32 4
  store i32 0, i32* %rel_change, align 4
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %zero_guess = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 5
  store i32 0, i32* %zero_guess, align 4
  %9 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_levels = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %9, i32 0, i32 6
  store i32 0, i32* %max_levels, align 4
  %10 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_pre_relax = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %10, i32 0, i32 8
  store i32 1, i32* %num_pre_relax, align 4
  %11 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_post_relax = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %11, i32 0, i32 9
  store i32 1, i32* %num_post_relax, align 4
  %12 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %cdir = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %12, i32 0, i32 10
  store i32 2, i32* %cdir, align 4
  %13 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %13, i32 0, i32 11
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %14 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %14, i32 0, i32 11
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index3, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %15 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index5 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %15, i32 0, i32 11
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index5, i32 0, i64 2
  store i32 0, i32* %arrayidx6, align 4
  %16 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %16, i32 0, i32 12
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx7, align 4
  %17 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride8 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %17, i32 0, i32 12
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride8, i32 0, i64 1
  store i32 1, i32* %arrayidx9, align 4
  %18 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride10 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %18, i32 0, i32 12
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride10, i32 0, i64 2
  store i32 1, i32* %arrayidx11, align 4
  %19 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %19, i32 0, i32 31
  store i32 0, i32* %logging, align 4
  %20 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %20, i32 0, i32 7
  store i32 -1, i32* %num_levels, align 4
  %21 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %22 = bitcast %struct.hypre_SMGData* %21 to i8*
  ret i8* %22
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGDestroy(i8* %smg_vdata) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %l = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tobool = icmp ne %struct.hypre_SMGData* %2, null
  br i1 %tobool, label %if.then, label %if.end.129

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 31
  %4 = load i32, i32* %logging, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %norms = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %5, i32 0, i32 32
  %6 = load double*, double** %norms, align 8
  %7 = bitcast double* %6 to i8*
  call void @hypre_Free(i8* %7)
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %norms2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 32
  store double* null, double** %norms2, align 8
  %9 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %9, i32 0, i32 33
  %10 = load double*, double** %rel_norms, align 8
  %11 = bitcast double* %10 to i8*
  call void @hypre_Free(i8* %11)
  %12 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %12, i32 0, i32 33
  store double* null, double** %rel_norms3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %13 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %13, i32 0, i32 7
  %14 = load i32, i32* %num_levels, align 4
  %cmp4 = icmp sgt i32 %14, -1
  br i1 %cmp4, label %if.then.5, label %if.end.127

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %15 = load i32, i32* %l, align 4
  %16 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels6 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %16, i32 0, i32 7
  %17 = load i32, i32* %num_levels6, align 4
  %sub = sub nsw i32 %17, 1
  %cmp7 = icmp slt i32 %15, %sub
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %l, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %19, i32 0, i32 25
  %20 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @hypre_SMGRelaxDestroy(i8* %21)
  %22 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %23, i32 0, i32 26
  %24 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %24, i64 %idxprom8
  %25 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @hypre_SMGResidualDestroy(i8* %25)
  %26 = load i32, i32* %l, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %restrict_data_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %27, i32 0, i32 27
  %28 = load i8**, i8*** %restrict_data_l, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %28, i64 %idxprom11
  %29 = load i8*, i8** %arrayidx12, align 8
  %call13 = call i32 @hypre_SemiRestrictDestroy(i8* %29)
  %30 = load i32, i32* %l, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %interp_data_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %31, i32 0, i32 28
  %32 = load i8**, i8*** %interp_data_l, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %32, i64 %idxprom14
  %33 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @hypre_SemiInterpDestroy(i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %l, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %l, align 4
  %idxprom17 = sext i32 %35 to i64
  %36 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l18 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %36, i32 0, i32 25
  %37 = load i8**, i8*** %relax_data_l18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %37, i64 %idxprom17
  %38 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @hypre_SMGRelaxDestroy(i8* %38)
  %39 = load i32, i32* %l, align 4
  %cmp21 = icmp eq i32 %39, 0
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %for.end
  %40 = load i32, i32* %l, align 4
  %idxprom23 = sext i32 %40 to i64
  %41 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l24 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %41, i32 0, i32 26
  %42 = load i8**, i8*** %residual_data_l24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %42, i64 %idxprom23
  %43 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @hypre_SMGResidualDestroy(i8* %43)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %for.end
  %44 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l28 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %44, i32 0, i32 25
  %45 = load i8**, i8*** %relax_data_l28, align 8
  %46 = bitcast i8** %45 to i8*
  call void @hypre_Free(i8* %46)
  %47 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l29 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %47, i32 0, i32 25
  store i8** null, i8*** %relax_data_l29, align 8
  %48 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l30 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %48, i32 0, i32 26
  %49 = load i8**, i8*** %residual_data_l30, align 8
  %50 = bitcast i8** %49 to i8*
  call void @hypre_Free(i8* %50)
  %51 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l31 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %51, i32 0, i32 26
  store i8** null, i8*** %residual_data_l31, align 8
  %52 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %restrict_data_l32 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %52, i32 0, i32 27
  %53 = load i8**, i8*** %restrict_data_l32, align 8
  %54 = bitcast i8** %53 to i8*
  call void @hypre_Free(i8* %54)
  %55 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %restrict_data_l33 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %55, i32 0, i32 27
  store i8** null, i8*** %restrict_data_l33, align 8
  %56 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %interp_data_l34 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %56, i32 0, i32 28
  %57 = load i8**, i8*** %interp_data_l34, align 8
  %58 = bitcast i8** %57 to i8*
  call void @hypre_Free(i8* %58)
  %59 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %interp_data_l35 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %59, i32 0, i32 28
  store i8** null, i8*** %interp_data_l35, align 8
  %60 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tb_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %60, i32 0, i32 21
  %61 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l, align 8
  %arrayidx36 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %61, i64 0
  %62 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx36, align 8
  %call37 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %62)
  %63 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tx_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %63, i32 0, i32 22
  %64 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l, align 8
  %arrayidx38 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %64, i64 0
  %65 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx38, align 8
  %call39 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %65)
  %66 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %grid_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %66, i32 0, i32 13
  %67 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l, align 8
  %arrayidx40 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %67, i64 0
  %68 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx40, align 8
  %call41 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %68)
  %69 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %69, i32 0, i32 16
  %70 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %70, i64 0
  %71 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx42, align 8
  %call43 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %71)
  %72 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %72, i32 0, i32 19
  %73 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %73, i64 0
  %74 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx44, align 8
  %call45 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %74)
  %75 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %75, i32 0, i32 20
  %76 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx46 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %76, i64 0
  %77 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx46, align 8
  %call47 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %77)
  store i32 0, i32* %l, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.105, %if.end.27
  %78 = load i32, i32* %l, align 4
  %79 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels49 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %79, i32 0, i32 7
  %80 = load i32, i32* %num_levels49, align 4
  %sub50 = sub nsw i32 %80, 1
  %cmp51 = icmp slt i32 %78, %sub50
  br i1 %cmp51, label %for.body.52, label %for.end.107

for.body.52:                                      ; preds = %for.cond.48
  %81 = load i32, i32* %l, align 4
  %add = add nsw i32 %81, 1
  %idxprom53 = sext i32 %add to i64
  %82 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %grid_l54 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %82, i32 0, i32 13
  %83 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l54, align 8
  %arrayidx55 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %83, i64 %idxprom53
  %84 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx55, align 8
  %call56 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %84)
  %85 = load i32, i32* %l, align 4
  %add57 = add nsw i32 %85, 1
  %idxprom58 = sext i32 %add57 to i64
  %86 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_grid_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %86, i32 0, i32 14
  %87 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l, align 8
  %arrayidx59 = getelementptr inbounds %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %87, i64 %idxprom58
  %88 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %arrayidx59, align 8
  %call60 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %88)
  %89 = load i32, i32* %l, align 4
  %add61 = add nsw i32 %89, 1
  %idxprom62 = sext i32 %add61 to i64
  %90 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l63 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %90, i32 0, i32 16
  %91 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %91, i64 %idxprom62
  %92 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx64, align 8
  %call65 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %92)
  %93 = load i32, i32* %l, align 4
  %idxprom66 = sext i32 %93 to i64
  %94 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %94, i32 0, i32 17
  %95 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx67 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %95, i64 %idxprom66
  %96 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx67, align 8
  %97 = load i32, i32* %l, align 4
  %idxprom68 = sext i32 %97 to i64
  %98 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %98, i32 0, i32 18
  %99 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx69 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %99, i64 %idxprom68
  %100 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx69, align 8
  %cmp70 = icmp eq %struct.hypre_StructMatrix_struct* %96, %100
  br i1 %cmp70, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %for.body.52
  %101 = load i32, i32* %l, align 4
  %idxprom72 = sext i32 %101 to i64
  %102 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l73 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %102, i32 0, i32 17
  %103 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %103, i64 %idxprom72
  %104 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx74, align 8
  %call75 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %104)
  br label %if.end.84

if.else:                                          ; preds = %for.body.52
  %105 = load i32, i32* %l, align 4
  %idxprom76 = sext i32 %105 to i64
  %106 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l77 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %106, i32 0, i32 17
  %107 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l77, align 8
  %arrayidx78 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %107, i64 %idxprom76
  %108 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx78, align 8
  %call79 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %108)
  %109 = load i32, i32* %l, align 4
  %idxprom80 = sext i32 %109 to i64
  %110 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l81 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %110, i32 0, i32 18
  %111 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l81, align 8
  %arrayidx82 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %111, i64 %idxprom80
  %112 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx82, align 8
  %call83 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %112)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else, %if.then.71
  %113 = load i32, i32* %l, align 4
  %add85 = add nsw i32 %113, 1
  %idxprom86 = sext i32 %add85 to i64
  %114 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l87 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %114, i32 0, i32 19
  %115 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l87, align 8
  %arrayidx88 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %115, i64 %idxprom86
  %116 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx88, align 8
  %call89 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %116)
  %117 = load i32, i32* %l, align 4
  %add90 = add nsw i32 %117, 1
  %idxprom91 = sext i32 %add90 to i64
  %118 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l92 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %118, i32 0, i32 20
  %119 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l92, align 8
  %arrayidx93 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %119, i64 %idxprom91
  %120 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx93, align 8
  %call94 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %120)
  %121 = load i32, i32* %l, align 4
  %add95 = add nsw i32 %121, 1
  %idxprom96 = sext i32 %add95 to i64
  %122 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tb_l97 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %122, i32 0, i32 21
  %123 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l97, align 8
  %arrayidx98 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %123, i64 %idxprom96
  %124 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx98, align 8
  %call99 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %124)
  %125 = load i32, i32* %l, align 4
  %add100 = add nsw i32 %125, 1
  %idxprom101 = sext i32 %add100 to i64
  %126 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tx_l102 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %126, i32 0, i32 22
  %127 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l102, align 8
  %arrayidx103 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %127, i64 %idxprom101
  %128 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx103, align 8
  %call104 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %128)
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.84
  %129 = load i32, i32* %l, align 4
  %inc106 = add nsw i32 %129, 1
  store i32 %inc106, i32* %l, align 4
  br label %for.cond.48

for.end.107:                                      ; preds = %for.cond.48
  %130 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %data = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %130, i32 0, i32 15
  %131 = load double*, double** %data, align 8
  %132 = bitcast double* %131 to i8*
  call void @hypre_Free(i8* %132)
  %133 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %data108 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %133, i32 0, i32 15
  store double* null, double** %data108, align 8
  %134 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %grid_l109 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %134, i32 0, i32 13
  %135 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_l109, align 8
  %136 = bitcast %struct.hypre_StructGrid_struct** %135 to i8*
  call void @hypre_Free(i8* %136)
  %137 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %grid_l110 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %137, i32 0, i32 13
  store %struct.hypre_StructGrid_struct** null, %struct.hypre_StructGrid_struct*** %grid_l110, align 8
  %138 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_grid_l111 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %138, i32 0, i32 14
  %139 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %PT_grid_l111, align 8
  %140 = bitcast %struct.hypre_StructGrid_struct** %139 to i8*
  call void @hypre_Free(i8* %140)
  %141 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_grid_l112 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %141, i32 0, i32 14
  store %struct.hypre_StructGrid_struct** null, %struct.hypre_StructGrid_struct*** %PT_grid_l112, align 8
  %142 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l113 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %142, i32 0, i32 16
  %143 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l113, align 8
  %144 = bitcast %struct.hypre_StructMatrix_struct** %143 to i8*
  call void @hypre_Free(i8* %144)
  %145 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l114 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %145, i32 0, i32 16
  store %struct.hypre_StructMatrix_struct** null, %struct.hypre_StructMatrix_struct*** %A_l114, align 8
  %146 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l115 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %146, i32 0, i32 17
  %147 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l115, align 8
  %148 = bitcast %struct.hypre_StructMatrix_struct** %147 to i8*
  call void @hypre_Free(i8* %148)
  %149 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l116 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %149, i32 0, i32 17
  store %struct.hypre_StructMatrix_struct** null, %struct.hypre_StructMatrix_struct*** %PT_l116, align 8
  %150 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l117 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %150, i32 0, i32 18
  %151 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l117, align 8
  %152 = bitcast %struct.hypre_StructMatrix_struct** %151 to i8*
  call void @hypre_Free(i8* %152)
  %153 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l118 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %153, i32 0, i32 18
  store %struct.hypre_StructMatrix_struct** null, %struct.hypre_StructMatrix_struct*** %R_l118, align 8
  %154 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l119 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %154, i32 0, i32 19
  %155 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l119, align 8
  %156 = bitcast %struct.hypre_StructVector_struct** %155 to i8*
  call void @hypre_Free(i8* %156)
  %157 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l120 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %157, i32 0, i32 19
  store %struct.hypre_StructVector_struct** null, %struct.hypre_StructVector_struct*** %b_l120, align 8
  %158 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l121 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %158, i32 0, i32 20
  %159 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l121, align 8
  %160 = bitcast %struct.hypre_StructVector_struct** %159 to i8*
  call void @hypre_Free(i8* %160)
  %161 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l122 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %161, i32 0, i32 20
  store %struct.hypre_StructVector_struct** null, %struct.hypre_StructVector_struct*** %x_l122, align 8
  %162 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tb_l123 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %162, i32 0, i32 21
  %163 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tb_l123, align 8
  %164 = bitcast %struct.hypre_StructVector_struct** %163 to i8*
  call void @hypre_Free(i8* %164)
  %165 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tb_l124 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %165, i32 0, i32 21
  store %struct.hypre_StructVector_struct** null, %struct.hypre_StructVector_struct*** %tb_l124, align 8
  %166 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tx_l125 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %166, i32 0, i32 22
  %167 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %tx_l125, align 8
  %168 = bitcast %struct.hypre_StructVector_struct** %167 to i8*
  call void @hypre_Free(i8* %168)
  %169 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tx_l126 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %169, i32 0, i32 22
  store %struct.hypre_StructVector_struct** null, %struct.hypre_StructVector_struct*** %tx_l126, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.107, %if.end
  %170 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %170, i32 0, i32 30
  %171 = load i32, i32* %time_index, align 4
  %call128 = call i32 @hypre_FinalizeTiming(i32 %171)
  %172 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %173 = bitcast %struct.hypre_SMGData* %172 to i8*
  call void @hypre_Free(i8* %173)
  store %struct.hypre_SMGData* null, %struct.hypre_SMGData** %smg_data, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.127, %entry
  %174 = load i32, i32* %ierr, align 4
  ret i32 %174
}

declare void @hypre_Free(i8*) #1

declare i32 @hypre_SMGRelaxDestroy(i8*) #1

declare i32 @hypre_SMGResidualDestroy(i8*) #1

declare i32 @hypre_SemiRestrictDestroy(i8*) #1

declare i32 @hypre_SemiInterpDestroy(i8*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetMemoryUse(i8* %smg_vdata, i32 %memory_use) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %memory_use.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %memory_use, i32* %memory_use.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %memory_use.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %memory_use1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 1
  store i32 %2, i32* %memory_use1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetTol(i8* %smg_vdata, double %tol) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %tol.addr = alloca double, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %tol.addr, align 8
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 2
  store double %2, double* %tol1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetMaxIter(i8* %smg_vdata, i32 %max_iter) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %max_iter.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %max_iter.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 3
  store i32 %2, i32* %max_iter1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetRelChange(i8* %smg_vdata, i32 %rel_change) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %rel_change.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %rel_change, i32* %rel_change.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %rel_change.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_change1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 4
  store i32 %2, i32* %rel_change1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetZeroGuess(i8* %smg_vdata, i32 %zero_guess) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %zero_guess.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %zero_guess, i32* %zero_guess.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %zero_guess.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %zero_guess1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 5
  store i32 %2, i32* %zero_guess1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetNumPreRelax(i8* %smg_vdata, i32 %num_pre_relax) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %num_pre_relax.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %num_pre_relax, i32* %num_pre_relax.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
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
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_pre_relax1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 8
  store i32 %cond, i32* %num_pre_relax1, align 4
  %5 = load i32, i32* %ierr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetNumPostRelax(i8* %smg_vdata, i32 %num_post_relax) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %num_post_relax.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %num_post_relax, i32* %num_post_relax.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %num_post_relax.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_post_relax1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 9
  store i32 %2, i32* %num_post_relax1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetBase(i8* %smg_vdata, i32* %base_index, i32* %base_stride) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %base_index.addr = alloca i32*, align 8
  %base_stride.addr = alloca i32*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32* %base_index, i32** %base_index.addr, align 8
  store i32* %base_stride, i32** %base_stride.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
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
  %7 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %7, i32 0, i32 11
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i64 %idxprom1
  store i32 %5, i32* %arrayidx3, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride7 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %12, i32 0, i32 12
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
define i32 @hypre_SMGSetLogging(i8* %smg_vdata, i32 %logging) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %logging.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %logging, i32* %logging.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %logging.addr, align 4
  %3 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %3, i32 0, i32 31
  store i32 %2, i32* %logging1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGGetNumIterations(i8* %smg_vdata, i32* %num_iterations) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %num_iterations.addr = alloca i32*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32* %num_iterations, i32** %num_iterations.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_iterations1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 29
  %3 = load i32, i32* %num_iterations1, align 4
  %4 = load i32*, i32** %num_iterations.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %ierr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGPrintLogging(i8* %smg_vdata, i32 %myid) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %myid.addr = alloca i32, align 4
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  %num_iterations = alloca i32, align 4
  %logging = alloca i32, align 4
  %norms = alloca double*, align 8
  %rel_norms = alloca double*, align 8
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store i32 %myid, i32* %myid.addr, align 4
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_iterations1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 29
  %3 = load i32, i32* %num_iterations1, align 4
  store i32 %3, i32* %num_iterations, align 4
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 31
  %5 = load i32, i32* %logging2, align 4
  store i32 %5, i32* %logging, align 4
  %6 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %norms3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %6, i32 0, i32 32
  %7 = load double*, double** %norms3, align 8
  store double* %7, double** %norms, align 8
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms4 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 33
  %9 = load double*, double** %rel_norms4, align 8
  store double* %9, double** %rel_norms, align 8
  %10 = load i32, i32* %myid.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %logging, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_iterations, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load double*, double** %norms, align 8
  %arrayidx = getelementptr inbounds double, double* %16, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %14, double %17)
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load double*, double** %rel_norms, align 8
  %arrayidx9 = getelementptr inbounds double, double* %20, i64 %idxprom8
  %21 = load double, double* %arrayidx9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %18, double %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %23 = load i32, i32* %ierr, align 4
  ret i32 %23
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGGetFinalRelativeResidualNorm(i8* %smg_vdata, double* %relative_residual_norm) #0 {
entry:
  %smg_vdata.addr = alloca i8*, align 8
  %relative_residual_norm.addr = alloca double*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %max_iter = alloca i32, align 4
  %num_iterations = alloca i32, align 4
  %logging = alloca i32, align 4
  %rel_norms = alloca double*, align 8
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store double* %relative_residual_norm, double** %relative_residual_norm.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 3
  %3 = load i32, i32* %max_iter1, align 4
  store i32 %3, i32* %max_iter, align 4
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_iterations2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 29
  %5 = load i32, i32* %num_iterations2, align 4
  store i32 %5, i32* %num_iterations, align 4
  %6 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %6, i32 0, i32 31
  %7 = load i32, i32* %logging3, align 4
  store i32 %7, i32* %logging, align 4
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms4 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 33
  %9 = load double*, double** %rel_norms4, align 8
  store double* %9, double** %rel_norms, align 8
  store i32 -1, i32* %ierr, align 4
  %10 = load i32, i32* %logging, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %num_iterations, align 4
  %12 = load i32, i32* %max_iter, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %num_iterations, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub to i64
  %14 = load double*, double** %rel_norms, align 8
  %arrayidx = getelementptr inbounds double, double* %14, i64 %idxprom
  %15 = load double, double* %arrayidx, align 8
  %16 = load double*, double** %relative_residual_norm.addr, align 8
  store double %15, double* %16, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %num_iterations, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load double*, double** %rel_norms, align 8
  %arrayidx8 = getelementptr inbounds double, double* %18, i64 %idxprom7
  %19 = load double, double* %arrayidx8, align 8
  %20 = load double*, double** %relative_residual_norm.addr, align 8
  store double %19, double* %20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  store i32 0, i32* %ierr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %21 = load i32, i32* %ierr, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetStructVectorConstantValues(%struct.hypre_StructVector_struct* %vector, double %values, %struct.hypre_BoxArray_struct* %box_array, i32* %stride) #0 {
entry:
  %vector.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %values.addr = alloca double, align 8
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %stride.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %v_data_box = alloca %struct.hypre_Box_struct*, align 8
  %vi = alloca i32, align 4
  %vp = alloca double*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %i = alloca i32, align 4
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
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.198, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.200

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %8, i32 0, i32 2
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %9, i32 0, i32 0
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2, align 8
  %arrayidx3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i64 %idxprom1
  store %struct.hypre_Box_struct* %arrayidx3, %struct.hypre_Box_struct** %v_data_box, align 8
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 3
  %12 = load double*, double** %data, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 6
  %15 = load i32*, i32** %data_indices, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %idxprom4
  %16 = load i32, i32* %arrayidx5, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds double, double* %12, i64 %idx.ext
  store double* %add.ptr, double** %vp, align 8
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %18 = load i32*, i32** %stride.addr, align 8
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %17, i32* %18, i32* %arraydecay6)
  %19 = load i32*, i32** %start, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx7, align 4
  %21 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %21, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 0
  %22 = load i32, i32* %arrayidx9, align 4
  %sub = sub nsw i32 %20, %22
  %23 = load i32*, i32** %start, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 1
  %24 = load i32, i32* %arrayidx10, align 4
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %26 = load i32, i32* %arrayidx12, align 4
  %sub13 = sub nsw i32 %24, %26
  %27 = load i32*, i32** %start, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx14, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %imin15, i32 0, i64 2
  %30 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %28, %30
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %32 = load i32, i32* %arrayidx18, align 4
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  %34 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %32, %34
  %add = add nsw i32 %sub21, 1
  %cmp22 = icmp slt i32 0, %add
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax23, i32 0, i64 1
  %36 = load i32, i32* %arrayidx24, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 1
  %38 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub nsw i32 %36, %38
  %add28 = add nsw i32 %sub27, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add28, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub17, %cond
  %add29 = add nsw i32 %sub13, %mul
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax30, i32 0, i64 0
  %40 = load i32, i32* %arrayidx31, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imin32, i32 0, i64 0
  %42 = load i32, i32* %arrayidx33, align 4
  %sub34 = sub nsw i32 %40, %42
  %add35 = add nsw i32 %sub34, 1
  %cmp36 = icmp slt i32 0, %add35
  br i1 %cmp36, label %cond.true.37, label %cond.false.44

cond.true.37:                                     ; preds = %cond.end
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 0
  %44 = load i32, i32* %arrayidx39, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imin40, i32 0, i64 0
  %46 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %44, %46
  %add43 = add nsw i32 %sub42, 1
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.37
  %cond46 = phi i32 [ %add43, %cond.true.37 ], [ 0, %cond.false.44 ]
  %mul47 = mul nsw i32 %add29, %cond46
  %add48 = add nsw i32 %sub, %mul47
  store i32 %add48, i32* %hypre__i1start, align 4
  %47 = load i32*, i32** %stride.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx49, align 4
  store i32 %48, i32* %hypre__sx1, align 4
  %49 = load i32*, i32** %stride.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx50, align 4
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %imax51, i32 0, i64 0
  %52 = load i32, i32* %arrayidx52, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imin53, i32 0, i64 0
  %54 = load i32, i32* %arrayidx54, align 4
  %sub55 = sub nsw i32 %52, %54
  %add56 = add nsw i32 %sub55, 1
  %cmp57 = icmp slt i32 0, %add56
  br i1 %cmp57, label %cond.true.58, label %cond.false.65

cond.true.58:                                     ; preds = %cond.end.45
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax59 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %imax59, i32 0, i64 0
  %56 = load i32, i32* %arrayidx60, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin61 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %imin61, i32 0, i64 0
  %58 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %56, %58
  %add64 = add nsw i32 %sub63, 1
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end.45
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.58
  %cond67 = phi i32 [ %add64, %cond.true.58 ], [ 0, %cond.false.65 ]
  %mul68 = mul nsw i32 %50, %cond67
  store i32 %mul68, i32* %hypre__sy1, align 4
  %59 = load i32*, i32** %stride.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %59, i64 2
  %60 = load i32, i32* %arrayidx69, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imax70, i32 0, i64 0
  %62 = load i32, i32* %arrayidx71, align 4
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imin72, i32 0, i64 0
  %64 = load i32, i32* %arrayidx73, align 4
  %sub74 = sub nsw i32 %62, %64
  %add75 = add nsw i32 %sub74, 1
  %cmp76 = icmp slt i32 0, %add75
  br i1 %cmp76, label %cond.true.77, label %cond.false.84

cond.true.77:                                     ; preds = %cond.end.66
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imax78, i32 0, i64 0
  %66 = load i32, i32* %arrayidx79, align 4
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imin80, i32 0, i64 0
  %68 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 %66, %68
  %add83 = add nsw i32 %sub82, 1
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.66
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.77
  %cond86 = phi i32 [ %add83, %cond.true.77 ], [ 0, %cond.false.84 ]
  %mul87 = mul nsw i32 %60, %cond86
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax88, i32 0, i64 1
  %70 = load i32, i32* %arrayidx89, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imin90, i32 0, i64 1
  %72 = load i32, i32* %arrayidx91, align 4
  %sub92 = sub nsw i32 %70, %72
  %add93 = add nsw i32 %sub92, 1
  %cmp94 = icmp slt i32 0, %add93
  br i1 %cmp94, label %cond.true.95, label %cond.false.102

cond.true.95:                                     ; preds = %cond.end.85
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imax96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imax96, i32 0, i64 1
  %74 = load i32, i32* %arrayidx97, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %v_data_box, align 8
  %imin98 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %imin98, i32 0, i64 1
  %76 = load i32, i32* %arrayidx99, align 4
  %sub100 = sub nsw i32 %74, %76
  %add101 = add nsw i32 %sub100, 1
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.end.85
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.95
  %cond104 = phi i32 [ %add101, %cond.true.95 ], [ 0, %cond.false.102 ]
  %mul105 = mul nsw i32 %mul87, %cond104
  store i32 %mul105, i32* %hypre__sz1, align 4
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %77 = load i32, i32* %arrayidx106, align 4
  store i32 %77, i32* %hypre__nx, align 4
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %78 = load i32, i32* %arrayidx107, align 4
  store i32 %78, i32* %hypre__ny, align 4
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %79 = load i32, i32* %arrayidx108, align 4
  store i32 %79, i32* %hypre__nz, align 4
  %80 = load i32, i32* %hypre__nx, align 4
  store i32 %80, i32* %hypre__mx, align 4
  %81 = load i32, i32* %hypre__ny, align 4
  store i32 %81, i32* %hypre__my, align 4
  %82 = load i32, i32* %hypre__nz, align 4
  store i32 %82, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %83 = load i32, i32* %hypre__nx, align 4
  store i32 %83, i32* %hypre__max, align 4
  %84 = load i32, i32* %hypre__ny, align 4
  %85 = load i32, i32* %hypre__max, align 4
  %cmp109 = icmp sgt i32 %84, %85
  br i1 %cmp109, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.103
  store i32 1, i32* %hypre__dir, align 4
  %86 = load i32, i32* %hypre__ny, align 4
  store i32 %86, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.103
  %87 = load i32, i32* %hypre__nz, align 4
  %88 = load i32, i32* %hypre__max, align 4
  %cmp110 = icmp sgt i32 %87, %88
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %89 = load i32, i32* %hypre__nz, align 4
  store i32 %89, i32* %hypre__max, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %90 = load i32, i32* %hypre__max, align 4
  %91 = load i32, i32* %hypre__num_blocks, align 4
  %cmp113 = icmp slt i32 %90, %91
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.112
  %92 = load i32, i32* %hypre__max, align 4
  store i32 %92, i32* %hypre__num_blocks, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.112
  %93 = load i32, i32* %hypre__num_blocks, align 4
  %cmp116 = icmp sgt i32 %93, 0
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.115
  %94 = load i32, i32* %hypre__max, align 4
  %95 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %94, %95
  store i32 %div, i32* %hypre__div, align 4
  %96 = load i32, i32* %hypre__max, align 4
  %97 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %96, %97
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.115
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.195, %if.end.118
  %98 = load i32, i32* %hypre__block, align 4
  %99 = load i32, i32* %hypre__num_blocks, align 4
  %cmp120 = icmp slt i32 %98, %99
  br i1 %cmp120, label %for.body.121, label %for.end.197

for.body.121:                                     ; preds = %for.cond.119
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %100 = load i32, i32* %hypre__mx, align 4
  store i32 %100, i32* %hypre__nx, align 4
  %101 = load i32, i32* %hypre__my, align 4
  store i32 %101, i32* %hypre__ny, align 4
  %102 = load i32, i32* %hypre__mz, align 4
  store i32 %102, i32* %hypre__nz, align 4
  %103 = load i32, i32* %hypre__num_blocks, align 4
  %cmp122 = icmp sgt i32 %103, 1
  br i1 %cmp122, label %if.then.123, label %if.end.164

if.then.123:                                      ; preds = %for.body.121
  %104 = load i32, i32* %hypre__dir, align 4
  %cmp124 = icmp eq i32 %104, 0
  br i1 %cmp124, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %if.then.123
  %105 = load i32, i32* %hypre__block, align 4
  %106 = load i32, i32* %hypre__div, align 4
  %mul126 = mul nsw i32 %105, %106
  %107 = load i32, i32* %hypre__mod, align 4
  %108 = load i32, i32* %hypre__block, align 4
  %cmp127 = icmp slt i32 %107, %108
  br i1 %cmp127, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %if.then.125
  %109 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.130

cond.false.129:                                   ; preds = %if.then.125
  %110 = load i32, i32* %hypre__block, align 4
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.128
  %cond131 = phi i32 [ %109, %cond.true.128 ], [ %110, %cond.false.129 ]
  %add132 = add nsw i32 %mul126, %cond131
  store i32 %add132, i32* %loopi, align 4
  %111 = load i32, i32* %hypre__div, align 4
  %112 = load i32, i32* %hypre__mod, align 4
  %113 = load i32, i32* %hypre__block, align 4
  %cmp133 = icmp sgt i32 %112, %113
  %cond134 = select i1 %cmp133, i32 1, i32 0
  %add135 = add nsw i32 %111, %cond134
  store i32 %add135, i32* %hypre__nx, align 4
  br label %if.end.163

if.else:                                          ; preds = %if.then.123
  %114 = load i32, i32* %hypre__dir, align 4
  %cmp136 = icmp eq i32 %114, 1
  br i1 %cmp136, label %if.then.137, label %if.else.148

if.then.137:                                      ; preds = %if.else
  %115 = load i32, i32* %hypre__block, align 4
  %116 = load i32, i32* %hypre__div, align 4
  %mul138 = mul nsw i32 %115, %116
  %117 = load i32, i32* %hypre__mod, align 4
  %118 = load i32, i32* %hypre__block, align 4
  %cmp139 = icmp slt i32 %117, %118
  br i1 %cmp139, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %if.then.137
  %119 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.142

cond.false.141:                                   ; preds = %if.then.137
  %120 = load i32, i32* %hypre__block, align 4
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi i32 [ %119, %cond.true.140 ], [ %120, %cond.false.141 ]
  %add144 = add nsw i32 %mul138, %cond143
  store i32 %add144, i32* %loopj, align 4
  %121 = load i32, i32* %hypre__div, align 4
  %122 = load i32, i32* %hypre__mod, align 4
  %123 = load i32, i32* %hypre__block, align 4
  %cmp145 = icmp sgt i32 %122, %123
  %cond146 = select i1 %cmp145, i32 1, i32 0
  %add147 = add nsw i32 %121, %cond146
  store i32 %add147, i32* %hypre__ny, align 4
  br label %if.end.162

if.else.148:                                      ; preds = %if.else
  %124 = load i32, i32* %hypre__dir, align 4
  %cmp149 = icmp eq i32 %124, 2
  br i1 %cmp149, label %if.then.150, label %if.end.161

if.then.150:                                      ; preds = %if.else.148
  %125 = load i32, i32* %hypre__block, align 4
  %126 = load i32, i32* %hypre__div, align 4
  %mul151 = mul nsw i32 %125, %126
  %127 = load i32, i32* %hypre__mod, align 4
  %128 = load i32, i32* %hypre__block, align 4
  %cmp152 = icmp slt i32 %127, %128
  br i1 %cmp152, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %if.then.150
  %129 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.155

cond.false.154:                                   ; preds = %if.then.150
  %130 = load i32, i32* %hypre__block, align 4
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.153
  %cond156 = phi i32 [ %129, %cond.true.153 ], [ %130, %cond.false.154 ]
  %add157 = add nsw i32 %mul151, %cond156
  store i32 %add157, i32* %loopk, align 4
  %131 = load i32, i32* %hypre__div, align 4
  %132 = load i32, i32* %hypre__mod, align 4
  %133 = load i32, i32* %hypre__block, align 4
  %cmp158 = icmp sgt i32 %132, %133
  %cond159 = select i1 %cmp158, i32 1, i32 0
  %add160 = add nsw i32 %131, %cond159
  store i32 %add160, i32* %hypre__nz, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.155, %if.else.148
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %cond.end.142
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %cond.end.130
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %for.body.121
  %134 = load i32, i32* %hypre__i1start, align 4
  %135 = load i32, i32* %loopi, align 4
  %136 = load i32, i32* %hypre__sx1, align 4
  %mul165 = mul nsw i32 %135, %136
  %add166 = add nsw i32 %134, %mul165
  %137 = load i32, i32* %loopj, align 4
  %138 = load i32, i32* %hypre__sy1, align 4
  %mul167 = mul nsw i32 %137, %138
  %add168 = add nsw i32 %add166, %mul167
  %139 = load i32, i32* %loopk, align 4
  %140 = load i32, i32* %hypre__sz1, align 4
  %mul169 = mul nsw i32 %139, %140
  %add170 = add nsw i32 %add168, %mul169
  store i32 %add170, i32* %vi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.192, %if.end.164
  %141 = load i32, i32* %loopk, align 4
  %142 = load i32, i32* %hypre__nz, align 4
  %cmp172 = icmp slt i32 %141, %142
  br i1 %cmp172, label %for.body.173, label %for.end.194

for.body.173:                                     ; preds = %for.cond.171
  store i32 0, i32* %loopj, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.186, %for.body.173
  %143 = load i32, i32* %loopj, align 4
  %144 = load i32, i32* %hypre__ny, align 4
  %cmp175 = icmp slt i32 %143, %144
  br i1 %cmp175, label %for.body.176, label %for.end.188

for.body.176:                                     ; preds = %for.cond.174
  store i32 0, i32* %loopi, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc, %for.body.176
  %145 = load i32, i32* %loopi, align 4
  %146 = load i32, i32* %hypre__nx, align 4
  %cmp178 = icmp slt i32 %145, %146
  br i1 %cmp178, label %for.body.179, label %for.end

for.body.179:                                     ; preds = %for.cond.177
  %147 = load double, double* %values.addr, align 8
  %148 = load i32, i32* %vi, align 4
  %idxprom180 = sext i32 %148 to i64
  %149 = load double*, double** %vp, align 8
  %arrayidx181 = getelementptr inbounds double, double* %149, i64 %idxprom180
  store double %147, double* %arrayidx181, align 8
  %150 = load i32, i32* %hypre__sx1, align 4
  %151 = load i32, i32* %vi, align 4
  %add182 = add nsw i32 %151, %150
  store i32 %add182, i32* %vi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.179
  %152 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %152, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.177

for.end:                                          ; preds = %for.cond.177
  %153 = load i32, i32* %hypre__sy1, align 4
  %154 = load i32, i32* %hypre__nx, align 4
  %155 = load i32, i32* %hypre__sx1, align 4
  %mul183 = mul nsw i32 %154, %155
  %sub184 = sub nsw i32 %153, %mul183
  %156 = load i32, i32* %vi, align 4
  %add185 = add nsw i32 %156, %sub184
  store i32 %add185, i32* %vi, align 4
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.end
  %157 = load i32, i32* %loopj, align 4
  %inc187 = add nsw i32 %157, 1
  store i32 %inc187, i32* %loopj, align 4
  br label %for.cond.174

for.end.188:                                      ; preds = %for.cond.174
  %158 = load i32, i32* %hypre__sz1, align 4
  %159 = load i32, i32* %hypre__ny, align 4
  %160 = load i32, i32* %hypre__sy1, align 4
  %mul189 = mul nsw i32 %159, %160
  %sub190 = sub nsw i32 %158, %mul189
  %161 = load i32, i32* %vi, align 4
  %add191 = add nsw i32 %161, %sub190
  store i32 %add191, i32* %vi, align 4
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.end.188
  %162 = load i32, i32* %loopk, align 4
  %inc193 = add nsw i32 %162, 1
  store i32 %inc193, i32* %loopk, align 4
  br label %for.cond.171

for.end.194:                                      ; preds = %for.cond.171
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end.194
  %163 = load i32, i32* %hypre__block, align 4
  %inc196 = add nsw i32 %163, 1
  store i32 %inc196, i32* %hypre__block, align 4
  br label %for.cond.119

for.end.197:                                      ; preds = %for.cond.119
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %164 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %164, 1
  store i32 %inc199, i32* %i, align 4
  br label %for.cond

for.end.200:                                      ; preds = %for.cond
  %165 = load i32, i32* %ierr, align 4
  ret i32 %165
}

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
