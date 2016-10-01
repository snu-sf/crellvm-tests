; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/8.SMG2000.struct_copy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_StructCopy(%struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct* %y) #0 {
entry:
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
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
  %unit_stride = alloca [3 x i32], align 4
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
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct** %y.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %0 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 2
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes3, align 8
  store %struct.hypre_BoxArray_struct* %2, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.335, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.337

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx5, %struct.hypre_Box_struct** %box, align 8
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %start, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 2
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom6
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %x_data_box, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space10 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %15, i32 0, i32 2
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space10, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i64 %idxprom9
  store %struct.hypre_Box_struct* %arrayidx12, %struct.hypre_Box_struct** %y_data_box, align 8
  %18 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %18, i32 0, i32 3
  %19 = load double*, double** %data, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %21, i32 0, i32 6
  %22 = load i32*, i32** %data_indices, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds double, double* %19, i64 %idx.ext
  store double* %add.ptr, double** %xp, align 8
  %24 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data15 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %24, i32 0, i32 3
  %25 = load double*, double** %data15, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices17 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %27, i32 0, i32 6
  %28 = load i32*, i32** %data_indices17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %28, i64 %idxprom16
  %29 = load i32, i32* %arrayidx18, align 4
  %idx.ext19 = sext i32 %29 to i64
  %add.ptr20 = getelementptr inbounds double, double* %25, i64 %idx.ext19
  store double* %add.ptr20, double** %yp, align 8
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay21 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %30, i32* %arraydecay21)
  %31 = load i32*, i32** %start, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx22, align 4
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 0
  %34 = load i32, i32* %arrayidx24, align 4
  %sub = sub nsw i32 %32, %34
  %35 = load i32*, i32** %start, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx25, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imin26, i32 0, i64 1
  %38 = load i32, i32* %arrayidx27, align 4
  %sub28 = sub nsw i32 %36, %38
  %39 = load i32*, i32** %start, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx29, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imin30, i32 0, i64 2
  %42 = load i32, i32* %arrayidx31, align 4
  %sub32 = sub nsw i32 %40, %42
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %44 = load i32, i32* %arrayidx33, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imin34, i32 0, i64 1
  %46 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %44, %46
  %add = add nsw i32 %sub36, 1
  %cmp37 = icmp slt i32 0, %add
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 1
  %48 = load i32, i32* %arrayidx39, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imin40, i32 0, i64 1
  %50 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %48, %50
  %add43 = add nsw i32 %sub42, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add43, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub32, %cond
  %add44 = add nsw i32 %sub28, %mul
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 0
  %52 = load i32, i32* %arrayidx46, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %imin47, i32 0, i64 0
  %54 = load i32, i32* %arrayidx48, align 4
  %sub49 = sub nsw i32 %52, %54
  %add50 = add nsw i32 %sub49, 1
  %cmp51 = icmp slt i32 0, %add50
  br i1 %cmp51, label %cond.true.52, label %cond.false.59

cond.true.52:                                     ; preds = %cond.end
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imax53, i32 0, i64 0
  %56 = load i32, i32* %arrayidx54, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imin55, i32 0, i64 0
  %58 = load i32, i32* %arrayidx56, align 4
  %sub57 = sub nsw i32 %56, %58
  %add58 = add nsw i32 %sub57, 1
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.52
  %cond61 = phi i32 [ %add58, %cond.true.52 ], [ 0, %cond.false.59 ]
  %mul62 = mul nsw i32 %add44, %cond61
  %add63 = add nsw i32 %sub, %mul62
  store i32 %add63, i32* %hypre__i1start, align 4
  %59 = load i32*, i32** %start, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx64, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imin65, i32 0, i64 0
  %62 = load i32, i32* %arrayidx66, align 4
  %sub67 = sub nsw i32 %60, %62
  %63 = load i32*, i32** %start, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %63, i64 1
  %64 = load i32, i32* %arrayidx68, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %imin69, i32 0, i64 1
  %66 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %64, %66
  %67 = load i32*, i32** %start, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %67, i64 2
  %68 = load i32, i32* %arrayidx72, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i64 2
  %70 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %68, %70
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 1
  %72 = load i32, i32* %arrayidx77, align 4
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 1
  %74 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %72, %74
  %add81 = add nsw i32 %sub80, 1
  %cmp82 = icmp slt i32 0, %add81
  br i1 %cmp82, label %cond.true.83, label %cond.false.90

cond.true.83:                                     ; preds = %cond.end.60
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 1
  %76 = load i32, i32* %arrayidx85, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 1
  %78 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %76, %78
  %add89 = add nsw i32 %sub88, 1
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.60
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.83
  %cond92 = phi i32 [ %add89, %cond.true.83 ], [ 0, %cond.false.90 ]
  %mul93 = mul nsw i32 %sub75, %cond92
  %add94 = add nsw i32 %sub71, %mul93
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imax95, i32 0, i64 0
  %80 = load i32, i32* %arrayidx96, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin97 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %imin97, i32 0, i64 0
  %82 = load i32, i32* %arrayidx98, align 4
  %sub99 = sub nsw i32 %80, %82
  %add100 = add nsw i32 %sub99, 1
  %cmp101 = icmp slt i32 0, %add100
  br i1 %cmp101, label %cond.true.102, label %cond.false.109

cond.true.102:                                    ; preds = %cond.end.91
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imax103, i32 0, i64 0
  %84 = load i32, i32* %arrayidx104, align 4
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin105, i32 0, i64 0
  %86 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub nsw i32 %84, %86
  %add108 = add nsw i32 %sub107, 1
  br label %cond.end.110

cond.false.109:                                   ; preds = %cond.end.91
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.102
  %cond111 = phi i32 [ %add108, %cond.true.102 ], [ 0, %cond.false.109 ]
  %mul112 = mul nsw i32 %add94, %cond111
  %add113 = add nsw i32 %sub67, %mul112
  store i32 %add113, i32* %hypre__i2start, align 4
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  %87 = load i32, i32* %arrayidx114, align 4
  store i32 %87, i32* %hypre__sx1, align 4
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  %88 = load i32, i32* %arrayidx115, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imax116, i32 0, i64 0
  %90 = load i32, i32* %arrayidx117, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin118 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %imin118, i32 0, i64 0
  %92 = load i32, i32* %arrayidx119, align 4
  %sub120 = sub nsw i32 %90, %92
  %add121 = add nsw i32 %sub120, 1
  %cmp122 = icmp slt i32 0, %add121
  br i1 %cmp122, label %cond.true.123, label %cond.false.130

cond.true.123:                                    ; preds = %cond.end.110
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax124 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %imax124, i32 0, i64 0
  %94 = load i32, i32* %arrayidx125, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imin126, i32 0, i64 0
  %96 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %94, %96
  %add129 = add nsw i32 %sub128, 1
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.110
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.123
  %cond132 = phi i32 [ %add129, %cond.true.123 ], [ 0, %cond.false.130 ]
  %mul133 = mul nsw i32 %88, %cond132
  store i32 %mul133, i32* %hypre__sy1, align 4
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  %97 = load i32, i32* %arrayidx134, align 4
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i64 0
  %99 = load i32, i32* %arrayidx136, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imin137, i32 0, i64 0
  %101 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %99, %101
  %add140 = add nsw i32 %sub139, 1
  %cmp141 = icmp slt i32 0, %add140
  br i1 %cmp141, label %cond.true.142, label %cond.false.149

cond.true.142:                                    ; preds = %cond.end.131
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imax143, i32 0, i64 0
  %103 = load i32, i32* %arrayidx144, align 4
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imin145, i32 0, i64 0
  %105 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %103, %105
  %add148 = add nsw i32 %sub147, 1
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.end.131
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.142
  %cond151 = phi i32 [ %add148, %cond.true.142 ], [ 0, %cond.false.149 ]
  %mul152 = mul nsw i32 %97, %cond151
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 1
  %107 = load i32, i32* %arrayidx154, align 4
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin155, i32 0, i64 1
  %109 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %107, %109
  %add158 = add nsw i32 %sub157, 1
  %cmp159 = icmp slt i32 0, %add158
  br i1 %cmp159, label %cond.true.160, label %cond.false.167

cond.true.160:                                    ; preds = %cond.end.150
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 1
  %111 = load i32, i32* %arrayidx162, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 1
  %113 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %111, %113
  %add166 = add nsw i32 %sub165, 1
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.150
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.160
  %cond169 = phi i32 [ %add166, %cond.true.160 ], [ 0, %cond.false.167 ]
  %mul170 = mul nsw i32 %mul152, %cond169
  store i32 %mul170, i32* %hypre__sz1, align 4
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  %114 = load i32, i32* %arrayidx171, align 4
  store i32 %114, i32* %hypre__sx2, align 4
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  %115 = load i32, i32* %arrayidx172, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax173, i32 0, i64 0
  %117 = load i32, i32* %arrayidx174, align 4
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %118, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imin175, i32 0, i64 0
  %119 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %117, %119
  %add178 = add nsw i32 %sub177, 1
  %cmp179 = icmp slt i32 0, %add178
  br i1 %cmp179, label %cond.true.180, label %cond.false.187

cond.true.180:                                    ; preds = %cond.end.168
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imax181, i32 0, i64 0
  %121 = load i32, i32* %arrayidx182, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin183, i32 0, i64 0
  %123 = load i32, i32* %arrayidx184, align 4
  %sub185 = sub nsw i32 %121, %123
  %add186 = add nsw i32 %sub185, 1
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.end.168
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.180
  %cond189 = phi i32 [ %add186, %cond.true.180 ], [ 0, %cond.false.187 ]
  %mul190 = mul nsw i32 %115, %cond189
  store i32 %mul190, i32* %hypre__sy2, align 4
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  %124 = load i32, i32* %arrayidx191, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %imax192, i32 0, i64 0
  %126 = load i32, i32* %arrayidx193, align 4
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %imin194, i32 0, i64 0
  %128 = load i32, i32* %arrayidx195, align 4
  %sub196 = sub nsw i32 %126, %128
  %add197 = add nsw i32 %sub196, 1
  %cmp198 = icmp slt i32 0, %add197
  br i1 %cmp198, label %cond.true.199, label %cond.false.206

cond.true.199:                                    ; preds = %cond.end.188
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax200 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %imax200, i32 0, i64 0
  %130 = load i32, i32* %arrayidx201, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin202 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %imin202, i32 0, i64 0
  %132 = load i32, i32* %arrayidx203, align 4
  %sub204 = sub nsw i32 %130, %132
  %add205 = add nsw i32 %sub204, 1
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.end.188
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.199
  %cond208 = phi i32 [ %add205, %cond.true.199 ], [ 0, %cond.false.206 ]
  %mul209 = mul nsw i32 %124, %cond208
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %imax210, i32 0, i64 1
  %134 = load i32, i32* %arrayidx211, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imin212, i32 0, i64 1
  %136 = load i32, i32* %arrayidx213, align 4
  %sub214 = sub nsw i32 %134, %136
  %add215 = add nsw i32 %sub214, 1
  %cmp216 = icmp slt i32 0, %add215
  br i1 %cmp216, label %cond.true.217, label %cond.false.224

cond.true.217:                                    ; preds = %cond.end.207
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %imax218, i32 0, i64 1
  %138 = load i32, i32* %arrayidx219, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin220, i32 0, i64 1
  %140 = load i32, i32* %arrayidx221, align 4
  %sub222 = sub nsw i32 %138, %140
  %add223 = add nsw i32 %sub222, 1
  br label %cond.end.225

cond.false.224:                                   ; preds = %cond.end.207
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.224, %cond.true.217
  %cond226 = phi i32 [ %add223, %cond.true.217 ], [ 0, %cond.false.224 ]
  %mul227 = mul nsw i32 %mul209, %cond226
  store i32 %mul227, i32* %hypre__sz2, align 4
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %141 = load i32, i32* %arrayidx228, align 4
  store i32 %141, i32* %hypre__nx, align 4
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %142 = load i32, i32* %arrayidx229, align 4
  store i32 %142, i32* %hypre__ny, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %143 = load i32, i32* %arrayidx230, align 4
  store i32 %143, i32* %hypre__nz, align 4
  %144 = load i32, i32* %hypre__nx, align 4
  store i32 %144, i32* %hypre__mx, align 4
  %145 = load i32, i32* %hypre__ny, align 4
  store i32 %145, i32* %hypre__my, align 4
  %146 = load i32, i32* %hypre__nz, align 4
  store i32 %146, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %147 = load i32, i32* %hypre__nx, align 4
  store i32 %147, i32* %hypre__max, align 4
  %148 = load i32, i32* %hypre__ny, align 4
  %149 = load i32, i32* %hypre__max, align 4
  %cmp231 = icmp sgt i32 %148, %149
  br i1 %cmp231, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.225
  store i32 1, i32* %hypre__dir, align 4
  %150 = load i32, i32* %hypre__ny, align 4
  store i32 %150, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.225
  %151 = load i32, i32* %hypre__nz, align 4
  %152 = load i32, i32* %hypre__max, align 4
  %cmp232 = icmp sgt i32 %151, %152
  br i1 %cmp232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %153 = load i32, i32* %hypre__nz, align 4
  store i32 %153, i32* %hypre__max, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %154 = load i32, i32* %hypre__max, align 4
  %155 = load i32, i32* %hypre__num_blocks, align 4
  %cmp235 = icmp slt i32 %154, %155
  br i1 %cmp235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.234
  %156 = load i32, i32* %hypre__max, align 4
  store i32 %156, i32* %hypre__num_blocks, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.234
  %157 = load i32, i32* %hypre__num_blocks, align 4
  %cmp238 = icmp sgt i32 %157, 0
  br i1 %cmp238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.237
  %158 = load i32, i32* %hypre__max, align 4
  %159 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %158, %159
  store i32 %div, i32* %hypre__div, align 4
  %160 = load i32, i32* %hypre__max, align 4
  %161 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %160, %161
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.239, %if.end.237
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.332, %if.end.240
  %162 = load i32, i32* %hypre__block, align 4
  %163 = load i32, i32* %hypre__num_blocks, align 4
  %cmp242 = icmp slt i32 %162, %163
  br i1 %cmp242, label %for.body.243, label %for.end.334

for.body.243:                                     ; preds = %for.cond.241
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %164 = load i32, i32* %hypre__mx, align 4
  store i32 %164, i32* %hypre__nx, align 4
  %165 = load i32, i32* %hypre__my, align 4
  store i32 %165, i32* %hypre__ny, align 4
  %166 = load i32, i32* %hypre__mz, align 4
  store i32 %166, i32* %hypre__nz, align 4
  %167 = load i32, i32* %hypre__num_blocks, align 4
  %cmp244 = icmp sgt i32 %167, 1
  br i1 %cmp244, label %if.then.245, label %if.end.286

if.then.245:                                      ; preds = %for.body.243
  %168 = load i32, i32* %hypre__dir, align 4
  %cmp246 = icmp eq i32 %168, 0
  br i1 %cmp246, label %if.then.247, label %if.else

if.then.247:                                      ; preds = %if.then.245
  %169 = load i32, i32* %hypre__block, align 4
  %170 = load i32, i32* %hypre__div, align 4
  %mul248 = mul nsw i32 %169, %170
  %171 = load i32, i32* %hypre__mod, align 4
  %172 = load i32, i32* %hypre__block, align 4
  %cmp249 = icmp slt i32 %171, %172
  br i1 %cmp249, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %if.then.247
  %173 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.252

cond.false.251:                                   ; preds = %if.then.247
  %174 = load i32, i32* %hypre__block, align 4
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.false.251, %cond.true.250
  %cond253 = phi i32 [ %173, %cond.true.250 ], [ %174, %cond.false.251 ]
  %add254 = add nsw i32 %mul248, %cond253
  store i32 %add254, i32* %loopi, align 4
  %175 = load i32, i32* %hypre__div, align 4
  %176 = load i32, i32* %hypre__mod, align 4
  %177 = load i32, i32* %hypre__block, align 4
  %cmp255 = icmp sgt i32 %176, %177
  %cond256 = select i1 %cmp255, i32 1, i32 0
  %add257 = add nsw i32 %175, %cond256
  store i32 %add257, i32* %hypre__nx, align 4
  br label %if.end.285

if.else:                                          ; preds = %if.then.245
  %178 = load i32, i32* %hypre__dir, align 4
  %cmp258 = icmp eq i32 %178, 1
  br i1 %cmp258, label %if.then.259, label %if.else.270

if.then.259:                                      ; preds = %if.else
  %179 = load i32, i32* %hypre__block, align 4
  %180 = load i32, i32* %hypre__div, align 4
  %mul260 = mul nsw i32 %179, %180
  %181 = load i32, i32* %hypre__mod, align 4
  %182 = load i32, i32* %hypre__block, align 4
  %cmp261 = icmp slt i32 %181, %182
  br i1 %cmp261, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %if.then.259
  %183 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.264

cond.false.263:                                   ; preds = %if.then.259
  %184 = load i32, i32* %hypre__block, align 4
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.262
  %cond265 = phi i32 [ %183, %cond.true.262 ], [ %184, %cond.false.263 ]
  %add266 = add nsw i32 %mul260, %cond265
  store i32 %add266, i32* %loopj, align 4
  %185 = load i32, i32* %hypre__div, align 4
  %186 = load i32, i32* %hypre__mod, align 4
  %187 = load i32, i32* %hypre__block, align 4
  %cmp267 = icmp sgt i32 %186, %187
  %cond268 = select i1 %cmp267, i32 1, i32 0
  %add269 = add nsw i32 %185, %cond268
  store i32 %add269, i32* %hypre__ny, align 4
  br label %if.end.284

if.else.270:                                      ; preds = %if.else
  %188 = load i32, i32* %hypre__dir, align 4
  %cmp271 = icmp eq i32 %188, 2
  br i1 %cmp271, label %if.then.272, label %if.end.283

if.then.272:                                      ; preds = %if.else.270
  %189 = load i32, i32* %hypre__block, align 4
  %190 = load i32, i32* %hypre__div, align 4
  %mul273 = mul nsw i32 %189, %190
  %191 = load i32, i32* %hypre__mod, align 4
  %192 = load i32, i32* %hypre__block, align 4
  %cmp274 = icmp slt i32 %191, %192
  br i1 %cmp274, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %if.then.272
  %193 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.277

cond.false.276:                                   ; preds = %if.then.272
  %194 = load i32, i32* %hypre__block, align 4
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.275
  %cond278 = phi i32 [ %193, %cond.true.275 ], [ %194, %cond.false.276 ]
  %add279 = add nsw i32 %mul273, %cond278
  store i32 %add279, i32* %loopk, align 4
  %195 = load i32, i32* %hypre__div, align 4
  %196 = load i32, i32* %hypre__mod, align 4
  %197 = load i32, i32* %hypre__block, align 4
  %cmp280 = icmp sgt i32 %196, %197
  %cond281 = select i1 %cmp280, i32 1, i32 0
  %add282 = add nsw i32 %195, %cond281
  store i32 %add282, i32* %hypre__nz, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %cond.end.277, %if.else.270
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %cond.end.264
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %cond.end.252
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %for.body.243
  %198 = load i32, i32* %hypre__i1start, align 4
  %199 = load i32, i32* %loopi, align 4
  %200 = load i32, i32* %hypre__sx1, align 4
  %mul287 = mul nsw i32 %199, %200
  %add288 = add nsw i32 %198, %mul287
  %201 = load i32, i32* %loopj, align 4
  %202 = load i32, i32* %hypre__sy1, align 4
  %mul289 = mul nsw i32 %201, %202
  %add290 = add nsw i32 %add288, %mul289
  %203 = load i32, i32* %loopk, align 4
  %204 = load i32, i32* %hypre__sz1, align 4
  %mul291 = mul nsw i32 %203, %204
  %add292 = add nsw i32 %add290, %mul291
  store i32 %add292, i32* %xi, align 4
  %205 = load i32, i32* %hypre__i2start, align 4
  %206 = load i32, i32* %loopi, align 4
  %207 = load i32, i32* %hypre__sx2, align 4
  %mul293 = mul nsw i32 %206, %207
  %add294 = add nsw i32 %205, %mul293
  %208 = load i32, i32* %loopj, align 4
  %209 = load i32, i32* %hypre__sy2, align 4
  %mul295 = mul nsw i32 %208, %209
  %add296 = add nsw i32 %add294, %mul295
  %210 = load i32, i32* %loopk, align 4
  %211 = load i32, i32* %hypre__sz2, align 4
  %mul297 = mul nsw i32 %210, %211
  %add298 = add nsw i32 %add296, %mul297
  store i32 %add298, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.329, %if.end.286
  %212 = load i32, i32* %loopk, align 4
  %213 = load i32, i32* %hypre__nz, align 4
  %cmp300 = icmp slt i32 %212, %213
  br i1 %cmp300, label %for.body.301, label %for.end.331

for.body.301:                                     ; preds = %for.cond.299
  store i32 0, i32* %loopj, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.320, %for.body.301
  %214 = load i32, i32* %loopj, align 4
  %215 = load i32, i32* %hypre__ny, align 4
  %cmp303 = icmp slt i32 %214, %215
  br i1 %cmp303, label %for.body.304, label %for.end.322

for.body.304:                                     ; preds = %for.cond.302
  store i32 0, i32* %loopi, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc, %for.body.304
  %216 = load i32, i32* %loopi, align 4
  %217 = load i32, i32* %hypre__nx, align 4
  %cmp306 = icmp slt i32 %216, %217
  br i1 %cmp306, label %for.body.307, label %for.end

for.body.307:                                     ; preds = %for.cond.305
  %218 = load i32, i32* %xi, align 4
  %idxprom308 = sext i32 %218 to i64
  %219 = load double*, double** %xp, align 8
  %arrayidx309 = getelementptr inbounds double, double* %219, i64 %idxprom308
  %220 = load double, double* %arrayidx309, align 8
  %221 = load i32, i32* %yi, align 4
  %idxprom310 = sext i32 %221 to i64
  %222 = load double*, double** %yp, align 8
  %arrayidx311 = getelementptr inbounds double, double* %222, i64 %idxprom310
  store double %220, double* %arrayidx311, align 8
  %223 = load i32, i32* %hypre__sx1, align 4
  %224 = load i32, i32* %xi, align 4
  %add312 = add nsw i32 %224, %223
  store i32 %add312, i32* %xi, align 4
  %225 = load i32, i32* %hypre__sx2, align 4
  %226 = load i32, i32* %yi, align 4
  %add313 = add nsw i32 %226, %225
  store i32 %add313, i32* %yi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.307
  %227 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %227, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.305

for.end:                                          ; preds = %for.cond.305
  %228 = load i32, i32* %hypre__sy1, align 4
  %229 = load i32, i32* %hypre__nx, align 4
  %230 = load i32, i32* %hypre__sx1, align 4
  %mul314 = mul nsw i32 %229, %230
  %sub315 = sub nsw i32 %228, %mul314
  %231 = load i32, i32* %xi, align 4
  %add316 = add nsw i32 %231, %sub315
  store i32 %add316, i32* %xi, align 4
  %232 = load i32, i32* %hypre__sy2, align 4
  %233 = load i32, i32* %hypre__nx, align 4
  %234 = load i32, i32* %hypre__sx2, align 4
  %mul317 = mul nsw i32 %233, %234
  %sub318 = sub nsw i32 %232, %mul317
  %235 = load i32, i32* %yi, align 4
  %add319 = add nsw i32 %235, %sub318
  store i32 %add319, i32* %yi, align 4
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end
  %236 = load i32, i32* %loopj, align 4
  %inc321 = add nsw i32 %236, 1
  store i32 %inc321, i32* %loopj, align 4
  br label %for.cond.302

for.end.322:                                      ; preds = %for.cond.302
  %237 = load i32, i32* %hypre__sz1, align 4
  %238 = load i32, i32* %hypre__ny, align 4
  %239 = load i32, i32* %hypre__sy1, align 4
  %mul323 = mul nsw i32 %238, %239
  %sub324 = sub nsw i32 %237, %mul323
  %240 = load i32, i32* %xi, align 4
  %add325 = add nsw i32 %240, %sub324
  store i32 %add325, i32* %xi, align 4
  %241 = load i32, i32* %hypre__sz2, align 4
  %242 = load i32, i32* %hypre__ny, align 4
  %243 = load i32, i32* %hypre__sy2, align 4
  %mul326 = mul nsw i32 %242, %243
  %sub327 = sub nsw i32 %241, %mul326
  %244 = load i32, i32* %yi, align 4
  %add328 = add nsw i32 %244, %sub327
  store i32 %add328, i32* %yi, align 4
  br label %for.inc.329

for.inc.329:                                      ; preds = %for.end.322
  %245 = load i32, i32* %loopk, align 4
  %inc330 = add nsw i32 %245, 1
  store i32 %inc330, i32* %loopk, align 4
  br label %for.cond.299

for.end.331:                                      ; preds = %for.cond.299
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.end.331
  %246 = load i32, i32* %hypre__block, align 4
  %inc333 = add nsw i32 %246, 1
  store i32 %inc333, i32* %hypre__block, align 4
  br label %for.cond.241

for.end.334:                                      ; preds = %for.cond.241
  br label %for.inc.335

for.inc.335:                                      ; preds = %for.end.334
  %247 = load i32, i32* %i, align 4
  %inc336 = add nsw i32 %247, 1
  store i32 %inc336, i32* %i, align 4
  br label %for.cond

for.end.337:                                      ; preds = %for.cond
  %248 = load i32, i32* %ierr, align 4
  ret i32 %248
}

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
