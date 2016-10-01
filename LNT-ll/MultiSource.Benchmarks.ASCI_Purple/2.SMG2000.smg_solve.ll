; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/2.SMG2000.smg_solve.bc'
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
define i32 @hypre_SMGSolve(i8* %smg_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %smg_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %smg_data = alloca %struct.hypre_SMGData*, align 8
  %tol = alloca double, align 8
  %max_iter = alloca i32, align 4
  %rel_change = alloca i32, align 4
  %zero_guess = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %num_pre_relax = alloca i32, align 4
  %num_post_relax = alloca i32, align 4
  %base_index = alloca i32*, align 8
  %base_stride = alloca i32*, align 8
  %A_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %PT_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %R_l = alloca %struct.hypre_StructMatrix_struct**, align 8
  %b_l = alloca %struct.hypre_StructVector_struct**, align 8
  %x_l = alloca %struct.hypre_StructVector_struct**, align 8
  %r_l = alloca %struct.hypre_StructVector_struct**, align 8
  %e_l = alloca %struct.hypre_StructVector_struct**, align 8
  %relax_data_l = alloca i8**, align 8
  %residual_data_l = alloca i8**, align 8
  %restrict_data_l = alloca i8**, align 8
  %interp_data_l = alloca i8**, align 8
  %logging = alloca i32, align 4
  %norms = alloca double*, align 8
  %rel_norms = alloca double*, align 8
  %b_dot_b = alloca double, align 8
  %r_dot_r = alloca double, align 8
  %eps = alloca double, align 8
  %e_dot_e = alloca double, align 8
  %x_dot_x = alloca double, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %smg_vdata, i8** %smg_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %smg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGData*
  store %struct.hypre_SMGData* %1, %struct.hypre_SMGData** %smg_data, align 8
  %2 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %2, i32 0, i32 2
  %3 = load double, double* %tol1, align 8
  store double %3, double* %tol, align 8
  %4 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %max_iter2 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %4, i32 0, i32 3
  %5 = load i32, i32* %max_iter2, align 4
  store i32 %5, i32* %max_iter, align 4
  %6 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_change3 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %6, i32 0, i32 4
  %7 = load i32, i32* %rel_change3, align 4
  store i32 %7, i32* %rel_change, align 4
  %8 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %zero_guess4 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %8, i32 0, i32 5
  %9 = load i32, i32* %zero_guess4, align 4
  store i32 %9, i32* %zero_guess, align 4
  %10 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_levels5 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %10, i32 0, i32 7
  %11 = load i32, i32* %num_levels5, align 4
  store i32 %11, i32* %num_levels, align 4
  %12 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_pre_relax6 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %12, i32 0, i32 8
  %13 = load i32, i32* %num_pre_relax6, align 4
  store i32 %13, i32* %num_pre_relax, align 4
  %14 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_post_relax7 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %14, i32 0, i32 9
  %15 = load i32, i32* %num_post_relax7, align 4
  store i32 %15, i32* %num_post_relax, align 4
  %16 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_index8 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %16, i32 0, i32 11
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index8, i32 0, i32 0
  store i32* %arraydecay, i32** %base_index, align 8
  %17 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %base_stride9 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %17, i32 0, i32 12
  %arraydecay10 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride9, i32 0, i32 0
  store i32* %arraydecay10, i32** %base_stride, align 8
  %18 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %A_l11 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %18, i32 0, i32 16
  %19 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l11, align 8
  store %struct.hypre_StructMatrix_struct** %19, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %20 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %PT_l12 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %20, i32 0, i32 17
  %21 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l12, align 8
  store %struct.hypre_StructMatrix_struct** %21, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %22 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %R_l13 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %22, i32 0, i32 18
  %23 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l13, align 8
  store %struct.hypre_StructMatrix_struct** %23, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %24 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %b_l14 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %24, i32 0, i32 19
  %25 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l14, align 8
  store %struct.hypre_StructVector_struct** %25, %struct.hypre_StructVector_struct*** %b_l, align 8
  %26 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %x_l15 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %26, i32 0, i32 20
  %27 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l15, align 8
  store %struct.hypre_StructVector_struct** %27, %struct.hypre_StructVector_struct*** %x_l, align 8
  %28 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %r_l16 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %28, i32 0, i32 23
  %29 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l16, align 8
  store %struct.hypre_StructVector_struct** %29, %struct.hypre_StructVector_struct*** %r_l, align 8
  %30 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %e_l17 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %30, i32 0, i32 24
  %31 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l17, align 8
  store %struct.hypre_StructVector_struct** %31, %struct.hypre_StructVector_struct*** %e_l, align 8
  %32 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %relax_data_l18 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %32, i32 0, i32 25
  %33 = load i8**, i8*** %relax_data_l18, align 8
  store i8** %33, i8*** %relax_data_l, align 8
  %34 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %residual_data_l19 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %34, i32 0, i32 26
  %35 = load i8**, i8*** %residual_data_l19, align 8
  store i8** %35, i8*** %residual_data_l, align 8
  %36 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %restrict_data_l20 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %36, i32 0, i32 27
  %37 = load i8**, i8*** %restrict_data_l20, align 8
  store i8** %37, i8*** %restrict_data_l, align 8
  %38 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %interp_data_l21 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %38, i32 0, i32 28
  %39 = load i8**, i8*** %interp_data_l21, align 8
  store i8** %39, i8*** %interp_data_l, align 8
  %40 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %logging22 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %40, i32 0, i32 31
  %41 = load i32, i32* %logging22, align 4
  store i32 %41, i32* %logging, align 4
  %42 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %norms23 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %42, i32 0, i32 32
  %43 = load double*, double** %norms23, align 8
  store double* %43, double** %norms, align 8
  %44 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %rel_norms24 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %44, i32 0, i32 33
  %45 = load double*, double** %rel_norms24, align 8
  store double* %45, double** %rel_norms, align 8
  store i32 0, i32* %ierr, align 4
  %46 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %46, i32 0, i32 30
  %47 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %47)
  %48 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %48, i64 0
  %49 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx, align 8
  %call25 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %49)
  %50 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx26 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %50, i64 0
  %51 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx26, align 8
  %call27 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %51)
  %52 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %52, i64 0
  %53 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx28, align 8
  %call29 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %53)
  %54 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call30 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %54)
  %55 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx31 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %55, i64 0
  store %struct.hypre_StructMatrix_struct* %call30, %struct.hypre_StructMatrix_struct** %arrayidx31, align 8
  %56 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call32 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %56)
  %57 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx33 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %57, i64 0
  store %struct.hypre_StructVector_struct* %call32, %struct.hypre_StructVector_struct** %arrayidx33, align 8
  %58 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call34 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %58)
  %59 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx35 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %59, i64 0
  store %struct.hypre_StructVector_struct* %call34, %struct.hypre_StructVector_struct** %arrayidx35, align 8
  %60 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_iterations = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %60, i32 0, i32 29
  store i32 0, i32* %num_iterations, align 4
  %61 = load i32, i32* %max_iter, align 4
  %cmp = icmp eq i32 %61, 0
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %62 = load i32, i32* %zero_guess, align 4
  %tobool = icmp ne i32 %62, 0
  br i1 %tobool, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then
  %63 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call37 = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %63, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then
  %64 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index38 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %64, i32 0, i32 30
  %65 = load i32, i32* %time_index38, align 4
  %call39 = call i32 @hypre_EndTiming(i32 %65)
  %66 = load i32, i32* %ierr, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.40:                                        ; preds = %entry
  %67 = load double, double* %tol, align 8
  %cmp41 = fcmp ogt double %67, 0.000000e+00
  br i1 %cmp41, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %if.end.40
  %68 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx43 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %68, i64 0
  %69 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx43, align 8
  %70 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %70, i64 0
  %71 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx44, align 8
  %call45 = call double @hypre_StructInnerProd(%struct.hypre_StructVector_struct* %69, %struct.hypre_StructVector_struct* %71)
  store double %call45, double* %b_dot_b, align 8
  %72 = load double, double* %tol, align 8
  %73 = load double, double* %tol, align 8
  %mul = fmul double %72, %73
  store double %mul, double* %eps, align 8
  %74 = load double, double* %b_dot_b, align 8
  %cmp46 = fcmp oeq double %74, 0.000000e+00
  br i1 %cmp46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.then.42
  %75 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call48 = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %75, double 0.000000e+00)
  %76 = load i32, i32* %logging, align 4
  %cmp49 = icmp sgt i32 %76, 0
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.then.47
  %77 = load double*, double** %norms, align 8
  %arrayidx51 = getelementptr inbounds double, double* %77, i64 0
  store double 0.000000e+00, double* %arrayidx51, align 8
  %78 = load double*, double** %rel_norms, align 8
  %arrayidx52 = getelementptr inbounds double, double* %78, i64 0
  store double 0.000000e+00, double* %arrayidx52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.then.47
  %79 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index54 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %79, i32 0, i32 30
  %80 = load i32, i32* %time_index54, align 4
  %call55 = call i32 @hypre_EndTiming(i32 %80)
  %81 = load i32, i32* %ierr, align 4
  store i32 %81, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.42
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.40
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.260, %if.end.57
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %max_iter, align 4
  %cmp58 = icmp slt i32 %82, %83
  br i1 %cmp58, label %for.body, label %for.end.262

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %num_levels, align 4
  %cmp59 = icmp sgt i32 %84, 1
  br i1 %cmp59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %for.body
  %85 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %85, i64 0
  %86 = load i8*, i8** %arrayidx61, align 8
  %call62 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %86, i32 0, i32 0)
  %87 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %87, i64 0
  %88 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %88, i32 1, i32 1)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %for.body
  %89 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %89, i64 0
  %90 = load i8*, i8** %arrayidx66, align 8
  %91 = load i32, i32* %num_pre_relax, align 4
  %call67 = call i32 @hypre_SMGRelaxSetMaxIter(i8* %90, i32 %91)
  %92 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %92, i64 0
  %93 = load i8*, i8** %arrayidx68, align 8
  %94 = load i32, i32* %zero_guess, align 4
  %call69 = call i32 @hypre_SMGRelaxSetZeroGuess(i8* %93, i32 %94)
  %95 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %95, i64 0
  %96 = load i8*, i8** %arrayidx70, align 8
  %97 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx71 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %97, i64 0
  %98 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx71, align 8
  %99 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx72 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %99, i64 0
  %100 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx72, align 8
  %101 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx73 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %101, i64 0
  %102 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx73, align 8
  %call74 = call i32 @hypre_SMGRelax(i8* %96, %struct.hypre_StructMatrix_struct* %98, %struct.hypre_StructVector_struct* %100, %struct.hypre_StructVector_struct* %102)
  store i32 0, i32* %zero_guess, align 4
  %103 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %103, i64 0
  %104 = load i8*, i8** %arrayidx75, align 8
  %105 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx76 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %105, i64 0
  %106 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx76, align 8
  %107 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx77 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %107, i64 0
  %108 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx77, align 8
  %109 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx78 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %109, i64 0
  %110 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx78, align 8
  %111 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx79 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %111, i64 0
  %112 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx79, align 8
  %call80 = call i32 @hypre_SMGResidual(i8* %104, %struct.hypre_StructMatrix_struct* %106, %struct.hypre_StructVector_struct* %108, %struct.hypre_StructVector_struct* %110, %struct.hypre_StructVector_struct* %112)
  %113 = load double, double* %tol, align 8
  %cmp81 = fcmp ogt double %113, 0.000000e+00
  br i1 %cmp81, label %if.then.82, label %if.end.112

if.then.82:                                       ; preds = %if.end.65
  %114 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx83 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %114, i64 0
  %115 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx83, align 8
  %116 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx84 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %116, i64 0
  %117 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx84, align 8
  %call85 = call double @hypre_StructInnerProd(%struct.hypre_StructVector_struct* %115, %struct.hypre_StructVector_struct* %117)
  store double %call85, double* %r_dot_r, align 8
  %118 = load i32, i32* %logging, align 4
  %cmp86 = icmp sgt i32 %118, 0
  br i1 %cmp86, label %if.then.87, label %if.end.98

if.then.87:                                       ; preds = %if.then.82
  %119 = load double, double* %r_dot_r, align 8
  %call88 = call double @sqrt(double %119) #3
  %120 = load i32, i32* %i, align 4
  %idxprom = sext i32 %120 to i64
  %121 = load double*, double** %norms, align 8
  %arrayidx89 = getelementptr inbounds double, double* %121, i64 %idxprom
  store double %call88, double* %arrayidx89, align 8
  %122 = load double, double* %b_dot_b, align 8
  %cmp90 = fcmp ogt double %122, 0.000000e+00
  br i1 %cmp90, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.then.87
  %123 = load double, double* %r_dot_r, align 8
  %124 = load double, double* %b_dot_b, align 8
  %div = fdiv double %123, %124
  %call92 = call double @sqrt(double %div) #3
  %125 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %125 to i64
  %126 = load double*, double** %rel_norms, align 8
  %arrayidx94 = getelementptr inbounds double, double* %126, i64 %idxprom93
  store double %call92, double* %arrayidx94, align 8
  br label %if.end.97

if.else:                                          ; preds = %if.then.87
  %127 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %127 to i64
  %128 = load double*, double** %rel_norms, align 8
  %arrayidx96 = getelementptr inbounds double, double* %128, i64 %idxprom95
  store double 0.000000e+00, double* %arrayidx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else, %if.then.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.82
  %129 = load double, double* %r_dot_r, align 8
  %130 = load double, double* %b_dot_b, align 8
  %div99 = fdiv double %129, %130
  %131 = load double, double* %eps, align 8
  %cmp100 = fcmp olt double %div99, %131
  br i1 %cmp100, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %if.end.98
  %132 = load i32, i32* %i, align 4
  %cmp101 = icmp sgt i32 %132, 0
  br i1 %cmp101, label %if.then.102, label %if.end.111

if.then.102:                                      ; preds = %land.lhs.true
  %133 = load i32, i32* %rel_change, align 4
  %tobool103 = icmp ne i32 %133, 0
  br i1 %tobool103, label %if.then.104, label %if.else.109

if.then.104:                                      ; preds = %if.then.102
  %134 = load double, double* %e_dot_e, align 8
  %135 = load double, double* %x_dot_x, align 8
  %div105 = fdiv double %134, %135
  %136 = load double, double* %eps, align 8
  %cmp106 = fcmp olt double %div105, %136
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.104
  br label %for.end.262

if.end.108:                                       ; preds = %if.then.104
  br label %if.end.110

if.else.109:                                      ; preds = %if.then.102
  br label %for.end.262

if.end.110:                                       ; preds = %if.end.108
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true, %if.end.98
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.65
  %137 = load i32, i32* %num_levels, align 4
  %cmp113 = icmp sgt i32 %137, 1
  br i1 %cmp113, label %if.then.114, label %if.end.226

if.then.114:                                      ; preds = %if.end.112
  %138 = load i8**, i8*** %restrict_data_l, align 8
  %arrayidx115 = getelementptr inbounds i8*, i8** %138, i64 0
  %139 = load i8*, i8** %arrayidx115, align 8
  %140 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx116 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %140, i64 0
  %141 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx116, align 8
  %142 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx117 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %142, i64 0
  %143 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx117, align 8
  %144 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx118 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %144, i64 1
  %145 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx118, align 8
  %call119 = call i32 @hypre_SemiRestrict(i8* %139, %struct.hypre_StructMatrix_struct* %141, %struct.hypre_StructVector_struct* %143, %struct.hypre_StructVector_struct* %145)
  store i32 1, i32* %l, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc, %if.then.114
  %146 = load i32, i32* %l, align 4
  %147 = load i32, i32* %num_levels, align 4
  %sub = sub nsw i32 %147, 2
  %cmp121 = icmp sle i32 %146, %sub
  br i1 %cmp121, label %for.body.122, label %for.end

for.body.122:                                     ; preds = %for.cond.120
  %148 = load i32, i32* %l, align 4
  %idxprom123 = sext i32 %148 to i64
  %149 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %149, i64 %idxprom123
  %150 = load i8*, i8** %arrayidx124, align 8
  %call125 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %150, i32 0, i32 0)
  %151 = load i32, i32* %l, align 4
  %idxprom126 = sext i32 %151 to i64
  %152 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %152, i64 %idxprom126
  %153 = load i8*, i8** %arrayidx127, align 8
  %call128 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %153, i32 1, i32 1)
  %154 = load i32, i32* %l, align 4
  %idxprom129 = sext i32 %154 to i64
  %155 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %155, i64 %idxprom129
  %156 = load i8*, i8** %arrayidx130, align 8
  %157 = load i32, i32* %num_pre_relax, align 4
  %call131 = call i32 @hypre_SMGRelaxSetMaxIter(i8* %156, i32 %157)
  %158 = load i32, i32* %l, align 4
  %idxprom132 = sext i32 %158 to i64
  %159 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %159, i64 %idxprom132
  %160 = load i8*, i8** %arrayidx133, align 8
  %call134 = call i32 @hypre_SMGRelaxSetZeroGuess(i8* %160, i32 1)
  %161 = load i32, i32* %l, align 4
  %idxprom135 = sext i32 %161 to i64
  %162 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %162, i64 %idxprom135
  %163 = load i8*, i8** %arrayidx136, align 8
  %164 = load i32, i32* %l, align 4
  %idxprom137 = sext i32 %164 to i64
  %165 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx138 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %165, i64 %idxprom137
  %166 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx138, align 8
  %167 = load i32, i32* %l, align 4
  %idxprom139 = sext i32 %167 to i64
  %168 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx140 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %168, i64 %idxprom139
  %169 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx140, align 8
  %170 = load i32, i32* %l, align 4
  %idxprom141 = sext i32 %170 to i64
  %171 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx142 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %171, i64 %idxprom141
  %172 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx142, align 8
  %call143 = call i32 @hypre_SMGRelax(i8* %163, %struct.hypre_StructMatrix_struct* %166, %struct.hypre_StructVector_struct* %169, %struct.hypre_StructVector_struct* %172)
  %173 = load i32, i32* %l, align 4
  %idxprom144 = sext i32 %173 to i64
  %174 = load i8**, i8*** %residual_data_l, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %174, i64 %idxprom144
  %175 = load i8*, i8** %arrayidx145, align 8
  %176 = load i32, i32* %l, align 4
  %idxprom146 = sext i32 %176 to i64
  %177 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx147 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %177, i64 %idxprom146
  %178 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx147, align 8
  %179 = load i32, i32* %l, align 4
  %idxprom148 = sext i32 %179 to i64
  %180 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx149 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %180, i64 %idxprom148
  %181 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx149, align 8
  %182 = load i32, i32* %l, align 4
  %idxprom150 = sext i32 %182 to i64
  %183 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx151 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %183, i64 %idxprom150
  %184 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx151, align 8
  %185 = load i32, i32* %l, align 4
  %idxprom152 = sext i32 %185 to i64
  %186 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx153 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %186, i64 %idxprom152
  %187 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx153, align 8
  %call154 = call i32 @hypre_SMGResidual(i8* %175, %struct.hypre_StructMatrix_struct* %178, %struct.hypre_StructVector_struct* %181, %struct.hypre_StructVector_struct* %184, %struct.hypre_StructVector_struct* %187)
  %188 = load i32, i32* %l, align 4
  %idxprom155 = sext i32 %188 to i64
  %189 = load i8**, i8*** %restrict_data_l, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %189, i64 %idxprom155
  %190 = load i8*, i8** %arrayidx156, align 8
  %191 = load i32, i32* %l, align 4
  %idxprom157 = sext i32 %191 to i64
  %192 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %R_l, align 8
  %arrayidx158 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %192, i64 %idxprom157
  %193 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx158, align 8
  %194 = load i32, i32* %l, align 4
  %idxprom159 = sext i32 %194 to i64
  %195 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %r_l, align 8
  %arrayidx160 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %195, i64 %idxprom159
  %196 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx160, align 8
  %197 = load i32, i32* %l, align 4
  %add = add nsw i32 %197, 1
  %idxprom161 = sext i32 %add to i64
  %198 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx162 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %198, i64 %idxprom161
  %199 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx162, align 8
  %call163 = call i32 @hypre_SemiRestrict(i8* %190, %struct.hypre_StructMatrix_struct* %193, %struct.hypre_StructVector_struct* %196, %struct.hypre_StructVector_struct* %199)
  br label %for.inc

for.inc:                                          ; preds = %for.body.122
  %200 = load i32, i32* %l, align 4
  %inc = add nsw i32 %200, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.120

for.end:                                          ; preds = %for.cond.120
  %201 = load i32, i32* %l, align 4
  %idxprom164 = sext i32 %201 to i64
  %202 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx165 = getelementptr inbounds i8*, i8** %202, i64 %idxprom164
  %203 = load i8*, i8** %arrayidx165, align 8
  %call166 = call i32 @hypre_SMGRelaxSetZeroGuess(i8* %203, i32 1)
  %204 = load i32, i32* %l, align 4
  %idxprom167 = sext i32 %204 to i64
  %205 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %205, i64 %idxprom167
  %206 = load i8*, i8** %arrayidx168, align 8
  %207 = load i32, i32* %l, align 4
  %idxprom169 = sext i32 %207 to i64
  %208 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx170 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %208, i64 %idxprom169
  %209 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx170, align 8
  %210 = load i32, i32* %l, align 4
  %idxprom171 = sext i32 %210 to i64
  %211 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx172 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %211, i64 %idxprom171
  %212 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx172, align 8
  %213 = load i32, i32* %l, align 4
  %idxprom173 = sext i32 %213 to i64
  %214 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx174 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %214, i64 %idxprom173
  %215 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx174, align 8
  %call175 = call i32 @hypre_SMGRelax(i8* %206, %struct.hypre_StructMatrix_struct* %209, %struct.hypre_StructVector_struct* %212, %struct.hypre_StructVector_struct* %215)
  %216 = load i32, i32* %num_levels, align 4
  %sub176 = sub nsw i32 %216, 2
  store i32 %sub176, i32* %l, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.216, %for.end
  %217 = load i32, i32* %l, align 4
  %cmp178 = icmp sge i32 %217, 1
  br i1 %cmp178, label %for.body.179, label %for.end.217

for.body.179:                                     ; preds = %for.cond.177
  %218 = load i32, i32* %l, align 4
  %idxprom180 = sext i32 %218 to i64
  %219 = load i8**, i8*** %interp_data_l, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %219, i64 %idxprom180
  %220 = load i8*, i8** %arrayidx181, align 8
  %221 = load i32, i32* %l, align 4
  %idxprom182 = sext i32 %221 to i64
  %222 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx183 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %222, i64 %idxprom182
  %223 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx183, align 8
  %224 = load i32, i32* %l, align 4
  %add184 = add nsw i32 %224, 1
  %idxprom185 = sext i32 %add184 to i64
  %225 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx186 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %225, i64 %idxprom185
  %226 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx186, align 8
  %227 = load i32, i32* %l, align 4
  %idxprom187 = sext i32 %227 to i64
  %228 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx188 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %228, i64 %idxprom187
  %229 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx188, align 8
  %call189 = call i32 @hypre_SemiInterp(i8* %220, %struct.hypre_StructMatrix_struct* %223, %struct.hypre_StructVector_struct* %226, %struct.hypre_StructVector_struct* %229)
  %230 = load i32, i32* %l, align 4
  %idxprom190 = sext i32 %230 to i64
  %231 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx191 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %231, i64 %idxprom190
  %232 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx191, align 8
  %233 = load i32, i32* %l, align 4
  %idxprom192 = sext i32 %233 to i64
  %234 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx193 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %234, i64 %idxprom192
  %235 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx193, align 8
  %call194 = call i32 @hypre_StructAxpy(double 1.000000e+00, %struct.hypre_StructVector_struct* %232, %struct.hypre_StructVector_struct* %235)
  %236 = load i32, i32* %l, align 4
  %idxprom195 = sext i32 %236 to i64
  %237 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx196 = getelementptr inbounds i8*, i8** %237, i64 %idxprom195
  %238 = load i8*, i8** %arrayidx196, align 8
  %call197 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %238, i32 0, i32 1)
  %239 = load i32, i32* %l, align 4
  %idxprom198 = sext i32 %239 to i64
  %240 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %240, i64 %idxprom198
  %241 = load i8*, i8** %arrayidx199, align 8
  %call200 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %241, i32 1, i32 0)
  %242 = load i32, i32* %l, align 4
  %idxprom201 = sext i32 %242 to i64
  %243 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %243, i64 %idxprom201
  %244 = load i8*, i8** %arrayidx202, align 8
  %245 = load i32, i32* %num_post_relax, align 4
  %call203 = call i32 @hypre_SMGRelaxSetMaxIter(i8* %244, i32 %245)
  %246 = load i32, i32* %l, align 4
  %idxprom204 = sext i32 %246 to i64
  %247 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %247, i64 %idxprom204
  %248 = load i8*, i8** %arrayidx205, align 8
  %call206 = call i32 @hypre_SMGRelaxSetZeroGuess(i8* %248, i32 0)
  %249 = load i32, i32* %l, align 4
  %idxprom207 = sext i32 %249 to i64
  %250 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %250, i64 %idxprom207
  %251 = load i8*, i8** %arrayidx208, align 8
  %252 = load i32, i32* %l, align 4
  %idxprom209 = sext i32 %252 to i64
  %253 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx210 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %253, i64 %idxprom209
  %254 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx210, align 8
  %255 = load i32, i32* %l, align 4
  %idxprom211 = sext i32 %255 to i64
  %256 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx212 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %256, i64 %idxprom211
  %257 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx212, align 8
  %258 = load i32, i32* %l, align 4
  %idxprom213 = sext i32 %258 to i64
  %259 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx214 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %259, i64 %idxprom213
  %260 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx214, align 8
  %call215 = call i32 @hypre_SMGRelax(i8* %251, %struct.hypre_StructMatrix_struct* %254, %struct.hypre_StructVector_struct* %257, %struct.hypre_StructVector_struct* %260)
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.179
  %261 = load i32, i32* %l, align 4
  %dec = add nsw i32 %261, -1
  store i32 %dec, i32* %l, align 4
  br label %for.cond.177

for.end.217:                                      ; preds = %for.cond.177
  %262 = load i8**, i8*** %interp_data_l, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %262, i64 0
  %263 = load i8*, i8** %arrayidx218, align 8
  %264 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %PT_l, align 8
  %arrayidx219 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %264, i64 0
  %265 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx219, align 8
  %266 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx220 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %266, i64 1
  %267 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx220, align 8
  %268 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx221 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %268, i64 0
  %269 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx221, align 8
  %call222 = call i32 @hypre_SemiInterp(i8* %263, %struct.hypre_StructMatrix_struct* %265, %struct.hypre_StructVector_struct* %267, %struct.hypre_StructVector_struct* %269)
  %270 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx223 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %270, i64 0
  %271 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx223, align 8
  %272 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx224 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %272, i64 0
  %273 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx224, align 8
  %274 = load i32*, i32** %base_index, align 8
  %275 = load i32*, i32** %base_stride, align 8
  %call225 = call i32 @hypre_SMGAxpy(double 1.000000e+00, %struct.hypre_StructVector_struct* %271, %struct.hypre_StructVector_struct* %273, i32* %274, i32* %275)
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.217, %if.end.112
  %276 = load double, double* %tol, align 8
  %cmp227 = fcmp ogt double %276, 0.000000e+00
  br i1 %cmp227, label %land.lhs.true.228, label %if.end.241

land.lhs.true.228:                                ; preds = %if.end.226
  %277 = load i32, i32* %rel_change, align 4
  %tobool229 = icmp ne i32 %277, 0
  br i1 %tobool229, label %if.then.230, label %if.end.241

if.then.230:                                      ; preds = %land.lhs.true.228
  %278 = load i32, i32* %num_levels, align 4
  %cmp231 = icmp sgt i32 %278, 1
  br i1 %cmp231, label %if.then.232, label %if.else.239

if.then.232:                                      ; preds = %if.then.230
  %279 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx233 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %279, i64 0
  %280 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx233, align 8
  %281 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %e_l, align 8
  %arrayidx234 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %281, i64 0
  %282 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx234, align 8
  %call235 = call double @hypre_StructInnerProd(%struct.hypre_StructVector_struct* %280, %struct.hypre_StructVector_struct* %282)
  store double %call235, double* %e_dot_e, align 8
  %283 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx236 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %283, i64 0
  %284 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx236, align 8
  %285 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx237 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %285, i64 0
  %286 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx237, align 8
  %call238 = call double @hypre_StructInnerProd(%struct.hypre_StructVector_struct* %284, %struct.hypre_StructVector_struct* %286)
  store double %call238, double* %x_dot_x, align 8
  br label %if.end.240

if.else.239:                                      ; preds = %if.then.230
  store double 0.000000e+00, double* %e_dot_e, align 8
  store double 1.000000e+00, double* %x_dot_x, align 8
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.239, %if.then.232
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %land.lhs.true.228, %if.end.226
  %287 = load i32, i32* %num_levels, align 4
  %cmp242 = icmp sgt i32 %287, 1
  br i1 %cmp242, label %if.then.243, label %if.end.248

if.then.243:                                      ; preds = %if.end.241
  %288 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %288, i64 0
  %289 = load i8*, i8** %arrayidx244, align 8
  %call245 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %289, i32 0, i32 1)
  %290 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx246 = getelementptr inbounds i8*, i8** %290, i64 0
  %291 = load i8*, i8** %arrayidx246, align 8
  %call247 = call i32 @hypre_SMGRelaxSetRegSpaceRank(i8* %291, i32 1, i32 0)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %if.end.241
  %292 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx249 = getelementptr inbounds i8*, i8** %292, i64 0
  %293 = load i8*, i8** %arrayidx249, align 8
  %294 = load i32, i32* %num_post_relax, align 4
  %call250 = call i32 @hypre_SMGRelaxSetMaxIter(i8* %293, i32 %294)
  %295 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx251 = getelementptr inbounds i8*, i8** %295, i64 0
  %296 = load i8*, i8** %arrayidx251, align 8
  %call252 = call i32 @hypre_SMGRelaxSetZeroGuess(i8* %296, i32 0)
  %297 = load i8**, i8*** %relax_data_l, align 8
  %arrayidx253 = getelementptr inbounds i8*, i8** %297, i64 0
  %298 = load i8*, i8** %arrayidx253, align 8
  %299 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %A_l, align 8
  %arrayidx254 = getelementptr inbounds %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %299, i64 0
  %300 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %arrayidx254, align 8
  %301 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %b_l, align 8
  %arrayidx255 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %301, i64 0
  %302 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx255, align 8
  %303 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %x_l, align 8
  %arrayidx256 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %303, i64 0
  %304 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx256, align 8
  %call257 = call i32 @hypre_SMGRelax(i8* %298, %struct.hypre_StructMatrix_struct* %300, %struct.hypre_StructVector_struct* %302, %struct.hypre_StructVector_struct* %304)
  %305 = load i32, i32* %i, align 4
  %add258 = add nsw i32 %305, 1
  %306 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %num_iterations259 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %306, i32 0, i32 29
  store i32 %add258, i32* %num_iterations259, align 4
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.248
  %307 = load i32, i32* %i, align 4
  %inc261 = add nsw i32 %307, 1
  store i32 %inc261, i32* %i, align 4
  br label %for.cond

for.end.262:                                      ; preds = %if.else.109, %if.then.107, %for.cond
  %308 = load %struct.hypre_SMGData*, %struct.hypre_SMGData** %smg_data, align 8
  %time_index263 = getelementptr inbounds %struct.hypre_SMGData, %struct.hypre_SMGData* %308, i32 0, i32 30
  %309 = load i32, i32* %time_index263, align 4
  %call264 = call i32 @hypre_EndTiming(i32 %309)
  %310 = load i32, i32* %ierr, align 4
  store i32 %310, i32* %retval
  br label %return

return:                                           ; preds = %for.end.262, %if.end.53, %if.end
  %311 = load i32, i32* %retval
  ret i32 %311
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct*, double) #1

declare i32 @hypre_EndTiming(i32) #1

declare double @hypre_StructInnerProd(%struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_SMGRelaxSetRegSpaceRank(i8*, i32, i32) #1

declare i32 @hypre_SMGRelaxSetMaxIter(i8*, i32) #1

declare i32 @hypre_SMGRelaxSetZeroGuess(i8*, i32) #1

declare i32 @hypre_SMGRelax(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_SMGResidual(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @hypre_SemiRestrict(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_SemiInterp(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructAxpy(double, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_SMGAxpy(double, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
