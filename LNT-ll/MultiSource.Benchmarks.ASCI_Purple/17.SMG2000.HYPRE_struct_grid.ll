; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/17.SMG2000.HYPRE_struct_grid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructGridCreate(i32 %comm, i32 %dim, %struct.hypre_StructGrid_struct** %grid) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %grid.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  %ierr = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  store %struct.hypre_StructGrid_struct** %grid, %struct.hypre_StructGrid_struct*** %grid.addr, align 8
  %0 = load i32, i32* %comm.addr, align 4
  %1 = load i32, i32* %dim.addr, align 4
  %2 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid.addr, align 8
  %call = call i32 @hypre_StructGridCreate(i32 %0, i32 %1, %struct.hypre_StructGrid_struct** %2)
  store i32 %call, i32* %ierr, align 4
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

declare i32 @hypre_StructGridCreate(i32, i32, %struct.hypre_StructGrid_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructGridDestroy(%struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %call = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructGridSetExtents(%struct.hypre_StructGrid_struct* %grid, i32* %ilower, i32* %iupper) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %ilower.addr = alloca i32*, align 8
  %iupper.addr = alloca i32*, align 8
  %new_ilower = alloca [3 x i32], align 4
  %new_iupper = alloca [3 x i32], align 4
  %d = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32* %ilower, i32** %ilower.addr, align 8
  store i32* %iupper, i32** %iupper.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %d, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %ilower.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx6, align 4
  %6 = load i32, i32* %d, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 %idxprom7
  store i32 %5, i32* %arrayidx8, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load i32*, i32** %iupper.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %10 = load i32, i32* %d, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 %idxprom11
  store i32 %9, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %d, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i32 0
  %call = call i32 @hypre_StructGridSetExtents(%struct.hypre_StructGrid_struct* %12, i32* %arraydecay, i32* %arraydecay13)
  ret i32 %call
}

declare i32 @hypre_StructGridSetExtents(%struct.hypre_StructGrid_struct*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructGridSetPeriodic(%struct.hypre_StructGrid_struct* %grid, i32* %periodic) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %periodic.addr = alloca i32*, align 8
  %new_periodic = alloca [3 x i32], align 4
  %d = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_periodic, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_periodic, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_periodic, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %d, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %periodic.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_periodic, i32 0, i64 %idxprom4
  store i32 %5, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %d, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_periodic, i32 0, i32 0
  %call = call i32 @hypre_StructGridSetPeriodic(%struct.hypre_StructGrid_struct* %8, i32* %arraydecay)
  ret i32 %call
}

declare i32 @hypre_StructGridSetPeriodic(%struct.hypre_StructGrid_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructGridAssemble(%struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %call = call i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
