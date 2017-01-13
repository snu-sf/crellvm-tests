; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/22.SMG2000.HYPRE_pcg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Solver_struct = type opaque
%struct.hypre_Matrix_struct = type opaque
%struct.hypre_Vector_struct = type opaque

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct* %solver, %struct.hypre_Matrix_struct* %A, %struct.hypre_Vector_struct* %b, %struct.hypre_Vector_struct* %x) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %A.addr = alloca %struct.hypre_Matrix_struct*, align 8
  %b.addr = alloca %struct.hypre_Vector_struct*, align 8
  %x.addr = alloca %struct.hypre_Vector_struct*, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store %struct.hypre_Matrix_struct* %A, %struct.hypre_Matrix_struct** %A.addr, align 8
  store %struct.hypre_Vector_struct* %b, %struct.hypre_Vector_struct** %b.addr, align 8
  store %struct.hypre_Vector_struct* %x, %struct.hypre_Vector_struct** %x.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load %struct.hypre_Matrix_struct*, %struct.hypre_Matrix_struct** %A.addr, align 8
  %3 = bitcast %struct.hypre_Matrix_struct* %2 to i8*
  %4 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %b.addr, align 8
  %5 = bitcast %struct.hypre_Vector_struct* %4 to i8*
  %6 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %x.addr, align 8
  %7 = bitcast %struct.hypre_Vector_struct* %6 to i8*
  %call = call i32 @hypre_PCGSetup(i8* %1, i8* %3, i8* %5, i8* %7)
  ret i32 %call
}

declare i32 @hypre_PCGSetup(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct* %solver, %struct.hypre_Matrix_struct* %A, %struct.hypre_Vector_struct* %b, %struct.hypre_Vector_struct* %x) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %A.addr = alloca %struct.hypre_Matrix_struct*, align 8
  %b.addr = alloca %struct.hypre_Vector_struct*, align 8
  %x.addr = alloca %struct.hypre_Vector_struct*, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store %struct.hypre_Matrix_struct* %A, %struct.hypre_Matrix_struct** %A.addr, align 8
  store %struct.hypre_Vector_struct* %b, %struct.hypre_Vector_struct** %b.addr, align 8
  store %struct.hypre_Vector_struct* %x, %struct.hypre_Vector_struct** %x.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load %struct.hypre_Matrix_struct*, %struct.hypre_Matrix_struct** %A.addr, align 8
  %3 = bitcast %struct.hypre_Matrix_struct* %2 to i8*
  %4 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %b.addr, align 8
  %5 = bitcast %struct.hypre_Vector_struct* %4 to i8*
  %6 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %x.addr, align 8
  %7 = bitcast %struct.hypre_Vector_struct* %6 to i8*
  %call = call i32 @hypre_PCGSolve(i8* %1, i8* %3, i8* %5, i8* %7)
  ret i32 %call
}

declare i32 @hypre_PCGSolve(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct* %solver, double %tol) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %tol.addr = alloca double, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load double, double* %tol.addr, align 8
  %call = call i32 @hypre_PCGSetTol(i8* %1, double %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetTol(i8*, double) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct* %solver, i32 %max_iter) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %max_iter.addr = alloca i32, align 4
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32, i32* %max_iter.addr, align 4
  %call = call i32 @hypre_PCGSetMaxIter(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetMaxIter(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetStopCrit(%struct.hypre_Solver_struct* %solver, i32 %stop_crit) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %stop_crit.addr = alloca i32, align 4
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 %stop_crit, i32* %stop_crit.addr, align 4
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32, i32* %stop_crit.addr, align 4
  %call = call i32 @hypre_PCGSetStopCrit(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetStopCrit(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct* %solver, i32 %two_norm) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %two_norm.addr = alloca i32, align 4
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 %two_norm, i32* %two_norm.addr, align 4
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32, i32* %two_norm.addr, align 4
  %call = call i32 @hypre_PCGSetTwoNorm(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetTwoNorm(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct* %solver, i32 %rel_change) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %rel_change.addr = alloca i32, align 4
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 %rel_change, i32* %rel_change.addr, align 4
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32, i32* %rel_change.addr, align 4
  %call = call i32 @hypre_PCGSetRelChange(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetRelChange(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct* %solver, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %precond, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %precond_setup, %struct.hypre_Solver_struct* %precond_solver) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %precond.addr = alloca i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, align 8
  %precond_setup.addr = alloca i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, align 8
  %precond_solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %precond, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %precond.addr, align 8
  store i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %precond_setup, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %precond_setup.addr, align 8
  store %struct.hypre_Solver_struct* %precond_solver, %struct.hypre_Solver_struct** %precond_solver.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %precond.addr, align 8
  %3 = bitcast i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %2 to i32 (...)*
  %4 = load i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %precond_setup.addr, align 8
  %5 = bitcast i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %4 to i32 (...)*
  %6 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %precond_solver.addr, align 8
  %7 = bitcast %struct.hypre_Solver_struct* %6 to i8*
  %call = call i32 @hypre_PCGSetPrecond(i8* %1, i32 (...)* %3, i32 (...)* %5, i8* %7)
  ret i32 %call
}

declare i32 @hypre_PCGSetPrecond(i8*, i32 (...)*, i32 (...)*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGGetPrecond(%struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %precond_data_ptr) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %precond_data_ptr.addr = alloca %struct.hypre_Solver_struct**, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store %struct.hypre_Solver_struct** %precond_data_ptr, %struct.hypre_Solver_struct*** %precond_data_ptr.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load %struct.hypre_Solver_struct**, %struct.hypre_Solver_struct*** %precond_data_ptr.addr, align 8
  %call = call i32 @hypre_PCGGetPrecond(i8* %1, %struct.hypre_Solver_struct** %2)
  ret i32 %call
}

declare i32 @hypre_PCGGetPrecond(i8*, %struct.hypre_Solver_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct* %solver, i32 %logging) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %logging.addr = alloca i32, align 4
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32 %logging, i32* %logging.addr, align 4
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32, i32* %logging.addr, align 4
  %call = call i32 @hypre_PCGSetLogging(i8* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_PCGSetLogging(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct* %solver, i32* %num_iterations) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %num_iterations.addr = alloca i32*, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store i32* %num_iterations, i32** %num_iterations.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load i32*, i32** %num_iterations.addr, align 8
  %call = call i32 @hypre_PCGGetNumIterations(i8* %1, i32* %2)
  ret i32 %call
}

declare i32 @hypre_PCGGetNumIterations(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct* %solver, double* %norm) #0 {
entry:
  %solver.addr = alloca %struct.hypre_Solver_struct*, align 8
  %norm.addr = alloca double*, align 8
  store %struct.hypre_Solver_struct* %solver, %struct.hypre_Solver_struct** %solver.addr, align 8
  store double* %norm, double** %norm.addr, align 8
  %0 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %solver.addr, align 8
  %1 = bitcast %struct.hypre_Solver_struct* %0 to i8*
  %2 = load double*, double** %norm.addr, align 8
  %call = call i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* %1, double* %2)
  ret i32 %call
}

declare i32 @hypre_PCGGetFinalRelativeResidualNorm(i8*, double*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
