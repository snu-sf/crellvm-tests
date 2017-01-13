; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/31.SMG2000.pcg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_PCGFunctions = type { i8* (i32, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*)*, i8* (i8*, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*)*, double (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*)*, i32 (double, i8*)*, i32 (double, i8*, i8*)*, i32 (...)*, i32 (...)* }
%struct.hypre_PCGData = type { double, double, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.hypre_PCGFunctions*, i32, i32, double*, double* }
%struct.hypre_Solver_struct = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hypre_PCGFunctions* @hypre_PCGFunctionsCreate(i8* (i32, i32)* %CAlloc, i32 (i8*)* %Free, i8* (i8*)* %CreateVector, i32 (i8*)* %DestroyVector, i8* (i8*, i8*)* %MatvecCreate, i32 (i8*, double, i8*, i8*, double, i8*)* %Matvec, i32 (i8*)* %MatvecDestroy, double (i8*, i8*)* %InnerProd, i32 (i8*, i8*)* %CopyVector, i32 (i8*)* %ClearVector, i32 (double, i8*)* %ScaleVector, i32 (double, i8*, i8*)* %Axpy, i32 (i8*, i8*, i8*, i8*)* %PrecondSetup, i32 (i8*, i8*, i8*, i8*)* %Precond) #0 {
entry:
  %CAlloc.addr = alloca i8* (i32, i32)*, align 8
  %Free.addr = alloca i32 (i8*)*, align 8
  %CreateVector.addr = alloca i8* (i8*)*, align 8
  %DestroyVector.addr = alloca i32 (i8*)*, align 8
  %MatvecCreate.addr = alloca i8* (i8*, i8*)*, align 8
  %Matvec.addr = alloca i32 (i8*, double, i8*, i8*, double, i8*)*, align 8
  %MatvecDestroy.addr = alloca i32 (i8*)*, align 8
  %InnerProd.addr = alloca double (i8*, i8*)*, align 8
  %CopyVector.addr = alloca i32 (i8*, i8*)*, align 8
  %ClearVector.addr = alloca i32 (i8*)*, align 8
  %ScaleVector.addr = alloca i32 (double, i8*)*, align 8
  %Axpy.addr = alloca i32 (double, i8*, i8*)*, align 8
  %PrecondSetup.addr = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %Precond.addr = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  store i8* (i32, i32)* %CAlloc, i8* (i32, i32)** %CAlloc.addr, align 8
  store i32 (i8*)* %Free, i32 (i8*)** %Free.addr, align 8
  store i8* (i8*)* %CreateVector, i8* (i8*)** %CreateVector.addr, align 8
  store i32 (i8*)* %DestroyVector, i32 (i8*)** %DestroyVector.addr, align 8
  store i8* (i8*, i8*)* %MatvecCreate, i8* (i8*, i8*)** %MatvecCreate.addr, align 8
  store i32 (i8*, double, i8*, i8*, double, i8*)* %Matvec, i32 (i8*, double, i8*, i8*, double, i8*)** %Matvec.addr, align 8
  store i32 (i8*)* %MatvecDestroy, i32 (i8*)** %MatvecDestroy.addr, align 8
  store double (i8*, i8*)* %InnerProd, double (i8*, i8*)** %InnerProd.addr, align 8
  store i32 (i8*, i8*)* %CopyVector, i32 (i8*, i8*)** %CopyVector.addr, align 8
  store i32 (i8*)* %ClearVector, i32 (i8*)** %ClearVector.addr, align 8
  store i32 (double, i8*)* %ScaleVector, i32 (double, i8*)** %ScaleVector.addr, align 8
  store i32 (double, i8*, i8*)* %Axpy, i32 (double, i8*, i8*)** %Axpy.addr, align 8
  store i32 (i8*, i8*, i8*, i8*)* %PrecondSetup, i32 (i8*, i8*, i8*, i8*)** %PrecondSetup.addr, align 8
  store i32 (i8*, i8*, i8*, i8*)* %Precond, i32 (i8*, i8*, i8*, i8*)** %Precond.addr, align 8
  %0 = load i8* (i32, i32)*, i8* (i32, i32)** %CAlloc.addr, align 8
  %call = call i8* %0(i32 1, i32 112)
  %1 = bitcast i8* %call to %struct.hypre_PCGFunctions*
  store %struct.hypre_PCGFunctions* %1, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %2 = load i8* (i32, i32)*, i8* (i32, i32)** %CAlloc.addr, align 8
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CAlloc1 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %3, i32 0, i32 0
  store i8* (i32, i32)* %2, i8* (i32, i32)** %CAlloc1, align 8
  %4 = load i32 (i8*)*, i32 (i8*)** %Free.addr, align 8
  %5 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Free2 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %5, i32 0, i32 1
  store i32 (i8*)* %4, i32 (i8*)** %Free2, align 8
  %6 = load i8* (i8*)*, i8* (i8*)** %CreateVector.addr, align 8
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CreateVector3 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i32 0, i32 2
  store i8* (i8*)* %6, i8* (i8*)** %CreateVector3, align 8
  %8 = load i32 (i8*)*, i32 (i8*)** %DestroyVector.addr, align 8
  %9 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %DestroyVector4 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %9, i32 0, i32 3
  store i32 (i8*)* %8, i32 (i8*)** %DestroyVector4, align 8
  %10 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %MatvecCreate.addr, align 8
  %11 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %MatvecCreate5 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %11, i32 0, i32 4
  store i8* (i8*, i8*)* %10, i8* (i8*, i8*)** %MatvecCreate5, align 8
  %12 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %Matvec.addr, align 8
  %13 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Matvec6 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %13, i32 0, i32 5
  store i32 (i8*, double, i8*, i8*, double, i8*)* %12, i32 (i8*, double, i8*, i8*, double, i8*)** %Matvec6, align 8
  %14 = load i32 (i8*)*, i32 (i8*)** %MatvecDestroy.addr, align 8
  %15 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %MatvecDestroy7 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %15, i32 0, i32 6
  store i32 (i8*)* %14, i32 (i8*)** %MatvecDestroy7, align 8
  %16 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd.addr, align 8
  %17 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd8 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %17, i32 0, i32 7
  store double (i8*, i8*)* %16, double (i8*, i8*)** %InnerProd8, align 8
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %CopyVector.addr, align 8
  %19 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CopyVector9 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %19, i32 0, i32 8
  store i32 (i8*, i8*)* %18, i32 (i8*, i8*)** %CopyVector9, align 8
  %20 = load i32 (i8*)*, i32 (i8*)** %ClearVector.addr, align 8
  %21 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ClearVector10 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %21, i32 0, i32 9
  store i32 (i8*)* %20, i32 (i8*)** %ClearVector10, align 8
  %22 = load i32 (double, i8*)*, i32 (double, i8*)** %ScaleVector.addr, align 8
  %23 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ScaleVector11 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %23, i32 0, i32 10
  store i32 (double, i8*)* %22, i32 (double, i8*)** %ScaleVector11, align 8
  %24 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %Axpy.addr, align 8
  %25 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Axpy12 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %25, i32 0, i32 11
  store i32 (double, i8*, i8*)* %24, i32 (double, i8*, i8*)** %Axpy12, align 8
  %26 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %PrecondSetup.addr, align 8
  %27 = bitcast i32 (i8*, i8*, i8*, i8*)* %26 to i32 (...)*
  %28 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond_setup = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %28, i32 0, i32 13
  store i32 (...)* %27, i32 (...)** %precond_setup, align 8
  %29 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %Precond.addr, align 8
  %30 = bitcast i32 (i8*, i8*, i8*, i8*)* %29 to i32 (...)*
  %31 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %31, i32 0, i32 12
  store i32 (...)* %30, i32 (...)** %precond, align 8
  %32 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  ret %struct.hypre_PCGFunctions* %32
}

; Function Attrs: nounwind uwtable
define i8* @hypre_PCGCreate(%struct.hypre_PCGFunctions* %pcg_functions) #0 {
entry:
  %pcg_functions.addr = alloca %struct.hypre_PCGFunctions*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  store %struct.hypre_PCGFunctions* %pcg_functions, %struct.hypre_PCGFunctions** %pcg_functions.addr, align 8
  %0 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions.addr, align 8
  %CAlloc = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %0, i32 0, i32 0
  %1 = load i8* (i32, i32)*, i8* (i32, i32)** %CAlloc, align 8
  %call = call i8* %1(i32 1, i32 112)
  %2 = bitcast i8* %call to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %2, %struct.hypre_PCGData** %pcg_data, align 8
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions.addr, align 8
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %functions = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %4, i32 0, i32 12
  store %struct.hypre_PCGFunctions* %3, %struct.hypre_PCGFunctions** %functions, align 8
  %5 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %tol = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %5, i32 0, i32 0
  store double 1.000000e-06, double* %tol, align 8
  %6 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %cf_tol = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %6, i32 0, i32 1
  store double 0.000000e+00, double* %cf_tol, align 8
  %7 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %max_iter = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %7, i32 0, i32 2
  store i32 1000, i32* %max_iter, align 4
  %8 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %two_norm = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %8, i32 0, i32 3
  store i32 0, i32* %two_norm, align 4
  %9 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_change = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %9, i32 0, i32 4
  store i32 0, i32* %rel_change, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %stop_crit = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 5
  store i32 0, i32* %stop_crit, align 4
  %11 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %matvec_data = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %11, i32 0, i32 10
  store i8* null, i8** %matvec_data, align 8
  %12 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %precond_data = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %12, i32 0, i32 11
  store i8* null, i8** %precond_data, align 8
  %13 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %13, i32 0, i32 14
  store i32 0, i32* %logging, align 4
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 15
  store double* null, double** %norms, align 8
  %15 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %15, i32 0, i32 16
  store double* null, double** %rel_norms, align 8
  %16 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %17 = bitcast %struct.hypre_PCGData* %16 to i8*
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGDestroy(i8* %pcg_vdata) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %functions = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 12
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %functions, align 8
  store %struct.hypre_PCGFunctions* %3, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  store i32 0, i32* %ierr, align 4
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %tobool = icmp ne %struct.hypre_PCGData* %4, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %5, i32 0, i32 14
  %6 = load i32, i32* %logging, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Free = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i32 0, i32 1
  %8 = load i32 (i8*)*, i32 (i8*)** %Free, align 8
  %9 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %9, i32 0, i32 15
  %10 = load double*, double** %norms, align 8
  %11 = bitcast double* %10 to i8*
  %call = call i32 %8(i8* %11)
  %12 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms2 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %12, i32 0, i32 15
  store double* null, double** %norms2, align 8
  %13 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Free3 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %13, i32 0, i32 1
  %14 = load i32 (i8*)*, i32 (i8*)** %Free3, align 8
  %15 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %15, i32 0, i32 16
  %16 = load double*, double** %rel_norms, align 8
  %17 = bitcast double* %16 to i8*
  %call4 = call i32 %14(i8* %17)
  %18 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms5 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %18, i32 0, i32 16
  store double* null, double** %rel_norms5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %19 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %MatvecDestroy = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %19, i32 0, i32 6
  %20 = load i32 (i8*)*, i32 (i8*)** %MatvecDestroy, align 8
  %21 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %matvec_data = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %21, i32 0, i32 10
  %22 = load i8*, i8** %matvec_data, align 8
  %call6 = call i32 %20(i8* %22)
  %23 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %DestroyVector = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %23, i32 0, i32 3
  %24 = load i32 (i8*)*, i32 (i8*)** %DestroyVector, align 8
  %25 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %p = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %25, i32 0, i32 7
  %26 = load i8*, i8** %p, align 8
  %call7 = call i32 %24(i8* %26)
  %27 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %DestroyVector8 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %27, i32 0, i32 3
  %28 = load i32 (i8*)*, i32 (i8*)** %DestroyVector8, align 8
  %29 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %s = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %29, i32 0, i32 8
  %30 = load i8*, i8** %s, align 8
  %call9 = call i32 %28(i8* %30)
  %31 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %DestroyVector10 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %31, i32 0, i32 3
  %32 = load i32 (i8*)*, i32 (i8*)** %DestroyVector10, align 8
  %33 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %r = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %33, i32 0, i32 9
  %34 = load i8*, i8** %r, align 8
  %call11 = call i32 %32(i8* %34)
  %35 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Free12 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %35, i32 0, i32 1
  %36 = load i32 (i8*)*, i32 (i8*)** %Free12, align 8
  %37 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %38 = bitcast %struct.hypre_PCGData* %37 to i8*
  %call13 = call i32 %36(i8* %38)
  store %struct.hypre_PCGData* null, %struct.hypre_PCGData** %pcg_data, align 8
  %39 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Free14 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %39, i32 0, i32 1
  %40 = load i32 (i8*)*, i32 (i8*)** %Free14, align 8
  %41 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %42 = bitcast %struct.hypre_PCGFunctions* %41 to i8*
  %call15 = call i32 %40(i8* %42)
  store %struct.hypre_PCGFunctions* null, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %43 = load i32, i32* %ierr, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetup(i8* %pcg_vdata, i8* %A, i8* %b, i8* %x) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %A.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  %max_iter = alloca i32, align 4
  %precond_setup = alloca i32 (...)*, align 8
  %precond_data = alloca i8*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %functions = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 12
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %functions, align 8
  store %struct.hypre_PCGFunctions* %3, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %4, i32 0, i32 2
  %5 = load i32, i32* %max_iter1, align 4
  store i32 %5, i32* %max_iter, align 4
  %6 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond_setup2 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %6, i32 0, i32 13
  %7 = load i32 (...)*, i32 (...)** %precond_setup2, align 8
  store i32 (...)* %7, i32 (...)** %precond_setup, align 8
  %8 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %precond_data3 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %8, i32 0, i32 11
  %9 = load i8*, i8** %precond_data3, align 8
  store i8* %9, i8** %precond_data, align 8
  store i32 0, i32* %ierr, align 4
  %10 = load i8*, i8** %A.addr, align 8
  %11 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %A4 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %11, i32 0, i32 6
  store i8* %10, i8** %A4, align 8
  %12 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CreateVector = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %12, i32 0, i32 2
  %13 = load i8* (i8*)*, i8* (i8*)** %CreateVector, align 8
  %14 = load i8*, i8** %x.addr, align 8
  %call = call i8* %13(i8* %14)
  %15 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %p = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %15, i32 0, i32 7
  store i8* %call, i8** %p, align 8
  %16 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CreateVector5 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %16, i32 0, i32 2
  %17 = load i8* (i8*)*, i8* (i8*)** %CreateVector5, align 8
  %18 = load i8*, i8** %x.addr, align 8
  %call6 = call i8* %17(i8* %18)
  %19 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %s = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %19, i32 0, i32 8
  store i8* %call6, i8** %s, align 8
  %20 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CreateVector7 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %20, i32 0, i32 2
  %21 = load i8* (i8*)*, i8* (i8*)** %CreateVector7, align 8
  %22 = load i8*, i8** %b.addr, align 8
  %call8 = call i8* %21(i8* %22)
  %23 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %r = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %23, i32 0, i32 9
  store i8* %call8, i8** %r, align 8
  %24 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %MatvecCreate = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %24, i32 0, i32 4
  %25 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %MatvecCreate, align 8
  %26 = load i8*, i8** %A.addr, align 8
  %27 = load i8*, i8** %x.addr, align 8
  %call9 = call i8* %25(i8* %26, i8* %27)
  %28 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %matvec_data = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %28, i32 0, i32 10
  store i8* %call9, i8** %matvec_data, align 8
  %29 = load i32 (...)*, i32 (...)** %precond_setup, align 8
  %30 = load i8*, i8** %precond_data, align 8
  %31 = load i8*, i8** %A.addr, align 8
  %32 = load i8*, i8** %b.addr, align 8
  %33 = load i8*, i8** %x.addr, align 8
  %callee.knr.cast = bitcast i32 (...)* %29 to i32 (i8*, i8*, i8*, i8*, ...)*
  %call10 = call i32 (i8*, i8*, i8*, i8*, ...) %callee.knr.cast(i8* %30, i8* %31, i8* %32, i8* %33)
  %34 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %34, i32 0, i32 14
  %35 = load i32, i32* %logging, align 4
  %cmp = icmp sgt i32 %35, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %36 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CAlloc = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %36, i32 0, i32 0
  %37 = load i8* (i32, i32)*, i8* (i32, i32)** %CAlloc, align 8
  %38 = load i32, i32* %max_iter, align 4
  %add = add nsw i32 %38, 1
  %call11 = call i8* %37(i32 %add, i32 8)
  %39 = bitcast i8* %call11 to double*
  %40 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %40, i32 0, i32 15
  store double* %39, double** %norms, align 8
  %41 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CAlloc12 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %41, i32 0, i32 0
  %42 = load i8* (i32, i32)*, i8* (i32, i32)** %CAlloc12, align 8
  %43 = load i32, i32* %max_iter, align 4
  %add13 = add nsw i32 %43, 1
  %call14 = call i8* %42(i32 %add13, i32 8)
  %44 = bitcast i8* %call14 to double*
  %45 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %45, i32 0, i32 16
  store double* %44, double** %rel_norms, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %46 = load i32, i32* %ierr, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSolve(i8* %pcg_vdata, i8* %A, i8* %b, i8* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %pcg_vdata.addr = alloca i8*, align 8
  %A.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  %tol = alloca double, align 8
  %cf_tol = alloca double, align 8
  %max_iter = alloca i32, align 4
  %two_norm = alloca i32, align 4
  %rel_change = alloca i32, align 4
  %stop_crit = alloca i32, align 4
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %r = alloca i8*, align 8
  %matvec_data = alloca i8*, align 8
  %precond = alloca i32 (...)*, align 8
  %precond_data = alloca i8*, align 8
  %logging = alloca i32, align 4
  %norms = alloca double*, align 8
  %rel_norms = alloca double*, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %gamma_old = alloca double, align 8
  %bi_prod = alloca double, align 8
  %i_prod = alloca double, align 8
  %eps = alloca double, align 8
  %pi_prod = alloca double, align 8
  %xi_prod = alloca double, align 8
  %i_prod_0 = alloca double, align 8
  %cf_ave_0 = alloca double, align 8
  %cf_ave_1 = alloca double, align 8
  %weight = alloca double, align 8
  %guard_zero_residual = alloca double, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %functions = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 12
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %functions, align 8
  store %struct.hypre_PCGFunctions* %3, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %4, i32 0, i32 0
  %5 = load double, double* %tol1, align 8
  store double %5, double* %tol, align 8
  %6 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %cf_tol2 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %6, i32 0, i32 1
  %7 = load double, double* %cf_tol2, align 8
  store double %7, double* %cf_tol, align 8
  %8 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %max_iter3 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %8, i32 0, i32 2
  %9 = load i32, i32* %max_iter3, align 4
  store i32 %9, i32* %max_iter, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %two_norm4 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 3
  %11 = load i32, i32* %two_norm4, align 4
  store i32 %11, i32* %two_norm, align 4
  %12 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_change5 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %12, i32 0, i32 4
  %13 = load i32, i32* %rel_change5, align 4
  store i32 %13, i32* %rel_change, align 4
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %stop_crit6 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 5
  %15 = load i32, i32* %stop_crit6, align 4
  store i32 %15, i32* %stop_crit, align 4
  %16 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %p7 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %16, i32 0, i32 7
  %17 = load i8*, i8** %p7, align 8
  store i8* %17, i8** %p, align 8
  %18 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %s8 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %18, i32 0, i32 8
  %19 = load i8*, i8** %s8, align 8
  store i8* %19, i8** %s, align 8
  %20 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %r9 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %20, i32 0, i32 9
  %21 = load i8*, i8** %r9, align 8
  store i8* %21, i8** %r, align 8
  %22 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %matvec_data10 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %22, i32 0, i32 10
  %23 = load i8*, i8** %matvec_data10, align 8
  store i8* %23, i8** %matvec_data, align 8
  %24 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond11 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %24, i32 0, i32 12
  %25 = load i32 (...)*, i32 (...)** %precond11, align 8
  store i32 (...)* %25, i32 (...)** %precond, align 8
  %26 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %precond_data12 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %26, i32 0, i32 11
  %27 = load i8*, i8** %precond_data12, align 8
  store i8* %27, i8** %precond_data, align 8
  %28 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging13 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %28, i32 0, i32 14
  %29 = load i32, i32* %logging13, align 4
  store i32 %29, i32* %logging, align 4
  %30 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms14 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %30, i32 0, i32 15
  %31 = load double*, double** %norms14, align 8
  store double* %31, double** %norms, align 8
  %32 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms15 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %32, i32 0, i32 16
  %33 = load double*, double** %rel_norms15, align 8
  store double* %33, double** %rel_norms, align 8
  store double 0.000000e+00, double* %cf_ave_0, align 8
  store double 0.000000e+00, double* %cf_ave_1, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %ierr, align 4
  store double 0.000000e+00, double* %guard_zero_residual, align 8
  %34 = load i32, i32* %two_norm, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %35 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %35, i32 0, i32 7
  %36 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd, align 8
  %37 = load i8*, i8** %b.addr, align 8
  %38 = load i8*, i8** %b.addr, align 8
  %call = call double %36(i8* %37, i8* %38)
  store double %call, double* %bi_prod, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %39 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ClearVector = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %39, i32 0, i32 9
  %40 = load i32 (i8*)*, i32 (i8*)** %ClearVector, align 8
  %41 = load i8*, i8** %p, align 8
  %call16 = call i32 %40(i8* %41)
  %42 = load i32 (...)*, i32 (...)** %precond, align 8
  %43 = load i8*, i8** %precond_data, align 8
  %44 = load i8*, i8** %A.addr, align 8
  %45 = load i8*, i8** %b.addr, align 8
  %46 = load i8*, i8** %p, align 8
  %callee.knr.cast = bitcast i32 (...)* %42 to i32 (i8*, i8*, i8*, i8*, ...)*
  %call17 = call i32 (i8*, i8*, i8*, i8*, ...) %callee.knr.cast(i8* %43, i8* %44, i8* %45, i8* %46)
  %47 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd18 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %47, i32 0, i32 7
  %48 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd18, align 8
  %49 = load i8*, i8** %p, align 8
  %50 = load i8*, i8** %b.addr, align 8
  %call19 = call double %48(i8* %49, i8* %50)
  store double %call19, double* %bi_prod, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %51 = load double, double* %tol, align 8
  %52 = load double, double* %tol, align 8
  %mul = fmul double %51, %52
  store double %mul, double* %eps, align 8
  %53 = load double, double* %bi_prod, align 8
  %cmp = fcmp ogt double %53, 0.000000e+00
  br i1 %cmp, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %if.end
  %54 = load i32, i32* %stop_crit, align 4
  %tobool21 = icmp ne i32 %54, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.then.20
  %55 = load i32, i32* %rel_change, align 4
  %tobool22 = icmp ne i32 %55, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %56 = load double, double* %eps, align 8
  %57 = load double, double* %bi_prod, align 8
  %div = fdiv double %56, %57
  store double %div, double* %eps, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true, %if.then.20
  br label %if.end.31

if.else.25:                                       ; preds = %if.end
  %58 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CopyVector = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %58, i32 0, i32 8
  %59 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %CopyVector, align 8
  %60 = load i8*, i8** %b.addr, align 8
  %61 = load i8*, i8** %x.addr, align 8
  %call26 = call i32 %59(i8* %60, i8* %61)
  %62 = load i32, i32* %logging, align 4
  %cmp27 = icmp sgt i32 %62, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else.25
  %63 = load double*, double** %norms, align 8
  %arrayidx = getelementptr inbounds double, double* %63, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom = sext i32 %64 to i64
  %65 = load double*, double** %rel_norms, align 8
  %arrayidx29 = getelementptr inbounds double, double* %65, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.else.25
  store i32 0, i32* %ierr, align 4
  %66 = load i32, i32* %ierr, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.24
  %67 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %CopyVector32 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %67, i32 0, i32 8
  %68 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %CopyVector32, align 8
  %69 = load i8*, i8** %b.addr, align 8
  %70 = load i8*, i8** %r, align 8
  %call33 = call i32 %68(i8* %69, i8* %70)
  %71 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Matvec = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %71, i32 0, i32 5
  %72 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %Matvec, align 8
  %73 = load i8*, i8** %matvec_data, align 8
  %74 = load i8*, i8** %A.addr, align 8
  %75 = load i8*, i8** %x.addr, align 8
  %76 = load i8*, i8** %r, align 8
  %call34 = call i32 %72(i8* %73, double -1.000000e+00, i8* %74, i8* %75, double 1.000000e+00, i8* %76)
  %77 = load i32, i32* %logging, align 4
  %cmp35 = icmp sgt i32 %77, 0
  br i1 %cmp35, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %78 = load double, double* %cf_tol, align 8
  %cmp36 = fcmp ogt double %78, 0.000000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.31
  %79 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd38 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %79, i32 0, i32 7
  %80 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd38, align 8
  %81 = load i8*, i8** %r, align 8
  %82 = load i8*, i8** %r, align 8
  %call39 = call double %80(i8* %81, i8* %82)
  store double %call39, double* %i_prod_0, align 8
  %83 = load i32, i32* %logging, align 4
  %cmp40 = icmp sgt i32 %83, 0
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.then.37
  %84 = load double, double* %i_prod_0, align 8
  %call42 = call double @sqrt(double %84) #4
  %85 = load double*, double** %norms, align 8
  %arrayidx43 = getelementptr inbounds double, double* %85, i64 0
  store double %call42, double* %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false
  %86 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ClearVector46 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %86, i32 0, i32 9
  %87 = load i32 (i8*)*, i32 (i8*)** %ClearVector46, align 8
  %88 = load i8*, i8** %p, align 8
  %call47 = call i32 %87(i8* %88)
  %89 = load i32 (...)*, i32 (...)** %precond, align 8
  %90 = load i8*, i8** %precond_data, align 8
  %91 = load i8*, i8** %A.addr, align 8
  %92 = load i8*, i8** %r, align 8
  %93 = load i8*, i8** %p, align 8
  %callee.knr.cast48 = bitcast i32 (...)* %89 to i32 (i8*, i8*, i8*, i8*, ...)*
  %call49 = call i32 (i8*, i8*, i8*, i8*, ...) %callee.knr.cast48(i8* %90, i8* %91, i8* %92, i8* %93)
  %94 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd50 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %94, i32 0, i32 7
  %95 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd50, align 8
  %96 = load i8*, i8** %r, align 8
  %97 = load i8*, i8** %p, align 8
  %call51 = call double %95(i8* %96, i8* %97)
  store double %call51, double* %gamma, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.125, %if.end.45
  %98 = load i32, i32* %i, align 4
  %add = add nsw i32 %98, 1
  %99 = load i32, i32* %max_iter, align 4
  %cmp52 = icmp sle i32 %add, %99
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %100 = load i32, i32* %i, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %i, align 4
  %101 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Matvec53 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %101, i32 0, i32 5
  %102 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %Matvec53, align 8
  %103 = load i8*, i8** %matvec_data, align 8
  %104 = load i8*, i8** %A.addr, align 8
  %105 = load i8*, i8** %p, align 8
  %106 = load i8*, i8** %s, align 8
  %call54 = call i32 %102(i8* %103, double 1.000000e+00, i8* %104, i8* %105, double 0.000000e+00, i8* %106)
  %107 = load double, double* %gamma, align 8
  %108 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd55 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %108, i32 0, i32 7
  %109 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd55, align 8
  %110 = load i8*, i8** %s, align 8
  %111 = load i8*, i8** %p, align 8
  %call56 = call double %109(i8* %110, i8* %111)
  %div57 = fdiv double %107, %call56
  store double %div57, double* %alpha, align 8
  %112 = load double, double* %gamma, align 8
  store double %112, double* %gamma_old, align 8
  %113 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Axpy = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %113, i32 0, i32 11
  %114 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %Axpy, align 8
  %115 = load double, double* %alpha, align 8
  %116 = load i8*, i8** %p, align 8
  %117 = load i8*, i8** %x.addr, align 8
  %call58 = call i32 %114(double %115, i8* %116, i8* %117)
  %118 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Axpy59 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %118, i32 0, i32 11
  %119 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %Axpy59, align 8
  %120 = load double, double* %alpha, align 8
  %sub = fsub double -0.000000e+00, %120
  %121 = load i8*, i8** %s, align 8
  %122 = load i8*, i8** %r, align 8
  %call60 = call i32 %119(double %sub, i8* %121, i8* %122)
  %123 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ClearVector61 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %123, i32 0, i32 9
  %124 = load i32 (i8*)*, i32 (i8*)** %ClearVector61, align 8
  %125 = load i8*, i8** %s, align 8
  %call62 = call i32 %124(i8* %125)
  %126 = load i32 (...)*, i32 (...)** %precond, align 8
  %127 = load i8*, i8** %precond_data, align 8
  %128 = load i8*, i8** %A.addr, align 8
  %129 = load i8*, i8** %r, align 8
  %130 = load i8*, i8** %s, align 8
  %callee.knr.cast63 = bitcast i32 (...)* %126 to i32 (i8*, i8*, i8*, i8*, ...)*
  %call64 = call i32 (i8*, i8*, i8*, i8*, ...) %callee.knr.cast63(i8* %127, i8* %128, i8* %129, i8* %130)
  %131 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd65 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %131, i32 0, i32 7
  %132 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd65, align 8
  %133 = load i8*, i8** %r, align 8
  %134 = load i8*, i8** %s, align 8
  %call66 = call double %132(i8* %133, i8* %134)
  store double %call66, double* %gamma, align 8
  %135 = load i32, i32* %two_norm, align 4
  %tobool67 = icmp ne i32 %135, 0
  br i1 %tobool67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %while.body
  %136 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd69 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %136, i32 0, i32 7
  %137 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd69, align 8
  %138 = load i8*, i8** %r, align 8
  %139 = load i8*, i8** %r, align 8
  %call70 = call double %137(i8* %138, i8* %139)
  store double %call70, double* %i_prod, align 8
  br label %if.end.72

if.else.71:                                       ; preds = %while.body
  %140 = load double, double* %gamma, align 8
  store double %140, double* %i_prod, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.68
  %141 = load i32, i32* %logging, align 4
  %cmp73 = icmp sgt i32 %141, 0
  br i1 %cmp73, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %if.end.72
  %142 = load double, double* %i_prod, align 8
  %call75 = call double @sqrt(double %142) #4
  %143 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %143 to i64
  %144 = load double*, double** %norms, align 8
  %arrayidx77 = getelementptr inbounds double, double* %144, i64 %idxprom76
  store double %call75, double* %arrayidx77, align 8
  %145 = load double, double* %bi_prod, align 8
  %tobool78 = fcmp une double %145, 0.000000e+00
  br i1 %tobool78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.74
  %146 = load double, double* %i_prod, align 8
  %147 = load double, double* %bi_prod, align 8
  %div79 = fdiv double %146, %147
  %call80 = call double @sqrt(double %div79) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call80, %cond.true ], [ 0.000000e+00, %cond.false ]
  %148 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %148 to i64
  %149 = load double*, double** %rel_norms, align 8
  %arrayidx82 = getelementptr inbounds double, double* %149, i64 %idxprom81
  store double %cond, double* %arrayidx82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %cond.end, %if.end.72
  %150 = load double, double* %i_prod, align 8
  %151 = load double, double* %bi_prod, align 8
  %div84 = fdiv double %150, %151
  %152 = load double, double* %eps, align 8
  %cmp85 = fcmp olt double %div84, %152
  br i1 %cmp85, label %if.then.86, label %if.end.103

if.then.86:                                       ; preds = %if.end.83
  %153 = load i32, i32* %rel_change, align 4
  %tobool87 = icmp ne i32 %153, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.else.101

land.lhs.true.88:                                 ; preds = %if.then.86
  %154 = load double, double* %i_prod, align 8
  %155 = load double, double* %guard_zero_residual, align 8
  %cmp89 = fcmp ogt double %154, %155
  br i1 %cmp89, label %if.then.90, label %if.else.101

if.then.90:                                       ; preds = %land.lhs.true.88
  %156 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd91 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %156, i32 0, i32 7
  %157 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd91, align 8
  %158 = load i8*, i8** %p, align 8
  %159 = load i8*, i8** %p, align 8
  %call92 = call double %157(i8* %158, i8* %159)
  store double %call92, double* %pi_prod, align 8
  %160 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %InnerProd93 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %160, i32 0, i32 7
  %161 = load double (i8*, i8*)*, double (i8*, i8*)** %InnerProd93, align 8
  %162 = load i8*, i8** %x.addr, align 8
  %163 = load i8*, i8** %x.addr, align 8
  %call94 = call double %161(i8* %162, i8* %163)
  store double %call94, double* %xi_prod, align 8
  %164 = load double, double* %alpha, align 8
  %165 = load double, double* %alpha, align 8
  %mul95 = fmul double %164, %165
  %166 = load double, double* %pi_prod, align 8
  %mul96 = fmul double %mul95, %166
  %167 = load double, double* %xi_prod, align 8
  %div97 = fdiv double %mul96, %167
  %168 = load double, double* %eps, align 8
  %cmp98 = fcmp olt double %div97, %168
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.90
  br label %while.end

if.end.100:                                       ; preds = %if.then.90
  br label %if.end.102

if.else.101:                                      ; preds = %land.lhs.true.88, %if.then.86
  br label %while.end

if.end.102:                                       ; preds = %if.end.100
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.83
  %169 = load double, double* %cf_tol, align 8
  %cmp104 = fcmp ogt double %169, 0.000000e+00
  br i1 %cmp104, label %if.then.105, label %if.end.125

if.then.105:                                      ; preds = %if.end.103
  %170 = load double, double* %cf_ave_1, align 8
  store double %170, double* %cf_ave_0, align 8
  %171 = load double, double* %i_prod, align 8
  %172 = load double, double* %i_prod_0, align 8
  %div106 = fdiv double %171, %172
  %173 = load i32, i32* %i, align 4
  %conv = sitofp i32 %173 to double
  %mul107 = fmul double 2.000000e+00, %conv
  %div108 = fdiv double 1.000000e+00, %mul107
  %call109 = call double @pow(double %div106, double %div108) #4
  store double %call109, double* %cf_ave_1, align 8
  %174 = load double, double* %cf_ave_1, align 8
  %175 = load double, double* %cf_ave_0, align 8
  %sub110 = fsub double %174, %175
  %call111 = call double @fabs(double %sub110) #5
  store double %call111, double* %weight, align 8
  %176 = load double, double* %weight, align 8
  %177 = load double, double* %cf_ave_1, align 8
  %178 = load double, double* %cf_ave_0, align 8
  %cmp112 = fcmp olt double %177, %178
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.105
  %179 = load double, double* %cf_ave_0, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.then.105
  %180 = load double, double* %cf_ave_1, align 8
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi double [ %179, %cond.true.114 ], [ %180, %cond.false.115 ]
  %div118 = fdiv double %176, %cond117
  store double %div118, double* %weight, align 8
  %181 = load double, double* %weight, align 8
  %sub119 = fsub double 1.000000e+00, %181
  store double %sub119, double* %weight, align 8
  %182 = load double, double* %weight, align 8
  %183 = load double, double* %cf_ave_1, align 8
  %mul120 = fmul double %182, %183
  %184 = load double, double* %cf_tol, align 8
  %cmp121 = fcmp ogt double %mul120, %184
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %cond.end.116
  br label %while.end

if.end.124:                                       ; preds = %cond.end.116
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.103
  %185 = load double, double* %gamma, align 8
  %186 = load double, double* %gamma_old, align 8
  %div126 = fdiv double %185, %186
  store double %div126, double* %beta, align 8
  %187 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %ScaleVector = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %187, i32 0, i32 10
  %188 = load i32 (double, i8*)*, i32 (double, i8*)** %ScaleVector, align 8
  %189 = load double, double* %beta, align 8
  %190 = load i8*, i8** %p, align 8
  %call127 = call i32 %188(double %189, i8* %190)
  %191 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %Axpy128 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %191, i32 0, i32 11
  %192 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %Axpy128, align 8
  %193 = load i8*, i8** %s, align 8
  %194 = load i8*, i8** %p, align 8
  %call129 = call i32 %192(double 1.000000e+00, i8* %193, i8* %194)
  br label %while.cond

while.end:                                        ; preds = %if.then.123, %if.else.101, %if.then.99, %while.cond
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %num_iterations = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %196, i32 0, i32 13
  store i32 %195, i32* %num_iterations, align 4
  %197 = load i32, i32* %ierr, align 4
  store i32 %197, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.30
  %198 = load i32, i32* %retval
  ret i32 %198
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetTol(i8* %pcg_vdata, double %tol) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %tol.addr = alloca double, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %tol.addr, align 8
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 0
  store double %2, double* %tol1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetConvergenceFactorTol(i8* %pcg_vdata, double %cf_tol) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %cf_tol.addr = alloca double, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store double %cf_tol, double* %cf_tol.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %cf_tol.addr, align 8
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %cf_tol1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 1
  store double %2, double* %cf_tol1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetMaxIter(i8* %pcg_vdata, i32 %max_iter) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %max_iter.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %max_iter.addr, align 4
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 2
  store i32 %2, i32* %max_iter1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetTwoNorm(i8* %pcg_vdata, i32 %two_norm) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %two_norm.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %two_norm, i32* %two_norm.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %two_norm.addr, align 4
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %two_norm1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 3
  store i32 %2, i32* %two_norm1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetRelChange(i8* %pcg_vdata, i32 %rel_change) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %rel_change.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %rel_change, i32* %rel_change.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %rel_change.addr, align 4
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_change1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 4
  store i32 %2, i32* %rel_change1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetStopCrit(i8* %pcg_vdata, i32 %stop_crit) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %stop_crit.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %stop_crit, i32* %stop_crit.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %stop_crit.addr, align 4
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %stop_crit1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 5
  store i32 %2, i32* %stop_crit1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGGetPrecond(i8* %pcg_vdata, %struct.hypre_Solver_struct** %precond_data_ptr) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %precond_data_ptr.addr = alloca %struct.hypre_Solver_struct**, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store %struct.hypre_Solver_struct** %precond_data_ptr, %struct.hypre_Solver_struct*** %precond_data_ptr.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %precond_data = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 11
  %3 = load i8*, i8** %precond_data, align 8
  %4 = bitcast i8* %3 to %struct.hypre_Solver_struct*
  %5 = load %struct.hypre_Solver_struct**, %struct.hypre_Solver_struct*** %precond_data_ptr.addr, align 8
  store %struct.hypre_Solver_struct* %4, %struct.hypre_Solver_struct** %5, align 8
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetPrecond(i8* %pcg_vdata, i32 (...)* %precond, i32 (...)* %precond_setup, i8* %precond_data) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %precond.addr = alloca i32 (...)*, align 8
  %precond_setup.addr = alloca i32 (...)*, align 8
  %precond_data.addr = alloca i8*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 (...)* %precond, i32 (...)** %precond.addr, align 8
  store i32 (...)* %precond_setup, i32 (...)** %precond_setup.addr, align 8
  store i8* %precond_data, i8** %precond_data.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %functions = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 12
  %3 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %functions, align 8
  store %struct.hypre_PCGFunctions* %3, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  store i32 0, i32* %ierr, align 4
  %4 = load i32 (...)*, i32 (...)** %precond.addr, align 8
  %5 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond1 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %5, i32 0, i32 12
  store i32 (...)* %4, i32 (...)** %precond1, align 8
  %6 = load i32 (...)*, i32 (...)** %precond_setup.addr, align 8
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %precond_setup2 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i32 0, i32 13
  store i32 (...)* %6, i32 (...)** %precond_setup2, align 8
  %8 = load i8*, i8** %precond_data.addr, align 8
  %9 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %precond_data3 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %9, i32 0, i32 11
  store i8* %8, i8** %precond_data3, align 8
  %10 = load i32, i32* %ierr, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGSetLogging(i8* %pcg_vdata, i32 %logging) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %logging.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %logging, i32* %logging.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %logging.addr, align 4
  %3 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %3, i32 0, i32 14
  store i32 %2, i32* %logging1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGGetNumIterations(i8* %pcg_vdata, i32* %num_iterations) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %num_iterations.addr = alloca i32*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32* %num_iterations, i32** %num_iterations.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %num_iterations1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 13
  %3 = load i32, i32* %num_iterations1, align 4
  %4 = load i32*, i32** %num_iterations.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %ierr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGPrintLogging(i8* %pcg_vdata, i32 %myid) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %myid.addr = alloca i32, align 4
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %num_iterations = alloca i32, align 4
  %logging = alloca i32, align 4
  %norms = alloca double*, align 8
  %rel_norms = alloca double*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store i32 %myid, i32* %myid.addr, align 4
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %num_iterations1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 13
  %3 = load i32, i32* %num_iterations1, align 4
  store i32 %3, i32* %num_iterations, align 4
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging2 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %4, i32 0, i32 14
  %5 = load i32, i32* %logging2, align 4
  store i32 %5, i32* %logging, align 4
  %6 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %norms3 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %6, i32 0, i32 15
  %7 = load double*, double** %norms3, align 8
  store double* %7, double** %norms, align 8
  %8 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms4 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %8, i32 0, i32 16
  %9 = load double*, double** %rel_norms4, align 8
  store double* %9, double** %rel_norms, align 8
  store i32 0, i32* %ierr, align 4
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %14, double %17)
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load double*, double** %rel_norms, align 8
  %arrayidx9 = getelementptr inbounds double, double* %20, i64 %idxprom8
  %21 = load double, double* %arrayidx9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %18, double %21)
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

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* %pcg_vdata, double* %relative_residual_norm) #0 {
entry:
  %pcg_vdata.addr = alloca i8*, align 8
  %relative_residual_norm.addr = alloca double*, align 8
  %pcg_data = alloca %struct.hypre_PCGData*, align 8
  %num_iterations = alloca i32, align 4
  %logging = alloca i32, align 4
  %rel_norms = alloca double*, align 8
  %ierr = alloca i32, align 4
  store i8* %pcg_vdata, i8** %pcg_vdata.addr, align 8
  store double* %relative_residual_norm, double** %relative_residual_norm.addr, align 8
  %0 = load i8*, i8** %pcg_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %1, %struct.hypre_PCGData** %pcg_data, align 8
  %2 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %num_iterations1 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %2, i32 0, i32 13
  %3 = load i32, i32* %num_iterations1, align 4
  store i32 %3, i32* %num_iterations, align 4
  %4 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %logging2 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %4, i32 0, i32 14
  %5 = load i32, i32* %logging2, align 4
  store i32 %5, i32* %logging, align 4
  %6 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %pcg_data, align 8
  %rel_norms3 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %6, i32 0, i32 16
  %7 = load double*, double** %rel_norms3, align 8
  store double* %7, double** %rel_norms, align 8
  store i32 -1, i32* %ierr, align 4
  %8 = load i32, i32* %logging, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %num_iterations, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %rel_norms, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load double*, double** %relative_residual_norm.addr, align 8
  store double %11, double* %12, align 8
  store i32 0, i32* %ierr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
