; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/20.SMG2000.smg_setup_restrict.bc'
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

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_SMGCreateRestrictOp(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructGrid_struct* %cgrid, i32 %cdir) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cgrid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %cdir.addr = alloca i32, align 4
  %R = alloca %struct.hypre_StructMatrix_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructGrid_struct* %cgrid, %struct.hypre_StructGrid_struct** %cgrid.addr, align 8
  store i32 %cdir, i32* %cdir.addr, align 4
  store %struct.hypre_StructMatrix_struct* null, %struct.hypre_StructMatrix_struct** %R, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R, align 8
  ret %struct.hypre_StructMatrix_struct* %0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetupRestrictOp(%struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructVector_struct* %temp_vec, i32 %cdir, i32* %cindex, i32* %cstride) #0 {
entry:
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %temp_vec.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %cdir.addr = alloca i32, align 4
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructVector_struct* %temp_vec, %struct.hypre_StructVector_struct** %temp_vec.addr, align 8
  store i32 %cdir, i32* %cdir.addr, align 4
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %ierr, align 4
  ret i32 %0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
