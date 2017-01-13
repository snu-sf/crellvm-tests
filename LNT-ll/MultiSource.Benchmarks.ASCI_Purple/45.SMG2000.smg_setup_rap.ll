; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/45.SMG2000.smg_setup_rap.bc'
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

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_SMGCreateRAPOp(%struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructGrid_struct* %coarse_grid) #0 {
entry:
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %coarse_grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %RAP = alloca %struct.hypre_StructMatrix_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store %struct.hypre_StructGrid_struct* %coarse_grid, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil1, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %dim, align 4
  switch i32 %3, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %call = call %struct.hypre_StructMatrix_struct* @hypre_SMG2CreateRAPOp(%struct.hypre_StructMatrix_struct* %4, %struct.hypre_StructMatrix_struct* %5, %struct.hypre_StructMatrix_struct* %6, %struct.hypre_StructGrid_struct* %7)
  store %struct.hypre_StructMatrix_struct* %call, %struct.hypre_StructMatrix_struct** %RAP, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %coarse_grid.addr, align 8
  %call3 = call %struct.hypre_StructMatrix_struct* @hypre_SMG3CreateRAPOp(%struct.hypre_StructMatrix_struct* %8, %struct.hypre_StructMatrix_struct* %9, %struct.hypre_StructMatrix_struct* %10, %struct.hypre_StructGrid_struct* %11)
  store %struct.hypre_StructMatrix_struct* %call3, %struct.hypre_StructMatrix_struct** %RAP, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %RAP, align 8
  ret %struct.hypre_StructMatrix_struct* %12
}

declare %struct.hypre_StructMatrix_struct* @hypre_SMG2CreateRAPOp(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructGrid_struct*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_SMG3CreateRAPOp(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructGrid_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGSetupRAPOp(%struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct* %Ac, i32* %cindex, i32* %cstride) #0 {
entry:
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %PT.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %Ac.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %cstride.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructMatrix_struct* %PT, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  store %struct.hypre_StructMatrix_struct* %Ac, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %cstride, i32** %cstride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil1, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %dim, align 4
  switch i32 %3, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %7 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %8 = load i32*, i32** %cindex.addr, align 8
  %9 = load i32*, i32** %cstride.addr, align 8
  %call = call i32 @hypre_SMG2BuildRAPSym(%struct.hypre_StructMatrix_struct* %4, %struct.hypre_StructMatrix_struct* %5, %struct.hypre_StructMatrix_struct* %6, %struct.hypre_StructMatrix_struct* %7, i32* %8, i32* %9)
  store i32 %call, i32* %ierr, align 4
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %symmetric, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %13 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %15 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %16 = load i32*, i32** %cindex.addr, align 8
  %17 = load i32*, i32** %cstride.addr, align 8
  %call2 = call i32 @hypre_SMG2BuildRAPNoSym(%struct.hypre_StructMatrix_struct* %12, %struct.hypre_StructMatrix_struct* %13, %struct.hypre_StructMatrix_struct* %14, %struct.hypre_StructMatrix_struct* %15, i32* %16, i32* %17)
  %18 = load i32, i32* %ierr, align 4
  %add = add nsw i32 %18, %call2
  store i32 %add, i32* %ierr, align 4
  %19 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %20 = load i32*, i32** %cindex.addr, align 8
  %21 = load i32*, i32** %cstride.addr, align 8
  %call3 = call i32 @hypre_SMG2RAPPeriodicNoSym(%struct.hypre_StructMatrix_struct* %19, i32* %20, i32* %21)
  store i32 %call3, i32* %ierr, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %23 = load i32*, i32** %cindex.addr, align 8
  %24 = load i32*, i32** %cstride.addr, align 8
  %call4 = call i32 @hypre_SMG2RAPPeriodicSym(%struct.hypre_StructMatrix_struct* %22, i32* %23, i32* %24)
  store i32 %call4, i32* %ierr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %25 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %26 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %27 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %28 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %29 = load i32*, i32** %cindex.addr, align 8
  %30 = load i32*, i32** %cstride.addr, align 8
  %call6 = call i32 @hypre_SMG3BuildRAPSym(%struct.hypre_StructMatrix_struct* %25, %struct.hypre_StructMatrix_struct* %26, %struct.hypre_StructMatrix_struct* %27, %struct.hypre_StructMatrix_struct* %28, i32* %29, i32* %30)
  store i32 %call6, i32* %ierr, align 4
  %31 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %symmetric7 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %31, i32 0, i32 10
  %32 = load i32, i32* %symmetric7, align 4
  %tobool8 = icmp ne i32 %32, 0
  br i1 %tobool8, label %if.else.13, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.5
  %33 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %34 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %PT.addr, align 8
  %35 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %36 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %37 = load i32*, i32** %cindex.addr, align 8
  %38 = load i32*, i32** %cstride.addr, align 8
  %call10 = call i32 @hypre_SMG3BuildRAPNoSym(%struct.hypre_StructMatrix_struct* %33, %struct.hypre_StructMatrix_struct* %34, %struct.hypre_StructMatrix_struct* %35, %struct.hypre_StructMatrix_struct* %36, i32* %37, i32* %38)
  %39 = load i32, i32* %ierr, align 4
  %add11 = add nsw i32 %39, %call10
  store i32 %add11, i32* %ierr, align 4
  %40 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %41 = load i32*, i32** %cindex.addr, align 8
  %42 = load i32*, i32** %cstride.addr, align 8
  %call12 = call i32 @hypre_SMG3RAPPeriodicNoSym(%struct.hypre_StructMatrix_struct* %40, i32* %41, i32* %42)
  store i32 %call12, i32* %ierr, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %sw.bb.5
  %43 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %44 = load i32*, i32** %cindex.addr, align 8
  %45 = load i32*, i32** %cstride.addr, align 8
  %call14 = call i32 @hypre_SMG3RAPPeriodicSym(%struct.hypre_StructMatrix_struct* %43, i32* %44, i32* %45)
  store i32 %call14, i32* %ierr, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.15, %if.end
  %46 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %Ac.addr, align 8
  %call16 = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %46)
  %47 = load i32, i32* %ierr, align 4
  ret i32 %47
}

declare i32 @hypre_SMG2BuildRAPSym(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG2BuildRAPNoSym(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG2RAPPeriodicNoSym(%struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG2RAPPeriodicSym(%struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG3BuildRAPSym(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG3BuildRAPNoSym(%struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG3RAPPeriodicNoSym(%struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_SMG3RAPPeriodicSym(%struct.hypre_StructMatrix_struct*, i32*, i32*) #1

declare i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
