; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/51.SMG2000.pcg_struct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
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

; Function Attrs: nounwind uwtable
define i8* @hypre_StructKrylovCAlloc(i32 %count, i32 %elt_size) #0 {
entry:
  %count.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 %0, i32 %1)
  ret i8* %call
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovFree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %ierr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @hypre_Free(i8* %0)
  %1 = load i32, i32* %ierr, align 4
  ret i32 %1
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @hypre_StructKrylovCreateVector(i8* %vvector) #0 {
entry:
  %vvector.addr = alloca i8*, align 8
  %vector = alloca %struct.hypre_StructVector_struct*, align 8
  %new_vector = alloca %struct.hypre_StructVector_struct*, align 8
  store i8* %vvector, i8** %vvector.addr, align 8
  %0 = load i8*, i8** %vvector.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  store %struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct** %vector, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %comm, align 4
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %4, i32 0, i32 1
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %3, %struct.hypre_StructGrid_struct* %5)
  store %struct.hypre_StructVector_struct* %call, %struct.hypre_StructVector_struct** %new_vector, align 8
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %new_vector, align 8
  %call1 = call i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct* %6)
  %7 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %new_vector, align 8
  %call2 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %7)
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %new_vector, align 8
  %9 = bitcast %struct.hypre_StructVector_struct* %8 to i8*
  ret i8* %9
}

declare %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i8* @hypre_StructKrylovCreateVectorArray(i32 %n, i8* %vvector) #0 {
entry:
  %n.addr = alloca i32, align 4
  %vvector.addr = alloca i8*, align 8
  %vector = alloca %struct.hypre_StructVector_struct*, align 8
  %new_vector = alloca %struct.hypre_StructVector_struct**, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %vvector, i8** %vvector.addr, align 8
  %0 = load i8*, i8** %vvector.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  store %struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct** %vector, align 8
  %2 = load i32, i32* %n.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 %2, i32 8)
  %3 = bitcast i8* %call to %struct.hypre_StructVector_struct**
  store %struct.hypre_StructVector_struct** %3, %struct.hypre_StructVector_struct*** %new_vector, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %comm, align 4
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %8, i32 0, i32 1
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %new_vector, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %11, i64 %idxprom
  %call1 = call i32 @HYPRE_StructVectorCreate(i32 %7, %struct.hypre_StructGrid_struct* %9, %struct.hypre_StructVector_struct** %arrayidx)
  %12 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %new_vector, align 8
  %arrayidx3 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %13, i64 %idxprom2
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx3, align 8
  %call4 = call i32 @HYPRE_StructVectorInitialize(%struct.hypre_StructVector_struct* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %new_vector, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %16, i64 %idxprom5
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %arrayidx6, align 8
  %call7 = call i32 @HYPRE_StructVectorAssemble(%struct.hypre_StructVector_struct* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.hypre_StructVector_struct**, %struct.hypre_StructVector_struct*** %new_vector, align 8
  %20 = bitcast %struct.hypre_StructVector_struct** %19 to i8*
  ret i8* %20
}

declare i32 @HYPRE_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructVector_struct**) #1

declare i32 @HYPRE_StructVectorInitialize(%struct.hypre_StructVector_struct*) #1

declare i32 @HYPRE_StructVectorAssemble(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovDestroyVector(i8* %vvector) #0 {
entry:
  %vvector.addr = alloca i8*, align 8
  %vector = alloca %struct.hypre_StructVector_struct*, align 8
  store i8* %vvector, i8** %vvector.addr, align 8
  %0 = load i8*, i8** %vvector.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  store %struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct** %vector, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %vector, align 8
  %call = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %2)
  ret i32 %call
}

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i8* @hypre_StructKrylovMatvecCreate(i8* %A, i8* %x) #0 {
entry:
  %A.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %matvec_data = alloca i8*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %call = call i8* @hypre_StructMatvecCreate()
  store i8* %call, i8** %matvec_data, align 8
  %0 = load i8*, i8** %matvec_data, align 8
  %1 = load i8*, i8** %A.addr, align 8
  %2 = bitcast i8* %1 to %struct.hypre_StructMatrix_struct*
  %3 = load i8*, i8** %x.addr, align 8
  %4 = bitcast i8* %3 to %struct.hypre_StructVector_struct*
  %call1 = call i32 @hypre_StructMatvecSetup(i8* %0, %struct.hypre_StructMatrix_struct* %2, %struct.hypre_StructVector_struct* %4)
  %5 = load i8*, i8** %matvec_data, align 8
  ret i8* %5
}

declare i8* @hypre_StructMatvecCreate() #1

declare i32 @hypre_StructMatvecSetup(i8*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovMatvec(i8* %matvec_data, double %alpha, i8* %A, i8* %x, double %beta, i8* %y) #0 {
entry:
  %matvec_data.addr = alloca i8*, align 8
  %alpha.addr = alloca double, align 8
  %A.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca i8*, align 8
  store i8* %matvec_data, i8** %matvec_data.addr, align 8
  store double %alpha, double* %alpha.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %matvec_data.addr, align 8
  %1 = load double, double* %alpha.addr, align 8
  %2 = load i8*, i8** %A.addr, align 8
  %3 = bitcast i8* %2 to %struct.hypre_StructMatrix_struct*
  %4 = load i8*, i8** %x.addr, align 8
  %5 = bitcast i8* %4 to %struct.hypre_StructVector_struct*
  %6 = load double, double* %beta.addr, align 8
  %7 = load i8*, i8** %y.addr, align 8
  %8 = bitcast i8* %7 to %struct.hypre_StructVector_struct*
  %call = call i32 @hypre_StructMatvecCompute(i8* %0, double %1, %struct.hypre_StructMatrix_struct* %3, %struct.hypre_StructVector_struct* %5, double %6, %struct.hypre_StructVector_struct* %8)
  ret i32 %call
}

declare i32 @hypre_StructMatvecCompute(i8*, double, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, double, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovMatvecDestroy(i8* %matvec_data) #0 {
entry:
  %matvec_data.addr = alloca i8*, align 8
  store i8* %matvec_data, i8** %matvec_data.addr, align 8
  %0 = load i8*, i8** %matvec_data.addr, align 8
  %call = call i32 @hypre_StructMatvecDestroy(i8* %0)
  ret i32 %call
}

declare i32 @hypre_StructMatvecDestroy(i8*) #1

; Function Attrs: nounwind uwtable
define double @hypre_StructKrylovInnerProd(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  %2 = load i8*, i8** %y.addr, align 8
  %3 = bitcast i8* %2 to %struct.hypre_StructVector_struct*
  %call = call double @hypre_StructInnerProd(%struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct* %3)
  ret double %call
}

declare double @hypre_StructInnerProd(%struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovCopyVector(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  %2 = load i8*, i8** %y.addr, align 8
  %3 = bitcast i8* %2 to %struct.hypre_StructVector_struct*
  %call = call i32 @hypre_StructCopy(%struct.hypre_StructVector_struct* %1, %struct.hypre_StructVector_struct* %3)
  ret i32 %call
}

declare i32 @hypre_StructCopy(%struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovClearVector(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructVector_struct*
  %call = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %1, double 0.000000e+00)
  ret i32 %call
}

declare i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct*, double) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovScaleVector(double %alpha, i8* %x) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %x.addr = alloca i8*, align 8
  store double %alpha, double* %alpha.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load double, double* %alpha.addr, align 8
  %1 = load i8*, i8** %x.addr, align 8
  %2 = bitcast i8* %1 to %struct.hypre_StructVector_struct*
  %call = call i32 @hypre_StructScale(double %0, %struct.hypre_StructVector_struct* %2)
  ret i32 %call
}

declare i32 @hypre_StructScale(double, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovAxpy(double %alpha, i8* %x, i8* %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store double %alpha, double* %alpha.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load double, double* %alpha.addr, align 8
  %1 = load i8*, i8** %x.addr, align 8
  %2 = bitcast i8* %1 to %struct.hypre_StructVector_struct*
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct.hypre_StructVector_struct*
  %call = call i32 @hypre_StructAxpy(double %0, %struct.hypre_StructVector_struct* %2, %struct.hypre_StructVector_struct* %4)
  ret i32 %call
}

declare i32 @hypre_StructAxpy(double, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovIdentitySetup(i8* %vdata, i8* %A, i8* %b, i8* %x) #0 {
entry:
  %vdata.addr = alloca i8*, align 8
  %A.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  store i8* %vdata, i8** %vdata.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovIdentity(i8* %vdata, i8* %A, i8* %b, i8* %x) #0 {
entry:
  %vdata.addr = alloca i8*, align 8
  %A.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  store i8* %vdata, i8** %vdata.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i8*, i8** %x.addr, align 8
  %call = call i32 @hypre_StructKrylovCopyVector(i8* %0, i8* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructKrylovCommInfo(i8* %A, i32* %my_id, i32* %num_procs) #0 {
entry:
  %A.addr = alloca i8*, align 8
  %my_id.addr = alloca i32*, align 8
  %num_procs.addr = alloca i32*, align 8
  %comm = alloca i32, align 4
  store i8* %A, i8** %A.addr, align 8
  store i32* %my_id, i32** %my_id.addr, align 8
  store i32* %num_procs, i32** %num_procs.addr, align 8
  %0 = load i8*, i8** %A.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructMatrix_struct*
  %comm1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %comm1, align 4
  store i32 %2, i32* %comm, align 4
  %3 = load i32, i32* %comm, align 4
  %4 = load i32*, i32** %num_procs.addr, align 8
  %call = call i32 @hypre_MPI_Comm_size(i32 %3, i32* %4)
  %5 = load i32, i32* %comm, align 4
  %6 = load i32*, i32** %my_id.addr, align 8
  %call2 = call i32 @hypre_MPI_Comm_rank(i32 %5, i32* %6)
  ret i32 0
}

declare i32 @hypre_MPI_Comm_size(i32, i32*) #1

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
