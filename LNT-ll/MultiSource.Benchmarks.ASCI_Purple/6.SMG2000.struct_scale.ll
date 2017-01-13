; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/6.SMG2000.struct_scale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_StructScale(double %alpha, %struct.hypre_StructVector_struct* %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %y_data_box = alloca %struct.hypre_Box_struct*, align 8
  %yi = alloca i32, align 4
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
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
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

for.cond:                                         ; preds = %for.inc.204, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.206

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
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %11, i32 0, i32 2
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom6
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %y_data_box, align 8
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 3
  %15 = load double*, double** %data, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 6
  %18 = load i32*, i32** %data_indices, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  store double* %add.ptr, double** %yp, align 8
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay11 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %20, i32* %arraydecay11)
  %21 = load i32*, i32** %start, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx12, align 4
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 0
  %24 = load i32, i32* %arrayidx14, align 4
  %sub = sub nsw i32 %22, %24
  %25 = load i32*, i32** %start, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 1
  %26 = load i32, i32* %arrayidx15, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  %28 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %26, %28
  %29 = load i32*, i32** %start, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx19, align 4
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imin20, i32 0, i64 2
  %32 = load i32, i32* %arrayidx21, align 4
  %sub22 = sub nsw i32 %30, %32
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %34 = load i32, i32* %arrayidx23, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 1
  %36 = load i32, i32* %arrayidx25, align 4
  %sub26 = sub nsw i32 %34, %36
  %add = add nsw i32 %sub26, 1
  %cmp27 = icmp slt i32 0, %add
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %imax28, i32 0, i64 1
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imin30, i32 0, i64 1
  %40 = load i32, i32* %arrayidx31, align 4
  %sub32 = sub nsw i32 %38, %40
  %add33 = add nsw i32 %sub32, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add33, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub22, %cond
  %add34 = add nsw i32 %sub18, %mul
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 0
  %42 = load i32, i32* %arrayidx36, align 4
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 0
  %44 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %42, %44
  %add40 = add nsw i32 %sub39, 1
  %cmp41 = icmp slt i32 0, %add40
  br i1 %cmp41, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.end
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 0
  %46 = load i32, i32* %arrayidx44, align 4
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imin45, i32 0, i64 0
  %48 = load i32, i32* %arrayidx46, align 4
  %sub47 = sub nsw i32 %46, %48
  %add48 = add nsw i32 %sub47, 1
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.42
  %cond51 = phi i32 [ %add48, %cond.true.42 ], [ 0, %cond.false.49 ]
  %mul52 = mul nsw i32 %add34, %cond51
  %add53 = add nsw i32 %sub, %mul52
  store i32 %add53, i32* %hypre__i1start, align 4
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  %49 = load i32, i32* %arrayidx54, align 4
  store i32 %49, i32* %hypre__sx1, align 4
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  %50 = load i32, i32* %arrayidx55, align 4
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imax56, i32 0, i64 0
  %52 = load i32, i32* %arrayidx57, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 0
  %54 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %52, %54
  %add61 = add nsw i32 %sub60, 1
  %cmp62 = icmp slt i32 0, %add61
  br i1 %cmp62, label %cond.true.63, label %cond.false.70

cond.true.63:                                     ; preds = %cond.end.50
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 0
  %56 = load i32, i32* %arrayidx65, align 4
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i64 0
  %58 = load i32, i32* %arrayidx67, align 4
  %sub68 = sub nsw i32 %56, %58
  %add69 = add nsw i32 %sub68, 1
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.end.50
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.63
  %cond72 = phi i32 [ %add69, %cond.true.63 ], [ 0, %cond.false.70 ]
  %mul73 = mul nsw i32 %50, %cond72
  store i32 %mul73, i32* %hypre__sy1, align 4
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  %59 = load i32, i32* %arrayidx74, align 4
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax75 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %imax75, i32 0, i64 0
  %61 = load i32, i32* %arrayidx76, align 4
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imin77, i32 0, i64 0
  %63 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %61, %63
  %add80 = add nsw i32 %sub79, 1
  %cmp81 = icmp slt i32 0, %add80
  br i1 %cmp81, label %cond.true.82, label %cond.false.89

cond.true.82:                                     ; preds = %cond.end.71
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 0
  %65 = load i32, i32* %arrayidx84, align 4
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 0
  %67 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %65, %67
  %add88 = add nsw i32 %sub87, 1
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.end.71
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.82
  %cond91 = phi i32 [ %add88, %cond.true.82 ], [ 0, %cond.false.89 ]
  %mul92 = mul nsw i32 %59, %cond91
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imax93, i32 0, i64 1
  %69 = load i32, i32* %arrayidx94, align 4
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %71 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %69, %71
  %add98 = add nsw i32 %sub97, 1
  %cmp99 = icmp slt i32 0, %add98
  br i1 %cmp99, label %cond.true.100, label %cond.false.107

cond.true.100:                                    ; preds = %cond.end.90
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imax101, i32 0, i64 1
  %73 = load i32, i32* %arrayidx102, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imin103, i32 0, i64 1
  %75 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %73, %75
  %add106 = add nsw i32 %sub105, 1
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.end.90
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.100
  %cond109 = phi i32 [ %add106, %cond.true.100 ], [ 0, %cond.false.107 ]
  %mul110 = mul nsw i32 %mul92, %cond109
  store i32 %mul110, i32* %hypre__sz1, align 4
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %76 = load i32, i32* %arrayidx111, align 4
  store i32 %76, i32* %hypre__nx, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %77 = load i32, i32* %arrayidx112, align 4
  store i32 %77, i32* %hypre__ny, align 4
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %78 = load i32, i32* %arrayidx113, align 4
  store i32 %78, i32* %hypre__nz, align 4
  %79 = load i32, i32* %hypre__nx, align 4
  store i32 %79, i32* %hypre__mx, align 4
  %80 = load i32, i32* %hypre__ny, align 4
  store i32 %80, i32* %hypre__my, align 4
  %81 = load i32, i32* %hypre__nz, align 4
  store i32 %81, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %82 = load i32, i32* %hypre__nx, align 4
  store i32 %82, i32* %hypre__max, align 4
  %83 = load i32, i32* %hypre__ny, align 4
  %84 = load i32, i32* %hypre__max, align 4
  %cmp114 = icmp sgt i32 %83, %84
  br i1 %cmp114, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.108
  store i32 1, i32* %hypre__dir, align 4
  %85 = load i32, i32* %hypre__ny, align 4
  store i32 %85, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.108
  %86 = load i32, i32* %hypre__nz, align 4
  %87 = load i32, i32* %hypre__max, align 4
  %cmp115 = icmp sgt i32 %86, %87
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %88 = load i32, i32* %hypre__nz, align 4
  store i32 %88, i32* %hypre__max, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %89 = load i32, i32* %hypre__max, align 4
  %90 = load i32, i32* %hypre__num_blocks, align 4
  %cmp118 = icmp slt i32 %89, %90
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  %91 = load i32, i32* %hypre__max, align 4
  store i32 %91, i32* %hypre__num_blocks, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  %92 = load i32, i32* %hypre__num_blocks, align 4
  %cmp121 = icmp sgt i32 %92, 0
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  %93 = load i32, i32* %hypre__max, align 4
  %94 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %93, %94
  store i32 %div, i32* %hypre__div, align 4
  %95 = load i32, i32* %hypre__max, align 4
  %96 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %95, %96
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.201, %if.end.123
  %97 = load i32, i32* %hypre__block, align 4
  %98 = load i32, i32* %hypre__num_blocks, align 4
  %cmp125 = icmp slt i32 %97, %98
  br i1 %cmp125, label %for.body.126, label %for.end.203

for.body.126:                                     ; preds = %for.cond.124
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %99 = load i32, i32* %hypre__mx, align 4
  store i32 %99, i32* %hypre__nx, align 4
  %100 = load i32, i32* %hypre__my, align 4
  store i32 %100, i32* %hypre__ny, align 4
  %101 = load i32, i32* %hypre__mz, align 4
  store i32 %101, i32* %hypre__nz, align 4
  %102 = load i32, i32* %hypre__num_blocks, align 4
  %cmp127 = icmp sgt i32 %102, 1
  br i1 %cmp127, label %if.then.128, label %if.end.169

if.then.128:                                      ; preds = %for.body.126
  %103 = load i32, i32* %hypre__dir, align 4
  %cmp129 = icmp eq i32 %103, 0
  br i1 %cmp129, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.then.128
  %104 = load i32, i32* %hypre__block, align 4
  %105 = load i32, i32* %hypre__div, align 4
  %mul131 = mul nsw i32 %104, %105
  %106 = load i32, i32* %hypre__mod, align 4
  %107 = load i32, i32* %hypre__block, align 4
  %cmp132 = icmp slt i32 %106, %107
  br i1 %cmp132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.130
  %108 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.then.130
  %109 = load i32, i32* %hypre__block, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %108, %cond.true.133 ], [ %109, %cond.false.134 ]
  %add137 = add nsw i32 %mul131, %cond136
  store i32 %add137, i32* %loopi, align 4
  %110 = load i32, i32* %hypre__div, align 4
  %111 = load i32, i32* %hypre__mod, align 4
  %112 = load i32, i32* %hypre__block, align 4
  %cmp138 = icmp sgt i32 %111, %112
  %cond139 = select i1 %cmp138, i32 1, i32 0
  %add140 = add nsw i32 %110, %cond139
  store i32 %add140, i32* %hypre__nx, align 4
  br label %if.end.168

if.else:                                          ; preds = %if.then.128
  %113 = load i32, i32* %hypre__dir, align 4
  %cmp141 = icmp eq i32 %113, 1
  br i1 %cmp141, label %if.then.142, label %if.else.153

if.then.142:                                      ; preds = %if.else
  %114 = load i32, i32* %hypre__block, align 4
  %115 = load i32, i32* %hypre__div, align 4
  %mul143 = mul nsw i32 %114, %115
  %116 = load i32, i32* %hypre__mod, align 4
  %117 = load i32, i32* %hypre__block, align 4
  %cmp144 = icmp slt i32 %116, %117
  br i1 %cmp144, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %if.then.142
  %118 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.147

cond.false.146:                                   ; preds = %if.then.142
  %119 = load i32, i32* %hypre__block, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.145
  %cond148 = phi i32 [ %118, %cond.true.145 ], [ %119, %cond.false.146 ]
  %add149 = add nsw i32 %mul143, %cond148
  store i32 %add149, i32* %loopj, align 4
  %120 = load i32, i32* %hypre__div, align 4
  %121 = load i32, i32* %hypre__mod, align 4
  %122 = load i32, i32* %hypre__block, align 4
  %cmp150 = icmp sgt i32 %121, %122
  %cond151 = select i1 %cmp150, i32 1, i32 0
  %add152 = add nsw i32 %120, %cond151
  store i32 %add152, i32* %hypre__ny, align 4
  br label %if.end.167

if.else.153:                                      ; preds = %if.else
  %123 = load i32, i32* %hypre__dir, align 4
  %cmp154 = icmp eq i32 %123, 2
  br i1 %cmp154, label %if.then.155, label %if.end.166

if.then.155:                                      ; preds = %if.else.153
  %124 = load i32, i32* %hypre__block, align 4
  %125 = load i32, i32* %hypre__div, align 4
  %mul156 = mul nsw i32 %124, %125
  %126 = load i32, i32* %hypre__mod, align 4
  %127 = load i32, i32* %hypre__block, align 4
  %cmp157 = icmp slt i32 %126, %127
  br i1 %cmp157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.then.155
  %128 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.then.155
  %129 = load i32, i32* %hypre__block, align 4
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi i32 [ %128, %cond.true.158 ], [ %129, %cond.false.159 ]
  %add162 = add nsw i32 %mul156, %cond161
  store i32 %add162, i32* %loopk, align 4
  %130 = load i32, i32* %hypre__div, align 4
  %131 = load i32, i32* %hypre__mod, align 4
  %132 = load i32, i32* %hypre__block, align 4
  %cmp163 = icmp sgt i32 %131, %132
  %cond164 = select i1 %cmp163, i32 1, i32 0
  %add165 = add nsw i32 %130, %cond164
  store i32 %add165, i32* %hypre__nz, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.160, %if.else.153
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %cond.end.147
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %cond.end.135
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.body.126
  %133 = load i32, i32* %hypre__i1start, align 4
  %134 = load i32, i32* %loopi, align 4
  %135 = load i32, i32* %hypre__sx1, align 4
  %mul170 = mul nsw i32 %134, %135
  %add171 = add nsw i32 %133, %mul170
  %136 = load i32, i32* %loopj, align 4
  %137 = load i32, i32* %hypre__sy1, align 4
  %mul172 = mul nsw i32 %136, %137
  %add173 = add nsw i32 %add171, %mul172
  %138 = load i32, i32* %loopk, align 4
  %139 = load i32, i32* %hypre__sz1, align 4
  %mul174 = mul nsw i32 %138, %139
  %add175 = add nsw i32 %add173, %mul174
  store i32 %add175, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.198, %if.end.169
  %140 = load i32, i32* %loopk, align 4
  %141 = load i32, i32* %hypre__nz, align 4
  %cmp177 = icmp slt i32 %140, %141
  br i1 %cmp177, label %for.body.178, label %for.end.200

for.body.178:                                     ; preds = %for.cond.176
  store i32 0, i32* %loopj, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.192, %for.body.178
  %142 = load i32, i32* %loopj, align 4
  %143 = load i32, i32* %hypre__ny, align 4
  %cmp180 = icmp slt i32 %142, %143
  br i1 %cmp180, label %for.body.181, label %for.end.194

for.body.181:                                     ; preds = %for.cond.179
  store i32 0, i32* %loopi, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc, %for.body.181
  %144 = load i32, i32* %loopi, align 4
  %145 = load i32, i32* %hypre__nx, align 4
  %cmp183 = icmp slt i32 %144, %145
  br i1 %cmp183, label %for.body.184, label %for.end

for.body.184:                                     ; preds = %for.cond.182
  %146 = load double, double* %alpha.addr, align 8
  %147 = load i32, i32* %yi, align 4
  %idxprom185 = sext i32 %147 to i64
  %148 = load double*, double** %yp, align 8
  %arrayidx186 = getelementptr inbounds double, double* %148, i64 %idxprom185
  %149 = load double, double* %arrayidx186, align 8
  %mul187 = fmul double %149, %146
  store double %mul187, double* %arrayidx186, align 8
  %150 = load i32, i32* %hypre__sx1, align 4
  %151 = load i32, i32* %yi, align 4
  %add188 = add nsw i32 %151, %150
  store i32 %add188, i32* %yi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.184
  %152 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %152, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.182

for.end:                                          ; preds = %for.cond.182
  %153 = load i32, i32* %hypre__sy1, align 4
  %154 = load i32, i32* %hypre__nx, align 4
  %155 = load i32, i32* %hypre__sx1, align 4
  %mul189 = mul nsw i32 %154, %155
  %sub190 = sub nsw i32 %153, %mul189
  %156 = load i32, i32* %yi, align 4
  %add191 = add nsw i32 %156, %sub190
  store i32 %add191, i32* %yi, align 4
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.end
  %157 = load i32, i32* %loopj, align 4
  %inc193 = add nsw i32 %157, 1
  store i32 %inc193, i32* %loopj, align 4
  br label %for.cond.179

for.end.194:                                      ; preds = %for.cond.179
  %158 = load i32, i32* %hypre__sz1, align 4
  %159 = load i32, i32* %hypre__ny, align 4
  %160 = load i32, i32* %hypre__sy1, align 4
  %mul195 = mul nsw i32 %159, %160
  %sub196 = sub nsw i32 %158, %mul195
  %161 = load i32, i32* %yi, align 4
  %add197 = add nsw i32 %161, %sub196
  store i32 %add197, i32* %yi, align 4
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.194
  %162 = load i32, i32* %loopk, align 4
  %inc199 = add nsw i32 %162, 1
  store i32 %inc199, i32* %loopk, align 4
  br label %for.cond.176

for.end.200:                                      ; preds = %for.cond.176
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %163 = load i32, i32* %hypre__block, align 4
  %inc202 = add nsw i32 %163, 1
  store i32 %inc202, i32* %hypre__block, align 4
  br label %for.cond.124

for.end.203:                                      ; preds = %for.cond.124
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end.203
  %164 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %164, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond

for.end.206:                                      ; preds = %for.cond
  %165 = load i32, i32* %ierr, align 4
  ret i32 %165
}

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
