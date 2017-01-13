; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/43.SMG2000.HYPRE_struct_smg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructSolver_struct = type opaque
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

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGCreate(i32 %comm, %struct.hypre_StructSolver_struct** %solver) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %solver.addr = alloca %struct.hypre_StructSolver_struct**, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_StructSolver_struct** %solver, %struct.hypre_StructSolver_struct*** %solver.addr, align 8
  %0 = load i32, i32* %comm.addr, align 4
  %call = call i8* @hypre_SMGCreate(i32 %0)
  %1 = bitcast i8* %call to %struct.hypre_StructSolver_struct*
  %2 = load %struct.hypre_StructSolver_struct**, %struct.hypre_StructSolver_struct*** %solver.addr, align 8
  store %struct.hypre_StructSolver_struct* %1, %struct.hypre_StructSolver_struct** %2, align 8
  ret i32 0
}

declare i8* @hypre_SMGCreate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGDestroy(%struct.hypre_StructSolver_struct* %solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %call = call i32 @hypre_SMGDestroy(i8* %1)
  ret i32 %call
}

declare i32 @hypre_SMGDestroy(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetup(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
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
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call = call i32 @hypre_SMGSetup(i8* %1, %struct.hypre_StructMatrix_struct* %2, %struct.hypre_StructVector_struct* %3, %struct.hypre_StructVector_struct* %4)
  ret i32 %call
}

declare i32 @hypre_SMGSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSolve(%struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
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
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call = call i32 @hypre_SMGSolve(i8* %1, %struct.hypre_StructMatrix_struct* %2, %struct.hypre_StructVector_struct* %3, %struct.hypre_StructVector_struct* %4)
  ret i32 %call
}

declare i32 @hypre_SMGSolve(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetMemoryUse(%struct.hypre_StructSolver_struct* %solver, i32 %memory_use) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %memory_use.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %memory_use, i32* %memory_use.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %memory_use.addr, align 4
  %call = call i32 @hypre_SMGSetMemoryUse(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetMemoryUse(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetTol(%struct.hypre_StructSolver_struct* %solver, double %tol) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %tol.addr = alloca double, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load double, double* %tol.addr, align 8
  %call = call i32 @hypre_SMGSetTol(i8* %1, double %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetTol(i8*, double) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetMaxIter(%struct.hypre_StructSolver_struct* %solver, i32 %max_iter) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %max_iter.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %max_iter.addr, align 4
  %call = call i32 @hypre_SMGSetMaxIter(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetMaxIter(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetRelChange(%struct.hypre_StructSolver_struct* %solver, i32 %rel_change) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %rel_change.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %rel_change, i32* %rel_change.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %rel_change.addr, align 4
  %call = call i32 @hypre_SMGSetRelChange(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetRelChange(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetZeroGuess(%struct.hypre_StructSolver_struct* %solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %call = call i32 @hypre_SMGSetZeroGuess(i8* %1, i32 1)
  ret i32 %call
}

declare i32 @hypre_SMGSetZeroGuess(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetNonZeroGuess(%struct.hypre_StructSolver_struct* %solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %call = call i32 @hypre_SMGSetZeroGuess(i8* %1, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetNumPreRelax(%struct.hypre_StructSolver_struct* %solver, i32 %num_pre_relax) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %num_pre_relax.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %num_pre_relax, i32* %num_pre_relax.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %num_pre_relax.addr, align 4
  %call = call i32 @hypre_SMGSetNumPreRelax(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetNumPreRelax(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetNumPostRelax(%struct.hypre_StructSolver_struct* %solver, i32 %num_post_relax) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %num_post_relax.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %num_post_relax, i32* %num_post_relax.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %num_post_relax.addr, align 4
  %call = call i32 @hypre_SMGSetNumPostRelax(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetNumPostRelax(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGSetLogging(%struct.hypre_StructSolver_struct* %solver, i32 %logging) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %logging.addr = alloca i32, align 4
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32 %logging, i32* %logging.addr, align 4
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32, i32* %logging.addr, align 4
  %call = call i32 @hypre_SMGSetLogging(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_SMGSetLogging(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGGetNumIterations(%struct.hypre_StructSolver_struct* %solver, i32* %num_iterations) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %num_iterations.addr = alloca i32*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store i32* %num_iterations, i32** %num_iterations.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load i32*, i32** %num_iterations.addr, align 8
  %call = call i32 @hypre_SMGGetNumIterations(i8* %1, i32* %2)
  ret i32 %call
}

declare i32 @hypre_SMGGetNumIterations(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructSMGGetFinalRelativeResidualNorm(%struct.hypre_StructSolver_struct* %solver, double* %norm) #0 {
entry:
  %solver.addr = alloca %struct.hypre_StructSolver_struct*, align 8
  %norm.addr = alloca double*, align 8
  store %struct.hypre_StructSolver_struct* %solver, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  store double* %norm, double** %norm.addr, align 8
  %0 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_StructSolver_struct* %0 to i8*
  %2 = load double*, double** %norm.addr, align 8
  %call = call i32 @hypre_SMGGetFinalRelativeResidualNorm(i8* %1, double* %2)
  ret i32 %call
}

declare i32 @hypre_SMGGetFinalRelativeResidualNorm(i8*, double*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
