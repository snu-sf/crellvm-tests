; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/36.SMG2000.smg_axpy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGAxpy(double %alpha, %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct* %y, i32* %base_index, i32* %base_stride) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %base_index.addr = alloca i32*, align 8
  %base_stride.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %y_data_box = alloca %struct.hypre_Box_struct*, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %xp = alloca double*, align 8
  %yp = alloca double*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %i = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
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
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct** %y.addr, align 8
  store i32* %base_index, i32** %base_index.addr, align 8
  store i32* %base_stride, i32** %base_stride.addr, align 8
  store i32 0, i32* %ierr, align 4
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %box, align 8
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.375, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.377

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes2, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4, i32 0, i64 0
  store i32 %9, i32* %arrayidx5, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom6
  %imin9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 1
  %14 = load i32, i32* %arrayidx10, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  store i32 %14, i32* %arrayidx12, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %17, i32 0, i32 0
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i64 %idxprom13
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 2
  %19 = load i32, i32* %arrayidx17, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imin18, i32 0, i64 2
  store i32 %19, i32* %arrayidx19, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes21 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom20
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %24 = load i32, i32* %arrayidx23, align 4
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imax24, i32 0, i64 0
  store i32 %24, i32* %arrayidx25, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes27 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %27, i32 0, i32 0
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i64 %idxprom26
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 1
  %29 = load i32, i32* %arrayidx30, align 4
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 1
  store i32 %29, i32* %arrayidx32, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes34 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %32, i32 0, i32 0
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes34, align 8
  %arrayidx35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i64 %idxprom33
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 2
  %34 = load i32, i32* %arrayidx37, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 2
  store i32 %34, i32* %arrayidx39, align 4
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %37 = load i32*, i32** %base_index.addr, align 8
  %38 = load i32*, i32** %base_stride.addr, align 8
  %call40 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %36, i32* %37, i32* %38)
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin41, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %41, i32 0, i32 2
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes43 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %42, i32 0, i32 0
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes43, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i64 %idxprom42
  store %struct.hypre_Box_struct* %arrayidx44, %struct.hypre_Box_struct** %x_data_box, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %44 to i64
  %45 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space46 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %45, i32 0, i32 2
  %46 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space46, align 8
  %boxes47 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %46, i32 0, i32 0
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes47, align 8
  %arrayidx48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i64 %idxprom45
  store %struct.hypre_Box_struct* %arrayidx48, %struct.hypre_Box_struct** %y_data_box, align 8
  %48 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %48, i32 0, i32 3
  %49 = load double*, double** %data, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %50 to i64
  %51 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %51, i32 0, i32 6
  %52 = load i32*, i32** %data_indices, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %52, i64 %idxprom49
  %53 = load i32, i32* %arrayidx50, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds double, double* %49, i64 %idx.ext
  store double* %add.ptr, double** %xp, align 8
  %54 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data51 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %54, i32 0, i32 3
  %55 = load double*, double** %data51, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %56 to i64
  %57 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices53 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %57, i32 0, i32 6
  %58 = load i32*, i32** %data_indices53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 %idxprom52
  %59 = load i32, i32* %arrayidx54, align 4
  %idx.ext55 = sext i32 %59 to i64
  %add.ptr56 = getelementptr inbounds double, double* %55, i64 %idx.ext55
  store double* %add.ptr56, double** %yp, align 8
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %61 = load i32*, i32** %base_stride.addr, align 8
  %arraydecay57 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call58 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %60, i32* %61, i32* %arraydecay57)
  %62 = load i32*, i32** %start, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx59, align 4
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imin60, i32 0, i64 0
  %65 = load i32, i32* %arrayidx61, align 4
  %sub = sub nsw i32 %63, %65
  %66 = load i32*, i32** %start, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %66, i64 1
  %67 = load i32, i32* %arrayidx62, align 4
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 1
  %69 = load i32, i32* %arrayidx64, align 4
  %sub65 = sub nsw i32 %67, %69
  %70 = load i32*, i32** %start, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %70, i64 2
  %71 = load i32, i32* %arrayidx66, align 4
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 2
  %73 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %71, %73
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imax70, i32 0, i64 1
  %75 = load i32, i32* %arrayidx71, align 4
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imin72, i32 0, i64 1
  %77 = load i32, i32* %arrayidx73, align 4
  %sub74 = sub nsw i32 %75, %77
  %add = add nsw i32 %sub74, 1
  %cmp75 = icmp slt i32 0, %add
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 1
  %79 = load i32, i32* %arrayidx77, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 1
  %81 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %79, %81
  %add81 = add nsw i32 %sub80, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add81, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub69, %cond
  %add82 = add nsw i32 %sub65, %mul
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 0
  %83 = load i32, i32* %arrayidx84, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 0
  %85 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %83, %85
  %add88 = add nsw i32 %sub87, 1
  %cmp89 = icmp slt i32 0, %add88
  br i1 %cmp89, label %cond.true.90, label %cond.false.97

cond.true.90:                                     ; preds = %cond.end
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imax91, i32 0, i64 0
  %87 = load i32, i32* %arrayidx92, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imin93, i32 0, i64 0
  %89 = load i32, i32* %arrayidx94, align 4
  %sub95 = sub nsw i32 %87, %89
  %add96 = add nsw i32 %sub95, 1
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.end
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.90
  %cond99 = phi i32 [ %add96, %cond.true.90 ], [ 0, %cond.false.97 ]
  %mul100 = mul nsw i32 %add82, %cond99
  %add101 = add nsw i32 %sub, %mul100
  store i32 %add101, i32* %hypre__i1start, align 4
  %90 = load i32*, i32** %start, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %90, i64 0
  %91 = load i32, i32* %arrayidx102, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imin103, i32 0, i64 0
  %93 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %91, %93
  %94 = load i32*, i32** %start, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %94, i64 1
  %95 = load i32, i32* %arrayidx106, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imin107, i32 0, i64 1
  %97 = load i32, i32* %arrayidx108, align 4
  %sub109 = sub nsw i32 %95, %97
  %98 = load i32*, i32** %start, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %98, i64 2
  %99 = load i32, i32* %arrayidx110, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imin111, i32 0, i64 2
  %101 = load i32, i32* %arrayidx112, align 4
  %sub113 = sub nsw i32 %99, %101
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imax114, i32 0, i64 1
  %103 = load i32, i32* %arrayidx115, align 4
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imin116, i32 0, i64 1
  %105 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %103, %105
  %add119 = add nsw i32 %sub118, 1
  %cmp120 = icmp slt i32 0, %add119
  br i1 %cmp120, label %cond.true.121, label %cond.false.128

cond.true.121:                                    ; preds = %cond.end.98
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %imax122, i32 0, i64 1
  %107 = load i32, i32* %arrayidx123, align 4
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imin124, i32 0, i64 1
  %109 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %107, %109
  %add127 = add nsw i32 %sub126, 1
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.end.98
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.121
  %cond130 = phi i32 [ %add127, %cond.true.121 ], [ 0, %cond.false.128 ]
  %mul131 = mul nsw i32 %sub113, %cond130
  %add132 = add nsw i32 %sub109, %mul131
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imax133, i32 0, i64 0
  %111 = load i32, i32* %arrayidx134, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imin135, i32 0, i64 0
  %113 = load i32, i32* %arrayidx136, align 4
  %sub137 = sub nsw i32 %111, %113
  %add138 = add nsw i32 %sub137, 1
  %cmp139 = icmp slt i32 0, %add138
  br i1 %cmp139, label %cond.true.140, label %cond.false.147

cond.true.140:                                    ; preds = %cond.end.129
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax141 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %imax141, i32 0, i64 0
  %115 = load i32, i32* %arrayidx142, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imin143, i32 0, i64 0
  %117 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %115, %117
  %add146 = add nsw i32 %sub145, 1
  br label %cond.end.148

cond.false.147:                                   ; preds = %cond.end.129
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.140
  %cond149 = phi i32 [ %add146, %cond.true.140 ], [ 0, %cond.false.147 ]
  %mul150 = mul nsw i32 %add132, %cond149
  %add151 = add nsw i32 %sub105, %mul150
  store i32 %add151, i32* %hypre__i2start, align 4
  %118 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %118, i64 0
  %119 = load i32, i32* %arrayidx152, align 4
  store i32 %119, i32* %hypre__sx1, align 4
  %120 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %120, i64 1
  %121 = load i32, i32* %arrayidx153, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imax154, i32 0, i64 0
  %123 = load i32, i32* %arrayidx155, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin156, i32 0, i64 0
  %125 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %123, %125
  %add159 = add nsw i32 %sub158, 1
  %cmp160 = icmp slt i32 0, %add159
  br i1 %cmp160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %cond.end.148
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 0
  %127 = load i32, i32* %arrayidx163, align 4
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 0
  %129 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %127, %129
  %add167 = add nsw i32 %sub166, 1
  br label %cond.end.169

cond.false.168:                                   ; preds = %cond.end.148
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.161
  %cond170 = phi i32 [ %add167, %cond.true.161 ], [ 0, %cond.false.168 ]
  %mul171 = mul nsw i32 %121, %cond170
  store i32 %mul171, i32* %hypre__sy1, align 4
  %130 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %130, i64 2
  %131 = load i32, i32* %arrayidx172, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax173, i32 0, i64 0
  %133 = load i32, i32* %arrayidx174, align 4
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imin175, i32 0, i64 0
  %135 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %133, %135
  %add178 = add nsw i32 %sub177, 1
  %cmp179 = icmp slt i32 0, %add178
  br i1 %cmp179, label %cond.true.180, label %cond.false.187

cond.true.180:                                    ; preds = %cond.end.169
  %136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %136, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imax181, i32 0, i64 0
  %137 = load i32, i32* %arrayidx182, align 4
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin183, i32 0, i64 0
  %139 = load i32, i32* %arrayidx184, align 4
  %sub185 = sub nsw i32 %137, %139
  %add186 = add nsw i32 %sub185, 1
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.end.169
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.180
  %cond189 = phi i32 [ %add186, %cond.true.180 ], [ 0, %cond.false.187 ]
  %mul190 = mul nsw i32 %131, %cond189
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %imax191, i32 0, i64 1
  %141 = load i32, i32* %arrayidx192, align 4
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %imin193, i32 0, i64 1
  %143 = load i32, i32* %arrayidx194, align 4
  %sub195 = sub nsw i32 %141, %143
  %add196 = add nsw i32 %sub195, 1
  %cmp197 = icmp slt i32 0, %add196
  br i1 %cmp197, label %cond.true.198, label %cond.false.205

cond.true.198:                                    ; preds = %cond.end.188
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 1
  %145 = load i32, i32* %arrayidx200, align 4
  %146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %146, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 1
  %147 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %145, %147
  %add204 = add nsw i32 %sub203, 1
  br label %cond.end.206

cond.false.205:                                   ; preds = %cond.end.188
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.198
  %cond207 = phi i32 [ %add204, %cond.true.198 ], [ 0, %cond.false.205 ]
  %mul208 = mul nsw i32 %mul190, %cond207
  store i32 %mul208, i32* %hypre__sz1, align 4
  %148 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %148, i64 0
  %149 = load i32, i32* %arrayidx209, align 4
  store i32 %149, i32* %hypre__sx2, align 4
  %150 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %150, i64 1
  %151 = load i32, i32* %arrayidx210, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imax211, i32 0, i64 0
  %153 = load i32, i32* %arrayidx212, align 4
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin213 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [3 x i32], [3 x i32]* %imin213, i32 0, i64 0
  %155 = load i32, i32* %arrayidx214, align 4
  %sub215 = sub nsw i32 %153, %155
  %add216 = add nsw i32 %sub215, 1
  %cmp217 = icmp slt i32 0, %add216
  br i1 %cmp217, label %cond.true.218, label %cond.false.225

cond.true.218:                                    ; preds = %cond.end.206
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imax219, i32 0, i64 0
  %157 = load i32, i32* %arrayidx220, align 4
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin221 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %imin221, i32 0, i64 0
  %159 = load i32, i32* %arrayidx222, align 4
  %sub223 = sub nsw i32 %157, %159
  %add224 = add nsw i32 %sub223, 1
  br label %cond.end.226

cond.false.225:                                   ; preds = %cond.end.206
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.218
  %cond227 = phi i32 [ %add224, %cond.true.218 ], [ 0, %cond.false.225 ]
  %mul228 = mul nsw i32 %151, %cond227
  store i32 %mul228, i32* %hypre__sy2, align 4
  %160 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %160, i64 2
  %161 = load i32, i32* %arrayidx229, align 4
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %imax230, i32 0, i64 0
  %163 = load i32, i32* %arrayidx231, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %imin232, i32 0, i64 0
  %165 = load i32, i32* %arrayidx233, align 4
  %sub234 = sub nsw i32 %163, %165
  %add235 = add nsw i32 %sub234, 1
  %cmp236 = icmp slt i32 0, %add235
  br i1 %cmp236, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %cond.end.226
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imax238, i32 0, i64 0
  %167 = load i32, i32* %arrayidx239, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imin240, i32 0, i64 0
  %169 = load i32, i32* %arrayidx241, align 4
  %sub242 = sub nsw i32 %167, %169
  %add243 = add nsw i32 %sub242, 1
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.226
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.237
  %cond246 = phi i32 [ %add243, %cond.true.237 ], [ 0, %cond.false.244 ]
  %mul247 = mul nsw i32 %161, %cond246
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %imax248, i32 0, i64 1
  %171 = load i32, i32* %arrayidx249, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin250 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %imin250, i32 0, i64 1
  %173 = load i32, i32* %arrayidx251, align 4
  %sub252 = sub nsw i32 %171, %173
  %add253 = add nsw i32 %sub252, 1
  %cmp254 = icmp slt i32 0, %add253
  br i1 %cmp254, label %cond.true.255, label %cond.false.262

cond.true.255:                                    ; preds = %cond.end.245
  %174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax256 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %174, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [3 x i32], [3 x i32]* %imax256, i32 0, i64 1
  %175 = load i32, i32* %arrayidx257, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imin258, i32 0, i64 1
  %177 = load i32, i32* %arrayidx259, align 4
  %sub260 = sub nsw i32 %175, %177
  %add261 = add nsw i32 %sub260, 1
  br label %cond.end.263

cond.false.262:                                   ; preds = %cond.end.245
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.255
  %cond264 = phi i32 [ %add261, %cond.true.255 ], [ 0, %cond.false.262 ]
  %mul265 = mul nsw i32 %mul247, %cond264
  store i32 %mul265, i32* %hypre__sz2, align 4
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %178 = load i32, i32* %arrayidx266, align 4
  store i32 %178, i32* %hypre__nx, align 4
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %179 = load i32, i32* %arrayidx267, align 4
  store i32 %179, i32* %hypre__ny, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %180 = load i32, i32* %arrayidx268, align 4
  store i32 %180, i32* %hypre__nz, align 4
  %181 = load i32, i32* %hypre__nx, align 4
  store i32 %181, i32* %hypre__mx, align 4
  %182 = load i32, i32* %hypre__ny, align 4
  store i32 %182, i32* %hypre__my, align 4
  %183 = load i32, i32* %hypre__nz, align 4
  store i32 %183, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %184 = load i32, i32* %hypre__nx, align 4
  store i32 %184, i32* %hypre__max, align 4
  %185 = load i32, i32* %hypre__ny, align 4
  %186 = load i32, i32* %hypre__max, align 4
  %cmp269 = icmp sgt i32 %185, %186
  br i1 %cmp269, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.263
  store i32 1, i32* %hypre__dir, align 4
  %187 = load i32, i32* %hypre__ny, align 4
  store i32 %187, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.263
  %188 = load i32, i32* %hypre__nz, align 4
  %189 = load i32, i32* %hypre__max, align 4
  %cmp270 = icmp sgt i32 %188, %189
  br i1 %cmp270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %190 = load i32, i32* %hypre__nz, align 4
  store i32 %190, i32* %hypre__max, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %191 = load i32, i32* %hypre__max, align 4
  %192 = load i32, i32* %hypre__num_blocks, align 4
  %cmp273 = icmp slt i32 %191, %192
  br i1 %cmp273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.end.272
  %193 = load i32, i32* %hypre__max, align 4
  store i32 %193, i32* %hypre__num_blocks, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.end.272
  %194 = load i32, i32* %hypre__num_blocks, align 4
  %cmp276 = icmp sgt i32 %194, 0
  br i1 %cmp276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.end.275
  %195 = load i32, i32* %hypre__max, align 4
  %196 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %195, %196
  store i32 %div, i32* %hypre__div, align 4
  %197 = load i32, i32* %hypre__max, align 4
  %198 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %197, %198
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.275
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.372, %if.end.278
  %199 = load i32, i32* %hypre__block, align 4
  %200 = load i32, i32* %hypre__num_blocks, align 4
  %cmp280 = icmp slt i32 %199, %200
  br i1 %cmp280, label %for.body.281, label %for.end.374

for.body.281:                                     ; preds = %for.cond.279
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %201 = load i32, i32* %hypre__mx, align 4
  store i32 %201, i32* %hypre__nx, align 4
  %202 = load i32, i32* %hypre__my, align 4
  store i32 %202, i32* %hypre__ny, align 4
  %203 = load i32, i32* %hypre__mz, align 4
  store i32 %203, i32* %hypre__nz, align 4
  %204 = load i32, i32* %hypre__num_blocks, align 4
  %cmp282 = icmp sgt i32 %204, 1
  br i1 %cmp282, label %if.then.283, label %if.end.324

if.then.283:                                      ; preds = %for.body.281
  %205 = load i32, i32* %hypre__dir, align 4
  %cmp284 = icmp eq i32 %205, 0
  br i1 %cmp284, label %if.then.285, label %if.else

if.then.285:                                      ; preds = %if.then.283
  %206 = load i32, i32* %hypre__block, align 4
  %207 = load i32, i32* %hypre__div, align 4
  %mul286 = mul nsw i32 %206, %207
  %208 = load i32, i32* %hypre__mod, align 4
  %209 = load i32, i32* %hypre__block, align 4
  %cmp287 = icmp slt i32 %208, %209
  br i1 %cmp287, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.then.285
  %210 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.then.285
  %211 = load i32, i32* %hypre__block, align 4
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ %210, %cond.true.288 ], [ %211, %cond.false.289 ]
  %add292 = add nsw i32 %mul286, %cond291
  store i32 %add292, i32* %loopi, align 4
  %212 = load i32, i32* %hypre__div, align 4
  %213 = load i32, i32* %hypre__mod, align 4
  %214 = load i32, i32* %hypre__block, align 4
  %cmp293 = icmp sgt i32 %213, %214
  %cond294 = select i1 %cmp293, i32 1, i32 0
  %add295 = add nsw i32 %212, %cond294
  store i32 %add295, i32* %hypre__nx, align 4
  br label %if.end.323

if.else:                                          ; preds = %if.then.283
  %215 = load i32, i32* %hypre__dir, align 4
  %cmp296 = icmp eq i32 %215, 1
  br i1 %cmp296, label %if.then.297, label %if.else.308

if.then.297:                                      ; preds = %if.else
  %216 = load i32, i32* %hypre__block, align 4
  %217 = load i32, i32* %hypre__div, align 4
  %mul298 = mul nsw i32 %216, %217
  %218 = load i32, i32* %hypre__mod, align 4
  %219 = load i32, i32* %hypre__block, align 4
  %cmp299 = icmp slt i32 %218, %219
  br i1 %cmp299, label %cond.true.300, label %cond.false.301

cond.true.300:                                    ; preds = %if.then.297
  %220 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.302

cond.false.301:                                   ; preds = %if.then.297
  %221 = load i32, i32* %hypre__block, align 4
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.301, %cond.true.300
  %cond303 = phi i32 [ %220, %cond.true.300 ], [ %221, %cond.false.301 ]
  %add304 = add nsw i32 %mul298, %cond303
  store i32 %add304, i32* %loopj, align 4
  %222 = load i32, i32* %hypre__div, align 4
  %223 = load i32, i32* %hypre__mod, align 4
  %224 = load i32, i32* %hypre__block, align 4
  %cmp305 = icmp sgt i32 %223, %224
  %cond306 = select i1 %cmp305, i32 1, i32 0
  %add307 = add nsw i32 %222, %cond306
  store i32 %add307, i32* %hypre__ny, align 4
  br label %if.end.322

if.else.308:                                      ; preds = %if.else
  %225 = load i32, i32* %hypre__dir, align 4
  %cmp309 = icmp eq i32 %225, 2
  br i1 %cmp309, label %if.then.310, label %if.end.321

if.then.310:                                      ; preds = %if.else.308
  %226 = load i32, i32* %hypre__block, align 4
  %227 = load i32, i32* %hypre__div, align 4
  %mul311 = mul nsw i32 %226, %227
  %228 = load i32, i32* %hypre__mod, align 4
  %229 = load i32, i32* %hypre__block, align 4
  %cmp312 = icmp slt i32 %228, %229
  br i1 %cmp312, label %cond.true.313, label %cond.false.314

cond.true.313:                                    ; preds = %if.then.310
  %230 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.315

cond.false.314:                                   ; preds = %if.then.310
  %231 = load i32, i32* %hypre__block, align 4
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.314, %cond.true.313
  %cond316 = phi i32 [ %230, %cond.true.313 ], [ %231, %cond.false.314 ]
  %add317 = add nsw i32 %mul311, %cond316
  store i32 %add317, i32* %loopk, align 4
  %232 = load i32, i32* %hypre__div, align 4
  %233 = load i32, i32* %hypre__mod, align 4
  %234 = load i32, i32* %hypre__block, align 4
  %cmp318 = icmp sgt i32 %233, %234
  %cond319 = select i1 %cmp318, i32 1, i32 0
  %add320 = add nsw i32 %232, %cond319
  store i32 %add320, i32* %hypre__nz, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %cond.end.315, %if.else.308
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %cond.end.302
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %cond.end.290
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %for.body.281
  %235 = load i32, i32* %hypre__i1start, align 4
  %236 = load i32, i32* %loopi, align 4
  %237 = load i32, i32* %hypre__sx1, align 4
  %mul325 = mul nsw i32 %236, %237
  %add326 = add nsw i32 %235, %mul325
  %238 = load i32, i32* %loopj, align 4
  %239 = load i32, i32* %hypre__sy1, align 4
  %mul327 = mul nsw i32 %238, %239
  %add328 = add nsw i32 %add326, %mul327
  %240 = load i32, i32* %loopk, align 4
  %241 = load i32, i32* %hypre__sz1, align 4
  %mul329 = mul nsw i32 %240, %241
  %add330 = add nsw i32 %add328, %mul329
  store i32 %add330, i32* %xi, align 4
  %242 = load i32, i32* %hypre__i2start, align 4
  %243 = load i32, i32* %loopi, align 4
  %244 = load i32, i32* %hypre__sx2, align 4
  %mul331 = mul nsw i32 %243, %244
  %add332 = add nsw i32 %242, %mul331
  %245 = load i32, i32* %loopj, align 4
  %246 = load i32, i32* %hypre__sy2, align 4
  %mul333 = mul nsw i32 %245, %246
  %add334 = add nsw i32 %add332, %mul333
  %247 = load i32, i32* %loopk, align 4
  %248 = load i32, i32* %hypre__sz2, align 4
  %mul335 = mul nsw i32 %247, %248
  %add336 = add nsw i32 %add334, %mul335
  store i32 %add336, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.369, %if.end.324
  %249 = load i32, i32* %loopk, align 4
  %250 = load i32, i32* %hypre__nz, align 4
  %cmp338 = icmp slt i32 %249, %250
  br i1 %cmp338, label %for.body.339, label %for.end.371

for.body.339:                                     ; preds = %for.cond.337
  store i32 0, i32* %loopj, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.360, %for.body.339
  %251 = load i32, i32* %loopj, align 4
  %252 = load i32, i32* %hypre__ny, align 4
  %cmp341 = icmp slt i32 %251, %252
  br i1 %cmp341, label %for.body.342, label %for.end.362

for.body.342:                                     ; preds = %for.cond.340
  store i32 0, i32* %loopi, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc, %for.body.342
  %253 = load i32, i32* %loopi, align 4
  %254 = load i32, i32* %hypre__nx, align 4
  %cmp344 = icmp slt i32 %253, %254
  br i1 %cmp344, label %for.body.345, label %for.end

for.body.345:                                     ; preds = %for.cond.343
  %255 = load double, double* %alpha.addr, align 8
  %256 = load i32, i32* %xi, align 4
  %idxprom346 = sext i32 %256 to i64
  %257 = load double*, double** %xp, align 8
  %arrayidx347 = getelementptr inbounds double, double* %257, i64 %idxprom346
  %258 = load double, double* %arrayidx347, align 8
  %mul348 = fmul double %255, %258
  %259 = load i32, i32* %yi, align 4
  %idxprom349 = sext i32 %259 to i64
  %260 = load double*, double** %yp, align 8
  %arrayidx350 = getelementptr inbounds double, double* %260, i64 %idxprom349
  %261 = load double, double* %arrayidx350, align 8
  %add351 = fadd double %261, %mul348
  store double %add351, double* %arrayidx350, align 8
  %262 = load i32, i32* %hypre__sx1, align 4
  %263 = load i32, i32* %xi, align 4
  %add352 = add nsw i32 %263, %262
  store i32 %add352, i32* %xi, align 4
  %264 = load i32, i32* %hypre__sx2, align 4
  %265 = load i32, i32* %yi, align 4
  %add353 = add nsw i32 %265, %264
  store i32 %add353, i32* %yi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.345
  %266 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %266, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.343

for.end:                                          ; preds = %for.cond.343
  %267 = load i32, i32* %hypre__sy1, align 4
  %268 = load i32, i32* %hypre__nx, align 4
  %269 = load i32, i32* %hypre__sx1, align 4
  %mul354 = mul nsw i32 %268, %269
  %sub355 = sub nsw i32 %267, %mul354
  %270 = load i32, i32* %xi, align 4
  %add356 = add nsw i32 %270, %sub355
  store i32 %add356, i32* %xi, align 4
  %271 = load i32, i32* %hypre__sy2, align 4
  %272 = load i32, i32* %hypre__nx, align 4
  %273 = load i32, i32* %hypre__sx2, align 4
  %mul357 = mul nsw i32 %272, %273
  %sub358 = sub nsw i32 %271, %mul357
  %274 = load i32, i32* %yi, align 4
  %add359 = add nsw i32 %274, %sub358
  store i32 %add359, i32* %yi, align 4
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.end
  %275 = load i32, i32* %loopj, align 4
  %inc361 = add nsw i32 %275, 1
  store i32 %inc361, i32* %loopj, align 4
  br label %for.cond.340

for.end.362:                                      ; preds = %for.cond.340
  %276 = load i32, i32* %hypre__sz1, align 4
  %277 = load i32, i32* %hypre__ny, align 4
  %278 = load i32, i32* %hypre__sy1, align 4
  %mul363 = mul nsw i32 %277, %278
  %sub364 = sub nsw i32 %276, %mul363
  %279 = load i32, i32* %xi, align 4
  %add365 = add nsw i32 %279, %sub364
  store i32 %add365, i32* %xi, align 4
  %280 = load i32, i32* %hypre__sz2, align 4
  %281 = load i32, i32* %hypre__ny, align 4
  %282 = load i32, i32* %hypre__sy2, align 4
  %mul366 = mul nsw i32 %281, %282
  %sub367 = sub nsw i32 %280, %mul366
  %283 = load i32, i32* %yi, align 4
  %add368 = add nsw i32 %283, %sub367
  store i32 %add368, i32* %yi, align 4
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.end.362
  %284 = load i32, i32* %loopk, align 4
  %inc370 = add nsw i32 %284, 1
  store i32 %inc370, i32* %loopk, align 4
  br label %for.cond.337

for.end.371:                                      ; preds = %for.cond.337
  br label %for.inc.372

for.inc.372:                                      ; preds = %for.end.371
  %285 = load i32, i32* %hypre__block, align 4
  %inc373 = add nsw i32 %285, 1
  store i32 %inc373, i32* %hypre__block, align 4
  br label %for.cond.279

for.end.374:                                      ; preds = %for.cond.279
  br label %for.inc.375

for.inc.375:                                      ; preds = %for.end.374
  %286 = load i32, i32* %i, align 4
  %inc376 = add nsw i32 %286, 1
  store i32 %inc376, i32* %i, align 4
  br label %for.cond

for.end.377:                                      ; preds = %for.cond
  %287 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call378 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %287)
  %288 = load i32, i32* %ierr, align 4
  ret i32 %288
}

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_ProjectBox(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
