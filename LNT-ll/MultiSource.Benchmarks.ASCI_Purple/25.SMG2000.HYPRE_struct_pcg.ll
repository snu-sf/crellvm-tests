; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/25.SMG2000.HYPRE_struct_pcg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructSolver_struct = type opaque
%struct.hypre_PCGFunctions = type { i8* (i32, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*)*, i8* (i8*, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*)*, double (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*)*, i32 (double, i8*)*, i32 (double, i8*, i8*)*, i32 (...)*, i32 (...)* }
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
%struct.hypre_Solver_struct = type opaque
%struct.hypre_Matrix_struct = type opaque
%struct.hypre_Vector_struct = type opaque

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGCreate(i32 %comm, %struct.hypre_StructSolver_struct** %solver) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %solver.addr = alloca %struct.hypre_StructSolver_struct**, align 8
  %pcg_functions = alloca %struct.hypre_PCGFunctions*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_StructSolver_struct** %solver, %struct.hypre_StructSolver_struct*** %solver.addr, align 8
  %call = call %struct.hypre_PCGFunctions* @hypre_PCGFunctionsCreate(i8* (i32, i32)* @hypre_CAlloc, i32 (i8*)* @hypre_StructKrylovFree, i8* (i8*)* @hypre_StructKrylovCreateVector, i32 (i8*)* @hypre_StructKrylovDestroyVector, i8* (i8*, i8*)* @hypre_StructKrylovMatvecCreate, i32 (i8*, double, i8*, i8*, double, i8*)* @hypre_StructKrylovMatvec, i32 (i8*)* @hypre_StructKrylovMatvecDestroy, double (i8*, i8*)* @hypre_StructKrylovInnerProd, i32 (i8*, i8*)* @hypre_StructKrylovCopyVector, i32 (i8*)* @hypre_StructKrylovClearVector, i32 (double, i8*)* @hypre_StructKrylovScaleVector, i32 (double, i8*, i8*)* @hypre_StructKrylovAxpy, i32 (i8*, i8*, i8*, i8*)* @hypre_StructKrylovIdentitySetup, i32 (i8*, i8*, i8*, i8*)* @hypre_StructKrylovIdentity)
  store %struct.hypre_PCGFunctions* %call, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %0 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %pcg_functions, align 8
  %call1 = call i8* @hypre_PCGCreate(%struct.hypre_PCGFunctions* %0)
  %1 = bitcast i8* %call1 to %struct.hypre_StructSolver_struct*
  %2 = load %struct.hypre_StructSolver_struct**, %struct.hypre_StructSolver_struct*** %solver.addr, align 8
  store %struct.hypre_StructSolver_struct* %1, %struct.hypre_StructSolver_struct** %2, align 8
  ret i32 0
}

declare %struct.hypre_PCGFunctions* @hypre_PCGFunctionsCreate(i8* (i32, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*)*, i8* (i8*, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*)*, double (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*)*, i32 (double, i8*)*, i32 (double, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)*) #1

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_StructKrylovFree(i8*) #1

declare i8* @hypre_StructKrylovCreateVector(i8*) #1

declare i32 @hypre_StructKrylovDestroyVector(i8*) #1

declare i8* @hypre_StructKrylovMatvecCreate(i8*, i8*) #1

declare i32 @hypre_StructKrylovMatvec(i8*, double, i8*, i8*, double, i8*) #1

declare i32 @hypre_StructKrylovMatvecDestroy(i8*) #1

declare double @hypre_StructKrylovInnerProd(i8*, i8*) #1

declare i32 @hypre_StructKrylovCopyVector(i8*, i8*) #1

declare i32 @hypre_StructKrylovClearVector(i8*) #1

declare i32 @hypre_StructKrylovScaleVector(double, i8*) #1

declare i32 @hypre_StructKrylovAxpy(double, i8*, i8*) #1

declare i32 @hypre_StructKrylovIdentitySetup(i8*, i8*, i8*, i8*) #1

declare i32 @hypre_StructKrylovIdentity(i8*, i8*, i8*, i8*) #1

declare i8* @hypre_PCGCreate(%struct.hypre_PCGFunctions*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGDestroy(%struct.hypre_StructSolver_struct* %solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %call = call i32 @hypre_PCGDestroy(i8* %1)
  ret i32 %call
}

declare i32 @hypre_PCGDestroy(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetup(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %3 = bitcast %struct.hypre_StructMatrix_struct* %2 to %struct.hypre_Matrix_struct*
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %5 = bitcast %struct.hypre_StructVector_struct* %4 to %struct.hypre_Vector_struct*
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %7 = bitcast %struct.hypre_StructVector_struct* %6 to %struct.hypre_Vector_struct*
  %call = call i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct* %1, %struct.hypre_Matrix_struct* %3, %struct.hypre_Vector_struct* %5, %struct.hypre_Vector_struct* %7)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSolve(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %3 = bitcast %struct.hypre_StructMatrix_struct* %2 to %struct.hypre_Matrix_struct*
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %5 = bitcast %struct.hypre_StructVector_struct* %4 to %struct.hypre_Vector_struct*
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %7 = bitcast %struct.hypre_StructVector_struct* %6 to %struct.hypre_Vector_struct*
  %call = call i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct* %1, %struct.hypre_Matrix_struct* %3, %struct.hypre_Vector_struct* %5, %struct.hypre_Vector_struct* %7)
  ret i32 %call
}

declare i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetTol(%struct.hypre_StructSolver_struct* %solver, double %tol) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %tol.addr = alloca double, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load double, double* %tol.addr, align 8
  %call = call i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct* %1, double %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct*, double) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetMaxIter(%struct.hypre_StructSolver_struct* %solver, i32 %max_iter) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %max_iter.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32, i32* %max_iter.addr, align 4
  %call = call i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct* %1, i32 %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetTwoNorm(%struct.hypre_StructSolver_struct* %solver, i32 %two_norm) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %two_norm.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %two_norm, i32* %two_norm.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32, i32* %two_norm.addr, align 4
  %call = call i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct* %1, i32 %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetRelChange(%struct.hypre_StructSolver_struct* %solver, i32 %rel_change) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %rel_change.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %rel_change, i32* %rel_change.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32, i32* %rel_change.addr, align 4
  %call = call i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct* %1, i32 %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetPrecond(%struct.hypre_StructSolver_struct* %solver, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %precond, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %precond_setup, %struct.hypre_StructSolver_struct* %precond_solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %precond.addr = alloca i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)*, align 8
  %precond_setup.addr = alloca i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)*, align 8
  %precond_solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %precond, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)** %precond.addr, align 8
  store i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %precond_setup, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)** %precond_setup.addr, align 8
  store %struct.hypre_StructSolver_struct* %precond_solver, %struct.hypre_StructSolver_struct** %precond_solver.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)*, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)** %precond.addr, align 8
  %3 = bitcast i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %2 to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*
  %4 = load i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)*, i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)** %precond_setup.addr, align 8
  %5 = bitcast i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* %4 to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*
  %6 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond_solver.addr, align 8
  %7 = bitcast %struct.hypre_StructSolver_struct* %6 to %struct.hypre_Solver_struct*
  %call = call i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct* %1, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %3, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %5, %struct.hypre_Solver_struct* %7)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, %struct.hypre_Solver_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGSetLogging(%struct.hypre_StructSolver_struct* %solver, i32 %logging) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %logging.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %logging, i32* %logging.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32, i32* %logging.addr, align 4
  %call = call i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct* %1, i32 %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGGetNumIterations(%struct.hypre_StructSolver_struct* %solver, i32* %num_iterations) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %num_iterations.addr = alloca i32*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32* %num_iterations, i32** %num_iterations.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load i32*, i32** %num_iterations.addr, align 8
  %call = call i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct* %1, i32* %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructPCGGetFinalRelativeResidualNorm(%struct.hypre_StructSolver_struct* %solver, double* %norm) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %norm.addr = alloca double*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store double* %norm, double** %norm.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to %struct.hypre_Solver_struct*
  %2 = load double*, double** %norm.addr, align 8
  %call = call i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct* %1, double* %2)
  ret i32 %call
}

declare i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct*, double*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructDiagScaleSetup(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct** %y.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructDiagScale(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %HA, %struct.hypre_StructVector_struct* %Hy, %struct.hypre_StructVector_struct* %Hx) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %HA.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %Hy.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %Hx.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %A = alloca %struct.hypre_StructMatrix_struct*, align 8
  %y = alloca %struct.hypre_StructVector_struct*, align 8
  %x = alloca %struct.hypre_StructVector_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %A_data_box = alloca %struct.hypre_Box_struct*, align 8
  %y_data_box = alloca %struct.hypre_Box_struct*, align 8
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %Ap = alloca double*, align 8
  %yp = alloca double*, align 8
  %xp = alloca double*, align 8
  %Ai = alloca i32, align 4
  %yi = alloca i32, align 4
  %xi = alloca i32, align 4
  %index = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stride = alloca [3 x i32], align 4
  %loop_size = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %ierr = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
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
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store %struct.hypre_StructMatrix_struct* %HA, %struct.hypre_StructMatrix_struct** %HA.addr, align 8
  store %struct.hypre_StructVector_struct* %Hy, %struct.hypre_StructVector_struct** %Hy.addr, align 8
  store %struct.hypre_StructVector_struct* %Hx, %struct.hypre_StructVector_struct** %Hx.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %HA.addr, align 8
  store %struct.hypre_StructMatrix_struct* %0, %struct.hypre_StructMatrix_struct** %A, align 8
  %1 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %Hy.addr, align 8
  store %struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct** %y, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %Hx.addr, align 8
  store %struct.hypre_StructVector_struct* %2, %struct.hypre_StructVector_struct** %x, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %3 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3, i32 0, i32 1
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 2
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes3, align 8
  store %struct.hypre_BoxArray_struct* %5, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.467, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.469

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx5, %struct.hypre_Box_struct** %box, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %13, i32 0, i32 5
  %14 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %14, i32 0, i32 0
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i64 %idxprom6
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %A_data_box, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %data_space10 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 2
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space10, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %18, i32 0, i32 0
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i64 %idxprom9
  store %struct.hypre_Box_struct* %arrayidx12, %struct.hypre_Box_struct** %x_data_box, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y, align 8
  %data_space14 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %21, i32 0, i32 2
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space14, align 8
  %boxes15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes15, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom13
  store %struct.hypre_Box_struct* %arrayidx16, %struct.hypre_Box_struct** %y_data_box, align 8
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 0
  store i32 0, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 1
  store i32 0, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i64 2
  store i32 0, i32* %arrayidx19, align 4
  %24 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %25 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %index, i32 0, i32 0
  %call = call double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct* %24, i32 %25, i32* %arraydecay)
  store double* %call, double** %Ap, align 8
  %26 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %26, i32 0, i32 3
  %27 = load double*, double** %data, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %29, i32 0, i32 6
  %30 = load i32*, i32** %data_indices, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 %idxprom20
  %31 = load i32, i32* %arrayidx21, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds double, double* %27, i64 %idx.ext
  store double* %add.ptr, double** %xp, align 8
  %32 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y, align 8
  %data22 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %32, i32 0, i32 3
  %33 = load double*, double** %data22, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y, align 8
  %data_indices24 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %35, i32 0, i32 6
  %36 = load i32*, i32** %data_indices24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 %idxprom23
  %37 = load i32, i32* %arrayidx25, align 4
  %idx.ext26 = sext i32 %37 to i64
  %add.ptr27 = getelementptr inbounds double, double* %33, i64 %idx.ext26
  store double* %add.ptr27, double** %yp, align 8
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay28, i32** %start, align 8
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay29 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call30 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %39, i32* %arraydecay29)
  %40 = load i32*, i32** %start, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx31, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imin32, i32 0, i64 0
  %43 = load i32, i32* %arrayidx33, align 4
  %sub = sub nsw i32 %41, %43
  %44 = load i32*, i32** %start, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %44, i64 1
  %45 = load i32, i32* %arrayidx34, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imin35, i32 0, i64 1
  %47 = load i32, i32* %arrayidx36, align 4
  %sub37 = sub nsw i32 %45, %47
  %48 = load i32*, i32** %start, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 2
  %49 = load i32, i32* %arrayidx38, align 4
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %imin39, i32 0, i64 2
  %51 = load i32, i32* %arrayidx40, align 4
  %sub41 = sub nsw i32 %49, %51
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %53 = load i32, i32* %arrayidx42, align 4
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imin43, i32 0, i64 1
  %55 = load i32, i32* %arrayidx44, align 4
  %sub45 = sub nsw i32 %53, %55
  %add = add nsw i32 %sub45, 1
  %cmp46 = icmp slt i32 0, %add
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %imax47, i32 0, i64 1
  %57 = load i32, i32* %arrayidx48, align 4
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %imin49, i32 0, i64 1
  %59 = load i32, i32* %arrayidx50, align 4
  %sub51 = sub nsw i32 %57, %59
  %add52 = add nsw i32 %sub51, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add52, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub41, %cond
  %add53 = add nsw i32 %sub37, %mul
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imax54, i32 0, i64 0
  %61 = load i32, i32* %arrayidx55, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imin56, i32 0, i64 0
  %63 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub nsw i32 %61, %63
  %add59 = add nsw i32 %sub58, 1
  %cmp60 = icmp slt i32 0, %add59
  br i1 %cmp60, label %cond.true.61, label %cond.false.68

cond.true.61:                                     ; preds = %cond.end
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imax62, i32 0, i64 0
  %65 = load i32, i32* %arrayidx63, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imin64, i32 0, i64 0
  %67 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub nsw i32 %65, %67
  %add67 = add nsw i32 %sub66, 1
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.61
  %cond70 = phi i32 [ %add67, %cond.true.61 ], [ 0, %cond.false.68 ]
  %mul71 = mul nsw i32 %add53, %cond70
  %add72 = add nsw i32 %sub, %mul71
  store i32 %add72, i32* %hypre__i1start, align 4
  %68 = load i32*, i32** %start, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx73, align 4
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imin74, i32 0, i64 0
  %71 = load i32, i32* %arrayidx75, align 4
  %sub76 = sub nsw i32 %69, %71
  %72 = load i32*, i32** %start, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %72, i64 1
  %73 = load i32, i32* %arrayidx77, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 1
  %75 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %73, %75
  %76 = load i32*, i32** %start, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %76, i64 2
  %77 = load i32, i32* %arrayidx81, align 4
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imin82, i32 0, i64 2
  %79 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %77, %79
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imax85, i32 0, i64 1
  %81 = load i32, i32* %arrayidx86, align 4
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imin87, i32 0, i64 1
  %83 = load i32, i32* %arrayidx88, align 4
  %sub89 = sub nsw i32 %81, %83
  %add90 = add nsw i32 %sub89, 1
  %cmp91 = icmp slt i32 0, %add90
  br i1 %cmp91, label %cond.true.92, label %cond.false.99

cond.true.92:                                     ; preds = %cond.end.69
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imax93, i32 0, i64 1
  %85 = load i32, i32* %arrayidx94, align 4
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %87 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %85, %87
  %add98 = add nsw i32 %sub97, 1
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.69
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.92
  %cond101 = phi i32 [ %add98, %cond.true.92 ], [ 0, %cond.false.99 ]
  %mul102 = mul nsw i32 %sub84, %cond101
  %add103 = add nsw i32 %sub80, %mul102
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imax104, i32 0, i64 0
  %89 = load i32, i32* %arrayidx105, align 4
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %imin106, i32 0, i64 0
  %91 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %89, %91
  %add109 = add nsw i32 %sub108, 1
  %cmp110 = icmp slt i32 0, %add109
  br i1 %cmp110, label %cond.true.111, label %cond.false.118

cond.true.111:                                    ; preds = %cond.end.100
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imax112, i32 0, i64 0
  %93 = load i32, i32* %arrayidx113, align 4
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imin114, i32 0, i64 0
  %95 = load i32, i32* %arrayidx115, align 4
  %sub116 = sub nsw i32 %93, %95
  %add117 = add nsw i32 %sub116, 1
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end.100
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.111
  %cond120 = phi i32 [ %add117, %cond.true.111 ], [ 0, %cond.false.118 ]
  %mul121 = mul nsw i32 %add103, %cond120
  %add122 = add nsw i32 %sub76, %mul121
  store i32 %add122, i32* %hypre__i2start, align 4
  %96 = load i32*, i32** %start, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx123, align 4
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imin124, i32 0, i64 0
  %99 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %97, %99
  %100 = load i32*, i32** %start, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %100, i64 1
  %101 = load i32, i32* %arrayidx127, align 4
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %imin128, i32 0, i64 1
  %103 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %101, %103
  %104 = load i32*, i32** %start, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %104, i64 2
  %105 = load i32, i32* %arrayidx131, align 4
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i64 2
  %107 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub nsw i32 %105, %107
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i64 1
  %109 = load i32, i32* %arrayidx136, align 4
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imin137, i32 0, i64 1
  %111 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %109, %111
  %add140 = add nsw i32 %sub139, 1
  %cmp141 = icmp slt i32 0, %add140
  br i1 %cmp141, label %cond.true.142, label %cond.false.149

cond.true.142:                                    ; preds = %cond.end.119
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imax143, i32 0, i64 1
  %113 = load i32, i32* %arrayidx144, align 4
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imin145, i32 0, i64 1
  %115 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %113, %115
  %add148 = add nsw i32 %sub147, 1
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.end.119
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.142
  %cond151 = phi i32 [ %add148, %cond.true.142 ], [ 0, %cond.false.149 ]
  %mul152 = mul nsw i32 %sub134, %cond151
  %add153 = add nsw i32 %sub130, %mul152
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imax154, i32 0, i64 0
  %117 = load i32, i32* %arrayidx155, align 4
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %118, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin156, i32 0, i64 0
  %119 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %117, %119
  %add159 = add nsw i32 %sub158, 1
  %cmp160 = icmp slt i32 0, %add159
  br i1 %cmp160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %cond.end.150
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 0
  %121 = load i32, i32* %arrayidx163, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 0
  %123 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %121, %123
  %add167 = add nsw i32 %sub166, 1
  br label %cond.end.169

cond.false.168:                                   ; preds = %cond.end.150
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.161
  %cond170 = phi i32 [ %add167, %cond.true.161 ], [ 0, %cond.false.168 ]
  %mul171 = mul nsw i32 %add153, %cond170
  %add172 = add nsw i32 %sub126, %mul171
  store i32 %add172, i32* %hypre__i3start, align 4
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %124 = load i32, i32* %arrayidx173, align 4
  store i32 %124, i32* %hypre__sx1, align 4
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %125 = load i32, i32* %arrayidx174, align 4
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imax175, i32 0, i64 0
  %127 = load i32, i32* %arrayidx176, align 4
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin177, i32 0, i64 0
  %129 = load i32, i32* %arrayidx178, align 4
  %sub179 = sub nsw i32 %127, %129
  %add180 = add nsw i32 %sub179, 1
  %cmp181 = icmp slt i32 0, %add180
  br i1 %cmp181, label %cond.true.182, label %cond.false.189

cond.true.182:                                    ; preds = %cond.end.169
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imax183, i32 0, i64 0
  %131 = load i32, i32* %arrayidx184, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin185 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [3 x i32], [3 x i32]* %imin185, i32 0, i64 0
  %133 = load i32, i32* %arrayidx186, align 4
  %sub187 = sub nsw i32 %131, %133
  %add188 = add nsw i32 %sub187, 1
  br label %cond.end.190

cond.false.189:                                   ; preds = %cond.end.169
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.182
  %cond191 = phi i32 [ %add188, %cond.true.182 ], [ 0, %cond.false.189 ]
  %mul192 = mul nsw i32 %125, %cond191
  store i32 %mul192, i32* %hypre__sy1, align 4
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %134 = load i32, i32* %arrayidx193, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %imax194, i32 0, i64 0
  %136 = load i32, i32* %arrayidx195, align 4
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin196 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %imin196, i32 0, i64 0
  %138 = load i32, i32* %arrayidx197, align 4
  %sub198 = sub nsw i32 %136, %138
  %add199 = add nsw i32 %sub198, 1
  %cmp200 = icmp slt i32 0, %add199
  br i1 %cmp200, label %cond.true.201, label %cond.false.208

cond.true.201:                                    ; preds = %cond.end.190
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax202 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %imax202, i32 0, i64 0
  %140 = load i32, i32* %arrayidx203, align 4
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin204 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %141, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %imin204, i32 0, i64 0
  %142 = load i32, i32* %arrayidx205, align 4
  %sub206 = sub nsw i32 %140, %142
  %add207 = add nsw i32 %sub206, 1
  br label %cond.end.209

cond.false.208:                                   ; preds = %cond.end.190
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.201
  %cond210 = phi i32 [ %add207, %cond.true.201 ], [ 0, %cond.false.208 ]
  %mul211 = mul nsw i32 %134, %cond210
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imax212, i32 0, i64 1
  %144 = load i32, i32* %arrayidx213, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imin214, i32 0, i64 1
  %146 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 %144, %146
  %add217 = add nsw i32 %sub216, 1
  %cmp218 = icmp slt i32 0, %add217
  br i1 %cmp218, label %cond.true.219, label %cond.false.226

cond.true.219:                                    ; preds = %cond.end.209
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imax220, i32 0, i64 1
  %148 = load i32, i32* %arrayidx221, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imin222, i32 0, i64 1
  %150 = load i32, i32* %arrayidx223, align 4
  %sub224 = sub nsw i32 %148, %150
  %add225 = add nsw i32 %sub224, 1
  br label %cond.end.227

cond.false.226:                                   ; preds = %cond.end.209
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.226, %cond.true.219
  %cond228 = phi i32 [ %add225, %cond.true.219 ], [ 0, %cond.false.226 ]
  %mul229 = mul nsw i32 %mul211, %cond228
  store i32 %mul229, i32* %hypre__sz1, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %151 = load i32, i32* %arrayidx230, align 4
  store i32 %151, i32* %hypre__sx2, align 4
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %152 = load i32, i32* %arrayidx231, align 4
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %imax232, i32 0, i64 0
  %154 = load i32, i32* %arrayidx233, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [3 x i32], [3 x i32]* %imin234, i32 0, i64 0
  %156 = load i32, i32* %arrayidx235, align 4
  %sub236 = sub nsw i32 %154, %156
  %add237 = add nsw i32 %sub236, 1
  %cmp238 = icmp slt i32 0, %add237
  br i1 %cmp238, label %cond.true.239, label %cond.false.246

cond.true.239:                                    ; preds = %cond.end.227
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imax240, i32 0, i64 0
  %158 = load i32, i32* %arrayidx241, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin242 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %imin242, i32 0, i64 0
  %160 = load i32, i32* %arrayidx243, align 4
  %sub244 = sub nsw i32 %158, %160
  %add245 = add nsw i32 %sub244, 1
  br label %cond.end.247

cond.false.246:                                   ; preds = %cond.end.227
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.246, %cond.true.239
  %cond248 = phi i32 [ %add245, %cond.true.239 ], [ 0, %cond.false.246 ]
  %mul249 = mul nsw i32 %152, %cond248
  store i32 %mul249, i32* %hypre__sy2, align 4
  %arrayidx250 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %161 = load i32, i32* %arrayidx250, align 4
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %imax251, i32 0, i64 0
  %163 = load i32, i32* %arrayidx252, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin253 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [3 x i32], [3 x i32]* %imin253, i32 0, i64 0
  %165 = load i32, i32* %arrayidx254, align 4
  %sub255 = sub nsw i32 %163, %165
  %add256 = add nsw i32 %sub255, 1
  %cmp257 = icmp slt i32 0, %add256
  br i1 %cmp257, label %cond.true.258, label %cond.false.265

cond.true.258:                                    ; preds = %cond.end.247
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %imax259, i32 0, i64 0
  %167 = load i32, i32* %arrayidx260, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin261 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %imin261, i32 0, i64 0
  %169 = load i32, i32* %arrayidx262, align 4
  %sub263 = sub nsw i32 %167, %169
  %add264 = add nsw i32 %sub263, 1
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.247
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.258
  %cond267 = phi i32 [ %add264, %cond.true.258 ], [ 0, %cond.false.265 ]
  %mul268 = mul nsw i32 %161, %cond267
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imax269, i32 0, i64 1
  %171 = load i32, i32* %arrayidx270, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %imin271, i32 0, i64 1
  %173 = load i32, i32* %arrayidx272, align 4
  %sub273 = sub nsw i32 %171, %173
  %add274 = add nsw i32 %sub273, 1
  %cmp275 = icmp slt i32 0, %add274
  br i1 %cmp275, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %cond.end.266
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imax277, i32 0, i64 1
  %175 = load i32, i32* %arrayidx278, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 1
  %177 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %175, %177
  %add282 = add nsw i32 %sub281, 1
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.266
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.276
  %cond285 = phi i32 [ %add282, %cond.true.276 ], [ 0, %cond.false.283 ]
  %mul286 = mul nsw i32 %mul268, %cond285
  store i32 %mul286, i32* %hypre__sz2, align 4
  %arrayidx287 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  %178 = load i32, i32* %arrayidx287, align 4
  store i32 %178, i32* %hypre__sx3, align 4
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  %179 = load i32, i32* %arrayidx288, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imax289, i32 0, i64 0
  %181 = load i32, i32* %arrayidx290, align 4
  %182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin291 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %182, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [3 x i32], [3 x i32]* %imin291, i32 0, i64 0
  %183 = load i32, i32* %arrayidx292, align 4
  %sub293 = sub nsw i32 %181, %183
  %add294 = add nsw i32 %sub293, 1
  %cmp295 = icmp slt i32 0, %add294
  br i1 %cmp295, label %cond.true.296, label %cond.false.303

cond.true.296:                                    ; preds = %cond.end.284
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %imax297, i32 0, i64 0
  %185 = load i32, i32* %arrayidx298, align 4
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin299 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [3 x i32], [3 x i32]* %imin299, i32 0, i64 0
  %187 = load i32, i32* %arrayidx300, align 4
  %sub301 = sub nsw i32 %185, %187
  %add302 = add nsw i32 %sub301, 1
  br label %cond.end.304

cond.false.303:                                   ; preds = %cond.end.284
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.303, %cond.true.296
  %cond305 = phi i32 [ %add302, %cond.true.296 ], [ 0, %cond.false.303 ]
  %mul306 = mul nsw i32 %179, %cond305
  store i32 %mul306, i32* %hypre__sy3, align 4
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  %188 = load i32, i32* %arrayidx307, align 4
  %189 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %189, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [3 x i32], [3 x i32]* %imax308, i32 0, i64 0
  %190 = load i32, i32* %arrayidx309, align 4
  %191 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin310 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %191, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [3 x i32], [3 x i32]* %imin310, i32 0, i64 0
  %192 = load i32, i32* %arrayidx311, align 4
  %sub312 = sub nsw i32 %190, %192
  %add313 = add nsw i32 %sub312, 1
  %cmp314 = icmp slt i32 0, %add313
  br i1 %cmp314, label %cond.true.315, label %cond.false.322

cond.true.315:                                    ; preds = %cond.end.304
  %193 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax316 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %193, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %imax316, i32 0, i64 0
  %194 = load i32, i32* %arrayidx317, align 4
  %195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin318 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %195, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [3 x i32], [3 x i32]* %imin318, i32 0, i64 0
  %196 = load i32, i32* %arrayidx319, align 4
  %sub320 = sub nsw i32 %194, %196
  %add321 = add nsw i32 %sub320, 1
  br label %cond.end.323

cond.false.322:                                   ; preds = %cond.end.304
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.315
  %cond324 = phi i32 [ %add321, %cond.true.315 ], [ 0, %cond.false.322 ]
  %mul325 = mul nsw i32 %188, %cond324
  %197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %197, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %imax326, i32 0, i64 1
  %198 = load i32, i32* %arrayidx327, align 4
  %199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %199, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [3 x i32], [3 x i32]* %imin328, i32 0, i64 1
  %200 = load i32, i32* %arrayidx329, align 4
  %sub330 = sub nsw i32 %198, %200
  %add331 = add nsw i32 %sub330, 1
  %cmp332 = icmp slt i32 0, %add331
  br i1 %cmp332, label %cond.true.333, label %cond.false.340

cond.true.333:                                    ; preds = %cond.end.323
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax334 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [3 x i32], [3 x i32]* %imax334, i32 0, i64 1
  %202 = load i32, i32* %arrayidx335, align 4
  %203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin336 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %203, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [3 x i32], [3 x i32]* %imin336, i32 0, i64 1
  %204 = load i32, i32* %arrayidx337, align 4
  %sub338 = sub nsw i32 %202, %204
  %add339 = add nsw i32 %sub338, 1
  br label %cond.end.341

cond.false.340:                                   ; preds = %cond.end.323
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.340, %cond.true.333
  %cond342 = phi i32 [ %add339, %cond.true.333 ], [ 0, %cond.false.340 ]
  %mul343 = mul nsw i32 %mul325, %cond342
  store i32 %mul343, i32* %hypre__sz3, align 4
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %205 = load i32, i32* %arrayidx344, align 4
  store i32 %205, i32* %hypre__nx, align 4
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %206 = load i32, i32* %arrayidx345, align 4
  store i32 %206, i32* %hypre__ny, align 4
  %arrayidx346 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %207 = load i32, i32* %arrayidx346, align 4
  store i32 %207, i32* %hypre__nz, align 4
  %208 = load i32, i32* %hypre__nx, align 4
  store i32 %208, i32* %hypre__mx, align 4
  %209 = load i32, i32* %hypre__ny, align 4
  store i32 %209, i32* %hypre__my, align 4
  %210 = load i32, i32* %hypre__nz, align 4
  store i32 %210, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %211 = load i32, i32* %hypre__nx, align 4
  store i32 %211, i32* %hypre__max, align 4
  %212 = load i32, i32* %hypre__ny, align 4
  %213 = load i32, i32* %hypre__max, align 4
  %cmp347 = icmp sgt i32 %212, %213
  br i1 %cmp347, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.341
  store i32 1, i32* %hypre__dir, align 4
  %214 = load i32, i32* %hypre__ny, align 4
  store i32 %214, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.341
  %215 = load i32, i32* %hypre__nz, align 4
  %216 = load i32, i32* %hypre__max, align 4
  %cmp348 = icmp sgt i32 %215, %216
  br i1 %cmp348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %217 = load i32, i32* %hypre__nz, align 4
  store i32 %217, i32* %hypre__max, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %218 = load i32, i32* %hypre__max, align 4
  %219 = load i32, i32* %hypre__num_blocks, align 4
  %cmp351 = icmp slt i32 %218, %219
  br i1 %cmp351, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.350
  %220 = load i32, i32* %hypre__max, align 4
  store i32 %220, i32* %hypre__num_blocks, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.350
  %221 = load i32, i32* %hypre__num_blocks, align 4
  %cmp354 = icmp sgt i32 %221, 0
  br i1 %cmp354, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.end.353
  %222 = load i32, i32* %hypre__max, align 4
  %223 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %222, %223
  store i32 %div, i32* %hypre__div, align 4
  %224 = load i32, i32* %hypre__max, align 4
  %225 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %224, %225
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %if.end.353
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.357

for.cond.357:                                     ; preds = %for.inc.464, %if.end.356
  %226 = load i32, i32* %hypre__block, align 4
  %227 = load i32, i32* %hypre__num_blocks, align 4
  %cmp358 = icmp slt i32 %226, %227
  br i1 %cmp358, label %for.body.359, label %for.end.466

for.body.359:                                     ; preds = %for.cond.357
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %228 = load i32, i32* %hypre__mx, align 4
  store i32 %228, i32* %hypre__nx, align 4
  %229 = load i32, i32* %hypre__my, align 4
  store i32 %229, i32* %hypre__ny, align 4
  %230 = load i32, i32* %hypre__mz, align 4
  store i32 %230, i32* %hypre__nz, align 4
  %231 = load i32, i32* %hypre__num_blocks, align 4
  %cmp360 = icmp sgt i32 %231, 1
  br i1 %cmp360, label %if.then.361, label %if.end.402

if.then.361:                                      ; preds = %for.body.359
  %232 = load i32, i32* %hypre__dir, align 4
  %cmp362 = icmp eq i32 %232, 0
  br i1 %cmp362, label %if.then.363, label %if.else

if.then.363:                                      ; preds = %if.then.361
  %233 = load i32, i32* %hypre__block, align 4
  %234 = load i32, i32* %hypre__div, align 4
  %mul364 = mul nsw i32 %233, %234
  %235 = load i32, i32* %hypre__mod, align 4
  %236 = load i32, i32* %hypre__block, align 4
  %cmp365 = icmp slt i32 %235, %236
  br i1 %cmp365, label %cond.true.366, label %cond.false.367

cond.true.366:                                    ; preds = %if.then.363
  %237 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.368

cond.false.367:                                   ; preds = %if.then.363
  %238 = load i32, i32* %hypre__block, align 4
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.366
  %cond369 = phi i32 [ %237, %cond.true.366 ], [ %238, %cond.false.367 ]
  %add370 = add nsw i32 %mul364, %cond369
  store i32 %add370, i32* %loopi, align 4
  %239 = load i32, i32* %hypre__div, align 4
  %240 = load i32, i32* %hypre__mod, align 4
  %241 = load i32, i32* %hypre__block, align 4
  %cmp371 = icmp sgt i32 %240, %241
  %cond372 = select i1 %cmp371, i32 1, i32 0
  %add373 = add nsw i32 %239, %cond372
  store i32 %add373, i32* %hypre__nx, align 4
  br label %if.end.401

if.else:                                          ; preds = %if.then.361
  %242 = load i32, i32* %hypre__dir, align 4
  %cmp374 = icmp eq i32 %242, 1
  br i1 %cmp374, label %if.then.375, label %if.else.386

if.then.375:                                      ; preds = %if.else
  %243 = load i32, i32* %hypre__block, align 4
  %244 = load i32, i32* %hypre__div, align 4
  %mul376 = mul nsw i32 %243, %244
  %245 = load i32, i32* %hypre__mod, align 4
  %246 = load i32, i32* %hypre__block, align 4
  %cmp377 = icmp slt i32 %245, %246
  br i1 %cmp377, label %cond.true.378, label %cond.false.379

cond.true.378:                                    ; preds = %if.then.375
  %247 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.380

cond.false.379:                                   ; preds = %if.then.375
  %248 = load i32, i32* %hypre__block, align 4
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.379, %cond.true.378
  %cond381 = phi i32 [ %247, %cond.true.378 ], [ %248, %cond.false.379 ]
  %add382 = add nsw i32 %mul376, %cond381
  store i32 %add382, i32* %loopj, align 4
  %249 = load i32, i32* %hypre__div, align 4
  %250 = load i32, i32* %hypre__mod, align 4
  %251 = load i32, i32* %hypre__block, align 4
  %cmp383 = icmp sgt i32 %250, %251
  %cond384 = select i1 %cmp383, i32 1, i32 0
  %add385 = add nsw i32 %249, %cond384
  store i32 %add385, i32* %hypre__ny, align 4
  br label %if.end.400

if.else.386:                                      ; preds = %if.else
  %252 = load i32, i32* %hypre__dir, align 4
  %cmp387 = icmp eq i32 %252, 2
  br i1 %cmp387, label %if.then.388, label %if.end.399

if.then.388:                                      ; preds = %if.else.386
  %253 = load i32, i32* %hypre__block, align 4
  %254 = load i32, i32* %hypre__div, align 4
  %mul389 = mul nsw i32 %253, %254
  %255 = load i32, i32* %hypre__mod, align 4
  %256 = load i32, i32* %hypre__block, align 4
  %cmp390 = icmp slt i32 %255, %256
  br i1 %cmp390, label %cond.true.391, label %cond.false.392

cond.true.391:                                    ; preds = %if.then.388
  %257 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.393

cond.false.392:                                   ; preds = %if.then.388
  %258 = load i32, i32* %hypre__block, align 4
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.392, %cond.true.391
  %cond394 = phi i32 [ %257, %cond.true.391 ], [ %258, %cond.false.392 ]
  %add395 = add nsw i32 %mul389, %cond394
  store i32 %add395, i32* %loopk, align 4
  %259 = load i32, i32* %hypre__div, align 4
  %260 = load i32, i32* %hypre__mod, align 4
  %261 = load i32, i32* %hypre__block, align 4
  %cmp396 = icmp sgt i32 %260, %261
  %cond397 = select i1 %cmp396, i32 1, i32 0
  %add398 = add nsw i32 %259, %cond397
  store i32 %add398, i32* %hypre__nz, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %cond.end.393, %if.else.386
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %cond.end.380
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %cond.end.368
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %for.body.359
  %262 = load i32, i32* %hypre__i1start, align 4
  %263 = load i32, i32* %loopi, align 4
  %264 = load i32, i32* %hypre__sx1, align 4
  %mul403 = mul nsw i32 %263, %264
  %add404 = add nsw i32 %262, %mul403
  %265 = load i32, i32* %loopj, align 4
  %266 = load i32, i32* %hypre__sy1, align 4
  %mul405 = mul nsw i32 %265, %266
  %add406 = add nsw i32 %add404, %mul405
  %267 = load i32, i32* %loopk, align 4
  %268 = load i32, i32* %hypre__sz1, align 4
  %mul407 = mul nsw i32 %267, %268
  %add408 = add nsw i32 %add406, %mul407
  store i32 %add408, i32* %Ai, align 4
  %269 = load i32, i32* %hypre__i2start, align 4
  %270 = load i32, i32* %loopi, align 4
  %271 = load i32, i32* %hypre__sx2, align 4
  %mul409 = mul nsw i32 %270, %271
  %add410 = add nsw i32 %269, %mul409
  %272 = load i32, i32* %loopj, align 4
  %273 = load i32, i32* %hypre__sy2, align 4
  %mul411 = mul nsw i32 %272, %273
  %add412 = add nsw i32 %add410, %mul411
  %274 = load i32, i32* %loopk, align 4
  %275 = load i32, i32* %hypre__sz2, align 4
  %mul413 = mul nsw i32 %274, %275
  %add414 = add nsw i32 %add412, %mul413
  store i32 %add414, i32* %xi, align 4
  %276 = load i32, i32* %hypre__i3start, align 4
  %277 = load i32, i32* %loopi, align 4
  %278 = load i32, i32* %hypre__sx3, align 4
  %mul415 = mul nsw i32 %277, %278
  %add416 = add nsw i32 %276, %mul415
  %279 = load i32, i32* %loopj, align 4
  %280 = load i32, i32* %hypre__sy3, align 4
  %mul417 = mul nsw i32 %279, %280
  %add418 = add nsw i32 %add416, %mul417
  %281 = load i32, i32* %loopk, align 4
  %282 = load i32, i32* %hypre__sz3, align 4
  %mul419 = mul nsw i32 %281, %282
  %add420 = add nsw i32 %add418, %mul419
  store i32 %add420, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.461, %if.end.402
  %283 = load i32, i32* %loopk, align 4
  %284 = load i32, i32* %hypre__nz, align 4
  %cmp422 = icmp slt i32 %283, %284
  br i1 %cmp422, label %for.body.423, label %for.end.463

for.body.423:                                     ; preds = %for.cond.421
  store i32 0, i32* %loopj, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.449, %for.body.423
  %285 = load i32, i32* %loopj, align 4
  %286 = load i32, i32* %hypre__ny, align 4
  %cmp425 = icmp slt i32 %285, %286
  br i1 %cmp425, label %for.body.426, label %for.end.451

for.body.426:                                     ; preds = %for.cond.424
  store i32 0, i32* %loopi, align 4
  br label %for.cond.427

for.cond.427:                                     ; preds = %for.inc, %for.body.426
  %287 = load i32, i32* %loopi, align 4
  %288 = load i32, i32* %hypre__nx, align 4
  %cmp428 = icmp slt i32 %287, %288
  br i1 %cmp428, label %for.body.429, label %for.end

for.body.429:                                     ; preds = %for.cond.427
  %289 = load i32, i32* %yi, align 4
  %idxprom430 = sext i32 %289 to i64
  %290 = load double*, double** %yp, align 8
  %arrayidx431 = getelementptr inbounds double, double* %290, i64 %idxprom430
  %291 = load double, double* %arrayidx431, align 8
  %292 = load i32, i32* %Ai, align 4
  %idxprom432 = sext i32 %292 to i64
  %293 = load double*, double** %Ap, align 8
  %arrayidx433 = getelementptr inbounds double, double* %293, i64 %idxprom432
  %294 = load double, double* %arrayidx433, align 8
  %div434 = fdiv double %291, %294
  %295 = load i32, i32* %xi, align 4
  %idxprom435 = sext i32 %295 to i64
  %296 = load double*, double** %xp, align 8
  %arrayidx436 = getelementptr inbounds double, double* %296, i64 %idxprom435
  store double %div434, double* %arrayidx436, align 8
  %297 = load i32, i32* %hypre__sx1, align 4
  %298 = load i32, i32* %Ai, align 4
  %add437 = add nsw i32 %298, %297
  store i32 %add437, i32* %Ai, align 4
  %299 = load i32, i32* %hypre__sx2, align 4
  %300 = load i32, i32* %xi, align 4
  %add438 = add nsw i32 %300, %299
  store i32 %add438, i32* %xi, align 4
  %301 = load i32, i32* %hypre__sx3, align 4
  %302 = load i32, i32* %yi, align 4
  %add439 = add nsw i32 %302, %301
  store i32 %add439, i32* %yi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.429
  %303 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %303, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.427

for.end:                                          ; preds = %for.cond.427
  %304 = load i32, i32* %hypre__sy1, align 4
  %305 = load i32, i32* %hypre__nx, align 4
  %306 = load i32, i32* %hypre__sx1, align 4
  %mul440 = mul nsw i32 %305, %306
  %sub441 = sub nsw i32 %304, %mul440
  %307 = load i32, i32* %Ai, align 4
  %add442 = add nsw i32 %307, %sub441
  store i32 %add442, i32* %Ai, align 4
  %308 = load i32, i32* %hypre__sy2, align 4
  %309 = load i32, i32* %hypre__nx, align 4
  %310 = load i32, i32* %hypre__sx2, align 4
  %mul443 = mul nsw i32 %309, %310
  %sub444 = sub nsw i32 %308, %mul443
  %311 = load i32, i32* %xi, align 4
  %add445 = add nsw i32 %311, %sub444
  store i32 %add445, i32* %xi, align 4
  %312 = load i32, i32* %hypre__sy3, align 4
  %313 = load i32, i32* %hypre__nx, align 4
  %314 = load i32, i32* %hypre__sx3, align 4
  %mul446 = mul nsw i32 %313, %314
  %sub447 = sub nsw i32 %312, %mul446
  %315 = load i32, i32* %yi, align 4
  %add448 = add nsw i32 %315, %sub447
  store i32 %add448, i32* %yi, align 4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.end
  %316 = load i32, i32* %loopj, align 4
  %inc450 = add nsw i32 %316, 1
  store i32 %inc450, i32* %loopj, align 4
  br label %for.cond.424

for.end.451:                                      ; preds = %for.cond.424
  %317 = load i32, i32* %hypre__sz1, align 4
  %318 = load i32, i32* %hypre__ny, align 4
  %319 = load i32, i32* %hypre__sy1, align 4
  %mul452 = mul nsw i32 %318, %319
  %sub453 = sub nsw i32 %317, %mul452
  %320 = load i32, i32* %Ai, align 4
  %add454 = add nsw i32 %320, %sub453
  store i32 %add454, i32* %Ai, align 4
  %321 = load i32, i32* %hypre__sz2, align 4
  %322 = load i32, i32* %hypre__ny, align 4
  %323 = load i32, i32* %hypre__sy2, align 4
  %mul455 = mul nsw i32 %322, %323
  %sub456 = sub nsw i32 %321, %mul455
  %324 = load i32, i32* %xi, align 4
  %add457 = add nsw i32 %324, %sub456
  store i32 %add457, i32* %xi, align 4
  %325 = load i32, i32* %hypre__sz3, align 4
  %326 = load i32, i32* %hypre__ny, align 4
  %327 = load i32, i32* %hypre__sy3, align 4
  %mul458 = mul nsw i32 %326, %327
  %sub459 = sub nsw i32 %325, %mul458
  %328 = load i32, i32* %yi, align 4
  %add460 = add nsw i32 %328, %sub459
  store i32 %add460, i32* %yi, align 4
  br label %for.inc.461

for.inc.461:                                      ; preds = %for.end.451
  %329 = load i32, i32* %loopk, align 4
  %inc462 = add nsw i32 %329, 1
  store i32 %inc462, i32* %loopk, align 4
  br label %for.cond.421

for.end.463:                                      ; preds = %for.cond.421
  br label %for.inc.464

for.inc.464:                                      ; preds = %for.end.463
  %330 = load i32, i32* %hypre__block, align 4
  %inc465 = add nsw i32 %330, 1
  store i32 %inc465, i32* %hypre__block, align 4
  br label %for.cond.357

for.end.466:                                      ; preds = %for.cond.357
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.end.466
  %331 = load i32, i32* %i, align 4
  %inc468 = add nsw i32 %331, 1
  store i32 %inc468, i32* %i, align 4
  br label %for.cond

for.end.469:                                      ; preds = %for.cond
  %332 = load i32, i32* %ierr, align 4
  ret i32 %332
}

declare double* @hypre_StructMatrixExtractPointerByIndex(%struct.hypre_StructMatrix_struct*, i32, i32*) #1

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
